loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dlaqsy_:bb.a
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %.loopexit168 ] ; 4 uses
  %indvars.iv80 = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next81, %.loopexit168 ] ; 11 uses
  %indvars.iv78 = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next79, %.loopexit168 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv80
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !9 ; 7 uses
  %i.ae = mul nsw i64 %indvars.iv80, %i.r
  %invariant.gep = getelementptr [8 x i8], ptr %i.c, i64 %i.ae ; 7 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv80, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.af = shl nuw nsw i64 %indvar, 3
  %i.ag = getelementptr i8, ptr %4, i64 %i.af
  %scevgep102 = getelementptr i8, ptr %i.ag, i64 8
  %i.ah = mul i64 %i.x, %indvar
  %scevgep101 = getelementptr i8, ptr %i.z, i64 %i.ah
  %i.ai = mul i64 %i.w, %indvar
  %scevgep = getelementptr i8, ptr %i.ab, i64 %i.ai
  %bound0 = icmp ult ptr %scevgep, %scevgep102
  %bound1 = icmp ult ptr %4, %scevgep101
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check103 = icmp samesign ult i64 %indvars.iv80, 16
  br i1 %min.iters.check103, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aj = and i64 %indvars.iv80, 12
  %n.vec = and i64 %indvars.iv80, 9223372036854775792 ; 4 uses
  %i.ak = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.ad, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr [8 x i8], ptr %4, i64 %index ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %wide.load = load <4 x double>, ptr %i.al, align 8, !tbaa !9, !alias.scope !11
  %wide.load104 = load <4 x double>, ptr %i.am, align 8, !tbaa !9, !alias.scope !11
  %wide.load105 = load <4 x double>, ptr %i.an, align 8, !tbaa !9, !alias.scope !11
  %wide.load106 = load <4 x double>, ptr %i.ao, align 8, !tbaa !9, !alias.scope !11
  %i.ap = fmul <4 x double> %broadcast.splat, %wide.load
  %i.aq = fmul <4 x double> %broadcast.splat, %wide.load104
  %i.ar = fmul <4 x double> %broadcast.splat, %wide.load105
  %i.as = fmul <4 x double> %broadcast.splat, %wide.load106
  %i.at = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.au = getelementptr i8, ptr %i.at, i64 8      ; 2 uses
  %i.av = getelementptr i8, ptr %i.at, i64 40     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.at, i64 72     ; 2 uses
  %i.ax = getelementptr i8, ptr %i.at, i64 104    ; 2 uses
  %wide.load107 = load <4 x double>, ptr %i.au, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  %wide.load108 = load <4 x double>, ptr %i.av, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  %wide.load109 = load <4 x double>, ptr %i.aw, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  %wide.load110 = load <4 x double>, ptr %i.ax, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  %i.ay = fmul <4 x double> %i.ap, %wide.load107
  %i.az = fmul <4 x double> %i.aq, %wide.load108
  %i.ba = fmul <4 x double> %i.ar, %wide.load109
  %i.bb = fmul <4 x double> %i.as, %wide.load110
  store <4 x double> %i.ay, ptr %i.au, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  store <4 x double> %i.az, ptr %i.av, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  store <4 x double> %i.ba, ptr %i.aw, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  store <4 x double> %i.bb, ptr %i.ax, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv80, %n.vec
  br i1 %cmp.n, label %.loopexit168, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aj, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec111 = and i64 %indvars.iv80, 9223372036854775804 ; 3 uses
  %i.bd = or disjoint i64 %n.vec111, 1
  %broadcast.splatinsert112 = insertelement <4 x double> poison, double %i.ad, i64 0
  %broadcast.splat113 = shufflevector <4 x double> %broadcast.splatinsert112, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index114 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next117, %vec.epilog.vector.body ] ; 3 uses
  %i.be = getelementptr [8 x i8], ptr %4, i64 %index114
  %wide.load115 = load <4 x double>, ptr %i.be, align 8, !tbaa !9, !alias.scope !11
  %i.bf = fmul <4 x double> %broadcast.splat113, %wide.load115
  %i.bg = getelementptr [8 x i8], ptr %invariant.gep, i64 %index114
  %i.bh = getelementptr i8, ptr %i.bg, i64 8      ; 2 uses
  %wide.load116 = load <4 x double>, ptr %i.bh, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  %i.bi = fmul <4 x double> %i.bf, %wide.load116
  store <4 x double> %i.bi, ptr %i.bh, align 8, !tbaa !9, !alias.scope !14, !noalias !11
  %index.next117 = add nuw i64 %index114, 4       ; 2 uses
  %i.bj = icmp eq i64 %index.next117, %n.vec111
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n118 = icmp eq i64 %indvars.iv80, %n.vec111
  br i1 %cmp.n118, label %.loopexit168, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.ak, %vec.epilog.iter.check ], [ %i.bd, %vec.epilog.middle.block ] ; 4 uses
  %i.bk = sub i64 %indvars.iv78, %indvars.iv.ph
  %i.bl = sub i64 %indvars.iv80, %indvars.iv.ph
  %xtraiter = and i64 %i.bk, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.prol
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !9
  %i.bo = fmul double %i.ad, %i.bn
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol ; 2 uses
  %i.bp = load double, ptr %gep.prol, align 8, !tbaa !9
  %i.bq = fmul double %i.bo, %i.bp
  store double %i.bq, ptr %gep.prol, align 8, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !22

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.br = icmp ult i64 %i.bl, 3
  br i1 %i.br, label %.loopexit168, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !9
  %i.bu = fmul double %i.ad, %i.bt
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.bv = load double, ptr %gep, align 8, !tbaa !9
  %i.bw = fmul double %i.bu, %i.bv
  store double %i.bw, ptr %gep, align 8, !tbaa !9
  %i.bx = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  %i.by = load double, ptr %i.bx, align 8, !tbaa !9
  %i.bz = fmul double %i.ad, %i.by
  %i.ca = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.ca, i64 8     ; 2 uses
  %i.cb = load double, ptr %gep.1, align 8, !tbaa !9
  %i.cc = fmul double %i.bz, %i.cb
  store double %i.cc, ptr %gep.1, align 8, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.1
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !9
  %i.cf = fmul double %i.ad, %i.ce
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1 ; 2 uses
  %i.cg = load double, ptr %gep.2, align 8, !tbaa !9
  %i.ch = fmul double %i.cf, %i.cg
  store double %i.ch, ptr %gep.2, align 8, !tbaa !9
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.2
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !9
  %i.ck = fmul double %i.ad, %i.cj
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2 ; 2 uses
  %i.cl = load double, ptr %gep.3, align 8, !tbaa !9
  %i.cm = fmul double %i.ck, %i.cl
  store double %i.cm, ptr %gep.3, align 8, !tbaa !9
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %indvars.iv78
  br i1 %exitcond.not.3, label %.loopexit168, label %vec.epilog.scalar.ph, !llvm.loop !24

