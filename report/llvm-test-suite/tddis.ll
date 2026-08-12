loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@mseqcat:bb.a
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ag, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body171

vector.body171:                                   ; preds = %vector.body171, %vector.ph169
  %index172 = phi i64 [ 0, %vector.ph169 ], [ %index.next175, %vector.body171 ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index172 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load173 = load <2 x double>, ptr %i.ah, align 8, !tbaa !14, !alias.scope !56
  %wide.load174 = load <2 x double>, ptr %i.ai, align 8, !tbaa !14, !alias.scope !56
  %i.aj = fmul <2 x double> %broadcast.splat, %wide.load173
  %i.ak = fmul <2 x double> %broadcast.splat, %wide.load174
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index172 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x double> %i.aj, ptr %i.al, align 8, !tbaa !14, !alias.scope !58, !noalias !60
  store <2 x double> %i.ak, ptr %i.am, align 8, !tbaa !14, !alias.scope !58, !noalias !60
  %index.next175 = add nuw i64 %index172, 4       ; 2 uses
  %i.an = icmp eq i64 %index.next175, %n.vec170
  br i1 %i.an, label %middle.block176, label %vector.body171, !llvm.loop !61

middle.block176:                                  ; preds = %vector.body171
  br i1 %cmp.n177, label %._crit_edge, label %scalar.ph167.preheader

scalar.ph167.preheader:                           ; preds = %vector.memcheck162, %.preheader92, %middle.block176
  %indvars.iv120.ph = phi i64 [ 0, %vector.memcheck162 ], [ 0, %.preheader92 ], [ %n.vec170, %middle.block176 ] ; 3 uses
  br i1 %lcmp.mod256.not, label %scalar.ph167.prol.loopexit, label %scalar.ph167.prol

scalar.ph167.prol:                                ; preds = %scalar.ph167.preheader, %scalar.ph167.prol
  %indvars.iv120.prol = phi i64 [ %indvars.iv.next121.prol, %scalar.ph167.prol ], [ %indvars.iv120.ph, %scalar.ph167.preheader ] ; 3 uses
  %prol.iter257 = phi i64 [ %prol.iter257.next, %scalar.ph167.prol ], [ 0, %scalar.ph167.preheader ]
  %i.ao = load double, ptr %i.ad, align 8, !tbaa !14
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv120.prol
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !14
  %i.ar = fmul double %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv120.prol
  store double %i.ar, ptr %i.as, align 8, !tbaa !14
  %indvars.iv.next121.prol = add nuw nsw i64 %indvars.iv120.prol, 1 ; 2 uses
  %prol.iter257.next = add i64 %prol.iter257, 1   ; 2 uses
  %prol.iter257.cmp.not = icmp eq i64 %prol.iter257.next, %xtraiter255
  br i1 %prol.iter257.cmp.not, label %scalar.ph167.prol.loopexit, label %scalar.ph167.prol, !llvm.loop !62

scalar.ph167.prol.loopexit:                       ; preds = %scalar.ph167.prol, %scalar.ph167.preheader
  %indvars.iv120.unr = phi i64 [ %indvars.iv120.ph, %scalar.ph167.preheader ], [ %indvars.iv.next121.prol, %scalar.ph167.prol ]
  %i.at = sub nsw i64 %indvars.iv120.ph, %wide.trip.count128
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %._crit_edge, label %scalar.ph167

.preheader91..preheader89_crit_edge:              ; preds = %.preheader93
  %.pre = add nsw i32 %8, %7
  br label %.preheader87

.preheader90.lr.ph:                               ; preds = %._crit_edge
  %i.av = add nsw i32 %8, %7                      ; 3 uses
  br i1 %i.c, label %.preheader90.preheader, label %._crit_edge113.split

.preheader90.preheader:                           ; preds = %.preheader90.lr.ph
  %i.aw = zext nneg i32 %7 to i64                 ; 5 uses
  %i.ax = zext nneg i32 %i.av to i64              ; 4 uses
  %wide.trip.count136 = zext nneg i32 %7 to i64
  %i.ay = shl nuw nsw i64 %wide.trip.count128, 3  ; 3 uses
  %i.az = add nuw nsw i64 %wide.trip.count128, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.az, i64 %i.ax)
  %i.ba = shl nuw nsw i64 %umax, 3                ; 2 uses
  %scevgep182 = getelementptr i8, ptr %3, i64 %i.ay
  %i.bb = sub nsw i64 %i.ba, %i.ay
  %scevgep183 = getelementptr i8, ptr %4, i64 %i.bb
  %i.bc = add nuw nsw i64 %wide.trip.count128, 1
  %i.bd = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.ax)
  %i.be = sub nsw i64 %i.bd, %wide.trip.count128  ; 3 uses
  %min.iters.check191 = icmp ult i64 %i.be, 4
  %n.vec193 = and i64 %i.be, -4                   ; 3 uses
  %i.bf = add nsw i64 %n.vec193, %i.aw
  %cmp.n202 = icmp eq i64 %i.be, %n.vec193
  br label %.preheader90

