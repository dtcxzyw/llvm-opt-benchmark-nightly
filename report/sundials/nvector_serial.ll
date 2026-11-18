Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/nvector_serial?download=true
inline.NumInlined: 27
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 82
begin_hunk_0_@N_VLinearCombination_Serial:bb.a

scalar.ph352.prol:                                ; preds = %scalar.ph352.preheader
  %i.fv = load double, ptr %i.fl, align 8, !tbaa !67
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %.0105.ph
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !67
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.0105.ph ; 2 uses
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !67
  %i.ga = tail call double @llvm.fmuladd.f64(double %i.fv, double %i.fx, double %i.fz)
  store double %i.ga, ptr %i.fy, align 8, !tbaa !67
  %i.gb = or disjoint i64 %.0105.ph, 1
  br label %scalar.ph352.prol.loopexit

scalar.ph352.prol.loopexit:                       ; preds = %scalar.ph352.prol, %scalar.ph352.preheader
  %.0105.unr = phi i64 [ %.0105.ph, %scalar.ph352.preheader ], [ %i.gb, %scalar.ph352.prol ]
  %i.gc = icmp eq i64 %i.ef, %.neg413
  br i1 %i.gc, label %._crit_edge108, label %scalar.ph352

scalar.ph352:                                     ; preds = %scalar.ph352.prol.loopexit, %scalar.ph352
  %.0105 = phi i64 [ %i.gq, %scalar.ph352 ], [ %.0105.unr, %scalar.ph352.prol.loopexit ] ; 4 uses
  %i.gd = load double, ptr %i.fl, align 8, !tbaa !67
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %.0105
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !67
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.0105 ; 2 uses
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !67
  %i.gi = tail call double @llvm.fmuladd.f64(double %i.gd, double %i.gf, double %i.gh)
  store double %i.gi, ptr %i.gg, align 8, !tbaa !67
  %i.gj = add nuw nsw i64 %.0105, 1               ; 2 uses
  %i.gk = load double, ptr %i.fl, align 8, !tbaa !67
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.gj
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !67
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.gj ; 2 uses
  %i.go = load double, ptr %i.gn, align 8, !tbaa !67
  %i.gp = tail call double @llvm.fmuladd.f64(double %i.gk, double %i.gm, double %i.go)
  store double %i.gp, ptr %i.gn, align 8, !tbaa !67
  %i.gq = add nuw nsw i64 %.0105, 2               ; 2 uses
  %exitcond129.not.1 = icmp eq i64 %i.gq, %i.ef
  br i1 %exitcond129.not.1, label %._crit_edge108, label %scalar.ph352, !llvm.loop !214

._crit_edge108:                                   ; preds = %scalar.ph352.prol.loopexit, %scalar.ph352, %middle.block373
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count133
  br i1 %exitcond134.not, label %N_VScale_Serial.exit, label %.lr.ph107

.preheader83:                                     ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98, %middle.block295
  %i.gr = icmp sgt i32 %0, 1
  br i1 %i.gr, label %.lr.ph101.preheader, label %N_VScale_Serial.exit

.lr.ph101.preheader:                              ; preds = %.preheader83
  %wide.trip.count127 = zext nneg i32 %0 to i64   ; 2 uses
  %i.gs = shl i64 %i.ef, 3                        ; 2 uses
  %i.gt = shl nuw nsw i64 %wide.trip.count127, 3
  %scevgep310 = getelementptr i8, ptr %1, i64 %i.gt
  %scevgep311 = getelementptr i8, ptr %1, i64 8
  %scevgep312 = getelementptr i8, ptr %i.eh, i64 %i.gs ; 2 uses
  %min.iters.check314 = icmp ult i64 %i.ef, 4
  %bound0316 = icmp ult ptr %i.eh, %scevgep310
  %bound1317 = icmp ult ptr %scevgep311, %scevgep312
  %found.conflict318 = and i1 %bound0316, %bound1317
  %n.vec324 = and i64 %i.ef, 9223372036854775804  ; 3 uses
  %cmp.n335 = icmp eq i64 %i.ef, %n.vec324
  %xtraiter406 = and i64 %i.ef, 1
  %lcmp.mod407.not = icmp eq i64 %xtraiter406, 0
  br label %.lr.ph101

.lr.ph98:                                         ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98
  %.197 = phi i64 [ %i.hn, %.lr.ph98 ], [ %.197.unr, %.lr.ph98.prol.loopexit ] ; 5 uses
  %i.gu = load double, ptr %1, align 8, !tbaa !67
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.197 ; 2 uses
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !67
  %i.gx = fmul double %i.gu, %i.gw
  store double %i.gx, ptr %i.gv, align 8, !tbaa !67
  %i.gy = load double, ptr %1, align 8, !tbaa !67
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.197
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 2 uses
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !67
  %i.hc = fmul double %i.gy, %i.hb
  store double %i.hc, ptr %i.ha, align 8, !tbaa !67
  %i.hd = load double, ptr %1, align 8, !tbaa !67
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.197
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16 ; 2 uses
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !67
  %i.hh = fmul double %i.hd, %i.hg
  store double %i.hh, ptr %i.hf, align 8, !tbaa !67
  %i.hi = load double, ptr %1, align 8, !tbaa !67
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.197
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24 ; 2 uses
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !67
  %i.hm = fmul double %i.hi, %i.hl
  store double %i.hm, ptr %i.hk, align 8, !tbaa !67
  %i.hn = add nuw nsw i64 %.197, 4                ; 2 uses
  %exitcond122.not.3 = icmp eq i64 %i.hn, %i.ef
  br i1 %exitcond122.not.3, label %.preheader83, label %.lr.ph98, !llvm.loop !215

.lr.ph101:                                        ; preds = %.lr.ph101.preheader, %._crit_edge102
  %indvars.iv124 = phi i64 [ 1, %.lr.ph101.preheader ], [ %indvars.iv.next125, %._crit_edge102 ] ; 3 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv124
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !72
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !57
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !63 ; 6 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv124 ; 4 uses
  br i1 %min.iters.check314, label %scalar.ph313.preheader, label %vector.memcheck315

vector.memcheck315:                               ; preds = %.lr.ph101
  %i.hu = getelementptr i8, ptr %i.hs, i64 %i.gs
  %bound0319 = icmp ult ptr %i.eh, %i.hu
  %bound1320 = icmp ult ptr %i.hs, %scevgep312
  %found.conflict321 = and i1 %bound0319, %bound1320
  %conflict.rdx322 = or i1 %found.conflict318, %found.conflict321
  br i1 %conflict.rdx322, label %scalar.ph313.preheader, label %vector.ph323

vector.ph323:                                     ; preds = %vector.memcheck315
  %i.hv = load double, ptr %i.ht, align 8, !tbaa !67, !alias.scope !241
  %broadcast.splatinsert331 = insertelement <2 x double> poison, double %i.hv, i64 0
  %broadcast.splat332 = shufflevector <2 x double> %broadcast.splatinsert331, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body325

vector.body325:                                   ; preds = %vector.body325, %vector.ph323
  %index326 = phi i64 [ 0, %vector.ph323 ], [ %index.next333, %vector.body325 ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %index326 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %wide.load327 = load <2 x double>, ptr %i.hw, align 8, !tbaa !67, !alias.scope !242
  %wide.load328 = load <2 x double>, ptr %i.hx, align 8, !tbaa !67, !alias.scope !242
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %index326 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16 ; 2 uses
  %wide.load329 = load <2 x double>, ptr %i.hy, align 8, !tbaa !67, !alias.scope !243, !noalias !244
  %wide.load330 = load <2 x double>, ptr %i.hz, align 8, !tbaa !67, !alias.scope !243, !noalias !244
  %i.ia = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat332, <2 x double> %wide.load327, <2 x double> %wide.load329)
  %i.ib = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat332, <2 x double> %wide.load328, <2 x double> %wide.load330)
  store <2 x double> %i.ia, ptr %i.hy, align 8, !tbaa !67, !alias.scope !243, !noalias !244
  store <2 x double> %i.ib, ptr %i.hz, align 8, !tbaa !67, !alias.scope !243, !noalias !244
  %index.next333 = add nuw i64 %index326, 4       ; 2 uses
  %i.ic = icmp eq i64 %index.next333, %n.vec324
  br i1 %i.ic, label %middle.block334, label %vector.body325, !llvm.loop !220

middle.block334:                                  ; preds = %vector.body325
  br i1 %cmp.n335, label %._crit_edge102, label %scalar.ph313.preheader

scalar.ph313.preheader:                           ; preds = %vector.memcheck315, %.lr.ph101, %middle.block334
  %.299.ph = phi i64 [ 0, %vector.memcheck315 ], [ 0, %.lr.ph101 ], [ %n.vec324, %middle.block334 ] ; 5 uses
  %.neg412 = or disjoint i64 %.299.ph, 1
  br i1 %lcmp.mod407.not, label %scalar.ph313.prol.loopexit, label %scalar.ph313.prol

scalar.ph313.prol:                                ; preds = %scalar.ph313.preheader
  %i.id = load double, ptr %i.ht, align 8, !tbaa !67
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %.299.ph
  %i.if = load double, ptr %i.ie, align 8, !tbaa !67
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.299.ph ; 2 uses
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !67
  %i.ii = tail call double @llvm.fmuladd.f64(double %i.id, double %i.if, double %i.ih)
  store double %i.ii, ptr %i.ig, align 8, !tbaa !67
  %i.ij = or disjoint i64 %.299.ph, 1
  br label %scalar.ph313.prol.loopexit

scalar.ph313.prol.loopexit:                       ; preds = %scalar.ph313.prol, %scalar.ph313.preheader
  %.299.unr = phi i64 [ %.299.ph, %scalar.ph313.preheader ], [ %i.ij, %scalar.ph313.prol ]
  %i.ik = icmp eq i64 %i.ef, %.neg412
  br i1 %i.ik, label %._crit_edge102, label %scalar.ph313

scalar.ph313:                                     ; preds = %scalar.ph313.prol.loopexit, %scalar.ph313
  %.299 = phi i64 [ %i.iy, %scalar.ph313 ], [ %.299.unr, %scalar.ph313.prol.loopexit ] ; 4 uses
  %i.il = load double, ptr %i.ht, align 8, !tbaa !67
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %.299
  %i.in = load double, ptr %i.im, align 8, !tbaa !67
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.299 ; 2 uses
  %i.ip = load double, ptr %i.io, align 8, !tbaa !67
  %i.iq = tail call double @llvm.fmuladd.f64(double %i.il, double %i.in, double %i.ip)
  store double %i.iq, ptr %i.io, align 8, !tbaa !67
  %i.ir = add nuw nsw i64 %.299, 1                ; 2 uses
  %i.is = load double, ptr %i.ht, align 8, !tbaa !67
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.ir
  %i.iu = load double, ptr %i.it, align 8, !tbaa !67
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ir ; 2 uses
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !67
  %i.ix = tail call double @llvm.fmuladd.f64(double %i.is, double %i.iu, double %i.iw)
  store double %i.ix, ptr %i.iv, align 8, !tbaa !67
  %i.iy = add nuw nsw i64 %.299, 2                ; 2 uses
  %exitcond123.not.1 = icmp eq i64 %i.iy, %i.ef
  br i1 %exitcond123.not.1, label %._crit_edge102, label %scalar.ph313, !llvm.loop !221

._crit_edge102:                                   ; preds = %scalar.ph313.prol.loopexit, %scalar.ph313, %middle.block334
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %N_VScale_Serial.exit, label %.lr.ph101

bb.l:                                             ; preds = %bb.j
  %i.iz = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !63 ; 8 uses
  %i.jc = icmp sgt i64 %i.ef, 0
  br i1 %i.jc, label %.lr.ph.preheader, label %N_VScale_Serial.exit

.lr.ph.preheader:                                 ; preds = %bb.l
  %min.iters.check220 = icmp ult i64 %i.ef, 12
  br i1 %min.iters.check220, label %.lr.ph.preheader382, label %vector.memcheck221

vector.memcheck221:                               ; preds = %.lr.ph.preheader
  %i.jd = shl i64 %i.ef, 3                        ; 2 uses
  %i.je = getelementptr i8, ptr %i.eh, i64 %i.jd  ; 2 uses
  %i.jf = getelementptr i8, ptr %1, i64 8
  %4 = getelementptr i8, ptr %i.jb, i64 %i.jd
  %bound0.a = icmp ult ptr %i.eh, %i.jf
  %bound1 = icmp ult ptr %1, %i.je
  %found.conflict = and i1 %bound0.a, %bound1
  %bound0222 = icmp ult ptr %i.eh, %4
  %bound1223 = icmp ult ptr %i.jb, %i.je
  %found.conflict224 = and i1 %bound0222, %bound1223
  %conflict.rdx = or i1 %found.conflict, %found.conflict224
  br i1 %conflict.rdx, label %.lr.ph.preheader382, label %vector.ph225

vector.ph225:                                     ; preds = %vector.memcheck221
  %n.vec226 = and i64 %i.ef, 9223372036854775804  ; 3 uses
  %i.jg = load double, ptr %1, align 8, !tbaa !67, !alias.scope !245
  %broadcast.splatinsert231 = insertelement <2 x double> poison, double %i.jg, i64 0
  %broadcast.splat232 = shufflevector <2 x double> %broadcast.splatinsert231, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph225
  %index228 = phi i64 [ 0, %vector.ph225 ], [ %index.next233, %vector.body227 ] ; 3 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %index228 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %wide.load229 = load <2 x double>, ptr %i.jh, align 8, !tbaa !67, !alias.scope !246
  %wide.load230 = load <2 x double>, ptr %i.ji, align 8, !tbaa !67, !alias.scope !246
  %i.jj = fmul <2 x double> %broadcast.splat232, %wide.load229
  %i.jk = fmul <2 x double> %broadcast.splat232, %wide.load230
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %index228 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  store <2 x double> %i.jj, ptr %i.jl, align 8, !tbaa !67, !alias.scope !247, !noalias !248
  store <2 x double> %i.jk, ptr %i.jm, align 8, !tbaa !67, !alias.scope !247, !noalias !248
  %index.next233 = add nuw i64 %index228, 4       ; 2 uses
  %i.jn = icmp eq i64 %index.next233, %n.vec226
  br i1 %i.jn, label %middle.block234, label %vector.body227, !llvm.loop !226

middle.block234:                                  ; preds = %vector.body227
  %cmp.n235 = icmp eq i64 %i.ef, %n.vec226
  br i1 %cmp.n235, label %.preheader86, label %.lr.ph.preheader382

