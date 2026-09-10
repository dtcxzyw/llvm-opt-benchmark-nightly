Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Lalignmm?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@Lalignmm_hmout:bb.a
  %i.ao = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.an) #13
  %.not179 = icmp eq i64 %i.ao, %i.ae
  br i1 %.not179, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = trunc nuw nsw i64 %indvars.iv214 to i32
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aq, ptr noundef nonnull @.str.2, i32 noundef %i.ap, i32 noundef %5) #14 ; 0 uses
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite180 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 27, i64 1, ptr %i.as) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.g:                                             ; preds = %bb.e
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %exitcond218.not = icmp eq i64 %indvars.iv.next215, %wide.trip.count217
  br i1 %exitcond218.not, label %._crit_edge, label %bb.e, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.g, %.preheader188
  tail call void @MScpmx_calc_new(ptr noundef nonnull %0, ptr noundef %i.z, ptr noundef %2, i32 noundef %i.i, i32 noundef %4) #12
  tail call void @MScpmx_calc_new(ptr noundef nonnull %1, ptr noundef %i.aa, ptr noundef %3, i32 noundef %i.l, i32 noundef %5) #12
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  tail call void @new_OpeningGapCount(ptr noundef %i.u, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.i, ptr noundef nonnull %7) #12
  tail call void @new_OpeningGapCount(ptr noundef %i.w, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.l, ptr noundef %8) #12
  tail call void @new_FinalGapCount(ptr noundef %i.x, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.i, ptr noundef %10) #12
  tail call void @new_FinalGapCount(ptr noundef %i.y, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.l, ptr noundef %10) #12
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge
  tail call void @st_OpeningGapCount(ptr noundef %i.u, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.i) #12
  tail call void @st_OpeningGapCount(ptr noundef %i.w, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.l) #12
  tail call void @st_FinalGapCount(ptr noundef %i.x, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.i) #12
  tail call void @st_FinalGapCount(ptr noundef %i.y, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.l) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.at = icmp sgt i32 %i.i, 0
  br i1 %i.at, label %.lr.ph198, label %.preheader187

.lr.ph198:                                        ; preds = %bb.j
  %i.au = fpext float %i.b to double              ; 3 uses
  %wide.trip.count222 = and i64 %i.h, 2147483647  ; 4 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count222, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph198
  %i.av = shl nuw nsw i64 %wide.trip.count222, 2  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.av
  %scevgep270 = getelementptr i8, ptr %i.x, i64 %i.av
  %bound0 = icmp ult ptr %i.u, %scevgep270
  %bound1 = icmp ult ptr %i.x, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 2147483644               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.au, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.aw, align 4, !tbaa !15, !alias.scope !106, !noalias !107
  %i.ax = fpext <4 x float> %wide.load to <4 x double>
  %i.ay = fsub <4 x double> splat (double 1.000000e+00), %i.ax
  %i.az = fmul <4 x double> %i.ay, splat (double 5.000000e-01)
  %i.ba = fmul <4 x double> %i.az, %broadcast.splat
  %i.bb = fptrunc <4 x double> %i.ba to <4 x float>
  store <4 x float> %i.bb, ptr %i.aw, align 4, !tbaa !15, !alias.scope !106, !noalias !107
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index ; 2 uses
  %wide.load271 = load <4 x float>, ptr %i.bc, align 4, !tbaa !15, !alias.scope !107
  %i.bd = fpext <4 x float> %wide.load271 to <4 x double>
  %i.be = fsub <4 x double> splat (double 1.000000e+00), %i.bd
  %i.bf = fmul <4 x double> %i.be, splat (double 5.000000e-01)
  %i.bg = fmul <4 x double> %i.bf, %broadcast.splat
  %i.bh = fptrunc <4 x double> %i.bg to <4 x float>
  store <4 x float> %i.bh, ptr %i.bc, align 4, !tbaa !15, !alias.scope !107
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count222, %n.vec
  br i1 %cmp.n, label %.preheader187, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph198, %middle.block
  %indvars.iv219.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph198 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader187:                                    ; preds = %scalar.ph, %middle.block, %bb.j
  %i.bj = icmp sgt i32 %i.l, 0
  br i1 %i.bj, label %.lr.ph200, label %._crit_edge201

.lr.ph200:                                        ; preds = %.preheader187
  %i.bk = fpext float %i.b to double              ; 3 uses
  %wide.trip.count227 = and i64 %i.k, 2147483647  ; 4 uses
  %min.iters.check279 = icmp samesign ult i64 %wide.trip.count227, 4
  br i1 %min.iters.check279, label %scalar.ph278.preheader, label %vector.memcheck272

vector.memcheck272:                               ; preds = %.lr.ph200
  %i.bl = shl nuw nsw i64 %wide.trip.count227, 2  ; 2 uses
  %scevgep273 = getelementptr i8, ptr %i.w, i64 %i.bl
  %scevgep274 = getelementptr i8, ptr %i.y, i64 %i.bl
  %bound0275 = icmp ult ptr %i.w, %scevgep274
  %bound1276 = icmp ult ptr %i.y, %scevgep273
  %found.conflict277 = and i1 %bound0275, %bound1276
  br i1 %found.conflict277, label %scalar.ph278.preheader, label %vector.ph280

vector.ph280:                                     ; preds = %vector.memcheck272
  %n.vec281 = and i64 %i.k, 2147483644            ; 3 uses
  %broadcast.splatinsert282 = insertelement <4 x double> poison, double %i.bk, i64 0
  %broadcast.splat283 = shufflevector <4 x double> %broadcast.splatinsert282, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body284