scalar.ph167:                                     ; preds = %scalar.ph167.prol.loopexit, %scalar.ph167
  %indvars.iv120 = phi i64 [ %indvars.iv.next121.3, %scalar.ph167 ], [ %indvars.iv120.unr, %scalar.ph167.prol.loopexit ] ; 6 uses
  %i.bg = load double, ptr %i.ad, align 8, !tbaa !14
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv120
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !14
  %i.bj = fmul double %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv120
  store double %i.bj, ptr %i.bk, align 8, !tbaa !14
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %i.bl = load double, ptr %i.ad, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next121
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !14
  %i.bo = fmul double %i.bl, %i.bn
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next121
  store double %i.bo, ptr %i.bp, align 8, !tbaa !14
  %indvars.iv.next121.1 = add nuw nsw i64 %indvars.iv120, 2 ; 2 uses
  %i.bq = load double, ptr %i.ad, align 8, !tbaa !14
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next121.1
  %i.bs = load double, ptr %i.br, align 8, !tbaa !14
  %i.bt = fmul double %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next121.1
  store double %i.bt, ptr %i.bu, align 8, !tbaa !14
  %indvars.iv.next121.2 = add nuw nsw i64 %indvars.iv120, 3 ; 2 uses
  %i.bv = load double, ptr %i.ad, align 8, !tbaa !14
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next121.2
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !14
  %i.by = fmul double %i.bv, %i.bx
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next121.2
  store double %i.by, ptr %i.bz, align 8, !tbaa !14
  %indvars.iv.next121.3 = add nuw nsw i64 %indvars.iv120, 4 ; 2 uses
  %exitcond124.not.3 = icmp eq i64 %indvars.iv.next121.3, %wide.trip.count128
  br i1 %exitcond124.not.3, label %._crit_edge, label %scalar.ph167, !llvm.loop !63

._crit_edge:                                      ; preds = %scalar.ph167.prol.loopexit, %scalar.ph167, %middle.block176
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %.preheader90.lr.ph, label %.preheader92, !llvm.loop !64