.lr.ph.preheader382:                              ; preds = %vector.memcheck221, %.lr.ph.preheader, %middle.block234
  %.392.ph = phi i64 [ 0, %vector.memcheck221 ], [ 0, %.lr.ph.preheader ], [ %n.vec226, %middle.block234 ] ; 3 uses
  %xtraiter397 = and i64 %i.ef, 3                 ; 2 uses
  %lcmp.mod398.not = icmp eq i64 %xtraiter397, 0
  br i1 %lcmp.mod398.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader382, %.lr.ph.prol
  %.392.prol = phi i64 [ %i.jt, %.lr.ph.prol ], [ %.392.ph, %.lr.ph.preheader382 ] ; 3 uses
  %prol.iter399 = phi i64 [ %prol.iter399.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader382 ]
  %i.jo = load double, ptr %1, align 8, !tbaa !67
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %.392.prol
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !67
  %i.jr = fmul double %i.jo, %i.jq
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.392.prol
  store double %i.jr, ptr %i.js, align 8, !tbaa !67
  %i.jt = add nuw nsw i64 %.392.prol, 1           ; 2 uses
  %prol.iter399.next = add i64 %prol.iter399, 1   ; 2 uses
  %prol.iter399.cmp.not = icmp eq i64 %prol.iter399.next, %xtraiter397
  br i1 %prol.iter399.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !227

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader382
  %.392.unr = phi i64 [ %.392.ph, %.lr.ph.preheader382 ], [ %i.jt, %.lr.ph.prol ]
  %i.ju = sub nsw i64 %.392.ph, %i.ef
  %i.jv = icmp ugt i64 %i.ju, -4
  br i1 %i.jv, label %.preheader86, label %.lr.ph

.preheader86:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block234
  %i.jw = icmp sgt i32 %0, 1
  br i1 %i.jw, label %.lr.ph94.preheader, label %N_VScale_Serial.exit

.lr.ph94.preheader:                               ; preds = %.preheader86
  %wide.trip.count = zext nneg i32 %0 to i64      ; 2 uses
  %i.jx = shl i64 %i.ef, 3                        ; 2 uses
  %i.jy = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.jy
  %scevgep248 = getelementptr i8, ptr %1, i64 8
  %scevgep249 = getelementptr i8, ptr %i.eh, i64 %i.jx ; 2 uses
  %min.iters.check251 = icmp ult i64 %i.ef, 4
  %bound0253 = icmp ult ptr %i.eh, %scevgep
  %bound1254 = icmp ult ptr %scevgep248, %scevgep249
  %found.conflict255 = and i1 %bound0253, %bound1254
  %n.vec261 = and i64 %i.ef, 9223372036854775804  ; 3 uses
  %cmp.n272 = icmp eq i64 %i.ef, %n.vec261
  %xtraiter400 = and i64 %i.ef, 1
  %lcmp.mod401.not = icmp eq i64 %xtraiter400, 0
  br label %.lr.ph94

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.392 = phi i64 [ %i.kw, %.lr.ph ], [ %.392.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.jz = load double, ptr %1, align 8, !tbaa !67
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %.392
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !67
  %i.kc = fmul double %i.jz, %i.kb
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.392
  store double %i.kc, ptr %i.kd, align 8, !tbaa !67
  %i.ke = add nuw nsw i64 %.392, 1                ; 2 uses
  %i.kf = load double, ptr %1, align 8, !tbaa !67
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.ke
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !67
  %i.ki = fmul double %i.kf, %i.kh
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ke
  store double %i.ki, ptr %i.kj, align 8, !tbaa !67
  %i.kk = add nuw nsw i64 %.392, 2                ; 2 uses
  %i.kl = load double, ptr %1, align 8, !tbaa !67
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.kk
  %i.kn = load double, ptr %i.km, align 8, !tbaa !67
  %i.ko = fmul double %i.kl, %i.kn
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.kk
  store double %i.ko, ptr %i.kp, align 8, !tbaa !67
  %i.kq = add nuw nsw i64 %.392, 3                ; 2 uses
  %i.kr = load double, ptr %1, align 8, !tbaa !67
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.kq
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !67
  %i.ku = fmul double %i.kr, %i.kt
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.kq
  store double %i.ku, ptr %i.kv, align 8, !tbaa !67
  %i.kw = add nuw nsw i64 %.392, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.kw, %i.ef
  br i1 %exitcond.not.3, label %.preheader86, label %.lr.ph, !llvm.loop !228

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 1, %.lr.ph94.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !72
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !57
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !63 ; 6 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  br i1 %min.iters.check251, label %scalar.ph250.preheader, label %vector.memcheck252

vector.memcheck252:                               ; preds = %.lr.ph94
  %i.ld = getelementptr i8, ptr %i.lb, i64 %i.jx
  %bound0256 = icmp ult ptr %i.eh, %i.ld
  %bound1257 = icmp ult ptr %i.lb, %scevgep249
  %found.conflict258 = and i1 %bound0256, %bound1257
  %conflict.rdx259 = or i1 %found.conflict255, %found.conflict258
  br i1 %conflict.rdx259, label %scalar.ph250.preheader, label %vector.ph260

vector.ph260:                                     ; preds = %vector.memcheck252
  %i.le = load double, ptr %i.lc, align 8, !tbaa !67, !alias.scope !249
  %broadcast.splatinsert268 = insertelement <2 x double> poison, double %i.le, i64 0
  %broadcast.splat269 = shufflevector <2 x double> %broadcast.splatinsert268, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body262

vector.body262:                                   ; preds = %vector.body262, %vector.ph260
  %index263 = phi i64 [ 0, %vector.ph260 ], [ %index.next270, %vector.body262 ] ; 3 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %index263 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %wide.load264 = load <2 x double>, ptr %i.lf, align 8, !tbaa !67, !alias.scope !250
  %wide.load265 = load <2 x double>, ptr %i.lg, align 8, !tbaa !67, !alias.scope !250
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %index263 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16 ; 2 uses
  %wide.load266 = load <2 x double>, ptr %i.lh, align 8, !tbaa !67, !alias.scope !251, !noalias !252
  %wide.load267 = load <2 x double>, ptr %i.li, align 8, !tbaa !67, !alias.scope !251, !noalias !252
  %i.lj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat269, <2 x double> %wide.load264, <2 x double> %wide.load266)
  %i.lk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat269, <2 x double> %wide.load265, <2 x double> %wide.load267)
  store <2 x double> %i.lj, ptr %i.lh, align 8, !tbaa !67, !alias.scope !251, !noalias !252
  store <2 x double> %i.lk, ptr %i.li, align 8, !tbaa !67, !alias.scope !251, !noalias !252
  %index.next270 = add nuw i64 %index263, 4       ; 2 uses
  %i.ll = icmp eq i64 %index.next270, %n.vec261
  br i1 %i.ll, label %middle.block271, label %vector.body262, !llvm.loop !233

middle.block271:                                  ; preds = %vector.body262
  br i1 %cmp.n272, label %._crit_edge, label %scalar.ph250.preheader

scalar.ph250.preheader:                           ; preds = %vector.memcheck252, %.lr.ph94, %middle.block271
  %.493.ph = phi i64 [ 0, %vector.memcheck252 ], [ 0, %.lr.ph94 ], [ %n.vec261, %middle.block271 ] ; 5 uses
  %.neg = or disjoint i64 %.493.ph, 1
  br i1 %lcmp.mod401.not, label %scalar.ph250.prol.loopexit, label %scalar.ph250.prol

scalar.ph250.prol:                                ; preds = %scalar.ph250.preheader
  %i.lm = load double, ptr %i.lc, align 8, !tbaa !67
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %.493.ph
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !67
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.493.ph ; 2 uses
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !67
  %i.lr = tail call double @llvm.fmuladd.f64(double %i.lm, double %i.lo, double %i.lq)
  store double %i.lr, ptr %i.lp, align 8, !tbaa !67
  %i.ls = or disjoint i64 %.493.ph, 1
  br label %scalar.ph250.prol.loopexit

scalar.ph250.prol.loopexit:                       ; preds = %scalar.ph250.prol, %scalar.ph250.preheader
  %.493.unr = phi i64 [ %.493.ph, %scalar.ph250.preheader ], [ %i.ls, %scalar.ph250.prol ]
  %i.lt = icmp eq i64 %i.ef, %.neg
  br i1 %i.lt, label %._crit_edge, label %scalar.ph250

scalar.ph250:                                     ; preds = %scalar.ph250.prol.loopexit, %scalar.ph250
  %.493 = phi i64 [ %i.mh, %scalar.ph250 ], [ %.493.unr, %scalar.ph250.prol.loopexit ] ; 4 uses
  %i.lu = load double, ptr %i.lc, align 8, !tbaa !67
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %.493
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !67
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.493 ; 2 uses
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !67
  %i.lz = tail call double @llvm.fmuladd.f64(double %i.lu, double %i.lw, double %i.ly)
  store double %i.lz, ptr %i.lx, align 8, !tbaa !67
  %i.ma = add nuw nsw i64 %.493, 1                ; 2 uses
  %i.mb = load double, ptr %i.lc, align 8, !tbaa !67
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.ma
  %i.md = load double, ptr %i.mc, align 8, !tbaa !67
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ma ; 2 uses
  %i.mf = load double, ptr %i.me, align 8, !tbaa !67
  %i.mg = tail call double @llvm.fmuladd.f64(double %i.mb, double %i.md, double %i.mf)
  store double %i.mg, ptr %i.me, align 8, !tbaa !67
  %i.mh = add nuw nsw i64 %.493, 2                ; 2 uses
  %exitcond119.not.1 = icmp eq i64 %i.mh, %i.ef
  br i1 %exitcond119.not.1, label %._crit_edge, label %scalar.ph250, !llvm.loop !234

._crit_edge:                                      ; preds = %scalar.ph250.prol.loopexit, %scalar.ph250, %middle.block271
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond121.not, label %N_VScale_Serial.exit, label %.lr.ph94

N_VScale_Serial.exit:                             ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph.i33.i.prol.loopexit, %.lr.ph.i33.i, %.lr.ph.i30.i.prol.loopexit, %.lr.ph.i30.i, %.lr.ph.i.i, %._crit_edge, %._crit_edge102, %._crit_edge108, %middle.block, %middle.block176, %middle.block196, %middle.block210, %bb.l, %.preheader85, %.preheader86, %.preheader83, %.preheader, %bb.h, %bb.g, %bb.e, %bb.c, %bb.i
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @N_VScaleAddMulti_Serial(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef readonly captures(address) %4) #7 {
bb.a:
  %i.a = icmp eq i32 %0, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load double, ptr %1, align 8, !tbaa !67
  %i.c = load ptr, ptr %3, align 8, !tbaa !72
  %i.d = load ptr, ptr %4, align 8, !tbaa !72
  tail call void @N_VLinearSum_Serial(double noundef %i.b, ptr noundef %2, double noundef 1.000000e+00, ptr noundef %i.c, ptr noundef %i.d)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !57     ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !61   ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63   ; 12 uses
  %i.i = icmp eq ptr %3, %4
  %i.j = icmp sgt i32 %0, 0
  %i.k = icmp sgt i64 %i.f, 0
  %or.cond60 = select i1 %i.j, i1 %i.k, i1 false  ; 2 uses
  br i1 %i.i, label %.preheader, label %.preheader49

.preheader49:                                     ; preds = %bb.c
  br i1 %or.cond60, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader49
  %wide.trip.count = zext nneg i32 %0 to i64      ; 2 uses
  %i.l = shl i64 %i.f, 3                          ; 3 uses
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.l
  %i.m = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep86 = getelementptr i8, ptr %1, i64 %i.m
  %min.iters.check = icmp ult i64 %i.f, 6
  %n.vec = and i64 %i.f, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.f, %n.vec
  %xtraiter = and i64 %i.f, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph

.preheader:                                       ; preds = %bb.c
  br i1 %or.cond60, label %.lr.ph56.preheader, label %.loopexit

.lr.ph56.preheader:                               ; preds = %.preheader
  %wide.trip.count68 = zext nneg i32 %0 to i64    ; 2 uses
  %i.n = shl i64 %i.f, 3                          ; 2 uses
  %scevgep108 = getelementptr i8, ptr %i.h, i64 %i.n
  %i.o = shl nuw nsw i64 %wide.trip.count68, 3
  %scevgep109 = getelementptr i8, ptr %1, i64 %i.o
  %min.iters.check111 = icmp ult i64 %i.f, 4
  %n.vec121 = and i64 %i.f, 9223372036854775804   ; 3 uses
  %cmp.n132 = icmp eq i64 %i.f, %n.vec121
  %xtraiter135 = and i64 %i.f, 1
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0
  br label %.lr.ph56

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %._crit_edge57
  %indvars.iv65 = phi i64 [ 0, %.lr.ph56.preheader ], [ %indvars.iv.next66, %._crit_edge57 ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv65
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !57
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63   ; 7 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv65 ; 4 uses
  br i1 %min.iters.check111, label %scalar.ph110.preheader, label %vector.memcheck112

vector.memcheck112:                               ; preds = %.lr.ph56
  %i.v = getelementptr i8, ptr %i.t, i64 %i.n     ; 2 uses
  %bound0113 = icmp ult ptr %i.t, %scevgep109
  %bound1114 = icmp ult ptr %1, %i.v
  %found.conflict115 = and i1 %bound0113, %bound1114
  %bound0116 = icmp ult ptr %i.t, %scevgep108
  %bound1117 = icmp ult ptr %i.h, %i.v
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %found.conflict115, %found.conflict118
  br i1 %conflict.rdx119, label %scalar.ph110.preheader, label %vector.ph120

vector.ph120:                                     ; preds = %vector.memcheck112
  %i.w = load double, ptr %i.u, align 8, !tbaa !67, !alias.scope !266
  %broadcast.splatinsert128 = insertelement <2 x double> poison, double %i.w, i64 0
  %broadcast.splat129 = shufflevector <2 x double> %broadcast.splatinsert128, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph120
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next130, %vector.body122 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index123 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load124 = load <2 x double>, ptr %i.x, align 8, !tbaa !67, !alias.scope !267
  %wide.load125 = load <2 x double>, ptr %i.y, align 8, !tbaa !67, !alias.scope !267
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index123 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %wide.load126 = load <2 x double>, ptr %i.z, align 8, !tbaa !67, !alias.scope !268, !noalias !269
  %wide.load127 = load <2 x double>, ptr %i.aa, align 8, !tbaa !67, !alias.scope !268, !noalias !269
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat129, <2 x double> %wide.load124, <2 x double> %wide.load126)
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat129, <2 x double> %wide.load125, <2 x double> %wide.load127)
  store <2 x double> %i.ab, ptr %i.z, align 8, !tbaa !67, !alias.scope !268, !noalias !269
  store <2 x double> %i.ac, ptr %i.aa, align 8, !tbaa !67, !alias.scope !268, !noalias !269
  %index.next130 = add nuw i64 %index123, 4       ; 2 uses
  %i.ad = icmp eq i64 %index.next130, %n.vec121
  br i1 %i.ad, label %middle.block131, label %vector.body122, !llvm.loop !257

