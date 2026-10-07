Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/tcd?download=true
inline.NumInlined: 112
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@opj_tcd_encode_tile:bb.a
  %i.b = alloca [100 x double], align 16          ; 6 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !219
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.cj

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  store i32 %1, ptr %i.g, align 8, !tbaa !115
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.l = zext i32 %1 to i64                       ; 3 uses
  %i.m = getelementptr inbounds nuw [5696 x i8], ptr %i.k, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !116
  %.not = icmp eq ptr %5, null                    ; 4 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 20 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !77
  %.not121 = icmp eq i32 %i.u, 0
  br i1 %.not121, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 5600
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !66   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !223
  %i.ab = getelementptr inbounds nuw [608 x i8], ptr %i.aa, i64 %i.l ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 156
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 812
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 288
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 944
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 420
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 8 uses
  %.063119 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %bb.d ]
  %i.ai = getelementptr inbounds nuw [192 x i8], ptr %i.y, i64 %indvars.iv ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !84
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !85 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !8
  %i.ap = load i32, ptr %i.aj, align 8, !tbaa !84
  %i.aq = mul i32 %i.an, %i.ap
  %i.ar = add i32 %i.aq, %.063119                 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4, !tbaa !8
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  store i32 %i.at, ptr %i.au, align 4, !tbaa !8
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !8
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = load i32, ptr %i.t, align 4, !tbaa !77
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ult i64 %indvars.iv.next, %i.az
  br i1 %i.ba, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !187

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.bb = zext i32 %i.ar to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.063.lcssa = phi i64 [ 0, %bb.c ], [ %i.bb, %._crit_edge.loopexit ]
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !224
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !225
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul nsw i64 %.063.lcssa, %i.be
  %i.bj = mul i64 %i.bi, %i.bh
  %i.bk = tail call ptr @opj_calloc(i64 noundef %i.bj, i64 noundef 32) #15 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !223
  %i.bn = getelementptr inbounds nuw [608 x i8], ptr %i.bm, i64 %i.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 552
  store ptr %i.bk, ptr %i.bo, align 8, !tbaa !229
  %.not68.not = icmp eq ptr %i.bk, null
  br i1 %.not68.not, label %opj_tcd_mct_encode.exit.thread95, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.val75.pre = load ptr, ptr %i.n, align 8, !tbaa !116
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge._crit_edge, %bb.b
  %.val75 = phi ptr [ %.val75.pre, %._crit_edge._crit_edge ], [ %i.m, %bb.b ] ; 3 uses
  %i.bp = getelementptr i8, ptr %0, i64 24        ; 8 uses
  %.val = load ptr, ptr %i.bp, align 8, !tbaa !17
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !22 ; 2 uses
  %i.bq = getelementptr i8, ptr %.val75, i64 5600
  %.val75.val = load ptr, ptr %i.bq, align 8, !tbaa !66 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val.val, i64 16 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !32 ; 2 uses
  %.not.i = icmp eq i32 %i.bs, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.val, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !31 ; 10 uses
  br i1 %.not.i, label %opj_tcd_dc_level_shift_encode.exit, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.e, %.loopexit.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.i ], [ 0, %bb.e ] ; 2 uses
  %i.bt = phi i32 [ %i.en, %.loopexit.i ], [ %i.bs, %bb.e ] ; 4 uses
  %.03110.i = phi ptr [ %i.eo, %.loopexit.i ], [ %.val75.val, %bb.e ] ; 4 uses
  %.0329.i = phi ptr [ %i.ep, %.loopexit.i ], [ %.pre, %bb.e ] ; 6 uses
  %.0338.i = phi i32 [ %i.eq, %.loopexit.i ], [ 0, %bb.e ]
  %i.bu = mul nuw nsw i64 %indvar, 1080
  %i.bv = getelementptr i8, ptr %.val75.val, i64 %i.bu
  %scevgep194 = getelementptr i8, ptr %i.bv, i64 1080
  %i.bw = getelementptr inbounds nuw i8, ptr %.0329.i, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !51 ; 9 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0329.i, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !75
  %i.ca = load i32, ptr %.0329.i, align 8, !tbaa !72
  %i.cb = sub i32 %i.bz, %i.ca
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0329.i, i64 12
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !76
  %i.cf = getelementptr inbounds nuw i8, ptr %.0329.i, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !74
  %i.ch = sub i32 %i.ce, %i.cg
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %i.cj = mul nsw i64 %i.ci, %i.cc                ; 11 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.03110.i, i64 20
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !91
  %i.cm = icmp eq i32 %i.cl, 1
  %.not14.i = icmp eq i64 %i.cj, 0                ; 2 uses
  br i1 %i.cm, label %.preheader.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %.lr.ph12.i
  br i1 %.not14.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader1.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.03110.i, i64 1076
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !117 ; 2 uses
  %min.iters.check198 = icmp ult i64 %i.cj, 8
  br i1 %min.iters.check198, label %scalar.ph197.preheader, label %vector.ph199