.loopexit168:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  %exitcond86.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count85
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond86.not, label %.loopexit, label %iter.check, !llvm.loop !25

bb.f:                                             ; preds = %bb.d
  br i1 %.not6171, label %.loopexit, label %.lr.ph73.preheader

.lr.ph73.preheader:                               ; preds = %bb.f
  %i.cn = add nuw i32 %i.q, 1
  %i.co = sext i32 %i.a to i64                    ; 4 uses
  %wide.trip.count94 = zext i32 %i.cn to i64      ; 4 uses
  %i.cp = shl nsw i64 %i.co, 3
  %i.cq = or i64 %i.co, %i.b
  %i.cr = shl nsw i64 %i.cq, 3                    ; 2 uses
  %i.cs = add nsw i64 %i.cp, 8
  %i.ct = shl nuw nsw i64 %wide.trip.count94, 3   ; 2 uses
  %i.cu = shl nsw i64 %i.co, 3
  %i.cv = getelementptr i8, ptr %4, i64 %i.ct
  %scevgep126 = getelementptr i8, ptr %i.cv, i64 -8
  %i.cw = zext nneg i32 %i.q to i64
  %i.cx = zext nneg i32 %i.q to i64
  %i.cy = getelementptr i8, ptr %2, i64 %i.cr
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.ct
  %i.da = getelementptr i8, ptr %2, i64 %i.cr
  %i.db = getelementptr i8, ptr %i.da, i64 8
  br label %iter.check151