middle.block131:                                  ; preds = %vector.body122
  br i1 %cmp.n132, label %._crit_edge57, label %scalar.ph110.preheader

scalar.ph110.preheader:                           ; preds = %vector.memcheck112, %.lr.ph56, %middle.block131
  %.054.ph = phi i64 [ 0, %vector.memcheck112 ], [ 0, %.lr.ph56 ], [ %n.vec121, %middle.block131 ] ; 5 uses
  %.neg137 = or disjoint i64 %.054.ph, 1
  br i1 %lcmp.mod136.not, label %scalar.ph110.prol.loopexit, label %scalar.ph110.prol

scalar.ph110.prol:                                ; preds = %scalar.ph110.preheader
  %i.ae = load double, ptr %i.u, align 8, !tbaa !67
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.054.ph
  %i.ag = load double, ptr %i.af, align 8, !tbaa !67
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.054.ph ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !67
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ag, double %i.ai)
  store double %i.aj, ptr %i.ah, align 8, !tbaa !67
  %i.ak = or disjoint i64 %.054.ph, 1
  br label %scalar.ph110.prol.loopexit

scalar.ph110.prol.loopexit:                       ; preds = %scalar.ph110.prol, %scalar.ph110.preheader
  %.054.unr = phi i64 [ %.054.ph, %scalar.ph110.preheader ], [ %i.ak, %scalar.ph110.prol ]
  %i.al = icmp eq i64 %i.f, %.neg137
  br i1 %i.al, label %._crit_edge57, label %scalar.ph110

scalar.ph110:                                     ; preds = %scalar.ph110.prol.loopexit, %scalar.ph110
  %.054 = phi i64 [ %i.az, %scalar.ph110 ], [ %.054.unr, %scalar.ph110.prol.loopexit ] ; 4 uses
  %i.am = load double, ptr %i.u, align 8, !tbaa !67
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.054
  %i.ao = load double, ptr %i.an, align 8, !tbaa !67
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.054 ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !67
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.am, double %i.ao, double %i.aq)
  store double %i.ar, ptr %i.ap, align 8, !tbaa !67
  %i.as = add nuw nsw i64 %.054, 1                ; 2 uses
  %i.at = load double, ptr %i.u, align 8, !tbaa !67
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.as
  %i.av = load double, ptr %i.au, align 8, !tbaa !67
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.as ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !67
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.at, double %i.av, double %i.ax)
  store double %i.ay, ptr %i.aw, align 8, !tbaa !67
  %i.az = add nuw nsw i64 %.054, 2                ; 2 uses
  %exitcond64.not.1 = icmp eq i64 %i.az, %i.f
  br i1 %exitcond64.not.1, label %._crit_edge57, label %scalar.ph110, !llvm.loop !258

._crit_edge57:                                    ; preds = %scalar.ph110.prol.loopexit, %scalar.ph110, %middle.block131
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  br i1 %exitcond69.not, label %.loopexit, label %.lr.ph56

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !72
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !57
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !63 ; 6 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !57
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !63 ; 8 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.bl = getelementptr i8, ptr %i.bj, i64 %i.l   ; 3 uses
  %5 = getelementptr i8, ptr %i.be, i64 %i.l
  %bound0 = icmp ult ptr %i.bj, %scevgep86
  %bound1 = icmp ult ptr %1, %i.bl
  %found.conflict = and i1 %bound0, %bound1
  %bound087 = icmp ult ptr %i.bj, %scevgep
  %bound188 = icmp ult ptr %i.h, %i.bl
  %found.conflict89 = and i1 %bound087, %bound188
  %conflict.rdx = or i1 %found.conflict, %found.conflict89
  %bound090 = icmp ult ptr %i.bj, %5
  %bound191 = icmp ult ptr %i.be, %i.bl
  %found.conflict92 = and i1 %bound090, %bound191
  %conflict.rdx93 = or i1 %conflict.rdx, %found.conflict92
  br i1 %conflict.rdx93, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bm = load double, ptr %i.bk, align 8, !tbaa !67, !alias.scope !270
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bm, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load = load <2 x double>, ptr %i.bn, align 8, !tbaa !67, !alias.scope !271
  %wide.load94 = load <2 x double>, ptr %i.bo, align 8, !tbaa !67, !alias.scope !271
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load95 = load <2 x double>, ptr %i.bp, align 8, !tbaa !67, !alias.scope !272
  %wide.load96 = load <2 x double>, ptr %i.bq, align 8, !tbaa !67, !alias.scope !272
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load95)
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load94, <2 x double> %wide.load96)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <2 x double> %i.br, ptr %i.bt, align 8, !tbaa !67, !alias.scope !273, !noalias !274
  store <2 x double> %i.bs, ptr %i.bu, align 8, !tbaa !67, !alias.scope !273, !noalias !274
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !264

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.151.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.151.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bw = load double, ptr %i.bk, align 8, !tbaa !67
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.151.ph
  %i.by = load double, ptr %i.bx, align 8, !tbaa !67
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.151.ph
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !67
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.by, double %i.ca)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.151.ph
  store double %i.cb, ptr %i.cc, align 8, !tbaa !67
  %i.cd = or disjoint i64 %.151.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.151.unr = phi i64 [ %.151.ph, %scalar.ph.preheader ], [ %i.cd, %scalar.ph.prol ]
  %i.ce = icmp eq i64 %i.f, %.neg
  br i1 %i.ce, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.151 = phi i64 [ %i.cu, %scalar.ph ], [ %.151.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.cf = load double, ptr %i.bk, align 8, !tbaa !67
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.151
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !67
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.151
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !67
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.ch, double %i.cj)
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.151
  store double %i.ck, ptr %i.cl, align 8, !tbaa !67
  %i.cm = add nuw nsw i64 %.151, 1                ; 3 uses
  %i.cn = load double, ptr %i.bk, align 8, !tbaa !67
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cm
  %i.cp = load double, ptr %i.co, align 8, !tbaa !67
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.cm
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !67
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.cp, double %i.cr)
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cm
  store double %i.cs, ptr %i.ct, align 8, !tbaa !67
  %i.cu = add nuw nsw i64 %.151, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cu, %i.f
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !265

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond63.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge57, %.preheader49, %.preheader, %bb.b
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @N_VLinearSumVectorArray_Serial(i32 noundef %0, double noundef %1, ptr nofree noundef readonly captures(address) %2, double noundef %3, ptr nofree noundef readonly captures(address) %4, ptr nofree noundef readonly captures(address) %5) #7 {
bb.a:
  %i.a = icmp eq i32 %0, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !72
  %i.c = load ptr, ptr %4, align 8, !tbaa !72
  %i.d = load ptr, ptr %5, align 8, !tbaa !72
  tail call void @N_VLinearSum_Serial(double noundef %1, ptr noundef %i.b, double noundef %3, ptr noundef %i.c, ptr noundef %i.d)
  br label %VSumVectorArray_Serial.exit

bb.c:                                             ; preds = %bb.a
  %i.e = fcmp oeq double %3, 1.000000e+00         ; 4 uses
  %i.f = icmp eq ptr %5, %4
  %or.cond122 = and i1 %i.e, %i.f
  br i1 %or.cond122, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @VaxpyVectorArray_Serial(i32 noundef %0, double noundef %1, ptr noundef %2, ptr noundef %4)
  br label %VSumVectorArray_Serial.exit

bb.e:                                             ; preds = %bb.c
  %i.g = fcmp oeq double %1, 1.000000e+00         ; 7 uses
  %i.h = icmp eq ptr %5, %2
  %or.cond123 = and i1 %i.g, %i.h
  br i1 %or.cond123, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @VaxpyVectorArray_Serial(i32 noundef %0, double noundef %3, ptr noundef %4, ptr noundef %2)
  br label %VSumVectorArray_Serial.exit

bb.g:                                             ; preds = %bb.e
  %or.cond = and i1 %i.g, %i.e
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.i = load ptr, ptr %2, align 8, !tbaa !72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57
  %i.k = load i64, ptr %i.j, align 8, !tbaa !61   ; 7 uses
  %i.l = icmp sgt i32 %0, 0
  %i.m = icmp sgt i64 %i.k, 0
  %or.cond.i = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %VSumVectorArray_Serial.exit

.lr.ph.preheader.i:                               ; preds = %bb.h
  %wide.trip.count.i = zext nneg i32 %0 to i64
  %min.iters.check190 = icmp ult i64 %i.k, 6
  %n.vec196 = and i64 %i.k, 9223372036854775804   ; 3 uses
  %cmp.n205 = icmp eq i64 %i.k, %n.vec196
  %xtraiter211 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod212.not = icmp eq i64 %xtraiter211, 0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 4 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !63   ; 7 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !57
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !63   ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !63 ; 7 uses
  br i1 %min.iters.check190, label %scalar.ph189.preheader, label %vector.memcheck191

vector.memcheck191:                               ; preds = %.lr.ph.i
  %i.ac = ptrtoaddr ptr %i.ab to i64              ; 2 uses
  %i.ad = ptrtoaddr ptr %i.w to i64
  %i.ae = ptrtoaddr ptr %i.r to i64
  %i.af = sub i64 %i.ae, %i.ac
  %diff.check192 = icmp ugt i64 %i.af, -32
  %i.ag = sub i64 %i.ad, %i.ac
  %diff.check193 = icmp ugt i64 %i.ag, -32
  %conflict.rdx194 = or i1 %diff.check192, %diff.check193
  br i1 %conflict.rdx194, label %scalar.ph189.preheader, label %vector.body197