vector.ph199:                                     ; preds = %.lr.ph.i
  %n.vec200 = and i64 %i.cj, -8                   ; 4 uses
  %i.cp = shl i64 %n.vec200, 2
  %i.cq = getelementptr i8, ptr %i.bx, i64 %i.cp
  %broadcast.splatinsert201 = insertelement <4 x i32> poison, i32 %i.co, i64 0
  %broadcast.splat202 = shufflevector <4 x i32> %broadcast.splatinsert201, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph199
  %index204 = phi i64 [ 0, %vector.ph199 ], [ %index.next208, %vector.body203 ] ; 2 uses
  %i.cr = shl i64 %index204, 2
  %next.gep205 = getelementptr i8, ptr %i.bx, i64 %i.cr ; 4 uses
  %i.cs = getelementptr i8, ptr %next.gep205, i64 16
  %wide.load206 = load <4 x i32>, ptr %next.gep205, align 4, !tbaa !8
  %wide.load207 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !8
  %i.ct = sub nsw <4 x i32> %wide.load206, %broadcast.splat202
  %i.cu = sub nsw <4 x i32> %wide.load207, %broadcast.splat202
  %i.cv = sitofp <4 x i32> %i.ct to <4 x float>
  %i.cw = sitofp <4 x i32> %i.cu to <4 x float>
  %i.cx = getelementptr i8, ptr %next.gep205, i64 16
  store <4 x float> %i.cv, ptr %next.gep205, align 4, !tbaa !118
  store <4 x float> %i.cw, ptr %i.cx, align 4, !tbaa !118
  %index.next208 = add nuw i64 %index204, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next208, %n.vec200
  br i1 %i.cy, label %middle.block209, label %vector.body203, !llvm.loop !188

middle.block209:                                  ; preds = %vector.body203
  %cmp.n210 = icmp eq i64 %i.cj, %n.vec200
  br i1 %cmp.n210, label %.loopexit.i, label %scalar.ph197.preheader

scalar.ph197.preheader:                           ; preds = %.lr.ph.i, %middle.block209
  %.14.i.ph = phi ptr [ %i.bx, %.lr.ph.i ], [ %i.cq, %middle.block209 ]
  %.1293.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec200, %middle.block209 ]
  br label %scalar.ph197

