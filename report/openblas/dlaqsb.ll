Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaqsb?download=true
begin_hunk_0_@dlaqsb_:bb.a
  %indvars.iv107 = phi i64 [ 1, %.lr.ph91 ], [ %indvars.iv.next108, %._crit_edge ] ; 7 uses
  %indvars.iv = phi i32 [ %i.s, %.lr.ph91 ], [ %indvars.iv.next, %._crit_edge ] ; 5 uses
  %smax132 = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 1)
  %i.x = zext nneg i32 %smax132 to i64            ; 2 uses
  %umax133 = tail call i64 @llvm.umax.i64(i64 %indvars.iv107, i64 %i.x)
  %i.y = add nuw i64 %umax133, 1
  %i.z = sub i64 %i.y, %i.x                       ; 7 uses
  %smax124 = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 1) ; 2 uses
  %i.aa = zext nneg i32 %smax124 to i64           ; 2 uses
  %i.ab = shl nuw nsw i64 %i.aa, 3                ; 2 uses
  %scevgep125 = getelementptr i8, ptr %scevgep, i64 %i.ab
  %umax126 = tail call i64 @llvm.umax.i64(i64 %indvars.iv107, i64 %i.aa)
  %i.ac = shl nuw nsw i64 %umax126, 3             ; 2 uses
  %scevgep127 = getelementptr i8, ptr %5, i64 %i.ac
  %i.ad = mul i32 %.089101, %indvar
  %i.ae = add i32 %i.u, %i.ad
  %i.af = add i32 %smax124, %i.ae
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 3                    ; 2 uses
  %scevgep129 = getelementptr i8, ptr %scevgep128, i64 %i.ah
  %i.ai = add i64 %i.ac, %i.ah
  %i.aj = sub i64 %i.ai, %i.ab
  %scevgep131 = getelementptr i8, ptr %scevgep130, i64 %i.aj
  %smax123 = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 1) ; 2 uses
  %i.ak = zext nneg i32 %smax123 to i64
  %i.al = tail call i64 @llvm.usub.sat.i64(i64 %indvars.iv107, i64 %i.ak) ; 2 uses
  %i.am = mul i32 %.089101, %indvar
  %i.an = add i32 %i.u, %i.am
  %i.ao = add i32 %smax123, %i.an                 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv107
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !9 ; 3 uses
  br i1 %.not8386, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.f
  %smax = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 1)
  %i.ar = zext nneg i32 %smax to i64              ; 7 uses
  %i.as = trunc nuw nsw i64 %indvars.iv107 to i32
  %reass.sub = mul i32 %.089101, %i.as
  %.reass = add i32 %reass.sub, %invariant.op     ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.at = trunc i64 %i.al to i32
  %i.au = add i32 %i.ao, %i.at
  %i.av = icmp slt i32 %i.au, %i.ao
  %i.aw = icmp samesign ugt i64 %i.al, 4294967295
  %i.ax = or i1 %i.av, %i.aw
  br i1 %i.ax, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep125, %scevgep131
  %bound1 = icmp ult ptr %scevgep129, %scevgep127
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check134 = icmp ult i64 %i.z, 16
  br i1 %min.iters.check134, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ay = and i64 %i.z, 12
  %n.vec = and i64 %i.z, -16                      ; 4 uses
  %i.az = add i64 %n.vec, %i.ar
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.aq, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = add nuw i64 %index, %i.ar               ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ba ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 96
  %wide.load = load <4 x double>, ptr %i.bb, align 8, !tbaa !9, !alias.scope !11, !noalias !14
  %wide.load135 = load <4 x double>, ptr %i.bc, align 8, !tbaa !9, !alias.scope !11, !noalias !14
  %wide.load136 = load <4 x double>, ptr %i.bd, align 8, !tbaa !9, !alias.scope !11, !noalias !14
  %wide.load137 = load <4 x double>, ptr %i.be, align 8, !tbaa !9, !alias.scope !11, !noalias !14
  %i.bf = fmul <4 x double> %broadcast.splat, %wide.load
  %i.bg = fmul <4 x double> %broadcast.splat, %wide.load135
  %i.bh = fmul <4 x double> %broadcast.splat, %wide.load136
  %i.bi = fmul <4 x double> %broadcast.splat, %wide.load137
  %i.bj = trunc nuw nsw i64 %i.ba to i32
  %i.bk = add i32 %.reass, %i.bj
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bl ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 64 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 96 ; 2 uses
  %wide.load138 = load <4 x double>, ptr %i.bm, align 8, !tbaa !9, !alias.scope !14
  %wide.load139 = load <4 x double>, ptr %i.bn, align 8, !tbaa !9, !alias.scope !14
  %wide.load140 = load <4 x double>, ptr %i.bo, align 8, !tbaa !9, !alias.scope !14
  %wide.load141 = load <4 x double>, ptr %i.bp, align 8, !tbaa !9, !alias.scope !14
  %i.bq = fmul <4 x double> %i.bf, %wide.load138
  %i.br = fmul <4 x double> %i.bg, %wide.load139
  %i.bs = fmul <4 x double> %i.bh, %wide.load140
  %i.bt = fmul <4 x double> %i.bi, %wide.load141
  store <4 x double> %i.bq, ptr %i.bm, align 8, !tbaa !9, !alias.scope !14
  store <4 x double> %i.br, ptr %i.bn, align 8, !tbaa !9, !alias.scope !14
  store <4 x double> %i.bs, ptr %i.bo, align 8, !tbaa !9, !alias.scope !14
  store <4 x double> %i.bt, ptr %i.bp, align 8, !tbaa !9, !alias.scope !14
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ay, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec142 = and i64 %i.z, -4                    ; 3 uses
  %i.bv = add i64 %n.vec142, %i.ar
  %broadcast.splatinsert143 = insertelement <4 x double> poison, double %i.aq, i64 0
  %broadcast.splat144 = shufflevector <4 x double> %broadcast.splatinsert143, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index145 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next148, %vec.epilog.vector.body ] ; 2 uses
  %i.bw = add nuw i64 %index145, %i.ar            ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bw
  %wide.load146 = load <4 x double>, ptr %i.bx, align 8, !tbaa !9, !alias.scope !11, !noalias !14
  %i.by = fmul <4 x double> %broadcast.splat144, %wide.load146
  %i.bz = trunc nuw nsw i64 %i.bw to i32
  %i.ca = add i32 %.reass, %i.bz
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.cb ; 2 uses
  %wide.load147 = load <4 x double>, ptr %i.cc, align 8, !tbaa !9, !alias.scope !14
  %i.cd = fmul <4 x double> %i.by, %wide.load147
  store <4 x double> %i.cd, ptr %i.cc, align 8, !tbaa !9, !alias.scope !14
  %index.next148 = add nuw i64 %index145, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next148, %n.vec142
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n149 = icmp eq i64 %i.z, %n.vec142
  br i1 %cmp.n149, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv104.ph = phi i64 [ %i.ar, %iter.check ], [ %i.ar, %vector.scevcheck ], [ %i.ar, %vector.memcheck ], [ %i.az, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %vec.epilog.scalar.ph ], [ %indvars.iv104.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv104
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !9
  %i.ch = fmul double %i.aq, %i.cg
  %i.ci = trunc nuw nsw i64 %indvars.iv104 to i32
  %i.cj = add i32 %.reass, %i.ci
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ck ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !9
  %i.cn = fmul double %i.ch, %i.cm
  store double %i.cn, ptr %i.cl, align 8, !tbaa !9
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %.not83.not = icmp samesign ult i64 %indvars.iv104, %indvars.iv107
  br i1 %.not83.not, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.f
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !23

bb.g:                                             ; preds = %bb.d
  br i1 %.not7997, label %.loopexit, label %.lr.ph100

.lr.ph100:                                        ; preds = %bb.g
  %i.co = load i32, ptr %2, align 4, !tbaa !8     ; 3 uses
  %i.cp = add nuw i32 %i.q, 1
  %wide.trip.count116 = zext i32 %i.cp to i64
  %.198102 = add i32 %i.a, -1
  %i.cq = zext nneg i32 %i.q to i64
  %i.cr = add i32 %i.co, 1                        ; 2 uses
  %i.cs = add i32 %i.a, 1
  %i.ct = zext nneg i32 %i.q to i64
  %i.cu = shl nsw i64 %i.b, 3                     ; 2 uses
  %scevgep163 = getelementptr i8, ptr %3, i64 %i.cu
  %i.cv = add i32 %i.a, 1
  %i.cw = getelementptr i8, ptr %3, i64 %i.cu
  %scevgep165 = getelementptr i8, ptr %i.cw, i64 8
  %i.cx = zext nneg i32 %i.q to i64
  %i.cy = add i32 %i.co, 1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph100, %._crit_edge96
  %indvar155 = phi i64 [ 0, %.lr.ph100 ], [ %indvar.next156, %._crit_edge96 ] ; 9 uses
  %indvar152 = phi i32 [ 0, %.lr.ph100 ], [ %indvar.next153, %._crit_edge96 ] ; 2 uses
  %indvars.iv110 = phi i64 [ 1, %.lr.ph100 ], [ %indvars.iv.next111, %._crit_edge96 ] ; 15 uses
  %i.cz = trunc i64 %indvar155 to i32
  %i.da = add i32 %i.cy, %i.cz
  %i.db = sext i32 %i.da to i64
  %smin170 = tail call i64 @llvm.smin.i64(i64 %i.cx, i64 %i.db)
  %smax171 = tail call i64 @llvm.smax.i64(i64 %smin170, i64 %indvars.iv110)
  %i.dc = sub nsw i64 %smax171, %indvar155        ; 7 uses
  %i.dd = shl nuw nsw i64 %indvar155, 3           ; 2 uses
  %scevgep158 = getelementptr i8, ptr %5, i64 %i.dd
  %i.de = getelementptr i8, ptr %5, i64 %i.dd
  %scevgep159 = getelementptr i8, ptr %i.de, i64 8
  %i.df = trunc i64 %indvar155 to i32
  %i.dg = add i32 %i.cr, %i.df
  %i.dh = sext i32 %i.dg to i64
  %smin160 = tail call i64 @llvm.smin.i64(i64 %i.ct, i64 %i.dh)
  %smax161 = tail call i64 @llvm.smax.i64(i64 %smin160, i64 %indvars.iv110)
  %i.di = xor i64 %indvar155, -1
  %i.dj = add nsw i64 %smax161, %i.di
  %i.dk = shl nsw i64 %i.dj, 3                    ; 2 uses
  %scevgep162 = getelementptr i8, ptr %scevgep159, i64 %i.dk
  %i.dl = trunc i64 %indvar155 to i32
  %i.dm = mul i32 %i.a, %i.dl
  %i.dn = add i32 %i.dm, %i.cv
  %i.do = sext i32 %i.dn to i64
  %i.dp = shl nsw i64 %i.do, 3                    ; 2 uses
  %scevgep164 = getelementptr i8, ptr %scevgep163, i64 %i.dp
  %i.dq = getelementptr i8, ptr %scevgep165, i64 %i.dk
  %scevgep166 = getelementptr i8, ptr %i.dq, i64 %i.dp
  %i.dr = add i32 %i.cr, %indvar152
  %i.ds = sext i32 %i.dr to i64
  %smin = tail call i64 @llvm.smin.i64(i64 %i.cq, i64 %i.ds)
  %smax154 = tail call i64 @llvm.smax.i64(i64 %smin, i64 %indvars.iv110)
  %i.dt = xor i64 %indvar155, -1
  %i.du = add nsw i64 %smax154, %i.dt             ; 2 uses
  %i.dv = trunc i64 %indvar155 to i32
  %i.dw = mul i32 %i.a, %i.dv
  %i.dx = add i32 %i.dw, %i.cs                    ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv110
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !9 ; 3 uses
  %i.ea = trunc i64 %indvars.iv110 to i32
  %i.eb = add i32 %i.co, %i.ea
  %i.ec = tail call i32 @llvm.smin.i32(i32 %i.q, i32 %i.eb)
  %i.ed = sext i32 %i.ec to i64                   ; 2 uses
  %.not8192 = icmp sgt i64 %indvars.iv110, %i.ed
  br i1 %.not8192, label %._crit_edge96, label %iter.check193

iter.check193:                                    ; preds = %bb.h
  %i.ee = trunc nuw nsw i64 %indvars.iv110 to i32
  %i.ef = mul i32 %.198102, %i.ee                 ; 3 uses
  %min.iters.check172 = icmp ult i64 %i.dc, 4
  br i1 %min.iters.check172, label %vec.epilog.scalar.ph194.preheader, label %vector.scevcheck151

vector.scevcheck151:                              ; preds = %iter.check193
  %i.eg = trunc i64 %i.du to i32
  %i.eh = add i32 %i.dx, %i.eg
  %i.ei = icmp slt i32 %i.eh, %i.dx
  %i.ej = icmp ugt i64 %i.du, 4294967295
  %i.ek = or i1 %i.ei, %i.ej
  br i1 %i.ek, label %vec.epilog.scalar.ph194.preheader, label %vector.memcheck157

vector.memcheck157:                               ; preds = %vector.scevcheck151
  %bound0167 = icmp ult ptr %scevgep158, %scevgep166
  %bound1168 = icmp ult ptr %scevgep164, %scevgep162
  %found.conflict169 = and i1 %bound0167, %bound1168
  br i1 %found.conflict169, label %vec.epilog.scalar.ph194.preheader, label %vector.main.loop.iter.check173

vector.main.loop.iter.check173:                   ; preds = %vector.memcheck157
  %min.iters.check174 = icmp ult i64 %i.dc, 16
  br i1 %min.iters.check174, label %vec.epilog.ph197, label %vector.ph175

vector.ph175:                                     ; preds = %vector.main.loop.iter.check173
  %i.el = and i64 %i.dc, 12
  %n.vec176 = and i64 %i.dc, -16                  ; 4 uses
  %i.em = add i64 %indvars.iv110, %n.vec176
  %broadcast.splatinsert177 = insertelement <4 x double> poison, double %i.dz, i64 0
  %broadcast.splat178 = shufflevector <4 x double> %broadcast.splatinsert177, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %invariant.op210 = add i32 1, %i.ef
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph175
  %index180 = phi i64 [ 0, %vector.ph175 ], [ %index.next189, %vector.body179 ] ; 2 uses
  %i.en = add nuw i64 %indvars.iv110, %index180   ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.en ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 96
  %wide.load181 = load <4 x double>, ptr %i.eo, align 8, !tbaa !9, !alias.scope !24, !noalias !27
  %wide.load182 = load <4 x double>, ptr %i.ep, align 8, !tbaa !9, !alias.scope !24, !noalias !27
  %wide.load183 = load <4 x double>, ptr %i.eq, align 8, !tbaa !9, !alias.scope !24, !noalias !27
  %wide.load184 = load <4 x double>, ptr %i.er, align 8, !tbaa !9, !alias.scope !24, !noalias !27
  %i.es = fmul <4 x double> %broadcast.splat178, %wide.load181
  %i.et = fmul <4 x double> %broadcast.splat178, %wide.load182
  %i.eu = fmul <4 x double> %broadcast.splat178, %wide.load183
  %i.ev = fmul <4 x double> %broadcast.splat178, %wide.load184
  %i.ew = trunc i64 %i.en to i32
  %.reass211 = add i32 %i.ew, %invariant.op210
  %i.ex = sext i32 %.reass211 to i64
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ex ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 64 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 96 ; 2 uses
  %wide.load185 = load <4 x double>, ptr %i.ey, align 8, !tbaa !9, !alias.scope !27
  %wide.load186 = load <4 x double>, ptr %i.ez, align 8, !tbaa !9, !alias.scope !27
  %wide.load187 = load <4 x double>, ptr %i.fa, align 8, !tbaa !9, !alias.scope !27
  %wide.load188 = load <4 x double>, ptr %i.fb, align 8, !tbaa !9, !alias.scope !27
  %i.fc = fmul <4 x double> %i.es, %wide.load185
  %i.fd = fmul <4 x double> %i.et, %wide.load186
  %i.fe = fmul <4 x double> %i.eu, %wide.load187
  %i.ff = fmul <4 x double> %i.ev, %wide.load188
  store <4 x double> %i.fc, ptr %i.ey, align 8, !tbaa !9, !alias.scope !27
  store <4 x double> %i.fd, ptr %i.ez, align 8, !tbaa !9, !alias.scope !27
  store <4 x double> %i.fe, ptr %i.fa, align 8, !tbaa !9, !alias.scope !27
  store <4 x double> %i.ff, ptr %i.fb, align 8, !tbaa !9, !alias.scope !27
  %index.next189 = add nuw i64 %index180, 16      ; 2 uses
  %i.fg = icmp eq i64 %index.next189, %n.vec176
  br i1 %i.fg, label %middle.block190, label %vector.body179, !llvm.loop !29

middle.block190:                                  ; preds = %vector.body179
  %cmp.n191 = icmp eq i64 %i.dc, %n.vec176
  br i1 %cmp.n191, label %._crit_edge96, label %vec.epilog.iter.check195

vec.epilog.iter.check195:                         ; preds = %middle.block190
  %min.epilog.iters.check196 = icmp eq i64 %i.el, 0
  br i1 %min.epilog.iters.check196, label %vec.epilog.scalar.ph194.preheader, label %vec.epilog.ph197, !prof !20

vec.epilog.ph197:                                 ; preds = %vector.main.loop.iter.check173, %vec.epilog.iter.check195
  %vec.epilog.resume.val192 = phi i64 [ %n.vec176, %vec.epilog.iter.check195 ], [ 0, %vector.main.loop.iter.check173 ]
  %n.vec198 = and i64 %i.dc, -4                   ; 3 uses
  %i.fh = add i64 %indvars.iv110, %n.vec198
  %broadcast.splatinsert199 = insertelement <4 x double> poison, double %i.dz, i64 0
  %broadcast.splat200 = shufflevector <4 x double> %broadcast.splatinsert199, <4 x double> poison, <4 x i32> zeroinitializer
  %invariant.op212 = add i32 1, %i.ef
  br label %vec.epilog.vector.body201

vec.epilog.vector.body201:                        ; preds = %vec.epilog.vector.body201, %vec.epilog.ph197
  %index202 = phi i64 [ %vec.epilog.resume.val192, %vec.epilog.ph197 ], [ %index.next205, %vec.epilog.vector.body201 ] ; 2 uses
  %i.fi = add nuw i64 %indvars.iv110, %index202   ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.fi
  %wide.load203 = load <4 x double>, ptr %i.fj, align 8, !tbaa !9, !alias.scope !24, !noalias !27
  %i.fk = fmul <4 x double> %broadcast.splat200, %wide.load203
  %i.fl = trunc i64 %i.fi to i32
  %.reass213 = add i32 %i.fl, %invariant.op212
  %i.fm = sext i32 %.reass213 to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.fm ; 2 uses
  %wide.load204 = load <4 x double>, ptr %i.fn, align 8, !tbaa !9, !alias.scope !27
  %i.fo = fmul <4 x double> %i.fk, %wide.load204
  store <4 x double> %i.fo, ptr %i.fn, align 8, !tbaa !9, !alias.scope !27
  %index.next205 = add nuw i64 %index202, 4       ; 2 uses
  %i.fp = icmp eq i64 %index.next205, %n.vec198
  br i1 %i.fp, label %vec.epilog.middle.block206, label %vec.epilog.vector.body201, !llvm.loop !30

vec.epilog.middle.block206:                       ; preds = %vec.epilog.vector.body201
  %cmp.n207 = icmp eq i64 %i.dc, %n.vec198
  br i1 %cmp.n207, label %._crit_edge96, label %vec.epilog.scalar.ph194.preheader

vec.epilog.scalar.ph194.preheader:                ; preds = %vector.memcheck157, %vector.scevcheck151, %iter.check193, %vec.epilog.iter.check195, %vec.epilog.middle.block206
  %indvars.iv112.ph = phi i64 [ %indvars.iv110, %iter.check193 ], [ %indvars.iv110, %vector.scevcheck151 ], [ %indvars.iv110, %vector.memcheck157 ], [ %i.em, %vec.epilog.iter.check195 ], [ %i.fh, %vec.epilog.middle.block206 ]
  br label %vec.epilog.scalar.ph194

vec.epilog.scalar.ph194:                          ; preds = %vec.epilog.scalar.ph194.preheader, %vec.epilog.scalar.ph194
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %vec.epilog.scalar.ph194 ], [ %indvars.iv112.ph, %vec.epilog.scalar.ph194.preheader ] ; 3 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv112
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !9
  %i.fs = fmul double %i.dz, %i.fr
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %i.ft = trunc nsw i64 %indvars.iv.next113 to i32
  %i.fu = add i32 %i.ef, %i.ft
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.fv ; 2 uses
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !9
  %i.fy = fmul double %i.fs, %i.fx
  store double %i.fy, ptr %i.fw, align 8, !tbaa !9
  %.not81.not = icmp slt i64 %indvars.iv112, %i.ed
  br i1 %.not81.not, label %vec.epilog.scalar.ph194, label %._crit_edge96, !llvm.loop !31

._crit_edge96:                                    ; preds = %vec.epilog.scalar.ph194, %middle.block190, %vec.epilog.middle.block206, %bb.h
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count116
  %indvar.next153 = add i32 %indvar152, 1
  %indvar.next156 = add i64 %indvar155, 1
  br i1 %exitcond117.not, label %.loopexit, label %bb.h, !llvm.loop !32

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge96, %bb.e, %bb.g, %bb.c, %bb.a
  %storemerge84 = phi i8 [ 78, %bb.a ], [ 78, %bb.c ], [ 89, %bb.g ], [ 89, %bb.e ], [ 89, %._crit_edge96 ], [ 89, %._crit_edge ]
  store i8 %storemerge84, ptr %8, align 1, !tbaa !33
  ret void
}

declare double @dlamch_(ptr noundef) local_unnamed_addr #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
end_hunk_0