vector.body197:                                   ; preds = %vector.memcheck191, %vector.body197
  %index198 = phi i64 [ %index.next203, %vector.body197 ], [ 0, %vector.memcheck191 ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index198 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load199 = load <2 x double>, ptr %i.ah, align 8, !tbaa !67
  %wide.load200 = load <2 x double>, ptr %i.ai, align 8, !tbaa !67
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index198 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load201 = load <2 x double>, ptr %i.aj, align 8, !tbaa !67
  %wide.load202 = load <2 x double>, ptr %i.ak, align 8, !tbaa !67
  %i.al = fadd <2 x double> %wide.load199, %wide.load201
  %i.am = fadd <2 x double> %wide.load200, %wide.load202
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index198 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <2 x double> %i.al, ptr %i.an, align 8, !tbaa !67
  store <2 x double> %i.am, ptr %i.ao, align 8, !tbaa !67
  %index.next203 = add nuw i64 %index198, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next203, %n.vec196
  br i1 %i.ap, label %middle.block204, label %vector.body197, !llvm.loop !275

middle.block204:                                  ; preds = %vector.body197
  br i1 %cmp.n205, label %._crit_edge.i, label %scalar.ph189.preheader

scalar.ph189.preheader:                           ; preds = %vector.memcheck191, %.lr.ph.i, %middle.block204
  %.019.i.ph = phi i64 [ 0, %vector.memcheck191 ], [ 0, %.lr.ph.i ], [ %n.vec196, %middle.block204 ] ; 3 uses
  br i1 %lcmp.mod212.not, label %scalar.ph189.prol.loopexit, label %scalar.ph189.prol
end_hunk_0
begin_hunk_1_@N_VScaleVectorArray_Serial:bb.a
  %prol.iter211 = phi i64 [ %prol.iter211.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader202 ]
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.039.i.prol
  %i.db = load double, ptr %i.da, align 8, !tbaa !67
  %i.dc = fmul double %i.c, %i.db
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.039.i.prol
  store double %i.dc, ptr %i.dd, align 8, !tbaa !67
  %i.de = add nuw nsw i64 %.039.i.prol, 1         ; 2 uses
  %prol.iter211.next = add i64 %prol.iter211, 1   ; 2 uses
  %prol.iter211.cmp.not = icmp eq i64 %prol.iter211.next, %xtraiter209
  br i1 %prol.iter211.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !323

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader202
  %.039.i.unr = phi i64 [ %.039.i.ph, %.lr.ph.i.preheader202 ], [ %i.de, %.lr.ph.i.prol ]
  %i.df = sub nsw i64 %.039.i.ph, %i.cj
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %N_VScale_Serial.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.039.i = phi i64 [ %i.ea, %.lr.ph.i ], [ %.039.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.039.i
  %i.di = load double, ptr %i.dh, align 8, !tbaa !67
  %i.dj = fmul double %i.c, %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.039.i
  store double %i.dj, ptr %i.dk, align 8, !tbaa !67
  %i.dl = add nuw nsw i64 %.039.i, 1              ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !67
  %i.do = fmul double %i.c, %i.dn
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.dl
  store double %i.do, ptr %i.dp, align 8, !tbaa !67
  %i.dq = add nuw nsw i64 %.039.i, 2              ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !67
  %i.dt = fmul double %i.c, %i.ds
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.dq
  store double %i.dt, ptr %i.du, align 8, !tbaa !67
  %i.dv = add nuw nsw i64 %.039.i, 3              ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !67
  %i.dy = fmul double %i.c, %i.dx
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.dv
  store double %i.dy, ptr %i.dz, align 8, !tbaa !67
  %i.ea = add nuw nsw i64 %.039.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ea, %i.cj
  br i1 %exitcond.not.i.3, label %N_VScale_Serial.exit, label %.lr.ph.i, !llvm.loop !324

bb.i:                                             ; preds = %bb.a
  %i.eb = load ptr, ptr %3, align 8, !tbaa !72
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !57
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !61 ; 15 uses
  %i.ee = icmp eq ptr %2, %3
  %i.ef = icmp sgt i32 %0, 0
  %i.eg = icmp sgt i64 %i.ed, 0
  %or.cond58 = select i1 %i.ef, i1 %i.eg, i1 false ; 2 uses
  br i1 %i.ee, label %.preheader, label %.preheader47

.preheader47:                                     ; preds = %bb.i
  br i1 %or.cond58, label %.lr.ph.preheader, label %N_VScale_Serial.exit

.lr.ph.preheader:                                 ; preds = %.preheader47
  %wide.trip.count = zext nneg i32 %0 to i64      ; 2 uses
  %i.eh = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.eh
  %i.ei = shl i64 %i.ed, 3                        ; 2 uses
  %min.iters.check = icmp ult i64 %i.ed, 6
  %n.vec = and i64 %i.ed, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.ed, %n.vec
  %xtraiter = and i64 %i.ed, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %or.cond58, label %.lr.ph54.preheader, label %N_VScale_Serial.exit

.lr.ph54.preheader:                               ; preds = %.preheader
  %wide.trip.count70 = zext nneg i32 %0 to i64    ; 2 uses
  %i.ej = shl nuw nsw i64 %wide.trip.count70, 3
  %scevgep106 = getelementptr i8, ptr %1, i64 %i.ej
  %i.ek = shl i64 %i.ed, 3
  %min.iters.check108 = icmp ult i64 %i.ed, 4
  %n.vec114 = and i64 %i.ed, 9223372036854775804  ; 3 uses
  %cmp.n123 = icmp eq i64 %i.ed, %n.vec114
  %xtraiter206 = and i64 %i.ed, 3                 ; 2 uses
  %lcmp.mod207.not = icmp eq i64 %xtraiter206, 0
  br label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %._crit_edge55
  %indvars.iv67 = phi i64 [ 0, %.lr.ph54.preheader ], [ %indvars.iv.next68, %._crit_edge55 ] ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv67
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !72
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !57
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !63 ; 8 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv67 ; 6 uses
  br i1 %min.iters.check108, label %scalar.ph107.preheader, label %vector.memcheck109

vector.memcheck109:                               ; preds = %.lr.ph54
  %i.er = getelementptr i8, ptr %i.ep, i64 %i.ek
  %bound0110 = icmp ult ptr %i.ep, %scevgep106
  %bound1111 = icmp ult ptr %1, %i.er
  %found.conflict112 = and i1 %bound0110, %bound1111
  br i1 %found.conflict112, label %scalar.ph107.preheader, label %vector.ph113

vector.ph113:                                     ; preds = %vector.memcheck109
  %i.es = load double, ptr %i.eq, align 8, !tbaa !67, !alias.scope !338
  %broadcast.splatinsert119 = insertelement <2 x double> poison, double %i.es, i64 0
  %broadcast.splat120 = shufflevector <2 x double> %broadcast.splatinsert119, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body115 ] ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %index116 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %wide.load117 = load <2 x double>, ptr %i.et, align 8, !tbaa !67, !alias.scope !339, !noalias !338
  %wide.load118 = load <2 x double>, ptr %i.eu, align 8, !tbaa !67, !alias.scope !339, !noalias !338
  %i.ev = fmul <2 x double> %broadcast.splat120, %wide.load117
  %i.ew = fmul <2 x double> %broadcast.splat120, %wide.load118
  store <2 x double> %i.ev, ptr %i.et, align 8, !tbaa !67, !alias.scope !339, !noalias !338
  store <2 x double> %i.ew, ptr %i.eu, align 8, !tbaa !67, !alias.scope !339, !noalias !338
  %index.next121 = add nuw i64 %index116, 4       ; 2 uses
  %i.ex = icmp eq i64 %index.next121, %n.vec114
  br i1 %i.ex, label %middle.block122, label %vector.body115, !llvm.loop !328

middle.block122:                                  ; preds = %vector.body115
  br i1 %cmp.n123, label %._crit_edge55, label %scalar.ph107.preheader

scalar.ph107.preheader:                           ; preds = %vector.memcheck109, %.lr.ph54, %middle.block122
  %.052.ph = phi i64 [ 0, %vector.memcheck109 ], [ 0, %.lr.ph54 ], [ %n.vec114, %middle.block122 ] ; 3 uses
  br i1 %lcmp.mod207.not, label %scalar.ph107.prol.loopexit, label %scalar.ph107.prol

scalar.ph107.prol:                                ; preds = %scalar.ph107.preheader, %scalar.ph107.prol
  %.052.prol = phi i64 [ %i.fc, %scalar.ph107.prol ], [ %.052.ph, %scalar.ph107.preheader ] ; 2 uses
  %prol.iter208 = phi i64 [ %prol.iter208.next, %scalar.ph107.prol ], [ 0, %scalar.ph107.preheader ]
  %i.ey = load double, ptr %i.eq, align 8, !tbaa !67
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.052.prol ; 2 uses
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !67
  %i.fb = fmul double %i.ey, %i.fa
  store double %i.fb, ptr %i.ez, align 8, !tbaa !67
  %i.fc = add nuw nsw i64 %.052.prol, 1           ; 2 uses
  %prol.iter208.next = add i64 %prol.iter208, 1   ; 2 uses
  %prol.iter208.cmp.not = icmp eq i64 %prol.iter208.next, %xtraiter206
  br i1 %prol.iter208.cmp.not, label %scalar.ph107.prol.loopexit, label %scalar.ph107.prol, !llvm.loop !329

scalar.ph107.prol.loopexit:                       ; preds = %scalar.ph107.prol, %scalar.ph107.preheader
  %.052.unr = phi i64 [ %.052.ph, %scalar.ph107.preheader ], [ %i.fc, %scalar.ph107.prol ]
  %i.fd = sub nsw i64 %.052.ph, %i.ed
  %i.fe = icmp ugt i64 %i.fd, -4
  br i1 %i.fe, label %._crit_edge55, label %scalar.ph107

scalar.ph107:                                     ; preds = %scalar.ph107.prol.loopexit, %scalar.ph107
  %.052 = phi i64 [ %i.fy, %scalar.ph107 ], [ %.052.unr, %scalar.ph107.prol.loopexit ] ; 5 uses
  %i.ff = load double, ptr %i.eq, align 8, !tbaa !67
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.052 ; 2 uses
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !67
  %i.fi = fmul double %i.ff, %i.fh
  store double %i.fi, ptr %i.fg, align 8, !tbaa !67
  %i.fj = load double, ptr %i.eq, align 8, !tbaa !67
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.052
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 2 uses
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !67
  %i.fn = fmul double %i.fj, %i.fm
  store double %i.fn, ptr %i.fl, align 8, !tbaa !67
  %i.fo = load double, ptr %i.eq, align 8, !tbaa !67
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.052
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !67
  %i.fs = fmul double %i.fo, %i.fr
  store double %i.fs, ptr %i.fq, align 8, !tbaa !67
  %i.ft = load double, ptr %i.eq, align 8, !tbaa !67
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.052
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24 ; 2 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !67
  %i.fx = fmul double %i.ft, %i.fw
  store double %i.fx, ptr %i.fv, align 8, !tbaa !67
  %i.fy = add nuw nsw i64 %.052, 4                ; 2 uses
  %exitcond66.not.3 = icmp eq i64 %i.fy, %i.ed
  br i1 %exitcond66.not.3, label %._crit_edge55, label %scalar.ph107, !llvm.loop !330

._crit_edge55:                                    ; preds = %scalar.ph107.prol.loopexit, %scalar.ph107, %middle.block122
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %N_VScale_Serial.exit, label %.lr.ph54

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !72
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !57
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !63 ; 8 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !72
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !57
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !63 ; 9 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.gk = getelementptr i8, ptr %i.gi, i64 %i.ei  ; 2 uses
  %4 = getelementptr i8, ptr %i.gd, i64 %i.ei
  %bound0 = icmp ult ptr %i.gi, %scevgep
  %bound1 = icmp ult ptr %1, %i.gk
  %found.conflict = and i1 %bound0, %bound1
  %bound096 = icmp ult ptr %i.gi, %4
  %bound197 = icmp ult ptr %i.gd, %i.gk
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx = or i1 %found.conflict, %found.conflict98
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.gl = load double, ptr %i.gj, align 8, !tbaa !67, !alias.scope !340
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gl, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %index ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %wide.load = load <2 x double>, ptr %i.gm, align 8, !tbaa !67, !alias.scope !341
  %wide.load99 = load <2 x double>, ptr %i.gn, align 8, !tbaa !67, !alias.scope !341
  %i.go = fmul <2 x double> %broadcast.splat, %wide.load
  %i.gp = fmul <2 x double> %broadcast.splat, %wide.load99
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %index ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store <2 x double> %i.go, ptr %i.gq, align 8, !tbaa !67, !alias.scope !342, !noalias !343
  store <2 x double> %i.gp, ptr %i.gr, align 8, !tbaa !67, !alias.scope !342, !noalias !343
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gs = icmp eq i64 %index.next, %n.vec
  br i1 %i.gs, label %middle.block, label %vector.body, !llvm.loop !335

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.149.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.149.prol = phi i64 [ %i.gy, %scalar.ph.prol ], [ %.149.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gt = load double, ptr %i.gj, align 8, !tbaa !67
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.149.prol
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !67
  %i.gw = fmul double %i.gt, %i.gv
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %.149.prol
  store double %i.gw, ptr %i.gx, align 8, !tbaa !67
  %i.gy = add nuw nsw i64 %.149.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !336

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.149.unr = phi i64 [ %.149.ph, %scalar.ph.preheader ], [ %i.gy, %scalar.ph.prol ]
  %i.gz = sub nsw i64 %.149.ph, %i.ed
  %i.ha = icmp ugt i64 %i.gz, -4
  br i1 %i.ha, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.149 = phi i64 [ %i.hy, %scalar.ph ], [ %.149.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.hb = load double, ptr %i.gj, align 8, !tbaa !67
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.149
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !67
  %i.he = fmul double %i.hb, %i.hd
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %.149
  store double %i.he, ptr %i.hf, align 8, !tbaa !67
  %i.hg = add nuw nsw i64 %.149, 1                ; 2 uses
  %i.hh = load double, ptr %i.gj, align 8, !tbaa !67
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.hg
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !67
  %i.hk = fmul double %i.hh, %i.hj
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.hg
  store double %i.hk, ptr %i.hl, align 8, !tbaa !67
  %i.hm = add nuw nsw i64 %.149, 2                ; 2 uses
  %i.hn = load double, ptr %i.gj, align 8, !tbaa !67
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.hm
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !67
  %i.hq = fmul double %i.hn, %i.hp
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.hm
  store double %i.hq, ptr %i.hr, align 8, !tbaa !67
  %i.hs = add nuw nsw i64 %.149, 3                ; 2 uses
  %i.ht = load double, ptr %i.gj, align 8, !tbaa !67
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.hs
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !67
  %i.hw = fmul double %i.ht, %i.hv
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.hs
  store double %i.hw, ptr %i.hx, align 8, !tbaa !67
  %i.hy = add nuw nsw i64 %.149, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.hy, %i.ed
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !337

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond65.not, label %N_VScale_Serial.exit, label %.lr.ph

N_VScale_Serial.exit:                             ; preds = %._crit_edge, %._crit_edge55, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph.i33.i.prol.loopexit, %.lr.ph.i33.i, %.lr.ph.i30.i.prol.loopexit, %.lr.ph.i30.i, %.lr.ph.i.i, %middle.block138, %middle.block158, %middle.block178, %middle.block192, %.preheader47, %.preheader, %bb.h, %bb.g, %bb.e, %bb.c
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @N_VConstVectorArray_Serial(i32 noundef %0, double noundef %1, ptr nofree noundef readonly captures(none) %2) #7 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !72
  %i.b = icmp eq i32 %0, 1
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !61   ; 10 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63   ; 2 uses
  %i.g = icmp sgt i64 %i.d, 0
  br i1 %i.g, label %.lr.ph.i.preheader, label %N_VConst_Serial.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %min.iters.check32 = icmp ult i64 %i.d, 4
  br i1 %min.iters.check32, label %.lr.ph.i.preheader43, label %vector.ph33

vector.ph33:                                      ; preds = %.lr.ph.i.preheader
  %n.vec34 = and i64 %i.d, 9223372036854775804    ; 3 uses
  %broadcast.splatinsert35 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat36 = shufflevector <2 x double> %broadcast.splatinsert35, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph33
  %index38 = phi i64 [ 0, %vector.ph33 ], [ %index.next39, %vector.body37 ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index38 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x double> %broadcast.splat36, ptr %i.h, align 8, !tbaa !67
  store <2 x double> %broadcast.splat36, ptr %i.i, align 8, !tbaa !67
  %index.next39 = add nuw i64 %index38, 4         ; 2 uses
  %i.j = icmp eq i64 %index.next39, %n.vec34
  br i1 %i.j, label %middle.block40, label %vector.body37, !llvm.loop !344

middle.block40:                                   ; preds = %vector.body37
  %cmp.n41 = icmp eq i64 %i.d, %n.vec34
  br i1 %cmp.n41, label %N_VConst_Serial.exit, label %.lr.ph.i.preheader43

.lr.ph.i.preheader43:                             ; preds = %.lr.ph.i.preheader, %middle.block40
  %.07.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec34, %middle.block40 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader43, %.lr.ph.i
  %.07.i = phi i64 [ %i.l, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader43 ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.07.i
  store double %1, ptr %i.k, align 8, !tbaa !67
  %i.l = add nuw nsw i64 %.07.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.l, %i.d
  br i1 %exitcond.not.i, label %N_VConst_Serial.exit, label %.lr.ph.i, !llvm.loop !345

bb.c:                                             ; preds = %bb.a
  %i.m = icmp sgt i32 %0, 0
  %i.n = icmp sgt i64 %i.d, 0
  %or.cond = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %N_VConst_Serial.exit

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i64 %i.d, 4
  %n.vec = and i64 %i.d, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !57
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !63   ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x double> %broadcast.splat, ptr %i.t, align 8, !tbaa !67
  store <2 x double> %broadcast.splat, ptr %i.u, align 8, !tbaa !67
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !346

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.020.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.020 = phi i64 [ %i.x, %scalar.ph ], [ %.020.ph, %scalar.ph.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.020
  store double %1, ptr %i.w, align 8, !tbaa !67
  %i.x = add nuw nsw i64 %.020, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !347

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond26.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
end_hunk_1
begin_hunk_2_@N_VScaleAddMultiVectorArray_Serial:bb.a
  %niter = phi i64 [ 0, %.lr.ph116.preheader ], [ %niter.next.1, %.lr.ph116 ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv142
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !75
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv142
  store ptr %i.p, ptr %i.q, align 8, !tbaa !72
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv142
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !72
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv142
  store ptr %i.t, ptr %i.u, align 8, !tbaa !72
  %indvars.iv.next143 = or disjoint i64 %indvars.iv142, 1 ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next143
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !72
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next143
  store ptr %i.x, ptr %i.y, align 8, !tbaa !72
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next143
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !75
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !72
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next143
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !72
  %indvars.iv.next143.1 = add nuw nsw i64 %indvars.iv142, 2 ; 5 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge117.loopexit.unr-lcssa, label %.lr.ph116

._crit_edge117.loopexit.unr-lcssa:                ; preds = %.lr.ph116
  %lcmp.mod307.not = icmp eq i64 %xtraiter306, 0
  br i1 %lcmp.mod307.not, label %._crit_edge117, label %.lr.ph116.epil.preheader

.lr.ph116.epil.preheader:                         ; preds = %._crit_edge117.loopexit.unr-lcssa
  %lcmp.mod308 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod308)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next143.1
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !75
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !72
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next143.1
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !72
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next143.1
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !75
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !72
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next143.1
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !72
  br label %._crit_edge117

._crit_edge117:                                   ; preds = %.lr.ph116.epil.preheader, %._crit_edge117.loopexit.unr-lcssa, %bb.d
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !57  ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !61 ; 15 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !63 ; 12 uses
  %i.ap = icmp eq ptr %i.k, %i.l
  %i.aq = icmp sgt i64 %i.am, 0
  %or.cond60.i = select i1 %i.m, i1 %i.aq, i1 false ; 2 uses
  br i1 %i.ap, label %.preheader.i, label %.preheader49.i

.preheader49.i:                                   ; preds = %._crit_edge117
  br i1 %or.cond60.i, label %.lr.ph.preheader.i, label %N_VScaleAddMulti_Serial.exit

.lr.ph.preheader.i:                               ; preds = %.preheader49.i
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 2 uses
  %i.ar = shl i64 %i.am, 3                        ; 3 uses
  %scevgep235 = getelementptr i8, ptr %i.ao, i64 %i.ar
  %i.as = shl nuw nsw i64 %wide.trip.count.i, 3
  %scevgep236 = getelementptr i8, ptr %2, i64 %i.as
  %min.iters.check238 = icmp ult i64 %i.am, 6
  %n.vec252 = and i64 %i.am, 9223372036854775804  ; 3 uses
  %cmp.n263 = icmp eq i64 %i.am, %n.vec252
  %xtraiter309 = and i64 %i.am, 1
  %lcmp.mod310.not = icmp eq i64 %xtraiter309, 0
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %._crit_edge117
  br i1 %or.cond60.i, label %.lr.ph56.preheader.i, label %N_VScaleAddMulti_Serial.exit

.lr.ph56.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count68.i = zext nneg i32 %1 to i64  ; 2 uses
  %i.at = shl i64 %i.am, 3                        ; 2 uses
  %scevgep276 = getelementptr i8, ptr %i.ao, i64 %i.at
  %i.au = shl nuw nsw i64 %wide.trip.count68.i, 3
  %scevgep277 = getelementptr i8, ptr %2, i64 %i.au
  %min.iters.check279 = icmp ult i64 %i.am, 4
  %n.vec289 = and i64 %i.am, 9223372036854775804  ; 3 uses
  %cmp.n300 = icmp eq i64 %i.am, %n.vec289
  %xtraiter311 = and i64 %i.am, 1
  %lcmp.mod312.not = icmp eq i64 %xtraiter311, 0
  br label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %._crit_edge57.i, %.lr.ph56.preheader.i
  %indvars.iv65.i = phi i64 [ 0, %.lr.ph56.preheader.i ], [ %indvars.iv.next66.i, %._crit_edge57.i ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv65.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !57
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !63 ; 7 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv65.i ; 4 uses
  br i1 %min.iters.check279, label %scalar.ph278.preheader, label %vector.memcheck280

vector.memcheck280:                               ; preds = %.lr.ph56.i
  %i.bb = getelementptr i8, ptr %i.az, i64 %i.at  ; 2 uses
  %bound0281 = icmp ult ptr %i.az, %scevgep277
  %bound1282 = icmp ult ptr %2, %i.bb
  %found.conflict283 = and i1 %bound0281, %bound1282
  %bound0284 = icmp ult ptr %i.az, %scevgep276
  %bound1285 = icmp ult ptr %i.ao, %i.bb
  %found.conflict286 = and i1 %bound0284, %bound1285
  %conflict.rdx287 = or i1 %found.conflict283, %found.conflict286
  br i1 %conflict.rdx287, label %scalar.ph278.preheader, label %vector.ph288

vector.ph288:                                     ; preds = %vector.memcheck280
  %i.bc = load double, ptr %i.ba, align 8, !tbaa !67, !alias.scope !377
  %broadcast.splatinsert296 = insertelement <2 x double> poison, double %i.bc, i64 0
  %broadcast.splat297 = shufflevector <2 x double> %broadcast.splatinsert296, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body290

vector.body290:                                   ; preds = %vector.body290, %vector.ph288
  %index291 = phi i64 [ 0, %vector.ph288 ], [ %index.next298, %vector.body290 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index291 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load292 = load <2 x double>, ptr %i.bd, align 8, !tbaa !67, !alias.scope !378
  %wide.load293 = load <2 x double>, ptr %i.be, align 8, !tbaa !67, !alias.scope !378
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index291 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %wide.load294 = load <2 x double>, ptr %i.bf, align 8, !tbaa !67, !alias.scope !379, !noalias !380
  %wide.load295 = load <2 x double>, ptr %i.bg, align 8, !tbaa !67, !alias.scope !379, !noalias !380
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat297, <2 x double> %wide.load292, <2 x double> %wide.load294)
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat297, <2 x double> %wide.load293, <2 x double> %wide.load295)
  store <2 x double> %i.bh, ptr %i.bf, align 8, !tbaa !67, !alias.scope !379, !noalias !380
  store <2 x double> %i.bi, ptr %i.bg, align 8, !tbaa !67, !alias.scope !379, !noalias !380
  %index.next298 = add nuw i64 %index291, 4       ; 2 uses
  %i.bj = icmp eq i64 %index.next298, %n.vec289
  br i1 %i.bj, label %middle.block299, label %vector.body290, !llvm.loop !355

middle.block299:                                  ; preds = %vector.body290
  br i1 %cmp.n300, label %._crit_edge57.i, label %scalar.ph278.preheader

scalar.ph278.preheader:                           ; preds = %vector.memcheck280, %.lr.ph56.i, %middle.block299
  %.054.i.ph = phi i64 [ 0, %vector.memcheck280 ], [ 0, %.lr.ph56.i ], [ %n.vec289, %middle.block299 ] ; 5 uses
  %.neg315 = or disjoint i64 %.054.i.ph, 1
  br i1 %lcmp.mod312.not, label %scalar.ph278.prol.loopexit, label %scalar.ph278.prol

scalar.ph278.prol:                                ; preds = %scalar.ph278.preheader
  %i.bk = load double, ptr %i.ba, align 8, !tbaa !67
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.054.i.ph
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !67
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.054.i.ph ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !67
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.bm, double %i.bo)
  store double %i.bp, ptr %i.bn, align 8, !tbaa !67
  %i.bq = or disjoint i64 %.054.i.ph, 1
  br label %scalar.ph278.prol.loopexit

scalar.ph278.prol.loopexit:                       ; preds = %scalar.ph278.prol, %scalar.ph278.preheader
  %.054.i.unr = phi i64 [ %.054.i.ph, %scalar.ph278.preheader ], [ %i.bq, %scalar.ph278.prol ]
  %i.br = icmp eq i64 %i.am, %.neg315
  br i1 %i.br, label %._crit_edge57.i, label %scalar.ph278

scalar.ph278:                                     ; preds = %scalar.ph278.prol.loopexit, %scalar.ph278
  %.054.i = phi i64 [ %i.cf, %scalar.ph278 ], [ %.054.i.unr, %scalar.ph278.prol.loopexit ] ; 4 uses
  %i.bs = load double, ptr %i.ba, align 8, !tbaa !67
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.054.i
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !67
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.054.i ; 2 uses
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !67
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.bu, double %i.bw)
  store double %i.bx, ptr %i.bv, align 8, !tbaa !67
  %i.by = add nuw nsw i64 %.054.i, 1              ; 2 uses
  %i.bz = load double, ptr %i.ba, align 8, !tbaa !67
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.by
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !67
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.by ; 2 uses
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !67
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.cb, double %i.cd)
  store double %i.ce, ptr %i.cc, align 8, !tbaa !67
  %i.cf = add nuw nsw i64 %.054.i, 2              ; 2 uses
  %exitcond64.not.i.1 = icmp eq i64 %i.cf, %i.am
  br i1 %exitcond64.not.i.1, label %._crit_edge57.i, label %scalar.ph278, !llvm.loop !356

._crit_edge57.i:                                  ; preds = %scalar.ph278.prol.loopexit, %scalar.ph278, %middle.block299
  %indvars.iv.next66.i = add nuw nsw i64 %indvars.iv65.i, 1 ; 2 uses
  %exitcond69.not.i = icmp eq i64 %indvars.iv.next66.i, %wide.trip.count68.i
  br i1 %exitcond69.not.i, label %N_VScaleAddMulti_Serial.exit, label %.lr.ph56.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 4 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !72
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !57
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !63 ; 6 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !72
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !57
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !63 ; 8 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i ; 4 uses
  br i1 %min.iters.check238, label %scalar.ph237.preheader, label %vector.memcheck239

vector.memcheck239:                               ; preds = %.lr.ph.i
  %i.cr = getelementptr i8, ptr %i.cp, i64 %i.ar  ; 3 uses
  %6 = getelementptr i8, ptr %i.ck, i64 %i.ar
  %bound0240 = icmp ult ptr %i.cp, %scevgep236
  %bound1241 = icmp ult ptr %2, %i.cr
  %found.conflict242 = and i1 %bound0240, %bound1241
  %bound0243 = icmp ult ptr %i.cp, %scevgep235
  %bound1244 = icmp ult ptr %i.ao, %i.cr
  %found.conflict245 = and i1 %bound0243, %bound1244
  %conflict.rdx246 = or i1 %found.conflict242, %found.conflict245
  %bound0247 = icmp ult ptr %i.cp, %6
  %bound1248 = icmp ult ptr %i.ck, %i.cr
  %found.conflict249 = and i1 %bound0247, %bound1248
  %conflict.rdx250 = or i1 %conflict.rdx246, %found.conflict249
  br i1 %conflict.rdx250, label %scalar.ph237.preheader, label %vector.ph251

vector.ph251:                                     ; preds = %vector.memcheck239
  %i.cs = load double, ptr %i.cq, align 8, !tbaa !67, !alias.scope !381
  %broadcast.splatinsert259 = insertelement <2 x double> poison, double %i.cs, i64 0
  %broadcast.splat260 = shufflevector <2 x double> %broadcast.splatinsert259, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body253

vector.body253:                                   ; preds = %vector.body253, %vector.ph251
  %index254 = phi i64 [ 0, %vector.ph251 ], [ %index.next261, %vector.body253 ] ; 4 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index254 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load255 = load <2 x double>, ptr %i.ct, align 8, !tbaa !67, !alias.scope !382
  %wide.load256 = load <2 x double>, ptr %i.cu, align 8, !tbaa !67, !alias.scope !382
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %index254 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load257 = load <2 x double>, ptr %i.cv, align 8, !tbaa !67, !alias.scope !383
  %wide.load258 = load <2 x double>, ptr %i.cw, align 8, !tbaa !67, !alias.scope !383
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat260, <2 x double> %wide.load255, <2 x double> %wide.load257)
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat260, <2 x double> %wide.load256, <2 x double> %wide.load258)
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %index254 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <2 x double> %i.cx, ptr %i.cz, align 8, !tbaa !67, !alias.scope !384, !noalias !385
  store <2 x double> %i.cy, ptr %i.da, align 8, !tbaa !67, !alias.scope !384, !noalias !385
  %index.next261 = add nuw i64 %index254, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next261, %n.vec252
  br i1 %i.db, label %middle.block262, label %vector.body253, !llvm.loop !362

middle.block262:                                  ; preds = %vector.body253
  br i1 %cmp.n263, label %._crit_edge.i, label %scalar.ph237.preheader

scalar.ph237.preheader:                           ; preds = %vector.memcheck239, %.lr.ph.i, %middle.block262
  %.151.i.ph = phi i64 [ 0, %vector.memcheck239 ], [ 0, %.lr.ph.i ], [ %n.vec252, %middle.block262 ] ; 6 uses
  %.neg314 = or disjoint i64 %.151.i.ph, 1
  br i1 %lcmp.mod310.not, label %scalar.ph237.prol.loopexit, label %scalar.ph237.prol

scalar.ph237.prol:                                ; preds = %scalar.ph237.preheader
  %i.dc = load double, ptr %i.cq, align 8, !tbaa !67
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.151.i.ph
  %i.de = load double, ptr %i.dd, align 8, !tbaa !67
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.151.i.ph
  %i.dg = load double, ptr %i.df, align 8, !tbaa !67
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.de, double %i.dg)
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.151.i.ph
  store double %i.dh, ptr %i.di, align 8, !tbaa !67
  %i.dj = or disjoint i64 %.151.i.ph, 1
  br label %scalar.ph237.prol.loopexit