.preheader90:                                     ; preds = %.preheader90.preheader, %._crit_edge103
  %indvars.iv133 = phi i64 [ 0, %.preheader90.preheader ], [ %indvars.iv.next134, %._crit_edge103 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv133 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv133
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !12 ; 4 uses
  br i1 %min.iters.check191, label %scalar.ph190.preheader, label %vector.memcheck179

vector.memcheck179:                               ; preds = %.preheader90
  %scevgep180 = getelementptr nuw i8, ptr %i.cc, i64 %i.ay ; 2 uses
  %scevgep181 = getelementptr i8, ptr %i.cc, i64 %i.ba ; 2 uses
  %bound0184 = icmp ult ptr %scevgep180, %scevgep182
  %bound1185 = icmp ult ptr %3, %scevgep181
  %found.conflict186 = and i1 %bound0184, %bound1185
  %bound0187 = icmp ult ptr %scevgep180, %scevgep183
  %bound1188 = icmp ult ptr %4, %scevgep181
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx = or i1 %found.conflict186, %found.conflict189
  br i1 %conflict.rdx, label %scalar.ph190.preheader, label %vector.ph192

vector.ph192:                                     ; preds = %vector.memcheck179
  %i.cd = load double, ptr %i.ca, align 8, !tbaa !14, !alias.scope !65
  %broadcast.splatinsert198 = insertelement <2 x double> poison, double %i.cd, i64 0
  %broadcast.splat199 = shufflevector <2 x double> %broadcast.splatinsert198, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep261 = getelementptr [8 x i8], ptr %i.cc, i64 %i.aw
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph192
  %index195 = phi i64 [ 0, %vector.ph192 ], [ %index.next200, %vector.body194 ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index195 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load196 = load <2 x double>, ptr %i.ce, align 8, !tbaa !14, !alias.scope !68
  %wide.load197 = load <2 x double>, ptr %i.cf, align 8, !tbaa !14, !alias.scope !68
  %i.cg = fmul <2 x double> %broadcast.splat199, %wide.load196
  %i.ch = fmul <2 x double> %broadcast.splat199, %wide.load197
  %gep262 = getelementptr [8 x i8], ptr %invariant.gep261, i64 %index195 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %gep262, i64 16
  store <2 x double> %i.cg, ptr %gep262, align 8, !tbaa !14, !alias.scope !70, !noalias !72
  store <2 x double> %i.ch, ptr %i.ci, align 8, !tbaa !14, !alias.scope !70, !noalias !72
  %index.next200 = add nuw i64 %index195, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next200, %n.vec193
  br i1 %i.cj, label %middle.block201, label %vector.body194, !llvm.loop !73

middle.block201:                                  ; preds = %vector.body194
  br i1 %cmp.n202, label %._crit_edge103, label %scalar.ph190.preheader

scalar.ph190.preheader:                           ; preds = %vector.memcheck179, %.preheader90, %middle.block201
  %indvars.iv130.ph = phi i64 [ %i.aw, %vector.memcheck179 ], [ %i.aw, %.preheader90 ], [ %i.bf, %middle.block201 ]
  br label %scalar.ph190

.preheader88.preheader:                           ; preds = %._crit_edge103
  %i.ck = zext nneg i32 %7 to i64                 ; 4 uses
  %i.cl = zext nneg i32 %i.av to i64
  %wide.trip.count141 = zext nneg i32 %7 to i64
  %i.cm = shl nuw nsw i64 %wide.trip.count128, 3  ; 2 uses
  %i.cn = add nuw nsw i64 %wide.trip.count128, 1
  %umax206 = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 %i.ax)
  %i.co = sub nsw i64 %umax206, %wide.trip.count128
  %i.cp = shl nsw i64 %i.co, 3
  %scevgep207 = getelementptr i8, ptr %4, i64 %i.cp
  %scevgep208 = getelementptr i8, ptr %3, i64 %i.cm
  %min.iters.check217 = icmp ult i32 %7, 6
  %n.vec219 = and i64 %wide.trip.count128, 2147483644 ; 3 uses
  %cmp.n228 = icmp eq i64 %n.vec219, %wide.trip.count128
  %xtraiter258 = and i64 %i.ck, 3                 ; 2 uses
  %lcmp.mod259.not = icmp eq i64 %xtraiter258, 0
  br label %.preheader88

scalar.ph190:                                     ; preds = %scalar.ph190.preheader, %scalar.ph190
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %scalar.ph190 ], [ %indvars.iv130.ph, %scalar.ph190.preheader ] ; 3 uses
  %i.cq = load double, ptr %i.ca, align 8, !tbaa !14
  %i.cr = sub nuw nsw i64 %indvars.iv130, %i.aw
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cr
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !14
  %i.cu = fmul double %i.cq, %i.ct
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv130
  store double %i.cu, ptr %i.cv, align 8, !tbaa !14
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.cw = icmp samesign ult i64 %indvars.iv.next131, %i.ax
  br i1 %i.cw, label %scalar.ph190, label %._crit_edge103, !llvm.loop !74

._crit_edge103:                                   ; preds = %scalar.ph190, %middle.block201
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %.preheader88.preheader, label %.preheader90, !llvm.loop !75

.preheader88:                                     ; preds = %.preheader88.preheader, %._crit_edge107
  %indvars.iv143 = phi i64 [ %i.ck, %.preheader88.preheader ], [ %indvars.iv.next144, %._crit_edge107 ] ; 3 uses
  %i.cx = sub nuw nsw i64 %indvars.iv143, %i.ck
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.cx ; 6 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv143
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !12 ; 9 uses
  br i1 %min.iters.check217, label %scalar.ph216.preheader, label %vector.memcheck204