iter.check151:                                    ; preds = %.lr.ph73.preheader, %.loopexit167
  %indvar121 = phi i64 [ 0, %.lr.ph73.preheader ], [ %indvar.next122, %.loopexit167 ] ; 4 uses
  %indvars.iv87 = phi i64 [ 1, %.lr.ph73.preheader ], [ %indvars.iv.next88, %.loopexit167 ] ; 9 uses
  %i.dc = sub i64 %i.cw, %indvar121               ; 7 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv87 ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !9 ; 7 uses
  %i.df = mul nsw i64 %indvars.iv87, %i.co
  %invariant.gep98 = getelementptr [8 x i8], ptr %i.c, i64 %i.df ; 7 uses
  %min.iters.check130 = icmp ult i64 %i.dc, 4
  br i1 %min.iters.check130, label %vec.epilog.scalar.ph152.preheader, label %vector.memcheck120

vector.memcheck120:                               ; preds = %iter.check151
  %i.dg = mul i64 %i.cu, %indvar121
  %scevgep124 = getelementptr i8, ptr %i.cz, i64 %i.dg
  %i.dh = mul i64 %i.cs, %indvar121
  %scevgep123 = getelementptr i8, ptr %i.db, i64 %i.dh
  %bound0127 = icmp ult ptr %scevgep123, %scevgep126
  %bound1128 = icmp ult ptr %i.dd, %scevgep124
  %found.conflict129 = and i1 %bound0127, %bound1128
  br i1 %found.conflict129, label %vec.epilog.scalar.ph152.preheader, label %vector.main.loop.iter.check131

vector.main.loop.iter.check131:                   ; preds = %vector.memcheck120
  %min.iters.check132 = icmp ult i64 %i.dc, 16
  br i1 %min.iters.check132, label %vec.epilog.ph155, label %vector.ph133