scalar.ph237.prol.loopexit:                       ; preds = %scalar.ph237.prol, %scalar.ph237.preheader
  %.151.i.unr = phi i64 [ %.151.i.ph, %scalar.ph237.preheader ], [ %i.dj, %scalar.ph237.prol ]
  %i.dk = icmp eq i64 %i.am, %.neg314
  br i1 %i.dk, label %._crit_edge.i, label %scalar.ph237

scalar.ph237:                                     ; preds = %scalar.ph237.prol.loopexit, %scalar.ph237
  %.151.i = phi i64 [ %i.ea, %scalar.ph237 ], [ %.151.i.unr, %scalar.ph237.prol.loopexit ] ; 5 uses
  %i.dl = load double, ptr %i.cq, align 8, !tbaa !67
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.151.i
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !67
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.151.i
  %i.dp = load double, ptr %i.do, align 8, !tbaa !67
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.dn, double %i.dp)
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.151.i
  store double %i.dq, ptr %i.dr, align 8, !tbaa !67
  %i.ds = add nuw nsw i64 %.151.i, 1              ; 3 uses
  %i.dt = load double, ptr %i.cq, align 8, !tbaa !67
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ds
  %i.dv = load double, ptr %i.du, align 8, !tbaa !67
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ds
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !67
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.dv, double %i.dx)
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.ds
  store double %i.dy, ptr %i.dz, align 8, !tbaa !67
  %i.ea = add nuw nsw i64 %.151.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ea, %i.am
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph237, !llvm.loop !363

._crit_edge.i:                                    ; preds = %scalar.ph237.prol.loopexit, %scalar.ph237, %middle.block262
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond63.not.i, label %N_VScaleAddMulti_Serial.exit, label %.lr.ph.i