vector.memcheck204:                               ; preds = %.preheader88
  %scevgep205 = getelementptr i8, ptr %i.da, i64 %i.cm ; 2 uses
  %bound0209 = icmp ult ptr %i.da, %scevgep207
  %bound1210 = icmp ult ptr %4, %scevgep205
  %found.conflict211 = and i1 %bound0209, %bound1210
  %bound0212 = icmp ult ptr %i.da, %scevgep208
  %bound1213 = icmp ult ptr %3, %scevgep205
  %found.conflict214 = and i1 %bound0212, %bound1213
  %conflict.rdx215 = or i1 %found.conflict211, %found.conflict214
  br i1 %conflict.rdx215, label %scalar.ph216.preheader, label %vector.ph218

vector.ph218:                                     ; preds = %vector.memcheck204
  %i.db = load double, ptr %i.cy, align 8, !tbaa !14, !alias.scope !76
  %broadcast.splatinsert224 = insertelement <2 x double> poison, double %i.db, i64 0
  %broadcast.splat225 = shufflevector <2 x double> %broadcast.splatinsert224, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body220

vector.body220:                                   ; preds = %vector.body220, %vector.ph218
  %index221 = phi i64 [ 0, %vector.ph218 ], [ %index.next226, %vector.body220 ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index221 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %wide.load222 = load <2 x double>, ptr %i.dc, align 8, !tbaa !14, !alias.scope !79
  %wide.load223 = load <2 x double>, ptr %i.dd, align 8, !tbaa !14, !alias.scope !79
  %i.de = fmul <2 x double> %broadcast.splat225, %wide.load222
  %i.df = fmul <2 x double> %broadcast.splat225, %wide.load223
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %index221 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store <2 x double> %i.de, ptr %i.dg, align 8, !tbaa !14, !alias.scope !81, !noalias !83
  store <2 x double> %i.df, ptr %i.dh, align 8, !tbaa !14, !alias.scope !81, !noalias !83
  %index.next226 = add nuw i64 %index221, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next226, %n.vec219
  br i1 %i.di, label %middle.block227, label %vector.body220, !llvm.loop !84

middle.block227:                                  ; preds = %vector.body220
  br i1 %cmp.n228, label %._crit_edge107, label %scalar.ph216.preheader

scalar.ph216.preheader:                           ; preds = %vector.memcheck204, %.preheader88, %middle.block227
  %indvars.iv138.ph = phi i64 [ 0, %vector.memcheck204 ], [ 0, %.preheader88 ], [ %n.vec219, %middle.block227 ] ; 3 uses
  br i1 %lcmp.mod259.not, label %scalar.ph216.prol.loopexit, label %scalar.ph216.prol

scalar.ph216.prol:                                ; preds = %scalar.ph216.preheader, %scalar.ph216.prol
  %indvars.iv138.prol = phi i64 [ %indvars.iv.next139.prol, %scalar.ph216.prol ], [ %indvars.iv138.ph, %scalar.ph216.preheader ] ; 3 uses
  %prol.iter260 = phi i64 [ %prol.iter260.next, %scalar.ph216.prol ], [ 0, %scalar.ph216.preheader ]
  %i.dj = load double, ptr %i.cy, align 8, !tbaa !14
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv138.prol
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !14
  %i.dm = fmul double %i.dj, %i.dl
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv138.prol
  store double %i.dm, ptr %i.dn, align 8, !tbaa !14
  %indvars.iv.next139.prol = add nuw nsw i64 %indvars.iv138.prol, 1 ; 2 uses
  %prol.iter260.next = add i64 %prol.iter260, 1   ; 2 uses
  %prol.iter260.cmp.not = icmp eq i64 %prol.iter260.next, %xtraiter258
  br i1 %prol.iter260.cmp.not, label %scalar.ph216.prol.loopexit, label %scalar.ph216.prol, !llvm.loop !85

scalar.ph216.prol.loopexit:                       ; preds = %scalar.ph216.prol, %scalar.ph216.preheader
  %indvars.iv138.unr = phi i64 [ %indvars.iv138.ph, %scalar.ph216.preheader ], [ %indvars.iv.next139.prol, %scalar.ph216.prol ]
  %i.do = sub nsw i64 %indvars.iv138.ph, %i.ck
  %i.dp = icmp ugt i64 %i.do, -4
  br i1 %i.dp, label %._crit_edge107, label %scalar.ph216

.preheader87:                                     ; preds = %._crit_edge107, %.preheader91..preheader89_crit_edge
  %.pre-phi157 = phi i32 [ %.pre, %.preheader91..preheader89_crit_edge ], [ %i.av, %._crit_edge107 ]
  br i1 %i.c, label %.preheader.preheader, label %._crit_edge113.split

.preheader.preheader:                             ; preds = %.preheader87
  %i.dq = sext i32 %7 to i64                      ; 11 uses
  %i.dr = sext i32 %.pre-phi157 to i64            ; 4 uses
  %i.ds = shl nsw i64 %i.dq, 3                    ; 2 uses
  %i.dt = add nsw i64 %i.dq, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.dt, i64 %i.dr)
  %i.du = shl nsw i64 %smax, 3                    ; 2 uses
  %i.dv = sub i64 %i.du, %i.ds
  %scevgep233 = getelementptr i8, ptr %4, i64 %i.dv
  %i.dw = add nsw i64 %i.dq, 1
  %i.dx = tail call i64 @llvm.smax.i64(i64 %i.dw, i64 %i.dr)
  %i.dy = sub i64 %i.dx, %i.dq                    ; 3 uses
  %min.iters.check241 = icmp ult i64 %i.dy, 4
  %n.vec243 = and i64 %i.dy, -4                   ; 3 uses
  %i.dz = add i64 %n.vec243, %i.dq
  %cmp.n252 = icmp eq i64 %i.dy, %n.vec243
  br label %.preheader