vector.body284:                                   ; preds = %vector.body284, %vector.ph280
  %index285 = phi i64 [ 0, %vector.ph280 ], [ %index.next288, %vector.body284 ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index285 ; 2 uses
  %wide.load286 = load <4 x float>, ptr %i.bm, align 4, !tbaa !15, !alias.scope !108, !noalias !109
  %i.bn = fpext <4 x float> %wide.load286 to <4 x double>
  %i.bo = fsub <4 x double> splat (double 1.000000e+00), %i.bn
  %i.bp = fmul <4 x double> %i.bo, splat (double 5.000000e-01)
  %i.bq = fmul <4 x double> %i.bp, %broadcast.splat283
  %i.br = fptrunc <4 x double> %i.bq to <4 x float>
  store <4 x float> %i.br, ptr %i.bm, align 4, !tbaa !15, !alias.scope !108, !noalias !109
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index285 ; 2 uses
  %wide.load287 = load <4 x float>, ptr %i.bs, align 4, !tbaa !15, !alias.scope !109
  %i.bt = fpext <4 x float> %wide.load287 to <4 x double>
  %i.bu = fsub <4 x double> splat (double 1.000000e+00), %i.bt
  %i.bv = fmul <4 x double> %i.bu, splat (double 5.000000e-01)
  %i.bw = fmul <4 x double> %i.bv, %broadcast.splat283
  %i.bx = fptrunc <4 x double> %i.bw to <4 x float>
  store <4 x float> %i.bx, ptr %i.bs, align 4, !tbaa !15, !alias.scope !109
  %index.next288 = add nuw i64 %index285, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next288, %n.vec281
  br i1 %i.by, label %middle.block289, label %vector.body284, !llvm.loop !33

middle.block289:                                  ; preds = %vector.body284
  %cmp.n290 = icmp eq i64 %wide.trip.count227, %n.vec281
  br i1 %cmp.n290, label %._crit_edge201, label %scalar.ph278.preheader

scalar.ph278.preheader:                           ; preds = %vector.memcheck272, %.lr.ph200, %middle.block289
  %indvars.iv224.ph = phi i64 [ 0, %vector.memcheck272 ], [ 0, %.lr.ph200 ], [ %n.vec281, %middle.block289 ]
  br label %scalar.ph278

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv219 = phi i64 [ %indvars.iv.next220, %scalar.ph ], [ %indvars.iv219.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv219 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !15
  %i.cb = fpext float %i.ca to double
  %i.cc = fsub double 1.000000e+00, %i.cb
  %i.cd = fmul double %i.cc, 5.000000e-01
  %i.ce = fmul double %i.cd, %i.au
  %i.cf = fptrunc double %i.ce to float
  store float %i.cf, ptr %i.bz, align 4, !tbaa !15
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv219 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !15
  %i.ci = fpext float %i.ch to double
  %i.cj = fsub double 1.000000e+00, %i.ci
  %i.ck = fmul double %i.cj, 5.000000e-01
  %i.cl = fmul double %i.ck, %i.au
  %i.cm = fptrunc double %i.cl to float
  store float %i.cm, ptr %i.cg, align 4, !tbaa !15
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %exitcond223.not = icmp eq i64 %indvars.iv.next220, %wide.trip.count222
  br i1 %exitcond223.not, label %.preheader187, label %scalar.ph, !llvm.loop !34

scalar.ph278:                                     ; preds = %scalar.ph278.preheader, %scalar.ph278
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %scalar.ph278 ], [ %indvars.iv224.ph, %scalar.ph278.preheader ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv224 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !15
  %i.cp = fpext float %i.co to double
  %i.cq = fsub double 1.000000e+00, %i.cp
  %i.cr = fmul double %i.cq, 5.000000e-01
  %i.cs = fmul double %i.cr, %i.bk
  %i.ct = fptrunc double %i.cs to float
  store float %i.ct, ptr %i.cn, align 4, !tbaa !15
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv224 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !15
  %i.cw = fpext float %i.cv to double
  %i.cx = fsub double 1.000000e+00, %i.cw
  %i.cy = fmul double %i.cx, 5.000000e-01
  %i.cz = fmul double %i.cy, %i.bk
  %i.da = fptrunc double %i.cz to float
  store float %i.da, ptr %i.cu, align 4, !tbaa !15
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count227
  br i1 %exitcond228.not, label %._crit_edge201, label %scalar.ph278, !llvm.loop !35

._crit_edge201:                                   ; preds = %scalar.ph278, %middle.block289, %.preheader187
  store ptr %i.u, ptr %i.s, align 8, !tbaa !19
  %i.db = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.x, ptr %i.db, align 8, !tbaa !19
  %i.dc = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.w, ptr %i.dc, align 8, !tbaa !19
  %i.dd = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.y, ptr %i.dd, align 8, !tbaa !19
  %i.de = add i32 %i.i, -1                        ; 8 uses
  %i.df = add i32 %i.l, -1                        ; 7 uses
  %i.dg = load i32, ptr @reccycle, align 4, !tbaa !7
  %i.dh = add nsw i32 %i.dg, 1
  store i32 %i.dh, ptr @reccycle, align 4, !tbaa !7
  %i.di = icmp slt i32 %i.l, 1
  br i1 %i.di, label %.preheader1.i, label %bb.m

.preheader1.i:                                    ; preds = %._crit_edge201
  br i1 %i.ab, label %.lr.ph114.i, label %.preheader.i

.lr.ph114.i:                                      ; preds = %.preheader1.i
  %sext184 = shl i64 %i.h, 32
  %i.dj = ashr exact i64 %sext184, 32             ; 2 uses
  %wide.trip.count241.i = zext nneg i32 %4 to i64
  br label %bb.k

.preheader.i:                                     ; preds = %bb.k, %.preheader1.i
  br i1 %i.ad, label %.lr.ph121.i, label %MSalignmm_rec.exit

.lr.ph121.i:                                      ; preds = %.preheader.i
  %.not639115.i = icmp slt i32 %i.i, 1
  %wide.trip.count252.i = zext nneg i32 %5 to i64 ; 3 uses
  br i1 %.not639115.i, label %.lr.ph121.split.us.i.preheader, label %.lr.ph118.i

.lr.ph121.split.us.i.preheader:                   ; preds = %.lr.ph121.i
  %xtraiter605 = and i64 %wide.trip.count252.i, 7 ; 3 uses
  %i.dk = icmp ult i32 %5, 8
  br i1 %i.dk, label %.lr.ph121.split.us.i.epil.preheader, label %.lr.ph121.split.us.i.preheader.new

.lr.ph121.split.us.i.preheader.new:               ; preds = %.lr.ph121.split.us.i.preheader
  %unroll_iter609 = and i64 %wide.trip.count252.i, 2147483640
  br label %.lr.ph121.split.us.i

.lr.ph121.split.us.i:                             ; preds = %.lr.ph121.split.us.i, %.lr.ph121.split.us.i.preheader.new
  %indvars.iv249.i = phi i64 [ 0, %.lr.ph121.split.us.i.preheader.new ], [ %indvars.iv.next250.i.7, %.lr.ph121.split.us.i ] ; 9 uses
  %niter610 = phi i64 [ 0, %.lr.ph121.split.us.i.preheader.new ], [ %niter610.next.7, %.lr.ph121.split.us.i ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !10
  store i8 0, ptr %i.dm, align 1, !tbaa !20
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !10
  store i8 0, ptr %i.dp, align 1, !tbaa !20
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !10
  store i8 0, ptr %i.ds, align 1, !tbaa !20
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !10
  store i8 0, ptr %i.dv, align 1, !tbaa !20
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !10
  store i8 0, ptr %i.dy, align 1, !tbaa !20
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !10
  store i8 0, ptr %i.eb, align 1, !tbaa !20
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !10
  store i8 0, ptr %i.ee, align 1, !tbaa !20
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !10
  store i8 0, ptr %i.eh, align 1, !tbaa !20
  %indvars.iv.next250.i.7 = add nuw nsw i64 %indvars.iv249.i, 8 ; 2 uses
  %niter610.next.7 = add i64 %niter610, 8         ; 2 uses
  %niter610.ncmp.7 = icmp eq i64 %niter610.next.7, %unroll_iter609
  br i1 %niter610.ncmp.7, label %MSalignmm_rec.exit.loopexit.unr-lcssa, label %.lr.ph121.split.us.i, !llvm.loop !36

bb.k:                                             ; preds = %bb.k, %.lr.ph114.i
  %indvars.iv238.i = phi i64 [ 0, %.lr.ph114.i ], [ %indvars.iv.next239.i, %bb.k ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv238.i ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !10
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv238.i
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !10
  %i.em = tail call ptr @strncpy(ptr noundef %i.ej, ptr noundef %i.el, i64 noundef %i.dj) #12 ; 0 uses
  %i.en = load ptr, ptr %i.ei, align 8, !tbaa !10
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.dj
  store i8 0, ptr %i.eo, align 1, !tbaa !20
  %indvars.iv.next239.i = add nuw nsw i64 %indvars.iv238.i, 1 ; 2 uses
  %exitcond242.not.i = icmp eq i64 %indvars.iv.next239.i, %wide.trip.count241.i
  br i1 %exitcond242.not.i, label %.preheader.i, label %bb.k, !llvm.loop !37

.lr.ph118.i:                                      ; preds = %.lr.ph121.i, %._crit_edge119.i
  %indvars.iv244.i = phi i64 [ %indvars.iv.next245.i, %._crit_edge119.i ], [ 0, %.lr.ph121.i ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv244.i ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !10
  store i8 0, ptr %i.eq, align 1, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph118.i
  %.0593116.i = phi i32 [ 0, %.lr.ph118.i ], [ %i.es, %bb.l ] ; 2 uses
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !10 ; 2 uses
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.er)
  %endptr.i = getelementptr inbounds i8, ptr %i.er, i64 %strlen.i
  store i16 45, ptr %endptr.i, align 1
  %i.es = add nuw nsw i32 %.0593116.i, 1
  %exitcond243.not.i = icmp eq i32 %.0593116.i, %i.de
  br i1 %exitcond243.not.i, label %._crit_edge119.i, label %bb.l, !llvm.loop !38

._crit_edge119.i:                                 ; preds = %bb.l
  %indvars.iv.next245.i = add nuw nsw i64 %indvars.iv244.i, 1 ; 2 uses
  %exitcond248.not.i = icmp eq i64 %indvars.iv.next245.i, %wide.trip.count252.i
  br i1 %exitcond248.not.i, label %MSalignmm_rec.exit, label %.lr.ph118.i, !llvm.loop !36

bb.m:                                             ; preds = %._crit_edge201
  %i.et = tail call ptr @AllocateCharMtx(i32 noundef %4, i32 noundef 0) #12 ; 8 uses
  %i.eu = tail call ptr @AllocateCharMtx(i32 noundef %5, i32 noundef 0) #12 ; 8 uses
  %i.ev = ptrtoaddr ptr %i.eu to i64
  br i1 %i.ab, label %.lr.ph.preheader.i, label %.preheader13.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.ew = ptrtoaddr ptr %i.et to i64
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 5 uses
  %min.iters.check294 = icmp ult i32 %4, 8
  %i.ex = sub i64 %i.p, %i.ew
  %diff.check = icmp ugt i64 %i.ex, -32
  %or.cond = select i1 %min.iters.check294, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph295

vector.ph295:                                     ; preds = %.lr.ph.preheader.i
  %n.vec296 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body297

vector.body297:                                   ; preds = %vector.body297, %vector.ph295
  %index298 = phi i64 [ 0, %vector.ph295 ], [ %index.next301, %vector.body297 ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index298 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %wide.load299 = load <2 x ptr>, ptr %i.ey, align 8, !tbaa !10
  %wide.load300 = load <2 x ptr>, ptr %i.ez, align 8, !tbaa !10
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %index298 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store <2 x ptr> %wide.load299, ptr %i.fa, align 8, !tbaa !10
  store <2 x ptr> %wide.load300, ptr %i.fb, align 8, !tbaa !10
  %index.next301 = add nuw i64 %index298, 4       ; 2 uses
  %i.fc = icmp eq i64 %index.next301, %n.vec296
  br i1 %i.fc, label %middle.block302, label %vector.body297, !llvm.loop !39

middle.block302:                                  ; preds = %vector.body297
  %cmp.n303 = icmp eq i64 %n.vec296, %wide.trip.count.i
  br i1 %cmp.n303, label %.preheader13.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block302
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec296, %middle.block302 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.prol
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !10
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv.i.prol
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !10
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !40

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.fg = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.fh = icmp ugt i64 %i.fg, -4
  br i1 %i.fh, label %.preheader13.i, label %.lr.ph.i

.preheader13.i:                                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block302, %bb.m
  br i1 %i.ad, label %.lr.ph17.preheader.i, label %._crit_edge.i

.lr.ph17.preheader.i:                             ; preds = %.preheader13.i
  %wide.trip.count134.i = zext nneg i32 %5 to i64 ; 5 uses
  %min.iters.check308 = icmp ult i32 %5, 8
  %i.fi = sub i64 %i.r, %i.ev
  %diff.check306 = icmp ugt i64 %i.fi, -32
  %or.cond541 = select i1 %min.iters.check308, i1 true, i1 %diff.check306
  br i1 %or.cond541, label %.lr.ph17.i.preheader, label %vector.ph309

vector.ph309:                                     ; preds = %.lr.ph17.preheader.i
  %n.vec310 = and i64 %wide.trip.count134.i, 2147483644 ; 3 uses
  br label %vector.body311

vector.body311:                                   ; preds = %vector.body311, %vector.ph309
  %index312 = phi i64 [ 0, %vector.ph309 ], [ %index.next315, %vector.body311 ] ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index312 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %wide.load313 = load <2 x ptr>, ptr %i.fj, align 8, !tbaa !10
  %wide.load314 = load <2 x ptr>, ptr %i.fk, align 8, !tbaa !10
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %index312 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store <2 x ptr> %wide.load313, ptr %i.fl, align 8, !tbaa !10
  store <2 x ptr> %wide.load314, ptr %i.fm, align 8, !tbaa !10
  %index.next315 = add nuw i64 %index312, 4       ; 2 uses
  %i.fn = icmp eq i64 %index.next315, %n.vec310
  br i1 %i.fn, label %middle.block316, label %vector.body311, !llvm.loop !41

middle.block316:                                  ; preds = %vector.body311
  %cmp.n317 = icmp eq i64 %n.vec310, %wide.trip.count134.i
  br i1 %cmp.n317, label %._crit_edge.i, label %.lr.ph17.i.preheader
end_hunk_0
begin_hunk_1_@Lalignmm_hmout:bb.a
  %i.rs = fadd float %i.rq, %i.rr                 ; 2 uses
  %i.rt = fcmp ogt float %i.rs, %.0580.i
  %.1581.i = select i1 %i.rt, float %i.rs, float %.0580.i
  %i.ru = load float, ptr %i.pi, align 4, !tbaa !15
  %i.rv = fadd float %i.rh, %i.ru                 ; 2 uses
  %i.rw = fcmp ult float %i.rv, %i.rq
  br i1 %i.rw, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph44.split.i
  store float %i.rv, ptr %.056842.i, align 4, !tbaa !15
  store i32 %i.pt, ptr %.057441.i, align 4, !tbaa !7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph44.split.i
  %i.rx = load float, ptr %.056440.i, align 4, !tbaa !15
  %i.ry = fadd float %.1581.i, %i.rx              ; 2 uses
  store float %i.ry, ptr %.056440.i, align 4, !tbaa !15
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %indvars.iv166.i
  store float %i.ry, ptr %i.rz, align 4, !tbaa !15
  %i.sa = load float, ptr %.056842.i, align 4, !tbaa !15
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %indvars.iv166.i
  store float %i.sa, ptr %i.sb, align 4, !tbaa !15
  %i.sc = getelementptr inbounds nuw i8, ptr %.056638.i, i64 4
  %indvars.iv.next167.i = add nuw nsw i64 %indvars.iv166.i, 1 ; 2 uses
  %.0574.i = getelementptr inbounds nuw i8, ptr %.057441.i, i64 4
  %.0568.i = getelementptr inbounds nuw i8, ptr %.056842.i, i64 4
  %exitcond171.not.i = icmp eq i64 %indvars.iv.next167.i, %wide.trip.count145.i
  br i1 %exitcond171.not.i, label %._crit_edge45.i, label %.lr.ph44.split.i, !llvm.loop !68

._crit_edge45.i:                                  ; preds = %bb.s, %bb.q
  %i.sd = phi ptr [ %i.pz, %bb.q ], [ %i.ps, %bb.s ]
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %i.oq
  %i.sf = load float, ptr %i.se, align 4, !tbaa !15
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv178.i
  store float %i.sf, ptr %i.sg, align 4, !tbaa !15
  %i.sh = load float, ptr %i.ox, align 4, !tbaa !15
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %i.oy
  store float %i.sh, ptr %i.si, align 4, !tbaa !15
  %indvars.iv.next179.i = add nuw nsw i64 %indvars.iv178.i, 1 ; 2 uses
  %exitcond183.not.i = icmp eq i64 %indvars.iv.next179.i, %wide.trip.count139.i
  br i1 %exitcond183.not.i, label %.lr.ph56.i, label %bb.o, !llvm.loop !69

.lr.ph56.i:                                       ; preds = %._crit_edge45.i
  tail call fastcc void @match_calc(ptr noundef nonnull %i.hh, ptr noundef readonly %i.aa, ptr noundef readonly %i.z, i32 noundef range(i32 -2147483648, 2147483647) %i.df, i32 noundef %i.i, ptr noundef %i.ho, ptr noundef %i.hp, i32 noundef 1)
  tail call fastcc void @match_calc(ptr noundef nonnull %.057648.i, ptr noundef readonly %i.z, ptr noundef readonly %i.aa, i32 noundef range(i32 -2147483648, 2147483647) %i.de, i32 noundef %i.l, ptr noundef %i.ho, ptr noundef %i.hp, i32 noundef 1)
  %i.sj = zext i32 %i.de to i64                   ; 11 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.sj ; 8 uses
  %min.iters.check426 = icmp ult i32 %i.de, 12
  br i1 %min.iters.check426, label %scalar.ph425.preheader, label %vector.memcheck414

vector.memcheck414:                               ; preds = %.lr.ph56.i
  %i.sl = shl nuw nsw i64 %i.sj, 2                ; 2 uses
  %scevgep415 = getelementptr i8, ptr %i.hh, i64 %i.sl ; 2 uses
  %i.sm = add nuw nsw i64 %i.sl, 4                ; 2 uses
  %scevgep416 = getelementptr i8, ptr %i.x, i64 %i.sm
  %scevgep417 = getelementptr i8, ptr %i.u, i64 %i.sm
  %bound0418 = icmp ult ptr %i.hh, %scevgep416
  %bound1419 = icmp ult ptr %i.sk, %scevgep415
  %found.conflict420 = and i1 %bound0418, %bound1419
  %bound0421 = icmp ult ptr %i.hh, %scevgep417
  %bound1422 = icmp ult ptr %i.mp, %scevgep415
  %found.conflict423 = and i1 %bound0421, %bound1422
  %conflict.rdx424 = or i1 %found.conflict420, %found.conflict423
  br i1 %conflict.rdx424, label %scalar.ph425.preheader, label %vector.ph427

vector.ph427:                                     ; preds = %vector.memcheck414
  %n.vec428 = and i64 %i.sj, 2147483640           ; 3 uses
  %i.sn = load float, ptr %i.sk, align 4, !tbaa !15, !alias.scope !122
  %broadcast.splatinsert433 = insertelement <4 x float> poison, float %i.sn, i64 0
  %broadcast.splat434 = shufflevector <4 x float> %broadcast.splatinsert433, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body429

vector.body429:                                   ; preds = %vector.body429, %vector.ph427
  %index430 = phi i64 [ 0, %vector.ph427 ], [ %index.next437, %vector.body429 ] ; 3 uses
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index430 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 4
  %i.sq = getelementptr inbounds nuw i8, ptr %i.so, i64 20
  %wide.load431 = load <4 x float>, ptr %i.sp, align 4, !tbaa !15, !alias.scope !123
  %wide.load432 = load <4 x float>, ptr %i.sq, align 4, !tbaa !15, !alias.scope !123
  %i.sr = fadd <4 x float> %broadcast.splat434, %wide.load431
  %i.ss = fadd <4 x float> %broadcast.splat434, %wide.load432
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %index430 ; 3 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 16 ; 2 uses
  %wide.load435 = load <4 x float>, ptr %i.st, align 4, !tbaa !15, !alias.scope !124, !noalias !125
  %wide.load436 = load <4 x float>, ptr %i.su, align 4, !tbaa !15, !alias.scope !124, !noalias !125
  %i.sv = fadd <4 x float> %wide.load435, %i.sr
  %i.sw = fadd <4 x float> %wide.load436, %i.ss
  store <4 x float> %i.sv, ptr %i.st, align 4, !tbaa !15, !alias.scope !124, !noalias !125
  store <4 x float> %i.sw, ptr %i.su, align 4, !tbaa !15, !alias.scope !124, !noalias !125
  %index.next437 = add nuw i64 %index430, 8       ; 2 uses
  %i.sx = icmp eq i64 %index.next437, %n.vec428
  br i1 %i.sx, label %middle.block438, label %vector.body429, !llvm.loop !74

middle.block438:                                  ; preds = %vector.body429
  %cmp.n439 = icmp eq i64 %n.vec428, %i.sj
  br i1 %cmp.n439, label %.lr.ph58.i, label %scalar.ph425.preheader

scalar.ph425.preheader:                           ; preds = %vector.memcheck414, %.lr.ph56.i, %middle.block438
  %indvars.iv184.i.ph = phi i64 [ 0, %vector.memcheck414 ], [ 0, %.lr.ph56.i ], [ %n.vec428, %middle.block438 ] ; 4 uses
  %xtraiter571 = and i64 %i.sj, 1
  %lcmp.mod572.not = icmp eq i64 %xtraiter571, 0
  br i1 %lcmp.mod572.not, label %scalar.ph425.prol.loopexit, label %scalar.ph425.prol

scalar.ph425.prol:                                ; preds = %scalar.ph425.preheader
  %i.sy = load float, ptr %i.sk, align 4, !tbaa !15
  %indvars.iv.next185.i.prol = or disjoint i64 %indvars.iv184.i.ph, 1 ; 2 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next185.i.prol
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !15
  %i.tb = fadd float %i.sy, %i.ta
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv184.i.ph ; 2 uses
  %i.td = load float, ptr %i.tc, align 4, !tbaa !15
  %i.te = fadd float %i.td, %i.tb
  store float %i.te, ptr %i.tc, align 4, !tbaa !15
  br label %scalar.ph425.prol.loopexit

scalar.ph425.prol.loopexit:                       ; preds = %scalar.ph425.prol, %scalar.ph425.preheader
  %indvars.iv184.i.unr = phi i64 [ %indvars.iv184.i.ph, %scalar.ph425.preheader ], [ %indvars.iv.next185.i.prol, %scalar.ph425.prol ]
  %i.tf = add nsw i64 %i.sj, -1
  %i.tg = icmp eq i64 %indvars.iv184.i.ph, %i.tf
  br i1 %i.tg, label %.lr.ph58.i, label %scalar.ph425

.lr.ph58.i:                                       ; preds = %scalar.ph425.prol.loopexit, %scalar.ph425, %middle.block438
  %i.th = getelementptr [4 x i8], ptr %i.y, i64 %i.oq ; 12 uses
  %min.iters.check454 = icmp ult i32 %i.l, 13
  br i1 %min.iters.check454, label %scalar.ph453.preheader, label %vector.memcheck441

vector.memcheck441:                               ; preds = %.lr.ph58.i
  %i.ti = shl nuw nsw i64 %i.oq, 2                ; 2 uses
  %scevgep442 = getelementptr i8, ptr %.057648.i, i64 %i.ti ; 2 uses
  %i.tj = add nuw nsw i64 %i.ti, 4                ; 2 uses
  %scevgep443 = getelementptr i8, ptr %i.y, i64 %i.tj
  %scevgep444 = getelementptr i8, ptr %i.w, i64 4
  %scevgep445 = getelementptr i8, ptr %i.w, i64 %i.tj
  %bound0446 = icmp ult ptr %.057648.i, %scevgep443
  %bound1447 = icmp ult ptr %i.th, %scevgep442
  %found.conflict448 = and i1 %bound0446, %bound1447
  %bound0449 = icmp ult ptr %.057648.i, %scevgep445
  %bound1450 = icmp ult ptr %scevgep444, %scevgep442
  %found.conflict451 = and i1 %bound0449, %bound1450
  %conflict.rdx452 = or i1 %found.conflict448, %found.conflict451
  br i1 %conflict.rdx452, label %scalar.ph453.preheader, label %vector.ph455

vector.ph455:                                     ; preds = %vector.memcheck441
  %n.vec456 = and i64 %i.oq, 2147483640           ; 3 uses
  %i.tk = load float, ptr %i.th, align 4, !tbaa !15, !alias.scope !126
  %broadcast.splatinsert461 = insertelement <4 x float> poison, float %i.tk, i64 0
  %broadcast.splat462 = shufflevector <4 x float> %broadcast.splatinsert461, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body457

vector.body457:                                   ; preds = %vector.body457, %vector.ph455
  %index458 = phi i64 [ 0, %vector.ph455 ], [ %index.next465, %vector.body457 ] ; 3 uses
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index458 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 4
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tl, i64 20
  %wide.load459 = load <4 x float>, ptr %i.tm, align 4, !tbaa !15, !alias.scope !127
  %wide.load460 = load <4 x float>, ptr %i.tn, align 4, !tbaa !15, !alias.scope !127
  %i.to = fadd <4 x float> %broadcast.splat462, %wide.load459
  %i.tp = fadd <4 x float> %broadcast.splat462, %wide.load460
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %index458 ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 16 ; 2 uses
  %wide.load463 = load <4 x float>, ptr %i.tq, align 4, !tbaa !15, !alias.scope !128, !noalias !129
  %wide.load464 = load <4 x float>, ptr %i.tr, align 4, !tbaa !15, !alias.scope !128, !noalias !129
  %i.ts = fadd <4 x float> %wide.load463, %i.to
  %i.tt = fadd <4 x float> %wide.load464, %i.tp
  store <4 x float> %i.ts, ptr %i.tq, align 4, !tbaa !15, !alias.scope !128, !noalias !129
  store <4 x float> %i.tt, ptr %i.tr, align 4, !tbaa !15, !alias.scope !128, !noalias !129
  %index.next465 = add nuw i64 %index458, 8       ; 2 uses
  %i.tu = icmp eq i64 %index.next465, %n.vec456
  br i1 %i.tu, label %middle.block466, label %vector.body457, !llvm.loop !79

middle.block466:                                  ; preds = %vector.body457
  %cmp.n467 = icmp eq i64 %n.vec456, %i.oq
  br i1 %cmp.n467, label %.lr.ph60.i.preheader, label %scalar.ph453.preheader

scalar.ph453.preheader:                           ; preds = %vector.memcheck441, %.lr.ph58.i, %middle.block466
  %indvars.iv189.i.ph = phi i64 [ 0, %vector.memcheck441 ], [ 0, %.lr.ph58.i ], [ %n.vec456, %middle.block466 ] ; 4 uses
  %xtraiter574 = and i64 %i.oq, 1
  %lcmp.mod575.not = icmp eq i64 %xtraiter574, 0
  br i1 %lcmp.mod575.not, label %scalar.ph453.prol.loopexit, label %scalar.ph453.prol

scalar.ph453.prol:                                ; preds = %scalar.ph453.preheader
  %i.tv = load float, ptr %i.th, align 4, !tbaa !15
  %indvars.iv.next190.i.prol = or disjoint i64 %indvars.iv189.i.ph, 1 ; 2 uses
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next190.i.prol
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !15
  %i.ty = fadd float %i.tv, %i.tx
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv189.i.ph ; 2 uses
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !15
  %i.ub = fadd float %i.ua, %i.ty
  store float %i.ub, ptr %i.tz, align 4, !tbaa !15
  br label %scalar.ph453.prol.loopexit

scalar.ph453.prol.loopexit:                       ; preds = %scalar.ph453.prol, %scalar.ph453.preheader
  %indvars.iv189.i.unr = phi i64 [ %indvars.iv189.i.ph, %scalar.ph453.preheader ], [ %indvars.iv.next190.i.prol, %scalar.ph453.prol ]
  %i.uc = add nsw i64 %i.oq, -1
  %i.ud = icmp eq i64 %indvars.iv189.i.ph, %i.uc
  br i1 %i.ud, label %.lr.ph60.i.preheader, label %scalar.ph453

.lr.ph60.i.preheader:                             ; preds = %scalar.ph453.prol.loopexit, %scalar.ph453, %middle.block466
  %xtraiter577 = and i64 %i.sj, 1
  %unroll_iter581 = and i64 %i.sj, 4294967294
  br label %.lr.ph60.i

scalar.ph425:                                     ; preds = %scalar.ph425.prol.loopexit, %scalar.ph425
  %indvars.iv184.i = phi i64 [ %indvars.iv.next185.i.1, %scalar.ph425 ], [ %indvars.iv184.i.unr, %scalar.ph425.prol.loopexit ] ; 3 uses
  %i.ue = load float, ptr %i.sk, align 4, !tbaa !15
  %indvars.iv.next185.i = add nuw nsw i64 %indvars.iv184.i, 1 ; 2 uses
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next185.i
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !15
  %i.uh = fadd float %i.ue, %i.ug
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv184.i ; 2 uses
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !15
  %i.uk = fadd float %i.uj, %i.uh
  store float %i.uk, ptr %i.ui, align 4, !tbaa !15
  %i.ul = load float, ptr %i.sk, align 4, !tbaa !15
  %indvars.iv.next185.i.1 = add nuw nsw i64 %indvars.iv184.i, 2 ; 3 uses
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next185.i.1
  %i.un = load float, ptr %i.um, align 4, !tbaa !15
  %i.uo = fadd float %i.ul, %i.un
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next185.i ; 2 uses
  %i.uq = load float, ptr %i.up, align 4, !tbaa !15
  %i.ur = fadd float %i.uq, %i.uo
  store float %i.ur, ptr %i.up, align 4, !tbaa !15
  %exitcond188.not.i.1 = icmp eq i64 %indvars.iv.next185.i.1, %i.sj
  br i1 %exitcond188.not.i.1, label %.lr.ph58.i, label %scalar.ph425, !llvm.loop !80

scalar.ph453:                                     ; preds = %scalar.ph453.prol.loopexit, %scalar.ph453
  %indvars.iv189.i = phi i64 [ %indvars.iv.next190.i.1, %scalar.ph453 ], [ %indvars.iv189.i.unr, %scalar.ph453.prol.loopexit ] ; 3 uses
  %i.us = load float, ptr %i.th, align 4, !tbaa !15
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 1 ; 2 uses
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next190.i
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !15
  %i.uv = fadd float %i.us, %i.uu
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv189.i ; 2 uses
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !15
  %i.uy = fadd float %i.ux, %i.uv
  store float %i.uy, ptr %i.uw, align 4, !tbaa !15
  %i.uz = load float, ptr %i.th, align 4, !tbaa !15
  %indvars.iv.next190.i.1 = add nuw nsw i64 %indvars.iv189.i, 2 ; 3 uses
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next190.i.1
  %i.vb = load float, ptr %i.va, align 4, !tbaa !15
  %i.vc = fadd float %i.uz, %i.vb
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv.next190.i ; 2 uses
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !15
  %i.vf = fadd float %i.ve, %i.vc
  store float %i.vf, ptr %i.vd, align 4, !tbaa !15
  %exitcond194.not.i.1 = icmp eq i64 %indvars.iv.next190.i.1, %i.oq
  br i1 %exitcond194.not.i.1, label %.lr.ph60.i.preheader, label %scalar.ph453, !llvm.loop !81

.lr.ph62.i.unr-lcssa:                             ; preds = %.lr.ph60.i
  %lcmp.mod579.not = icmp eq i64 %xtraiter577, 0
  br i1 %lcmp.mod579.not, label %.lr.ph62.i, label %.lr.ph60.i.epil.preheader

.lr.ph60.i.epil.preheader:                        ; preds = %.lr.ph62.i.unr-lcssa
  %lcmp.mod580 = trunc i32 %i.de to i1
  tail call void @llvm.assume(i1 %lcmp.mod580)
  %i.vg = load float, ptr %i.sk, align 4, !tbaa !15
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next196.i.1
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 4
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !15
  %i.vk = fadd float %i.vg, %i.vj
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv.next196.i.1
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !19
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.vm, i64 %i.oq ; 2 uses
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !15
  %i.vp = fadd float %i.vk, %i.vo
  store float %i.vp, ptr %i.vn, align 4, !tbaa !15
  br label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %.lr.ph62.i.unr-lcssa, %.lr.ph60.i.epil.preheader
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.sj
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !19 ; 7 uses
  %min.iters.check482 = icmp ult i32 %i.l, 13
  br i1 %min.iters.check482, label %scalar.ph481.preheader, label %vector.memcheck469

vector.memcheck469:                               ; preds = %.lr.ph62.i
  %i.vs = shl nuw nsw i64 %i.oq, 2                ; 2 uses
  %scevgep470 = getelementptr i8, ptr %i.vr, i64 %i.vs ; 2 uses
  %i.vt = add nuw nsw i64 %i.vs, 4                ; 2 uses
  %scevgep471 = getelementptr i8, ptr %i.y, i64 %i.vt
  %scevgep472 = getelementptr i8, ptr %i.w, i64 4
  %scevgep473 = getelementptr i8, ptr %i.w, i64 %i.vt
  %bound0474 = icmp ult ptr %i.vr, %scevgep471
  %bound1475 = icmp ult ptr %i.th, %scevgep470
  %found.conflict476 = and i1 %bound0474, %bound1475
  %bound0477 = icmp ult ptr %i.vr, %scevgep473
  %bound1478 = icmp ult ptr %scevgep472, %scevgep470
  %found.conflict479 = and i1 %bound0477, %bound1478
  %conflict.rdx480 = or i1 %found.conflict476, %found.conflict479
  br i1 %conflict.rdx480, label %scalar.ph481.preheader, label %vector.ph483

vector.ph483:                                     ; preds = %vector.memcheck469
  %n.vec484 = and i64 %i.oq, 2147483640           ; 3 uses
  %i.vu = load float, ptr %i.th, align 4, !tbaa !15, !alias.scope !130
  %broadcast.splatinsert489 = insertelement <4 x float> poison, float %i.vu, i64 0
  %broadcast.splat490 = shufflevector <4 x float> %broadcast.splatinsert489, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body485

vector.body485:                                   ; preds = %vector.body485, %vector.ph483
  %index486 = phi i64 [ 0, %vector.ph483 ], [ %index.next493, %vector.body485 ] ; 3 uses
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index486 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 4
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vv, i64 20
  %wide.load487 = load <4 x float>, ptr %i.vw, align 4, !tbaa !15, !alias.scope !131
  %wide.load488 = load <4 x float>, ptr %i.vx, align 4, !tbaa !15, !alias.scope !131
  %i.vy = fadd <4 x float> %broadcast.splat490, %wide.load487
  %i.vz = fadd <4 x float> %broadcast.splat490, %wide.load488
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.vr, i64 %index486 ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 16 ; 2 uses
  %wide.load491 = load <4 x float>, ptr %i.wa, align 4, !tbaa !15, !alias.scope !132, !noalias !133
  %wide.load492 = load <4 x float>, ptr %i.wb, align 4, !tbaa !15, !alias.scope !132, !noalias !133
  %i.wc = fadd <4 x float> %i.vy, %wide.load491
  %i.wd = fadd <4 x float> %i.vz, %wide.load492
  store <4 x float> %i.wc, ptr %i.wa, align 4, !tbaa !15, !alias.scope !132, !noalias !133
  store <4 x float> %i.wd, ptr %i.wb, align 4, !tbaa !15, !alias.scope !132, !noalias !133
  %index.next493 = add nuw i64 %index486, 8       ; 2 uses
  %i.we = icmp eq i64 %index.next493, %n.vec484
  br i1 %i.we, label %middle.block494, label %vector.body485, !llvm.loop !86

middle.block494:                                  ; preds = %vector.body485
  %cmp.n495 = icmp eq i64 %n.vec484, %i.oq
  br i1 %cmp.n495, label %.lr.ph64.i, label %scalar.ph481.preheader

scalar.ph481.preheader:                           ; preds = %vector.memcheck469, %.lr.ph62.i, %middle.block494
  %indvars.iv200.i.ph = phi i64 [ 0, %vector.memcheck469 ], [ 0, %.lr.ph62.i ], [ %n.vec484, %middle.block494 ] ; 4 uses
  %xtraiter583 = and i64 %i.oq, 1
  %lcmp.mod584.not = icmp eq i64 %xtraiter583, 0
  br i1 %lcmp.mod584.not, label %scalar.ph481.prol.loopexit, label %scalar.ph481.prol

scalar.ph481.prol:                                ; preds = %scalar.ph481.preheader
  %i.wf = load float, ptr %i.th, align 4, !tbaa !15
  %indvars.iv.next201.i.prol = or disjoint i64 %indvars.iv200.i.ph, 1 ; 2 uses
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next201.i.prol
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !15
  %i.wi = fadd float %i.wf, %i.wh
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.vr, i64 %indvars.iv200.i.ph ; 2 uses
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !15
  %i.wl = fadd float %i.wi, %i.wk
  store float %i.wl, ptr %i.wj, align 4, !tbaa !15
  br label %scalar.ph481.prol.loopexit

scalar.ph481.prol.loopexit:                       ; preds = %scalar.ph481.prol, %scalar.ph481.preheader
  %indvars.iv200.i.unr = phi i64 [ %indvars.iv200.i.ph, %scalar.ph481.preheader ], [ %indvars.iv.next201.i.prol, %scalar.ph481.prol ]
  %i.wm = add nsw i64 %i.oq, -1
  %i.wn = icmp eq i64 %indvars.iv200.i.ph, %i.wm
  br i1 %i.wn, label %.lr.ph64.i, label %scalar.ph481

.lr.ph60.i:                                       ; preds = %.lr.ph60.i, %.lr.ph60.i.preheader
  %indvars.iv195.i = phi i64 [ 0, %.lr.ph60.i.preheader ], [ %indvars.iv.next196.i.1, %.lr.ph60.i ] ; 3 uses
  %niter582 = phi i64 [ 0, %.lr.ph60.i.preheader ], [ %niter582.next.1, %.lr.ph60.i ]
  %i.wo = load float, ptr %i.sk, align 4, !tbaa !15
  %indvars.iv.next196.i = or disjoint i64 %indvars.iv195.i, 1 ; 2 uses
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next196.i
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !15
  %i.wr = fadd float %i.wo, %i.wq
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv195.i
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !19
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.wt, i64 %i.oq ; 2 uses
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !15
  %i.ww = fadd float %i.wr, %i.wv
  store float %i.ww, ptr %i.wu, align 4, !tbaa !15
  %i.wx = load float, ptr %i.sk, align 4, !tbaa !15
  %indvars.iv.next196.i.1 = add nuw nsw i64 %indvars.iv195.i, 2 ; 4 uses
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next196.i.1
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !15
  %i.xa = fadd float %i.wx, %i.wz
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv.next196.i
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !19
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %i.oq ; 2 uses
  %i.xe = load float, ptr %i.xd, align 4, !tbaa !15
  %i.xf = fadd float %i.xa, %i.xe
  store float %i.xf, ptr %i.xd, align 4, !tbaa !15
  %niter582.next.1 = add nuw i64 %niter582, 2     ; 2 uses
  %niter582.ncmp.1 = icmp eq i64 %niter582.next.1, %unroll_iter581
  br i1 %niter582.ncmp.1, label %.lr.ph62.i.unr-lcssa, label %.lr.ph60.i, !llvm.loop !87

.lr.ph64.i:                                       ; preds = %scalar.ph481.prol.loopexit, %scalar.ph481, %middle.block494
  %i.xg = getelementptr i8, ptr %i.th, i64 -4     ; 3 uses
  %i.xh = tail call i32 @llvm.smin.i32(i32 %i.df, i32 1)
  %i.xi = xor i32 %i.xh, -1
  %i.xj = add i32 %i.xi, %i.l                     ; 2 uses
  %i.xk = zext i32 %i.xj to i64
  %i.xl = add nuw nsw i64 %i.xk, 1                ; 2 uses
  %min.iters.check510 = icmp ult i32 %i.xj, 19
  br i1 %min.iters.check510, label %scalar.ph509.preheader, label %vector.memcheck497

vector.memcheck497:                               ; preds = %.lr.ph64.i
  %i.xm = shl nuw nsw i64 %i.oq, 2                ; 4 uses
  %i.xn = add nsw i64 %i.xm, -4
  %smin = tail call i32 @llvm.smin.i32(i32 %i.df, i32 1)
  %i.xo = xor i32 %smin, -1
  %i.xp = add i32 %i.xo, %i.l
  %i.xq = zext i32 %i.xp to i64
  %i.xr = shl nuw nsw i64 %i.xq, 2                ; 2 uses
  %i.xs = sub nsw i64 %i.xn, %i.xr
  %scevgep498 = getelementptr i8, ptr %i.hj, i64 %i.xs ; 2 uses
  %scevgep499 = getelementptr i8, ptr %i.hj, i64 %i.xm ; 2 uses
  %i.xt = sub nsw i64 %i.xm, %i.xr
  %scevgep500 = getelementptr i8, ptr %.057648.i, i64 %i.xt
  %i.xu = getelementptr i8, ptr %.057648.i, i64 %i.xm
  %scevgep501 = getelementptr i8, ptr %i.xu, i64 4
  %bound0502 = icmp ult ptr %scevgep498, %scevgep501
  %bound1503 = icmp ult ptr %scevgep500, %scevgep499
  %found.conflict504 = and i1 %bound0502, %bound1503
  %bound0505 = icmp ult ptr %scevgep498, %i.th
  %bound1506 = icmp ult ptr %i.xg, %scevgep499
  %found.conflict507 = and i1 %bound0505, %bound1506
  %conflict.rdx508 = or i1 %found.conflict504, %found.conflict507
  br i1 %conflict.rdx508, label %scalar.ph509.preheader, label %vector.ph511

vector.ph511:                                     ; preds = %vector.memcheck497
  %n.vec512 = and i64 %i.xl, 8589934588           ; 3 uses
  %broadcast.splatinsert513 = insertelement <4 x i32> poison, i32 %i.de, i64 0
  %broadcast.splat514 = shufflevector <4 x i32> %broadcast.splatinsert513, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.xv = sub nsw i64 %i.oq, %n.vec512
  %i.xw = load float, ptr %i.xg, align 4, !tbaa !15, !alias.scope !134
  %broadcast.splatinsert519 = insertelement <4 x float> poison, float %i.xw, i64 0
  %i.xx = shufflevector <4 x float> %broadcast.splatinsert519, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body515

vector.body515:                                   ; preds = %vector.body515, %vector.ph511
  %index516 = phi i64 [ 0, %vector.ph511 ], [ %index.next522, %vector.body515 ] ; 2 uses
  %i.xy = sub i64 %i.oq, %index516                ; 3 uses
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %i.xy
  %i.ya = getelementptr inbounds i8, ptr %i.xz, i64 -12
  %wide.load517 = load <4 x float>, ptr %i.ya, align 4, !tbaa !15, !alias.scope !135
  %i.yb = getelementptr [4 x i8], ptr %i.hj, i64 %i.xy
  %i.yc = getelementptr i8, ptr %i.yb, i64 -16
  %reverse521 = fadd <4 x float> %wide.load517, %i.xx
  store <4 x float> %reverse521, ptr %i.yc, align 4, !tbaa !15, !alias.scope !136, !noalias !137
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.xy
  %i.ye = getelementptr inbounds i8, ptr %i.yd, i64 -12
  store <4 x i32> %broadcast.splat514, ptr %i.ye, align 4, !tbaa !7
  %index.next522 = add nuw i64 %index516, 4       ; 2 uses
  %i.yf = icmp eq i64 %index.next522, %n.vec512
  br i1 %i.yf, label %middle.block523, label %vector.body515, !llvm.loop !92

middle.block523:                                  ; preds = %vector.body515
  %cmp.n524 = icmp eq i64 %i.xl, %n.vec512
  br i1 %cmp.n524, label %.lr.ph104.i, label %scalar.ph509.preheader

scalar.ph509.preheader:                           ; preds = %vector.memcheck497, %.lr.ph64.i, %middle.block523
  %indvars.iv206.i.ph = phi i64 [ %i.oq, %vector.memcheck497 ], [ %i.oq, %.lr.ph64.i ], [ %i.xv, %middle.block523 ]
  br label %scalar.ph509

scalar.ph481:                                     ; preds = %scalar.ph481.prol.loopexit, %scalar.ph481
  %indvars.iv200.i = phi i64 [ %indvars.iv.next201.i.1, %scalar.ph481 ], [ %indvars.iv200.i.unr, %scalar.ph481.prol.loopexit ] ; 3 uses
  %i.yg = load float, ptr %i.th, align 4, !tbaa !15
  %indvars.iv.next201.i = add nuw nsw i64 %indvars.iv200.i, 1 ; 2 uses
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next201.i
  %i.yi = load float, ptr %i.yh, align 4, !tbaa !15
  %i.yj = fadd float %i.yg, %i.yi
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.vr, i64 %indvars.iv200.i ; 2 uses
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !15
  %i.ym = fadd float %i.yj, %i.yl
  store float %i.ym, ptr %i.yk, align 4, !tbaa !15
  %i.yn = load float, ptr %i.th, align 4, !tbaa !15
  %indvars.iv.next201.i.1 = add nuw nsw i64 %indvars.iv200.i, 2 ; 3 uses
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next201.i.1
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !15
  %i.yq = fadd float %i.yn, %i.yp
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.vr, i64 %indvars.iv.next201.i ; 2 uses
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !15
  %i.yt = fadd float %i.yq, %i.ys
  store float %i.yt, ptr %i.yr, align 4, !tbaa !15
  %exitcond205.not.i.1 = icmp eq i64 %indvars.iv.next201.i.1, %i.oq
  br i1 %exitcond205.not.i.1, label %.lr.ph64.i, label %scalar.ph481, !llvm.loop !93

.lr.ph104.i:                                      ; preds = %scalar.ph509, %middle.block523
  %i.yu = add i64 %i.k, 4294967294
  %i.yv = and i64 %i.yu, 4294967295               ; 2 uses
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.yv
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.oy
  %i.yy = getelementptr inbounds i8, ptr %i.yx, i64 -8
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.oy
  %i.za = getelementptr inbounds i8, ptr %i.yz, i64 -8
  %i.zb = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %smax220.i = tail call i32 @llvm.smax.i32(i32 %i.iu, i32 1) ; 3 uses
  %wide.trip.count221.i = zext nneg i32 %smax220.i to i64 ; 2 uses
  %xtraiter586 = and i64 %i.oq, 1
  %i.zc = and i64 %i.oq, 2147483646
  %i.zd = add nsw i64 %i.zc, -4
  %lcmp.mod588.not = icmp eq i64 %xtraiter586, 0
  %lcmp.mod591 = trunc i32 %i.df to i1
  %xtraiter594 = and i64 %wide.trip.count221.i, 1
  %i.ze = icmp eq i32 %smax220.i, 1
  %unroll_iter600 = and i64 %wide.trip.count221.i, 2147483646
  %lcmp.mod596.not = icmp eq i64 %xtraiter594, 0
  %lcmp.mod599 = trunc i32 %smax220.i to i1
  br label %.lr.ph74.i

scalar.ph509:                                     ; preds = %scalar.ph509.preheader, %scalar.ph509
  %indvars.iv206.i = phi i64 [ %indvars.iv.next207.i, %scalar.ph509 ], [ %indvars.iv206.i.ph, %scalar.ph509.preheader ] ; 5 uses
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv206.i
  %i.zg = load float, ptr %i.zf, align 4, !tbaa !15
  %i.zh = load float, ptr %i.xg, align 4, !tbaa !15
  %i.zi = fadd float %i.zg, %i.zh
  %i.zj = getelementptr [4 x i8], ptr %i.hj, i64 %indvars.iv206.i
  %i.zk = getelementptr i8, ptr %i.zj, i64 -4
  store float %i.zi, ptr %i.zk, align 4, !tbaa !15
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv206.i
  store i32 %i.de, ptr %i.zl, align 4, !tbaa !7
  %indvars.iv.next207.i = add nsw i64 %indvars.iv206.i, -1
  %i.zm = trunc nuw i64 %indvars.iv206.i to i32
  %i.zn = icmp sgt i32 %i.zm, 1
  br i1 %i.zn, label %scalar.ph509, label %.lr.ph104.i, !llvm.loop !94

.preheader2.preheader.i:                          ; preds = %bb.ap
  %wide.trip.count236.i = and i64 %i.h, 2147483647
  %min.iters.check529 = icmp samesign ult i64 %i.oy, 4
  %n.vec531 = and i64 %i.k, 2147483644            ; 3 uses
  %broadcast.splatinsert532 = insertelement <4 x float> poison, float %.5.i, i64 0
  %broadcast.splat533 = shufflevector <4 x float> %broadcast.splatinsert532, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n539 = icmp eq i64 %i.oy, %n.vec531
  %xtraiter602 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod603.not = icmp eq i64 %xtraiter602, 0
  br label %.preheader2.i

.lr.ph74.i:                                       ; preds = %bb.ap, %.lr.ph104.i
  %indvars.iv223.i = phi i64 [ %i.sj, %.lr.ph104.i ], [ %indvars.iv.next224.i, %bb.ap ] ; 6 uses
  %.0102.i = phi i32 [ %i.de, %.lr.ph104.i ], [ %.1.i, %bb.ap ]
  %.0544101.i = phi float [ -1.000000e+07, %.lr.ph104.i ], [ %.1545.i, %bb.ap ] ; 2 uses
  %.0550100.i = phi i32 [ 0, %.lr.ph104.i ], [ %.3.i, %bb.ap ]
  %.055299.i = phi i32 [ 0, %.lr.ph104.i ], [ %.3555.i, %bb.ap ] ; 2 uses
  %.055698.i = phi float [ 0.000000e+00, %.lr.ph104.i ], [ %.5.i, %bb.ap ]
  %.157797.i = phi ptr [ %.057847.i, %.lr.ph104.i ], [ %.157996.i, %bb.ap ] ; 4 uses
  %.157996.i = phi ptr [ %.057648.i, %.lr.ph104.i ], [ %.157797.i, %bb.ap ] ; 3 uses
  %.058595.i = phi i32 [ 0, %.lr.ph104.i ], [ %.6.i, %bb.ap ]
  %.059194.i = phi i32 [ %i.ov, %.lr.ph104.i ], [ %.1592.i, %bb.ap ] ; 4 uses
  %indvars.iv.next224.i = add nsw i64 %indvars.iv223.i, -1 ; 9 uses
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv223.i
  %i.zp = load float, ptr %i.zo, align 4, !tbaa !15
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %.157996.i, i64 %i.oq ; 2 uses
  store float %i.zp, ptr %i.zq, align 4, !tbaa !15
  %i.zr = trunc nuw nsw i64 %indvars.iv.next224.i to i32
  tail call fastcc void @match_calc(ptr noundef %.157797.i, ptr noundef readonly %i.z, ptr noundef readonly %i.aa, i32 noundef %i.zr, i32 noundef %i.l, ptr noundef %i.ho, ptr noundef %i.hp, i32 noundef 0)
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next224.i
  %i.zt = load float, ptr %i.zs, align 4, !tbaa !15
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %.157797.i, i64 %i.oq
  store float %i.zt, ptr %i.zu, align 4, !tbaa !15
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %.157996.i, i64 %i.oy
  %.156765.i = getelementptr inbounds i8, ptr %i.zv, i64 -4
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %.157797.i, i64 %i.oy
  %i.zx = getelementptr inbounds i8, ptr %i.zw, i64 -8
  %i.zy = load float, ptr %i.zq, align 4, !tbaa !15
  %i.zz = load float, ptr %i.yw, align 4, !tbaa !15
  %i.aaa = fadd float %i.zy, %i.zz
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv223.i
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next224.i ; 2 uses
  %i.aad = zext i32 %.055299.i to i64
  %i.aae = icmp eq i64 %indvars.iv.next224.i, %i.aad
  %i.aaf = zext i32 %.059194.i to i64             ; 2 uses
  %i.aag = icmp eq i64 %indvars.iv223.i, %i.aaf   ; 3 uses
  %or.cond640.i = select i1 %i.aae, i1 true, i1 %i.aag
  %i.aah = icmp eq i64 %indvars.iv.next224.i, %i.aaf ; 2 uses
  %i.aai = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv.next224.i
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !19
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %indvars.iv.next224.i
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !19
  %i.aam = trunc nuw nsw i64 %indvars.iv223.i to i32 ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.ad, %.lr.ph74.i
  %indvars.iv209.i = phi i64 [ %i.yv, %.lr.ph74.i ], [ %indvars.iv.next210.i, %bb.ad ] ; 10 uses
  %.156772.i = phi ptr [ %.156765.i, %.lr.ph74.i ], [ %.1567.i, %bb.ad ] ; 2 uses
  %.256271.i = phi float [ %i.aaa, %.lr.ph74.i ], [ %.3563.i, %bb.ad ] ; 3 uses
  %.156570.i = phi ptr [ %i.zx, %.lr.ph74.i ], [ %i.acd, %bb.ad ] ; 4 uses
  %.156969.i = phi ptr [ %i.yy, %.lr.ph74.i ], [ %i.acb, %bb.ad ] ; 4 uses
  %.257268.i = phi i32 [ %i.df, %.lr.ph74.i ], [ %.3573.i, %bb.ad ] ; 2 uses
  %.157567.i = phi ptr [ %i.za, %.lr.ph74.i ], [ %i.acc, %bb.ad ] ; 3 uses
  %i.aan = load float, ptr %.156772.i, align 4, !tbaa !15 ; 4 uses
  %i.aao = add nuw nsw i64 %indvars.iv209.i, 1    ; 3 uses
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.aao
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !15
  %i.aar = fadd float %.256271.i, %i.aaq          ; 2 uses
  %i.aas = fcmp ogt float %i.aar, %i.aan          ; 2 uses
  %.2582.i = select i1 %i.aas, float %i.aar, float %i.aan ; 2 uses
  %i.aat = trunc nuw i64 %i.aao to i32            ; 3 uses
  %.0546.i = select i1 %i.aas, i32 %.257268.i, i32 %i.aat
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv209.i
  %i.aav = load float, ptr %i.aau, align 4, !tbaa !15
  %i.aaw = fadd float %i.aan, %i.aav              ; 2 uses
  %i.aax = fcmp ult float %i.aaw, %.256271.i      ; 2 uses
  %.3573.i = select i1 %i.aax, i32 %.257268.i, i32 %i.aat
  %.3563.i = select i1 %i.aax, float %.256271.i, float %i.aaw ; 2 uses
  %i.aay = load float, ptr %.156969.i, align 4, !tbaa !15 ; 2 uses
  %i.aaz = load float, ptr %i.aab, align 4, !tbaa !15
  %i.aba = fadd float %i.aay, %i.aaz              ; 2 uses
  %i.abb = fcmp ogt float %i.aba, %.2582.i
  br i1 %i.abb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.abc = load i32, ptr %.157567.i, align 4, !tbaa !7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.3583.i = phi float [ %i.aba, %bb.u ], [ %.2582.i, %bb.t ] ; 3 uses
  %.1549.i = phi i32 [ %i.abc, %bb.u ], [ %i.aam, %bb.t ]
  %.1547.i = phi i32 [ %i.aat, %bb.u ], [ %.0546.i, %bb.t ]
  %i.abd = load float, ptr %i.aac, align 4, !tbaa !15
  %i.abe = fadd float %i.aan, %i.abd              ; 2 uses
  %i.abf = fcmp ult float %i.abe, %i.aay
  br i1 %i.abf, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store float %i.abe, ptr %.156969.i, align 4, !tbaa !15
  store i32 %i.aam, ptr %.157567.i, align 4, !tbaa !7
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %or.cond640.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv209.i
  store i32 %.1549.i, ptr %i.abg, align 4, !tbaa !7
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv209.i
  store i32 %.1547.i, ptr %i.abh, align 4, !tbaa !7
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %i.aah, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv209.i ; 2 uses
  %i.abj = load float, ptr %i.abi, align 4, !tbaa !15
  %i.abk = fadd float %.3583.i, %i.abj
  store float %i.abk, ptr %i.abi, align 4, !tbaa !15
  %i.abl = load float, ptr %.156969.i, align 4, !tbaa !15
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.aao ; 2 uses
  %i.abn = load float, ptr %i.abm, align 4, !tbaa !15
  %i.abo = fadd float %i.abl, %i.abn
  store float %i.abo, ptr %i.abm, align 4, !tbaa !15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %i.aag, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv209.i ; 2 uses
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !15
  %i.abr = fadd float %.3563.i, %i.abq
  store float %i.abr, ptr %i.abp, align 4, !tbaa !15
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %indvars.iv209.i ; 2 uses
  %i.abt = load float, ptr %i.abs, align 4, !tbaa !15
  %i.abu = fadd float %.3583.i, %i.abt
  store float %i.abu, ptr %i.abs, align 4, !tbaa !15
  %i.abv = load float, ptr %.156570.i, align 4, !tbaa !15
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.aal, i64 %indvars.iv209.i ; 2 uses
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !15
  %i.aby = fadd float %i.abv, %i.abx
  store float %i.aby, ptr %i.abw, align 4, !tbaa !15
  %i.abz = load float, ptr %.156570.i, align 4, !tbaa !15
  %i.aca = fadd float %.3583.i, %i.abz
  store float %i.aca, ptr %.156570.i, align 4, !tbaa !15
  %i.acb = getelementptr inbounds i8, ptr %.156969.i, i64 -4
  %i.acc = getelementptr inbounds i8, ptr %.157567.i, i64 -4
  %i.acd = getelementptr inbounds i8, ptr %.156570.i, i64 -4
  %indvars.iv.next210.i = add nsw i64 %indvars.iv209.i, -1
  %.1567.i = getelementptr inbounds i8, ptr %.156772.i, i64 -4 ; 2 uses
  %i.ace = trunc nuw i64 %indvars.iv209.i to i32
  %i.acf = icmp sgt i32 %i.ace, 0
  br i1 %i.acf, label %bb.t, label %._crit_edge75.i, !llvm.loop !95

._crit_edge75.i:                                  ; preds = %bb.ad
  %i.acg = load float, ptr %.1567.i, align 4, !tbaa !15
  %i.ach = load float, ptr %i.aac, align 4, !tbaa !15
  %i.aci = fadd float %i.acg, %i.ach              ; 2 uses
  %i.acj = fcmp olt float %.0544101.i, %i.aci     ; 2 uses
  %.1545.i = select i1 %i.acj, float %i.aci, float %.0544101.i ; 2 uses
  %.1.i = select i1 %i.acj, i32 %i.aam, i32 %.0102.i ; 3 uses
  br i1 %i.aah, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge75.i
  %i.ack = load float, ptr %i.ha, align 4, !tbaa !15
  %i.acl = fadd float %.1545.i, %i.ack
  store float %i.acl, ptr %i.ha, align 4, !tbaa !15
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge75.i
  %i.acm = add nsw i32 %.059194.i, -1             ; 2 uses
  br i1 %i.aag, label %.lr.ph82.preheader.i, label %bb.ak

.lr.ph82.preheader.i:                             ; preds = %bb.af
  %i.acn = load float, ptr %i.zb, align 4, !tbaa !15
  br label %.lr.ph82.i

.lr.ph82.i:                                       ; preds = %.lr.ph82.i, %.lr.ph82.preheader.i
  %indvars.iv212.i = phi i64 [ 2, %.lr.ph82.preheader.i ], [ %indvars.iv.next213.i.1, %.lr.ph82.i ] ; 4 uses
  %.155780.i = phi float [ %i.acn, %.lr.ph82.preheader.i ], [ %.2558.i.1, %.lr.ph82.i ] ; 2 uses
  %.158679.i = phi i32 [ 0, %.lr.ph82.preheader.i ], [ %.2587.i.1, %.lr.ph82.i ]
  %niter593 = phi i64 [ 0, %.lr.ph82.preheader.i ], [ %niter593.next.1, %.lr.ph82.i ] ; 2 uses
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv212.i
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !15 ; 2 uses
  %i.acq = fcmp ogt float %i.acp, %.155780.i      ; 2 uses
  %i.acr = trunc nuw nsw i64 %indvars.iv212.i to i32
  %.2587.i = select i1 %i.acq, i32 %i.acr, i32 %.158679.i
  %.2558.i = select i1 %i.acq, float %i.acp, float %.155780.i ; 2 uses
  %indvars.iv.next213.i = or disjoint i64 %indvars.iv212.i, 1 ; 2 uses
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.next213.i
  %i.act = load float, ptr %i.acs, align 4, !tbaa !15 ; 2 uses
  %i.acu = fcmp ogt float %i.act, %.2558.i        ; 2 uses
  %i.acv = trunc nuw nsw i64 %indvars.iv.next213.i to i32
  %.2587.i.1 = select i1 %i.acu, i32 %i.acv, i32 %.2587.i ; 3 uses
  %.2558.i.1 = select i1 %i.acu, float %i.act, float %.2558.i ; 4 uses
  %indvars.iv.next213.i.1 = add nuw nsw i64 %indvars.iv212.i, 2 ; 3 uses
  %niter593.next.1 = add i64 %niter593, 2
  %niter593.ncmp.1 = icmp eq i64 %niter593, %i.zd
  br i1 %niter593.ncmp.1, label %.lr.ph88.i.preheader.unr-lcssa, label %.lr.ph82.i, !llvm.loop !96

.lr.ph88.i.preheader.unr-lcssa:                   ; preds = %.lr.ph82.i
  br i1 %lcmp.mod588.not, label %.lr.ph88.i.preheader, label %.lr.ph82.i.epil.preheader

.lr.ph82.i.epil.preheader:                        ; preds = %.lr.ph88.i.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod591)
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.next213.i.1
  %i.acx = load float, ptr %i.acw, align 4, !tbaa !15 ; 2 uses
  %i.acy = fcmp ogt float %i.acx, %.2558.i.1      ; 2 uses
  %i.acz = trunc nuw nsw i64 %indvars.iv.next213.i.1 to i32
  %.2587.i.epil = select i1 %i.acy, i32 %i.acz, i32 %.2587.i.1
  %.2558.i.epil = select i1 %i.acy, float %i.acx, float %.2558.i.1
  br label %.lr.ph88.i.preheader

.lr.ph88.i.preheader:                             ; preds = %.lr.ph88.i.preheader.unr-lcssa, %.lr.ph82.i.epil.preheader
  %.2587.i.lcssa = phi i32 [ %.2587.i.1, %.lr.ph88.i.preheader.unr-lcssa ], [ %.2587.i.epil, %.lr.ph82.i.epil.preheader ] ; 2 uses
  %.2558.i.lcssa = phi float [ %.2558.i.1, %.lr.ph88.i.preheader.unr-lcssa ], [ %.2558.i.epil, %.lr.ph82.i.epil.preheader ] ; 2 uses
  br i1 %i.ze, label %.lr.ph88.i.epil.preheader, label %.lr.ph88.i

.lr.ph88.i:                                       ; preds = %.lr.ph88.i.preheader, %.lr.ph88.i
  %indvars.iv217.i = phi i64 [ %indvars.iv.next218.i.1, %.lr.ph88.i ], [ 0, %.lr.ph88.i.preheader ] ; 4 uses
  %.355987.i = phi float [ %.4.i.1, %.lr.ph88.i ], [ %.2558.i.lcssa, %.lr.ph88.i.preheader ] ; 2 uses
  %.358886.i = phi i32 [ %.4589.i.1, %.lr.ph88.i ], [ %.2587.i.lcssa, %.lr.ph88.i.preheader ]
  %niter601 = phi i64 [ %niter601.next.1, %.lr.ph88.i ], [ 0, %.lr.ph88.i.preheader ]
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv217.i
  %i.adb = load float, ptr %i.ada, align 4, !tbaa !15 ; 2 uses
  %i.adc = fcmp ogt float %i.adb, %.355987.i      ; 2 uses
  %i.add = trunc nuw nsw i64 %indvars.iv217.i to i32
  %.4589.i = select i1 %i.adc, i32 %i.add, i32 %.358886.i
  %.4.i = select i1 %i.adc, float %i.adb, float %.355987.i ; 2 uses
  %indvars.iv.next218.i = or disjoint i64 %indvars.iv217.i, 1 ; 2 uses
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.next218.i
  %i.adf = load float, ptr %i.ade, align 4, !tbaa !15 ; 2 uses
  %i.adg = fcmp ogt float %i.adf, %.4.i           ; 2 uses
  %i.adh = trunc nuw nsw i64 %indvars.iv.next218.i to i32
  %.4589.i.1 = select i1 %i.adg, i32 %i.adh, i32 %.4589.i ; 3 uses
  %.4.i.1 = select i1 %i.adg, float %i.adf, float %.4.i ; 3 uses
  %indvars.iv.next218.i.1 = add nuw nsw i64 %indvars.iv217.i, 2 ; 2 uses
  %niter601.next.1 = add i64 %niter601, 2         ; 2 uses
  %niter601.ncmp.1 = icmp eq i64 %niter601.next.1, %unroll_iter600
  br i1 %niter601.ncmp.1, label %._crit_edge89.i.unr-lcssa, label %.lr.ph88.i, !llvm.loop !97

._crit_edge89.i.unr-lcssa:                        ; preds = %.lr.ph88.i
  br i1 %lcmp.mod596.not, label %._crit_edge89.i, label %.lr.ph88.i.epil.preheader

.lr.ph88.i.epil.preheader:                        ; preds = %._crit_edge89.i.unr-lcssa, %.lr.ph88.i.preheader
  %indvars.iv217.i.epil.init = phi i64 [ 0, %.lr.ph88.i.preheader ], [ %indvars.iv.next218.i.1, %._crit_edge89.i.unr-lcssa ] ; 2 uses
  %.355987.i.epil.init = phi float [ %.2558.i.lcssa, %.lr.ph88.i.preheader ], [ %.4.i.1, %._crit_edge89.i.unr-lcssa ] ; 2 uses
  %.358886.i.epil.init = phi i32 [ %.2587.i.lcssa, %.lr.ph88.i.preheader ], [ %.4589.i.1, %._crit_edge89.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod599)
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv217.i.epil.init
  %i.adj = load float, ptr %i.adi, align 4, !tbaa !15 ; 2 uses
  %i.adk = fcmp ogt float %i.adj, %.355987.i.epil.init ; 2 uses
  %i.adl = trunc nuw nsw i64 %indvars.iv217.i.epil.init to i32
  %.4589.i.epil = select i1 %i.adk, i32 %i.adl, i32 %.358886.i.epil.init
  %.4.i.epil = select i1 %i.adk, float %i.adj, float %.355987.i.epil.init
  br label %._crit_edge89.i

._crit_edge89.i:                                  ; preds = %._crit_edge89.i.unr-lcssa, %.lr.ph88.i.epil.preheader
  %.4589.i.lcssa = phi i32 [ %.4589.i.1, %._crit_edge89.i.unr-lcssa ], [ %.4589.i.epil, %.lr.ph88.i.epil.preheader ] ; 5 uses
  %.4.i.lcssa = phi float [ %.4.i.1, %._crit_edge89.i.unr-lcssa ], [ %.4.i.epil, %.lr.ph88.i.epil.preheader ] ; 2 uses
  %i.adm = sext i32 %.4589.i.lcssa to i64         ; 4 uses
  %i.adn = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.adm
  %i.ado = load float, ptr %i.adn, align 4, !tbaa !15 ; 3 uses
  %i.adp = add nsw i32 %.4589.i.lcssa, -1         ; 4 uses
  %i.adq = icmp sgt i32 %.4589.i.lcssa, 0
  br i1 %i.adq, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %._crit_edge89.i
  %i.adr = zext nneg i32 %i.adp to i64
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.adr
  %i.adt = load float, ptr %i.ads, align 4, !tbaa !15 ; 2 uses
  %i.adu = fcmp ogt float %i.adt, %i.ado
  br i1 %i.adu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.adm
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !7
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %._crit_edge89.i
  %.4584.i = phi float [ %i.adt, %bb.ah ], [ %i.ado, %bb.ag ], [ %i.ado, %._crit_edge89.i ]
  %.1551.i = phi i32 [ %i.adw, %bb.ah ], [ %i.adp, %bb.ag ], [ %i.adp, %._crit_edge89.i ]
  %i.adx = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.adm
  %i.ady = load float, ptr %i.adx, align 4, !tbaa !15
  %i.adz = fcmp ogt float %i.ady, %.4584.i
  br i1 %i.adz, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.aea = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.adm
  %i.aeb = load i32, ptr %i.aea, align 4, !tbaa !7
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.af
  %.5590.i = phi i32 [ %.4589.i.lcssa, %bb.aj ], [ %.4589.i.lcssa, %bb.ai ], [ %.058595.i, %bb.af ] ; 3 uses
  %.5.i = phi float [ %.4.i.lcssa, %bb.aj ], [ %.4.i.lcssa, %bb.ai ], [ %.055698.i, %bb.af ] ; 7 uses
  %.2554.i = phi i32 [ %i.aeb, %bb.aj ], [ %i.acm, %bb.ai ], [ %.055299.i, %bb.af ] ; 3 uses
  %.2.i = phi i32 [ %i.adp, %bb.aj ], [ %.1551.i, %bb.ai ], [ %.0550100.i, %bb.af ] ; 3 uses
  %i.aec = zext i32 %.2554.i to i64
  %i.aed = icmp eq i64 %indvars.iv.next224.i, %i.aec
  br i1 %i.aed, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.aee = icmp eq i32 %.5590.i, 0
  br i1 %i.aee, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.aef = add nsw i32 %.1.i, -1
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %.not636.not.i.not = icmp slt i32 %.5590.i, %i.l
  br i1 %.not636.not.i.not, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.aeg = sext i32 %.2.i to i64                  ; 2 uses
  %i.aeh = getelementptr inbounds [4 x i8], ptr %i.hd, i64 %i.aeg
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !7
  %i.aej = getelementptr inbounds [4 x i8], ptr %i.he, i64 %i.aeg
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !7
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.ak
  %.1592.i = phi i32 [ %.1.i, %bb.am ], [ %.059194.i, %bb.ak ], [ %i.aei, %bb.ao ], [ %.059194.i, %bb.an ]
  %.6.i = phi i32 [ 1, %bb.am ], [ %.5590.i, %bb.ak ], [ %i.aek, %bb.ao ], [ %i.l, %bb.an ]
  %.3555.i = phi i32 [ %i.aef, %bb.am ], [ %.2554.i, %bb.ak ], [ %.2554.i, %bb.ao ], [ %i.acm, %bb.an ]
  %.3.i = phi i32 [ 0, %bb.am ], [ %.2.i, %bb.ak ], [ %.2.i, %bb.ao ], [ %i.df, %bb.an ]
  %i.ael = icmp sgt i64 %indvars.iv223.i, 1
  br i1 %i.ael, label %.lr.ph74.i, label %.preheader2.preheader.i, !llvm.loop !98

.preheader2.i:                                    ; preds = %._crit_edge109.i, %.preheader2.preheader.i
  %indvars.iv232.i = phi i64 [ 0, %.preheader2.preheader.i ], [ %indvars.iv.next233.i, %._crit_edge109.i ] ; 3 uses
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv232.i
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !19 ; 7 uses
  %i.aeo = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv232.i
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !19 ; 7 uses
  %i.aeq = ptrtoaddr ptr %i.aep to i64
  %i.aer = ptrtoaddr ptr %i.aen to i64
  %i.aes = sub i64 %i.aer, %i.aeq
  %diff.check527 = icmp ugt i64 %i.aes, -16
  %or.cond545 = select i1 %min.iters.check529, i1 true, i1 %diff.check527
  br i1 %or.cond545, label %scalar.ph528.preheader, label %vector.body534

vector.body534:                                   ; preds = %.preheader2.i, %vector.body534
  %index535 = phi i64 [ %index.next537, %vector.body534 ], [ 0, %.preheader2.i ] ; 3 uses
  %i.aet = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %index535
  %wide.load536 = load <4 x float>, ptr %i.aet, align 4, !tbaa !15
  %i.aeu = fdiv <4 x float> %wide.load536, %broadcast.splat533
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %index535
  store <4 x float> %i.aeu, ptr %i.aev, align 4, !tbaa !15
  %index.next537 = add nuw i64 %index535, 4       ; 2 uses
  %i.aew = icmp eq i64 %index.next537, %n.vec531
  br i1 %i.aew, label %middle.block538, label %vector.body534, !llvm.loop !99

middle.block538:                                  ; preds = %vector.body534
  br i1 %cmp.n539, label %._crit_edge109.i, label %scalar.ph528.preheader

scalar.ph528.preheader:                           ; preds = %.preheader2.i, %middle.block538
  %indvars.iv226.i.ph = phi i64 [ 0, %.preheader2.i ], [ %n.vec531, %middle.block538 ] ; 3 uses
  br i1 %lcmp.mod603.not, label %scalar.ph528.prol.loopexit, label %scalar.ph528.prol

scalar.ph528.prol:                                ; preds = %scalar.ph528.preheader, %scalar.ph528.prol
  %indvars.iv226.i.prol = phi i64 [ %indvars.iv.next227.i.prol, %scalar.ph528.prol ], [ %indvars.iv226.i.ph, %scalar.ph528.preheader ] ; 3 uses
  %prol.iter604 = phi i64 [ %prol.iter604.next, %scalar.ph528.prol ], [ 0, %scalar.ph528.preheader ]
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv226.i.prol
  %i.aey = load float, ptr %i.aex, align 4, !tbaa !15
  %i.aez = fdiv float %i.aey, %.5.i
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv226.i.prol
  store float %i.aez, ptr %i.afa, align 4, !tbaa !15
  %indvars.iv.next227.i.prol = add nuw nsw i64 %indvars.iv226.i.prol, 1 ; 2 uses
  %prol.iter604.next = add i64 %prol.iter604, 1   ; 2 uses
  %prol.iter604.cmp.not = icmp eq i64 %prol.iter604.next, %xtraiter602
  br i1 %prol.iter604.cmp.not, label %scalar.ph528.prol.loopexit, label %scalar.ph528.prol, !llvm.loop !100

scalar.ph528.prol.loopexit:                       ; preds = %scalar.ph528.prol, %scalar.ph528.preheader
  %indvars.iv226.i.unr = phi i64 [ %indvars.iv226.i.ph, %scalar.ph528.preheader ], [ %indvars.iv.next227.i.prol, %scalar.ph528.prol ]
  %i.afb = sub nsw i64 %indvars.iv226.i.ph, %i.oy
  %i.afc = icmp ugt i64 %i.afb, -4
  br i1 %i.afc, label %._crit_edge109.i, label %scalar.ph528

scalar.ph528:                                     ; preds = %scalar.ph528.prol.loopexit, %scalar.ph528
  %indvars.iv226.i = phi i64 [ %indvars.iv.next227.i.3, %scalar.ph528 ], [ %indvars.iv226.i.unr, %scalar.ph528.prol.loopexit ] ; 6 uses
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv226.i
  %i.afe = load float, ptr %i.afd, align 4, !tbaa !15
  %i.aff = fdiv float %i.afe, %.5.i
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv226.i
  store float %i.aff, ptr %i.afg, align 4, !tbaa !15
  %indvars.iv.next227.i = add nuw nsw i64 %indvars.iv226.i, 1 ; 2 uses
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv.next227.i
  %i.afi = load float, ptr %i.afh, align 4, !tbaa !15
  %i.afj = fdiv float %i.afi, %.5.i
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv.next227.i
  store float %i.afj, ptr %i.afk, align 4, !tbaa !15
  %indvars.iv.next227.i.1 = add nuw nsw i64 %indvars.iv226.i, 2 ; 2 uses
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv.next227.i.1
  %i.afm = load float, ptr %i.afl, align 4, !tbaa !15
  %i.afn = fdiv float %i.afm, %.5.i
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv.next227.i.1
  store float %i.afn, ptr %i.afo, align 4, !tbaa !15
  %indvars.iv.next227.i.2 = add nuw nsw i64 %indvars.iv226.i, 3 ; 2 uses
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv.next227.i.2
  %i.afq = load float, ptr %i.afp, align 4, !tbaa !15
  %i.afr = fdiv float %i.afq, %.5.i
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv.next227.i.2
  store float %i.afr, ptr %i.afs, align 4, !tbaa !15
  %indvars.iv.next227.i.3 = add nuw nsw i64 %indvars.iv226.i, 4 ; 2 uses
  %exitcond231.not.i.3 = icmp eq i64 %indvars.iv.next227.i.3, %i.oy
  br i1 %exitcond231.not.i.3, label %._crit_edge109.i, label %scalar.ph528, !llvm.loop !101

._crit_edge109.i:                                 ; preds = %scalar.ph528.prol.loopexit, %scalar.ph528, %middle.block538
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %exitcond237.not.i = icmp eq i64 %indvars.iv.next233.i, %wide.trip.count236.i
end_hunk_1
begin_hunk_2_@Lalign2m2m_hmout:bb.a
  %i.ao = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.an) #13
  %.not183 = icmp eq i64 %i.ao, %i.ae
  br i1 %.not183, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = trunc nuw nsw i64 %indvars.iv218 to i32
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aq, ptr noundef nonnull @.str.2, i32 noundef %i.ap, i32 noundef %9) #14 ; 0 uses
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite184 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 27, i64 1, ptr %i.as) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.g:                                             ; preds = %bb.e
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count221
  br i1 %exitcond222.not, label %._crit_edge, label %bb.e, !llvm.loop !139

._crit_edge:                                      ; preds = %bb.g, %.preheader192
  tail call void @cpmx_ribosum(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %4, ptr noundef %i.z, ptr noundef %6, i32 noundef %i.i, i32 noundef %8) #12
  tail call void @cpmx_ribosum(ptr noundef nonnull %1, ptr noundef %3, ptr noundef %5, ptr noundef %i.aa, ptr noundef %7, i32 noundef %i.l, i32 noundef %9) #12
  %.not = icmp eq ptr %11, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  tail call void @new_OpeningGapCount(ptr noundef %i.u, i32 noundef %8, ptr noundef nonnull %0, ptr noundef %6, i32 noundef %i.i, ptr noundef nonnull %11) #12
  tail call void @new_OpeningGapCount(ptr noundef %i.w, i32 noundef %9, ptr noundef nonnull %1, ptr noundef %7, i32 noundef %i.l, ptr noundef %12) #12
  tail call void @new_FinalGapCount(ptr noundef %i.x, i32 noundef %8, ptr noundef nonnull %0, ptr noundef %6, i32 noundef %i.i, ptr noundef %14) #12
  tail call void @new_FinalGapCount(ptr noundef %i.y, i32 noundef %9, ptr noundef nonnull %1, ptr noundef %7, i32 noundef %i.l, ptr noundef %14) #12
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge
  tail call void @st_OpeningGapCount(ptr noundef %i.u, i32 noundef %8, ptr noundef nonnull %0, ptr noundef %6, i32 noundef %i.i) #12
  tail call void @st_OpeningGapCount(ptr noundef %i.w, i32 noundef %9, ptr noundef nonnull %1, ptr noundef %7, i32 noundef %i.l) #12
  tail call void @st_FinalGapCount(ptr noundef %i.x, i32 noundef %8, ptr noundef nonnull %0, ptr noundef %6, i32 noundef %i.i) #12
  tail call void @st_FinalGapCount(ptr noundef %i.y, i32 noundef %9, ptr noundef nonnull %1, ptr noundef %7, i32 noundef %i.l) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.at = icmp sgt i32 %i.i, 0
  br i1 %i.at, label %.lr.ph202, label %.preheader191

.lr.ph202:                                        ; preds = %bb.j
  %i.au = fpext float %i.b to double              ; 3 uses
  %wide.trip.count226 = and i64 %i.h, 2147483647  ; 4 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count226, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph202
  %i.av = shl nuw nsw i64 %wide.trip.count226, 2  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.av
  %scevgep274 = getelementptr i8, ptr %i.x, i64 %i.av
  %bound0 = icmp ult ptr %i.u, %scevgep274
  %bound1 = icmp ult ptr %i.x, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 2147483644               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.au, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.aw, align 4, !tbaa !15, !alias.scope !220, !noalias !221
  %i.ax = fpext <4 x float> %wide.load to <4 x double>
  %i.ay = fsub <4 x double> splat (double 1.000000e+00), %i.ax
  %i.az = fmul <4 x double> %i.ay, splat (double 5.000000e-01)
  %i.ba = fmul <4 x double> %i.az, %broadcast.splat
  %i.bb = fptrunc <4 x double> %i.ba to <4 x float>
  store <4 x float> %i.bb, ptr %i.aw, align 4, !tbaa !15, !alias.scope !220, !noalias !221
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index ; 2 uses
  %wide.load275 = load <4 x float>, ptr %i.bc, align 4, !tbaa !15, !alias.scope !221
  %i.bd = fpext <4 x float> %wide.load275 to <4 x double>
  %i.be = fsub <4 x double> splat (double 1.000000e+00), %i.bd
  %i.bf = fmul <4 x double> %i.be, splat (double 5.000000e-01)
  %i.bg = fmul <4 x double> %i.bf, %broadcast.splat
  %i.bh = fptrunc <4 x double> %i.bg to <4 x float>
  store <4 x float> %i.bh, ptr %i.bc, align 4, !tbaa !15, !alias.scope !221
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count226, %n.vec
  br i1 %cmp.n, label %.preheader191, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph202, %middle.block
  %indvars.iv223.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph202 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader191:                                    ; preds = %scalar.ph, %middle.block, %bb.j
  %i.bj = icmp sgt i32 %i.l, 0
  br i1 %i.bj, label %.lr.ph204, label %._crit_edge205

.lr.ph204:                                        ; preds = %.preheader191
  %i.bk = fpext float %i.b to double              ; 3 uses
  %wide.trip.count231 = and i64 %i.k, 2147483647  ; 4 uses
  %min.iters.check283 = icmp samesign ult i64 %wide.trip.count231, 4
  br i1 %min.iters.check283, label %scalar.ph282.preheader, label %vector.memcheck276

vector.memcheck276:                               ; preds = %.lr.ph204
  %i.bl = shl nuw nsw i64 %wide.trip.count231, 2  ; 2 uses
  %scevgep277 = getelementptr i8, ptr %i.w, i64 %i.bl
  %scevgep278 = getelementptr i8, ptr %i.y, i64 %i.bl
  %bound0279 = icmp ult ptr %i.w, %scevgep278
  %bound1280 = icmp ult ptr %i.y, %scevgep277
  %found.conflict281 = and i1 %bound0279, %bound1280
  br i1 %found.conflict281, label %scalar.ph282.preheader, label %vector.ph284

vector.ph284:                                     ; preds = %vector.memcheck276
  %n.vec285 = and i64 %i.k, 2147483644            ; 3 uses
  %broadcast.splatinsert286 = insertelement <4 x double> poison, double %i.bk, i64 0
  %broadcast.splat287 = shufflevector <4 x double> %broadcast.splatinsert286, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body288

vector.body288:                                   ; preds = %vector.body288, %vector.ph284
  %index289 = phi i64 [ 0, %vector.ph284 ], [ %index.next292, %vector.body288 ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index289 ; 2 uses
  %wide.load290 = load <4 x float>, ptr %i.bm, align 4, !tbaa !15, !alias.scope !222, !noalias !223
  %i.bn = fpext <4 x float> %wide.load290 to <4 x double>
  %i.bo = fsub <4 x double> splat (double 1.000000e+00), %i.bn
  %i.bp = fmul <4 x double> %i.bo, splat (double 5.000000e-01)
  %i.bq = fmul <4 x double> %i.bp, %broadcast.splat287
  %i.br = fptrunc <4 x double> %i.bq to <4 x float>
  store <4 x float> %i.br, ptr %i.bm, align 4, !tbaa !15, !alias.scope !222, !noalias !223
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index289 ; 2 uses
  %wide.load291 = load <4 x float>, ptr %i.bs, align 4, !tbaa !15, !alias.scope !223
  %i.bt = fpext <4 x float> %wide.load291 to <4 x double>
  %i.bu = fsub <4 x double> splat (double 1.000000e+00), %i.bt
  %i.bv = fmul <4 x double> %i.bu, splat (double 5.000000e-01)
  %i.bw = fmul <4 x double> %i.bv, %broadcast.splat287
  %i.bx = fptrunc <4 x double> %i.bw to <4 x float>
  store <4 x float> %i.bx, ptr %i.bs, align 4, !tbaa !15, !alias.scope !223
  %index.next292 = add nuw i64 %index289, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next292, %n.vec285
  br i1 %i.by, label %middle.block293, label %vector.body288, !llvm.loop !147

middle.block293:                                  ; preds = %vector.body288
  %cmp.n294 = icmp eq i64 %wide.trip.count231, %n.vec285
  br i1 %cmp.n294, label %._crit_edge205, label %scalar.ph282.preheader

scalar.ph282.preheader:                           ; preds = %vector.memcheck276, %.lr.ph204, %middle.block293
  %indvars.iv228.ph = phi i64 [ 0, %vector.memcheck276 ], [ 0, %.lr.ph204 ], [ %n.vec285, %middle.block293 ]
  br label %scalar.ph282

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv223 = phi i64 [ %indvars.iv.next224, %scalar.ph ], [ %indvars.iv223.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv223 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !15
  %i.cb = fpext float %i.ca to double
  %i.cc = fsub double 1.000000e+00, %i.cb
  %i.cd = fmul double %i.cc, 5.000000e-01
  %i.ce = fmul double %i.cd, %i.au
  %i.cf = fptrunc double %i.ce to float
  store float %i.cf, ptr %i.bz, align 4, !tbaa !15
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv223 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !15
  %i.ci = fpext float %i.ch to double
  %i.cj = fsub double 1.000000e+00, %i.ci
  %i.ck = fmul double %i.cj, 5.000000e-01
  %i.cl = fmul double %i.ck, %i.au
  %i.cm = fptrunc double %i.cl to float
  store float %i.cm, ptr %i.cg, align 4, !tbaa !15
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next224, %wide.trip.count226
  br i1 %exitcond227.not, label %.preheader191, label %scalar.ph, !llvm.loop !148

scalar.ph282:                                     ; preds = %scalar.ph282.preheader, %scalar.ph282
  %indvars.iv228 = phi i64 [ %indvars.iv.next229, %scalar.ph282 ], [ %indvars.iv228.ph, %scalar.ph282.preheader ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv228 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !15
  %i.cp = fpext float %i.co to double
  %i.cq = fsub double 1.000000e+00, %i.cp
  %i.cr = fmul double %i.cq, 5.000000e-01
  %i.cs = fmul double %i.cr, %i.bk
  %i.ct = fptrunc double %i.cs to float
  store float %i.ct, ptr %i.cn, align 4, !tbaa !15
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv228 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !15
  %i.cw = fpext float %i.cv to double
  %i.cx = fsub double 1.000000e+00, %i.cw
  %i.cy = fmul double %i.cx, 5.000000e-01
  %i.cz = fmul double %i.cy, %i.bk
  %i.da = fptrunc double %i.cz to float
  store float %i.da, ptr %i.cu, align 4, !tbaa !15
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count231
  br i1 %exitcond232.not, label %._crit_edge205, label %scalar.ph282, !llvm.loop !149

._crit_edge205:                                   ; preds = %scalar.ph282, %middle.block293, %.preheader191
  store ptr %i.u, ptr %i.s, align 8, !tbaa !19
  %i.db = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.x, ptr %i.db, align 8, !tbaa !19
  %i.dc = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.w, ptr %i.dc, align 8, !tbaa !19
  %i.dd = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.y, ptr %i.dd, align 8, !tbaa !19
  %i.de = add i32 %i.i, -1                        ; 8 uses
  %i.df = add i32 %i.l, -1                        ; 7 uses
  %i.dg = load i32, ptr @reccycle, align 4, !tbaa !7
  %i.dh = add nsw i32 %i.dg, 1
  store i32 %i.dh, ptr @reccycle, align 4, !tbaa !7
  %i.di = icmp slt i32 %i.l, 1
  br i1 %i.di, label %.preheader1.i, label %bb.m

.preheader1.i:                                    ; preds = %._crit_edge205
  br i1 %i.ab, label %.lr.ph114.i, label %.preheader.i

.lr.ph114.i:                                      ; preds = %.preheader1.i
  %sext188 = shl i64 %i.h, 32
  %i.dj = ashr exact i64 %sext188, 32             ; 2 uses
  %wide.trip.count241.i = zext nneg i32 %8 to i64
  br label %bb.k

.preheader.i:                                     ; preds = %bb.k, %.preheader1.i
  br i1 %i.ad, label %.lr.ph121.i, label %MSalign2m2m_rec.exit

.lr.ph121.i:                                      ; preds = %.preheader.i
  %.not639115.i = icmp slt i32 %i.i, 1
  %wide.trip.count252.i = zext nneg i32 %9 to i64 ; 3 uses
  br i1 %.not639115.i, label %.lr.ph121.split.us.i.preheader, label %.lr.ph118.i

.lr.ph121.split.us.i.preheader:                   ; preds = %.lr.ph121.i
  %xtraiter609 = and i64 %wide.trip.count252.i, 7 ; 3 uses
  %i.dk = icmp ult i32 %9, 8
  br i1 %i.dk, label %.lr.ph121.split.us.i.epil.preheader, label %.lr.ph121.split.us.i.preheader.new

.lr.ph121.split.us.i.preheader.new:               ; preds = %.lr.ph121.split.us.i.preheader
  %unroll_iter613 = and i64 %wide.trip.count252.i, 2147483640
  br label %.lr.ph121.split.us.i

.lr.ph121.split.us.i:                             ; preds = %.lr.ph121.split.us.i, %.lr.ph121.split.us.i.preheader.new
  %indvars.iv249.i = phi i64 [ 0, %.lr.ph121.split.us.i.preheader.new ], [ %indvars.iv.next250.i.7, %.lr.ph121.split.us.i ] ; 9 uses
  %niter614 = phi i64 [ 0, %.lr.ph121.split.us.i.preheader.new ], [ %niter614.next.7, %.lr.ph121.split.us.i ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !10
  store i8 0, ptr %i.dm, align 1, !tbaa !20
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !10
  store i8 0, ptr %i.dp, align 1, !tbaa !20
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !10
  store i8 0, ptr %i.ds, align 1, !tbaa !20
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !10
  store i8 0, ptr %i.dv, align 1, !tbaa !20
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !10
  store i8 0, ptr %i.dy, align 1, !tbaa !20
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !10
  store i8 0, ptr %i.eb, align 1, !tbaa !20
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !10
  store i8 0, ptr %i.ee, align 1, !tbaa !20
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !10
  store i8 0, ptr %i.eh, align 1, !tbaa !20
  %indvars.iv.next250.i.7 = add nuw nsw i64 %indvars.iv249.i, 8 ; 2 uses
  %niter614.next.7 = add i64 %niter614, 8         ; 2 uses
  %niter614.ncmp.7 = icmp eq i64 %niter614.next.7, %unroll_iter613
  br i1 %niter614.ncmp.7, label %MSalign2m2m_rec.exit.loopexit.unr-lcssa, label %.lr.ph121.split.us.i, !llvm.loop !150

bb.k:                                             ; preds = %bb.k, %.lr.ph114.i
  %indvars.iv238.i = phi i64 [ 0, %.lr.ph114.i ], [ %indvars.iv.next239.i, %bb.k ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv238.i ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !10
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv238.i
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !10
  %i.em = tail call ptr @strncpy(ptr noundef %i.ej, ptr noundef %i.el, i64 noundef %i.dj) #12 ; 0 uses
  %i.en = load ptr, ptr %i.ei, align 8, !tbaa !10
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 %i.dj
  store i8 0, ptr %i.eo, align 1, !tbaa !20
  %indvars.iv.next239.i = add nuw nsw i64 %indvars.iv238.i, 1 ; 2 uses
  %exitcond242.not.i = icmp eq i64 %indvars.iv.next239.i, %wide.trip.count241.i
  br i1 %exitcond242.not.i, label %.preheader.i, label %bb.k, !llvm.loop !151

.lr.ph118.i:                                      ; preds = %.lr.ph121.i, %._crit_edge119.i
  %indvars.iv244.i = phi i64 [ %indvars.iv.next245.i, %._crit_edge119.i ], [ 0, %.lr.ph121.i ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv244.i ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !10
  store i8 0, ptr %i.eq, align 1, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph118.i
  %.0593116.i = phi i32 [ 0, %.lr.ph118.i ], [ %i.es, %bb.l ] ; 2 uses
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !10 ; 2 uses
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.er)
  %endptr.i = getelementptr inbounds i8, ptr %i.er, i64 %strlen.i
  store i16 45, ptr %endptr.i, align 1
  %i.es = add nuw nsw i32 %.0593116.i, 1
  %exitcond243.not.i = icmp eq i32 %.0593116.i, %i.de
  br i1 %exitcond243.not.i, label %._crit_edge119.i, label %bb.l, !llvm.loop !152

._crit_edge119.i:                                 ; preds = %bb.l
  %indvars.iv.next245.i = add nuw nsw i64 %indvars.iv244.i, 1 ; 2 uses
  %exitcond248.not.i = icmp eq i64 %indvars.iv.next245.i, %wide.trip.count252.i
  br i1 %exitcond248.not.i, label %MSalign2m2m_rec.exit, label %.lr.ph118.i, !llvm.loop !150

bb.m:                                             ; preds = %._crit_edge205
  %i.et = tail call ptr @AllocateCharMtx(i32 noundef %8, i32 noundef 0) #12 ; 8 uses
  %i.eu = tail call ptr @AllocateCharMtx(i32 noundef %9, i32 noundef 0) #12 ; 8 uses
  %i.ev = ptrtoaddr ptr %i.eu to i64
  br i1 %i.ab, label %.lr.ph.preheader.i, label %.preheader13.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.ew = ptrtoaddr ptr %i.et to i64
  %wide.trip.count.i = zext nneg i32 %8 to i64    ; 5 uses
  %min.iters.check298 = icmp ult i32 %8, 8
  %i.ex = sub i64 %i.p, %i.ew
  %diff.check = icmp ugt i64 %i.ex, -32
  %or.cond = select i1 %min.iters.check298, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph299

vector.ph299:                                     ; preds = %.lr.ph.preheader.i
  %n.vec300 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body301

vector.body301:                                   ; preds = %vector.body301, %vector.ph299
  %index302 = phi i64 [ 0, %vector.ph299 ], [ %index.next305, %vector.body301 ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index302 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %wide.load303 = load <2 x ptr>, ptr %i.ey, align 8, !tbaa !10
  %wide.load304 = load <2 x ptr>, ptr %i.ez, align 8, !tbaa !10
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %index302 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store <2 x ptr> %wide.load303, ptr %i.fa, align 8, !tbaa !10
  store <2 x ptr> %wide.load304, ptr %i.fb, align 8, !tbaa !10
  %index.next305 = add nuw i64 %index302, 4       ; 2 uses
  %i.fc = icmp eq i64 %index.next305, %n.vec300
  br i1 %i.fc, label %middle.block306, label %vector.body301, !llvm.loop !153

middle.block306:                                  ; preds = %vector.body301
  %cmp.n307 = icmp eq i64 %n.vec300, %wide.trip.count.i
  br i1 %cmp.n307, label %.preheader13.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block306
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec300, %middle.block306 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.prol
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !10
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv.i.prol
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !10
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !154

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.fg = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.fh = icmp ugt i64 %i.fg, -4
  br i1 %i.fh, label %.preheader13.i, label %.lr.ph.i

.preheader13.i:                                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block306, %bb.m
  br i1 %i.ad, label %.lr.ph17.preheader.i, label %._crit_edge.i

.lr.ph17.preheader.i:                             ; preds = %.preheader13.i
  %wide.trip.count134.i = zext nneg i32 %9 to i64 ; 5 uses
  %min.iters.check312 = icmp ult i32 %9, 8
  %i.fi = sub i64 %i.r, %i.ev
  %diff.check310 = icmp ugt i64 %i.fi, -32
  %or.cond545 = select i1 %min.iters.check312, i1 true, i1 %diff.check310
  br i1 %or.cond545, label %.lr.ph17.i.preheader, label %vector.ph313

vector.ph313:                                     ; preds = %.lr.ph17.preheader.i
  %n.vec314 = and i64 %wide.trip.count134.i, 2147483644 ; 3 uses
  br label %vector.body315

vector.body315:                                   ; preds = %vector.body315, %vector.ph313
  %index316 = phi i64 [ 0, %vector.ph313 ], [ %index.next319, %vector.body315 ] ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index316 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %wide.load317 = load <2 x ptr>, ptr %i.fj, align 8, !tbaa !10
  %wide.load318 = load <2 x ptr>, ptr %i.fk, align 8, !tbaa !10
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %index316 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store <2 x ptr> %wide.load317, ptr %i.fl, align 8, !tbaa !10
  store <2 x ptr> %wide.load318, ptr %i.fm, align 8, !tbaa !10
  %index.next319 = add nuw i64 %index316, 4       ; 2 uses
  %i.fn = icmp eq i64 %index.next319, %n.vec314
  br i1 %i.fn, label %middle.block320, label %vector.body315, !llvm.loop !155

middle.block320:                                  ; preds = %vector.body315
  %cmp.n321 = icmp eq i64 %n.vec314, %wide.trip.count134.i
  br i1 %cmp.n321, label %._crit_edge.i, label %.lr.ph17.i.preheader
end_hunk_2
begin_hunk_3_@Lalign2m2m_hmout:bb.a
  %i.rs = fadd float %i.rq, %i.rr                 ; 2 uses
  %i.rt = fcmp ogt float %i.rs, %.0580.i
  %.1581.i = select i1 %i.rt, float %i.rs, float %.0580.i
  %i.ru = load float, ptr %i.pi, align 4, !tbaa !15
  %i.rv = fadd float %i.rh, %i.ru                 ; 2 uses
  %i.rw = fcmp ult float %i.rv, %i.rq
  br i1 %i.rw, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph44.split.i
  store float %i.rv, ptr %.056842.i, align 4, !tbaa !15
  store i32 %i.pt, ptr %.057441.i, align 4, !tbaa !7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph44.split.i
  %i.rx = load float, ptr %.056440.i, align 4, !tbaa !15
  %i.ry = fadd float %.1581.i, %i.rx              ; 2 uses
  store float %i.ry, ptr %.056440.i, align 4, !tbaa !15
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %indvars.iv166.i
  store float %i.ry, ptr %i.rz, align 4, !tbaa !15
  %i.sa = load float, ptr %.056842.i, align 4, !tbaa !15
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %indvars.iv166.i
  store float %i.sa, ptr %i.sb, align 4, !tbaa !15
  %i.sc = getelementptr inbounds nuw i8, ptr %.056638.i, i64 4
  %indvars.iv.next167.i = add nuw nsw i64 %indvars.iv166.i, 1 ; 2 uses
  %.0574.i = getelementptr inbounds nuw i8, ptr %.057441.i, i64 4
  %.0568.i = getelementptr inbounds nuw i8, ptr %.056842.i, i64 4
  %exitcond171.not.i = icmp eq i64 %indvars.iv.next167.i, %wide.trip.count145.i
  br i1 %exitcond171.not.i, label %._crit_edge45.i, label %.lr.ph44.split.i, !llvm.loop !182

._crit_edge45.i:                                  ; preds = %bb.s, %bb.q
  %i.sd = phi ptr [ %i.pz, %bb.q ], [ %i.ps, %bb.s ]
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %i.oq
  %i.sf = load float, ptr %i.se, align 4, !tbaa !15
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv178.i
  store float %i.sf, ptr %i.sg, align 4, !tbaa !15
  %i.sh = load float, ptr %i.ox, align 4, !tbaa !15
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %i.oy
  store float %i.sh, ptr %i.si, align 4, !tbaa !15
  %indvars.iv.next179.i = add nuw nsw i64 %indvars.iv178.i, 1 ; 2 uses
  %exitcond183.not.i = icmp eq i64 %indvars.iv.next179.i, %wide.trip.count139.i
  br i1 %exitcond183.not.i, label %.lr.ph56.i, label %bb.o, !llvm.loop !183

.lr.ph56.i:                                       ; preds = %._crit_edge45.i
  tail call fastcc void @match_ribosum(ptr noundef nonnull %i.hh, ptr noundef readonly %i.aa, ptr noundef readonly %i.z, i32 noundef range(i32 -2147483648, 2147483647) %i.df, i32 noundef %i.i, ptr noundef %i.ho, ptr noundef %i.hp, i32 noundef 1)
  tail call fastcc void @match_ribosum(ptr noundef nonnull %.057648.i, ptr noundef readonly %i.z, ptr noundef readonly %i.aa, i32 noundef range(i32 -2147483648, 2147483647) %i.de, i32 noundef %i.l, ptr noundef %i.ho, ptr noundef %i.hp, i32 noundef 1)
  %i.sj = zext i32 %i.de to i64                   ; 11 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.sj ; 8 uses
  %min.iters.check430 = icmp ult i32 %i.de, 12
  br i1 %min.iters.check430, label %scalar.ph429.preheader, label %vector.memcheck418

vector.memcheck418:                               ; preds = %.lr.ph56.i
  %i.sl = shl nuw nsw i64 %i.sj, 2                ; 2 uses
  %scevgep419 = getelementptr i8, ptr %i.hh, i64 %i.sl ; 2 uses
  %i.sm = add nuw nsw i64 %i.sl, 4                ; 2 uses
  %scevgep420 = getelementptr i8, ptr %i.x, i64 %i.sm
  %scevgep421 = getelementptr i8, ptr %i.u, i64 %i.sm
  %bound0422 = icmp ult ptr %i.hh, %scevgep420
  %bound1423 = icmp ult ptr %i.sk, %scevgep419
  %found.conflict424 = and i1 %bound0422, %bound1423
  %bound0425 = icmp ult ptr %i.hh, %scevgep421
  %bound1426 = icmp ult ptr %i.mp, %scevgep419
  %found.conflict427 = and i1 %bound0425, %bound1426
  %conflict.rdx428 = or i1 %found.conflict424, %found.conflict427
  br i1 %conflict.rdx428, label %scalar.ph429.preheader, label %vector.ph431

vector.ph431:                                     ; preds = %vector.memcheck418
  %n.vec432 = and i64 %i.sj, 2147483640           ; 3 uses
  %i.sn = load float, ptr %i.sk, align 4, !tbaa !15, !alias.scope !236
  %broadcast.splatinsert437 = insertelement <4 x float> poison, float %i.sn, i64 0
  %broadcast.splat438 = shufflevector <4 x float> %broadcast.splatinsert437, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body433

vector.body433:                                   ; preds = %vector.body433, %vector.ph431
  %index434 = phi i64 [ 0, %vector.ph431 ], [ %index.next441, %vector.body433 ] ; 3 uses
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index434 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 4
  %i.sq = getelementptr inbounds nuw i8, ptr %i.so, i64 20
  %wide.load435 = load <4 x float>, ptr %i.sp, align 4, !tbaa !15, !alias.scope !237
  %wide.load436 = load <4 x float>, ptr %i.sq, align 4, !tbaa !15, !alias.scope !237
  %i.sr = fadd <4 x float> %broadcast.splat438, %wide.load435
  %i.ss = fadd <4 x float> %broadcast.splat438, %wide.load436
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %index434 ; 3 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 16 ; 2 uses
  %wide.load439 = load <4 x float>, ptr %i.st, align 4, !tbaa !15, !alias.scope !238, !noalias !239
  %wide.load440 = load <4 x float>, ptr %i.su, align 4, !tbaa !15, !alias.scope !238, !noalias !239
  %i.sv = fadd <4 x float> %wide.load439, %i.sr
  %i.sw = fadd <4 x float> %wide.load440, %i.ss
  store <4 x float> %i.sv, ptr %i.st, align 4, !tbaa !15, !alias.scope !238, !noalias !239
  store <4 x float> %i.sw, ptr %i.su, align 4, !tbaa !15, !alias.scope !238, !noalias !239
  %index.next441 = add nuw i64 %index434, 8       ; 2 uses
  %i.sx = icmp eq i64 %index.next441, %n.vec432
  br i1 %i.sx, label %middle.block442, label %vector.body433, !llvm.loop !188

middle.block442:                                  ; preds = %vector.body433
  %cmp.n443 = icmp eq i64 %n.vec432, %i.sj
  br i1 %cmp.n443, label %.lr.ph58.i, label %scalar.ph429.preheader

scalar.ph429.preheader:                           ; preds = %vector.memcheck418, %.lr.ph56.i, %middle.block442
  %indvars.iv184.i.ph = phi i64 [ 0, %vector.memcheck418 ], [ 0, %.lr.ph56.i ], [ %n.vec432, %middle.block442 ] ; 4 uses
  %xtraiter575 = and i64 %i.sj, 1
  %lcmp.mod576.not = icmp eq i64 %xtraiter575, 0
  br i1 %lcmp.mod576.not, label %scalar.ph429.prol.loopexit, label %scalar.ph429.prol

scalar.ph429.prol:                                ; preds = %scalar.ph429.preheader
  %i.sy = load float, ptr %i.sk, align 4, !tbaa !15
  %indvars.iv.next185.i.prol = or disjoint i64 %indvars.iv184.i.ph, 1 ; 2 uses
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next185.i.prol
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !15
  %i.tb = fadd float %i.sy, %i.ta
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv184.i.ph ; 2 uses
  %i.td = load float, ptr %i.tc, align 4, !tbaa !15
  %i.te = fadd float %i.td, %i.tb
  store float %i.te, ptr %i.tc, align 4, !tbaa !15
  br label %scalar.ph429.prol.loopexit

scalar.ph429.prol.loopexit:                       ; preds = %scalar.ph429.prol, %scalar.ph429.preheader
  %indvars.iv184.i.unr = phi i64 [ %indvars.iv184.i.ph, %scalar.ph429.preheader ], [ %indvars.iv.next185.i.prol, %scalar.ph429.prol ]
  %i.tf = add nsw i64 %i.sj, -1
  %i.tg = icmp eq i64 %indvars.iv184.i.ph, %i.tf
  br i1 %i.tg, label %.lr.ph58.i, label %scalar.ph429

.lr.ph58.i:                                       ; preds = %scalar.ph429.prol.loopexit, %scalar.ph429, %middle.block442
  %i.th = getelementptr [4 x i8], ptr %i.y, i64 %i.oq ; 12 uses
  %min.iters.check458 = icmp ult i32 %i.l, 13
  br i1 %min.iters.check458, label %scalar.ph457.preheader, label %vector.memcheck445

vector.memcheck445:                               ; preds = %.lr.ph58.i
  %i.ti = shl nuw nsw i64 %i.oq, 2                ; 2 uses
  %scevgep446 = getelementptr i8, ptr %.057648.i, i64 %i.ti ; 2 uses
  %i.tj = add nuw nsw i64 %i.ti, 4                ; 2 uses
  %scevgep447 = getelementptr i8, ptr %i.y, i64 %i.tj
  %scevgep448 = getelementptr i8, ptr %i.w, i64 4
  %scevgep449 = getelementptr i8, ptr %i.w, i64 %i.tj
  %bound0450 = icmp ult ptr %.057648.i, %scevgep447
  %bound1451 = icmp ult ptr %i.th, %scevgep446
  %found.conflict452 = and i1 %bound0450, %bound1451
  %bound0453 = icmp ult ptr %.057648.i, %scevgep449
  %bound1454 = icmp ult ptr %scevgep448, %scevgep446
  %found.conflict455 = and i1 %bound0453, %bound1454
  %conflict.rdx456 = or i1 %found.conflict452, %found.conflict455
  br i1 %conflict.rdx456, label %scalar.ph457.preheader, label %vector.ph459

vector.ph459:                                     ; preds = %vector.memcheck445
  %n.vec460 = and i64 %i.oq, 2147483640           ; 3 uses
  %i.tk = load float, ptr %i.th, align 4, !tbaa !15, !alias.scope !240
  %broadcast.splatinsert465 = insertelement <4 x float> poison, float %i.tk, i64 0
  %broadcast.splat466 = shufflevector <4 x float> %broadcast.splatinsert465, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body461

vector.body461:                                   ; preds = %vector.body461, %vector.ph459
  %index462 = phi i64 [ 0, %vector.ph459 ], [ %index.next469, %vector.body461 ] ; 3 uses
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index462 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 4
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tl, i64 20
  %wide.load463 = load <4 x float>, ptr %i.tm, align 4, !tbaa !15, !alias.scope !241
  %wide.load464 = load <4 x float>, ptr %i.tn, align 4, !tbaa !15, !alias.scope !241
  %i.to = fadd <4 x float> %broadcast.splat466, %wide.load463
  %i.tp = fadd <4 x float> %broadcast.splat466, %wide.load464
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %index462 ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 16 ; 2 uses
  %wide.load467 = load <4 x float>, ptr %i.tq, align 4, !tbaa !15, !alias.scope !242, !noalias !243
  %wide.load468 = load <4 x float>, ptr %i.tr, align 4, !tbaa !15, !alias.scope !242, !noalias !243
  %i.ts = fadd <4 x float> %wide.load467, %i.to
  %i.tt = fadd <4 x float> %wide.load468, %i.tp
  store <4 x float> %i.ts, ptr %i.tq, align 4, !tbaa !15, !alias.scope !242, !noalias !243
  store <4 x float> %i.tt, ptr %i.tr, align 4, !tbaa !15, !alias.scope !242, !noalias !243
  %index.next469 = add nuw i64 %index462, 8       ; 2 uses
  %i.tu = icmp eq i64 %index.next469, %n.vec460
  br i1 %i.tu, label %middle.block470, label %vector.body461, !llvm.loop !193

middle.block470:                                  ; preds = %vector.body461
  %cmp.n471 = icmp eq i64 %n.vec460, %i.oq
  br i1 %cmp.n471, label %.lr.ph60.i.preheader, label %scalar.ph457.preheader

scalar.ph457.preheader:                           ; preds = %vector.memcheck445, %.lr.ph58.i, %middle.block470
  %indvars.iv189.i.ph = phi i64 [ 0, %vector.memcheck445 ], [ 0, %.lr.ph58.i ], [ %n.vec460, %middle.block470 ] ; 4 uses
  %xtraiter578 = and i64 %i.oq, 1
  %lcmp.mod579.not = icmp eq i64 %xtraiter578, 0
  br i1 %lcmp.mod579.not, label %scalar.ph457.prol.loopexit, label %scalar.ph457.prol

scalar.ph457.prol:                                ; preds = %scalar.ph457.preheader
  %i.tv = load float, ptr %i.th, align 4, !tbaa !15
  %indvars.iv.next190.i.prol = or disjoint i64 %indvars.iv189.i.ph, 1 ; 2 uses
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next190.i.prol
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !15
  %i.ty = fadd float %i.tv, %i.tx
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv189.i.ph ; 2 uses
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !15
  %i.ub = fadd float %i.ua, %i.ty
  store float %i.ub, ptr %i.tz, align 4, !tbaa !15
  br label %scalar.ph457.prol.loopexit

scalar.ph457.prol.loopexit:                       ; preds = %scalar.ph457.prol, %scalar.ph457.preheader
  %indvars.iv189.i.unr = phi i64 [ %indvars.iv189.i.ph, %scalar.ph457.preheader ], [ %indvars.iv.next190.i.prol, %scalar.ph457.prol ]
  %i.uc = add nsw i64 %i.oq, -1
  %i.ud = icmp eq i64 %indvars.iv189.i.ph, %i.uc
  br i1 %i.ud, label %.lr.ph60.i.preheader, label %scalar.ph457

.lr.ph60.i.preheader:                             ; preds = %scalar.ph457.prol.loopexit, %scalar.ph457, %middle.block470
  %xtraiter581 = and i64 %i.sj, 1
  %unroll_iter585 = and i64 %i.sj, 4294967294
  br label %.lr.ph60.i

scalar.ph429:                                     ; preds = %scalar.ph429.prol.loopexit, %scalar.ph429
  %indvars.iv184.i = phi i64 [ %indvars.iv.next185.i.1, %scalar.ph429 ], [ %indvars.iv184.i.unr, %scalar.ph429.prol.loopexit ] ; 3 uses
  %i.ue = load float, ptr %i.sk, align 4, !tbaa !15
  %indvars.iv.next185.i = add nuw nsw i64 %indvars.iv184.i, 1 ; 2 uses
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next185.i
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !15
  %i.uh = fadd float %i.ue, %i.ug
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv184.i ; 2 uses
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !15
  %i.uk = fadd float %i.uj, %i.uh
  store float %i.uk, ptr %i.ui, align 4, !tbaa !15
  %i.ul = load float, ptr %i.sk, align 4, !tbaa !15
  %indvars.iv.next185.i.1 = add nuw nsw i64 %indvars.iv184.i, 2 ; 3 uses
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next185.i.1
  %i.un = load float, ptr %i.um, align 4, !tbaa !15
  %i.uo = fadd float %i.ul, %i.un
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next185.i ; 2 uses
  %i.uq = load float, ptr %i.up, align 4, !tbaa !15
  %i.ur = fadd float %i.uq, %i.uo
  store float %i.ur, ptr %i.up, align 4, !tbaa !15
  %exitcond188.not.i.1 = icmp eq i64 %indvars.iv.next185.i.1, %i.sj
  br i1 %exitcond188.not.i.1, label %.lr.ph58.i, label %scalar.ph429, !llvm.loop !194

scalar.ph457:                                     ; preds = %scalar.ph457.prol.loopexit, %scalar.ph457
  %indvars.iv189.i = phi i64 [ %indvars.iv.next190.i.1, %scalar.ph457 ], [ %indvars.iv189.i.unr, %scalar.ph457.prol.loopexit ] ; 3 uses
  %i.us = load float, ptr %i.th, align 4, !tbaa !15
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 1 ; 2 uses
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next190.i
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !15
  %i.uv = fadd float %i.us, %i.uu
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv189.i ; 2 uses
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !15
  %i.uy = fadd float %i.ux, %i.uv
  store float %i.uy, ptr %i.uw, align 4, !tbaa !15
  %i.uz = load float, ptr %i.th, align 4, !tbaa !15
  %indvars.iv.next190.i.1 = add nuw nsw i64 %indvars.iv189.i, 2 ; 3 uses
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next190.i.1
  %i.vb = load float, ptr %i.va, align 4, !tbaa !15
  %i.vc = fadd float %i.uz, %i.vb
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv.next190.i ; 2 uses
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !15
  %i.vf = fadd float %i.ve, %i.vc
  store float %i.vf, ptr %i.vd, align 4, !tbaa !15
  %exitcond194.not.i.1 = icmp eq i64 %indvars.iv.next190.i.1, %i.oq
  br i1 %exitcond194.not.i.1, label %.lr.ph60.i.preheader, label %scalar.ph457, !llvm.loop !195

.lr.ph62.i.unr-lcssa:                             ; preds = %.lr.ph60.i
  %lcmp.mod583.not = icmp eq i64 %xtraiter581, 0
  br i1 %lcmp.mod583.not, label %.lr.ph62.i, label %.lr.ph60.i.epil.preheader

.lr.ph60.i.epil.preheader:                        ; preds = %.lr.ph62.i.unr-lcssa
  %lcmp.mod584 = trunc i32 %i.de to i1
  tail call void @llvm.assume(i1 %lcmp.mod584)
  %i.vg = load float, ptr %i.sk, align 4, !tbaa !15
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next196.i.1
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 4
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !15
  %i.vk = fadd float %i.vg, %i.vj
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv.next196.i.1
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !19
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.vm, i64 %i.oq ; 2 uses
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !15
  %i.vp = fadd float %i.vk, %i.vo
  store float %i.vp, ptr %i.vn, align 4, !tbaa !15
  br label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %.lr.ph62.i.unr-lcssa, %.lr.ph60.i.epil.preheader
  %i.vq = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.sj
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !19 ; 7 uses
  %min.iters.check486 = icmp ult i32 %i.l, 13
  br i1 %min.iters.check486, label %scalar.ph485.preheader, label %vector.memcheck473

vector.memcheck473:                               ; preds = %.lr.ph62.i
  %i.vs = shl nuw nsw i64 %i.oq, 2                ; 2 uses
  %scevgep474 = getelementptr i8, ptr %i.vr, i64 %i.vs ; 2 uses
  %i.vt = add nuw nsw i64 %i.vs, 4                ; 2 uses
  %scevgep475 = getelementptr i8, ptr %i.y, i64 %i.vt
  %scevgep476 = getelementptr i8, ptr %i.w, i64 4
  %scevgep477 = getelementptr i8, ptr %i.w, i64 %i.vt
  %bound0478 = icmp ult ptr %i.vr, %scevgep475
  %bound1479 = icmp ult ptr %i.th, %scevgep474
  %found.conflict480 = and i1 %bound0478, %bound1479
  %bound0481 = icmp ult ptr %i.vr, %scevgep477
  %bound1482 = icmp ult ptr %scevgep476, %scevgep474
  %found.conflict483 = and i1 %bound0481, %bound1482
  %conflict.rdx484 = or i1 %found.conflict480, %found.conflict483
  br i1 %conflict.rdx484, label %scalar.ph485.preheader, label %vector.ph487

vector.ph487:                                     ; preds = %vector.memcheck473
  %n.vec488 = and i64 %i.oq, 2147483640           ; 3 uses
  %i.vu = load float, ptr %i.th, align 4, !tbaa !15, !alias.scope !244
  %broadcast.splatinsert493 = insertelement <4 x float> poison, float %i.vu, i64 0
  %broadcast.splat494 = shufflevector <4 x float> %broadcast.splatinsert493, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body489

vector.body489:                                   ; preds = %vector.body489, %vector.ph487
  %index490 = phi i64 [ 0, %vector.ph487 ], [ %index.next497, %vector.body489 ] ; 3 uses
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index490 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 4
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vv, i64 20
  %wide.load491 = load <4 x float>, ptr %i.vw, align 4, !tbaa !15, !alias.scope !245
  %wide.load492 = load <4 x float>, ptr %i.vx, align 4, !tbaa !15, !alias.scope !245
  %i.vy = fadd <4 x float> %broadcast.splat494, %wide.load491
  %i.vz = fadd <4 x float> %broadcast.splat494, %wide.load492
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.vr, i64 %index490 ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 16 ; 2 uses
  %wide.load495 = load <4 x float>, ptr %i.wa, align 4, !tbaa !15, !alias.scope !246, !noalias !247
  %wide.load496 = load <4 x float>, ptr %i.wb, align 4, !tbaa !15, !alias.scope !246, !noalias !247
  %i.wc = fadd <4 x float> %i.vy, %wide.load495
  %i.wd = fadd <4 x float> %i.vz, %wide.load496
  store <4 x float> %i.wc, ptr %i.wa, align 4, !tbaa !15, !alias.scope !246, !noalias !247
  store <4 x float> %i.wd, ptr %i.wb, align 4, !tbaa !15, !alias.scope !246, !noalias !247
  %index.next497 = add nuw i64 %index490, 8       ; 2 uses
  %i.we = icmp eq i64 %index.next497, %n.vec488
  br i1 %i.we, label %middle.block498, label %vector.body489, !llvm.loop !200

middle.block498:                                  ; preds = %vector.body489
  %cmp.n499 = icmp eq i64 %n.vec488, %i.oq
  br i1 %cmp.n499, label %.lr.ph64.i, label %scalar.ph485.preheader

scalar.ph485.preheader:                           ; preds = %vector.memcheck473, %.lr.ph62.i, %middle.block498
  %indvars.iv200.i.ph = phi i64 [ 0, %vector.memcheck473 ], [ 0, %.lr.ph62.i ], [ %n.vec488, %middle.block498 ] ; 4 uses
  %xtraiter587 = and i64 %i.oq, 1
  %lcmp.mod588.not = icmp eq i64 %xtraiter587, 0
  br i1 %lcmp.mod588.not, label %scalar.ph485.prol.loopexit, label %scalar.ph485.prol

scalar.ph485.prol:                                ; preds = %scalar.ph485.preheader
  %i.wf = load float, ptr %i.th, align 4, !tbaa !15
  %indvars.iv.next201.i.prol = or disjoint i64 %indvars.iv200.i.ph, 1 ; 2 uses
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next201.i.prol
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !15
  %i.wi = fadd float %i.wf, %i.wh
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.vr, i64 %indvars.iv200.i.ph ; 2 uses
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !15
  %i.wl = fadd float %i.wi, %i.wk
  store float %i.wl, ptr %i.wj, align 4, !tbaa !15
  br label %scalar.ph485.prol.loopexit

scalar.ph485.prol.loopexit:                       ; preds = %scalar.ph485.prol, %scalar.ph485.preheader
  %indvars.iv200.i.unr = phi i64 [ %indvars.iv200.i.ph, %scalar.ph485.preheader ], [ %indvars.iv.next201.i.prol, %scalar.ph485.prol ]
  %i.wm = add nsw i64 %i.oq, -1
  %i.wn = icmp eq i64 %indvars.iv200.i.ph, %i.wm
  br i1 %i.wn, label %.lr.ph64.i, label %scalar.ph485

.lr.ph60.i:                                       ; preds = %.lr.ph60.i, %.lr.ph60.i.preheader
  %indvars.iv195.i = phi i64 [ 0, %.lr.ph60.i.preheader ], [ %indvars.iv.next196.i.1, %.lr.ph60.i ] ; 3 uses
  %niter586 = phi i64 [ 0, %.lr.ph60.i.preheader ], [ %niter586.next.1, %.lr.ph60.i ]
  %i.wo = load float, ptr %i.sk, align 4, !tbaa !15
  %indvars.iv.next196.i = or disjoint i64 %indvars.iv195.i, 1 ; 2 uses
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next196.i
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !15
  %i.wr = fadd float %i.wo, %i.wq
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv195.i
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !19
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.wt, i64 %i.oq ; 2 uses
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !15
  %i.ww = fadd float %i.wr, %i.wv
  store float %i.ww, ptr %i.wu, align 4, !tbaa !15
  %i.wx = load float, ptr %i.sk, align 4, !tbaa !15
  %indvars.iv.next196.i.1 = add nuw nsw i64 %indvars.iv195.i, 2 ; 4 uses
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next196.i.1
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !15
  %i.xa = fadd float %i.wx, %i.wz
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv.next196.i
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !19
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %i.oq ; 2 uses
  %i.xe = load float, ptr %i.xd, align 4, !tbaa !15
  %i.xf = fadd float %i.xa, %i.xe
  store float %i.xf, ptr %i.xd, align 4, !tbaa !15
  %niter586.next.1 = add nuw i64 %niter586, 2     ; 2 uses
  %niter586.ncmp.1 = icmp eq i64 %niter586.next.1, %unroll_iter585
  br i1 %niter586.ncmp.1, label %.lr.ph62.i.unr-lcssa, label %.lr.ph60.i, !llvm.loop !201

.lr.ph64.i:                                       ; preds = %scalar.ph485.prol.loopexit, %scalar.ph485, %middle.block498
  %i.xg = getelementptr i8, ptr %i.th, i64 -4     ; 3 uses
  %i.xh = tail call i32 @llvm.smin.i32(i32 %i.df, i32 1)
  %i.xi = xor i32 %i.xh, -1
  %i.xj = add i32 %i.xi, %i.l                     ; 2 uses
  %i.xk = zext i32 %i.xj to i64
  %i.xl = add nuw nsw i64 %i.xk, 1                ; 2 uses
  %min.iters.check514 = icmp ult i32 %i.xj, 19
  br i1 %min.iters.check514, label %scalar.ph513.preheader, label %vector.memcheck501

vector.memcheck501:                               ; preds = %.lr.ph64.i
  %i.xm = shl nuw nsw i64 %i.oq, 2                ; 4 uses
  %i.xn = add nsw i64 %i.xm, -4
  %smin = tail call i32 @llvm.smin.i32(i32 %i.df, i32 1)
  %i.xo = xor i32 %smin, -1
  %i.xp = add i32 %i.xo, %i.l
  %i.xq = zext i32 %i.xp to i64
  %i.xr = shl nuw nsw i64 %i.xq, 2                ; 2 uses
  %i.xs = sub nsw i64 %i.xn, %i.xr
  %scevgep502 = getelementptr i8, ptr %i.hj, i64 %i.xs ; 2 uses
  %scevgep503 = getelementptr i8, ptr %i.hj, i64 %i.xm ; 2 uses
  %i.xt = sub nsw i64 %i.xm, %i.xr
  %scevgep504 = getelementptr i8, ptr %.057648.i, i64 %i.xt
  %i.xu = getelementptr i8, ptr %.057648.i, i64 %i.xm
  %scevgep505 = getelementptr i8, ptr %i.xu, i64 4
  %bound0506 = icmp ult ptr %scevgep502, %scevgep505
  %bound1507 = icmp ult ptr %scevgep504, %scevgep503
  %found.conflict508 = and i1 %bound0506, %bound1507
  %bound0509 = icmp ult ptr %scevgep502, %i.th
  %bound1510 = icmp ult ptr %i.xg, %scevgep503
  %found.conflict511 = and i1 %bound0509, %bound1510
  %conflict.rdx512 = or i1 %found.conflict508, %found.conflict511
  br i1 %conflict.rdx512, label %scalar.ph513.preheader, label %vector.ph515

vector.ph515:                                     ; preds = %vector.memcheck501
  %n.vec516 = and i64 %i.xl, 8589934588           ; 3 uses
  %broadcast.splatinsert517 = insertelement <4 x i32> poison, i32 %i.de, i64 0
  %broadcast.splat518 = shufflevector <4 x i32> %broadcast.splatinsert517, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.xv = sub nsw i64 %i.oq, %n.vec516
  %i.xw = load float, ptr %i.xg, align 4, !tbaa !15, !alias.scope !248
  %broadcast.splatinsert523 = insertelement <4 x float> poison, float %i.xw, i64 0
  %i.xx = shufflevector <4 x float> %broadcast.splatinsert523, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body519

vector.body519:                                   ; preds = %vector.body519, %vector.ph515
  %index520 = phi i64 [ 0, %vector.ph515 ], [ %index.next526, %vector.body519 ] ; 2 uses
  %i.xy = sub i64 %i.oq, %index520                ; 3 uses
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %i.xy
  %i.ya = getelementptr inbounds i8, ptr %i.xz, i64 -12
  %wide.load521 = load <4 x float>, ptr %i.ya, align 4, !tbaa !15, !alias.scope !249
  %i.yb = getelementptr [4 x i8], ptr %i.hj, i64 %i.xy
  %i.yc = getelementptr i8, ptr %i.yb, i64 -16
  %reverse525 = fadd <4 x float> %wide.load521, %i.xx
  store <4 x float> %reverse525, ptr %i.yc, align 4, !tbaa !15, !alias.scope !250, !noalias !251
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.xy
  %i.ye = getelementptr inbounds i8, ptr %i.yd, i64 -12
  store <4 x i32> %broadcast.splat518, ptr %i.ye, align 4, !tbaa !7
  %index.next526 = add nuw i64 %index520, 4       ; 2 uses
  %i.yf = icmp eq i64 %index.next526, %n.vec516
  br i1 %i.yf, label %middle.block527, label %vector.body519, !llvm.loop !206

middle.block527:                                  ; preds = %vector.body519
  %cmp.n528 = icmp eq i64 %i.xl, %n.vec516
  br i1 %cmp.n528, label %.lr.ph104.i, label %scalar.ph513.preheader

scalar.ph513.preheader:                           ; preds = %vector.memcheck501, %.lr.ph64.i, %middle.block527
  %indvars.iv206.i.ph = phi i64 [ %i.oq, %vector.memcheck501 ], [ %i.oq, %.lr.ph64.i ], [ %i.xv, %middle.block527 ]
  br label %scalar.ph513

scalar.ph485:                                     ; preds = %scalar.ph485.prol.loopexit, %scalar.ph485
  %indvars.iv200.i = phi i64 [ %indvars.iv.next201.i.1, %scalar.ph485 ], [ %indvars.iv200.i.unr, %scalar.ph485.prol.loopexit ] ; 3 uses
  %i.yg = load float, ptr %i.th, align 4, !tbaa !15
  %indvars.iv.next201.i = add nuw nsw i64 %indvars.iv200.i, 1 ; 2 uses
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next201.i
  %i.yi = load float, ptr %i.yh, align 4, !tbaa !15
  %i.yj = fadd float %i.yg, %i.yi
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.vr, i64 %indvars.iv200.i ; 2 uses
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !15
  %i.ym = fadd float %i.yj, %i.yl
  store float %i.ym, ptr %i.yk, align 4, !tbaa !15
  %i.yn = load float, ptr %i.th, align 4, !tbaa !15
  %indvars.iv.next201.i.1 = add nuw nsw i64 %indvars.iv200.i, 2 ; 3 uses
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next201.i.1
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !15
  %i.yq = fadd float %i.yn, %i.yp
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.vr, i64 %indvars.iv.next201.i ; 2 uses
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !15
  %i.yt = fadd float %i.yq, %i.ys
  store float %i.yt, ptr %i.yr, align 4, !tbaa !15
  %exitcond205.not.i.1 = icmp eq i64 %indvars.iv.next201.i.1, %i.oq
  br i1 %exitcond205.not.i.1, label %.lr.ph64.i, label %scalar.ph485, !llvm.loop !207

.lr.ph104.i:                                      ; preds = %scalar.ph513, %middle.block527
  %i.yu = add i64 %i.k, 4294967294
  %i.yv = and i64 %i.yu, 4294967295               ; 2 uses
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.yv
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.oy
  %i.yy = getelementptr inbounds i8, ptr %i.yx, i64 -8
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.oy
  %i.za = getelementptr inbounds i8, ptr %i.yz, i64 -8
  %i.zb = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %smax220.i = tail call i32 @llvm.smax.i32(i32 %i.iu, i32 1) ; 3 uses
  %wide.trip.count221.i = zext nneg i32 %smax220.i to i64 ; 2 uses
  %xtraiter590 = and i64 %i.oq, 1
  %i.zc = and i64 %i.oq, 2147483646
  %i.zd = add nsw i64 %i.zc, -4
  %lcmp.mod592.not = icmp eq i64 %xtraiter590, 0
  %lcmp.mod595 = trunc i32 %i.df to i1
  %xtraiter598 = and i64 %wide.trip.count221.i, 1
  %i.ze = icmp eq i32 %smax220.i, 1
  %unroll_iter604 = and i64 %wide.trip.count221.i, 2147483646
  %lcmp.mod600.not = icmp eq i64 %xtraiter598, 0
  %lcmp.mod603 = trunc i32 %smax220.i to i1
  br label %.lr.ph74.i

scalar.ph513:                                     ; preds = %scalar.ph513.preheader, %scalar.ph513
  %indvars.iv206.i = phi i64 [ %indvars.iv.next207.i, %scalar.ph513 ], [ %indvars.iv206.i.ph, %scalar.ph513.preheader ] ; 5 uses
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv206.i
  %i.zg = load float, ptr %i.zf, align 4, !tbaa !15
  %i.zh = load float, ptr %i.xg, align 4, !tbaa !15
  %i.zi = fadd float %i.zg, %i.zh
  %i.zj = getelementptr [4 x i8], ptr %i.hj, i64 %indvars.iv206.i
  %i.zk = getelementptr i8, ptr %i.zj, i64 -4
  store float %i.zi, ptr %i.zk, align 4, !tbaa !15
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv206.i
  store i32 %i.de, ptr %i.zl, align 4, !tbaa !7
  %indvars.iv.next207.i = add nsw i64 %indvars.iv206.i, -1
  %i.zm = trunc nuw i64 %indvars.iv206.i to i32
  %i.zn = icmp sgt i32 %i.zm, 1
  br i1 %i.zn, label %scalar.ph513, label %.lr.ph104.i, !llvm.loop !208

.preheader2.preheader.i:                          ; preds = %bb.ap
  %wide.trip.count236.i = and i64 %i.h, 2147483647
  %min.iters.check533 = icmp samesign ult i64 %i.oy, 4
  %n.vec535 = and i64 %i.k, 2147483644            ; 3 uses
  %broadcast.splatinsert536 = insertelement <4 x float> poison, float %.5.i, i64 0
  %broadcast.splat537 = shufflevector <4 x float> %broadcast.splatinsert536, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n543 = icmp eq i64 %i.oy, %n.vec535
  %xtraiter606 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod607.not = icmp eq i64 %xtraiter606, 0
  br label %.preheader2.i

.lr.ph74.i:                                       ; preds = %bb.ap, %.lr.ph104.i
  %indvars.iv223.i = phi i64 [ %i.sj, %.lr.ph104.i ], [ %indvars.iv.next224.i, %bb.ap ] ; 6 uses
  %.0102.i = phi i32 [ %i.de, %.lr.ph104.i ], [ %.1.i, %bb.ap ]
  %.0544101.i = phi float [ -1.000000e+07, %.lr.ph104.i ], [ %.1545.i, %bb.ap ] ; 2 uses
  %.0550100.i = phi i32 [ 0, %.lr.ph104.i ], [ %.3.i, %bb.ap ]
  %.055299.i = phi i32 [ 0, %.lr.ph104.i ], [ %.3555.i, %bb.ap ] ; 2 uses
  %.055698.i = phi float [ 0.000000e+00, %.lr.ph104.i ], [ %.5.i, %bb.ap ]
  %.157797.i = phi ptr [ %.057847.i, %.lr.ph104.i ], [ %.157996.i, %bb.ap ] ; 4 uses
  %.157996.i = phi ptr [ %.057648.i, %.lr.ph104.i ], [ %.157797.i, %bb.ap ] ; 3 uses
  %.058595.i = phi i32 [ 0, %.lr.ph104.i ], [ %.6.i, %bb.ap ]
  %.059194.i = phi i32 [ %i.ov, %.lr.ph104.i ], [ %.1592.i, %bb.ap ] ; 4 uses
  %indvars.iv.next224.i = add nsw i64 %indvars.iv223.i, -1 ; 9 uses
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv223.i
  %i.zp = load float, ptr %i.zo, align 4, !tbaa !15
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %.157996.i, i64 %i.oq ; 2 uses
  store float %i.zp, ptr %i.zq, align 4, !tbaa !15
  %i.zr = trunc nuw nsw i64 %indvars.iv.next224.i to i32
  tail call fastcc void @match_ribosum(ptr noundef %.157797.i, ptr noundef readonly %i.z, ptr noundef readonly %i.aa, i32 noundef %i.zr, i32 noundef %i.l, ptr noundef %i.ho, ptr noundef %i.hp, i32 noundef 0)
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.next224.i
  %i.zt = load float, ptr %i.zs, align 4, !tbaa !15
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %.157797.i, i64 %i.oq
  store float %i.zt, ptr %i.zu, align 4, !tbaa !15
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %.157996.i, i64 %i.oy
  %.156765.i = getelementptr inbounds i8, ptr %i.zv, i64 -4
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %.157797.i, i64 %i.oy
  %i.zx = getelementptr inbounds i8, ptr %i.zw, i64 -8
  %i.zy = load float, ptr %i.zq, align 4, !tbaa !15
  %i.zz = load float, ptr %i.yw, align 4, !tbaa !15
  %i.aaa = fadd float %i.zy, %i.zz
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv223.i
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next224.i ; 2 uses
  %i.aad = zext i32 %.055299.i to i64
  %i.aae = icmp eq i64 %indvars.iv.next224.i, %i.aad
  %i.aaf = zext i32 %.059194.i to i64             ; 2 uses
  %i.aag = icmp eq i64 %indvars.iv223.i, %i.aaf   ; 3 uses
  %or.cond640.i = select i1 %i.aae, i1 true, i1 %i.aag
  %i.aah = icmp eq i64 %indvars.iv.next224.i, %i.aaf ; 2 uses
  %i.aai = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv.next224.i
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !19
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %indvars.iv.next224.i
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !19
  %i.aam = trunc nuw nsw i64 %indvars.iv223.i to i32 ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.ad, %.lr.ph74.i
  %indvars.iv209.i = phi i64 [ %i.yv, %.lr.ph74.i ], [ %indvars.iv.next210.i, %bb.ad ] ; 10 uses
  %.156772.i = phi ptr [ %.156765.i, %.lr.ph74.i ], [ %.1567.i, %bb.ad ] ; 2 uses
  %.256271.i = phi float [ %i.aaa, %.lr.ph74.i ], [ %.3563.i, %bb.ad ] ; 3 uses
  %.156570.i = phi ptr [ %i.zx, %.lr.ph74.i ], [ %i.acd, %bb.ad ] ; 4 uses
  %.156969.i = phi ptr [ %i.yy, %.lr.ph74.i ], [ %i.acb, %bb.ad ] ; 4 uses
  %.257268.i = phi i32 [ %i.df, %.lr.ph74.i ], [ %.3573.i, %bb.ad ] ; 2 uses
  %.157567.i = phi ptr [ %i.za, %.lr.ph74.i ], [ %i.acc, %bb.ad ] ; 3 uses
  %i.aan = load float, ptr %.156772.i, align 4, !tbaa !15 ; 4 uses
  %i.aao = add nuw nsw i64 %indvars.iv209.i, 1    ; 3 uses
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.aao
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !15
  %i.aar = fadd float %.256271.i, %i.aaq          ; 2 uses
  %i.aas = fcmp ogt float %i.aar, %i.aan          ; 2 uses
  %.2582.i = select i1 %i.aas, float %i.aar, float %i.aan ; 2 uses
  %i.aat = trunc nuw i64 %i.aao to i32            ; 3 uses
  %.0546.i = select i1 %i.aas, i32 %.257268.i, i32 %i.aat
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv209.i
  %i.aav = load float, ptr %i.aau, align 4, !tbaa !15
  %i.aaw = fadd float %i.aan, %i.aav              ; 2 uses
  %i.aax = fcmp ult float %i.aaw, %.256271.i      ; 2 uses
  %.3573.i = select i1 %i.aax, i32 %.257268.i, i32 %i.aat
  %.3563.i = select i1 %i.aax, float %.256271.i, float %i.aaw ; 2 uses
  %i.aay = load float, ptr %.156969.i, align 4, !tbaa !15 ; 2 uses
  %i.aaz = load float, ptr %i.aab, align 4, !tbaa !15
  %i.aba = fadd float %i.aay, %i.aaz              ; 2 uses
  %i.abb = fcmp ogt float %i.aba, %.2582.i
  br i1 %i.abb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.abc = load i32, ptr %.157567.i, align 4, !tbaa !7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.3583.i = phi float [ %i.aba, %bb.u ], [ %.2582.i, %bb.t ] ; 3 uses
  %.1549.i = phi i32 [ %i.abc, %bb.u ], [ %i.aam, %bb.t ]
  %.1547.i = phi i32 [ %i.aat, %bb.u ], [ %.0546.i, %bb.t ]
  %i.abd = load float, ptr %i.aac, align 4, !tbaa !15
  %i.abe = fadd float %i.aan, %i.abd              ; 2 uses
  %i.abf = fcmp ult float %i.abe, %i.aay
  br i1 %i.abf, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store float %i.abe, ptr %.156969.i, align 4, !tbaa !15
  store i32 %i.aam, ptr %.157567.i, align 4, !tbaa !7
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %or.cond640.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv209.i
  store i32 %.1549.i, ptr %i.abg, align 4, !tbaa !7
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv209.i
  store i32 %.1547.i, ptr %i.abh, align 4, !tbaa !7
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %i.aah, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv209.i ; 2 uses
  %i.abj = load float, ptr %i.abi, align 4, !tbaa !15
  %i.abk = fadd float %.3583.i, %i.abj
  store float %i.abk, ptr %i.abi, align 4, !tbaa !15
  %i.abl = load float, ptr %.156969.i, align 4, !tbaa !15
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.aao ; 2 uses
  %i.abn = load float, ptr %i.abm, align 4, !tbaa !15
  %i.abo = fadd float %i.abl, %i.abn
  store float %i.abo, ptr %i.abm, align 4, !tbaa !15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %i.aag, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv209.i ; 2 uses
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !15
  %i.abr = fadd float %.3563.i, %i.abq
  store float %i.abr, ptr %i.abp, align 4, !tbaa !15
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.abs = getelementptr inbounds nuw [4 x i8], ptr %i.aaj, i64 %indvars.iv209.i ; 2 uses
  %i.abt = load float, ptr %i.abs, align 4, !tbaa !15
  %i.abu = fadd float %.3583.i, %i.abt
  store float %i.abu, ptr %i.abs, align 4, !tbaa !15
  %i.abv = load float, ptr %.156570.i, align 4, !tbaa !15
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.aal, i64 %indvars.iv209.i ; 2 uses
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !15
  %i.aby = fadd float %i.abv, %i.abx
  store float %i.aby, ptr %i.abw, align 4, !tbaa !15
  %i.abz = load float, ptr %.156570.i, align 4, !tbaa !15
  %i.aca = fadd float %.3583.i, %i.abz
  store float %i.aca, ptr %.156570.i, align 4, !tbaa !15
  %i.acb = getelementptr inbounds i8, ptr %.156969.i, i64 -4
  %i.acc = getelementptr inbounds i8, ptr %.157567.i, i64 -4
  %i.acd = getelementptr inbounds i8, ptr %.156570.i, i64 -4
  %indvars.iv.next210.i = add nsw i64 %indvars.iv209.i, -1
  %.1567.i = getelementptr inbounds i8, ptr %.156772.i, i64 -4 ; 2 uses
  %i.ace = trunc nuw i64 %indvars.iv209.i to i32
  %i.acf = icmp sgt i32 %i.ace, 0
  br i1 %i.acf, label %bb.t, label %._crit_edge75.i, !llvm.loop !209

._crit_edge75.i:                                  ; preds = %bb.ad
  %i.acg = load float, ptr %.1567.i, align 4, !tbaa !15
  %i.ach = load float, ptr %i.aac, align 4, !tbaa !15
  %i.aci = fadd float %i.acg, %i.ach              ; 2 uses
  %i.acj = fcmp olt float %.0544101.i, %i.aci     ; 2 uses
  %.1545.i = select i1 %i.acj, float %i.aci, float %.0544101.i ; 2 uses
  %.1.i = select i1 %i.acj, i32 %i.aam, i32 %.0102.i ; 3 uses
  br i1 %i.aah, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge75.i
  %i.ack = load float, ptr %i.ha, align 4, !tbaa !15
  %i.acl = fadd float %.1545.i, %i.ack
  store float %i.acl, ptr %i.ha, align 4, !tbaa !15
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge75.i
  %i.acm = add nsw i32 %.059194.i, -1             ; 2 uses
  br i1 %i.aag, label %.lr.ph82.preheader.i, label %bb.ak

.lr.ph82.preheader.i:                             ; preds = %bb.af
  %i.acn = load float, ptr %i.zb, align 4, !tbaa !15
  br label %.lr.ph82.i

.lr.ph82.i:                                       ; preds = %.lr.ph82.i, %.lr.ph82.preheader.i
  %indvars.iv212.i = phi i64 [ 2, %.lr.ph82.preheader.i ], [ %indvars.iv.next213.i.1, %.lr.ph82.i ] ; 4 uses
  %.155780.i = phi float [ %i.acn, %.lr.ph82.preheader.i ], [ %.2558.i.1, %.lr.ph82.i ] ; 2 uses
  %.158679.i = phi i32 [ 0, %.lr.ph82.preheader.i ], [ %.2587.i.1, %.lr.ph82.i ]
  %niter597 = phi i64 [ 0, %.lr.ph82.preheader.i ], [ %niter597.next.1, %.lr.ph82.i ] ; 2 uses
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv212.i
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !15 ; 2 uses
  %i.acq = fcmp ogt float %i.acp, %.155780.i      ; 2 uses
  %i.acr = trunc nuw nsw i64 %indvars.iv212.i to i32
  %.2587.i = select i1 %i.acq, i32 %i.acr, i32 %.158679.i
  %.2558.i = select i1 %i.acq, float %i.acp, float %.155780.i ; 2 uses
  %indvars.iv.next213.i = or disjoint i64 %indvars.iv212.i, 1 ; 2 uses
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.next213.i
  %i.act = load float, ptr %i.acs, align 4, !tbaa !15 ; 2 uses
  %i.acu = fcmp ogt float %i.act, %.2558.i        ; 2 uses
  %i.acv = trunc nuw nsw i64 %indvars.iv.next213.i to i32
  %.2587.i.1 = select i1 %i.acu, i32 %i.acv, i32 %.2587.i ; 3 uses
  %.2558.i.1 = select i1 %i.acu, float %i.act, float %.2558.i ; 4 uses
  %indvars.iv.next213.i.1 = add nuw nsw i64 %indvars.iv212.i, 2 ; 3 uses
  %niter597.next.1 = add i64 %niter597, 2
  %niter597.ncmp.1 = icmp eq i64 %niter597, %i.zd
  br i1 %niter597.ncmp.1, label %.lr.ph88.i.preheader.unr-lcssa, label %.lr.ph82.i, !llvm.loop !210

.lr.ph88.i.preheader.unr-lcssa:                   ; preds = %.lr.ph82.i
  br i1 %lcmp.mod592.not, label %.lr.ph88.i.preheader, label %.lr.ph82.i.epil.preheader

.lr.ph82.i.epil.preheader:                        ; preds = %.lr.ph88.i.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod595)
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.next213.i.1
  %i.acx = load float, ptr %i.acw, align 4, !tbaa !15 ; 2 uses
  %i.acy = fcmp ogt float %i.acx, %.2558.i.1      ; 2 uses
  %i.acz = trunc nuw nsw i64 %indvars.iv.next213.i.1 to i32
  %.2587.i.epil = select i1 %i.acy, i32 %i.acz, i32 %.2587.i.1
  %.2558.i.epil = select i1 %i.acy, float %i.acx, float %.2558.i.1
  br label %.lr.ph88.i.preheader

.lr.ph88.i.preheader:                             ; preds = %.lr.ph88.i.preheader.unr-lcssa, %.lr.ph82.i.epil.preheader
  %.2587.i.lcssa = phi i32 [ %.2587.i.1, %.lr.ph88.i.preheader.unr-lcssa ], [ %.2587.i.epil, %.lr.ph82.i.epil.preheader ] ; 2 uses
  %.2558.i.lcssa = phi float [ %.2558.i.1, %.lr.ph88.i.preheader.unr-lcssa ], [ %.2558.i.epil, %.lr.ph82.i.epil.preheader ] ; 2 uses
  br i1 %i.ze, label %.lr.ph88.i.epil.preheader, label %.lr.ph88.i

.lr.ph88.i:                                       ; preds = %.lr.ph88.i.preheader, %.lr.ph88.i
  %indvars.iv217.i = phi i64 [ %indvars.iv.next218.i.1, %.lr.ph88.i ], [ 0, %.lr.ph88.i.preheader ] ; 4 uses
  %.355987.i = phi float [ %.4.i.1, %.lr.ph88.i ], [ %.2558.i.lcssa, %.lr.ph88.i.preheader ] ; 2 uses
  %.358886.i = phi i32 [ %.4589.i.1, %.lr.ph88.i ], [ %.2587.i.lcssa, %.lr.ph88.i.preheader ]
  %niter605 = phi i64 [ %niter605.next.1, %.lr.ph88.i ], [ 0, %.lr.ph88.i.preheader ]
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv217.i
  %i.adb = load float, ptr %i.ada, align 4, !tbaa !15 ; 2 uses
  %i.adc = fcmp ogt float %i.adb, %.355987.i      ; 2 uses
  %i.add = trunc nuw nsw i64 %indvars.iv217.i to i32
  %.4589.i = select i1 %i.adc, i32 %i.add, i32 %.358886.i
  %.4.i = select i1 %i.adc, float %i.adb, float %.355987.i ; 2 uses
  %indvars.iv.next218.i = or disjoint i64 %indvars.iv217.i, 1 ; 2 uses
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.next218.i
  %i.adf = load float, ptr %i.ade, align 4, !tbaa !15 ; 2 uses
  %i.adg = fcmp ogt float %i.adf, %.4.i           ; 2 uses
  %i.adh = trunc nuw nsw i64 %indvars.iv.next218.i to i32
  %.4589.i.1 = select i1 %i.adg, i32 %i.adh, i32 %.4589.i ; 3 uses
  %.4.i.1 = select i1 %i.adg, float %i.adf, float %.4.i ; 3 uses
  %indvars.iv.next218.i.1 = add nuw nsw i64 %indvars.iv217.i, 2 ; 2 uses
  %niter605.next.1 = add i64 %niter605, 2         ; 2 uses
  %niter605.ncmp.1 = icmp eq i64 %niter605.next.1, %unroll_iter604
  br i1 %niter605.ncmp.1, label %._crit_edge89.i.unr-lcssa, label %.lr.ph88.i, !llvm.loop !211

._crit_edge89.i.unr-lcssa:                        ; preds = %.lr.ph88.i
  br i1 %lcmp.mod600.not, label %._crit_edge89.i, label %.lr.ph88.i.epil.preheader

.lr.ph88.i.epil.preheader:                        ; preds = %._crit_edge89.i.unr-lcssa, %.lr.ph88.i.preheader
  %indvars.iv217.i.epil.init = phi i64 [ 0, %.lr.ph88.i.preheader ], [ %indvars.iv.next218.i.1, %._crit_edge89.i.unr-lcssa ] ; 2 uses
  %.355987.i.epil.init = phi float [ %.2558.i.lcssa, %.lr.ph88.i.preheader ], [ %.4.i.1, %._crit_edge89.i.unr-lcssa ] ; 2 uses
  %.358886.i.epil.init = phi i32 [ %.2587.i.lcssa, %.lr.ph88.i.preheader ], [ %.4589.i.1, %._crit_edge89.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod603)
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv217.i.epil.init
  %i.adj = load float, ptr %i.adi, align 4, !tbaa !15 ; 2 uses
  %i.adk = fcmp ogt float %i.adj, %.355987.i.epil.init ; 2 uses
  %i.adl = trunc nuw nsw i64 %indvars.iv217.i.epil.init to i32
  %.4589.i.epil = select i1 %i.adk, i32 %i.adl, i32 %.358886.i.epil.init
  %.4.i.epil = select i1 %i.adk, float %i.adj, float %.355987.i.epil.init
  br label %._crit_edge89.i

._crit_edge89.i:                                  ; preds = %._crit_edge89.i.unr-lcssa, %.lr.ph88.i.epil.preheader
  %.4589.i.lcssa = phi i32 [ %.4589.i.1, %._crit_edge89.i.unr-lcssa ], [ %.4589.i.epil, %.lr.ph88.i.epil.preheader ] ; 5 uses
  %.4.i.lcssa = phi float [ %.4.i.1, %._crit_edge89.i.unr-lcssa ], [ %.4.i.epil, %.lr.ph88.i.epil.preheader ] ; 2 uses
  %i.adm = sext i32 %.4589.i.lcssa to i64         ; 4 uses
  %i.adn = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.adm
  %i.ado = load float, ptr %i.adn, align 4, !tbaa !15 ; 3 uses
  %i.adp = add nsw i32 %.4589.i.lcssa, -1         ; 4 uses
  %i.adq = icmp sgt i32 %.4589.i.lcssa, 0
  br i1 %i.adq, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %._crit_edge89.i
  %i.adr = zext nneg i32 %i.adp to i64
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.adr
  %i.adt = load float, ptr %i.ads, align 4, !tbaa !15 ; 2 uses
  %i.adu = fcmp ogt float %i.adt, %i.ado
  br i1 %i.adu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.adm
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !7
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %._crit_edge89.i
  %.4584.i = phi float [ %i.adt, %bb.ah ], [ %i.ado, %bb.ag ], [ %i.ado, %._crit_edge89.i ]
  %.1551.i = phi i32 [ %i.adw, %bb.ah ], [ %i.adp, %bb.ag ], [ %i.adp, %._crit_edge89.i ]
  %i.adx = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.adm
  %i.ady = load float, ptr %i.adx, align 4, !tbaa !15
  %i.adz = fcmp ogt float %i.ady, %.4584.i
  br i1 %i.adz, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.aea = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.adm
  %i.aeb = load i32, ptr %i.aea, align 4, !tbaa !7
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.af
  %.5590.i = phi i32 [ %.4589.i.lcssa, %bb.aj ], [ %.4589.i.lcssa, %bb.ai ], [ %.058595.i, %bb.af ] ; 3 uses
  %.5.i = phi float [ %.4.i.lcssa, %bb.aj ], [ %.4.i.lcssa, %bb.ai ], [ %.055698.i, %bb.af ] ; 7 uses
  %.2554.i = phi i32 [ %i.aeb, %bb.aj ], [ %i.acm, %bb.ai ], [ %.055299.i, %bb.af ] ; 3 uses
  %.2.i = phi i32 [ %i.adp, %bb.aj ], [ %.1551.i, %bb.ai ], [ %.0550100.i, %bb.af ] ; 3 uses
  %i.aec = zext i32 %.2554.i to i64
  %i.aed = icmp eq i64 %indvars.iv.next224.i, %i.aec
  br i1 %i.aed, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.aee = icmp eq i32 %.5590.i, 0
  br i1 %i.aee, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.aef = add nsw i32 %.1.i, -1
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %.not636.not.i.not = icmp slt i32 %.5590.i, %i.l
  br i1 %.not636.not.i.not, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.aeg = sext i32 %.2.i to i64                  ; 2 uses
  %i.aeh = getelementptr inbounds [4 x i8], ptr %i.hd, i64 %i.aeg
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !7
  %i.aej = getelementptr inbounds [4 x i8], ptr %i.he, i64 %i.aeg
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !7
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.ak
  %.1592.i = phi i32 [ %.1.i, %bb.am ], [ %.059194.i, %bb.ak ], [ %i.aei, %bb.ao ], [ %.059194.i, %bb.an ]
  %.6.i = phi i32 [ 1, %bb.am ], [ %.5590.i, %bb.ak ], [ %i.aek, %bb.ao ], [ %i.l, %bb.an ]
  %.3555.i = phi i32 [ %i.aef, %bb.am ], [ %.2554.i, %bb.ak ], [ %.2554.i, %bb.ao ], [ %i.acm, %bb.an ]
  %.3.i = phi i32 [ 0, %bb.am ], [ %.2.i, %bb.ak ], [ %.2.i, %bb.ao ], [ %i.df, %bb.an ]
  %i.ael = icmp sgt i64 %indvars.iv223.i, 1
  br i1 %i.ael, label %.lr.ph74.i, label %.preheader2.preheader.i, !llvm.loop !212

.preheader2.i:                                    ; preds = %._crit_edge109.i, %.preheader2.preheader.i
  %indvars.iv232.i = phi i64 [ 0, %.preheader2.preheader.i ], [ %indvars.iv.next233.i, %._crit_edge109.i ] ; 3 uses
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv232.i
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !19 ; 7 uses
  %i.aeo = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %indvars.iv232.i
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !19 ; 7 uses
  %i.aeq = ptrtoaddr ptr %i.aep to i64
  %i.aer = ptrtoaddr ptr %i.aen to i64
  %i.aes = sub i64 %i.aer, %i.aeq
  %diff.check531 = icmp ugt i64 %i.aes, -16
  %or.cond549 = select i1 %min.iters.check533, i1 true, i1 %diff.check531
  br i1 %or.cond549, label %scalar.ph532.preheader, label %vector.body538

vector.body538:                                   ; preds = %.preheader2.i, %vector.body538
  %index539 = phi i64 [ %index.next541, %vector.body538 ], [ 0, %.preheader2.i ] ; 3 uses
  %i.aet = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %index539
  %wide.load540 = load <4 x float>, ptr %i.aet, align 4, !tbaa !15
  %i.aeu = fdiv <4 x float> %wide.load540, %broadcast.splat537
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %index539
  store <4 x float> %i.aeu, ptr %i.aev, align 4, !tbaa !15
  %index.next541 = add nuw i64 %index539, 4       ; 2 uses
  %i.aew = icmp eq i64 %index.next541, %n.vec535
  br i1 %i.aew, label %middle.block542, label %vector.body538, !llvm.loop !213

middle.block542:                                  ; preds = %vector.body538
  br i1 %cmp.n543, label %._crit_edge109.i, label %scalar.ph532.preheader

scalar.ph532.preheader:                           ; preds = %.preheader2.i, %middle.block542
  %indvars.iv226.i.ph = phi i64 [ 0, %.preheader2.i ], [ %n.vec535, %middle.block542 ] ; 3 uses
  br i1 %lcmp.mod607.not, label %scalar.ph532.prol.loopexit, label %scalar.ph532.prol

scalar.ph532.prol:                                ; preds = %scalar.ph532.preheader, %scalar.ph532.prol
  %indvars.iv226.i.prol = phi i64 [ %indvars.iv.next227.i.prol, %scalar.ph532.prol ], [ %indvars.iv226.i.ph, %scalar.ph532.preheader ] ; 3 uses
  %prol.iter608 = phi i64 [ %prol.iter608.next, %scalar.ph532.prol ], [ 0, %scalar.ph532.preheader ]
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv226.i.prol
  %i.aey = load float, ptr %i.aex, align 4, !tbaa !15
  %i.aez = fdiv float %i.aey, %.5.i
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv226.i.prol
  store float %i.aez, ptr %i.afa, align 4, !tbaa !15
  %indvars.iv.next227.i.prol = add nuw nsw i64 %indvars.iv226.i.prol, 1 ; 2 uses
  %prol.iter608.next = add i64 %prol.iter608, 1   ; 2 uses
  %prol.iter608.cmp.not = icmp eq i64 %prol.iter608.next, %xtraiter606
  br i1 %prol.iter608.cmp.not, label %scalar.ph532.prol.loopexit, label %scalar.ph532.prol, !llvm.loop !214

scalar.ph532.prol.loopexit:                       ; preds = %scalar.ph532.prol, %scalar.ph532.preheader
  %indvars.iv226.i.unr = phi i64 [ %indvars.iv226.i.ph, %scalar.ph532.preheader ], [ %indvars.iv.next227.i.prol, %scalar.ph532.prol ]
  %i.afb = sub nsw i64 %indvars.iv226.i.ph, %i.oy
  %i.afc = icmp ugt i64 %i.afb, -4
  br i1 %i.afc, label %._crit_edge109.i, label %scalar.ph532

scalar.ph532:                                     ; preds = %scalar.ph532.prol.loopexit, %scalar.ph532
  %indvars.iv226.i = phi i64 [ %indvars.iv.next227.i.3, %scalar.ph532 ], [ %indvars.iv226.i.unr, %scalar.ph532.prol.loopexit ] ; 6 uses
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv226.i
  %i.afe = load float, ptr %i.afd, align 4, !tbaa !15
  %i.aff = fdiv float %i.afe, %.5.i
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv226.i
  store float %i.aff, ptr %i.afg, align 4, !tbaa !15
  %indvars.iv.next227.i = add nuw nsw i64 %indvars.iv226.i, 1 ; 2 uses
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv.next227.i
  %i.afi = load float, ptr %i.afh, align 4, !tbaa !15
  %i.afj = fdiv float %i.afi, %.5.i
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv.next227.i
  store float %i.afj, ptr %i.afk, align 4, !tbaa !15
  %indvars.iv.next227.i.1 = add nuw nsw i64 %indvars.iv226.i, 2 ; 2 uses
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv.next227.i.1
  %i.afm = load float, ptr %i.afl, align 4, !tbaa !15
  %i.afn = fdiv float %i.afm, %.5.i
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv.next227.i.1
  store float %i.afn, ptr %i.afo, align 4, !tbaa !15
  %indvars.iv.next227.i.2 = add nuw nsw i64 %indvars.iv226.i, 3 ; 2 uses
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %indvars.iv.next227.i.2
  %i.afq = load float, ptr %i.afp, align 4, !tbaa !15
  %i.afr = fdiv float %i.afq, %.5.i
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv.next227.i.2
  store float %i.afr, ptr %i.afs, align 4, !tbaa !15
  %indvars.iv.next227.i.3 = add nuw nsw i64 %indvars.iv226.i, 4 ; 2 uses
  %exitcond231.not.i.3 = icmp eq i64 %indvars.iv.next227.i.3, %i.oy
  br i1 %exitcond231.not.i.3, label %._crit_edge109.i, label %scalar.ph532, !llvm.loop !215

._crit_edge109.i:                                 ; preds = %scalar.ph532.prol.loopexit, %scalar.ph532, %middle.block542
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %exitcond237.not.i = icmp eq i64 %indvars.iv.next233.i, %wide.trip.count236.i
end_hunk_3