N_VScaleAddMulti_Serial.exit:                     ; preds = %._crit_edge.i, %._crit_edge57.i, %.preheader49.i, %.preheader.i
  tail call void @free(ptr noundef %i.k) #22
  tail call void @free(ptr noundef %i.l) #22
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.eb = load double, ptr %2, align 8, !tbaa !67
  %i.ec = load ptr, ptr %4, align 8, !tbaa !75
  %i.ed = load ptr, ptr %5, align 8, !tbaa !75
  %i.ee = tail call i32 @N_VLinearSumVectorArray_Serial(i32 noundef %0, double noundef %i.eb, ptr noundef nonnull %3, double noundef 1.000000e+00, ptr noundef %i.ec, ptr noundef %i.ed) ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.ef = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !61 ; 16 uses
  %i.eh = icmp eq ptr %4, %5
  %i.ei = icmp sgt i32 %0, 0                      ; 2 uses
  br i1 %i.eh, label %.preheader, label %.preheader93

.preheader93:                                     ; preds = %bb.g
  br i1 %i.ei, label %.lr.ph101, label %.loopexit

.lr.ph101:                                        ; preds = %.preheader93
  %i.ej = icmp slt i32 %1, 1
  %i.ek = icmp slt i64 %i.eg, 1
  %brmerge = select i1 %i.ej, i1 true, i1 %i.ek
  br i1 %brmerge, label %.loopexit, label %.lr.ph98.preheader

.lr.ph98.preheader:                               ; preds = %.lr.ph101
  %wide.trip.count129 = zext nneg i32 %0 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  %i.el = shl i64 %i.eg, 3                        ; 3 uses
  %i.em = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep171 = getelementptr i8, ptr %2, i64 %i.em
  %min.iters.check = icmp ult i64 %i.eg, 6
  %n.vec = and i64 %i.eg, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.eg, %n.vec
  %xtraiter = and i64 %i.eg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph98

.preheader:                                       ; preds = %bb.g
  br i1 %i.ei, label %.lr.ph112, label %.loopexit

.lr.ph112:                                        ; preds = %.preheader
  %i.en = icmp slt i32 %1, 1
  %i.eo = icmp slt i64 %i.eg, 1
  %brmerge121 = select i1 %i.en, i1 true, i1 %i.eo
  br i1 %brmerge121, label %.loopexit, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %.lr.ph112
  %wide.trip.count140 = zext nneg i32 %0 to i64
  %wide.trip.count135 = zext nneg i32 %1 to i64   ; 2 uses
  %i.ep = shl i64 %i.eg, 3                        ; 2 uses
  %i.eq = shl nuw nsw i64 %wide.trip.count135, 3
  %scevgep194 = getelementptr i8, ptr %2, i64 %i.eq
  %min.iters.check196 = icmp ult i64 %i.eg, 4
  %n.vec206 = and i64 %i.eg, 9223372036854775804  ; 3 uses
  %cmp.n217 = icmp eq i64 %i.eg, %n.vec206
  %xtraiter304 = and i64 %i.eg, 1
  %lcmp.mod305.not = icmp eq i64 %xtraiter304, 0
  br label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %._crit_edge110
  %indvars.iv137 = phi i64 [ 0, %.lr.ph109.preheader ], [ %indvars.iv.next138, %._crit_edge110 ] ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv137
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !72
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !57
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !63 ; 6 uses
  %scevgep193 = getelementptr i8, ptr %i.ev, i64 %i.ep
  br label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph109, %._crit_edge106
  %indvars.iv132 = phi i64 [ 0, %.lr.ph109 ], [ %indvars.iv.next133, %._crit_edge106 ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv132
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !75
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv137
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !72
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !57
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !63 ; 7 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv132 ; 4 uses
  br i1 %min.iters.check196, label %scalar.ph195.preheader, label %vector.memcheck197

vector.memcheck197:                               ; preds = %.lr.ph105
  %i.fe = getelementptr i8, ptr %i.fc, i64 %i.ep  ; 2 uses
  %bound0198 = icmp ult ptr %i.fc, %scevgep194
  %bound1199 = icmp ult ptr %2, %i.fe
  %found.conflict200 = and i1 %bound0198, %bound1199
  %bound0201 = icmp ult ptr %i.fc, %scevgep193
  %bound1202 = icmp ult ptr %i.ev, %i.fe
  %found.conflict203 = and i1 %bound0201, %bound1202
  %conflict.rdx204 = or i1 %found.conflict200, %found.conflict203
  br i1 %conflict.rdx204, label %scalar.ph195.preheader, label %vector.ph205

vector.ph205:                                     ; preds = %vector.memcheck197
  %i.ff = load double, ptr %i.fd, align 8, !tbaa !67, !alias.scope !386
  %broadcast.splatinsert213 = insertelement <2 x double> poison, double %i.ff, i64 0
  %broadcast.splat214 = shufflevector <2 x double> %broadcast.splatinsert213, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph205
  %index208 = phi i64 [ 0, %vector.ph205 ], [ %index.next215, %vector.body207 ] ; 3 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %index208 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %wide.load209 = load <2 x double>, ptr %i.fg, align 8, !tbaa !67, !alias.scope !387
  %wide.load210 = load <2 x double>, ptr %i.fh, align 8, !tbaa !67, !alias.scope !387
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %index208 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 2 uses
  %wide.load211 = load <2 x double>, ptr %i.fi, align 8, !tbaa !67, !alias.scope !388, !noalias !389
  %wide.load212 = load <2 x double>, ptr %i.fj, align 8, !tbaa !67, !alias.scope !388, !noalias !389
  %i.fk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat214, <2 x double> %wide.load209, <2 x double> %wide.load211)
  %i.fl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat214, <2 x double> %wide.load210, <2 x double> %wide.load212)
  store <2 x double> %i.fk, ptr %i.fi, align 8, !tbaa !67, !alias.scope !388, !noalias !389
  store <2 x double> %i.fl, ptr %i.fj, align 8, !tbaa !67, !alias.scope !388, !noalias !389
  %index.next215 = add nuw i64 %index208, 4       ; 2 uses
  %i.fm = icmp eq i64 %index.next215, %n.vec206
  br i1 %i.fm, label %middle.block216, label %vector.body207, !llvm.loop !368

middle.block216:                                  ; preds = %vector.body207
  br i1 %cmp.n217, label %._crit_edge106, label %scalar.ph195.preheader

scalar.ph195.preheader:                           ; preds = %vector.memcheck197, %.lr.ph105, %middle.block216
  %.0103.ph = phi i64 [ 0, %vector.memcheck197 ], [ 0, %.lr.ph105 ], [ %n.vec206, %middle.block216 ] ; 5 uses
  %.neg313 = or disjoint i64 %.0103.ph, 1
  br i1 %lcmp.mod305.not, label %scalar.ph195.prol.loopexit, label %scalar.ph195.prol

scalar.ph195.prol:                                ; preds = %scalar.ph195.preheader
  %i.fn = load double, ptr %i.fd, align 8, !tbaa !67
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %.0103.ph
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !67
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.0103.ph ; 2 uses
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !67
  %i.fs = tail call double @llvm.fmuladd.f64(double %i.fn, double %i.fp, double %i.fr)
  store double %i.fs, ptr %i.fq, align 8, !tbaa !67
  %i.ft = or disjoint i64 %.0103.ph, 1
  br label %scalar.ph195.prol.loopexit

scalar.ph195.prol.loopexit:                       ; preds = %scalar.ph195.prol, %scalar.ph195.preheader
  %.0103.unr = phi i64 [ %.0103.ph, %scalar.ph195.preheader ], [ %i.ft, %scalar.ph195.prol ]
  %i.fu = icmp eq i64 %i.eg, %.neg313
  br i1 %i.fu, label %._crit_edge106, label %scalar.ph195

scalar.ph195:                                     ; preds = %scalar.ph195.prol.loopexit, %scalar.ph195
  %.0103 = phi i64 [ %i.gi, %scalar.ph195 ], [ %.0103.unr, %scalar.ph195.prol.loopexit ] ; 4 uses
  %i.fv = load double, ptr %i.fd, align 8, !tbaa !67
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %.0103
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !67
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.0103 ; 2 uses
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !67
  %i.ga = tail call double @llvm.fmuladd.f64(double %i.fv, double %i.fx, double %i.fz)
  store double %i.ga, ptr %i.fy, align 8, !tbaa !67
  %i.gb = add nuw nsw i64 %.0103, 1               ; 2 uses
  %i.gc = load double, ptr %i.fd, align 8, !tbaa !67
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.gb
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !67
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.gb ; 2 uses
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !67
  %i.gh = tail call double @llvm.fmuladd.f64(double %i.gc, double %i.ge, double %i.gg)
  store double %i.gh, ptr %i.gf, align 8, !tbaa !67
  %i.gi = add nuw nsw i64 %.0103, 2               ; 2 uses
  %exitcond131.not.1 = icmp eq i64 %i.gi, %i.eg
  br i1 %exitcond131.not.1, label %._crit_edge106, label %scalar.ph195, !llvm.loop !369

._crit_edge106:                                   ; preds = %scalar.ph195.prol.loopexit, %scalar.ph195, %middle.block216
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count135
  br i1 %exitcond136.not, label %._crit_edge110, label %.lr.ph105

._crit_edge110:                                   ; preds = %._crit_edge106
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count140
  br i1 %exitcond141.not, label %.loopexit, label %.lr.ph109

.lr.ph98:                                         ; preds = %.lr.ph98.preheader, %._crit_edge99
  %indvars.iv126 = phi i64 [ 0, %.lr.ph98.preheader ], [ %indvars.iv.next127, %._crit_edge99 ] ; 4 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv126
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !72
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !57
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !63 ; 6 uses
  %scevgep = getelementptr i8, ptr %i.gn, i64 %i.el
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph98, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph98 ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !75
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv126
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !72
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !57
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !63 ; 6 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !75
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv126
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !72
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !57
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !63 ; 8 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.hd = getelementptr i8, ptr %i.hb, i64 %i.el  ; 3 uses
  %7 = getelementptr i8, ptr %i.gu, i64 %i.el
  %bound0 = icmp ult ptr %i.hb, %scevgep171
  %bound1 = icmp ult ptr %2, %i.hd
  %found.conflict = and i1 %bound0, %bound1
  %bound0172 = icmp ult ptr %i.hb, %scevgep
  %bound1173 = icmp ult ptr %i.gn, %i.hd
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx = or i1 %found.conflict, %found.conflict174
  %bound0175 = icmp ult ptr %i.hb, %7
  %bound1176 = icmp ult ptr %i.gu, %i.hd
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx178 = or i1 %conflict.rdx, %found.conflict177
  br i1 %conflict.rdx178, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.he = load double, ptr %i.hc, align 8, !tbaa !67, !alias.scope !390
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.he, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %index ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %wide.load = load <2 x double>, ptr %i.hf, align 8, !tbaa !67, !alias.scope !391
  %wide.load179 = load <2 x double>, ptr %i.hg, align 8, !tbaa !67, !alias.scope !391
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %index ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %wide.load180 = load <2 x double>, ptr %i.hh, align 8, !tbaa !67, !alias.scope !392
  %wide.load181 = load <2 x double>, ptr %i.hi, align 8, !tbaa !67, !alias.scope !392
  %i.hj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load180)
  %i.hk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load179, <2 x double> %wide.load181)
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %index ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store <2 x double> %i.hj, ptr %i.hl, align 8, !tbaa !67, !alias.scope !393, !noalias !394
  store <2 x double> %i.hk, ptr %i.hm, align 8, !tbaa !67, !alias.scope !393, !noalias !394
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hn = icmp eq i64 %index.next, %n.vec
  br i1 %i.hn, label %middle.block, label %vector.body, !llvm.loop !375

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.195.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 6 uses
  %.neg = or disjoint i64 %.195.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ho = load double, ptr %i.hc, align 8, !tbaa !67
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %.195.ph
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !67
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %.195.ph
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !67
  %i.ht = tail call double @llvm.fmuladd.f64(double %i.ho, double %i.hq, double %i.hs)
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %.195.ph
  store double %i.ht, ptr %i.hu, align 8, !tbaa !67
  %i.hv = or disjoint i64 %.195.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.195.unr = phi i64 [ %.195.ph, %scalar.ph.preheader ], [ %i.hv, %scalar.ph.prol ]
  %i.hw = icmp eq i64 %i.eg, %.neg
  br i1 %i.hw, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.195 = phi i64 [ %i.im, %scalar.ph ], [ %.195.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.hx = load double, ptr %i.hc, align 8, !tbaa !67
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %.195
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !67
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %.195
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !67
  %i.ic = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.hz, double %i.ib)
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %.195
  store double %i.ic, ptr %i.id, align 8, !tbaa !67
  %i.ie = add nuw nsw i64 %.195, 1                ; 3 uses
  %i.if = load double, ptr %i.hc, align 8, !tbaa !67
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.ie
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !67
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.ie
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !67
  %i.ik = tail call double @llvm.fmuladd.f64(double %i.if, double %i.ih, double %i.ij)
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.ie
  store double %i.ik, ptr %i.il, align 8, !tbaa !67
  %i.im = add nuw nsw i64 %.195, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.im, %i.eg
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !376

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond125.not, label %._crit_edge99, label %.lr.ph

._crit_edge99:                                    ; preds = %._crit_edge
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %.loopexit, label %.lr.ph98