scalar.ph216:                                     ; preds = %scalar.ph216.prol.loopexit, %scalar.ph216
  %indvars.iv138 = phi i64 [ %indvars.iv.next139.3, %scalar.ph216 ], [ %indvars.iv138.unr, %scalar.ph216.prol.loopexit ] ; 6 uses
  %i.ea = load double, ptr %i.cy, align 8, !tbaa !14
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv138
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !14
  %i.ed = fmul double %i.ea, %i.ec
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv138
  store double %i.ed, ptr %i.ee, align 8, !tbaa !14
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %i.ef = load double, ptr %i.cy, align 8, !tbaa !14
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next139
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !14
  %i.ei = fmul double %i.ef, %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next139
  store double %i.ei, ptr %i.ej, align 8, !tbaa !14
  %indvars.iv.next139.1 = add nuw nsw i64 %indvars.iv138, 2 ; 2 uses
  %i.ek = load double, ptr %i.cy, align 8, !tbaa !14
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next139.1
  %i.em = load double, ptr %i.el, align 8, !tbaa !14
  %i.en = fmul double %i.ek, %i.em
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next139.1
  store double %i.en, ptr %i.eo, align 8, !tbaa !14
  %indvars.iv.next139.2 = add nuw nsw i64 %indvars.iv138, 3 ; 2 uses
  %i.ep = load double, ptr %i.cy, align 8, !tbaa !14
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next139.2
  %i.er = load double, ptr %i.eq, align 8, !tbaa !14
  %i.es = fmul double %i.ep, %i.er
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next139.2
  store double %i.es, ptr %i.et, align 8, !tbaa !14
  %indvars.iv.next139.3 = add nuw nsw i64 %indvars.iv138, 4 ; 2 uses
  %exitcond142.not.3 = icmp eq i64 %indvars.iv.next139.3, %wide.trip.count141
  br i1 %exitcond142.not.3, label %._crit_edge107, label %scalar.ph216, !llvm.loop !86

._crit_edge107:                                   ; preds = %scalar.ph216.prol.loopexit, %scalar.ph216, %middle.block227
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.eu = icmp samesign ult i64 %indvars.iv.next144, %i.cl
  br i1 %i.eu, label %.preheader88, label %.preheader87, !llvm.loop !87

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge111
  %indvars.iv149 = phi i64 [ %i.dq, %.preheader.preheader ], [ %indvars.iv.next150, %._crit_edge111 ] ; 3 uses
  %i.ev = sub nsw i64 %indvars.iv149, %i.dq
  %i.ew = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ev ; 2 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv149
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !12 ; 4 uses
  br i1 %min.iters.check241, label %scalar.ph240.preheader, label %vector.memcheck230