vector.ph133:                                     ; preds = %vector.main.loop.iter.check131
  %i.di = and i64 %i.dc, 12
  %n.vec134 = and i64 %i.dc, -16                  ; 4 uses
  %i.dj = add i64 %indvars.iv87, %n.vec134
  %broadcast.splatinsert135 = insertelement <4 x double> poison, double %i.de, i64 0
  %broadcast.splat136 = shufflevector <4 x double> %broadcast.splatinsert135, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph133
  %index138 = phi i64 [ 0, %vector.ph133 ], [ %index.next147, %vector.body137 ] ; 2 uses
  %i.dk = add nuw i64 %indvars.iv87, %index138    ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.dk ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 96
  %wide.load139.a = load <4 x double>, ptr %i.dl, align 8, !tbaa !9, !alias.scope !26
  %wide.load140.a = load <4 x double>, ptr %i.dm, align 8, !tbaa !9, !alias.scope !26
  %wide.load141.a = load <4 x double>, ptr %i.dn, align 8, !tbaa !9, !alias.scope !26
  %wide.load142.a = load <4 x double>, ptr %i.do, align 8, !tbaa !9, !alias.scope !26
  %i.dp = fmul <4 x double> %broadcast.splat136, %wide.load139.a
  %i.dq = fmul <4 x double> %broadcast.splat136, %wide.load140.a
  %i.dr = fmul <4 x double> %broadcast.splat136, %wide.load141.a
  %i.ds = fmul <4 x double> %broadcast.splat136, %wide.load142.a
  %i.dt = getelementptr [8 x i8], ptr %invariant.gep98, i64 %i.dk ; 5 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 32     ; 2 uses
  %i.dv = getelementptr i8, ptr %i.dt, i64 64     ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dt, i64 96     ; 2 uses
  %wide.load143.a = load <4 x double>, ptr %i.dt, align 8, !tbaa !9, !alias.scope !29, !noalias !26
  %wide.load144.a = load <4 x double>, ptr %i.du, align 8, !tbaa !9, !alias.scope !29, !noalias !26
  %wide.load145.a = load <4 x double>, ptr %i.dv, align 8, !tbaa !9, !alias.scope !29, !noalias !26
  %wide.load146 = load <4 x double>, ptr %i.dw, align 8, !tbaa !9, !alias.scope !29, !noalias !26
  %i.dx = fmul <4 x double> %i.dp, %wide.load143.a
  %i.dy = fmul <4 x double> %i.dq, %wide.load144.a
  %i.dz = fmul <4 x double> %i.dr, %wide.load145.a
  %i.ea = fmul <4 x double> %i.ds, %wide.load146
  store <4 x double> %i.dx, ptr %i.dt, align 8, !tbaa !9, !alias.scope !29, !noalias !26
  store <4 x double> %i.dy, ptr %i.du, align 8, !tbaa !9, !alias.scope !29, !noalias !26
  store <4 x double> %i.dz, ptr %i.dv, align 8, !tbaa !9, !alias.scope !29, !noalias !26
  store <4 x double> %i.ea, ptr %i.dw, align 8, !tbaa !9, !alias.scope !29, !noalias !26
  %index.next147 = add nuw i64 %index138, 16      ; 2 uses
  %i.eb = icmp eq i64 %index.next147, %n.vec134
  br i1 %i.eb, label %middle.block148, label %vector.body137, !llvm.loop !31

middle.block148:                                  ; preds = %vector.body137
  %cmp.n149 = icmp eq i64 %i.dc, %n.vec134
  br i1 %cmp.n149, label %.loopexit167, label %vec.epilog.iter.check153

vec.epilog.iter.check153:                         ; preds = %middle.block148
  %min.epilog.iters.check154 = icmp eq i64 %i.di, 0
  br i1 %min.epilog.iters.check154, label %vec.epilog.scalar.ph152.preheader, label %vec.epilog.ph155, !prof !20

vec.epilog.ph155:                                 ; preds = %vector.main.loop.iter.check131, %vec.epilog.iter.check153
  %vec.epilog.resume.val150 = phi i64 [ %n.vec134, %vec.epilog.iter.check153 ], [ 0, %vector.main.loop.iter.check131 ]
  %n.vec156 = and i64 %i.dc, -4                   ; 3 uses
  %i.ec = add i64 %indvars.iv87, %n.vec156
  %broadcast.splatinsert157 = insertelement <4 x double> poison, double %i.de, i64 0
  %broadcast.splat158 = shufflevector <4 x double> %broadcast.splatinsert157, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body159

vec.epilog.vector.body159:                        ; preds = %vec.epilog.vector.body159, %vec.epilog.ph155
  %index160 = phi i64 [ %vec.epilog.resume.val150, %vec.epilog.ph155 ], [ %index.next163, %vec.epilog.vector.body159 ] ; 2 uses
  %i.ed = add nuw i64 %indvars.iv87, %index160    ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ed
  %wide.load161.a = load <4 x double>, ptr %i.ee, align 8, !tbaa !9, !alias.scope !26
  %i.ef = fmul <4 x double> %broadcast.splat158, %wide.load161.a
  %i.eg = getelementptr [8 x i8], ptr %invariant.gep98, i64 %i.ed ; 2 uses
  %wide.load162 = load <4 x double>, ptr %i.eg, align 8, !tbaa !9, !alias.scope !29, !noalias !26
  %i.eh = fmul <4 x double> %i.ef, %wide.load162
  store <4 x double> %i.eh, ptr %i.eg, align 8, !tbaa !9, !alias.scope !29, !noalias !26
  %index.next163 = add nuw i64 %index160, 4       ; 2 uses
  %i.ei = icmp eq i64 %index.next163, %n.vec156
  br i1 %i.ei, label %vec.epilog.middle.block164, label %vec.epilog.vector.body159, !llvm.loop !32