.loopexit:                                        ; preds = %._crit_edge99, %._crit_edge110, %.lr.ph112, %.lr.ph101, %.preheader93, %.preheader, %bb.f, %N_VScaleAddMulti_Serial.exit, %bb.c
  ret i32 0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef i32 @N_VLinearCombinationVectorArray_Serial(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(address) %4) #18 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !75     ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 5 uses
  %i.c = icmp eq i32 %0, 1
  br i1 %i.c, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.k [
    i32 1, label %bb.c
    i32 2, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = load double, ptr %2, align 8, !tbaa !67  ; 10 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !72     ; 4 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !57 ; 2 uses
  %.val.val.i = load i64, ptr %.val.i, align 8, !tbaa !61 ; 5 uses
  %i.g = getelementptr i8, ptr %.val.i, i64 16
  %.val.val23.i = load ptr, ptr %i.g, align 8, !tbaa !63 ; 2 uses
  %i.h = icmp sgt i64 %.val.val.i, 0
  br i1 %i.h, label %.lr.ph.i.i.preheader, label %N_VScale_Serial.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %min.iters.check490 = icmp ult i64 %.val.val.i, 4
  br i1 %min.iters.check490, label %.lr.ph.i.i.preheader505, label %vector.ph491

vector.ph491:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec492 = and i64 %.val.val.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert493 = insertelement <2 x double> poison, double %i.d, i64 0
  %broadcast.splat494 = shufflevector <2 x double> %broadcast.splatinsert493, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body495

vector.body495:                                   ; preds = %vector.body495, %vector.ph491
  %index496 = phi i64 [ 0, %vector.ph491 ], [ %index.next499, %vector.body495 ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.val.val23.i, i64 %index496 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %wide.load497 = load <2 x double>, ptr %i.i, align 8, !tbaa !67
  %wide.load498 = load <2 x double>, ptr %i.j, align 8, !tbaa !67
  %i.k = fmul <2 x double> %broadcast.splat494, %wide.load497
  %i.l = fmul <2 x double> %broadcast.splat494, %wide.load498
  store <2 x double> %i.k, ptr %i.i, align 8, !tbaa !67
  store <2 x double> %i.l, ptr %i.j, align 8, !tbaa !67
  %index.next499 = add nuw i64 %index496, 4       ; 2 uses
  %i.m = icmp eq i64 %index.next499, %n.vec492
  br i1 %i.m, label %middle.block500, label %vector.body495, !llvm.loop !395

middle.block500:                                  ; preds = %vector.body495
  %cmp.n501 = icmp eq i64 %.val.val.i, %n.vec492
  br i1 %cmp.n501, label %N_VScale_Serial.exit, label %.lr.ph.i.i.preheader505

.lr.ph.i.i.preheader505:                          ; preds = %.lr.ph.i.i.preheader, %middle.block500
  %.01.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec492, %middle.block500 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader505, %.lr.ph.i.i
  %.01.i.i = phi i64 [ %i.q, %.lr.ph.i.i ], [ %.01.i.i.ph, %.lr.ph.i.i.preheader505 ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val.val23.i, i64 %.01.i.i ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !67
  %i.p = fmul double %i.d, %i.o
  store double %i.p, ptr %i.n, align 8, !tbaa !67
  %i.q = add nuw nsw i64 %.01.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.q, %.val.val.i
  br i1 %exitcond.not.i.i, label %N_VScale_Serial.exit, label %.lr.ph.i.i, !llvm.loop !396

bb.e:                                             ; preds = %bb.c
  %i.r = fcmp oeq double %i.d, 1.000000e+00
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val24.i = load ptr, ptr %i.b, align 8, !tbaa !57 ; 2 uses
  %.val25.i = load ptr, ptr %i.e, align 8, !tbaa !57
  %.val24.val.i = load i64, ptr %.val24.i, align 8, !tbaa !61 ; 7 uses
  %i.s = getelementptr i8, ptr %.val24.i, i64 16
  %.val24.val26.i = load ptr, ptr %i.s, align 8, !tbaa !63 ; 7 uses
  %i.t = getelementptr i8, ptr %.val25.i, i64 16
  %.val25.val.i = load ptr, ptr %i.t, align 8, !tbaa !63 ; 7 uses
  %i.u = icmp sgt i64 %.val24.val.i, 0
  br i1 %i.u, label %.lr.ph.i30.i.preheader, label %N_VScale_Serial.exit

.lr.ph.i30.i.preheader:                           ; preds = %bb.f
  %.val25.val.i473 = ptrtoaddr ptr %.val25.val.i to i64
  %.val24.val26.i474 = ptrtoaddr ptr %.val24.val26.i to i64
  %min.iters.check476 = icmp ult i64 %.val24.val.i, 8
  %i.v = sub i64 %.val24.val26.i474, %.val25.val.i473
  %diff.check478 = icmp ugt i64 %i.v, -32
  %or.cond = select i1 %min.iters.check476, i1 true, i1 %diff.check478
  br i1 %or.cond, label %.lr.ph.i30.i.preheader506, label %vector.ph479

vector.ph479:                                     ; preds = %.lr.ph.i30.i.preheader
  %n.vec480 = and i64 %.val24.val.i, 9223372036854775804 ; 3 uses
  br label %vector.body481

vector.body481:                                   ; preds = %vector.body481, %vector.ph479
  %index482 = phi i64 [ 0, %vector.ph479 ], [ %index.next485, %vector.body481 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.val24.val26.i, i64 %index482 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load483 = load <2 x double>, ptr %i.w, align 8, !tbaa !67
  %wide.load484 = load <2 x double>, ptr %i.x, align 8, !tbaa !67
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.val25.val.i, i64 %index482 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
end_hunk_2
begin_hunk_3_@N_VLinearCombinationVectorArray_Serial:bb.a
  %broadcast.splat389 = shufflevector <2 x double> %broadcast.splatinsert388, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body384

vector.body384:                                   ; preds = %vector.body384, %vector.ph382
  %index385 = phi i64 [ 0, %vector.ph382 ], [ %index.next390, %vector.body384 ] ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %index385 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16 ; 2 uses
  %wide.load386 = load <2 x double>, ptr %i.iv, align 8, !tbaa !67, !alias.scope !445, !noalias !444
  %wide.load387 = load <2 x double>, ptr %i.iw, align 8, !tbaa !67, !alias.scope !445, !noalias !444
  %i.ix = fmul <2 x double> %broadcast.splat389, %wide.load386
  %i.iy = fmul <2 x double> %broadcast.splat389, %wide.load387
  store <2 x double> %i.ix, ptr %i.iv, align 8, !tbaa !67, !alias.scope !445, !noalias !444
  store <2 x double> %i.iy, ptr %i.iw, align 8, !tbaa !67, !alias.scope !445, !noalias !444
  %index.next390 = add nuw i64 %index385, 4       ; 2 uses
  %i.iz = icmp eq i64 %index.next390, %n.vec383
  br i1 %i.iz, label %middle.block391, label %vector.body384, !llvm.loop !418

middle.block391:                                  ; preds = %vector.body384
  br i1 %cmp.n392, label %.preheader148, label %.lr.ph168.preheader513

.lr.ph168.preheader513:                           ; preds = %vector.memcheck378, %.lr.ph168.preheader, %middle.block391
  %.1166.ph = phi i64 [ 0, %vector.memcheck378 ], [ 0, %.lr.ph168.preheader ], [ %n.vec383, %middle.block391 ] ; 3 uses
  br i1 %lcmp.mod521.not, label %.lr.ph168.prol.loopexit, label %.lr.ph168.prol

.lr.ph168.prol:                                   ; preds = %.lr.ph168.preheader513, %.lr.ph168.prol
  %.1166.prol = phi i64 [ %i.je, %.lr.ph168.prol ], [ %.1166.ph, %.lr.ph168.preheader513 ] ; 2 uses
  %prol.iter522 = phi i64 [ %prol.iter522.next, %.lr.ph168.prol ], [ 0, %.lr.ph168.preheader513 ]
  %i.ja = load double, ptr %2, align 8, !tbaa !67
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %.1166.prol ; 2 uses
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !67
  %i.jd = fmul double %i.ja, %i.jc
  store double %i.jd, ptr %i.jb, align 8, !tbaa !67
  %i.je = add nuw nsw i64 %.1166.prol, 1          ; 2 uses
  %prol.iter522.next = add i64 %prol.iter522, 1   ; 2 uses
  %prol.iter522.cmp.not = icmp eq i64 %prol.iter522.next, %xtraiter520
  br i1 %prol.iter522.cmp.not, label %.lr.ph168.prol.loopexit, label %.lr.ph168.prol, !llvm.loop !419

.lr.ph168.prol.loopexit:                          ; preds = %.lr.ph168.prol, %.lr.ph168.preheader513
  %.1166.unr = phi i64 [ %.1166.ph, %.lr.ph168.preheader513 ], [ %i.je, %.lr.ph168.prol ]
  %i.jf = sub nsw i64 %.1166.ph, %i.gc
  %i.jg = icmp ugt i64 %i.jf, -4
  br i1 %i.jg, label %.preheader148, label %.lr.ph168

.preheader148:                                    ; preds = %.lr.ph168.prol.loopexit, %.lr.ph168, %middle.block391
  br i1 %brmerge196, label %._crit_edge175.split, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %.preheader148
  %scevgep346 = getelementptr i8, ptr %i.is, i64 %i.gq ; 2 uses
  %bound0350 = icmp ult ptr %i.is, %scevgep344
  %bound1351 = icmp ult ptr %scevgep345, %scevgep346
  %found.conflict352 = and i1 %bound0350, %bound1351
  br label %.lr.ph171

.lr.ph168:                                        ; preds = %.lr.ph168.prol.loopexit, %.lr.ph168
  %.1166 = phi i64 [ %i.ka, %.lr.ph168 ], [ %.1166.unr, %.lr.ph168.prol.loopexit ] ; 5 uses
  %i.jh = load double, ptr %2, align 8, !tbaa !67
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %.1166 ; 2 uses
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !67
  %i.jk = fmul double %i.jh, %i.jj
  store double %i.jk, ptr %i.ji, align 8, !tbaa !67
  %i.jl = load double, ptr %2, align 8, !tbaa !67
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %.1166
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 2 uses
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !67
  %i.jp = fmul double %i.jl, %i.jo
  store double %i.jp, ptr %i.jn, align 8, !tbaa !67
  %i.jq = load double, ptr %2, align 8, !tbaa !67
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %.1166
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 2 uses
  %i.jt = load double, ptr %i.js, align 8, !tbaa !67
  %i.ju = fmul double %i.jq, %i.jt
  store double %i.ju, ptr %i.js, align 8, !tbaa !67
  %i.jv = load double, ptr %2, align 8, !tbaa !67
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %.1166
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 24 ; 2 uses
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !67
  %i.jz = fmul double %i.jv, %i.jy
  store double %i.jz, ptr %i.jx, align 8, !tbaa !67
  %i.ka = add nuw nsw i64 %.1166, 4               ; 2 uses
  %exitcond219.not.3 = icmp eq i64 %i.ka, %i.gc
  br i1 %exitcond219.not.3, label %.preheader148, label %.lr.ph168, !llvm.loop !420

.lr.ph171:                                        ; preds = %.lr.ph171.preheader, %._crit_edge172
  %indvars.iv221 = phi i64 [ %indvars.iv.next222, %._crit_edge172 ], [ 1, %.lr.ph171.preheader ] ; 3 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv221
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !75
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv226
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !72
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !57
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !63 ; 6 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv221 ; 4 uses
  br i1 %min.iters.check348, label %scalar.ph347.preheader, label %vector.memcheck349

vector.memcheck349:                               ; preds = %.lr.ph171
  %i.kj = getelementptr i8, ptr %i.kh, i64 %i.gq
  %bound0353 = icmp ult ptr %i.is, %i.kj
  %bound1354 = icmp ult ptr %i.kh, %scevgep346
  %found.conflict355 = and i1 %bound0353, %bound1354
  %conflict.rdx356 = or i1 %found.conflict352, %found.conflict355
  br i1 %conflict.rdx356, label %scalar.ph347.preheader, label %vector.ph357

vector.ph357:                                     ; preds = %vector.memcheck349
  %i.kk = load double, ptr %i.ki, align 8, !tbaa !67, !alias.scope !446
  %broadcast.splatinsert365 = insertelement <2 x double> poison, double %i.kk, i64 0
  %broadcast.splat366 = shufflevector <2 x double> %broadcast.splatinsert365, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body359

vector.body359:                                   ; preds = %vector.body359, %vector.ph357
  %index360 = phi i64 [ 0, %vector.ph357 ], [ %index.next367, %vector.body359 ] ; 3 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %index360 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %wide.load361 = load <2 x double>, ptr %i.kl, align 8, !tbaa !67, !alias.scope !447
  %wide.load362 = load <2 x double>, ptr %i.km, align 8, !tbaa !67, !alias.scope !447
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %index360 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16 ; 2 uses
  %wide.load363 = load <2 x double>, ptr %i.kn, align 8, !tbaa !67, !alias.scope !448, !noalias !449
  %wide.load364 = load <2 x double>, ptr %i.ko, align 8, !tbaa !67, !alias.scope !448, !noalias !449
  %i.kp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat366, <2 x double> %wide.load361, <2 x double> %wide.load363)
  %i.kq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat366, <2 x double> %wide.load362, <2 x double> %wide.load364)
  store <2 x double> %i.kp, ptr %i.kn, align 8, !tbaa !67, !alias.scope !448, !noalias !449
  store <2 x double> %i.kq, ptr %i.ko, align 8, !tbaa !67, !alias.scope !448, !noalias !449
  %index.next367 = add nuw i64 %index360, 4       ; 2 uses
  %i.kr = icmp eq i64 %index.next367, %n.vec358
  br i1 %i.kr, label %middle.block368, label %vector.body359, !llvm.loop !425

middle.block368:                                  ; preds = %vector.body359
  br i1 %cmp.n369, label %._crit_edge172, label %scalar.ph347.preheader

scalar.ph347.preheader:                           ; preds = %vector.memcheck349, %.lr.ph171, %middle.block368
  %.2169.ph = phi i64 [ 0, %vector.memcheck349 ], [ 0, %.lr.ph171 ], [ %n.vec358, %middle.block368 ] ; 5 uses
  %.neg541 = or disjoint i64 %.2169.ph, 1
  br i1 %lcmp.mod524.not, label %scalar.ph347.prol.loopexit, label %scalar.ph347.prol

scalar.ph347.prol:                                ; preds = %scalar.ph347.preheader
  %i.ks = load double, ptr %i.ki, align 8, !tbaa !67
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %.2169.ph
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !67
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %.2169.ph ; 2 uses
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !67
  %i.kx = tail call double @llvm.fmuladd.f64(double %i.ks, double %i.ku, double %i.kw)
  store double %i.kx, ptr %i.kv, align 8, !tbaa !67
  %i.ky = or disjoint i64 %.2169.ph, 1
  br label %scalar.ph347.prol.loopexit

scalar.ph347.prol.loopexit:                       ; preds = %scalar.ph347.prol, %scalar.ph347.preheader
  %.2169.unr = phi i64 [ %.2169.ph, %scalar.ph347.preheader ], [ %i.ky, %scalar.ph347.prol ]
  %i.kz = icmp eq i64 %i.gc, %.neg541
  br i1 %i.kz, label %._crit_edge172, label %scalar.ph347

scalar.ph347:                                     ; preds = %scalar.ph347.prol.loopexit, %scalar.ph347
  %.2169 = phi i64 [ %i.ln, %scalar.ph347 ], [ %.2169.unr, %scalar.ph347.prol.loopexit ] ; 4 uses
  %i.la = load double, ptr %i.ki, align 8, !tbaa !67
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %.2169
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !67
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %.2169 ; 2 uses
  %i.le = load double, ptr %i.ld, align 8, !tbaa !67
  %i.lf = tail call double @llvm.fmuladd.f64(double %i.la, double %i.lc, double %i.le)
  store double %i.lf, ptr %i.ld, align 8, !tbaa !67
  %i.lg = add nuw nsw i64 %.2169, 1               ; 2 uses
  %i.lh = load double, ptr %i.ki, align 8, !tbaa !67
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.lg
  %i.lj = load double, ptr %i.li, align 8, !tbaa !67
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.lg ; 2 uses
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !67
  %i.lm = tail call double @llvm.fmuladd.f64(double %i.lh, double %i.lj, double %i.ll)
  store double %i.lm, ptr %i.lk, align 8, !tbaa !67
  %i.ln = add nuw nsw i64 %.2169, 2               ; 2 uses
  %exitcond220.not.1 = icmp eq i64 %i.ln, %i.gc
  br i1 %exitcond220.not.1, label %._crit_edge172, label %scalar.ph347, !llvm.loop !426

._crit_edge172:                                   ; preds = %scalar.ph347.prol.loopexit, %scalar.ph347, %middle.block368
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %exitcond225.not = icmp eq i64 %indvars.iv.next222, %wide.trip.count224
  br i1 %exitcond225.not, label %._crit_edge175.split, label %.lr.ph171

._crit_edge175.split:                             ; preds = %._crit_edge172, %bb.q, %.preheader148
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count229
  br i1 %exitcond230.not, label %N_VScale_Serial.exit, label %bb.q

bb.r:                                             ; preds = %.lr.ph165, %.critedge
  %indvars.iv214 = phi i64 [ 0, %.lr.ph165 ], [ %indvars.iv.next215, %.critedge ] ; 4 uses
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv214
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !72
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !57
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !63 ; 8 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv214
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !72
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !57
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !63 ; 16 uses
  br i1 %i.gf, label %.lr.ph156.preheader, label %.critedge

.lr.ph156.preheader:                              ; preds = %bb.r
  br i1 %min.iters.check311, label %.lr.ph156.preheader515, label %vector.memcheck312

vector.memcheck312:                               ; preds = %.lr.ph156.preheader
  %i.ly = getelementptr i8, ptr %i.lx, i64 %i.gi  ; 2 uses
  %5 = getelementptr i8, ptr %i.ls, i64 %i.gi
  %bound0313 = icmp ult ptr %i.lx, %scevgep280
  %bound1314 = icmp ult ptr %2, %i.ly
  %found.conflict315 = and i1 %bound0313, %bound1314
  %bound0316 = icmp ult ptr %i.lx, %5
  %bound1317 = icmp ult ptr %i.ls, %i.ly
  %found.conflict318 = and i1 %bound0316, %bound1317
  %conflict.rdx319 = or i1 %found.conflict315, %found.conflict318
  br i1 %conflict.rdx319, label %.lr.ph156.preheader515, label %vector.ph320

vector.ph320:                                     ; preds = %vector.memcheck312
  %i.lz = load double, ptr %2, align 8, !tbaa !67, !alias.scope !450
  %broadcast.splatinsert326 = insertelement <2 x double> poison, double %i.lz, i64 0
  %broadcast.splat327 = shufflevector <2 x double> %broadcast.splatinsert326, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body322

vector.body322:                                   ; preds = %vector.body322, %vector.ph320
  %index323 = phi i64 [ 0, %vector.ph320 ], [ %index.next328, %vector.body322 ] ; 3 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %index323 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %wide.load324 = load <2 x double>, ptr %i.ma, align 8, !tbaa !67, !alias.scope !451
  %wide.load325 = load <2 x double>, ptr %i.mb, align 8, !tbaa !67, !alias.scope !451
  %i.mc = fmul <2 x double> %broadcast.splat327, %wide.load324
  %i.md = fmul <2 x double> %broadcast.splat327, %wide.load325
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %index323 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  store <2 x double> %i.mc, ptr %i.me, align 8, !tbaa !67, !alias.scope !452, !noalias !453
  store <2 x double> %i.md, ptr %i.mf, align 8, !tbaa !67, !alias.scope !452, !noalias !453
  %index.next328 = add nuw i64 %index323, 4       ; 2 uses
  %i.mg = icmp eq i64 %index.next328, %n.vec321
  br i1 %i.mg, label %middle.block329, label %vector.body322, !llvm.loop !431

middle.block329:                                  ; preds = %vector.body322
  br i1 %cmp.n330, label %.preheader151, label %.lr.ph156.preheader515

.lr.ph156.preheader515:                           ; preds = %vector.memcheck312, %.lr.ph156.preheader, %middle.block329
  %.3154.ph = phi i64 [ 0, %vector.memcheck312 ], [ 0, %.lr.ph156.preheader ], [ %n.vec321, %middle.block329 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph156.prol.loopexit, label %.lr.ph156.prol

.lr.ph156.prol:                                   ; preds = %.lr.ph156.preheader515, %.lr.ph156.prol
  %.3154.prol = phi i64 [ %i.mm, %.lr.ph156.prol ], [ %.3154.ph, %.lr.ph156.preheader515 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph156.prol ], [ 0, %.lr.ph156.preheader515 ]
  %i.mh = load double, ptr %2, align 8, !tbaa !67
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %.3154.prol
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !67
  %i.mk = fmul double %i.mh, %i.mj
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %.3154.prol
  store double %i.mk, ptr %i.ml, align 8, !tbaa !67
  %i.mm = add nuw nsw i64 %.3154.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph156.prol.loopexit, label %.lr.ph156.prol, !llvm.loop !432

.lr.ph156.prol.loopexit:                          ; preds = %.lr.ph156.prol, %.lr.ph156.preheader515
  %.3154.unr = phi i64 [ %.3154.ph, %.lr.ph156.preheader515 ], [ %i.mm, %.lr.ph156.prol ]
  %i.mn = sub nsw i64 %.3154.ph, %i.gc
  %i.mo = icmp ugt i64 %i.mn, -4
  br i1 %i.mo, label %.preheader151, label %.lr.ph156

.preheader151:                                    ; preds = %.lr.ph156.prol.loopexit, %.lr.ph156, %middle.block329
  br i1 %brmerge199, label %.critedge, label %.lr.ph159.preheader

.lr.ph159.preheader:                              ; preds = %.preheader151
  %scevgep281 = getelementptr i8, ptr %i.lx, i64 %i.gi ; 2 uses
  %bound0 = icmp ult ptr %i.lx, %scevgep
  %bound1 = icmp ult ptr %scevgep280, %scevgep281
  %found.conflict = and i1 %bound0, %bound1
  br label %.lr.ph159

.lr.ph156:                                        ; preds = %.lr.ph156.prol.loopexit, %.lr.ph156
  %.3154 = phi i64 [ %i.nm, %.lr.ph156 ], [ %.3154.unr, %.lr.ph156.prol.loopexit ] ; 6 uses
  %i.mp = load double, ptr %2, align 8, !tbaa !67
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %.3154
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !67
  %i.ms = fmul double %i.mp, %i.mr
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %.3154
  store double %i.ms, ptr %i.mt, align 8, !tbaa !67
  %i.mu = add nuw nsw i64 %.3154, 1               ; 2 uses
  %i.mv = load double, ptr %2, align 8, !tbaa !67
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %i.mu
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !67
  %i.my = fmul double %i.mv, %i.mx
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %i.mu
  store double %i.my, ptr %i.mz, align 8, !tbaa !67
  %i.na = add nuw nsw i64 %.3154, 2               ; 2 uses
  %i.nb = load double, ptr %2, align 8, !tbaa !67
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %i.na
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !67
  %i.ne = fmul double %i.nb, %i.nd
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %i.na
  store double %i.ne, ptr %i.nf, align 8, !tbaa !67
  %i.ng = add nuw nsw i64 %.3154, 3               ; 2 uses
  %i.nh = load double, ptr %2, align 8, !tbaa !67
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %i.ng
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !67
  %i.nk = fmul double %i.nh, %i.nj
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %i.ng
  store double %i.nk, ptr %i.nl, align 8, !tbaa !67
  %i.nm = add nuw nsw i64 %.3154, 4               ; 2 uses
  %exitcond207.not.3 = icmp eq i64 %i.nm, %i.gc
  br i1 %exitcond207.not.3, label %.preheader151, label %.lr.ph156, !llvm.loop !433

.lr.ph159:                                        ; preds = %.lr.ph159.preheader, %._crit_edge160
  %indvars.iv209 = phi i64 [ %indvars.iv.next210, %._crit_edge160 ], [ 1, %.lr.ph159.preheader ] ; 3 uses
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv209
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !75
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %indvars.iv214
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !72
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !57
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !63 ; 6 uses
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv209 ; 4 uses
  br i1 %min.iters.check283, label %scalar.ph282.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph159
  %i.nv = getelementptr i8, ptr %i.nt, i64 %i.gi
  %bound0284 = icmp ult ptr %i.lx, %i.nv
  %bound1285 = icmp ult ptr %i.nt, %scevgep281
  %found.conflict286 = and i1 %bound0284, %bound1285
  %conflict.rdx = or i1 %found.conflict, %found.conflict286
  br i1 %conflict.rdx, label %scalar.ph282.preheader, label %vector.ph287

vector.ph287:                                     ; preds = %vector.memcheck
  %i.nw = load double, ptr %i.nu, align 8, !tbaa !67, !alias.scope !454
  %broadcast.splatinsert294 = insertelement <2 x double> poison, double %i.nw, i64 0
  %broadcast.splat295 = shufflevector <2 x double> %broadcast.splatinsert294, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body289

vector.body289:                                   ; preds = %vector.body289, %vector.ph287
  %index290 = phi i64 [ 0, %vector.ph287 ], [ %index.next296, %vector.body289 ] ; 3 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %index290 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %wide.load = load <2 x double>, ptr %i.nx, align 8, !tbaa !67, !alias.scope !455
  %wide.load291 = load <2 x double>, ptr %i.ny, align 8, !tbaa !67, !alias.scope !455
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %index290 ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 16 ; 2 uses
  %wide.load292 = load <2 x double>, ptr %i.nz, align 8, !tbaa !67, !alias.scope !456, !noalias !457
  %wide.load293 = load <2 x double>, ptr %i.oa, align 8, !tbaa !67, !alias.scope !456, !noalias !457
  %i.ob = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat295, <2 x double> %wide.load, <2 x double> %wide.load292)
  %i.oc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat295, <2 x double> %wide.load291, <2 x double> %wide.load293)
  store <2 x double> %i.ob, ptr %i.nz, align 8, !tbaa !67, !alias.scope !456, !noalias !457
  store <2 x double> %i.oc, ptr %i.oa, align 8, !tbaa !67, !alias.scope !456, !noalias !457
  %index.next296 = add nuw i64 %index290, 4       ; 2 uses
  %i.od = icmp eq i64 %index.next296, %n.vec288
  br i1 %i.od, label %middle.block297, label %vector.body289, !llvm.loop !438

middle.block297:                                  ; preds = %vector.body289
  br i1 %cmp.n298, label %._crit_edge160, label %scalar.ph282.preheader

scalar.ph282.preheader:                           ; preds = %vector.memcheck, %.lr.ph159, %middle.block297
  %.4157.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph159 ], [ %n.vec288, %middle.block297 ] ; 5 uses
  %.neg = or disjoint i64 %.4157.ph, 1
  br i1 %lcmp.mod518.not, label %scalar.ph282.prol.loopexit, label %scalar.ph282.prol