.preheader.i:                                     ; preds = %.lr.ph12.i
  br i1 %.not14.i, label %.loopexit.i, label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %.preheader.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.03110.i, i64 1076 ; 7 uses
  %min.iters.check = icmp ult i64 %i.cj, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph7.i
  %i.da = shl nsw i64 %i.cc, 2
  %i.db = mul i64 %i.da, %i.ci
  %scevgep = getelementptr i8, ptr %i.bx, i64 %i.db
  %bound0 = icmp ult ptr %i.bx, %scevgep194
  %bound1 = icmp ult ptr %i.cz, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cj, -8                      ; 4 uses
  %i.dc = shl i64 %n.vec, 2
  %i.dd = getelementptr i8, ptr %i.bx, i64 %i.dc
  %i.de = load i32, ptr %i.cz, align 4, !tbaa !117, !alias.scope !230
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.de, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.df = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bx, i64 %i.df ; 3 uses
  %i.dg = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !8, !alias.scope !231, !noalias !230
  %wide.load195 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !8, !alias.scope !231, !noalias !230
  %i.dh = sub nsw <4 x i32> %wide.load, %broadcast.splat
  %i.di = sub nsw <4 x i32> %wide.load195, %broadcast.splat
  store <4 x i32> %i.dh, ptr %next.gep, align 4, !tbaa !8, !alias.scope !231, !noalias !230
  store <4 x i32> %i.di, ptr %i.dg, align 4, !tbaa !8, !alias.scope !231, !noalias !230
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !192

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph7.i, %middle.block
  %.06.i.ph = phi ptr [ %i.bx, %vector.memcheck ], [ %i.bx, %.lr.ph7.i ], [ %i.dd, %middle.block ] ; 2 uses
  %.0285.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph7.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.cj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.06.i.prol = phi ptr [ %i.dn, %scalar.ph.prol ], [ %.06.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.0285.i.prol = phi i64 [ %i.do, %scalar.ph.prol ], [ %.0285.i.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dk = load i32, ptr %i.cz, align 4, !tbaa !117
  %i.dl = load i32, ptr %.06.i.prol, align 4, !tbaa !8
  %i.dm = sub nsw i32 %i.dl, %i.dk
  store i32 %i.dm, ptr %.06.i.prol, align 4, !tbaa !8
  %i.dn = getelementptr inbounds nuw i8, ptr %.06.i.prol, i64 4 ; 2 uses
  %i.do = add nuw i64 %.0285.i.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !193

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.06.i.unr = phi ptr [ %.06.i.ph, %scalar.ph.preheader ], [ %i.dn, %scalar.ph.prol ]
  %.0285.i.unr = phi i64 [ %.0285.i.ph, %scalar.ph.preheader ], [ %i.do, %scalar.ph.prol ]
  %i.dp = sub i64 %.0285.i.ph, %i.cj
  %i.dq = icmp ugt i64 %i.dp, -4
  br i1 %i.dq, label %.loopexit.loopexit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.06.i = phi ptr [ %i.eg, %scalar.ph ], [ %.06.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.0285.i = phi i64 [ %i.eh, %scalar.ph ], [ %.0285.i.unr, %scalar.ph.prol.loopexit ]
  %i.dr = load i32, ptr %i.cz, align 4, !tbaa !117
  %i.ds = load i32, ptr %.06.i, align 4, !tbaa !8
  %i.dt = sub nsw i32 %i.ds, %i.dr
  store i32 %i.dt, ptr %.06.i, align 4, !tbaa !8
  %i.du = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %i.dv = load i32, ptr %i.cz, align 4, !tbaa !117
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !8
  %i.dx = sub nsw i32 %i.dw, %i.dv
  store i32 %i.dx, ptr %i.du, align 4, !tbaa !8
  %i.dy = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %i.dz = load i32, ptr %i.cz, align 4, !tbaa !117
  %i.ea = load i32, ptr %i.dy, align 4, !tbaa !8
  %i.eb = sub nsw i32 %i.ea, %i.dz
  store i32 %i.eb, ptr %i.dy, align 4, !tbaa !8
  %i.ec = getelementptr inbounds nuw i8, ptr %.06.i, i64 12 ; 2 uses
  %i.ed = load i32, ptr %i.cz, align 4, !tbaa !117
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !8
  %i.ef = sub nsw i32 %i.ee, %i.ed
  store i32 %i.ef, ptr %i.ec, align 4, !tbaa !8
  %i.eg = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  %i.eh = add nuw i64 %.0285.i, 4                 ; 2 uses
  %exitcond16.not.i.3 = icmp eq i64 %i.eh, %i.cj
  br i1 %exitcond16.not.i.3, label %.loopexit.loopexit.i, label %scalar.ph, !llvm.loop !194

scalar.ph197:                                     ; preds = %scalar.ph197.preheader, %scalar.ph197
  %.14.i = phi ptr [ %i.el, %scalar.ph197 ], [ %.14.i.ph, %scalar.ph197.preheader ] ; 3 uses
  %.1293.i = phi i64 [ %i.em, %scalar.ph197 ], [ %.1293.i.ph, %scalar.ph197.preheader ]
  %i.ei = load i32, ptr %.14.i, align 4, !tbaa !8
  %i.ej = sub nsw i32 %i.ei, %i.co
  %i.ek = sitofp i32 %i.ej to float
  store float %i.ek, ptr %.14.i, align 4, !tbaa !118
  %i.el = getelementptr inbounds nuw i8, ptr %.14.i, i64 4
  %i.em = add nuw i64 %.1293.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.em, %i.cj
  br i1 %exitcond.not.i, label %.loopexit.i, label %scalar.ph197, !llvm.loop !195

.loopexit.loopexit.i:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.pre.i = load i32, ptr %i.br, align 8, !tbaa !32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %scalar.ph197, %middle.block209, %.loopexit.loopexit.i, %.preheader.i, %.preheader1.i
  %i.en = phi i32 [ %i.bt, %.preheader.i ], [ %.pre.i, %.loopexit.loopexit.i ], [ %i.bt, %.preheader1.i ], [ %i.bt, %middle.block209 ], [ %i.bt, %scalar.ph197 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.03110.i, i64 1080
  %i.ep = getelementptr inbounds nuw i8, ptr %.0329.i, i64 112
  %i.eq = add nuw i32 %.0338.i, 1                 ; 2 uses
  %i.er = icmp ult i32 %i.eq, %i.en
  %indvar.next = add i64 %indvar, 1
  br i1 %i.er, label %.lr.ph12.i, label %opj_tcd_dc_level_shift_encode.exit.loopexit, !llvm.loop !196

opj_tcd_dc_level_shift_encode.exit.loopexit:      ; preds = %.loopexit.i
  %i.es = zext i32 %i.en to i64
  %i.et = shl nuw nsw i64 %i.es, 3
  br label %opj_tcd_dc_level_shift_encode.exit

opj_tcd_dc_level_shift_encode.exit:               ; preds = %bb.e, %opj_tcd_dc_level_shift_encode.exit.loopexit
  %i.eu = phi i64 [ %i.et, %opj_tcd_dc_level_shift_encode.exit.loopexit ], [ 0, %bb.e ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !75
  %i.ex = load i32, ptr %.pre, align 8, !tbaa !72
  %i.ey = sub nsw i32 %i.ew, %i.ex
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !76
  %i.fc = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !74
  %i.fe = sub nsw i32 %i.fb, %i.fd
  %i.ff = sext i32 %i.fe to i64
  %i.fg = mul nsw i64 %i.ff, %i.ez                ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.val75, i64 16
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !122
  switch i32 %i.fi, label %bb.h [
    i32 0, label %opj_tcd_mct_encode.exit.thread
    i32 2, label %bb.f
  ]

bb.f:                                             ; preds = %opj_tcd_dc_level_shift_encode.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %.val75, i64 5648
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !232
  %.not40.i = icmp eq ptr %i.fk, null
  br i1 %.not40.i, label %opj_tcd_mct_encode.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fl = tail call ptr @opj_malloc(i64 noundef %i.eu) #15 ; 8 uses
  %.not41.i = icmp eq ptr %i.fl, null
  br i1 %.not41.i, label %opj_tcd_mct_encode.exit.thread95, label %.preheader.i76

.preheader.i76:                                   ; preds = %bb.g
  %i.fm = load i32, ptr %i.br, align 8, !tbaa !32 ; 4 uses
  %.not.i77 = icmp eq i32 %i.fm, 0
  br i1 %.not.i77, label %opj_tcd_mct_encode.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i76
  %wide.trip.count.i = zext i32 %i.fm to i64      ; 2 uses
  %xtraiter252 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.fn = icmp ult i32 %i.fm, 4
  br i1 %i.fn, label %.lr.ph.i78.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %.lr.ph.i78, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i78 ] ; 5 uses
  %.03543.i = phi ptr [ %.pre, %.lr.ph.preheader.i.new ], [ %i.gd, %.lr.ph.i78 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i78 ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.03543.i, i64 48
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !51
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.i
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !123
  %i.fr = getelementptr inbounds nuw i8, ptr %.03543.i, i64 160
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !51
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr %i.fs, ptr %i.fu, align 8, !tbaa !123
  %i.fv = getelementptr inbounds nuw i8, ptr %.03543.i, i64 272
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !51
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store ptr %i.fw, ptr %i.fy, align 8, !tbaa !123
  %i.fz = getelementptr inbounds nuw i8, ptr %.03543.i, i64 384
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !51
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  store ptr %i.ga, ptr %i.gc, align 8, !tbaa !123
  %i.gd = getelementptr inbounds nuw i8, ptr %.03543.i, i64 448 ; 2 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %opj_tcd_mct_encode.exit.loopexit.unr-lcssa, label %.lr.ph.i78, !llvm.loop !197

bb.h:                                             ; preds = %opj_tcd_dc_level_shift_encode.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %.val75.val, i64 20
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !91
  %i.gg = icmp eq i32 %i.gf, 0
  %i.gh = getelementptr inbounds nuw i8, ptr %.pre, i64 48
end_hunk_0
begin_hunk_1_@opj_tcd_update_tile_data:bb.a
  %i.no = getelementptr inbounds nuw i8, ptr %.0124207, i64 64
  %i.np = getelementptr inbounds nuw i8, ptr %.0123208, i64 112
  %i.nq = add nuw i32 %.0134206, 1                ; 2 uses
  %i.nr = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !26
  %i.nu = icmp ult i32 %i.nq, %i.nt
  br i1 %i.nu, label %bb.l, label %opj_tcd_get_decoded_tile_size.exit.thread, !llvm.loop !308

opj_tcd_get_decoded_tile_size.exit.thread:        ; preds = %bb.j, %bb.i, %bb.g, %bb.e, %bb.d, %bb.b, %.loopexit, %opj_tcd_get_decoded_tile_size.exit, %bb.a
  %.0101 = phi i32 [ %.mux, %opj_tcd_get_decoded_tile_size.exit ], [ 1, %.loopexit ], [ 0, %bb.e ], [ 1, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.j ]
  ret i32 %.0101
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @opj_tcd_get_encoder_input_buffer_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not26 = icmp eq i32 %i.d, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.01825 = phi ptr [ %i.ah, %.lr.ph ], [ %i.k, %.lr.ph.preheader ] ; 5 uses
  %.01924 = phi ptr [ %i.ag, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %.02023 = phi i64 [ %i.af, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02122 = phi i32 [ %i.ai, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.l = getelementptr inbounds nuw i8, ptr %.01924, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !92   ; 2 uses
  %i.n = lshr i32 %i.m, 3
  %i.o = and i32 %i.m, 7
  %.not = icmp ne i32 %i.o, 0
  %i.p = zext i1 %.not to i32
  %spec.select = add nuw nsw i32 %i.n, %i.p       ; 2 uses
  %i.q = icmp eq i32 %spec.select, 3
  %spec.store.select = select i1 %i.q, i32 4, i32 %spec.select
  %i.r = zext nneg i32 %spec.store.select to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.01825, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !75
  %i.u = load i32, ptr %.01825, align 8, !tbaa !72
  %i.v = sub nsw i32 %i.t, %i.u
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.01825, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !76
  %i.z = getelementptr inbounds nuw i8, ptr %.01825, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !74
  %i.ab = sub nsw i32 %i.y, %i.aa
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.ac, %i.w
  %i.ae = mul i64 %i.ad, %i.r
  %i.af = add i64 %i.ae, %.02023                  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01924, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %.01825, i64 112
  %i.ai = add nuw i32 %.02122, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ai, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.020.lcssa = phi i64 [ 0, %bb.a ], [ %i.af, %.lr.ph ]
  ret i64 %.020.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @opj_tcd_copy_tile_data(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not26.i = icmp eq i32 %i.d, 0
  br i1 %.not26.i, label %opj_tcd_get_encoder_input_buffer_size.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.01825.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %i.k, %.lr.ph.preheader.i ] ; 5 uses
  %.01924.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.f, %.lr.ph.preheader.i ] ; 2 uses
  %.02023.i = phi i64 [ %i.af, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.02122.i = phi i32 [ %i.ai, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %.01924.i, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !92   ; 2 uses
  %i.n = lshr i32 %i.m, 3
  %i.o = and i32 %i.m, 7
  %.not.i = icmp ne i32 %i.o, 0
  %i.p = zext i1 %.not.i to i32
  %spec.select.i = add nuw nsw i32 %i.n, %i.p     ; 2 uses
  %i.q = icmp eq i32 %spec.select.i, 3
  %spec.store.select.i = select i1 %i.q, i32 4, i32 %spec.select.i
  %i.r = zext nneg i32 %spec.store.select.i to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.01825.i, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !75
  %i.u = load i32, ptr %.01825.i, align 8, !tbaa !72
  %i.v = sub nsw i32 %i.t, %i.u
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.01825.i, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !76
  %i.z = getelementptr inbounds nuw i8, ptr %.01825.i, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !74
  %i.ab = sub nsw i32 %i.y, %i.aa
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.ac, %i.w
  %i.ae = mul i64 %i.ad, %i.r
  %i.af = add i64 %i.ae, %.02023.i                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01924.i, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %.01825.i, i64 112
  %i.ai = add nuw i32 %.02122.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ai, %i.d
  br i1 %exitcond.not.i, label %opj_tcd_get_encoder_input_buffer_size.exit.thread, label %.lr.ph.i, !llvm.loop !1

opj_tcd_get_encoder_input_buffer_size.exit:       ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  %spec.select146 = zext i1 %.not to i32
  br label %.loopexit85

opj_tcd_get_encoder_input_buffer_size.exit.thread: ; preds = %.lr.ph.i
  %.not136 = icmp eq i64 %i.af, %2
  br i1 %.not136, label %.lr.ph113.preheader, label %.loopexit85

.lr.ph113.preheader:                              ; preds = %opj_tcd_get_encoder_input_buffer_size.exit.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !67
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !17
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !31
  br label %.lr.ph113

.lr.ph113:                                        ; preds = %.lr.ph113.preheader, %.loopexit
  %.066112 = phi ptr [ %i.ik, %.loopexit ], [ %i.ap, %.lr.ph113.preheader ] ; 8 uses
  %.067111 = phi ptr [ %i.ij, %.loopexit ], [ %i.ak, %.lr.ph113.preheader ] ; 4 uses
  %.071110 = phi i32 [ %i.il, %.loopexit ], [ 0, %.lr.ph113.preheader ]
  %.073109 = phi ptr [ %.174, %.loopexit ], [ %1, %.lr.ph113.preheader ] ; 28 uses
  %.073109216 = ptrtoaddr ptr %.073109 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.067111, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !92 ; 2 uses
  %i.as = lshr i32 %i.ar, 3
  %i.at = and i32 %i.ar, 7
  %i.au = getelementptr inbounds nuw i8, ptr %.066112, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !75
  %i.aw = load i32, ptr %.066112, align 8, !tbaa !72
  %i.ax = sub i32 %i.av, %i.aw
  %i.ay = sext i32 %i.ax to i64                   ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.066112, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !76
  %i.bb = getelementptr inbounds nuw i8, ptr %.066112, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !74
  %i.bd = sub i32 %i.ba, %i.bc
  %i.be = sext i32 %i.bd to i64                   ; 3 uses
  %i.bf = mul nsw i64 %i.be, %i.ay                ; 31 uses
  %.not75 = icmp ne i32 %i.at, 0
  %i.bg = zext i1 %.not75 to i32
  %spec.select = add nuw nsw i32 %i.as, %i.bg
  switch i32 %spec.select, label %.loopexit [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 4, label %bb.d
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph113
  %i.bh = getelementptr inbounds nuw i8, ptr %.066112, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !51 ; 12 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.067111, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !124
  %.not77 = icmp eq i32 %i.bk, 0
  %.not119 = icmp eq i64 %i.bf, 0                 ; 2 uses
  br i1 %.not77, label %.preheader, label %.preheader78

.preheader78:                                     ; preds = %bb.b
  br i1 %.not119, label %.loopexit, label %.lr.ph102.preheader

.lr.ph102.preheader:                              ; preds = %.preheader78
  %min.iters.check168 = icmp ult i64 %i.bf, 8
  br i1 %min.iters.check168, label %.lr.ph102.preheader235, label %vector.memcheck161

vector.memcheck161:                               ; preds = %.lr.ph102.preheader
  %i.bl = shl nsw i64 %i.ay, 2
  %i.bm = mul i64 %i.bl, %i.be
  %scevgep162 = getelementptr i8, ptr %i.bi, i64 %i.bm
  %scevgep163 = getelementptr i8, ptr %.073109, i64 %i.bf
  %bound0164 = icmp ult ptr %i.bi, %scevgep163
  %bound1165 = icmp ult ptr %.073109, %scevgep162
  %found.conflict166 = and i1 %bound0164, %bound1165
  br i1 %found.conflict166, label %.lr.ph102.preheader235, label %vector.ph169

vector.ph169:                                     ; preds = %vector.memcheck161
  %n.vec170 = and i64 %i.bf, -8                   ; 5 uses
  %i.bn = shl i64 %n.vec170, 2
  %i.bo = getelementptr i8, ptr %i.bi, i64 %i.bn
  %i.bp = getelementptr i8, ptr %.073109, i64 %n.vec170 ; 2 uses
  br label %vector.body171

vector.body171:                                   ; preds = %vector.body171, %vector.ph169
  %index172 = phi i64 [ 0, %vector.ph169 ], [ %index.next177, %vector.body171 ] ; 3 uses
  %i.bq = shl i64 %index172, 2
  %next.gep173 = getelementptr i8, ptr %i.bi, i64 %i.bq ; 2 uses
  %next.gep174 = getelementptr i8, ptr %.073109, i64 %index172 ; 2 uses
  %i.br = getelementptr i8, ptr %next.gep174, i64 4
  %wide.load175 = load <4 x i8>, ptr %next.gep174, align 1, !tbaa !33, !alias.scope !337
  %wide.load176 = load <4 x i8>, ptr %i.br, align 1, !tbaa !33, !alias.scope !337
  %i.bs = sext <4 x i8> %wide.load175 to <4 x i32>
  %i.bt = sext <4 x i8> %wide.load176 to <4 x i32>
  %i.bu = getelementptr i8, ptr %next.gep173, i64 16
  store <4 x i32> %i.bs, ptr %next.gep173, align 4, !tbaa !8, !alias.scope !338, !noalias !337
  store <4 x i32> %i.bt, ptr %i.bu, align 4, !tbaa !8, !alias.scope !338, !noalias !337
  %index.next177 = add nuw i64 %index172, 8       ; 2 uses
  %i.bv = icmp eq i64 %index.next177, %n.vec170
  br i1 %i.bv, label %middle.block178, label %vector.body171, !llvm.loop !320

middle.block178:                                  ; preds = %vector.body171
  %cmp.n179 = icmp eq i64 %i.bf, %n.vec170
  br i1 %cmp.n179, label %.loopexit, label %.lr.ph102.preheader235

.lr.ph102.preheader235:                           ; preds = %vector.memcheck161, %.lr.ph102.preheader, %middle.block178
  %.060101.ph = phi ptr [ %i.bi, %vector.memcheck161 ], [ %i.bi, %.lr.ph102.preheader ], [ %i.bo, %middle.block178 ] ; 2 uses
  %.062100.ph = phi ptr [ %.073109, %vector.memcheck161 ], [ %.073109, %.lr.ph102.preheader ], [ %i.bp, %middle.block178 ] ; 2 uses
  %.06899.ph = phi i64 [ 0, %vector.memcheck161 ], [ 0, %.lr.ph102.preheader ], [ %n.vec170, %middle.block178 ] ; 3 uses
  %xtraiter248 = and i64 %i.bf, 7                 ; 2 uses
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %.lr.ph102.prol.loopexit, label %.lr.ph102.prol

.lr.ph102.prol:                                   ; preds = %.lr.ph102.preheader235, %.lr.ph102.prol
  %.060101.prol = phi ptr [ %i.bz, %.lr.ph102.prol ], [ %.060101.ph, %.lr.ph102.preheader235 ] ; 2 uses
  %.062100.prol = phi ptr [ %i.bw, %.lr.ph102.prol ], [ %.062100.ph, %.lr.ph102.preheader235 ] ; 2 uses
  %.06899.prol = phi i64 [ %i.ca, %.lr.ph102.prol ], [ %.06899.ph, %.lr.ph102.preheader235 ]
  %prol.iter250 = phi i64 [ %prol.iter250.next, %.lr.ph102.prol ], [ 0, %.lr.ph102.preheader235 ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.062100.prol, i64 1 ; 3 uses
  %i.bx = load i8, ptr %.062100.prol, align 1, !tbaa !33
  %i.by = sext i8 %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %.060101.prol, i64 4 ; 2 uses
  store i32 %i.by, ptr %.060101.prol, align 4, !tbaa !8
  %i.ca = add nuw i64 %.06899.prol, 1             ; 2 uses
  %prol.iter250.next = add i64 %prol.iter250, 1   ; 2 uses
  %prol.iter250.cmp.not = icmp eq i64 %prol.iter250.next, %xtraiter248
  br i1 %prol.iter250.cmp.not, label %.lr.ph102.prol.loopexit, label %.lr.ph102.prol, !llvm.loop !321

.lr.ph102.prol.loopexit:                          ; preds = %.lr.ph102.prol, %.lr.ph102.preheader235
  %.lcssa245.unr = phi ptr [ poison, %.lr.ph102.preheader235 ], [ %i.bw, %.lr.ph102.prol ]
  %.060101.unr = phi ptr [ %.060101.ph, %.lr.ph102.preheader235 ], [ %i.bz, %.lr.ph102.prol ]
  %.062100.unr = phi ptr [ %.062100.ph, %.lr.ph102.preheader235 ], [ %i.bw, %.lr.ph102.prol ]
  %.06899.unr = phi i64 [ %.06899.ph, %.lr.ph102.preheader235 ], [ %i.ca, %.lr.ph102.prol ]
  %i.cb = sub i64 %.06899.ph, %i.bf
  %i.cc = icmp ugt i64 %i.cb, -8
  br i1 %i.cc, label %.loopexit, label %.lr.ph102

.preheader:                                       ; preds = %bb.b
  br i1 %.not119, label %.loopexit, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.bf, 8
  br i1 %min.iters.check, label %.lr.ph107.preheader234, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph107.preheader
  %i.cd = shl nsw i64 %i.ay, 2
  %i.ce = mul i64 %i.cd, %i.be
  %scevgep = getelementptr i8, ptr %i.bi, i64 %i.ce
  %scevgep156 = getelementptr i8, ptr %.073109, i64 %i.bf
  %bound0 = icmp ult ptr %i.bi, %scevgep156
  %bound1 = icmp ult ptr %.073109, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph107.preheader234, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bf, -8                      ; 5 uses
  %i.cf = shl i64 %n.vec, 2
  %i.cg = getelementptr i8, ptr %i.bi, i64 %i.cf
  %i.ch = getelementptr i8, ptr %.073109, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ci = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bi, i64 %i.ci ; 2 uses
  %next.gep157 = getelementptr i8, ptr %.073109, i64 %index ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep157, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep157, align 1, !tbaa !33, !alias.scope !339
  %wide.load158 = load <4 x i8>, ptr %i.cj, align 1, !tbaa !33, !alias.scope !339
  %i.ck = zext <4 x i8> %wide.load to <4 x i32>
  %i.cl = zext <4 x i8> %wide.load158 to <4 x i32>
  %i.cm = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.ck, ptr %next.gep, align 4, !tbaa !8, !alias.scope !340, !noalias !339
  store <4 x i32> %i.cl, ptr %i.cm, align 4, !tbaa !8, !alias.scope !340, !noalias !339
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !325

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph107.preheader234

.lr.ph107.preheader234:                           ; preds = %vector.memcheck, %.lr.ph107.preheader, %middle.block
  %.161106.ph = phi ptr [ %i.bi, %vector.memcheck ], [ %i.bi, %.lr.ph107.preheader ], [ %i.cg, %middle.block ] ; 2 uses
  %.163105.ph = phi ptr [ %.073109, %vector.memcheck ], [ %.073109, %.lr.ph107.preheader ], [ %i.ch, %middle.block ] ; 2 uses
  %.169104.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph107.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter251 = and i64 %i.bf, 7                 ; 2 uses
  %lcmp.mod252.not = icmp eq i64 %xtraiter251, 0
  br i1 %lcmp.mod252.not, label %.lr.ph107.prol.loopexit, label %.lr.ph107.prol

.lr.ph107.prol:                                   ; preds = %.lr.ph107.preheader234, %.lr.ph107.prol
  %.161106.prol = phi ptr [ %i.cr, %.lr.ph107.prol ], [ %.161106.ph, %.lr.ph107.preheader234 ] ; 2 uses
  %.163105.prol = phi ptr [ %i.co, %.lr.ph107.prol ], [ %.163105.ph, %.lr.ph107.preheader234 ] ; 2 uses
  %.169104.prol = phi i64 [ %i.cs, %.lr.ph107.prol ], [ %.169104.ph, %.lr.ph107.preheader234 ]
  %prol.iter253 = phi i64 [ %prol.iter253.next, %.lr.ph107.prol ], [ 0, %.lr.ph107.preheader234 ]
  %i.co = getelementptr inbounds nuw i8, ptr %.163105.prol, i64 1 ; 3 uses
  %i.cp = load i8, ptr %.163105.prol, align 1, !tbaa !33
  %i.cq = zext i8 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %.161106.prol, i64 4 ; 2 uses
  store i32 %i.cq, ptr %.161106.prol, align 4, !tbaa !8
  %i.cs = add nuw i64 %.169104.prol, 1            ; 2 uses
  %prol.iter253.next = add i64 %prol.iter253, 1   ; 2 uses
  %prol.iter253.cmp.not = icmp eq i64 %prol.iter253.next, %xtraiter251
  br i1 %prol.iter253.cmp.not, label %.lr.ph107.prol.loopexit, label %.lr.ph107.prol, !llvm.loop !326

.lr.ph107.prol.loopexit:                          ; preds = %.lr.ph107.prol, %.lr.ph107.preheader234
  %.lcssa246.unr = phi ptr [ poison, %.lr.ph107.preheader234 ], [ %i.co, %.lr.ph107.prol ]
  %.161106.unr = phi ptr [ %.161106.ph, %.lr.ph107.preheader234 ], [ %i.cr, %.lr.ph107.prol ]
  %.163105.unr = phi ptr [ %.163105.ph, %.lr.ph107.preheader234 ], [ %i.co, %.lr.ph107.prol ]
  %.169104.unr = phi i64 [ %.169104.ph, %.lr.ph107.preheader234 ], [ %i.cs, %.lr.ph107.prol ]
  %i.ct = sub i64 %.169104.ph, %i.bf
  %i.cu = icmp ugt i64 %i.ct, -8
  br i1 %i.cu, label %.loopexit, label %.lr.ph107

.lr.ph102:                                        ; preds = %.lr.ph102.prol.loopexit, %.lr.ph102
  %.060101 = phi ptr [ %i.ea, %.lr.ph102 ], [ %.060101.unr, %.lr.ph102.prol.loopexit ] ; 9 uses
  %.062100 = phi ptr [ %i.dx, %.lr.ph102 ], [ %.062100.unr, %.lr.ph102.prol.loopexit ] ; 9 uses
  %.06899 = phi i64 [ %i.eb, %.lr.ph102 ], [ %.06899.unr, %.lr.ph102.prol.loopexit ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.062100, i64 1
  %i.cw = load i8, ptr %.062100, align 1, !tbaa !33
  %i.cx = sext i8 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %.060101, i64 4
  store i32 %i.cx, ptr %.060101, align 4, !tbaa !8
  %i.cz = getelementptr inbounds nuw i8, ptr %.062100, i64 2
  %i.da = load i8, ptr %i.cv, align 1, !tbaa !33
  %i.db = sext i8 %i.da to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %.060101, i64 8
  store i32 %i.db, ptr %i.cy, align 4, !tbaa !8
  %i.dd = getelementptr inbounds nuw i8, ptr %.062100, i64 3
  %i.de = load i8, ptr %i.cz, align 1, !tbaa !33
  %i.df = sext i8 %i.de to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %.060101, i64 12
  store i32 %i.df, ptr %i.dc, align 4, !tbaa !8
  %i.dh = getelementptr inbounds nuw i8, ptr %.062100, i64 4
  %i.di = load i8, ptr %i.dd, align 1, !tbaa !33
  %i.dj = sext i8 %i.di to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %.060101, i64 16
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !8
  %i.dl = getelementptr inbounds nuw i8, ptr %.062100, i64 5
  %i.dm = load i8, ptr %i.dh, align 1, !tbaa !33
  %i.dn = sext i8 %i.dm to i32
  %i.do = getelementptr inbounds nuw i8, ptr %.060101, i64 20
  store i32 %i.dn, ptr %i.dk, align 4, !tbaa !8
  %i.dp = getelementptr inbounds nuw i8, ptr %.062100, i64 6
  %i.dq = load i8, ptr %i.dl, align 1, !tbaa !33
  %i.dr = sext i8 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %.060101, i64 24
  store i32 %i.dr, ptr %i.do, align 4, !tbaa !8
  %i.dt = getelementptr inbounds nuw i8, ptr %.062100, i64 7
  %i.du = load i8, ptr %i.dp, align 1, !tbaa !33
  %i.dv = sext i8 %i.du to i32
  %i.dw = getelementptr inbounds nuw i8, ptr %.060101, i64 28
  store i32 %i.dv, ptr %i.ds, align 4, !tbaa !8
  %i.dx = getelementptr inbounds nuw i8, ptr %.062100, i64 8 ; 2 uses
  %i.dy = load i8, ptr %i.dt, align 1, !tbaa !33
  %i.dz = sext i8 %i.dy to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %.060101, i64 32
  store i32 %i.dz, ptr %i.dw, align 4, !tbaa !8
  %i.eb = add nuw i64 %.06899, 8                  ; 2 uses
  %exitcond131.not.7 = icmp eq i64 %i.eb, %i.bf
  br i1 %exitcond131.not.7, label %.loopexit, label %.lr.ph102, !llvm.loop !327

.lr.ph107:                                        ; preds = %.lr.ph107.prol.loopexit, %.lr.ph107
  %.161106 = phi ptr [ %i.fh, %.lr.ph107 ], [ %.161106.unr, %.lr.ph107.prol.loopexit ] ; 9 uses
  %.163105 = phi ptr [ %i.fe, %.lr.ph107 ], [ %.163105.unr, %.lr.ph107.prol.loopexit ] ; 9 uses
  %.169104 = phi i64 [ %i.fi, %.lr.ph107 ], [ %.169104.unr, %.lr.ph107.prol.loopexit ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.163105, i64 1
  %i.ed = load i8, ptr %.163105, align 1, !tbaa !33
  %i.ee = zext i8 %i.ed to i32
  %i.ef = getelementptr inbounds nuw i8, ptr %.161106, i64 4
  store i32 %i.ee, ptr %.161106, align 4, !tbaa !8
  %i.eg = getelementptr inbounds nuw i8, ptr %.163105, i64 2
  %i.eh = load i8, ptr %i.ec, align 1, !tbaa !33
  %i.ei = zext i8 %i.eh to i32
  %i.ej = getelementptr inbounds nuw i8, ptr %.161106, i64 8
  store i32 %i.ei, ptr %i.ef, align 4, !tbaa !8
  %i.ek = getelementptr inbounds nuw i8, ptr %.163105, i64 3
  %i.el = load i8, ptr %i.eg, align 1, !tbaa !33
  %i.em = zext i8 %i.el to i32
  %i.en = getelementptr inbounds nuw i8, ptr %.161106, i64 12
  store i32 %i.em, ptr %i.ej, align 4, !tbaa !8
  %i.eo = getelementptr inbounds nuw i8, ptr %.163105, i64 4
  %i.ep = load i8, ptr %i.ek, align 1, !tbaa !33
  %i.eq = zext i8 %i.ep to i32
  %i.er = getelementptr inbounds nuw i8, ptr %.161106, i64 16
  store i32 %i.eq, ptr %i.en, align 4, !tbaa !8
  %i.es = getelementptr inbounds nuw i8, ptr %.163105, i64 5
  %i.et = load i8, ptr %i.eo, align 1, !tbaa !33
  %i.eu = zext i8 %i.et to i32
  %i.ev = getelementptr inbounds nuw i8, ptr %.161106, i64 20
  store i32 %i.eu, ptr %i.er, align 4, !tbaa !8
  %i.ew = getelementptr inbounds nuw i8, ptr %.163105, i64 6
  %i.ex = load i8, ptr %i.es, align 1, !tbaa !33
  %i.ey = zext i8 %i.ex to i32
  %i.ez = getelementptr inbounds nuw i8, ptr %.161106, i64 24
  store i32 %i.ey, ptr %i.ev, align 4, !tbaa !8
  %i.fa = getelementptr inbounds nuw i8, ptr %.163105, i64 7
  %i.fb = load i8, ptr %i.ew, align 1, !tbaa !33
  %i.fc = zext i8 %i.fb to i32
  %i.fd = getelementptr inbounds nuw i8, ptr %.161106, i64 28
  store i32 %i.fc, ptr %i.ez, align 4, !tbaa !8
  %i.fe = getelementptr inbounds nuw i8, ptr %.163105, i64 8 ; 2 uses
  %i.ff = load i8, ptr %i.fa, align 1, !tbaa !33
  %i.fg = zext i8 %i.ff to i32
  %i.fh = getelementptr inbounds nuw i8, ptr %.161106, i64 32
  store i32 %i.fg, ptr %i.fd, align 4, !tbaa !8
  %i.fi = add nuw i64 %.169104, 8                 ; 2 uses
  %exitcond132.not.7 = icmp eq i64 %i.fi, %i.bf
  br i1 %exitcond132.not.7, label %.loopexit, label %.lr.ph107, !llvm.loop !328

bb.c:                                             ; preds = %.lr.ph113
  %i.fj = getelementptr inbounds nuw i8, ptr %.066112, i64 48
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !51 ; 6 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.067111, i64 32
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !124
  %.not76 = icmp eq i32 %i.fm, 0
  %.not117 = icmp eq i64 %i.bf, 0                 ; 2 uses
  br i1 %.not76, label %.preheader80, label %.preheader82

.preheader82:                                     ; preds = %bb.c
  br i1 %.not117, label %.loopexit, label %.lr.ph92.preheader

.lr.ph92.preheader:                               ; preds = %.preheader82
  %min.iters.check200 = icmp ult i64 %i.bf, 8
  br i1 %min.iters.check200, label %.lr.ph92.preheader239, label %vector.ph201

vector.ph201:                                     ; preds = %.lr.ph92.preheader
  %n.vec202 = and i64 %i.bf, -8                   ; 5 uses
  %i.fn = shl i64 %n.vec202, 1
  %i.fo = getelementptr i8, ptr %.073109, i64 %i.fn ; 2 uses
  %i.fp = shl i64 %n.vec202, 2
  %i.fq = getelementptr i8, ptr %i.fk, i64 %i.fp
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph201
  %index204 = phi i64 [ 0, %vector.ph201 ], [ %index.next209, %vector.body203 ] ; 3 uses
  %i.fr = shl i64 %index204, 1
  %next.gep205 = getelementptr i8, ptr %.073109, i64 %i.fr ; 2 uses
  %i.fs = shl i64 %index204, 2
  %next.gep206 = getelementptr i8, ptr %i.fk, i64 %i.fs ; 2 uses
  %i.ft = getelementptr i8, ptr %next.gep205, i64 8
  %wide.load207 = load <4 x i16>, ptr %next.gep205, align 2, !tbaa !341
  %wide.load208 = load <4 x i16>, ptr %i.ft, align 2, !tbaa !341
  %i.fu = sext <4 x i16> %wide.load207 to <4 x i32>
  %i.fv = sext <4 x i16> %wide.load208 to <4 x i32>
  %i.fw = getelementptr i8, ptr %next.gep206, i64 16
  store <4 x i32> %i.fu, ptr %next.gep206, align 4, !tbaa !8
end_hunk_1