vec.epilog.middle.block164:                       ; preds = %vec.epilog.vector.body159
  %cmp.n165 = icmp eq i64 %i.dc, %n.vec156
  br i1 %cmp.n165, label %.loopexit167, label %vec.epilog.scalar.ph152.preheader

vec.epilog.scalar.ph152.preheader:                ; preds = %vector.memcheck120, %iter.check151, %vec.epilog.iter.check153, %vec.epilog.middle.block164
  %indvars.iv89.ph = phi i64 [ %indvars.iv87, %iter.check151 ], [ %indvars.iv87, %vector.memcheck120 ], [ %i.dj, %vec.epilog.iter.check153 ], [ %i.ec, %vec.epilog.middle.block164 ] ; 4 uses
  %i.ej = sub i64 %wide.trip.count94, %indvars.iv89.ph
  %i.ek = sub i64 %i.cx, %indvars.iv89.ph
  %xtraiter170 = and i64 %i.ej, 3                 ; 2 uses
  %lcmp.mod171.not = icmp eq i64 %xtraiter170, 0
  br i1 %lcmp.mod171.not, label %vec.epilog.scalar.ph152.prol.loopexit, label %vec.epilog.scalar.ph152.prol

vec.epilog.scalar.ph152.prol:                     ; preds = %vec.epilog.scalar.ph152.preheader, %vec.epilog.scalar.ph152.prol
  %indvars.iv89.prol = phi i64 [ %indvars.iv.next90.prol, %vec.epilog.scalar.ph152.prol ], [ %indvars.iv89.ph, %vec.epilog.scalar.ph152.preheader ] ; 3 uses
  %prol.iter172 = phi i64 [ %prol.iter172.next, %vec.epilog.scalar.ph152.prol ], [ 0, %vec.epilog.scalar.ph152.preheader ]
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv89.prol
  %i.em = load double, ptr %i.el, align 8, !tbaa !9
  %i.en = fmul double %i.de, %i.em
  %gep99.prol = getelementptr [8 x i8], ptr %invariant.gep98, i64 %indvars.iv89.prol ; 2 uses
  %i.eo = load double, ptr %gep99.prol, align 8, !tbaa !9
  %i.ep = fmul double %i.en, %i.eo
  store double %i.ep, ptr %gep99.prol, align 8, !tbaa !9
  %indvars.iv.next90.prol = add nuw nsw i64 %indvars.iv89.prol, 1 ; 2 uses
  %prol.iter172.next = add i64 %prol.iter172, 1   ; 2 uses
  %prol.iter172.cmp.not = icmp eq i64 %prol.iter172.next, %xtraiter170
  br i1 %prol.iter172.cmp.not, label %vec.epilog.scalar.ph152.prol.loopexit, label %vec.epilog.scalar.ph152.prol, !llvm.loop !33

vec.epilog.scalar.ph152.prol.loopexit:            ; preds = %vec.epilog.scalar.ph152.prol, %vec.epilog.scalar.ph152.preheader
  %indvars.iv89.unr = phi i64 [ %indvars.iv89.ph, %vec.epilog.scalar.ph152.preheader ], [ %indvars.iv.next90.prol, %vec.epilog.scalar.ph152.prol ]
  %i.eq = icmp ult i64 %i.ek, 3
  br i1 %i.eq, label %.loopexit167, label %vec.epilog.scalar.ph152