scalar.ph282.prol:                                ; preds = %scalar.ph282.preheader
  %i.oe = load double, ptr %i.nu, align 8, !tbaa !67
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %.4157.ph
  %i.og = load double, ptr %i.of, align 8, !tbaa !67
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %.4157.ph ; 2 uses
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !67
  %i.oj = tail call double @llvm.fmuladd.f64(double %i.oe, double %i.og, double %i.oi)
  store double %i.oj, ptr %i.oh, align 8, !tbaa !67
  %i.ok = or disjoint i64 %.4157.ph, 1
  br label %scalar.ph282.prol.loopexit

scalar.ph282.prol.loopexit:                       ; preds = %scalar.ph282.prol, %scalar.ph282.preheader
  %.4157.unr = phi i64 [ %.4157.ph, %scalar.ph282.preheader ], [ %i.ok, %scalar.ph282.prol ]
  %i.ol = icmp eq i64 %i.gc, %.neg
  br i1 %i.ol, label %._crit_edge160, label %scalar.ph282

scalar.ph282:                                     ; preds = %scalar.ph282.prol.loopexit, %scalar.ph282
  %.4157 = phi i64 [ %i.oz, %scalar.ph282 ], [ %.4157.unr, %scalar.ph282.prol.loopexit ] ; 4 uses
  %i.om = load double, ptr %i.nu, align 8, !tbaa !67
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %.4157
  %i.oo = load double, ptr %i.on, align 8, !tbaa !67
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %.4157 ; 2 uses
  %i.oq = load double, ptr %i.op, align 8, !tbaa !67
  %i.or = tail call double @llvm.fmuladd.f64(double %i.om, double %i.oo, double %i.oq)
  store double %i.or, ptr %i.op, align 8, !tbaa !67
  %i.os = add nuw nsw i64 %.4157, 1               ; 2 uses
  %i.ot = load double, ptr %i.nu, align 8, !tbaa !67
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.os
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !67
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %i.os ; 2 uses
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !67
  %i.oy = tail call double @llvm.fmuladd.f64(double %i.ot, double %i.ov, double %i.ox)
  store double %i.oy, ptr %i.ow, align 8, !tbaa !67
  %i.oz = add nuw nsw i64 %.4157, 2               ; 2 uses
  %exitcond208.not.1 = icmp eq i64 %i.oz, %i.gc
  br i1 %exitcond208.not.1, label %._crit_edge160, label %scalar.ph282, !llvm.loop !439

._crit_edge160:                                   ; preds = %scalar.ph282.prol.loopexit, %scalar.ph282, %middle.block297
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %exitcond213.not = icmp eq i64 %indvars.iv.next210, %wide.trip.count212
  br i1 %exitcond213.not, label %.critedge, label %.lr.ph159

.critedge:                                        ; preds = %._crit_edge160, %bb.r, %.preheader151
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %exitcond218.not = icmp eq i64 %indvars.iv.next215, %wide.trip.count217
  br i1 %exitcond218.not, label %N_VScale_Serial.exit, label %bb.r

N_VScale_Serial.exit:                             ; preds = %.critedge, %._crit_edge175.split, %._crit_edge185, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph.i33.i.prol.loopexit, %.lr.ph.i33.i, %.lr.ph.i30.i.prol.loopexit, %.lr.ph.i30.i, %.lr.ph.i.i, %middle.block446, %middle.block466, %middle.block486, %middle.block500, %.lr.ph187, %.critedge.preheader, %.preheader149, %.preheader, %bb.i, %bb.h, %bb.f, %bb.d, %bb.n, %._crit_edge, %._crit_edge192, %bb.j
  ret i32 0
}
end_hunk_3