vector.memcheck230:                               ; preds = %.preheader
  %scevgep231 = getelementptr i8, ptr %i.ey, i64 %i.ds
  %scevgep232 = getelementptr i8, ptr %i.ey, i64 %i.du
  %bound0234 = icmp ult ptr %scevgep231, %scevgep233
  %bound1235 = icmp ult ptr %4, %scevgep232
  %found.conflict236 = and i1 %bound0234, %bound1235
  br i1 %found.conflict236, label %scalar.ph240.preheader, label %vector.ph242

vector.ph242:                                     ; preds = %vector.memcheck230
  %i.ez = load double, ptr %i.ew, align 8, !tbaa !14, !alias.scope !88
  %broadcast.splatinsert248 = insertelement <2 x double> poison, double %i.ez, i64 0
  %broadcast.splat249 = shufflevector <2 x double> %broadcast.splatinsert248, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep263 = getelementptr [8 x i8], ptr %i.ey, i64 %i.dq
  br label %vector.body244

vector.body244:                                   ; preds = %vector.body244, %vector.ph242
  %index245 = phi i64 [ 0, %vector.ph242 ], [ %index.next250, %vector.body244 ] ; 3 uses
  %i.fa = getelementptr inbounds [8 x i8], ptr %4, i64 %index245 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %wide.load246 = load <2 x double>, ptr %i.fa, align 8, !tbaa !14, !alias.scope !91
  %wide.load247 = load <2 x double>, ptr %i.fb, align 8, !tbaa !14, !alias.scope !91
  %i.fc = fmul <2 x double> %broadcast.splat249, %wide.load246
  %i.fd = fmul <2 x double> %broadcast.splat249, %wide.load247
  %gep264 = getelementptr [8 x i8], ptr %invariant.gep263, i64 %index245 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %gep264, i64 16
  store <2 x double> %i.fc, ptr %gep264, align 8, !tbaa !14, !alias.scope !93, !noalias !95
  store <2 x double> %i.fd, ptr %i.fe, align 8, !tbaa !14, !alias.scope !93, !noalias !95
  %index.next250 = add nuw i64 %index245, 4       ; 2 uses
  %i.ff = icmp eq i64 %index.next250, %n.vec243
  br i1 %i.ff, label %middle.block251, label %vector.body244, !llvm.loop !96

middle.block251:                                  ; preds = %vector.body244
  br i1 %cmp.n252, label %._crit_edge111, label %scalar.ph240.preheader

scalar.ph240.preheader:                           ; preds = %vector.memcheck230, %.preheader, %middle.block251
  %indvars.iv146.ph = phi i64 [ %i.dq, %vector.memcheck230 ], [ %i.dq, %.preheader ], [ %i.dz, %middle.block251 ]
  br label %scalar.ph240

scalar.ph240:                                     ; preds = %scalar.ph240.preheader, %scalar.ph240
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %scalar.ph240 ], [ %indvars.iv146.ph, %scalar.ph240.preheader ] ; 3 uses
  %i.fg = load double, ptr %i.ew, align 8, !tbaa !14
  %i.fh = sub nsw i64 %indvars.iv146, %i.dq
  %i.fi = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fh
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !14
  %i.fk = fmul double %i.fg, %i.fj
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %indvars.iv146
  store double %i.fk, ptr %i.fl, align 8, !tbaa !14
  %indvars.iv.next147 = add nsw i64 %indvars.iv146, 1 ; 2 uses
  %i.fm = icmp slt i64 %indvars.iv.next147, %i.dr
  br i1 %i.fm, label %scalar.ph240, label %._crit_edge111, !llvm.loop !97

._crit_edge111:                                   ; preds = %scalar.ph240, %middle.block251
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, 1 ; 2 uses
  %i.fn = icmp slt i64 %indvars.iv.next150, %i.dr
  br i1 %i.fn, label %.preheader, label %._crit_edge113.split, !llvm.loop !98

._crit_edge113.split:                             ; preds = %._crit_edge111, %.preheader90.lr.ph, %.preheader87
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @strnbcat(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = tail call ptr @strncpy(ptr noundef nonnull @strnbcat.b, ptr noundef %0, i64 noundef %i.a) #19 ; 0 uses
end_hunk_0
