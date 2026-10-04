Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/avf_showcqt?download=true
inline.NumInlined: 34
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 17
begin_hunk_0_@init_cscheme:bb.a
  %.016 = phi i32 [ -22, %.loopexit19 ], [ 0, %.preheader.5 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.016
}

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

declare ptr @ff_make_sample_format_list(ptr noundef) local_unnamed_addr #3

declare i32 @ff_formats_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_set_common_channel_layouts_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ff_make_pixel_format_list(ptr noundef) local_unnamed_addr #3

declare i32 @ff_outlink_get_status(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_inlink_consume_samples(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !49
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8, !tbaa !49
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 60 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 112 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 156 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %.pre198 = load i32, ptr %i.j, align 4, !tbaa !98
  %.pre199 = load i32, ptr %i.k, align 8, !tbaa !79
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %._crit_edge173
  %i.s = phi i32 [ %.pre199, %.preheader ], [ %i.aq, %._crit_edge173 ] ; 2 uses
  %i.t = phi i32 [ %.pre198, %.preheader ], [ %i.bp, %._crit_edge173 ] ; 3 uses
  %i.u = icmp slt i32 %i.t, %i.s
  br i1 %i.u, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !74
  %i.w = load i32, ptr %i.m, align 4, !tbaa !73
  %i.x = sdiv i32 %i.w, 2
  %i.y = sub i32 %i.s, %i.t
  %i.z = add i32 %i.y, %i.x
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.aa
  %i.ac = sext i32 %i.t to i64
  %i.ad = shl nsw i64 %i.ac, 3
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %i.ad, i1 false)
  %.val140 = load ptr, ptr %i.e, align 8, !tbaa !44
  %.val141 = load ptr, ptr %i.h, align 8, !tbaa !19
  %.val140.val = load ptr, ptr %.val140, align 8, !tbaa !43
  %i.ae = call fastcc i32 @plot_cqt(ptr %.val140.val, ptr %.val141, ptr noundef %i.b) ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load i32, ptr %i.n, align 4, !tbaa !45
  %i.ah = load i32, ptr %i.o, align 8, !tbaa !46
  %i.ai = load i32, ptr %i.p, align 8, !tbaa !47
  %i.aj = add nsw i32 %i.ai, %i.ah                ; 2 uses
  %i.ak = load i32, ptr %i.q, align 4, !tbaa !48  ; 2 uses
  %i.al = sdiv i32 %i.aj, %i.ak
  %i.am = add nsw i32 %i.al, %i.ag                ; 3 uses
  %i.an = srem i32 %i.aj, %i.ak
  store i32 %i.an, ptr %i.p, align 8, !tbaa !47
  %i.ao = load i32, ptr %i.m, align 4, !tbaa !73
  %i.ap = sdiv i32 %i.ao, 2
  %i.aq = load i32, ptr %i.k, align 8, !tbaa !79  ; 2 uses
  %i.ar = sub i32 %i.aq, %i.am
  %i.as = add i32 %i.ar, %i.ap                    ; 3 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph172, label %._crit_edge173

.lr.ph172:                                        ; preds = %bb.d
  %i.au = load ptr, ptr %i.l, align 8, !tbaa !74  ; 7 uses
  %i.av = sext i32 %i.am to i64                   ; 2 uses
  %wide.trip.count192 = zext nneg i32 %i.as to i64 ; 5 uses
  %invariant.gep246 = getelementptr [8 x i8], ptr %i.au, i64 %i.av ; 6 uses
  %min.iters.check332 = icmp ult i32 %i.as, 6
  %i.aw = shl nsw i64 %i.av, 3
  %diff.check330 = icmp ugt i64 %i.aw, -32
  %or.cond = select i1 %min.iters.check332, i1 true, i1 %diff.check330
  br i1 %or.cond, label %scalar.ph331.preheader, label %vector.ph333

vector.ph333:                                     ; preds = %.lr.ph172
  %n.vec334 = and i64 %wide.trip.count192, 2147483644 ; 3 uses
  br label %vector.body335

vector.body335:                                   ; preds = %vector.body335, %vector.ph333
  %index336 = phi i64 [ 0, %vector.ph333 ], [ %index.next339, %vector.body335 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index336 ; 2 uses
  %i.ay = getelementptr [8 x i8], ptr %invariant.gep246, i64 %index336 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  %wide.load337 = load <2 x i64>, ptr %i.ay, align 4, !tbaa !58
  %wide.load338 = load <2 x i64>, ptr %i.az, align 4, !tbaa !58
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x i64> %wide.load337, ptr %i.ax, align 4, !tbaa !58
  store <2 x i64> %wide.load338, ptr %i.ba, align 4, !tbaa !58
  %index.next339 = add nuw i64 %index336, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next339, %n.vec334
  br i1 %i.bb, label %middle.block340, label %vector.body335, !llvm.loop !189

middle.block340:                                  ; preds = %vector.body335
  %cmp.n341 = icmp eq i64 %n.vec334, %wide.trip.count192
  br i1 %cmp.n341, label %._crit_edge173, label %scalar.ph331.preheader

scalar.ph331.preheader:                           ; preds = %.lr.ph172, %middle.block340
  %indvars.iv189.ph = phi i64 [ 0, %.lr.ph172 ], [ %n.vec334, %middle.block340 ] ; 3 uses
  %xtraiter380 = and i64 %wide.trip.count192, 3   ; 2 uses
  %lcmp.mod381.not = icmp eq i64 %xtraiter380, 0
  br i1 %lcmp.mod381.not, label %scalar.ph331.prol.loopexit, label %scalar.ph331.prol

scalar.ph331.prol:                                ; preds = %scalar.ph331.preheader, %scalar.ph331.prol
  %indvars.iv189.prol = phi i64 [ %indvars.iv.next190.prol, %scalar.ph331.prol ], [ %indvars.iv189.ph, %scalar.ph331.preheader ] ; 3 uses
  %prol.iter382 = phi i64 [ %prol.iter382.next, %scalar.ph331.prol ], [ 0, %scalar.ph331.preheader ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv189.prol
  %gep247.prol = getelementptr [8 x i8], ptr %invariant.gep246, i64 %indvars.iv189.prol
  %i.bd = load i64, ptr %gep247.prol, align 4, !tbaa !58
  store i64 %i.bd, ptr %i.bc, align 4, !tbaa !58
  %indvars.iv.next190.prol = add nuw nsw i64 %indvars.iv189.prol, 1 ; 2 uses
  %prol.iter382.next = add i64 %prol.iter382, 1   ; 2 uses
  %prol.iter382.cmp.not = icmp eq i64 %prol.iter382.next, %xtraiter380
  br i1 %prol.iter382.cmp.not, label %scalar.ph331.prol.loopexit, label %scalar.ph331.prol, !llvm.loop !190

scalar.ph331.prol.loopexit:                       ; preds = %scalar.ph331.prol, %scalar.ph331.preheader
  %indvars.iv189.unr = phi i64 [ %indvars.iv189.ph, %scalar.ph331.preheader ], [ %indvars.iv.next190.prol, %scalar.ph331.prol ]
  %i.be = sub nsw i64 %indvars.iv189.ph, %wide.trip.count192
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %._crit_edge173, label %scalar.ph331

scalar.ph331:                                     ; preds = %scalar.ph331.prol.loopexit, %scalar.ph331
  %indvars.iv189 = phi i64 [ %indvars.iv.next190.3, %scalar.ph331 ], [ %indvars.iv189.unr, %scalar.ph331.prol.loopexit ] ; 6 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv189
  %gep247 = getelementptr [8 x i8], ptr %invariant.gep246, i64 %indvars.iv189
  %i.bh = load i64, ptr %gep247, align 4, !tbaa !58
  store i64 %i.bh, ptr %i.bg, align 4, !tbaa !58
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next190
  %gep247.1 = getelementptr [8 x i8], ptr %invariant.gep246, i64 %indvars.iv.next190
  %i.bj = load i64, ptr %gep247.1, align 4, !tbaa !58
  store i64 %i.bj, ptr %i.bi, align 4, !tbaa !58
  %indvars.iv.next190.1 = add nuw nsw i64 %indvars.iv189, 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next190.1
  %gep247.2 = getelementptr [8 x i8], ptr %invariant.gep246, i64 %indvars.iv.next190.1
  %i.bl = load i64, ptr %gep247.2, align 4, !tbaa !58
  store i64 %i.bl, ptr %i.bk, align 4, !tbaa !58
  %indvars.iv.next190.2 = add nuw nsw i64 %indvars.iv189, 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next190.2
  %gep247.3 = getelementptr [8 x i8], ptr %invariant.gep246, i64 %indvars.iv.next190.2
  %i.bn = load i64, ptr %gep247.3, align 4, !tbaa !58
  store i64 %i.bn, ptr %i.bm, align 4, !tbaa !58
  %indvars.iv.next190.3 = add nuw nsw i64 %indvars.iv189, 4 ; 2 uses
  %exitcond193.not.3 = icmp eq i64 %indvars.iv.next190.3, %wide.trip.count192
  br i1 %exitcond193.not.3, label %._crit_edge173, label %scalar.ph331, !llvm.loop !191

._crit_edge173:                                   ; preds = %scalar.ph331.prol.loopexit, %scalar.ph331, %middle.block340, %bb.d
  %i.bo = load i32, ptr %i.j, align 4, !tbaa !98
  %i.bp = add nsw i32 %i.bo, %i.am                ; 2 uses
  store i32 %i.bp, ptr %i.j, align 4, !tbaa !98
  %i.bq = load i64, ptr %i.r, align 8, !tbaa !51
  %i.br = add nsw i64 %i.bq, 1                    ; 2 uses
  store i64 %i.br, ptr %i.r, align 8, !tbaa !51
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !49  ; 4 uses
  %.not134 = icmp eq ptr %i.bs, null
  br i1 %.not134, label %bb.b, label %bb.e, !llvm.loop !192

bb.e:                                             ; preds = %._crit_edge173
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 136
  store i64 %i.br, ptr %i.bt, align 8, !tbaa !208
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 408
  store i64 1, ptr %i.bu, align 8, !tbaa !209
  %i.bv = tail call i32 @ff_filter_frame(ptr noundef %i.g, ptr noundef nonnull %i.bs) #15
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !210 ; 2 uses
  %i.by = load ptr, ptr %1, align 8, !tbaa !109   ; 12 uses
  %.not135164 = icmp eq i32 %i.bx, 0
  br i1 %.not135164, label %._crit_edge169.thread, label %.lr.ph168

.lr.ph168:                                        ; preds = %bb.f
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 156 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 60 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 112 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.cg = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.ch = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %.pre195 = load i32, ptr %i.bz, align 4, !tbaa !73
  %.pre196 = load i32, ptr %i.ca, align 8, !tbaa !79
  %.pre197 = load i32, ptr %i.cb, align 4, !tbaa !98
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph168, %.loopexit149
  %i.ck = phi i32 [ %.pre197, %.lr.ph168 ], [ %i.gp, %.loopexit149 ] ; 5 uses
  %i.cl = phi i32 [ %.pre196, %.lr.ph168 ], [ %i.gt, %.loopexit149 ]
  %i.cm = phi i32 [ %.pre195, %.lr.ph168 ], [ %i.gr, %.loopexit149 ]
  %i.cn = phi ptr [ %1, %.lr.ph168 ], [ %.pre, %.loopexit149 ]
  %.0118166 = phi i32 [ 0, %.lr.ph168 ], [ %.1119, %.loopexit149 ] ; 2 uses
  %.0125165 = phi i32 [ %i.bx, %.lr.ph168 ], [ %i.fp, %.loopexit149 ] ; 10 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 112
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !210 ; 5 uses
  %i.cq = sub nsw i32 %i.cp, %.0125165            ; 8 uses
  %i.cr = sdiv i32 %i.cm, 2
  %i.cs = add nsw i32 %i.cr, %i.cl
  %i.ct = sub i32 %i.cs, %i.ck                    ; 3 uses
  %.not137 = icmp slt i32 %.0125165, %i.ck
  %i.cu = sub nsw i32 0, %i.ct
  %i.cv = tail call i32 @llvm.smax.i32(i32 %i.cu, i32 0) ; 8 uses
  br i1 %.not137, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cw = icmp slt i32 %i.cv, %i.ck
  br i1 %i.cw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.cx = load ptr, ptr %i.cc, align 8, !tbaa !74 ; 3 uses
  %i.cy = zext nneg i32 %i.cv to i64              ; 9 uses
  %i.cz = sext i32 %i.ct to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ck to i64   ; 7 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.cx, i64 %i.cz ; 4 uses
  %i.da = sub nsw i64 %wide.trip.count, %i.cy     ; 3 uses
  %min.iters.check283 = icmp ult i64 %i.da, 28
  br i1 %min.iters.check283, label %scalar.ph282.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.db = xor i64 %i.cy, -1
  %i.dc = add nsw i64 %i.db, %wide.trip.count     ; 2 uses
  %i.dd = add i32 %i.cp, %i.cv
  %i.de = sub i32 %i.dd, %.0125165                ; 2 uses
  %i.df = shl i32 %i.de, 1
  %i.dg = trunc i64 %i.dc to i32
  %i.dh = add i32 %i.de, %i.dg
  %i.di = shl i32 %i.dh, 1
  %i.dj = icmp slt i32 %i.di, %i.df
  %i.dk = icmp ugt i64 %i.dc, 2147483647
  %i.dl = or i1 %i.dj, %i.dk
  br i1 %i.dl, label %scalar.ph282.preheader, label %vector.memcheck277

vector.memcheck277:                               ; preds = %vector.scevcheck
  %i.dm = shl nuw nsw i64 %i.cy, 3
  %i.dn = add nsw i64 %i.cz, %i.cy
  %i.do = shl nsw i64 %i.dn, 3
  %scevgep278 = getelementptr i8, ptr %i.cx, i64 %i.do
  %i.dp = add nsw i64 %i.cz, %wide.trip.count
  %i.dq = shl nsw i64 %i.dp, 3
  %scevgep279 = getelementptr i8, ptr %i.cx, i64 %i.dq
  %i.dr = add i32 %i.cp, %i.cv
  %i.ds = sub i32 %i.dr, %.0125165
  %i.dt = shl i32 %i.ds, 1
  %i.du = sext i32 %i.dt to i64
  %i.dv = shl nsw i64 %i.du, 2                    ; 2 uses
  %scevgep280 = getelementptr i8, ptr %i.by, i64 %i.dv
  %i.dw = shl nuw nsw i64 %wide.trip.count, 3
  %i.dx = add nsw i64 %i.dw, %i.dv
  %i.dy = sub nsw i64 %i.dx, %i.dm
  %scevgep281 = getelementptr i8, ptr %i.by, i64 %i.dy
  %bound0 = icmp ult ptr %scevgep278, %scevgep281
  %bound1 = icmp ult ptr %scevgep280, %scevgep279
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph282.preheader, label %vector.ph284

vector.ph284:                                     ; preds = %vector.memcheck277
  %n.vec285 = and i64 %i.da, -2                   ; 3 uses
  %i.dz = add nsw i64 %n.vec285, %i.cy
  br label %vector.body286

vector.body286:                                   ; preds = %vector.body286, %vector.ph284
  %index287 = phi i64 [ 0, %vector.ph284 ], [ %index.next289, %vector.body286 ] ; 2 uses
  %i.ea = add i64 %index287, %i.cy                ; 2 uses
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = add nsw i32 %i.cq, %i.eb
  %i.ed = shl nsw i32 %i.ec, 1
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.ee
  %wide.vec = load <4 x float>, ptr %i.ef, align 4, !tbaa !58, !alias.scope !211
  %i.eg = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ea
  store <4 x float> %wide.vec, ptr %i.eg, align 4, !tbaa !58, !alias.scope !212, !noalias !211
  %index.next289 = add nuw i64 %index287, 2       ; 2 uses
  %i.eh = icmp eq i64 %index.next289, %n.vec285
  br i1 %i.eh, label %middle.block290, label %vector.body286, !llvm.loop !196

middle.block290:                                  ; preds = %vector.body286
  %cmp.n291 = icmp eq i64 %i.da, %n.vec285
  br i1 %cmp.n291, label %._crit_edge, label %scalar.ph282.preheader

scalar.ph282.preheader:                           ; preds = %vector.memcheck277, %vector.scevcheck, %.lr.ph, %middle.block290
  %indvars.iv.ph = phi i64 [ %i.cy, %vector.memcheck277 ], [ %i.cy, %vector.scevcheck ], [ %i.cy, %.lr.ph ], [ %i.dz, %middle.block290 ] ; 6 uses
  %i.ei = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.ei, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph282.prol.loopexit, label %scalar.ph282.prol

scalar.ph282.prol:                                ; preds = %scalar.ph282.preheader
  %i.ej = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.ek = add nsw i32 %i.cq, %i.ej
  %i.el = shl nsw i32 %i.ek, 1
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.em ; 2 uses
  %i.eo = load float, ptr %i.en, align 4, !tbaa !58
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.ph ; 2 uses
  store float %i.eo, ptr %gep.prol, align 4, !tbaa !121
  %i.ep = getelementptr i8, ptr %i.en, i64 4
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !58
  %i.er = getelementptr inbounds nuw i8, ptr %gep.prol, i64 4
  store float %i.eq, ptr %i.er, align 4, !tbaa !122
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %scalar.ph282.prol.loopexit

scalar.ph282.prol.loopexit:                       ; preds = %scalar.ph282.prol, %scalar.ph282.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph282.preheader ], [ %indvars.iv.next.prol, %scalar.ph282.prol ]
  %i.es = add nsw i64 %wide.trip.count, -1
  %i.et = icmp eq i64 %indvars.iv.ph, %i.es
  br i1 %i.et, label %._crit_edge, label %scalar.ph282

scalar.ph282:                                     ; preds = %scalar.ph282.prol.loopexit, %scalar.ph282
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph282 ], [ %indvars.iv.unr, %scalar.ph282.prol.loopexit ] ; 4 uses
  %i.eu = trunc nuw nsw i64 %indvars.iv to i32
  %i.ev = add nsw i32 %i.cq, %i.eu
  %i.ew = shl nsw i32 %i.ev, 1
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.ex ; 2 uses
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !58
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  store float %i.ez, ptr %gep, align 4, !tbaa !121
  %i.fa = getelementptr i8, ptr %i.ey, i64 4
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !58
  %i.fc = getelementptr inbounds nuw i8, ptr %gep, i64 4
  store float %i.fb, ptr %i.fc, align 4, !tbaa !122
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fd = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.fe = add nsw i32 %i.cq, %i.fd
  %i.ff = shl nsw i32 %i.fe, 1
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.fg ; 2 uses
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !58
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  store float %i.fi, ptr %gep.1, align 4, !tbaa !121
  %i.fj = getelementptr i8, ptr %i.fh, i64 4
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !58
  %i.fl = getelementptr inbounds nuw i8, ptr %gep.1, i64 4
  store float %i.fk, ptr %i.fl, align 4, !tbaa !122
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph282, !llvm.loop !197

._crit_edge:                                      ; preds = %scalar.ph282.prol.loopexit, %scalar.ph282, %middle.block290, %bb.h
  %.val = load ptr, ptr %i.e, align 8, !tbaa !44
  %.val139 = load ptr, ptr %i.h, align 8, !tbaa !19
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !43
  %i.fm = call fastcc i32 @plot_cqt(ptr %.val.val, ptr %.val139, ptr noundef %i.b) ; 2 uses
  %i.fn = icmp slt i32 %i.fm, 0
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !49  ; 3 uses
  br i1 %i.fn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  call void @av_frame_free(ptr noundef nonnull %i.a) #15
  br label %.loopexit

bb.j:                                             ; preds = %._crit_edge
  %i.fo = load i32, ptr %i.cb, align 4, !tbaa !98
  %i.fp = sub nsw i32 %.0125165, %i.fo            ; 3 uses
  %i.fq = load ptr, ptr %i.b, align 8, !tbaa !49  ; 4 uses
  %.not138 = icmp eq ptr %i.fq, null
  br i1 %.not138, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fr = getelementptr inbounds nuw i8, ptr %.pre, i64 112
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !210
  %i.ft = load i32, ptr %i.ca, align 8, !tbaa !79
  %i.fu = add i32 %i.fp, %i.ft
  %i.fv = sub i32 %i.fs, %i.fu
  %i.fw = sext i32 %i.fv to i64
  %i.fx = load i32, ptr %i.cd, align 8, !tbaa !72
  %.sroa.2.0.insert.ext.i = zext i32 %i.fx to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, 1
  %i.fy = load i64, ptr %i.ce, align 8            ; 2 uses
  %i.fz = tail call i64 @av_rescale_q(i64 noundef %i.fw, i64 %.sroa.0.0.insert.insert.i, i64 %i.fy) #16
  %i.ga = getelementptr inbounds nuw i8, ptr %.pre, i64 136
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !208
  %i.gc = add nsw i64 %i.gb, %i.fz
  %i.gd = load i64, ptr %i.cf, align 8
  %i.ge = tail call i64 @av_rescale_q(i64 noundef %i.gc, i64 %i.fy, i64 %i.gd) #16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fq, i64 136
  store i64 %i.ge, ptr %i.gf, align 8, !tbaa !208
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fq, i64 408
  store i64 1, ptr %i.gg, align 8, !tbaa !209
  %i.gh = tail call i32 @ff_filter_frame(ptr noundef %i.g, ptr noundef nonnull %i.fq) #15 ; 2 uses
  %i.gi = icmp sgt i32 %i.gh, -1
  br i1 %i.gi, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k
  store ptr null, ptr %i.b, align 8, !tbaa !49
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @av_frame_free(ptr noundef nonnull %i.a) #15
  br label %.loopexit

bb.m:                                             ; preds = %.thread, %bb.j
  %.1119 = phi i32 [ 1, %.thread ], [ %.0118166, %bb.j ] ; 2 uses
  %i.gj = load i32, ptr %i.cg, align 4, !tbaa !45
  %i.gk = load i32, ptr %i.ch, align 8, !tbaa !46
  %i.gl = load i32, ptr %i.ci, align 8, !tbaa !47
  %i.gm = add nsw i32 %i.gl, %i.gk                ; 2 uses
  %i.gn = load i32, ptr %i.cj, align 4, !tbaa !48 ; 2 uses
  %i.go = sdiv i32 %i.gm, %i.gn
  %i.gp = add nsw i32 %i.go, %i.gj                ; 4 uses
  %i.gq = srem i32 %i.gm, %i.gn
  store i32 %i.gq, ptr %i.ci, align 8, !tbaa !47
  %i.gr = load i32, ptr %i.bz, align 4, !tbaa !73 ; 2 uses
  %i.gs = sdiv i32 %i.gr, 2
  %i.gt = load i32, ptr %i.ca, align 8, !tbaa !79 ; 2 uses
  %i.gu = sub i32 %i.gt, %i.gp
  %i.gv = add i32 %i.gu, %i.gs                    ; 3 uses
  %i.gw = icmp sgt i32 %i.gv, 0
  br i1 %i.gw, label %.lr.ph159, label %.loopexit149

.lr.ph159:                                        ; preds = %bb.m
  %i.gx = load ptr, ptr %i.cc, align 8, !tbaa !74 ; 7 uses
  %i.gy = sext i32 %i.gp to i64                   ; 2 uses
  %wide.trip.count182 = zext nneg i32 %i.gv to i64 ; 5 uses
  %invariant.gep242 = getelementptr [8 x i8], ptr %i.gx, i64 %i.gy ; 6 uses
  %min.iters.check = icmp ult i32 %i.gv, 6
  %i.gz = shl nsw i64 %i.gy, 3
  %diff.check = icmp ugt i64 %i.gz, -32
  %or.cond343 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond343, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph159
  %n.vec = and i64 %wide.trip.count182, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %index ; 2 uses
  %i.hb = getelementptr [8 x i8], ptr %invariant.gep242, i64 %index ; 2 uses
  %i.hc = getelementptr i8, ptr %i.hb, i64 16
  %wide.load = load <2 x i64>, ptr %i.hb, align 4, !tbaa !58
  %wide.load271 = load <2 x i64>, ptr %i.hc, align 4, !tbaa !58
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store <2 x i64> %wide.load, ptr %i.ha, align 4, !tbaa !58
  store <2 x i64> %wide.load271, ptr %i.hd, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.he = icmp eq i64 %index.next, %n.vec
  br i1 %i.he, label %middle.block, label %vector.body, !llvm.loop !198

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count182
  br i1 %cmp.n, label %.loopexit149, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph159, %middle.block
  %indvars.iv179.ph = phi i64 [ 0, %.lr.ph159 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter375 = and i64 %wide.trip.count182, 3   ; 2 uses
  %lcmp.mod376.not = icmp eq i64 %xtraiter375, 0
  br i1 %lcmp.mod376.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv179.prol = phi i64 [ %indvars.iv.next180.prol, %scalar.ph.prol ], [ %indvars.iv179.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv179.prol
  %gep243.prol = getelementptr [8 x i8], ptr %invariant.gep242, i64 %indvars.iv179.prol
  %i.hg = load i64, ptr %gep243.prol, align 4, !tbaa !58
  store i64 %i.hg, ptr %i.hf, align 4, !tbaa !58
  %indvars.iv.next180.prol = add nuw nsw i64 %indvars.iv179.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter375
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !199

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv179.unr = phi i64 [ %indvars.iv179.ph, %scalar.ph.preheader ], [ %indvars.iv.next180.prol, %scalar.ph.prol ]
  %i.hh = sub nsw i64 %indvars.iv179.ph, %wide.trip.count182
  %i.hi = icmp ugt i64 %i.hh, -4
  br i1 %i.hi, label %.loopexit149, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv179 = phi i64 [ %indvars.iv.next180.3, %scalar.ph ], [ %indvars.iv179.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv179
  %gep243 = getelementptr [8 x i8], ptr %invariant.gep242, i64 %indvars.iv179
  %i.hk = load i64, ptr %gep243, align 4, !tbaa !58
  store i64 %i.hk, ptr %i.hj, align 4, !tbaa !58
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv.next180
  %gep243.1 = getelementptr [8 x i8], ptr %invariant.gep242, i64 %indvars.iv.next180
  %i.hm = load i64, ptr %gep243.1, align 4, !tbaa !58
  store i64 %i.hm, ptr %i.hl, align 4, !tbaa !58
  %indvars.iv.next180.1 = add nuw nsw i64 %indvars.iv179, 2 ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv.next180.1
  %gep243.2 = getelementptr [8 x i8], ptr %invariant.gep242, i64 %indvars.iv.next180.1
  %i.ho = load i64, ptr %gep243.2, align 4, !tbaa !58
  store i64 %i.ho, ptr %i.hn, align 4, !tbaa !58
  %indvars.iv.next180.2 = add nuw nsw i64 %indvars.iv179, 3 ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv.next180.2
  %gep243.3 = getelementptr [8 x i8], ptr %invariant.gep242, i64 %indvars.iv.next180.2
  %i.hq = load i64, ptr %gep243.3, align 4, !tbaa !58
  store i64 %i.hq, ptr %i.hp, align 4, !tbaa !58
  %indvars.iv.next180.3 = add nuw nsw i64 %indvars.iv179, 4 ; 2 uses
  %exitcond183.not.3 = icmp eq i64 %indvars.iv.next180.3, %wide.trip.count182
  br i1 %exitcond183.not.3, label %.loopexit149, label %scalar.ph, !llvm.loop !200

bb.n:                                             ; preds = %bb.g
  %i.hr = icmp slt i32 %i.cv, %.0125165
  br i1 %i.hr, label %.lr.ph162, label %.loopexit149.thread

.lr.ph162:                                        ; preds = %bb.n
  %i.hs = load ptr, ptr %i.cc, align 8, !tbaa !74 ; 3 uses
  %i.ht = zext nneg i32 %i.cv to i64              ; 9 uses
  %i.hu = sext i32 %i.ct to i64                   ; 3 uses
  %wide.trip.count187 = zext nneg i32 %.0125165 to i64 ; 7 uses
  %invariant.gep244 = getelementptr [8 x i8], ptr %i.hs, i64 %i.hu ; 4 uses
  %i.hv = sub nsw i64 %wide.trip.count187, %i.ht  ; 3 uses
  %min.iters.check312 = icmp ult i64 %i.hv, 36
  br i1 %min.iters.check312, label %scalar.ph311.preheader, label %vector.scevcheck293

vector.scevcheck293:                              ; preds = %.lr.ph162
  %i.hw = xor i64 %i.ht, -1
  %i.hx = add nsw i64 %i.hw, %wide.trip.count187  ; 2 uses
  %i.hy = add i32 %i.cp, %i.cv
  %i.hz = sub i32 %i.hy, %.0125165                ; 2 uses
  %i.ia = shl i32 %i.hz, 1
  %i.ib = trunc i64 %i.hx to i32
  %i.ic = add i32 %i.hz, %i.ib
  %i.id = shl i32 %i.ic, 1
  %i.ie = icmp slt i32 %i.id, %i.ia
  %i.if = icmp ugt i64 %i.hx, 2147483647
  %i.ig = or i1 %i.ie, %i.if
  br i1 %i.ig, label %scalar.ph311.preheader, label %vector.memcheck313

vector.memcheck313:                               ; preds = %vector.scevcheck293
  %i.ih = shl nuw nsw i64 %i.ht, 3
  %i.ii = add nsw i64 %i.hu, %i.ht
  %i.ij = shl nsw i64 %i.ii, 3
  %i.ik = getelementptr i8, ptr %i.hs, i64 %i.ij
  %i.il = add nsw i64 %i.hu, %wide.trip.count187
  %i.im = shl nsw i64 %i.il, 3
  %i.in = getelementptr i8, ptr %i.hs, i64 %i.im
  %i.io = add i32 %i.cp, %i.cv
  %i.ip = sub i32 %i.io, %.0125165
  %i.iq = shl i32 %i.ip, 1
  %i.ir = sext i32 %i.iq to i64
  %i.is = shl nsw i64 %i.ir, 2                    ; 2 uses
  %i.it = getelementptr i8, ptr %i.by, i64 %i.is
  %i.iu = shl nuw nsw i64 %wide.trip.count187, 3
  %i.iv = add nsw i64 %i.iu, %i.is
  %i.iw = sub nsw i64 %i.iv, %i.ih
  %i.ix = getelementptr i8, ptr %i.by, i64 %i.iw
  %bound0314 = icmp ult ptr %i.ik, %i.ix
  %bound1315 = icmp ult ptr %i.it, %i.in
  %found.conflict316 = and i1 %bound0314, %bound1315
  br i1 %found.conflict316, label %scalar.ph311.preheader, label %vector.ph317

vector.ph317:                                     ; preds = %vector.memcheck313
  %n.vec318 = and i64 %i.hv, -2                   ; 3 uses
  %i.iy = add nsw i64 %n.vec318, %i.ht
  br label %vector.body319

vector.body319:                                   ; preds = %vector.body319, %vector.ph317
  %index320 = phi i64 [ 0, %vector.ph317 ], [ %index.next325, %vector.body319 ] ; 2 uses
  %i.iz = add i64 %index320, %i.ht                ; 2 uses
  %i.ja = trunc i64 %i.iz to i32
  %i.jb = add nsw i32 %i.cq, %i.ja
  %i.jc = shl nsw i32 %i.jb, 1
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.jd
  %wide.vec321 = load <4 x float>, ptr %i.je, align 4, !tbaa !58, !alias.scope !213
  %i.jf = getelementptr [8 x i8], ptr %invariant.gep244, i64 %i.iz
  store <4 x float> %wide.vec321, ptr %i.jf, align 4, !tbaa !58, !alias.scope !214, !noalias !213
  %index.next325 = add nuw i64 %index320, 2       ; 2 uses
  %i.jg = icmp eq i64 %index.next325, %n.vec318
  br i1 %i.jg, label %middle.block326, label %vector.body319, !llvm.loop !204

middle.block326:                                  ; preds = %vector.body319
  %cmp.n327 = icmp eq i64 %i.hv, %n.vec318
  br i1 %cmp.n327, label %.loopexit149.thread, label %scalar.ph311.preheader

scalar.ph311.preheader:                           ; preds = %vector.memcheck313, %vector.scevcheck293, %.lr.ph162, %middle.block326
  %indvars.iv184.ph = phi i64 [ %i.ht, %vector.memcheck313 ], [ %i.ht, %vector.scevcheck293 ], [ %i.ht, %.lr.ph162 ], [ %i.iy, %middle.block326 ] ; 6 uses
  %i.jh = sub nsw i64 %wide.trip.count187, %indvars.iv184.ph
  %xtraiter377 = and i64 %i.jh, 1
  %lcmp.mod378.not = icmp eq i64 %xtraiter377, 0
  br i1 %lcmp.mod378.not, label %scalar.ph311.prol.loopexit, label %scalar.ph311.prol

scalar.ph311.prol:                                ; preds = %scalar.ph311.preheader
  %i.ji = trunc nuw nsw i64 %indvars.iv184.ph to i32
  %i.jj = add nsw i32 %i.cq, %i.ji
  %i.jk = shl nsw i32 %i.jj, 1
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.jl ; 2 uses
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !58
  %gep245.prol = getelementptr [8 x i8], ptr %invariant.gep244, i64 %indvars.iv184.ph ; 2 uses
  store float %i.jn, ptr %gep245.prol, align 4, !tbaa !121
  %i.jo = getelementptr i8, ptr %i.jm, i64 4
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !58
  %i.jq = getelementptr inbounds nuw i8, ptr %gep245.prol, i64 4
  store float %i.jp, ptr %i.jq, align 4, !tbaa !122
  %indvars.iv.next185.prol = add nuw nsw i64 %indvars.iv184.ph, 1
  br label %scalar.ph311.prol.loopexit

scalar.ph311.prol.loopexit:                       ; preds = %scalar.ph311.prol, %scalar.ph311.preheader
  %indvars.iv184.unr = phi i64 [ %indvars.iv184.ph, %scalar.ph311.preheader ], [ %indvars.iv.next185.prol, %scalar.ph311.prol ]
  %i.jr = add nsw i64 %wide.trip.count187, -1
  %i.js = icmp eq i64 %indvars.iv184.ph, %i.jr
  br i1 %i.js, label %.loopexit149.thread, label %scalar.ph311

scalar.ph311:                                     ; preds = %scalar.ph311.prol.loopexit, %scalar.ph311
  %indvars.iv184 = phi i64 [ %indvars.iv.next185.1, %scalar.ph311 ], [ %indvars.iv184.unr, %scalar.ph311.prol.loopexit ] ; 4 uses
  %i.jt = trunc nuw nsw i64 %indvars.iv184 to i32
  %i.ju = add nsw i32 %i.cq, %i.jt
  %i.jv = shl nsw i32 %i.ju, 1
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.jw ; 2 uses
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !58
  %gep245 = getelementptr [8 x i8], ptr %invariant.gep244, i64 %indvars.iv184 ; 2 uses
  store float %i.jy, ptr %gep245, align 4, !tbaa !121
  %i.jz = getelementptr i8, ptr %i.jx, i64 4
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !58
  %i.kb = getelementptr inbounds nuw i8, ptr %gep245, i64 4
  store float %i.ka, ptr %i.kb, align 4, !tbaa !122
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.kc = trunc nuw nsw i64 %indvars.iv.next185 to i32
  %i.kd = add nsw i32 %i.cq, %i.kc
  %i.ke = shl nsw i32 %i.kd, 1
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.kf ; 2 uses
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !58
  %gep245.1 = getelementptr [8 x i8], ptr %invariant.gep244, i64 %indvars.iv.next185 ; 2 uses
  store float %i.kh, ptr %gep245.1, align 4, !tbaa !121
  %i.ki = getelementptr i8, ptr %i.kg, i64 4
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !58
  %i.kk = getelementptr inbounds nuw i8, ptr %gep245.1, i64 4
  store float %i.kj, ptr %i.kk, align 4, !tbaa !122
  %indvars.iv.next185.1 = add nuw nsw i64 %indvars.iv184, 2 ; 2 uses
  %exitcond188.not.1 = icmp eq i64 %indvars.iv.next185.1, %wide.trip.count187
  br i1 %exitcond188.not.1, label %.loopexit149.thread, label %scalar.ph311, !llvm.loop !205

.loopexit149.thread:                              ; preds = %scalar.ph311.prol.loopexit, %scalar.ph311, %middle.block326, %bb.n
  %i.kl = sub nsw i32 %i.ck, %.0125165
  store i32 %i.kl, ptr %i.cb, align 4, !tbaa !98
  br label %._crit_edge169

.loopexit149:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.m
  store i32 %i.gp, ptr %i.cb, align 4, !tbaa !98
  %.not135 = icmp eq i32 %i.fp, 0
  br i1 %.not135, label %._crit_edge169, label %bb.g, !llvm.loop !206

._crit_edge169:                                   ; preds = %.loopexit149, %.loopexit149.thread
  %.2120217 = phi i32 [ %.0118166, %.loopexit149.thread ], [ %.1119, %.loopexit149 ]
  %i.km = icmp eq i32 %.2120217, 0
  br i1 %i.km, label %._crit_edge169.thread, label %bb.o

._crit_edge169.thread:                            ; preds = %bb.f, %._crit_edge169
  tail call void @ff_filter_set_ready(ptr noundef %i.d, i32 noundef 100) #15
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge169.thread, %._crit_edge169
  call void @av_frame_free(ptr noundef nonnull %i.a) #15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %bb.l, %bb.o, %bb.i, %bb.e
  %.4 = phi i32 [ %i.fm, %bb.i ], [ %i.gh, %bb.l ], [ 0, %bb.o ], [ %i.bv, %bb.e ], [ 0, %bb.b ], [ %i.ae, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret i32 %.4
}

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #8

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -12, 1) i32 @plot_cqt(ptr %.56.val.0.val, ptr nofree %.72.val, ptr nofree noundef nonnull writeonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @av_gettime_relative() #15
  %i.b = getelementptr inbounds nuw i8, ptr %.72.val, i64 120 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !75
  %i.d = getelementptr inbounds nuw i8, ptr %.72.val, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %.72.val, i64 156 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !73
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.c, ptr align 4 %i.e, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.72.val, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80   ; 7 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %..loopexit_crit_edge, label %.preheader

..loopexit_crit_edge:                             ; preds = %bb.a
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !75
  br label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.72.val, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !79   ; 3 uses
  %i.n = icmp sgt i32 %i.m, 0
  %.pre14 = load ptr, ptr %i.b, align 8, !tbaa !75 ; 6 uses
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.o = load i32, ptr %i.f, align 4, !tbaa !73
  %i.p = sdiv i32 %i.o, 2
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %wide.trip.count = zext nneg i32 %i.m to i64    ; 7 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.pre14, i64 %i.q ; 5 uses
  %min.iters.check = icmp ult i32 %i.m, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.r = add nsw i64 %i.q, %wide.trip.count
  %i.s = shl nsw i64 %i.r, 3
  %i.t = getelementptr i8, ptr %.pre14, i64 %i.s
  %i.u = shl nuw nsw i64 %wide.trip.count, 2
  %i.v = getelementptr i8, ptr %i.k, i64 %i.u
  %bound0 = icmp ult ptr %invariant.gep, %i.v
  %bound1 = icmp ult ptr %i.k, %i.t
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  br label %vector.body

end_hunk_0