vec.epilog.scalar.ph152:                          ; preds = %vec.epilog.scalar.ph152.prol.loopexit, %vec.epilog.scalar.ph152
  %indvars.iv89 = phi i64 [ %indvars.iv.next90.3, %vec.epilog.scalar.ph152 ], [ %indvars.iv89.unr, %vec.epilog.scalar.ph152.prol.loopexit ] ; 7 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv89
  %i.es = load double, ptr %i.er, align 8, !tbaa !9
  %i.et = fmul double %i.de, %i.es
  %gep99 = getelementptr [8 x i8], ptr %invariant.gep98, i64 %indvars.iv89 ; 2 uses
  %i.eu = load double, ptr %gep99, align 8, !tbaa !9
  %i.ev = fmul double %i.et, %i.eu
  store double %i.ev, ptr %gep99, align 8, !tbaa !9
  %i.ew = getelementptr [8 x i8], ptr %4, i64 %indvars.iv89
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !9
  %i.ey = fmul double %i.de, %i.ex
  %i.ez = getelementptr [8 x i8], ptr %invariant.gep98, i64 %indvars.iv89
  %gep99.1 = getelementptr i8, ptr %i.ez, i64 8   ; 2 uses
  %i.fa = load double, ptr %gep99.1, align 8, !tbaa !9
  %i.fb = fmul double %i.ey, %i.fa
  store double %i.fb, ptr %gep99.1, align 8, !tbaa !9
  %indvars.iv.next90.1 = add nuw nsw i64 %indvars.iv89, 2 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next90.1
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !9
  %i.fe = fmul double %i.de, %i.fd
  %gep99.2 = getelementptr [8 x i8], ptr %invariant.gep98, i64 %indvars.iv.next90.1 ; 2 uses
  %i.ff = load double, ptr %gep99.2, align 8, !tbaa !9
  %i.fg = fmul double %i.fe, %i.ff
  store double %i.fg, ptr %gep99.2, align 8, !tbaa !9
  %indvars.iv.next90.2 = add nuw nsw i64 %indvars.iv89, 3 ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next90.2
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !9
  %i.fj = fmul double %i.de, %i.fi
  %gep99.3 = getelementptr [8 x i8], ptr %invariant.gep98, i64 %indvars.iv.next90.2 ; 2 uses
  %i.fk = load double, ptr %gep99.3, align 8, !tbaa !9
  %i.fl = fmul double %i.fj, %i.fk
  store double %i.fl, ptr %gep99.3, align 8, !tbaa !9
  %indvars.iv.next90.3 = add nuw nsw i64 %indvars.iv89, 4 ; 2 uses
  %exitcond92.not.3 = icmp eq i64 %indvars.iv.next90.3, %wide.trip.count94
  br i1 %exitcond92.not.3, label %.loopexit167, label %vec.epilog.scalar.ph152, !llvm.loop !34

.loopexit167:                                     ; preds = %vec.epilog.scalar.ph152.prol.loopexit, %vec.epilog.scalar.ph152, %vec.epilog.middle.block164, %middle.block148
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count94
  %indvar.next122 = add i64 %indvar121, 1
  br i1 %exitcond95.not, label %.loopexit, label %iter.check151, !llvm.loop !35

.loopexit:                                        ; preds = %.loopexit168, %.loopexit167, %bb.e, %bb.f, %bb.c, %bb.a
  %storemerge65 = phi i8 [ 78, %bb.a ], [ 78, %bb.c ], [ 89, %bb.f ], [ 89, %bb.e ], [ 89, %.loopexit167 ], [ 89, %.loopexit168 ]
  store i8 %storemerge65, ptr %7, align 1, !tbaa !36
  ret void
}

declare double @dlamch_(ptr noundef) local_unnamed_addr #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nounwind }

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
!11 = !{!12}
!12 = distinct !{!12, !13}
!13 = distinct !{!13, !"LVerDomain"}
!14 = !{!15}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !17, !18, !19}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = !{!"branch_weights", i32 4, i32 12}
!21 = distinct !{!21, !17, !18, !19}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !17, !18}
!25 = distinct !{!25, !17}
!26 = !{!27}
end_hunk_0
