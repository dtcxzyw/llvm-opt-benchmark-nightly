Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Lalignmm?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@Lalignmm_hmout:bb.a
  %i.ap = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ao) #13
  %.not178 = icmp eq i64 %i.ap, %i.ae
  br i1 %.not178, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = trunc nuw nsw i64 %indvars.iv211 to i32
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str.2, i32 noundef %i.aq, i32 noundef %5) #14 ; 0 uses
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.au = tail call i64 @fwrite(ptr nonnull @.str.1, i64 27, i64 1, ptr %i.at) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.g:                                             ; preds = %bb.e
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond215.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count214
  br i1 %exitcond215.not, label %._crit_edge, label %bb.e, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.g, %.preheader185
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
  %i.av = icmp sgt i32 %i.i, 0
  br i1 %i.av, label %.lr.ph195, label %.preheader184

.lr.ph195:                                        ; preds = %bb.j
  %i.aw = fpext float %i.b to double              ; 3 uses
  %wide.trip.count219 = and i64 %i.h, 2147483647  ; 4 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count219, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph195
  %i.ax = shl nuw nsw i64 %wide.trip.count219, 2  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ax
  %scevgep267 = getelementptr i8, ptr %i.x, i64 %i.ax
  %bound0 = icmp ult ptr %i.u, %scevgep267
  %bound1 = icmp ult ptr %i.x, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 2147483644               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.aw, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ay, align 4, !tbaa !15, !alias.scope !106, !noalias !107
  %i.az = fpext <4 x float> %wide.load to <4 x double>
  %i.ba = fsub <4 x double> splat (double 1.000000e+00), %i.az
  %i.bb = fmul <4 x double> %i.ba, splat (double 5.000000e-01)
  %i.bc = fmul <4 x double> %i.bb, %broadcast.splat
  %i.bd = fptrunc <4 x double> %i.bc to <4 x float>
  store <4 x float> %i.bd, ptr %i.ay, align 4, !tbaa !15, !alias.scope !106, !noalias !107
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index ; 2 uses
  %wide.load268 = load <4 x float>, ptr %i.be, align 4, !tbaa !15, !alias.scope !107
  %i.bf = fpext <4 x float> %wide.load268 to <4 x double>
  %i.bg = fsub <4 x double> splat (double 1.000000e+00), %i.bf
  %i.bh = fmul <4 x double> %i.bg, splat (double 5.000000e-01)
  %i.bi = fmul <4 x double> %i.bh, %broadcast.splat
  %i.bj = fptrunc <4 x double> %i.bi to <4 x float>
  store <4 x float> %i.bj, ptr %i.be, align 4, !tbaa !15, !alias.scope !107
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count219, %n.vec
  br i1 %cmp.n, label %.preheader184, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph195, %middle.block
  %indvars.iv216.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph195 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader184:                                    ; preds = %scalar.ph, %middle.block, %bb.j
  %i.bl = icmp sgt i32 %i.l, 0
  br i1 %i.bl, label %.lr.ph197, label %._crit_edge198

.lr.ph197:                                        ; preds = %.preheader184
  %i.bm = fpext float %i.b to double              ; 3 uses
  %wide.trip.count224 = and i64 %i.k, 2147483647  ; 4 uses
  %min.iters.check276 = icmp samesign ult i64 %wide.trip.count224, 4
  br i1 %min.iters.check276, label %scalar.ph275.preheader, label %vector.memcheck269

vector.memcheck269:                               ; preds = %.lr.ph197
  %i.bn = shl nuw nsw i64 %wide.trip.count224, 2  ; 2 uses
  %scevgep270 = getelementptr i8, ptr %i.w, i64 %i.bn
  %scevgep271 = getelementptr i8, ptr %i.y, i64 %i.bn
  %bound0272 = icmp ult ptr %i.w, %scevgep271
  %bound1273 = icmp ult ptr %i.y, %scevgep270
  %found.conflict274 = and i1 %bound0272, %bound1273
  br i1 %found.conflict274, label %scalar.ph275.preheader, label %vector.ph277

vector.ph277:                                     ; preds = %vector.memcheck269
  %n.vec278 = and i64 %i.k, 2147483644            ; 3 uses
  %broadcast.splatinsert279 = insertelement <4 x double> poison, double %i.bm, i64 0
  %broadcast.splat280 = shufflevector <4 x double> %broadcast.splatinsert279, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body281

vector.body281:                                   ; preds = %vector.body281, %vector.ph277
  %index282 = phi i64 [ 0, %vector.ph277 ], [ %index.next285, %vector.body281 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index282 ; 2 uses
  %wide.load283 = load <4 x float>, ptr %i.bo, align 4, !tbaa !15, !alias.scope !108, !noalias !109
  %i.bp = fpext <4 x float> %wide.load283 to <4 x double>
  %i.bq = fsub <4 x double> splat (double 1.000000e+00), %i.bp
  %i.br = fmul <4 x double> %i.bq, splat (double 5.000000e-01)
  %i.bs = fmul <4 x double> %i.br, %broadcast.splat280
  %i.bt = fptrunc <4 x double> %i.bs to <4 x float>
  store <4 x float> %i.bt, ptr %i.bo, align 4, !tbaa !15, !alias.scope !108, !noalias !109
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index282 ; 2 uses
  %wide.load284 = load <4 x float>, ptr %i.bu, align 4, !tbaa !15, !alias.scope !109
  %i.bv = fpext <4 x float> %wide.load284 to <4 x double>
  %i.bw = fsub <4 x double> splat (double 1.000000e+00), %i.bv
  %i.bx = fmul <4 x double> %i.bw, splat (double 5.000000e-01)
  %i.by = fmul <4 x double> %i.bx, %broadcast.splat280
  %i.bz = fptrunc <4 x double> %i.by to <4 x float>
  store <4 x float> %i.bz, ptr %i.bu, align 4, !tbaa !15, !alias.scope !109
  %index.next285 = add nuw i64 %index282, 4       ; 2 uses
  %i.ca = icmp eq i64 %index.next285, %n.vec278
  br i1 %i.ca, label %middle.block286, label %vector.body281, !llvm.loop !33

middle.block286:                                  ; preds = %vector.body281
  %cmp.n287 = icmp eq i64 %wide.trip.count224, %n.vec278
  br i1 %cmp.n287, label %._crit_edge198, label %scalar.ph275.preheader

scalar.ph275.preheader:                           ; preds = %vector.memcheck269, %.lr.ph197, %middle.block286
  %indvars.iv221.ph = phi i64 [ 0, %vector.memcheck269 ], [ 0, %.lr.ph197 ], [ %n.vec278, %middle.block286 ]
  br label %scalar.ph275

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv216 = phi i64 [ %indvars.iv.next217, %scalar.ph ], [ %indvars.iv216.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv216 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !15
  %i.cd = fpext float %i.cc to double
  %i.ce = fsub double 1.000000e+00, %i.cd
  %i.cf = fmul double %i.ce, 5.000000e-01
  %i.cg = fmul double %i.cf, %i.aw
  %i.ch = fptrunc double %i.cg to float
  store float %i.ch, ptr %i.cb, align 4, !tbaa !15
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv216 ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !15
  %i.ck = fpext float %i.cj to double
  %i.cl = fsub double 1.000000e+00, %i.ck
  %i.cm = fmul double %i.cl, 5.000000e-01
  %i.cn = fmul double %i.cm, %i.aw
  %i.co = fptrunc double %i.cn to float
  store float %i.co, ptr %i.ci, align 4, !tbaa !15
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1 ; 2 uses
  %exitcond220.not = icmp eq i64 %indvars.iv.next217, %wide.trip.count219
  br i1 %exitcond220.not, label %.preheader184, label %scalar.ph, !llvm.loop !34

scalar.ph275:                                     ; preds = %scalar.ph275.preheader, %scalar.ph275
  %indvars.iv221 = phi i64 [ %indvars.iv.next222, %scalar.ph275 ], [ %indvars.iv221.ph, %scalar.ph275.preheader ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv221 ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !15
  %i.cr = fpext float %i.cq to double
  %i.cs = fsub double 1.000000e+00, %i.cr
  %i.ct = fmul double %i.cs, 5.000000e-01
  %i.cu = fmul double %i.ct, %i.bm
  %i.cv = fptrunc double %i.cu to float
  store float %i.cv, ptr %i.cp, align 4, !tbaa !15
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv221 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !15
  %i.cy = fpext float %i.cx to double
  %i.cz = fsub double 1.000000e+00, %i.cy
  %i.da = fmul double %i.cz, 5.000000e-01
  %i.db = fmul double %i.da, %i.bm
  %i.dc = fptrunc double %i.db to float
  store float %i.dc, ptr %i.cw, align 4, !tbaa !15
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %exitcond225.not = icmp eq i64 %indvars.iv.next222, %wide.trip.count224
  br i1 %exitcond225.not, label %._crit_edge198, label %scalar.ph275, !llvm.loop !35

._crit_edge198:                                   ; preds = %scalar.ph275, %middle.block286, %.preheader184
  store ptr %i.u, ptr %i.s, align 8, !tbaa !19
  %i.dd = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.x, ptr %i.dd, align 8, !tbaa !19
  %i.de = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.w, ptr %i.de, align 8, !tbaa !19
  %i.df = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.y, ptr %i.df, align 8, !tbaa !19
  %i.dg = add i32 %i.i, -1                        ; 8 uses
  %i.dh = add i32 %i.l, -1                        ; 7 uses
  %i.di = load i32, ptr @reccycle, align 4, !tbaa !7
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr @reccycle, align 4, !tbaa !7
  %i.dk = icmp slt i32 %i.l, 1
  br i1 %i.dk, label %.preheader1.i, label %bb.m

.preheader1.i:                                    ; preds = %._crit_edge198
  br i1 %i.ab, label %.lr.ph114.i, label %.preheader.i

.lr.ph114.i:                                      ; preds = %.preheader1.i
  %sext181 = shl i64 %i.h, 32
  %i.dl = ashr exact i64 %sext181, 32             ; 2 uses
  %wide.trip.count241.i = zext nneg i32 %4 to i64
  br label %bb.k

.preheader.i:                                     ; preds = %bb.k, %.preheader1.i
  br i1 %i.ad, label %.lr.ph121.i, label %MSalignmm_rec.exit

.lr.ph121.i:                                      ; preds = %.preheader.i
  %.not639115.i = icmp slt i32 %i.i, 1
  %wide.trip.count252.i = zext nneg i32 %5 to i64 ; 3 uses
  br i1 %.not639115.i, label %.lr.ph121.split.us.i.preheader, label %.lr.ph118.i

.lr.ph121.split.us.i.preheader:                   ; preds = %.lr.ph121.i
  %xtraiter602 = and i64 %wide.trip.count252.i, 7 ; 3 uses
  %i.dm = icmp ult i32 %5, 8
  br i1 %i.dm, label %.lr.ph121.split.us.i.epil.preheader, label %.lr.ph121.split.us.i.preheader.new

.lr.ph121.split.us.i.preheader.new:               ; preds = %.lr.ph121.split.us.i.preheader
  %unroll_iter606 = and i64 %wide.trip.count252.i, 2147483640
  br label %.lr.ph121.split.us.i

.lr.ph121.split.us.i:                             ; preds = %.lr.ph121.split.us.i, %.lr.ph121.split.us.i.preheader.new
  %indvars.iv249.i = phi i64 [ 0, %.lr.ph121.split.us.i.preheader.new ], [ %indvars.iv.next250.i.7, %.lr.ph121.split.us.i ] ; 9 uses
  %niter607 = phi i64 [ 0, %.lr.ph121.split.us.i.preheader.new ], [ %niter607.next.7, %.lr.ph121.split.us.i ]
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !10
  store i8 0, ptr %i.do, align 1, !tbaa !20
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !10
  store i8 0, ptr %i.dr, align 1, !tbaa !20
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !10
  store i8 0, ptr %i.du, align 1, !tbaa !20
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !10
  store i8 0, ptr %i.dx, align 1, !tbaa !20
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !10
  store i8 0, ptr %i.ea, align 1, !tbaa !20
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !10
  store i8 0, ptr %i.ed, align 1, !tbaa !20
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !10
  store i8 0, ptr %i.eg, align 1, !tbaa !20
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !10
  store i8 0, ptr %i.ej, align 1, !tbaa !20
  %indvars.iv.next250.i.7 = add nuw nsw i64 %indvars.iv249.i, 8 ; 2 uses
  %niter607.next.7 = add i64 %niter607, 8         ; 2 uses
  %niter607.ncmp.7 = icmp eq i64 %niter607.next.7, %unroll_iter606
  br i1 %niter607.ncmp.7, label %MSalignmm_rec.exit.loopexit.unr-lcssa, label %.lr.ph121.split.us.i, !llvm.loop !36

bb.k:                                             ; preds = %bb.k, %.lr.ph114.i
  %indvars.iv238.i = phi i64 [ 0, %.lr.ph114.i ], [ %indvars.iv.next239.i, %bb.k ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv238.i ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !10
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv238.i
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !10
  %i.eo = tail call ptr @strncpy(ptr noundef %i.el, ptr noundef %i.en, i64 noundef %i.dl) #12 ; 0 uses
  %i.ep = load ptr, ptr %i.ek, align 8, !tbaa !10
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 %i.dl
  store i8 0, ptr %i.eq, align 1, !tbaa !20
  %indvars.iv.next239.i = add nuw nsw i64 %indvars.iv238.i, 1 ; 2 uses
  %exitcond242.not.i = icmp eq i64 %indvars.iv.next239.i, %wide.trip.count241.i
  br i1 %exitcond242.not.i, label %.preheader.i, label %bb.k, !llvm.loop !37

.lr.ph118.i:                                      ; preds = %.lr.ph121.i, %._crit_edge119.i
  %indvars.iv244.i = phi i64 [ %indvars.iv.next245.i, %._crit_edge119.i ], [ 0, %.lr.ph121.i ] ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv244.i ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !10
  store i8 0, ptr %i.es, align 1, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph118.i
  %.0593116.i = phi i32 [ 0, %.lr.ph118.i ], [ %i.eu, %bb.l ] ; 2 uses
  %i.et = load ptr, ptr %i.er, align 8, !tbaa !10 ; 2 uses
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.et)
  %endptr.i = getelementptr inbounds i8, ptr %i.et, i64 %strlen.i
  store i16 45, ptr %endptr.i, align 1
  %i.eu = add nuw nsw i32 %.0593116.i, 1
  %exitcond243.not.i = icmp eq i32 %.0593116.i, %i.dg
  br i1 %exitcond243.not.i, label %._crit_edge119.i, label %bb.l, !llvm.loop !38

._crit_edge119.i:                                 ; preds = %bb.l
  %indvars.iv.next245.i = add nuw nsw i64 %indvars.iv244.i, 1 ; 2 uses
  %exitcond248.not.i = icmp eq i64 %indvars.iv.next245.i, %wide.trip.count252.i
  br i1 %exitcond248.not.i, label %MSalignmm_rec.exit, label %.lr.ph118.i, !llvm.loop !36

bb.m:                                             ; preds = %._crit_edge198
  %i.ev = tail call ptr @AllocateCharMtx(i32 noundef %4, i32 noundef 0) #12 ; 8 uses
  %i.ew = tail call ptr @AllocateCharMtx(i32 noundef %5, i32 noundef 0) #12 ; 8 uses
  %i.ex = ptrtoaddr ptr %i.ew to i64
  br i1 %i.ab, label %.lr.ph.preheader.i, label %.preheader13.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.ey = ptrtoaddr ptr %i.ev to i64
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 5 uses
  %min.iters.check291 = icmp ult i32 %4, 8
  %i.ez = sub i64 %i.p, %i.ey
  %diff.check = icmp ugt i64 %i.ez, -32
  %or.cond = select i1 %min.iters.check291, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph292

vector.ph292:                                     ; preds = %.lr.ph.preheader.i
  %n.vec293 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body294

vector.body294:                                   ; preds = %vector.body294, %vector.ph292
  %index295 = phi i64 [ 0, %vector.ph292 ], [ %index.next298, %vector.body294 ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index295 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %wide.load296 = load <2 x ptr>, ptr %i.fa, align 8, !tbaa !10
  %wide.load297 = load <2 x ptr>, ptr %i.fb, align 8, !tbaa !10
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %index295 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <2 x ptr> %wide.load296, ptr %i.fc, align 8, !tbaa !10
  store <2 x ptr> %wide.load297, ptr %i.fd, align 8, !tbaa !10
  %index.next298 = add nuw i64 %index295, 4       ; 2 uses
  %i.fe = icmp eq i64 %index.next298, %n.vec293
  br i1 %i.fe, label %middle.block299, label %vector.body294, !llvm.loop !39

middle.block299:                                  ; preds = %vector.body294
  %cmp.n300 = icmp eq i64 %n.vec293, %wide.trip.count.i
  br i1 %cmp.n300, label %.preheader13.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block299
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec293, %middle.block299 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.prol
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !10
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i.prol
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !10
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !40

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.fi = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.fj = icmp ugt i64 %i.fi, -4
  br i1 %i.fj, label %.preheader13.i, label %.lr.ph.i

.preheader13.i:                                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block299, %bb.m
  br i1 %i.ad, label %.lr.ph17.preheader.i, label %._crit_edge.i

.lr.ph17.preheader.i:                             ; preds = %.preheader13.i
  %wide.trip.count134.i = zext nneg i32 %5 to i64 ; 5 uses
  %min.iters.check305 = icmp ult i32 %5, 8
  %i.fk = sub i64 %i.r, %i.ex
  %diff.check303 = icmp ugt i64 %i.fk, -32
  %or.cond538 = select i1 %min.iters.check305, i1 true, i1 %diff.check303
  br i1 %or.cond538, label %.lr.ph17.i.preheader, label %vector.ph306

vector.ph306:                                     ; preds = %.lr.ph17.preheader.i
  %n.vec307 = and i64 %wide.trip.count134.i, 2147483644 ; 3 uses
  br label %vector.body308

vector.body308:                                   ; preds = %vector.body308, %vector.ph306
  %index309 = phi i64 [ 0, %vector.ph306 ], [ %index.next312, %vector.body308 ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index309 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %wide.load310 = load <2 x ptr>, ptr %i.fl, align 8, !tbaa !10
  %wide.load311 = load <2 x ptr>, ptr %i.fm, align 8, !tbaa !10
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %index309 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store <2 x ptr> %wide.load310, ptr %i.fn, align 8, !tbaa !10
  store <2 x ptr> %wide.load311, ptr %i.fo, align 8, !tbaa !10
  %index.next312 = add nuw i64 %index309, 4       ; 2 uses
  %i.fp = icmp eq i64 %index.next312, %n.vec307
  br i1 %i.fp, label %middle.block313, label %vector.body308, !llvm.loop !41

middle.block313:                                  ; preds = %vector.body308
  %cmp.n314 = icmp eq i64 %n.vec307, %wide.trip.count134.i
  br i1 %cmp.n314, label %._crit_edge.i, label %.lr.ph17.i.preheader
end_hunk_0
begin_hunk_1_@Lalignmm_hmout:bb.a
  %i.ru = fadd float %i.rs, %i.rt                 ; 2 uses
  %i.rv = fcmp ogt float %i.ru, %.0580.i
  %.1581.i = select i1 %i.rv, float %i.ru, float %.0580.i
  %i.rw = load float, ptr %i.pk, align 4, !tbaa !15
  %i.rx = fadd float %i.rj, %i.rw                 ; 2 uses
  %i.ry = fcmp ult float %i.rx, %i.rs
  br i1 %i.ry, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph44.split.i
  store float %i.rx, ptr %.056842.i, align 4, !tbaa !15
  store i32 %i.pv, ptr %.057441.i, align 4, !tbaa !7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph44.split.i
  %i.rz = load float, ptr %.056440.i, align 4, !tbaa !15
  %i.sa = fadd float %.1581.i, %i.rz              ; 2 uses
  store float %i.sa, ptr %.056440.i, align 4, !tbaa !15
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %indvars.iv166.i
  store float %i.sa, ptr %i.sb, align 4, !tbaa !15
  %i.sc = load float, ptr %.056842.i, align 4, !tbaa !15
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.pu, i64 %indvars.iv166.i
  store float %i.sc, ptr %i.sd, align 4, !tbaa !15
  %i.se = getelementptr inbounds nuw i8, ptr %.056638.i, i64 4
  %indvars.iv.next167.i = add nuw nsw i64 %indvars.iv166.i, 1 ; 2 uses
  %.0574.i = getelementptr inbounds nuw i8, ptr %.057441.i, i64 4
  %.0568.i = getelementptr inbounds nuw i8, ptr %.056842.i, i64 4
  %exitcond171.not.i = icmp eq i64 %indvars.iv.next167.i, %wide.trip.count145.i
  br i1 %exitcond171.not.i, label %._crit_edge45.i, label %.lr.ph44.split.i, !llvm.loop !68

._crit_edge45.i:                                  ; preds = %bb.s, %bb.q
  %i.sf = phi ptr [ %i.qb, %bb.q ], [ %i.pu, %bb.s ]
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %i.os
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !15
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv178.i
  store float %i.sh, ptr %i.si, align 4, !tbaa !15
  %i.sj = load float, ptr %i.oz, align 4, !tbaa !15
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %i.pa
  store float %i.sj, ptr %i.sk, align 4, !tbaa !15
  %indvars.iv.next179.i = add nuw nsw i64 %indvars.iv178.i, 1 ; 2 uses
  %exitcond183.not.i = icmp eq i64 %indvars.iv.next179.i, %wide.trip.count139.i
  br i1 %exitcond183.not.i, label %.lr.ph56.i, label %bb.o, !llvm.loop !69

.lr.ph56.i:                                       ; preds = %._crit_edge45.i
  tail call fastcc void @match_calc(ptr noundef nonnull %i.hj, ptr noundef readonly %i.aa, ptr noundef readonly %i.z, i32 noundef range(i32 -2147483648, 2147483647) %i.dh, i32 noundef %i.i, ptr noundef %i.hq, ptr noundef %i.hr, i32 noundef 1)
  tail call fastcc void @match_calc(ptr noundef nonnull %.057648.i, ptr noundef readonly %i.z, ptr noundef readonly %i.aa, i32 noundef range(i32 -2147483648, 2147483647) %i.dg, i32 noundef %i.l, ptr noundef %i.hq, ptr noundef %i.hr, i32 noundef 1)
  %i.sl = zext i32 %i.dg to i64                   ; 11 uses
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.sl ; 8 uses
  %min.iters.check423 = icmp ult i32 %i.dg, 12
  br i1 %min.iters.check423, label %scalar.ph422.preheader, label %vector.memcheck411

vector.memcheck411:                               ; preds = %.lr.ph56.i
  %i.sn = shl nuw nsw i64 %i.sl, 2                ; 2 uses
  %scevgep412 = getelementptr i8, ptr %i.hj, i64 %i.sn ; 2 uses
  %i.so = add nuw nsw i64 %i.sn, 4                ; 2 uses
  %scevgep413 = getelementptr i8, ptr %i.x, i64 %i.so
  %scevgep414 = getelementptr i8, ptr %i.u, i64 %i.so
  %bound0415 = icmp ult ptr %i.hj, %scevgep413
  %bound1416 = icmp ult ptr %i.sm, %scevgep412
  %found.conflict417 = and i1 %bound0415, %bound1416
  %bound0418 = icmp ult ptr %i.hj, %scevgep414
  %bound1419 = icmp ult ptr %i.mr, %scevgep412
  %found.conflict420 = and i1 %bound0418, %bound1419
  %conflict.rdx421 = or i1 %found.conflict417, %found.conflict420
  br i1 %conflict.rdx421, label %scalar.ph422.preheader, label %vector.ph424

vector.ph424:                                     ; preds = %vector.memcheck411
  %n.vec425 = and i64 %i.sl, 2147483640           ; 3 uses
  %i.sp = load float, ptr %i.sm, align 4, !tbaa !15, !alias.scope !122
  %broadcast.splatinsert430 = insertelement <4 x float> poison, float %i.sp, i64 0
  %broadcast.splat431 = shufflevector <4 x float> %broadcast.splatinsert430, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body426

vector.body426:                                   ; preds = %vector.body426, %vector.ph424
  %index427 = phi i64 [ 0, %vector.ph424 ], [ %index.next434, %vector.body426 ] ; 3 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index427 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 4
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sq, i64 20
  %wide.load428 = load <4 x float>, ptr %i.sr, align 4, !tbaa !15, !alias.scope !123
  %wide.load429 = load <4 x float>, ptr %i.ss, align 4, !tbaa !15, !alias.scope !123
  %i.st = fadd <4 x float> %broadcast.splat431, %wide.load428
  %i.su = fadd <4 x float> %broadcast.splat431, %wide.load429
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %index427 ; 3 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 16 ; 2 uses
  %wide.load432 = load <4 x float>, ptr %i.sv, align 4, !tbaa !15, !alias.scope !124, !noalias !125
  %wide.load433 = load <4 x float>, ptr %i.sw, align 4, !tbaa !15, !alias.scope !124, !noalias !125
  %i.sx = fadd <4 x float> %wide.load432, %i.st
  %i.sy = fadd <4 x float> %wide.load433, %i.su
  store <4 x float> %i.sx, ptr %i.sv, align 4, !tbaa !15, !alias.scope !124, !noalias !125
  store <4 x float> %i.sy, ptr %i.sw, align 4, !tbaa !15, !alias.scope !124, !noalias !125
  %index.next434 = add nuw i64 %index427, 8       ; 2 uses
  %i.sz = icmp eq i64 %index.next434, %n.vec425
  br i1 %i.sz, label %middle.block435, label %vector.body426, !llvm.loop !74

middle.block435:                                  ; preds = %vector.body426
  %cmp.n436 = icmp eq i64 %n.vec425, %i.sl
  br i1 %cmp.n436, label %.lr.ph58.i, label %scalar.ph422.preheader

scalar.ph422.preheader:                           ; preds = %vector.memcheck411, %.lr.ph56.i, %middle.block435
  %indvars.iv184.i.ph = phi i64 [ 0, %vector.memcheck411 ], [ 0, %.lr.ph56.i ], [ %n.vec425, %middle.block435 ] ; 4 uses
  %xtraiter568 = and i64 %i.sl, 1
  %lcmp.mod569.not = icmp eq i64 %xtraiter568, 0
  br i1 %lcmp.mod569.not, label %scalar.ph422.prol.loopexit, label %scalar.ph422.prol

scalar.ph422.prol:                                ; preds = %scalar.ph422.preheader
  %i.ta = load float, ptr %i.sm, align 4, !tbaa !15
  %indvars.iv.next185.i.prol = or disjoint i64 %indvars.iv184.i.ph, 1 ; 2 uses
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next185.i.prol
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !15
  %i.td = fadd float %i.ta, %i.tc
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv184.i.ph ; 2 uses
  %i.tf = load float, ptr %i.te, align 4, !tbaa !15
  %i.tg = fadd float %i.tf, %i.td
  store float %i.tg, ptr %i.te, align 4, !tbaa !15
  br label %scalar.ph422.prol.loopexit

scalar.ph422.prol.loopexit:                       ; preds = %scalar.ph422.prol, %scalar.ph422.preheader
  %indvars.iv184.i.unr = phi i64 [ %indvars.iv184.i.ph, %scalar.ph422.preheader ], [ %indvars.iv.next185.i.prol, %scalar.ph422.prol ]
  %i.th = add nsw i64 %i.sl, -1
  %i.ti = icmp eq i64 %indvars.iv184.i.ph, %i.th
  br i1 %i.ti, label %.lr.ph58.i, label %scalar.ph422

.lr.ph58.i:                                       ; preds = %scalar.ph422.prol.loopexit, %scalar.ph422, %middle.block435
  %i.tj = getelementptr [4 x i8], ptr %i.y, i64 %i.os ; 12 uses
  %min.iters.check451 = icmp ult i32 %i.l, 13
  br i1 %min.iters.check451, label %scalar.ph450.preheader, label %vector.memcheck438

vector.memcheck438:                               ; preds = %.lr.ph58.i
  %i.tk = shl nuw nsw i64 %i.os, 2                ; 2 uses
  %scevgep439 = getelementptr i8, ptr %.057648.i, i64 %i.tk ; 2 uses
  %i.tl = add nuw nsw i64 %i.tk, 4                ; 2 uses
  %scevgep440 = getelementptr i8, ptr %i.y, i64 %i.tl
  %scevgep441 = getelementptr i8, ptr %i.w, i64 4
  %scevgep442 = getelementptr i8, ptr %i.w, i64 %i.tl
  %bound0443 = icmp ult ptr %.057648.i, %scevgep440
  %bound1444 = icmp ult ptr %i.tj, %scevgep439
  %found.conflict445 = and i1 %bound0443, %bound1444
  %bound0446 = icmp ult ptr %.057648.i, %scevgep442
  %bound1447 = icmp ult ptr %scevgep441, %scevgep439
  %found.conflict448 = and i1 %bound0446, %bound1447
  %conflict.rdx449 = or i1 %found.conflict445, %found.conflict448
  br i1 %conflict.rdx449, label %scalar.ph450.preheader, label %vector.ph452

vector.ph452:                                     ; preds = %vector.memcheck438
  %n.vec453 = and i64 %i.os, 2147483640           ; 3 uses
  %i.tm = load float, ptr %i.tj, align 4, !tbaa !15, !alias.scope !126
  %broadcast.splatinsert458 = insertelement <4 x float> poison, float %i.tm, i64 0
  %broadcast.splat459 = shufflevector <4 x float> %broadcast.splatinsert458, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body454

vector.body454:                                   ; preds = %vector.body454, %vector.ph452
  %index455 = phi i64 [ 0, %vector.ph452 ], [ %index.next462, %vector.body454 ] ; 3 uses
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index455 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 4
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tn, i64 20
  %wide.load456 = load <4 x float>, ptr %i.to, align 4, !tbaa !15, !alias.scope !127
  %wide.load457 = load <4 x float>, ptr %i.tp, align 4, !tbaa !15, !alias.scope !127
  %i.tq = fadd <4 x float> %broadcast.splat459, %wide.load456
  %i.tr = fadd <4 x float> %broadcast.splat459, %wide.load457
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %index455 ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 16 ; 2 uses
  %wide.load460 = load <4 x float>, ptr %i.ts, align 4, !tbaa !15, !alias.scope !128, !noalias !129
  %wide.load461 = load <4 x float>, ptr %i.tt, align 4, !tbaa !15, !alias.scope !128, !noalias !129
  %i.tu = fadd <4 x float> %wide.load460, %i.tq
  %i.tv = fadd <4 x float> %wide.load461, %i.tr
  store <4 x float> %i.tu, ptr %i.ts, align 4, !tbaa !15, !alias.scope !128, !noalias !129
  store <4 x float> %i.tv, ptr %i.tt, align 4, !tbaa !15, !alias.scope !128, !noalias !129
  %index.next462 = add nuw i64 %index455, 8       ; 2 uses
  %i.tw = icmp eq i64 %index.next462, %n.vec453
  br i1 %i.tw, label %middle.block463, label %vector.body454, !llvm.loop !79

middle.block463:                                  ; preds = %vector.body454
  %cmp.n464 = icmp eq i64 %n.vec453, %i.os
  br i1 %cmp.n464, label %.lr.ph60.i.preheader, label %scalar.ph450.preheader

scalar.ph450.preheader:                           ; preds = %vector.memcheck438, %.lr.ph58.i, %middle.block463
  %indvars.iv189.i.ph = phi i64 [ 0, %vector.memcheck438 ], [ 0, %.lr.ph58.i ], [ %n.vec453, %middle.block463 ] ; 4 uses
  %xtraiter571 = and i64 %i.os, 1
  %lcmp.mod572.not = icmp eq i64 %xtraiter571, 0
  br i1 %lcmp.mod572.not, label %scalar.ph450.prol.loopexit, label %scalar.ph450.prol

scalar.ph450.prol:                                ; preds = %scalar.ph450.preheader
  %i.tx = load float, ptr %i.tj, align 4, !tbaa !15
  %indvars.iv.next190.i.prol = or disjoint i64 %indvars.iv189.i.ph, 1 ; 2 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next190.i.prol
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !15
  %i.ua = fadd float %i.tx, %i.tz
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv189.i.ph ; 2 uses
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !15
  %i.ud = fadd float %i.uc, %i.ua
  store float %i.ud, ptr %i.ub, align 4, !tbaa !15
  br label %scalar.ph450.prol.loopexit

scalar.ph450.prol.loopexit:                       ; preds = %scalar.ph450.prol, %scalar.ph450.preheader
  %indvars.iv189.i.unr = phi i64 [ %indvars.iv189.i.ph, %scalar.ph450.preheader ], [ %indvars.iv.next190.i.prol, %scalar.ph450.prol ]
  %i.ue = add nsw i64 %i.os, -1
  %i.uf = icmp eq i64 %indvars.iv189.i.ph, %i.ue
  br i1 %i.uf, label %.lr.ph60.i.preheader, label %scalar.ph450

.lr.ph60.i.preheader:                             ; preds = %scalar.ph450.prol.loopexit, %scalar.ph450, %middle.block463
  %xtraiter574 = and i64 %i.sl, 1
  %unroll_iter578 = and i64 %i.sl, 4294967294
  br label %.lr.ph60.i

scalar.ph422:                                     ; preds = %scalar.ph422.prol.loopexit, %scalar.ph422
  %indvars.iv184.i = phi i64 [ %indvars.iv.next185.i.1, %scalar.ph422 ], [ %indvars.iv184.i.unr, %scalar.ph422.prol.loopexit ] ; 3 uses
  %i.ug = load float, ptr %i.sm, align 4, !tbaa !15
  %indvars.iv.next185.i = add nuw nsw i64 %indvars.iv184.i, 1 ; 2 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next185.i
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !15
  %i.uj = fadd float %i.ug, %i.ui
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv184.i ; 2 uses
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !15
  %i.um = fadd float %i.ul, %i.uj
  store float %i.um, ptr %i.uk, align 4, !tbaa !15
  %i.un = load float, ptr %i.sm, align 4, !tbaa !15
  %indvars.iv.next185.i.1 = add nuw nsw i64 %indvars.iv184.i, 2 ; 3 uses
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next185.i.1
  %i.up = load float, ptr %i.uo, align 4, !tbaa !15
  %i.uq = fadd float %i.un, %i.up
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.next185.i ; 2 uses
  %i.us = load float, ptr %i.ur, align 4, !tbaa !15
  %i.ut = fadd float %i.us, %i.uq
  store float %i.ut, ptr %i.ur, align 4, !tbaa !15
  %exitcond188.not.i.1 = icmp eq i64 %indvars.iv.next185.i.1, %i.sl
  br i1 %exitcond188.not.i.1, label %.lr.ph58.i, label %scalar.ph422, !llvm.loop !80

scalar.ph450:                                     ; preds = %scalar.ph450.prol.loopexit, %scalar.ph450
  %indvars.iv189.i = phi i64 [ %indvars.iv.next190.i.1, %scalar.ph450 ], [ %indvars.iv189.i.unr, %scalar.ph450.prol.loopexit ] ; 3 uses
  %i.uu = load float, ptr %i.tj, align 4, !tbaa !15
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 1 ; 2 uses
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next190.i
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !15
  %i.ux = fadd float %i.uu, %i.uw
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv189.i ; 2 uses
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !15
  %i.va = fadd float %i.uz, %i.ux
  store float %i.va, ptr %i.uy, align 4, !tbaa !15
  %i.vb = load float, ptr %i.tj, align 4, !tbaa !15
  %indvars.iv.next190.i.1 = add nuw nsw i64 %indvars.iv189.i, 2 ; 3 uses
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next190.i.1
  %i.vd = load float, ptr %i.vc, align 4, !tbaa !15
  %i.ve = fadd float %i.vb, %i.vd
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv.next190.i ; 2 uses
  %i.vg = load float, ptr %i.vf, align 4, !tbaa !15
  %i.vh = fadd float %i.vg, %i.ve
  store float %i.vh, ptr %i.vf, align 4, !tbaa !15
  %exitcond194.not.i.1 = icmp eq i64 %indvars.iv.next190.i.1, %i.os
  br i1 %exitcond194.not.i.1, label %.lr.ph60.i.preheader, label %scalar.ph450, !llvm.loop !81

.lr.ph62.i.unr-lcssa:                             ; preds = %.lr.ph60.i
  %lcmp.mod576.not = icmp eq i64 %xtraiter574, 0
  br i1 %lcmp.mod576.not, label %.lr.ph62.i, label %.lr.ph60.i.epil.preheader

.lr.ph60.i.epil.preheader:                        ; preds = %.lr.ph62.i.unr-lcssa
  %lcmp.mod577 = trunc i32 %i.dg to i1
  tail call void @llvm.assume(i1 %lcmp.mod577)
  %i.vi = load float, ptr %i.sm, align 4, !tbaa !15
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next196.i.1
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 4
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !15
  %i.vm = fadd float %i.vi, %i.vl
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next196.i.1
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !19
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %i.os ; 2 uses
  %i.vq = load float, ptr %i.vp, align 4, !tbaa !15
  %i.vr = fadd float %i.vm, %i.vq
  store float %i.vr, ptr %i.vp, align 4, !tbaa !15
  br label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %.lr.ph62.i.unr-lcssa, %.lr.ph60.i.epil.preheader
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.sl
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !19 ; 7 uses
  %min.iters.check479 = icmp ult i32 %i.l, 13
  br i1 %min.iters.check479, label %scalar.ph478.preheader, label %vector.memcheck466

vector.memcheck466:                               ; preds = %.lr.ph62.i
  %i.vu = shl nuw nsw i64 %i.os, 2                ; 2 uses
  %scevgep467 = getelementptr i8, ptr %i.vt, i64 %i.vu ; 2 uses
  %i.vv = add nuw nsw i64 %i.vu, 4                ; 2 uses
  %scevgep468 = getelementptr i8, ptr %i.y, i64 %i.vv
  %scevgep469 = getelementptr i8, ptr %i.w, i64 4
  %scevgep470 = getelementptr i8, ptr %i.w, i64 %i.vv
  %bound0471 = icmp ult ptr %i.vt, %scevgep468
  %bound1472 = icmp ult ptr %i.tj, %scevgep467
  %found.conflict473 = and i1 %bound0471, %bound1472
  %bound0474 = icmp ult ptr %i.vt, %scevgep470
  %bound1475 = icmp ult ptr %scevgep469, %scevgep467
  %found.conflict476 = and i1 %bound0474, %bound1475
  %conflict.rdx477 = or i1 %found.conflict473, %found.conflict476
  br i1 %conflict.rdx477, label %scalar.ph478.preheader, label %vector.ph480

vector.ph480:                                     ; preds = %vector.memcheck466
  %n.vec481 = and i64 %i.os, 2147483640           ; 3 uses
  %i.vw = load float, ptr %i.tj, align 4, !tbaa !15, !alias.scope !130
  %broadcast.splatinsert486 = insertelement <4 x float> poison, float %i.vw, i64 0
  %broadcast.splat487 = shufflevector <4 x float> %broadcast.splatinsert486, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body482

vector.body482:                                   ; preds = %vector.body482, %vector.ph480
  %index483 = phi i64 [ 0, %vector.ph480 ], [ %index.next490, %vector.body482 ] ; 3 uses
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index483 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 4
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vx, i64 20
  %wide.load484 = load <4 x float>, ptr %i.vy, align 4, !tbaa !15, !alias.scope !131
  %wide.load485 = load <4 x float>, ptr %i.vz, align 4, !tbaa !15, !alias.scope !131
  %i.wa = fadd <4 x float> %broadcast.splat487, %wide.load484
  %i.wb = fadd <4 x float> %broadcast.splat487, %wide.load485
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %index483 ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 16 ; 2 uses
  %wide.load488 = load <4 x float>, ptr %i.wc, align 4, !tbaa !15, !alias.scope !132, !noalias !133
  %wide.load489 = load <4 x float>, ptr %i.wd, align 4, !tbaa !15, !alias.scope !132, !noalias !133
  %i.we = fadd <4 x float> %i.wa, %wide.load488
  %i.wf = fadd <4 x float> %i.wb, %wide.load489
  store <4 x float> %i.we, ptr %i.wc, align 4, !tbaa !15, !alias.scope !132, !noalias !133
  store <4 x float> %i.wf, ptr %i.wd, align 4, !tbaa !15, !alias.scope !132, !noalias !133
  %index.next490 = add nuw i64 %index483, 8       ; 2 uses
  %i.wg = icmp eq i64 %index.next490, %n.vec481
  br i1 %i.wg, label %middle.block491, label %vector.body482, !llvm.loop !86

middle.block491:                                  ; preds = %vector.body482
  %cmp.n492 = icmp eq i64 %n.vec481, %i.os
  br i1 %cmp.n492, label %.lr.ph64.i, label %scalar.ph478.preheader

scalar.ph478.preheader:                           ; preds = %vector.memcheck466, %.lr.ph62.i, %middle.block491
  %indvars.iv200.i.ph = phi i64 [ 0, %vector.memcheck466 ], [ 0, %.lr.ph62.i ], [ %n.vec481, %middle.block491 ] ; 4 uses
  %xtraiter580 = and i64 %i.os, 1
  %lcmp.mod581.not = icmp eq i64 %xtraiter580, 0
  br i1 %lcmp.mod581.not, label %scalar.ph478.prol.loopexit, label %scalar.ph478.prol

scalar.ph478.prol:                                ; preds = %scalar.ph478.preheader
  %i.wh = load float, ptr %i.tj, align 4, !tbaa !15
  %indvars.iv.next201.i.prol = or disjoint i64 %indvars.iv200.i.ph, 1 ; 2 uses
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next201.i.prol
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !15
  %i.wk = fadd float %i.wh, %i.wj
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %indvars.iv200.i.ph ; 2 uses
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !15
  %i.wn = fadd float %i.wk, %i.wm
  store float %i.wn, ptr %i.wl, align 4, !tbaa !15
  br label %scalar.ph478.prol.loopexit

scalar.ph478.prol.loopexit:                       ; preds = %scalar.ph478.prol, %scalar.ph478.preheader
  %indvars.iv200.i.unr = phi i64 [ %indvars.iv200.i.ph, %scalar.ph478.preheader ], [ %indvars.iv.next201.i.prol, %scalar.ph478.prol ]
  %i.wo = add nsw i64 %i.os, -1
  %i.wp = icmp eq i64 %indvars.iv200.i.ph, %i.wo
  br i1 %i.wp, label %.lr.ph64.i, label %scalar.ph478

.lr.ph60.i:                                       ; preds = %.lr.ph60.i, %.lr.ph60.i.preheader
  %indvars.iv195.i = phi i64 [ 0, %.lr.ph60.i.preheader ], [ %indvars.iv.next196.i.1, %.lr.ph60.i ] ; 3 uses
  %niter579 = phi i64 [ 0, %.lr.ph60.i.preheader ], [ %niter579.next.1, %.lr.ph60.i ]
  %i.wq = load float, ptr %i.sm, align 4, !tbaa !15
  %indvars.iv.next196.i = or disjoint i64 %indvars.iv195.i, 1 ; 2 uses
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next196.i
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !15
  %i.wt = fadd float %i.wq, %i.ws
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv195.i
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !19
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %i.os ; 2 uses
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !15
  %i.wy = fadd float %i.wt, %i.wx
  store float %i.wy, ptr %i.ww, align 4, !tbaa !15
  %i.wz = load float, ptr %i.sm, align 4, !tbaa !15
  %indvars.iv.next196.i.1 = add nuw nsw i64 %indvars.iv195.i, 2 ; 4 uses
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next196.i.1
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !15
  %i.xc = fadd float %i.wz, %i.xb
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next196.i
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !19
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.xe, i64 %i.os ; 2 uses
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !15
  %i.xh = fadd float %i.xc, %i.xg
  store float %i.xh, ptr %i.xf, align 4, !tbaa !15
  %niter579.next.1 = add nuw i64 %niter579, 2     ; 2 uses
  %niter579.ncmp.1 = icmp eq i64 %niter579.next.1, %unroll_iter578
  br i1 %niter579.ncmp.1, label %.lr.ph62.i.unr-lcssa, label %.lr.ph60.i, !llvm.loop !87

.lr.ph64.i:                                       ; preds = %scalar.ph478.prol.loopexit, %scalar.ph478, %middle.block491
  %i.xi = getelementptr i8, ptr %i.tj, i64 -4     ; 3 uses
  %i.xj = tail call i32 @llvm.smin.i32(i32 %i.dh, i32 1)
  %i.xk = xor i32 %i.xj, -1
  %i.xl = add i32 %i.xk, %i.l                     ; 2 uses
  %i.xm = zext i32 %i.xl to i64
  %i.xn = add nuw nsw i64 %i.xm, 1                ; 2 uses
  %min.iters.check507 = icmp ult i32 %i.xl, 19
  br i1 %min.iters.check507, label %scalar.ph506.preheader, label %vector.memcheck494

vector.memcheck494:                               ; preds = %.lr.ph64.i
  %i.xo = shl nuw nsw i64 %i.os, 2                ; 4 uses
  %i.xp = add nsw i64 %i.xo, -4
  %smin = tail call i32 @llvm.smin.i32(i32 %i.dh, i32 1)
  %i.xq = xor i32 %smin, -1
  %i.xr = add i32 %i.xq, %i.l
  %i.xs = zext i32 %i.xr to i64
  %i.xt = shl nuw nsw i64 %i.xs, 2                ; 2 uses
  %i.xu = sub nsw i64 %i.xp, %i.xt
  %scevgep495 = getelementptr i8, ptr %i.hl, i64 %i.xu ; 2 uses
  %scevgep496 = getelementptr i8, ptr %i.hl, i64 %i.xo ; 2 uses
  %i.xv = sub nsw i64 %i.xo, %i.xt
  %scevgep497 = getelementptr i8, ptr %.057648.i, i64 %i.xv
  %i.xw = getelementptr i8, ptr %.057648.i, i64 %i.xo
  %scevgep498 = getelementptr i8, ptr %i.xw, i64 4
  %bound0499 = icmp ult ptr %scevgep495, %scevgep498
  %bound1500 = icmp ult ptr %scevgep497, %scevgep496
  %found.conflict501 = and i1 %bound0499, %bound1500
  %bound0502 = icmp ult ptr %scevgep495, %i.tj
  %bound1503 = icmp ult ptr %i.xi, %scevgep496
  %found.conflict504 = and i1 %bound0502, %bound1503
  %conflict.rdx505 = or i1 %found.conflict501, %found.conflict504
  br i1 %conflict.rdx505, label %scalar.ph506.preheader, label %vector.ph508

vector.ph508:                                     ; preds = %vector.memcheck494
  %n.vec509 = and i64 %i.xn, 8589934588           ; 3 uses
  %broadcast.splatinsert510 = insertelement <4 x i32> poison, i32 %i.dg, i64 0
  %broadcast.splat511 = shufflevector <4 x i32> %broadcast.splatinsert510, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.xx = sub nsw i64 %i.os, %n.vec509
  %i.xy = load float, ptr %i.xi, align 4, !tbaa !15, !alias.scope !134
  %broadcast.splatinsert516 = insertelement <4 x float> poison, float %i.xy, i64 0
  %i.xz = shufflevector <4 x float> %broadcast.splatinsert516, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body512

vector.body512:                                   ; preds = %vector.body512, %vector.ph508
  %index513 = phi i64 [ 0, %vector.ph508 ], [ %index.next519, %vector.body512 ] ; 2 uses
  %i.ya = sub i64 %i.os, %index513                ; 3 uses
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %i.ya
  %i.yc = getelementptr inbounds i8, ptr %i.yb, i64 -12
  %wide.load514 = load <4 x float>, ptr %i.yc, align 4, !tbaa !15, !alias.scope !135
  %i.yd = getelementptr [4 x i8], ptr %i.hl, i64 %i.ya
  %i.ye = getelementptr i8, ptr %i.yd, i64 -16
  %reverse518 = fadd <4 x float> %wide.load514, %i.xz
  store <4 x float> %reverse518, ptr %i.ye, align 4, !tbaa !15, !alias.scope !136, !noalias !137
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.ya
  %i.yg = getelementptr inbounds i8, ptr %i.yf, i64 -12
  store <4 x i32> %broadcast.splat511, ptr %i.yg, align 4, !tbaa !7
  %index.next519 = add nuw i64 %index513, 4       ; 2 uses
  %i.yh = icmp eq i64 %index.next519, %n.vec509
  br i1 %i.yh, label %middle.block520, label %vector.body512, !llvm.loop !92

middle.block520:                                  ; preds = %vector.body512
  %cmp.n521 = icmp eq i64 %i.xn, %n.vec509
  br i1 %cmp.n521, label %.lr.ph104.i, label %scalar.ph506.preheader

scalar.ph506.preheader:                           ; preds = %vector.memcheck494, %.lr.ph64.i, %middle.block520
  %indvars.iv206.i.ph = phi i64 [ %i.os, %vector.memcheck494 ], [ %i.os, %.lr.ph64.i ], [ %i.xx, %middle.block520 ]
  br label %scalar.ph506

scalar.ph478:                                     ; preds = %scalar.ph478.prol.loopexit, %scalar.ph478
  %indvars.iv200.i = phi i64 [ %indvars.iv.next201.i.1, %scalar.ph478 ], [ %indvars.iv200.i.unr, %scalar.ph478.prol.loopexit ] ; 3 uses
  %i.yi = load float, ptr %i.tj, align 4, !tbaa !15
  %indvars.iv.next201.i = add nuw nsw i64 %indvars.iv200.i, 1 ; 2 uses
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next201.i
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !15
  %i.yl = fadd float %i.yi, %i.yk
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %indvars.iv200.i ; 2 uses
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !15
  %i.yo = fadd float %i.yl, %i.yn
  store float %i.yo, ptr %i.ym, align 4, !tbaa !15
  %i.yp = load float, ptr %i.tj, align 4, !tbaa !15
  %indvars.iv.next201.i.1 = add nuw nsw i64 %indvars.iv200.i, 2 ; 3 uses
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next201.i.1
  %i.yr = load float, ptr %i.yq, align 4, !tbaa !15
  %i.ys = fadd float %i.yp, %i.yr
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %indvars.iv.next201.i ; 2 uses
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !15
  %i.yv = fadd float %i.ys, %i.yu
  store float %i.yv, ptr %i.yt, align 4, !tbaa !15
  %exitcond205.not.i.1 = icmp eq i64 %indvars.iv.next201.i.1, %i.os
  br i1 %exitcond205.not.i.1, label %.lr.ph64.i, label %scalar.ph478, !llvm.loop !93

.lr.ph104.i:                                      ; preds = %scalar.ph506, %middle.block520
  %i.yw = add i64 %i.k, 4294967294
  %i.yx = and i64 %i.yw, 4294967295               ; 2 uses
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.yx
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.pa
  %i.za = getelementptr inbounds i8, ptr %i.yz, i64 -8
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.pa
  %i.zc = getelementptr inbounds i8, ptr %i.zb, i64 -8
  %i.zd = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %smax220.i = tail call i32 @llvm.smax.i32(i32 %i.iw, i32 1) ; 3 uses
  %wide.trip.count221.i = zext nneg i32 %smax220.i to i64 ; 2 uses
  %xtraiter583 = and i64 %i.os, 1
  %i.ze = and i64 %i.os, 2147483646
  %i.zf = add nsw i64 %i.ze, -4
  %lcmp.mod585.not = icmp eq i64 %xtraiter583, 0
  %lcmp.mod588 = trunc i32 %i.dh to i1
  %xtraiter591 = and i64 %wide.trip.count221.i, 1
  %i.zg = icmp eq i32 %smax220.i, 1
  %unroll_iter597 = and i64 %wide.trip.count221.i, 2147483646
  %lcmp.mod593.not = icmp eq i64 %xtraiter591, 0
  %lcmp.mod596 = trunc i32 %smax220.i to i1
  br label %.lr.ph74.i

scalar.ph506:                                     ; preds = %scalar.ph506.preheader, %scalar.ph506
  %indvars.iv206.i = phi i64 [ %indvars.iv.next207.i, %scalar.ph506 ], [ %indvars.iv206.i.ph, %scalar.ph506.preheader ] ; 5 uses
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv206.i
  %i.zi = load float, ptr %i.zh, align 4, !tbaa !15
  %i.zj = load float, ptr %i.xi, align 4, !tbaa !15
  %i.zk = fadd float %i.zi, %i.zj
  %i.zl = getelementptr [4 x i8], ptr %i.hl, i64 %indvars.iv206.i
  %i.zm = getelementptr i8, ptr %i.zl, i64 -4
  store float %i.zk, ptr %i.zm, align 4, !tbaa !15
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv206.i
  store i32 %i.dg, ptr %i.zn, align 4, !tbaa !7
  %indvars.iv.next207.i = add nsw i64 %indvars.iv206.i, -1
  %i.zo = trunc nuw i64 %indvars.iv206.i to i32
  %i.zp = icmp sgt i32 %i.zo, 1
  br i1 %i.zp, label %scalar.ph506, label %.lr.ph104.i, !llvm.loop !94

.preheader2.preheader.i:                          ; preds = %bb.ap
  %wide.trip.count236.i = and i64 %i.h, 2147483647
  %min.iters.check526 = icmp samesign ult i64 %i.pa, 4
  %n.vec528 = and i64 %i.k, 2147483644            ; 3 uses
  %broadcast.splatinsert529 = insertelement <4 x float> poison, float %.5.i, i64 0
  %broadcast.splat530 = shufflevector <4 x float> %broadcast.splatinsert529, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n536 = icmp eq i64 %i.pa, %n.vec528
  %xtraiter599 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod600.not = icmp eq i64 %xtraiter599, 0
  br label %.preheader2.i

.lr.ph74.i:                                       ; preds = %bb.ap, %.lr.ph104.i
  %indvars.iv223.i = phi i64 [ %i.sl, %.lr.ph104.i ], [ %indvars.iv.next224.i, %bb.ap ] ; 6 uses
  %.0102.i = phi i32 [ %i.dg, %.lr.ph104.i ], [ %.1.i, %bb.ap ]
  %.0544101.i = phi float [ -1.000000e+07, %.lr.ph104.i ], [ %.1545.i, %bb.ap ] ; 2 uses
  %.0550100.i = phi i32 [ 0, %.lr.ph104.i ], [ %.3.i, %bb.ap ]
  %.055299.i = phi i32 [ 0, %.lr.ph104.i ], [ %.3555.i, %bb.ap ] ; 2 uses
  %.055698.i = phi float [ 0.000000e+00, %.lr.ph104.i ], [ %.5.i, %bb.ap ]
  %.157797.i = phi ptr [ %.057847.i, %.lr.ph104.i ], [ %.157996.i, %bb.ap ] ; 4 uses
  %.157996.i = phi ptr [ %.057648.i, %.lr.ph104.i ], [ %.157797.i, %bb.ap ] ; 3 uses
  %.058595.i = phi i32 [ 0, %.lr.ph104.i ], [ %.6.i, %bb.ap ]
  %.059194.i = phi i32 [ %i.ox, %.lr.ph104.i ], [ %.1592.i, %bb.ap ] ; 4 uses
  %indvars.iv.next224.i = add nsw i64 %indvars.iv223.i, -1 ; 9 uses
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv223.i
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !15
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %.157996.i, i64 %i.os ; 2 uses
  store float %i.zr, ptr %i.zs, align 4, !tbaa !15
  %i.zt = trunc nuw nsw i64 %indvars.iv.next224.i to i32
  tail call fastcc void @match_calc(ptr noundef %.157797.i, ptr noundef readonly %i.z, ptr noundef readonly %i.aa, i32 noundef %i.zt, i32 noundef %i.l, ptr noundef %i.hq, ptr noundef %i.hr, i32 noundef 0)
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.next224.i
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !15
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %.157797.i, i64 %i.os
  store float %i.zv, ptr %i.zw, align 4, !tbaa !15
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %.157996.i, i64 %i.pa
  %.156765.i = getelementptr inbounds i8, ptr %i.zx, i64 -4
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %.157797.i, i64 %i.pa
  %i.zz = getelementptr inbounds i8, ptr %i.zy, i64 -8
  %i.aaa = load float, ptr %i.zs, align 4, !tbaa !15
  %i.aab = load float, ptr %i.yy, align 4, !tbaa !15
  %i.aac = fadd float %i.aaa, %i.aab
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv223.i
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next224.i ; 2 uses
  %i.aaf = zext i32 %.055299.i to i64
  %i.aag = icmp eq i64 %indvars.iv.next224.i, %i.aaf
  %i.aah = zext i32 %.059194.i to i64             ; 2 uses
  %i.aai = icmp eq i64 %indvars.iv223.i, %i.aah   ; 3 uses
  %or.cond640.i = select i1 %i.aag, i1 true, i1 %i.aai
  %i.aaj = icmp eq i64 %indvars.iv.next224.i, %i.aah ; 2 uses
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next224.i
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !19
  %i.aam = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv.next224.i
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !19
  %i.aao = trunc nuw nsw i64 %indvars.iv223.i to i32 ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.ad, %.lr.ph74.i
  %indvars.iv209.i = phi i64 [ %i.yx, %.lr.ph74.i ], [ %indvars.iv.next210.i, %bb.ad ] ; 10 uses
  %.156772.i = phi ptr [ %.156765.i, %.lr.ph74.i ], [ %.1567.i, %bb.ad ] ; 2 uses
  %.256271.i = phi float [ %i.aac, %.lr.ph74.i ], [ %.3563.i, %bb.ad ] ; 3 uses
  %.156570.i = phi ptr [ %i.zz, %.lr.ph74.i ], [ %i.acf, %bb.ad ] ; 4 uses
  %.156969.i = phi ptr [ %i.za, %.lr.ph74.i ], [ %i.acd, %bb.ad ] ; 4 uses
  %.257268.i = phi i32 [ %i.dh, %.lr.ph74.i ], [ %.3573.i, %bb.ad ] ; 2 uses
  %.157567.i = phi ptr [ %i.zc, %.lr.ph74.i ], [ %i.ace, %bb.ad ] ; 3 uses
  %i.aap = load float, ptr %.156772.i, align 4, !tbaa !15 ; 4 uses
  %i.aaq = add nuw nsw i64 %indvars.iv209.i, 1    ; 3 uses
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.aaq
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !15
  %i.aat = fadd float %.256271.i, %i.aas          ; 2 uses
  %i.aau = fcmp ogt float %i.aat, %i.aap          ; 2 uses
  %.2582.i = select i1 %i.aau, float %i.aat, float %i.aap ; 2 uses
  %i.aav = trunc nuw i64 %i.aaq to i32            ; 3 uses
  %.0546.i = select i1 %i.aau, i32 %.257268.i, i32 %i.aav
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv209.i
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !15
  %i.aay = fadd float %i.aap, %i.aax              ; 2 uses
  %i.aaz = fcmp ult float %i.aay, %.256271.i      ; 2 uses
  %.3573.i = select i1 %i.aaz, i32 %.257268.i, i32 %i.aav
  %.3563.i = select i1 %i.aaz, float %.256271.i, float %i.aay ; 2 uses
  %i.aba = load float, ptr %.156969.i, align 4, !tbaa !15 ; 2 uses
  %i.abb = load float, ptr %i.aad, align 4, !tbaa !15
  %i.abc = fadd float %i.aba, %i.abb              ; 2 uses
  %i.abd = fcmp ogt float %i.abc, %.2582.i
  br i1 %i.abd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.abe = load i32, ptr %.157567.i, align 4, !tbaa !7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.3583.i = phi float [ %i.abc, %bb.u ], [ %.2582.i, %bb.t ] ; 3 uses
  %.1549.i = phi i32 [ %i.abe, %bb.u ], [ %i.aao, %bb.t ]
  %.1547.i = phi i32 [ %i.aav, %bb.u ], [ %.0546.i, %bb.t ]
  %i.abf = load float, ptr %i.aae, align 4, !tbaa !15
  %i.abg = fadd float %i.aap, %i.abf              ; 2 uses
  %i.abh = fcmp ult float %i.abg, %i.aba
  br i1 %i.abh, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store float %i.abg, ptr %.156969.i, align 4, !tbaa !15
  store i32 %i.aao, ptr %.157567.i, align 4, !tbaa !7
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %or.cond640.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv209.i
  store i32 %.1549.i, ptr %i.abi, align 4, !tbaa !7
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv209.i
  store i32 %.1547.i, ptr %i.abj, align 4, !tbaa !7
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %i.aaj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv209.i ; 2 uses
  %i.abl = load float, ptr %i.abk, align 4, !tbaa !15
  %i.abm = fadd float %.3583.i, %i.abl
  store float %i.abm, ptr %i.abk, align 4, !tbaa !15
  %i.abn = load float, ptr %.156969.i, align 4, !tbaa !15
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.aaq ; 2 uses
  %i.abp = load float, ptr %i.abo, align 4, !tbaa !15
  %i.abq = fadd float %i.abn, %i.abp
  store float %i.abq, ptr %i.abo, align 4, !tbaa !15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %i.aai, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv209.i ; 2 uses
  %i.abs = load float, ptr %i.abr, align 4, !tbaa !15
  %i.abt = fadd float %.3563.i, %i.abs
  store float %i.abt, ptr %i.abr, align 4, !tbaa !15
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %i.aal, i64 %indvars.iv209.i ; 2 uses
  %i.abv = load float, ptr %i.abu, align 4, !tbaa !15
  %i.abw = fadd float %.3583.i, %i.abv
  store float %i.abw, ptr %i.abu, align 4, !tbaa !15
  %i.abx = load float, ptr %.156570.i, align 4, !tbaa !15
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %indvars.iv209.i ; 2 uses
  %i.abz = load float, ptr %i.aby, align 4, !tbaa !15
  %i.aca = fadd float %i.abx, %i.abz
  store float %i.aca, ptr %i.aby, align 4, !tbaa !15
  %i.acb = load float, ptr %.156570.i, align 4, !tbaa !15
  %i.acc = fadd float %.3583.i, %i.acb
  store float %i.acc, ptr %.156570.i, align 4, !tbaa !15
  %i.acd = getelementptr inbounds i8, ptr %.156969.i, i64 -4
  %i.ace = getelementptr inbounds i8, ptr %.157567.i, i64 -4
  %i.acf = getelementptr inbounds i8, ptr %.156570.i, i64 -4
  %indvars.iv.next210.i = add nsw i64 %indvars.iv209.i, -1
  %.1567.i = getelementptr inbounds i8, ptr %.156772.i, i64 -4 ; 2 uses
  %i.acg = trunc nuw i64 %indvars.iv209.i to i32
  %i.ach = icmp sgt i32 %i.acg, 0
  br i1 %i.ach, label %bb.t, label %._crit_edge75.i, !llvm.loop !95

._crit_edge75.i:                                  ; preds = %bb.ad
  %i.aci = load float, ptr %.1567.i, align 4, !tbaa !15
  %i.acj = load float, ptr %i.aae, align 4, !tbaa !15
  %i.ack = fadd float %i.aci, %i.acj              ; 2 uses
  %i.acl = fcmp olt float %.0544101.i, %i.ack     ; 2 uses
  %.1545.i = select i1 %i.acl, float %i.ack, float %.0544101.i ; 2 uses
  %.1.i = select i1 %i.acl, i32 %i.aao, i32 %.0102.i ; 3 uses
  br i1 %i.aaj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge75.i
  %i.acm = load float, ptr %i.hc, align 4, !tbaa !15
  %i.acn = fadd float %.1545.i, %i.acm
  store float %i.acn, ptr %i.hc, align 4, !tbaa !15
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge75.i
  %i.aco = add nsw i32 %.059194.i, -1             ; 2 uses
  br i1 %i.aai, label %.lr.ph82.preheader.i, label %bb.ak

.lr.ph82.preheader.i:                             ; preds = %bb.af
  %i.acp = load float, ptr %i.zd, align 4, !tbaa !15
  br label %.lr.ph82.i

.lr.ph82.i:                                       ; preds = %.lr.ph82.i, %.lr.ph82.preheader.i
  %indvars.iv212.i = phi i64 [ 2, %.lr.ph82.preheader.i ], [ %indvars.iv.next213.i.1, %.lr.ph82.i ] ; 4 uses
  %.155780.i = phi float [ %i.acp, %.lr.ph82.preheader.i ], [ %.2558.i.1, %.lr.ph82.i ] ; 2 uses
  %.158679.i = phi i32 [ 0, %.lr.ph82.preheader.i ], [ %.2587.i.1, %.lr.ph82.i ]
  %niter590 = phi i64 [ 0, %.lr.ph82.preheader.i ], [ %niter590.next.1, %.lr.ph82.i ] ; 2 uses
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv212.i
  %i.acr = load float, ptr %i.acq, align 4, !tbaa !15 ; 2 uses
  %i.acs = fcmp ogt float %i.acr, %.155780.i      ; 2 uses
  %i.act = trunc nuw nsw i64 %indvars.iv212.i to i32
  %.2587.i = select i1 %i.acs, i32 %i.act, i32 %.158679.i
  %.2558.i = select i1 %i.acs, float %i.acr, float %.155780.i ; 2 uses
  %indvars.iv.next213.i = or disjoint i64 %indvars.iv212.i, 1 ; 2 uses
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.next213.i
  %i.acv = load float, ptr %i.acu, align 4, !tbaa !15 ; 2 uses
  %i.acw = fcmp ogt float %i.acv, %.2558.i        ; 2 uses
  %i.acx = trunc nuw nsw i64 %indvars.iv.next213.i to i32
  %.2587.i.1 = select i1 %i.acw, i32 %i.acx, i32 %.2587.i ; 3 uses
  %.2558.i.1 = select i1 %i.acw, float %i.acv, float %.2558.i ; 4 uses
  %indvars.iv.next213.i.1 = add nuw nsw i64 %indvars.iv212.i, 2 ; 3 uses
  %niter590.next.1 = add i64 %niter590, 2
  %niter590.ncmp.1 = icmp eq i64 %niter590, %i.zf
  br i1 %niter590.ncmp.1, label %.lr.ph88.i.preheader.unr-lcssa, label %.lr.ph82.i, !llvm.loop !96

.lr.ph88.i.preheader.unr-lcssa:                   ; preds = %.lr.ph82.i
  br i1 %lcmp.mod585.not, label %.lr.ph88.i.preheader, label %.lr.ph82.i.epil.preheader

.lr.ph82.i.epil.preheader:                        ; preds = %.lr.ph88.i.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod588)
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.next213.i.1
  %i.acz = load float, ptr %i.acy, align 4, !tbaa !15 ; 2 uses
  %i.ada = fcmp ogt float %i.acz, %.2558.i.1      ; 2 uses
  %i.adb = trunc nuw nsw i64 %indvars.iv.next213.i.1 to i32
  %.2587.i.epil = select i1 %i.ada, i32 %i.adb, i32 %.2587.i.1
  %.2558.i.epil = select i1 %i.ada, float %i.acz, float %.2558.i.1
  br label %.lr.ph88.i.preheader

.lr.ph88.i.preheader:                             ; preds = %.lr.ph88.i.preheader.unr-lcssa, %.lr.ph82.i.epil.preheader
  %.2587.i.lcssa = phi i32 [ %.2587.i.1, %.lr.ph88.i.preheader.unr-lcssa ], [ %.2587.i.epil, %.lr.ph82.i.epil.preheader ] ; 2 uses
  %.2558.i.lcssa = phi float [ %.2558.i.1, %.lr.ph88.i.preheader.unr-lcssa ], [ %.2558.i.epil, %.lr.ph82.i.epil.preheader ] ; 2 uses
  br i1 %i.zg, label %.lr.ph88.i.epil.preheader, label %.lr.ph88.i

.lr.ph88.i:                                       ; preds = %.lr.ph88.i.preheader, %.lr.ph88.i
  %indvars.iv217.i = phi i64 [ %indvars.iv.next218.i.1, %.lr.ph88.i ], [ 0, %.lr.ph88.i.preheader ] ; 4 uses
  %.355987.i = phi float [ %.4.i.1, %.lr.ph88.i ], [ %.2558.i.lcssa, %.lr.ph88.i.preheader ] ; 2 uses
  %.358886.i = phi i32 [ %.4589.i.1, %.lr.ph88.i ], [ %.2587.i.lcssa, %.lr.ph88.i.preheader ]
  %niter598 = phi i64 [ %niter598.next.1, %.lr.ph88.i ], [ 0, %.lr.ph88.i.preheader ]
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv217.i
  %i.add = load float, ptr %i.adc, align 4, !tbaa !15 ; 2 uses
  %i.ade = fcmp ogt float %i.add, %.355987.i      ; 2 uses
  %i.adf = trunc nuw nsw i64 %indvars.iv217.i to i32
  %.4589.i = select i1 %i.ade, i32 %i.adf, i32 %.358886.i
  %.4.i = select i1 %i.ade, float %i.add, float %.355987.i ; 2 uses
  %indvars.iv.next218.i = or disjoint i64 %indvars.iv217.i, 1 ; 2 uses
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.next218.i
  %i.adh = load float, ptr %i.adg, align 4, !tbaa !15 ; 2 uses
  %i.adi = fcmp ogt float %i.adh, %.4.i           ; 2 uses
  %i.adj = trunc nuw nsw i64 %indvars.iv.next218.i to i32
  %.4589.i.1 = select i1 %i.adi, i32 %i.adj, i32 %.4589.i ; 3 uses
  %.4.i.1 = select i1 %i.adi, float %i.adh, float %.4.i ; 3 uses
  %indvars.iv.next218.i.1 = add nuw nsw i64 %indvars.iv217.i, 2 ; 2 uses
  %niter598.next.1 = add i64 %niter598, 2         ; 2 uses
  %niter598.ncmp.1 = icmp eq i64 %niter598.next.1, %unroll_iter597
  br i1 %niter598.ncmp.1, label %._crit_edge89.i.unr-lcssa, label %.lr.ph88.i, !llvm.loop !97

._crit_edge89.i.unr-lcssa:                        ; preds = %.lr.ph88.i
  br i1 %lcmp.mod593.not, label %._crit_edge89.i, label %.lr.ph88.i.epil.preheader

.lr.ph88.i.epil.preheader:                        ; preds = %._crit_edge89.i.unr-lcssa, %.lr.ph88.i.preheader
  %indvars.iv217.i.epil.init = phi i64 [ 0, %.lr.ph88.i.preheader ], [ %indvars.iv.next218.i.1, %._crit_edge89.i.unr-lcssa ] ; 2 uses
  %.355987.i.epil.init = phi float [ %.2558.i.lcssa, %.lr.ph88.i.preheader ], [ %.4.i.1, %._crit_edge89.i.unr-lcssa ] ; 2 uses
  %.358886.i.epil.init = phi i32 [ %.2587.i.lcssa, %.lr.ph88.i.preheader ], [ %.4589.i.1, %._crit_edge89.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod596)
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv217.i.epil.init
  %i.adl = load float, ptr %i.adk, align 4, !tbaa !15 ; 2 uses
  %i.adm = fcmp ogt float %i.adl, %.355987.i.epil.init ; 2 uses
  %i.adn = trunc nuw nsw i64 %indvars.iv217.i.epil.init to i32
  %.4589.i.epil = select i1 %i.adm, i32 %i.adn, i32 %.358886.i.epil.init
  %.4.i.epil = select i1 %i.adm, float %i.adl, float %.355987.i.epil.init
  br label %._crit_edge89.i

._crit_edge89.i:                                  ; preds = %._crit_edge89.i.unr-lcssa, %.lr.ph88.i.epil.preheader
  %.4589.i.lcssa = phi i32 [ %.4589.i.1, %._crit_edge89.i.unr-lcssa ], [ %.4589.i.epil, %.lr.ph88.i.epil.preheader ] ; 5 uses
  %.4.i.lcssa = phi float [ %.4.i.1, %._crit_edge89.i.unr-lcssa ], [ %.4.i.epil, %.lr.ph88.i.epil.preheader ] ; 2 uses
  %i.ado = sext i32 %.4589.i.lcssa to i64         ; 4 uses
  %i.adp = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.ado
  %i.adq = load float, ptr %i.adp, align 4, !tbaa !15 ; 3 uses
  %i.adr = add nsw i32 %.4589.i.lcssa, -1         ; 4 uses
  %i.ads = icmp sgt i32 %.4589.i.lcssa, 0
  br i1 %i.ads, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %._crit_edge89.i
  %i.adt = zext nneg i32 %i.adr to i64
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.adt
  %i.adv = load float, ptr %i.adu, align 4, !tbaa !15 ; 2 uses
  %i.adw = fcmp ogt float %i.adv, %i.adq
  br i1 %i.adw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.ado
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !7
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %._crit_edge89.i
  %.4584.i = phi float [ %i.adv, %bb.ah ], [ %i.adq, %bb.ag ], [ %i.adq, %._crit_edge89.i ]
  %.1551.i = phi i32 [ %i.ady, %bb.ah ], [ %i.adr, %bb.ag ], [ %i.adr, %._crit_edge89.i ]
  %i.adz = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.ado
  %i.aea = load float, ptr %i.adz, align 4, !tbaa !15
  %i.aeb = fcmp ogt float %i.aea, %.4584.i
  br i1 %i.aeb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.aec = getelementptr inbounds [4 x i8], ptr %i.he, i64 %i.ado
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !7
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.af
  %.5590.i = phi i32 [ %.4589.i.lcssa, %bb.aj ], [ %.4589.i.lcssa, %bb.ai ], [ %.058595.i, %bb.af ] ; 3 uses
  %.5.i = phi float [ %.4.i.lcssa, %bb.aj ], [ %.4.i.lcssa, %bb.ai ], [ %.055698.i, %bb.af ] ; 7 uses
  %.2554.i = phi i32 [ %i.aed, %bb.aj ], [ %i.aco, %bb.ai ], [ %.055299.i, %bb.af ] ; 3 uses
  %.2.i = phi i32 [ %i.adr, %bb.aj ], [ %.1551.i, %bb.ai ], [ %.0550100.i, %bb.af ] ; 3 uses
  %i.aee = zext i32 %.2554.i to i64
  %i.aef = icmp eq i64 %indvars.iv.next224.i, %i.aee
  br i1 %i.aef, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.aeg = icmp eq i32 %.5590.i, 0
  br i1 %i.aeg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.aeh = add nsw i32 %.1.i, -1
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %.not636.not.i.not = icmp slt i32 %.5590.i, %i.l
  br i1 %.not636.not.i.not, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.aei = sext i32 %.2.i to i64                  ; 2 uses
  %i.aej = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.aei
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !7
  %i.ael = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.aei
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !7
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.ak
  %.1592.i = phi i32 [ %.1.i, %bb.am ], [ %.059194.i, %bb.ak ], [ %i.aek, %bb.ao ], [ %.059194.i, %bb.an ]
  %.6.i = phi i32 [ 1, %bb.am ], [ %.5590.i, %bb.ak ], [ %i.aem, %bb.ao ], [ %i.l, %bb.an ]
  %.3555.i = phi i32 [ %i.aeh, %bb.am ], [ %.2554.i, %bb.ak ], [ %.2554.i, %bb.ao ], [ %i.aco, %bb.an ]
  %.3.i = phi i32 [ 0, %bb.am ], [ %.2.i, %bb.ak ], [ %.2.i, %bb.ao ], [ %i.dh, %bb.an ]
  %i.aen = icmp sgt i64 %indvars.iv223.i, 1
  br i1 %i.aen, label %.lr.ph74.i, label %.preheader2.preheader.i, !llvm.loop !98

.preheader2.i:                                    ; preds = %._crit_edge109.i, %.preheader2.preheader.i
  %indvars.iv232.i = phi i64 [ 0, %.preheader2.preheader.i ], [ %indvars.iv.next233.i, %._crit_edge109.i ] ; 3 uses
  %i.aeo = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv232.i
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !19 ; 7 uses
  %i.aeq = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv232.i
  %i.aer = load ptr, ptr %i.aeq, align 8, !tbaa !19 ; 7 uses
  %i.aes = ptrtoaddr ptr %i.aer to i64
  %i.aet = ptrtoaddr ptr %i.aep to i64
  %i.aeu = sub i64 %i.aet, %i.aes
  %diff.check524 = icmp ugt i64 %i.aeu, -16
  %or.cond542 = select i1 %min.iters.check526, i1 true, i1 %diff.check524
  br i1 %or.cond542, label %scalar.ph525.preheader, label %vector.body531

vector.body531:                                   ; preds = %.preheader2.i, %vector.body531
  %index532 = phi i64 [ %index.next534, %vector.body531 ], [ 0, %.preheader2.i ] ; 3 uses
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %index532
  %wide.load533 = load <4 x float>, ptr %i.aev, align 4, !tbaa !15
  %i.aew = fdiv <4 x float> %wide.load533, %broadcast.splat530
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %index532
  store <4 x float> %i.aew, ptr %i.aex, align 4, !tbaa !15
  %index.next534 = add nuw i64 %index532, 4       ; 2 uses
  %i.aey = icmp eq i64 %index.next534, %n.vec528
  br i1 %i.aey, label %middle.block535, label %vector.body531, !llvm.loop !99

middle.block535:                                  ; preds = %vector.body531
  br i1 %cmp.n536, label %._crit_edge109.i, label %scalar.ph525.preheader

scalar.ph525.preheader:                           ; preds = %.preheader2.i, %middle.block535
  %indvars.iv226.i.ph = phi i64 [ 0, %.preheader2.i ], [ %n.vec528, %middle.block535 ] ; 3 uses
  br i1 %lcmp.mod600.not, label %scalar.ph525.prol.loopexit, label %scalar.ph525.prol

scalar.ph525.prol:                                ; preds = %scalar.ph525.preheader, %scalar.ph525.prol
  %indvars.iv226.i.prol = phi i64 [ %indvars.iv.next227.i.prol, %scalar.ph525.prol ], [ %indvars.iv226.i.ph, %scalar.ph525.preheader ] ; 3 uses
  %prol.iter601 = phi i64 [ %prol.iter601.next, %scalar.ph525.prol ], [ 0, %scalar.ph525.preheader ]
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv226.i.prol
  %i.afa = load float, ptr %i.aez, align 4, !tbaa !15
  %i.afb = fdiv float %i.afa, %.5.i
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %indvars.iv226.i.prol
  store float %i.afb, ptr %i.afc, align 4, !tbaa !15
  %indvars.iv.next227.i.prol = add nuw nsw i64 %indvars.iv226.i.prol, 1 ; 2 uses
  %prol.iter601.next = add i64 %prol.iter601, 1   ; 2 uses
  %prol.iter601.cmp.not = icmp eq i64 %prol.iter601.next, %xtraiter599
  br i1 %prol.iter601.cmp.not, label %scalar.ph525.prol.loopexit, label %scalar.ph525.prol, !llvm.loop !100

scalar.ph525.prol.loopexit:                       ; preds = %scalar.ph525.prol, %scalar.ph525.preheader
  %indvars.iv226.i.unr = phi i64 [ %indvars.iv226.i.ph, %scalar.ph525.preheader ], [ %indvars.iv.next227.i.prol, %scalar.ph525.prol ]
  %i.afd = sub nsw i64 %indvars.iv226.i.ph, %i.pa
  %i.afe = icmp ugt i64 %i.afd, -4
  br i1 %i.afe, label %._crit_edge109.i, label %scalar.ph525

scalar.ph525:                                     ; preds = %scalar.ph525.prol.loopexit, %scalar.ph525
  %indvars.iv226.i = phi i64 [ %indvars.iv.next227.i.3, %scalar.ph525 ], [ %indvars.iv226.i.unr, %scalar.ph525.prol.loopexit ] ; 6 uses
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv226.i
  %i.afg = load float, ptr %i.aff, align 4, !tbaa !15
  %i.afh = fdiv float %i.afg, %.5.i
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %indvars.iv226.i
  store float %i.afh, ptr %i.afi, align 4, !tbaa !15
  %indvars.iv.next227.i = add nuw nsw i64 %indvars.iv226.i, 1 ; 2 uses
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv.next227.i
  %i.afk = load float, ptr %i.afj, align 4, !tbaa !15
  %i.afl = fdiv float %i.afk, %.5.i
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %indvars.iv.next227.i
  store float %i.afl, ptr %i.afm, align 4, !tbaa !15
  %indvars.iv.next227.i.1 = add nuw nsw i64 %indvars.iv226.i, 2 ; 2 uses
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv.next227.i.1
  %i.afo = load float, ptr %i.afn, align 4, !tbaa !15
  %i.afp = fdiv float %i.afo, %.5.i
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %indvars.iv.next227.i.1
  store float %i.afp, ptr %i.afq, align 4, !tbaa !15
  %indvars.iv.next227.i.2 = add nuw nsw i64 %indvars.iv226.i, 3 ; 2 uses
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv.next227.i.2
  %i.afs = load float, ptr %i.afr, align 4, !tbaa !15
  %i.aft = fdiv float %i.afs, %.5.i
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %indvars.iv.next227.i.2
  store float %i.aft, ptr %i.afu, align 4, !tbaa !15
  %indvars.iv.next227.i.3 = add nuw nsw i64 %indvars.iv226.i, 4 ; 2 uses
  %exitcond231.not.i.3 = icmp eq i64 %indvars.iv.next227.i.3, %i.pa
  br i1 %exitcond231.not.i.3, label %._crit_edge109.i, label %scalar.ph525, !llvm.loop !101

._crit_edge109.i:                                 ; preds = %scalar.ph525.prol.loopexit, %scalar.ph525, %middle.block535
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %exitcond237.not.i = icmp eq i64 %indvars.iv.next233.i, %wide.trip.count236.i
end_hunk_1
begin_hunk_2_@Lalign2m2m_hmout:bb.a
  %i.ap = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ao) #13
  %.not182 = icmp eq i64 %i.ap, %i.ae
  br i1 %.not182, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = trunc nuw nsw i64 %indvars.iv215 to i32
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str.2, i32 noundef %i.aq, i32 noundef %9) #14 ; 0 uses
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.au = tail call i64 @fwrite(ptr nonnull @.str.1, i64 27, i64 1, ptr %i.at) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #16
  unreachable

bb.g:                                             ; preds = %bb.e
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %exitcond219.not = icmp eq i64 %indvars.iv.next216, %wide.trip.count218
  br i1 %exitcond219.not, label %._crit_edge, label %bb.e, !llvm.loop !139

._crit_edge:                                      ; preds = %bb.g, %.preheader189
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
  %i.av = icmp sgt i32 %i.i, 0
  br i1 %i.av, label %.lr.ph199, label %.preheader188

.lr.ph199:                                        ; preds = %bb.j
  %i.aw = fpext float %i.b to double              ; 3 uses
  %wide.trip.count223 = and i64 %i.h, 2147483647  ; 4 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count223, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph199
  %i.ax = shl nuw nsw i64 %wide.trip.count223, 2  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ax
  %scevgep271 = getelementptr i8, ptr %i.x, i64 %i.ax
  %bound0 = icmp ult ptr %i.u, %scevgep271
  %bound1 = icmp ult ptr %i.x, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 2147483644               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.aw, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ay, align 4, !tbaa !15, !alias.scope !220, !noalias !221
  %i.az = fpext <4 x float> %wide.load to <4 x double>
  %i.ba = fsub <4 x double> splat (double 1.000000e+00), %i.az
  %i.bb = fmul <4 x double> %i.ba, splat (double 5.000000e-01)
  %i.bc = fmul <4 x double> %i.bb, %broadcast.splat
  %i.bd = fptrunc <4 x double> %i.bc to <4 x float>
  store <4 x float> %i.bd, ptr %i.ay, align 4, !tbaa !15, !alias.scope !220, !noalias !221
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index ; 2 uses
  %wide.load272 = load <4 x float>, ptr %i.be, align 4, !tbaa !15, !alias.scope !221
  %i.bf = fpext <4 x float> %wide.load272 to <4 x double>
  %i.bg = fsub <4 x double> splat (double 1.000000e+00), %i.bf
  %i.bh = fmul <4 x double> %i.bg, splat (double 5.000000e-01)
  %i.bi = fmul <4 x double> %i.bh, %broadcast.splat
  %i.bj = fptrunc <4 x double> %i.bi to <4 x float>
  store <4 x float> %i.bj, ptr %i.be, align 4, !tbaa !15, !alias.scope !221
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count223, %n.vec
  br i1 %cmp.n, label %.preheader188, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph199, %middle.block
  %indvars.iv220.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph199 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader188:                                    ; preds = %scalar.ph, %middle.block, %bb.j
  %i.bl = icmp sgt i32 %i.l, 0
  br i1 %i.bl, label %.lr.ph201, label %._crit_edge202

.lr.ph201:                                        ; preds = %.preheader188
  %i.bm = fpext float %i.b to double              ; 3 uses
  %wide.trip.count228 = and i64 %i.k, 2147483647  ; 4 uses
  %min.iters.check280 = icmp samesign ult i64 %wide.trip.count228, 4
  br i1 %min.iters.check280, label %scalar.ph279.preheader, label %vector.memcheck273

vector.memcheck273:                               ; preds = %.lr.ph201
  %i.bn = shl nuw nsw i64 %wide.trip.count228, 2  ; 2 uses
  %scevgep274 = getelementptr i8, ptr %i.w, i64 %i.bn
  %scevgep275 = getelementptr i8, ptr %i.y, i64 %i.bn
  %bound0276 = icmp ult ptr %i.w, %scevgep275
  %bound1277 = icmp ult ptr %i.y, %scevgep274
  %found.conflict278 = and i1 %bound0276, %bound1277
  br i1 %found.conflict278, label %scalar.ph279.preheader, label %vector.ph281

vector.ph281:                                     ; preds = %vector.memcheck273
  %n.vec282 = and i64 %i.k, 2147483644            ; 3 uses
  %broadcast.splatinsert283 = insertelement <4 x double> poison, double %i.bm, i64 0
  %broadcast.splat284 = shufflevector <4 x double> %broadcast.splatinsert283, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body285

vector.body285:                                   ; preds = %vector.body285, %vector.ph281
  %index286 = phi i64 [ 0, %vector.ph281 ], [ %index.next289, %vector.body285 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index286 ; 2 uses
  %wide.load287 = load <4 x float>, ptr %i.bo, align 4, !tbaa !15, !alias.scope !222, !noalias !223
  %i.bp = fpext <4 x float> %wide.load287 to <4 x double>
  %i.bq = fsub <4 x double> splat (double 1.000000e+00), %i.bp
  %i.br = fmul <4 x double> %i.bq, splat (double 5.000000e-01)
  %i.bs = fmul <4 x double> %i.br, %broadcast.splat284
  %i.bt = fptrunc <4 x double> %i.bs to <4 x float>
  store <4 x float> %i.bt, ptr %i.bo, align 4, !tbaa !15, !alias.scope !222, !noalias !223
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index286 ; 2 uses
  %wide.load288 = load <4 x float>, ptr %i.bu, align 4, !tbaa !15, !alias.scope !223
  %i.bv = fpext <4 x float> %wide.load288 to <4 x double>
  %i.bw = fsub <4 x double> splat (double 1.000000e+00), %i.bv
  %i.bx = fmul <4 x double> %i.bw, splat (double 5.000000e-01)
  %i.by = fmul <4 x double> %i.bx, %broadcast.splat284
  %i.bz = fptrunc <4 x double> %i.by to <4 x float>
  store <4 x float> %i.bz, ptr %i.bu, align 4, !tbaa !15, !alias.scope !223
  %index.next289 = add nuw i64 %index286, 4       ; 2 uses
  %i.ca = icmp eq i64 %index.next289, %n.vec282
  br i1 %i.ca, label %middle.block290, label %vector.body285, !llvm.loop !147

middle.block290:                                  ; preds = %vector.body285
  %cmp.n291 = icmp eq i64 %wide.trip.count228, %n.vec282
  br i1 %cmp.n291, label %._crit_edge202, label %scalar.ph279.preheader

scalar.ph279.preheader:                           ; preds = %vector.memcheck273, %.lr.ph201, %middle.block290
  %indvars.iv225.ph = phi i64 [ 0, %vector.memcheck273 ], [ 0, %.lr.ph201 ], [ %n.vec282, %middle.block290 ]
  br label %scalar.ph279

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv220 = phi i64 [ %indvars.iv.next221, %scalar.ph ], [ %indvars.iv220.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv220 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !15
  %i.cd = fpext float %i.cc to double
  %i.ce = fsub double 1.000000e+00, %i.cd
  %i.cf = fmul double %i.ce, 5.000000e-01
  %i.cg = fmul double %i.cf, %i.aw
  %i.ch = fptrunc double %i.cg to float
  store float %i.ch, ptr %i.cb, align 4, !tbaa !15
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv220 ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !15
  %i.ck = fpext float %i.cj to double
  %i.cl = fsub double 1.000000e+00, %i.ck
  %i.cm = fmul double %i.cl, 5.000000e-01
  %i.cn = fmul double %i.cm, %i.aw
  %i.co = fptrunc double %i.cn to float
  store float %i.co, ptr %i.ci, align 4, !tbaa !15
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %exitcond224.not = icmp eq i64 %indvars.iv.next221, %wide.trip.count223
  br i1 %exitcond224.not, label %.preheader188, label %scalar.ph, !llvm.loop !148

scalar.ph279:                                     ; preds = %scalar.ph279.preheader, %scalar.ph279
  %indvars.iv225 = phi i64 [ %indvars.iv.next226, %scalar.ph279 ], [ %indvars.iv225.ph, %scalar.ph279.preheader ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv225 ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !15
  %i.cr = fpext float %i.cq to double
  %i.cs = fsub double 1.000000e+00, %i.cr
  %i.ct = fmul double %i.cs, 5.000000e-01
  %i.cu = fmul double %i.ct, %i.bm
  %i.cv = fptrunc double %i.cu to float
  store float %i.cv, ptr %i.cp, align 4, !tbaa !15
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv225 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !15
  %i.cy = fpext float %i.cx to double
  %i.cz = fsub double 1.000000e+00, %i.cy
  %i.da = fmul double %i.cz, 5.000000e-01
  %i.db = fmul double %i.da, %i.bm
  %i.dc = fptrunc double %i.db to float
  store float %i.dc, ptr %i.cw, align 4, !tbaa !15
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1 ; 2 uses
  %exitcond229.not = icmp eq i64 %indvars.iv.next226, %wide.trip.count228
  br i1 %exitcond229.not, label %._crit_edge202, label %scalar.ph279, !llvm.loop !149

._crit_edge202:                                   ; preds = %scalar.ph279, %middle.block290, %.preheader188
  store ptr %i.u, ptr %i.s, align 8, !tbaa !19
  %i.dd = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.x, ptr %i.dd, align 8, !tbaa !19
  %i.de = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.w, ptr %i.de, align 8, !tbaa !19
  %i.df = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.y, ptr %i.df, align 8, !tbaa !19
  %i.dg = add i32 %i.i, -1                        ; 8 uses
  %i.dh = add i32 %i.l, -1                        ; 7 uses
  %i.di = load i32, ptr @reccycle, align 4, !tbaa !7
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr @reccycle, align 4, !tbaa !7
  %i.dk = icmp slt i32 %i.l, 1
  br i1 %i.dk, label %.preheader1.i, label %bb.m

.preheader1.i:                                    ; preds = %._crit_edge202
  br i1 %i.ab, label %.lr.ph114.i, label %.preheader.i

.lr.ph114.i:                                      ; preds = %.preheader1.i
  %sext185 = shl i64 %i.h, 32
  %i.dl = ashr exact i64 %sext185, 32             ; 2 uses
  %wide.trip.count241.i = zext nneg i32 %8 to i64
  br label %bb.k

.preheader.i:                                     ; preds = %bb.k, %.preheader1.i
  br i1 %i.ad, label %.lr.ph121.i, label %MSalign2m2m_rec.exit

.lr.ph121.i:                                      ; preds = %.preheader.i
  %.not639115.i = icmp slt i32 %i.i, 1
  %wide.trip.count252.i = zext nneg i32 %9 to i64 ; 3 uses
  br i1 %.not639115.i, label %.lr.ph121.split.us.i.preheader, label %.lr.ph118.i

.lr.ph121.split.us.i.preheader:                   ; preds = %.lr.ph121.i
  %xtraiter606 = and i64 %wide.trip.count252.i, 7 ; 3 uses
  %i.dm = icmp ult i32 %9, 8
  br i1 %i.dm, label %.lr.ph121.split.us.i.epil.preheader, label %.lr.ph121.split.us.i.preheader.new

.lr.ph121.split.us.i.preheader.new:               ; preds = %.lr.ph121.split.us.i.preheader
  %unroll_iter610 = and i64 %wide.trip.count252.i, 2147483640
  br label %.lr.ph121.split.us.i

.lr.ph121.split.us.i:                             ; preds = %.lr.ph121.split.us.i, %.lr.ph121.split.us.i.preheader.new
  %indvars.iv249.i = phi i64 [ 0, %.lr.ph121.split.us.i.preheader.new ], [ %indvars.iv.next250.i.7, %.lr.ph121.split.us.i ] ; 9 uses
  %niter611 = phi i64 [ 0, %.lr.ph121.split.us.i.preheader.new ], [ %niter611.next.7, %.lr.ph121.split.us.i ]
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !10
  store i8 0, ptr %i.do, align 1, !tbaa !20
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !10
  store i8 0, ptr %i.dr, align 1, !tbaa !20
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !10
  store i8 0, ptr %i.du, align 1, !tbaa !20
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !10
  store i8 0, ptr %i.dx, align 1, !tbaa !20
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !10
  store i8 0, ptr %i.ea, align 1, !tbaa !20
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !10
  store i8 0, ptr %i.ed, align 1, !tbaa !20
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !10
  store i8 0, ptr %i.eg, align 1, !tbaa !20
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv249.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !10
  store i8 0, ptr %i.ej, align 1, !tbaa !20
  %indvars.iv.next250.i.7 = add nuw nsw i64 %indvars.iv249.i, 8 ; 2 uses
  %niter611.next.7 = add i64 %niter611, 8         ; 2 uses
  %niter611.ncmp.7 = icmp eq i64 %niter611.next.7, %unroll_iter610
  br i1 %niter611.ncmp.7, label %MSalign2m2m_rec.exit.loopexit.unr-lcssa, label %.lr.ph121.split.us.i, !llvm.loop !150

bb.k:                                             ; preds = %bb.k, %.lr.ph114.i
  %indvars.iv238.i = phi i64 [ 0, %.lr.ph114.i ], [ %indvars.iv.next239.i, %bb.k ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv238.i ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !10
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv238.i
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !10
  %i.eo = tail call ptr @strncpy(ptr noundef %i.el, ptr noundef %i.en, i64 noundef %i.dl) #12 ; 0 uses
  %i.ep = load ptr, ptr %i.ek, align 8, !tbaa !10
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 %i.dl
  store i8 0, ptr %i.eq, align 1, !tbaa !20
  %indvars.iv.next239.i = add nuw nsw i64 %indvars.iv238.i, 1 ; 2 uses
  %exitcond242.not.i = icmp eq i64 %indvars.iv.next239.i, %wide.trip.count241.i
  br i1 %exitcond242.not.i, label %.preheader.i, label %bb.k, !llvm.loop !151

.lr.ph118.i:                                      ; preds = %.lr.ph121.i, %._crit_edge119.i
  %indvars.iv244.i = phi i64 [ %indvars.iv.next245.i, %._crit_edge119.i ], [ 0, %.lr.ph121.i ] ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv244.i ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !10
  store i8 0, ptr %i.es, align 1, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph118.i
  %.0593116.i = phi i32 [ 0, %.lr.ph118.i ], [ %i.eu, %bb.l ] ; 2 uses
  %i.et = load ptr, ptr %i.er, align 8, !tbaa !10 ; 2 uses
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.et)
  %endptr.i = getelementptr inbounds i8, ptr %i.et, i64 %strlen.i
  store i16 45, ptr %endptr.i, align 1
  %i.eu = add nuw nsw i32 %.0593116.i, 1
  %exitcond243.not.i = icmp eq i32 %.0593116.i, %i.dg
  br i1 %exitcond243.not.i, label %._crit_edge119.i, label %bb.l, !llvm.loop !152

._crit_edge119.i:                                 ; preds = %bb.l
  %indvars.iv.next245.i = add nuw nsw i64 %indvars.iv244.i, 1 ; 2 uses
  %exitcond248.not.i = icmp eq i64 %indvars.iv.next245.i, %wide.trip.count252.i
  br i1 %exitcond248.not.i, label %MSalign2m2m_rec.exit, label %.lr.ph118.i, !llvm.loop !150

bb.m:                                             ; preds = %._crit_edge202
  %i.ev = tail call ptr @AllocateCharMtx(i32 noundef %8, i32 noundef 0) #12 ; 8 uses
  %i.ew = tail call ptr @AllocateCharMtx(i32 noundef %9, i32 noundef 0) #12 ; 8 uses
  %i.ex = ptrtoaddr ptr %i.ew to i64
  br i1 %i.ab, label %.lr.ph.preheader.i, label %.preheader13.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  %i.ey = ptrtoaddr ptr %i.ev to i64
  %wide.trip.count.i = zext nneg i32 %8 to i64    ; 5 uses
  %min.iters.check295 = icmp ult i32 %8, 8
  %i.ez = sub i64 %i.p, %i.ey
  %diff.check = icmp ugt i64 %i.ez, -32
  %or.cond = select i1 %min.iters.check295, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph296

vector.ph296:                                     ; preds = %.lr.ph.preheader.i
  %n.vec297 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body298

vector.body298:                                   ; preds = %vector.body298, %vector.ph296
  %index299 = phi i64 [ 0, %vector.ph296 ], [ %index.next302, %vector.body298 ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index299 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %wide.load300 = load <2 x ptr>, ptr %i.fa, align 8, !tbaa !10
  %wide.load301 = load <2 x ptr>, ptr %i.fb, align 8, !tbaa !10
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %index299 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <2 x ptr> %wide.load300, ptr %i.fc, align 8, !tbaa !10
  store <2 x ptr> %wide.load301, ptr %i.fd, align 8, !tbaa !10
  %index.next302 = add nuw i64 %index299, 4       ; 2 uses
  %i.fe = icmp eq i64 %index.next302, %n.vec297
  br i1 %i.fe, label %middle.block303, label %vector.body298, !llvm.loop !153

middle.block303:                                  ; preds = %vector.body298
  %cmp.n304 = icmp eq i64 %n.vec297, %wide.trip.count.i
  br i1 %cmp.n304, label %.preheader13.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block303
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec297, %middle.block303 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.prol
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !10
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i.prol
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !10
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !154

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.fi = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.fj = icmp ugt i64 %i.fi, -4
  br i1 %i.fj, label %.preheader13.i, label %.lr.ph.i

.preheader13.i:                                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block303, %bb.m
  br i1 %i.ad, label %.lr.ph17.preheader.i, label %._crit_edge.i

.lr.ph17.preheader.i:                             ; preds = %.preheader13.i
  %wide.trip.count134.i = zext nneg i32 %9 to i64 ; 5 uses
  %min.iters.check309 = icmp ult i32 %9, 8
  %i.fk = sub i64 %i.r, %i.ex
  %diff.check307 = icmp ugt i64 %i.fk, -32
  %or.cond542 = select i1 %min.iters.check309, i1 true, i1 %diff.check307
  br i1 %or.cond542, label %.lr.ph17.i.preheader, label %vector.ph310

vector.ph310:                                     ; preds = %.lr.ph17.preheader.i
  %n.vec311 = and i64 %wide.trip.count134.i, 2147483644 ; 3 uses
  br label %vector.body312

vector.body312:                                   ; preds = %vector.body312, %vector.ph310
  %index313 = phi i64 [ 0, %vector.ph310 ], [ %index.next316, %vector.body312 ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index313 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %wide.load314 = load <2 x ptr>, ptr %i.fl, align 8, !tbaa !10
  %wide.load315 = load <2 x ptr>, ptr %i.fm, align 8, !tbaa !10
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %index313 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store <2 x ptr> %wide.load314, ptr %i.fn, align 8, !tbaa !10
  store <2 x ptr> %wide.load315, ptr %i.fo, align 8, !tbaa !10
  %index.next316 = add nuw i64 %index313, 4       ; 2 uses
  %i.fp = icmp eq i64 %index.next316, %n.vec311
  br i1 %i.fp, label %middle.block317, label %vector.body312, !llvm.loop !155

middle.block317:                                  ; preds = %vector.body312
  %cmp.n318 = icmp eq i64 %n.vec311, %wide.trip.count134.i
  br i1 %cmp.n318, label %._crit_edge.i, label %.lr.ph17.i.preheader
end_hunk_2
begin_hunk_3_@Lalign2m2m_hmout:bb.a
  %i.ru = fadd float %i.rs, %i.rt                 ; 2 uses
  %i.rv = fcmp ogt float %i.ru, %.0580.i
  %.1581.i = select i1 %i.rv, float %i.ru, float %.0580.i
  %i.rw = load float, ptr %i.pk, align 4, !tbaa !15
  %i.rx = fadd float %i.rj, %i.rw                 ; 2 uses
  %i.ry = fcmp ult float %i.rx, %i.rs
  br i1 %i.ry, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph44.split.i
  store float %i.rx, ptr %.056842.i, align 4, !tbaa !15
  store i32 %i.pv, ptr %.057441.i, align 4, !tbaa !7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph44.split.i
  %i.rz = load float, ptr %.056440.i, align 4, !tbaa !15
  %i.sa = fadd float %.1581.i, %i.rz              ; 2 uses
  store float %i.sa, ptr %.056440.i, align 4, !tbaa !15
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %indvars.iv166.i
  store float %i.sa, ptr %i.sb, align 4, !tbaa !15
  %i.sc = load float, ptr %.056842.i, align 4, !tbaa !15
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.pu, i64 %indvars.iv166.i
  store float %i.sc, ptr %i.sd, align 4, !tbaa !15
  %i.se = getelementptr inbounds nuw i8, ptr %.056638.i, i64 4
  %indvars.iv.next167.i = add nuw nsw i64 %indvars.iv166.i, 1 ; 2 uses
  %.0574.i = getelementptr inbounds nuw i8, ptr %.057441.i, i64 4
  %.0568.i = getelementptr inbounds nuw i8, ptr %.056842.i, i64 4
  %exitcond171.not.i = icmp eq i64 %indvars.iv.next167.i, %wide.trip.count145.i
  br i1 %exitcond171.not.i, label %._crit_edge45.i, label %.lr.ph44.split.i, !llvm.loop !182

._crit_edge45.i:                                  ; preds = %bb.s, %bb.q
  %i.sf = phi ptr [ %i.qb, %bb.q ], [ %i.pu, %bb.s ]
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %i.os
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !15
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %indvars.iv178.i
  store float %i.sh, ptr %i.si, align 4, !tbaa !15
  %i.sj = load float, ptr %i.oz, align 4, !tbaa !15
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %i.pa
  store float %i.sj, ptr %i.sk, align 4, !tbaa !15
  %indvars.iv.next179.i = add nuw nsw i64 %indvars.iv178.i, 1 ; 2 uses
  %exitcond183.not.i = icmp eq i64 %indvars.iv.next179.i, %wide.trip.count139.i
  br i1 %exitcond183.not.i, label %.lr.ph56.i, label %bb.o, !llvm.loop !183

.lr.ph56.i:                                       ; preds = %._crit_edge45.i
  tail call fastcc void @match_ribosum(ptr noundef nonnull %i.hj, ptr noundef readonly %i.aa, ptr noundef readonly %i.z, i32 noundef range(i32 -2147483648, 2147483647) %i.dh, i32 noundef %i.i, ptr noundef %i.hq, ptr noundef %i.hr, i32 noundef 1)
  tail call fastcc void @match_ribosum(ptr noundef nonnull %.057648.i, ptr noundef readonly %i.z, ptr noundef readonly %i.aa, i32 noundef range(i32 -2147483648, 2147483647) %i.dg, i32 noundef %i.l, ptr noundef %i.hq, ptr noundef %i.hr, i32 noundef 1)
  %i.sl = zext i32 %i.dg to i64                   ; 11 uses
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.sl ; 8 uses
  %min.iters.check427 = icmp ult i32 %i.dg, 12
  br i1 %min.iters.check427, label %scalar.ph426.preheader, label %vector.memcheck415

vector.memcheck415:                               ; preds = %.lr.ph56.i
  %i.sn = shl nuw nsw i64 %i.sl, 2                ; 2 uses
  %scevgep416 = getelementptr i8, ptr %i.hj, i64 %i.sn ; 2 uses
  %i.so = add nuw nsw i64 %i.sn, 4                ; 2 uses
  %scevgep417 = getelementptr i8, ptr %i.x, i64 %i.so
  %scevgep418 = getelementptr i8, ptr %i.u, i64 %i.so
  %bound0419 = icmp ult ptr %i.hj, %scevgep417
  %bound1420 = icmp ult ptr %i.sm, %scevgep416
  %found.conflict421 = and i1 %bound0419, %bound1420
  %bound0422 = icmp ult ptr %i.hj, %scevgep418
  %bound1423 = icmp ult ptr %i.mr, %scevgep416
  %found.conflict424 = and i1 %bound0422, %bound1423
  %conflict.rdx425 = or i1 %found.conflict421, %found.conflict424
  br i1 %conflict.rdx425, label %scalar.ph426.preheader, label %vector.ph428

vector.ph428:                                     ; preds = %vector.memcheck415
  %n.vec429 = and i64 %i.sl, 2147483640           ; 3 uses
  %i.sp = load float, ptr %i.sm, align 4, !tbaa !15, !alias.scope !236
  %broadcast.splatinsert434 = insertelement <4 x float> poison, float %i.sp, i64 0
  %broadcast.splat435 = shufflevector <4 x float> %broadcast.splatinsert434, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body430

vector.body430:                                   ; preds = %vector.body430, %vector.ph428
  %index431 = phi i64 [ 0, %vector.ph428 ], [ %index.next438, %vector.body430 ] ; 3 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index431 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 4
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sq, i64 20
  %wide.load432 = load <4 x float>, ptr %i.sr, align 4, !tbaa !15, !alias.scope !237
  %wide.load433 = load <4 x float>, ptr %i.ss, align 4, !tbaa !15, !alias.scope !237
  %i.st = fadd <4 x float> %broadcast.splat435, %wide.load432
  %i.su = fadd <4 x float> %broadcast.splat435, %wide.load433
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %index431 ; 3 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 16 ; 2 uses
  %wide.load436 = load <4 x float>, ptr %i.sv, align 4, !tbaa !15, !alias.scope !238, !noalias !239
  %wide.load437 = load <4 x float>, ptr %i.sw, align 4, !tbaa !15, !alias.scope !238, !noalias !239
  %i.sx = fadd <4 x float> %wide.load436, %i.st
  %i.sy = fadd <4 x float> %wide.load437, %i.su
  store <4 x float> %i.sx, ptr %i.sv, align 4, !tbaa !15, !alias.scope !238, !noalias !239
  store <4 x float> %i.sy, ptr %i.sw, align 4, !tbaa !15, !alias.scope !238, !noalias !239
  %index.next438 = add nuw i64 %index431, 8       ; 2 uses
  %i.sz = icmp eq i64 %index.next438, %n.vec429
  br i1 %i.sz, label %middle.block439, label %vector.body430, !llvm.loop !188

middle.block439:                                  ; preds = %vector.body430
  %cmp.n440 = icmp eq i64 %n.vec429, %i.sl
  br i1 %cmp.n440, label %.lr.ph58.i, label %scalar.ph426.preheader

scalar.ph426.preheader:                           ; preds = %vector.memcheck415, %.lr.ph56.i, %middle.block439
  %indvars.iv184.i.ph = phi i64 [ 0, %vector.memcheck415 ], [ 0, %.lr.ph56.i ], [ %n.vec429, %middle.block439 ] ; 4 uses
  %xtraiter572 = and i64 %i.sl, 1
  %lcmp.mod573.not = icmp eq i64 %xtraiter572, 0
  br i1 %lcmp.mod573.not, label %scalar.ph426.prol.loopexit, label %scalar.ph426.prol

scalar.ph426.prol:                                ; preds = %scalar.ph426.preheader
  %i.ta = load float, ptr %i.sm, align 4, !tbaa !15
  %indvars.iv.next185.i.prol = or disjoint i64 %indvars.iv184.i.ph, 1 ; 2 uses
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next185.i.prol
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !15
  %i.td = fadd float %i.ta, %i.tc
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv184.i.ph ; 2 uses
  %i.tf = load float, ptr %i.te, align 4, !tbaa !15
  %i.tg = fadd float %i.tf, %i.td
  store float %i.tg, ptr %i.te, align 4, !tbaa !15
  br label %scalar.ph426.prol.loopexit

scalar.ph426.prol.loopexit:                       ; preds = %scalar.ph426.prol, %scalar.ph426.preheader
  %indvars.iv184.i.unr = phi i64 [ %indvars.iv184.i.ph, %scalar.ph426.preheader ], [ %indvars.iv.next185.i.prol, %scalar.ph426.prol ]
  %i.th = add nsw i64 %i.sl, -1
  %i.ti = icmp eq i64 %indvars.iv184.i.ph, %i.th
  br i1 %i.ti, label %.lr.ph58.i, label %scalar.ph426

.lr.ph58.i:                                       ; preds = %scalar.ph426.prol.loopexit, %scalar.ph426, %middle.block439
  %i.tj = getelementptr [4 x i8], ptr %i.y, i64 %i.os ; 12 uses
  %min.iters.check455 = icmp ult i32 %i.l, 13
  br i1 %min.iters.check455, label %scalar.ph454.preheader, label %vector.memcheck442

vector.memcheck442:                               ; preds = %.lr.ph58.i
  %i.tk = shl nuw nsw i64 %i.os, 2                ; 2 uses
  %scevgep443 = getelementptr i8, ptr %.057648.i, i64 %i.tk ; 2 uses
  %i.tl = add nuw nsw i64 %i.tk, 4                ; 2 uses
  %scevgep444 = getelementptr i8, ptr %i.y, i64 %i.tl
  %scevgep445 = getelementptr i8, ptr %i.w, i64 4
  %scevgep446 = getelementptr i8, ptr %i.w, i64 %i.tl
  %bound0447 = icmp ult ptr %.057648.i, %scevgep444
  %bound1448 = icmp ult ptr %i.tj, %scevgep443
  %found.conflict449 = and i1 %bound0447, %bound1448
  %bound0450 = icmp ult ptr %.057648.i, %scevgep446
  %bound1451 = icmp ult ptr %scevgep445, %scevgep443
  %found.conflict452 = and i1 %bound0450, %bound1451
  %conflict.rdx453 = or i1 %found.conflict449, %found.conflict452
  br i1 %conflict.rdx453, label %scalar.ph454.preheader, label %vector.ph456

vector.ph456:                                     ; preds = %vector.memcheck442
  %n.vec457 = and i64 %i.os, 2147483640           ; 3 uses
  %i.tm = load float, ptr %i.tj, align 4, !tbaa !15, !alias.scope !240
  %broadcast.splatinsert462 = insertelement <4 x float> poison, float %i.tm, i64 0
  %broadcast.splat463 = shufflevector <4 x float> %broadcast.splatinsert462, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body458

vector.body458:                                   ; preds = %vector.body458, %vector.ph456
  %index459 = phi i64 [ 0, %vector.ph456 ], [ %index.next466, %vector.body458 ] ; 3 uses
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index459 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 4
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tn, i64 20
  %wide.load460 = load <4 x float>, ptr %i.to, align 4, !tbaa !15, !alias.scope !241
  %wide.load461 = load <4 x float>, ptr %i.tp, align 4, !tbaa !15, !alias.scope !241
  %i.tq = fadd <4 x float> %broadcast.splat463, %wide.load460
  %i.tr = fadd <4 x float> %broadcast.splat463, %wide.load461
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %index459 ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 16 ; 2 uses
  %wide.load464 = load <4 x float>, ptr %i.ts, align 4, !tbaa !15, !alias.scope !242, !noalias !243
  %wide.load465 = load <4 x float>, ptr %i.tt, align 4, !tbaa !15, !alias.scope !242, !noalias !243
  %i.tu = fadd <4 x float> %wide.load464, %i.tq
  %i.tv = fadd <4 x float> %wide.load465, %i.tr
  store <4 x float> %i.tu, ptr %i.ts, align 4, !tbaa !15, !alias.scope !242, !noalias !243
  store <4 x float> %i.tv, ptr %i.tt, align 4, !tbaa !15, !alias.scope !242, !noalias !243
  %index.next466 = add nuw i64 %index459, 8       ; 2 uses
  %i.tw = icmp eq i64 %index.next466, %n.vec457
  br i1 %i.tw, label %middle.block467, label %vector.body458, !llvm.loop !193

middle.block467:                                  ; preds = %vector.body458
  %cmp.n468 = icmp eq i64 %n.vec457, %i.os
  br i1 %cmp.n468, label %.lr.ph60.i.preheader, label %scalar.ph454.preheader

scalar.ph454.preheader:                           ; preds = %vector.memcheck442, %.lr.ph58.i, %middle.block467
  %indvars.iv189.i.ph = phi i64 [ 0, %vector.memcheck442 ], [ 0, %.lr.ph58.i ], [ %n.vec457, %middle.block467 ] ; 4 uses
  %xtraiter575 = and i64 %i.os, 1
  %lcmp.mod576.not = icmp eq i64 %xtraiter575, 0
  br i1 %lcmp.mod576.not, label %scalar.ph454.prol.loopexit, label %scalar.ph454.prol

scalar.ph454.prol:                                ; preds = %scalar.ph454.preheader
  %i.tx = load float, ptr %i.tj, align 4, !tbaa !15
  %indvars.iv.next190.i.prol = or disjoint i64 %indvars.iv189.i.ph, 1 ; 2 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next190.i.prol
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !15
  %i.ua = fadd float %i.tx, %i.tz
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv189.i.ph ; 2 uses
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !15
  %i.ud = fadd float %i.uc, %i.ua
  store float %i.ud, ptr %i.ub, align 4, !tbaa !15
  br label %scalar.ph454.prol.loopexit

scalar.ph454.prol.loopexit:                       ; preds = %scalar.ph454.prol, %scalar.ph454.preheader
  %indvars.iv189.i.unr = phi i64 [ %indvars.iv189.i.ph, %scalar.ph454.preheader ], [ %indvars.iv.next190.i.prol, %scalar.ph454.prol ]
  %i.ue = add nsw i64 %i.os, -1
  %i.uf = icmp eq i64 %indvars.iv189.i.ph, %i.ue
  br i1 %i.uf, label %.lr.ph60.i.preheader, label %scalar.ph454

.lr.ph60.i.preheader:                             ; preds = %scalar.ph454.prol.loopexit, %scalar.ph454, %middle.block467
  %xtraiter578 = and i64 %i.sl, 1
  %unroll_iter582 = and i64 %i.sl, 4294967294
  br label %.lr.ph60.i

scalar.ph426:                                     ; preds = %scalar.ph426.prol.loopexit, %scalar.ph426
  %indvars.iv184.i = phi i64 [ %indvars.iv.next185.i.1, %scalar.ph426 ], [ %indvars.iv184.i.unr, %scalar.ph426.prol.loopexit ] ; 3 uses
  %i.ug = load float, ptr %i.sm, align 4, !tbaa !15
  %indvars.iv.next185.i = add nuw nsw i64 %indvars.iv184.i, 1 ; 2 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next185.i
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !15
  %i.uj = fadd float %i.ug, %i.ui
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv184.i ; 2 uses
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !15
  %i.um = fadd float %i.ul, %i.uj
  store float %i.um, ptr %i.uk, align 4, !tbaa !15
  %i.un = load float, ptr %i.sm, align 4, !tbaa !15
  %indvars.iv.next185.i.1 = add nuw nsw i64 %indvars.iv184.i, 2 ; 3 uses
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next185.i.1
  %i.up = load float, ptr %i.uo, align 4, !tbaa !15
  %i.uq = fadd float %i.un, %i.up
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.next185.i ; 2 uses
  %i.us = load float, ptr %i.ur, align 4, !tbaa !15
  %i.ut = fadd float %i.us, %i.uq
  store float %i.ut, ptr %i.ur, align 4, !tbaa !15
  %exitcond188.not.i.1 = icmp eq i64 %indvars.iv.next185.i.1, %i.sl
  br i1 %exitcond188.not.i.1, label %.lr.ph58.i, label %scalar.ph426, !llvm.loop !194

scalar.ph454:                                     ; preds = %scalar.ph454.prol.loopexit, %scalar.ph454
  %indvars.iv189.i = phi i64 [ %indvars.iv.next190.i.1, %scalar.ph454 ], [ %indvars.iv189.i.unr, %scalar.ph454.prol.loopexit ] ; 3 uses
  %i.uu = load float, ptr %i.tj, align 4, !tbaa !15
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 1 ; 2 uses
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next190.i
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !15
  %i.ux = fadd float %i.uu, %i.uw
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv189.i ; 2 uses
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !15
  %i.va = fadd float %i.uz, %i.ux
  store float %i.va, ptr %i.uy, align 4, !tbaa !15
  %i.vb = load float, ptr %i.tj, align 4, !tbaa !15
  %indvars.iv.next190.i.1 = add nuw nsw i64 %indvars.iv189.i, 2 ; 3 uses
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next190.i.1
  %i.vd = load float, ptr %i.vc, align 4, !tbaa !15
  %i.ve = fadd float %i.vb, %i.vd
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv.next190.i ; 2 uses
  %i.vg = load float, ptr %i.vf, align 4, !tbaa !15
  %i.vh = fadd float %i.vg, %i.ve
  store float %i.vh, ptr %i.vf, align 4, !tbaa !15
  %exitcond194.not.i.1 = icmp eq i64 %indvars.iv.next190.i.1, %i.os
  br i1 %exitcond194.not.i.1, label %.lr.ph60.i.preheader, label %scalar.ph454, !llvm.loop !195

.lr.ph62.i.unr-lcssa:                             ; preds = %.lr.ph60.i
  %lcmp.mod580.not = icmp eq i64 %xtraiter578, 0
  br i1 %lcmp.mod580.not, label %.lr.ph62.i, label %.lr.ph60.i.epil.preheader

.lr.ph60.i.epil.preheader:                        ; preds = %.lr.ph62.i.unr-lcssa
  %lcmp.mod581 = trunc i32 %i.dg to i1
  tail call void @llvm.assume(i1 %lcmp.mod581)
  %i.vi = load float, ptr %i.sm, align 4, !tbaa !15
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next196.i.1
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 4
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !15
  %i.vm = fadd float %i.vi, %i.vl
  %i.vn = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next196.i.1
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !19
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %i.os ; 2 uses
  %i.vq = load float, ptr %i.vp, align 4, !tbaa !15
  %i.vr = fadd float %i.vm, %i.vq
  store float %i.vr, ptr %i.vp, align 4, !tbaa !15
  br label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %.lr.ph62.i.unr-lcssa, %.lr.ph60.i.epil.preheader
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.sl
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !19 ; 7 uses
  %min.iters.check483 = icmp ult i32 %i.l, 13
  br i1 %min.iters.check483, label %scalar.ph482.preheader, label %vector.memcheck470

vector.memcheck470:                               ; preds = %.lr.ph62.i
  %i.vu = shl nuw nsw i64 %i.os, 2                ; 2 uses
  %scevgep471 = getelementptr i8, ptr %i.vt, i64 %i.vu ; 2 uses
  %i.vv = add nuw nsw i64 %i.vu, 4                ; 2 uses
  %scevgep472 = getelementptr i8, ptr %i.y, i64 %i.vv
  %scevgep473 = getelementptr i8, ptr %i.w, i64 4
  %scevgep474 = getelementptr i8, ptr %i.w, i64 %i.vv
  %bound0475 = icmp ult ptr %i.vt, %scevgep472
  %bound1476 = icmp ult ptr %i.tj, %scevgep471
  %found.conflict477 = and i1 %bound0475, %bound1476
  %bound0478 = icmp ult ptr %i.vt, %scevgep474
  %bound1479 = icmp ult ptr %scevgep473, %scevgep471
  %found.conflict480 = and i1 %bound0478, %bound1479
  %conflict.rdx481 = or i1 %found.conflict477, %found.conflict480
  br i1 %conflict.rdx481, label %scalar.ph482.preheader, label %vector.ph484

vector.ph484:                                     ; preds = %vector.memcheck470
  %n.vec485 = and i64 %i.os, 2147483640           ; 3 uses
  %i.vw = load float, ptr %i.tj, align 4, !tbaa !15, !alias.scope !244
  %broadcast.splatinsert490 = insertelement <4 x float> poison, float %i.vw, i64 0
  %broadcast.splat491 = shufflevector <4 x float> %broadcast.splatinsert490, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body486

vector.body486:                                   ; preds = %vector.body486, %vector.ph484
  %index487 = phi i64 [ 0, %vector.ph484 ], [ %index.next494, %vector.body486 ] ; 3 uses
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index487 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 4
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vx, i64 20
  %wide.load488 = load <4 x float>, ptr %i.vy, align 4, !tbaa !15, !alias.scope !245
  %wide.load489 = load <4 x float>, ptr %i.vz, align 4, !tbaa !15, !alias.scope !245
  %i.wa = fadd <4 x float> %broadcast.splat491, %wide.load488
  %i.wb = fadd <4 x float> %broadcast.splat491, %wide.load489
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %index487 ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 16 ; 2 uses
  %wide.load492 = load <4 x float>, ptr %i.wc, align 4, !tbaa !15, !alias.scope !246, !noalias !247
  %wide.load493 = load <4 x float>, ptr %i.wd, align 4, !tbaa !15, !alias.scope !246, !noalias !247
  %i.we = fadd <4 x float> %i.wa, %wide.load492
  %i.wf = fadd <4 x float> %i.wb, %wide.load493
  store <4 x float> %i.we, ptr %i.wc, align 4, !tbaa !15, !alias.scope !246, !noalias !247
  store <4 x float> %i.wf, ptr %i.wd, align 4, !tbaa !15, !alias.scope !246, !noalias !247
  %index.next494 = add nuw i64 %index487, 8       ; 2 uses
  %i.wg = icmp eq i64 %index.next494, %n.vec485
  br i1 %i.wg, label %middle.block495, label %vector.body486, !llvm.loop !200

middle.block495:                                  ; preds = %vector.body486
  %cmp.n496 = icmp eq i64 %n.vec485, %i.os
  br i1 %cmp.n496, label %.lr.ph64.i, label %scalar.ph482.preheader

scalar.ph482.preheader:                           ; preds = %vector.memcheck470, %.lr.ph62.i, %middle.block495
  %indvars.iv200.i.ph = phi i64 [ 0, %vector.memcheck470 ], [ 0, %.lr.ph62.i ], [ %n.vec485, %middle.block495 ] ; 4 uses
  %xtraiter584 = and i64 %i.os, 1
  %lcmp.mod585.not = icmp eq i64 %xtraiter584, 0
  br i1 %lcmp.mod585.not, label %scalar.ph482.prol.loopexit, label %scalar.ph482.prol

scalar.ph482.prol:                                ; preds = %scalar.ph482.preheader
  %i.wh = load float, ptr %i.tj, align 4, !tbaa !15
  %indvars.iv.next201.i.prol = or disjoint i64 %indvars.iv200.i.ph, 1 ; 2 uses
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next201.i.prol
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !15
  %i.wk = fadd float %i.wh, %i.wj
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %indvars.iv200.i.ph ; 2 uses
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !15
  %i.wn = fadd float %i.wk, %i.wm
  store float %i.wn, ptr %i.wl, align 4, !tbaa !15
  br label %scalar.ph482.prol.loopexit

scalar.ph482.prol.loopexit:                       ; preds = %scalar.ph482.prol, %scalar.ph482.preheader
  %indvars.iv200.i.unr = phi i64 [ %indvars.iv200.i.ph, %scalar.ph482.preheader ], [ %indvars.iv.next201.i.prol, %scalar.ph482.prol ]
  %i.wo = add nsw i64 %i.os, -1
  %i.wp = icmp eq i64 %indvars.iv200.i.ph, %i.wo
  br i1 %i.wp, label %.lr.ph64.i, label %scalar.ph482

.lr.ph60.i:                                       ; preds = %.lr.ph60.i, %.lr.ph60.i.preheader
  %indvars.iv195.i = phi i64 [ 0, %.lr.ph60.i.preheader ], [ %indvars.iv.next196.i.1, %.lr.ph60.i ] ; 3 uses
  %niter583 = phi i64 [ 0, %.lr.ph60.i.preheader ], [ %niter583.next.1, %.lr.ph60.i ]
  %i.wq = load float, ptr %i.sm, align 4, !tbaa !15
  %indvars.iv.next196.i = or disjoint i64 %indvars.iv195.i, 1 ; 2 uses
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next196.i
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !15
  %i.wt = fadd float %i.wq, %i.ws
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv195.i
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !19
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %i.os ; 2 uses
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !15
  %i.wy = fadd float %i.wt, %i.wx
  store float %i.wy, ptr %i.ww, align 4, !tbaa !15
  %i.wz = load float, ptr %i.sm, align 4, !tbaa !15
  %indvars.iv.next196.i.1 = add nuw nsw i64 %indvars.iv195.i, 2 ; 4 uses
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next196.i.1
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !15
  %i.xc = fadd float %i.wz, %i.xb
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next196.i
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !19
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.xe, i64 %i.os ; 2 uses
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !15
  %i.xh = fadd float %i.xc, %i.xg
  store float %i.xh, ptr %i.xf, align 4, !tbaa !15
  %niter583.next.1 = add nuw i64 %niter583, 2     ; 2 uses
  %niter583.ncmp.1 = icmp eq i64 %niter583.next.1, %unroll_iter582
  br i1 %niter583.ncmp.1, label %.lr.ph62.i.unr-lcssa, label %.lr.ph60.i, !llvm.loop !201

.lr.ph64.i:                                       ; preds = %scalar.ph482.prol.loopexit, %scalar.ph482, %middle.block495
  %i.xi = getelementptr i8, ptr %i.tj, i64 -4     ; 3 uses
  %i.xj = tail call i32 @llvm.smin.i32(i32 %i.dh, i32 1)
  %i.xk = xor i32 %i.xj, -1
  %i.xl = add i32 %i.xk, %i.l                     ; 2 uses
  %i.xm = zext i32 %i.xl to i64
  %i.xn = add nuw nsw i64 %i.xm, 1                ; 2 uses
  %min.iters.check511 = icmp ult i32 %i.xl, 19
  br i1 %min.iters.check511, label %scalar.ph510.preheader, label %vector.memcheck498

vector.memcheck498:                               ; preds = %.lr.ph64.i
  %i.xo = shl nuw nsw i64 %i.os, 2                ; 4 uses
  %i.xp = add nsw i64 %i.xo, -4
  %smin = tail call i32 @llvm.smin.i32(i32 %i.dh, i32 1)
  %i.xq = xor i32 %smin, -1
  %i.xr = add i32 %i.xq, %i.l
  %i.xs = zext i32 %i.xr to i64
  %i.xt = shl nuw nsw i64 %i.xs, 2                ; 2 uses
  %i.xu = sub nsw i64 %i.xp, %i.xt
  %scevgep499 = getelementptr i8, ptr %i.hl, i64 %i.xu ; 2 uses
  %scevgep500 = getelementptr i8, ptr %i.hl, i64 %i.xo ; 2 uses
  %i.xv = sub nsw i64 %i.xo, %i.xt
  %scevgep501 = getelementptr i8, ptr %.057648.i, i64 %i.xv
  %i.xw = getelementptr i8, ptr %.057648.i, i64 %i.xo
  %scevgep502 = getelementptr i8, ptr %i.xw, i64 4
  %bound0503 = icmp ult ptr %scevgep499, %scevgep502
  %bound1504 = icmp ult ptr %scevgep501, %scevgep500
  %found.conflict505 = and i1 %bound0503, %bound1504
  %bound0506 = icmp ult ptr %scevgep499, %i.tj
  %bound1507 = icmp ult ptr %i.xi, %scevgep500
  %found.conflict508 = and i1 %bound0506, %bound1507
  %conflict.rdx509 = or i1 %found.conflict505, %found.conflict508
  br i1 %conflict.rdx509, label %scalar.ph510.preheader, label %vector.ph512

vector.ph512:                                     ; preds = %vector.memcheck498
  %n.vec513 = and i64 %i.xn, 8589934588           ; 3 uses
  %broadcast.splatinsert514 = insertelement <4 x i32> poison, i32 %i.dg, i64 0
  %broadcast.splat515 = shufflevector <4 x i32> %broadcast.splatinsert514, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.xx = sub nsw i64 %i.os, %n.vec513
  %i.xy = load float, ptr %i.xi, align 4, !tbaa !15, !alias.scope !248
  %broadcast.splatinsert520 = insertelement <4 x float> poison, float %i.xy, i64 0
  %i.xz = shufflevector <4 x float> %broadcast.splatinsert520, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body516

vector.body516:                                   ; preds = %vector.body516, %vector.ph512
  %index517 = phi i64 [ 0, %vector.ph512 ], [ %index.next523, %vector.body516 ] ; 2 uses
  %i.ya = sub i64 %i.os, %index517                ; 3 uses
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %i.ya
  %i.yc = getelementptr inbounds i8, ptr %i.yb, i64 -12
  %wide.load518 = load <4 x float>, ptr %i.yc, align 4, !tbaa !15, !alias.scope !249
  %i.yd = getelementptr [4 x i8], ptr %i.hl, i64 %i.ya
  %i.ye = getelementptr i8, ptr %i.yd, i64 -16
  %reverse522 = fadd <4 x float> %wide.load518, %i.xz
  store <4 x float> %reverse522, ptr %i.ye, align 4, !tbaa !15, !alias.scope !250, !noalias !251
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.ya
  %i.yg = getelementptr inbounds i8, ptr %i.yf, i64 -12
  store <4 x i32> %broadcast.splat515, ptr %i.yg, align 4, !tbaa !7
  %index.next523 = add nuw i64 %index517, 4       ; 2 uses
  %i.yh = icmp eq i64 %index.next523, %n.vec513
  br i1 %i.yh, label %middle.block524, label %vector.body516, !llvm.loop !206

middle.block524:                                  ; preds = %vector.body516
  %cmp.n525 = icmp eq i64 %i.xn, %n.vec513
  br i1 %cmp.n525, label %.lr.ph104.i, label %scalar.ph510.preheader

scalar.ph510.preheader:                           ; preds = %vector.memcheck498, %.lr.ph64.i, %middle.block524
  %indvars.iv206.i.ph = phi i64 [ %i.os, %vector.memcheck498 ], [ %i.os, %.lr.ph64.i ], [ %i.xx, %middle.block524 ]
  br label %scalar.ph510

scalar.ph482:                                     ; preds = %scalar.ph482.prol.loopexit, %scalar.ph482
  %indvars.iv200.i = phi i64 [ %indvars.iv.next201.i.1, %scalar.ph482 ], [ %indvars.iv200.i.unr, %scalar.ph482.prol.loopexit ] ; 3 uses
  %i.yi = load float, ptr %i.tj, align 4, !tbaa !15
  %indvars.iv.next201.i = add nuw nsw i64 %indvars.iv200.i, 1 ; 2 uses
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next201.i
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !15
  %i.yl = fadd float %i.yi, %i.yk
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %indvars.iv200.i ; 2 uses
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !15
  %i.yo = fadd float %i.yl, %i.yn
  store float %i.yo, ptr %i.ym, align 4, !tbaa !15
  %i.yp = load float, ptr %i.tj, align 4, !tbaa !15
  %indvars.iv.next201.i.1 = add nuw nsw i64 %indvars.iv200.i, 2 ; 3 uses
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next201.i.1
  %i.yr = load float, ptr %i.yq, align 4, !tbaa !15
  %i.ys = fadd float %i.yp, %i.yr
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %indvars.iv.next201.i ; 2 uses
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !15
  %i.yv = fadd float %i.ys, %i.yu
  store float %i.yv, ptr %i.yt, align 4, !tbaa !15
  %exitcond205.not.i.1 = icmp eq i64 %indvars.iv.next201.i.1, %i.os
  br i1 %exitcond205.not.i.1, label %.lr.ph64.i, label %scalar.ph482, !llvm.loop !207

.lr.ph104.i:                                      ; preds = %scalar.ph510, %middle.block524
  %i.yw = add i64 %i.k, 4294967294
  %i.yx = and i64 %i.yw, 4294967295               ; 2 uses
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.yx
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.pa
  %i.za = getelementptr inbounds i8, ptr %i.yz, i64 -8
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.pa
  %i.zc = getelementptr inbounds i8, ptr %i.zb, i64 -8
  %i.zd = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %smax220.i = tail call i32 @llvm.smax.i32(i32 %i.iw, i32 1) ; 3 uses
  %wide.trip.count221.i = zext nneg i32 %smax220.i to i64 ; 2 uses
  %xtraiter587 = and i64 %i.os, 1
  %i.ze = and i64 %i.os, 2147483646
  %i.zf = add nsw i64 %i.ze, -4
  %lcmp.mod589.not = icmp eq i64 %xtraiter587, 0
  %lcmp.mod592 = trunc i32 %i.dh to i1
  %xtraiter595 = and i64 %wide.trip.count221.i, 1
  %i.zg = icmp eq i32 %smax220.i, 1
  %unroll_iter601 = and i64 %wide.trip.count221.i, 2147483646
  %lcmp.mod597.not = icmp eq i64 %xtraiter595, 0
  %lcmp.mod600 = trunc i32 %smax220.i to i1
  br label %.lr.ph74.i

scalar.ph510:                                     ; preds = %scalar.ph510.preheader, %scalar.ph510
  %indvars.iv206.i = phi i64 [ %indvars.iv.next207.i, %scalar.ph510 ], [ %indvars.iv206.i.ph, %scalar.ph510.preheader ] ; 5 uses
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %.057648.i, i64 %indvars.iv206.i
  %i.zi = load float, ptr %i.zh, align 4, !tbaa !15
  %i.zj = load float, ptr %i.xi, align 4, !tbaa !15
  %i.zk = fadd float %i.zi, %i.zj
  %i.zl = getelementptr [4 x i8], ptr %i.hl, i64 %indvars.iv206.i
  %i.zm = getelementptr i8, ptr %i.zl, i64 -4
  store float %i.zk, ptr %i.zm, align 4, !tbaa !15
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv206.i
  store i32 %i.dg, ptr %i.zn, align 4, !tbaa !7
  %indvars.iv.next207.i = add nsw i64 %indvars.iv206.i, -1
  %i.zo = trunc nuw i64 %indvars.iv206.i to i32
  %i.zp = icmp sgt i32 %i.zo, 1
  br i1 %i.zp, label %scalar.ph510, label %.lr.ph104.i, !llvm.loop !208

.preheader2.preheader.i:                          ; preds = %bb.ap
  %wide.trip.count236.i = and i64 %i.h, 2147483647
  %min.iters.check530 = icmp samesign ult i64 %i.pa, 4
  %n.vec532 = and i64 %i.k, 2147483644            ; 3 uses
  %broadcast.splatinsert533 = insertelement <4 x float> poison, float %.5.i, i64 0
  %broadcast.splat534 = shufflevector <4 x float> %broadcast.splatinsert533, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n540 = icmp eq i64 %i.pa, %n.vec532
  %xtraiter603 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod604.not = icmp eq i64 %xtraiter603, 0
  br label %.preheader2.i

.lr.ph74.i:                                       ; preds = %bb.ap, %.lr.ph104.i
  %indvars.iv223.i = phi i64 [ %i.sl, %.lr.ph104.i ], [ %indvars.iv.next224.i, %bb.ap ] ; 6 uses
  %.0102.i = phi i32 [ %i.dg, %.lr.ph104.i ], [ %.1.i, %bb.ap ]
  %.0544101.i = phi float [ -1.000000e+07, %.lr.ph104.i ], [ %.1545.i, %bb.ap ] ; 2 uses
  %.0550100.i = phi i32 [ 0, %.lr.ph104.i ], [ %.3.i, %bb.ap ]
  %.055299.i = phi i32 [ 0, %.lr.ph104.i ], [ %.3555.i, %bb.ap ] ; 2 uses
  %.055698.i = phi float [ 0.000000e+00, %.lr.ph104.i ], [ %.5.i, %bb.ap ]
  %.157797.i = phi ptr [ %.057847.i, %.lr.ph104.i ], [ %.157996.i, %bb.ap ] ; 4 uses
  %.157996.i = phi ptr [ %.057648.i, %.lr.ph104.i ], [ %.157797.i, %bb.ap ] ; 3 uses
  %.058595.i = phi i32 [ 0, %.lr.ph104.i ], [ %.6.i, %bb.ap ]
  %.059194.i = phi i32 [ %i.ox, %.lr.ph104.i ], [ %.1592.i, %bb.ap ] ; 4 uses
  %indvars.iv.next224.i = add nsw i64 %indvars.iv223.i, -1 ; 9 uses
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv223.i
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !15
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %.157996.i, i64 %i.os ; 2 uses
  store float %i.zr, ptr %i.zs, align 4, !tbaa !15
  %i.zt = trunc nuw nsw i64 %indvars.iv.next224.i to i32
  tail call fastcc void @match_ribosum(ptr noundef %.157797.i, ptr noundef readonly %i.z, ptr noundef readonly %i.aa, i32 noundef %i.zt, i32 noundef %i.l, ptr noundef %i.hq, ptr noundef %i.hr, i32 noundef 0)
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.next224.i
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !15
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %.157797.i, i64 %i.os
  store float %i.zv, ptr %i.zw, align 4, !tbaa !15
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %.157996.i, i64 %i.pa
  %.156765.i = getelementptr inbounds i8, ptr %i.zx, i64 -4
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %.157797.i, i64 %i.pa
  %i.zz = getelementptr inbounds i8, ptr %i.zy, i64 -8
  %i.aaa = load float, ptr %i.zs, align 4, !tbaa !15
  %i.aab = load float, ptr %i.yy, align 4, !tbaa !15
  %i.aac = fadd float %i.aaa, %i.aab
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv223.i
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.next224.i ; 2 uses
  %i.aaf = zext i32 %.055299.i to i64
  %i.aag = icmp eq i64 %indvars.iv.next224.i, %i.aaf
  %i.aah = zext i32 %.059194.i to i64             ; 2 uses
  %i.aai = icmp eq i64 %indvars.iv223.i, %i.aah   ; 3 uses
  %or.cond640.i = select i1 %i.aag, i1 true, i1 %i.aai
  %i.aaj = icmp eq i64 %indvars.iv.next224.i, %i.aah ; 2 uses
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv.next224.i
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !19
  %i.aam = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv.next224.i
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !19
  %i.aao = trunc nuw nsw i64 %indvars.iv223.i to i32 ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.ad, %.lr.ph74.i
  %indvars.iv209.i = phi i64 [ %i.yx, %.lr.ph74.i ], [ %indvars.iv.next210.i, %bb.ad ] ; 10 uses
  %.156772.i = phi ptr [ %.156765.i, %.lr.ph74.i ], [ %.1567.i, %bb.ad ] ; 2 uses
  %.256271.i = phi float [ %i.aac, %.lr.ph74.i ], [ %.3563.i, %bb.ad ] ; 3 uses
  %.156570.i = phi ptr [ %i.zz, %.lr.ph74.i ], [ %i.acf, %bb.ad ] ; 4 uses
  %.156969.i = phi ptr [ %i.za, %.lr.ph74.i ], [ %i.acd, %bb.ad ] ; 4 uses
  %.257268.i = phi i32 [ %i.dh, %.lr.ph74.i ], [ %.3573.i, %bb.ad ] ; 2 uses
  %.157567.i = phi ptr [ %i.zc, %.lr.ph74.i ], [ %i.ace, %bb.ad ] ; 3 uses
  %i.aap = load float, ptr %.156772.i, align 4, !tbaa !15 ; 4 uses
  %i.aaq = add nuw nsw i64 %indvars.iv209.i, 1    ; 3 uses
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.aaq
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !15
  %i.aat = fadd float %.256271.i, %i.aas          ; 2 uses
  %i.aau = fcmp ogt float %i.aat, %i.aap          ; 2 uses
  %.2582.i = select i1 %i.aau, float %i.aat, float %i.aap ; 2 uses
  %i.aav = trunc nuw i64 %i.aaq to i32            ; 3 uses
  %.0546.i = select i1 %i.aau, i32 %.257268.i, i32 %i.aav
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv209.i
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !15
  %i.aay = fadd float %i.aap, %i.aax              ; 2 uses
  %i.aaz = fcmp ult float %i.aay, %.256271.i      ; 2 uses
  %.3573.i = select i1 %i.aaz, i32 %.257268.i, i32 %i.aav
  %.3563.i = select i1 %i.aaz, float %.256271.i, float %i.aay ; 2 uses
  %i.aba = load float, ptr %.156969.i, align 4, !tbaa !15 ; 2 uses
  %i.abb = load float, ptr %i.aad, align 4, !tbaa !15
  %i.abc = fadd float %i.aba, %i.abb              ; 2 uses
  %i.abd = fcmp ogt float %i.abc, %.2582.i
  br i1 %i.abd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.abe = load i32, ptr %.157567.i, align 4, !tbaa !7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.3583.i = phi float [ %i.abc, %bb.u ], [ %.2582.i, %bb.t ] ; 3 uses
  %.1549.i = phi i32 [ %i.abe, %bb.u ], [ %i.aao, %bb.t ]
  %.1547.i = phi i32 [ %i.aav, %bb.u ], [ %.0546.i, %bb.t ]
  %i.abf = load float, ptr %i.aae, align 4, !tbaa !15
  %i.abg = fadd float %i.aap, %i.abf              ; 2 uses
  %i.abh = fcmp ult float %i.abg, %i.aba
  br i1 %i.abh, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store float %i.abg, ptr %.156969.i, align 4, !tbaa !15
  store i32 %i.aao, ptr %.157567.i, align 4, !tbaa !7
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %or.cond640.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv209.i
  store i32 %.1549.i, ptr %i.abi, align 4, !tbaa !7
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv209.i
  store i32 %.1547.i, ptr %i.abj, align 4, !tbaa !7
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %i.aaj, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv209.i ; 2 uses
  %i.abl = load float, ptr %i.abk, align 4, !tbaa !15
  %i.abm = fadd float %.3583.i, %i.abl
  store float %i.abm, ptr %i.abk, align 4, !tbaa !15
  %i.abn = load float, ptr %.156969.i, align 4, !tbaa !15
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.aaq ; 2 uses
  %i.abp = load float, ptr %i.abo, align 4, !tbaa !15
  %i.abq = fadd float %i.abn, %i.abp
  store float %i.abq, ptr %i.abo, align 4, !tbaa !15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %i.aai, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv209.i ; 2 uses
  %i.abs = load float, ptr %i.abr, align 4, !tbaa !15
  %i.abt = fadd float %.3563.i, %i.abs
  store float %i.abt, ptr %i.abr, align 4, !tbaa !15
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %i.aal, i64 %indvars.iv209.i ; 2 uses
  %i.abv = load float, ptr %i.abu, align 4, !tbaa !15
  %i.abw = fadd float %.3583.i, %i.abv
  store float %i.abw, ptr %i.abu, align 4, !tbaa !15
  %i.abx = load float, ptr %.156570.i, align 4, !tbaa !15
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.aan, i64 %indvars.iv209.i ; 2 uses
  %i.abz = load float, ptr %i.aby, align 4, !tbaa !15
  %i.aca = fadd float %i.abx, %i.abz
  store float %i.aca, ptr %i.aby, align 4, !tbaa !15
  %i.acb = load float, ptr %.156570.i, align 4, !tbaa !15
  %i.acc = fadd float %.3583.i, %i.acb
  store float %i.acc, ptr %.156570.i, align 4, !tbaa !15
  %i.acd = getelementptr inbounds i8, ptr %.156969.i, i64 -4
  %i.ace = getelementptr inbounds i8, ptr %.157567.i, i64 -4
  %i.acf = getelementptr inbounds i8, ptr %.156570.i, i64 -4
  %indvars.iv.next210.i = add nsw i64 %indvars.iv209.i, -1
  %.1567.i = getelementptr inbounds i8, ptr %.156772.i, i64 -4 ; 2 uses
  %i.acg = trunc nuw i64 %indvars.iv209.i to i32
  %i.ach = icmp sgt i32 %i.acg, 0
  br i1 %i.ach, label %bb.t, label %._crit_edge75.i, !llvm.loop !209

._crit_edge75.i:                                  ; preds = %bb.ad
  %i.aci = load float, ptr %.1567.i, align 4, !tbaa !15
  %i.acj = load float, ptr %i.aae, align 4, !tbaa !15
  %i.ack = fadd float %i.aci, %i.acj              ; 2 uses
  %i.acl = fcmp olt float %.0544101.i, %i.ack     ; 2 uses
  %.1545.i = select i1 %i.acl, float %i.ack, float %.0544101.i ; 2 uses
  %.1.i = select i1 %i.acl, i32 %i.aao, i32 %.0102.i ; 3 uses
  br i1 %i.aaj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge75.i
  %i.acm = load float, ptr %i.hc, align 4, !tbaa !15
  %i.acn = fadd float %.1545.i, %i.acm
  store float %i.acn, ptr %i.hc, align 4, !tbaa !15
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge75.i
  %i.aco = add nsw i32 %.059194.i, -1             ; 2 uses
  br i1 %i.aai, label %.lr.ph82.preheader.i, label %bb.ak

.lr.ph82.preheader.i:                             ; preds = %bb.af
  %i.acp = load float, ptr %i.zd, align 4, !tbaa !15
  br label %.lr.ph82.i

.lr.ph82.i:                                       ; preds = %.lr.ph82.i, %.lr.ph82.preheader.i
  %indvars.iv212.i = phi i64 [ 2, %.lr.ph82.preheader.i ], [ %indvars.iv.next213.i.1, %.lr.ph82.i ] ; 4 uses
  %.155780.i = phi float [ %i.acp, %.lr.ph82.preheader.i ], [ %.2558.i.1, %.lr.ph82.i ] ; 2 uses
  %.158679.i = phi i32 [ 0, %.lr.ph82.preheader.i ], [ %.2587.i.1, %.lr.ph82.i ]
  %niter594 = phi i64 [ 0, %.lr.ph82.preheader.i ], [ %niter594.next.1, %.lr.ph82.i ] ; 2 uses
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv212.i
  %i.acr = load float, ptr %i.acq, align 4, !tbaa !15 ; 2 uses
  %i.acs = fcmp ogt float %i.acr, %.155780.i      ; 2 uses
  %i.act = trunc nuw nsw i64 %indvars.iv212.i to i32
  %.2587.i = select i1 %i.acs, i32 %i.act, i32 %.158679.i
  %.2558.i = select i1 %i.acs, float %i.acr, float %.155780.i ; 2 uses
  %indvars.iv.next213.i = or disjoint i64 %indvars.iv212.i, 1 ; 2 uses
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.next213.i
  %i.acv = load float, ptr %i.acu, align 4, !tbaa !15 ; 2 uses
  %i.acw = fcmp ogt float %i.acv, %.2558.i        ; 2 uses
  %i.acx = trunc nuw nsw i64 %indvars.iv.next213.i to i32
  %.2587.i.1 = select i1 %i.acw, i32 %i.acx, i32 %.2587.i ; 3 uses
  %.2558.i.1 = select i1 %i.acw, float %i.acv, float %.2558.i ; 4 uses
  %indvars.iv.next213.i.1 = add nuw nsw i64 %indvars.iv212.i, 2 ; 3 uses
  %niter594.next.1 = add i64 %niter594, 2
  %niter594.ncmp.1 = icmp eq i64 %niter594, %i.zf
  br i1 %niter594.ncmp.1, label %.lr.ph88.i.preheader.unr-lcssa, label %.lr.ph82.i, !llvm.loop !210

.lr.ph88.i.preheader.unr-lcssa:                   ; preds = %.lr.ph82.i
  br i1 %lcmp.mod589.not, label %.lr.ph88.i.preheader, label %.lr.ph82.i.epil.preheader

.lr.ph82.i.epil.preheader:                        ; preds = %.lr.ph88.i.preheader.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod592)
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv.next213.i.1
  %i.acz = load float, ptr %i.acy, align 4, !tbaa !15 ; 2 uses
  %i.ada = fcmp ogt float %i.acz, %.2558.i.1      ; 2 uses
  %i.adb = trunc nuw nsw i64 %indvars.iv.next213.i.1 to i32
  %.2587.i.epil = select i1 %i.ada, i32 %i.adb, i32 %.2587.i.1
  %.2558.i.epil = select i1 %i.ada, float %i.acz, float %.2558.i.1
  br label %.lr.ph88.i.preheader

.lr.ph88.i.preheader:                             ; preds = %.lr.ph88.i.preheader.unr-lcssa, %.lr.ph82.i.epil.preheader
  %.2587.i.lcssa = phi i32 [ %.2587.i.1, %.lr.ph88.i.preheader.unr-lcssa ], [ %.2587.i.epil, %.lr.ph82.i.epil.preheader ] ; 2 uses
  %.2558.i.lcssa = phi float [ %.2558.i.1, %.lr.ph88.i.preheader.unr-lcssa ], [ %.2558.i.epil, %.lr.ph82.i.epil.preheader ] ; 2 uses
  br i1 %i.zg, label %.lr.ph88.i.epil.preheader, label %.lr.ph88.i

.lr.ph88.i:                                       ; preds = %.lr.ph88.i.preheader, %.lr.ph88.i
  %indvars.iv217.i = phi i64 [ %indvars.iv.next218.i.1, %.lr.ph88.i ], [ 0, %.lr.ph88.i.preheader ] ; 4 uses
  %.355987.i = phi float [ %.4.i.1, %.lr.ph88.i ], [ %.2558.i.lcssa, %.lr.ph88.i.preheader ] ; 2 uses
  %.358886.i = phi i32 [ %.4589.i.1, %.lr.ph88.i ], [ %.2587.i.lcssa, %.lr.ph88.i.preheader ]
  %niter602 = phi i64 [ %niter602.next.1, %.lr.ph88.i ], [ 0, %.lr.ph88.i.preheader ]
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv217.i
  %i.add = load float, ptr %i.adc, align 4, !tbaa !15 ; 2 uses
  %i.ade = fcmp ogt float %i.add, %.355987.i      ; 2 uses
  %i.adf = trunc nuw nsw i64 %indvars.iv217.i to i32
  %.4589.i = select i1 %i.ade, i32 %i.adf, i32 %.358886.i
  %.4.i = select i1 %i.ade, float %i.add, float %.355987.i ; 2 uses
  %indvars.iv.next218.i = or disjoint i64 %indvars.iv217.i, 1 ; 2 uses
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.next218.i
  %i.adh = load float, ptr %i.adg, align 4, !tbaa !15 ; 2 uses
  %i.adi = fcmp ogt float %i.adh, %.4.i           ; 2 uses
  %i.adj = trunc nuw nsw i64 %indvars.iv.next218.i to i32
  %.4589.i.1 = select i1 %i.adi, i32 %i.adj, i32 %.4589.i ; 3 uses
  %.4.i.1 = select i1 %i.adi, float %i.adh, float %.4.i ; 3 uses
  %indvars.iv.next218.i.1 = add nuw nsw i64 %indvars.iv217.i, 2 ; 2 uses
  %niter602.next.1 = add i64 %niter602, 2         ; 2 uses
  %niter602.ncmp.1 = icmp eq i64 %niter602.next.1, %unroll_iter601
  br i1 %niter602.ncmp.1, label %._crit_edge89.i.unr-lcssa, label %.lr.ph88.i, !llvm.loop !211

._crit_edge89.i.unr-lcssa:                        ; preds = %.lr.ph88.i
  br i1 %lcmp.mod597.not, label %._crit_edge89.i, label %.lr.ph88.i.epil.preheader

.lr.ph88.i.epil.preheader:                        ; preds = %._crit_edge89.i.unr-lcssa, %.lr.ph88.i.preheader
  %indvars.iv217.i.epil.init = phi i64 [ 0, %.lr.ph88.i.preheader ], [ %indvars.iv.next218.i.1, %._crit_edge89.i.unr-lcssa ] ; 2 uses
  %.355987.i.epil.init = phi float [ %.2558.i.lcssa, %.lr.ph88.i.preheader ], [ %.4.i.1, %._crit_edge89.i.unr-lcssa ] ; 2 uses
  %.358886.i.epil.init = phi i32 [ %.2587.i.lcssa, %.lr.ph88.i.preheader ], [ %.4589.i.1, %._crit_edge89.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod600)
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv217.i.epil.init
  %i.adl = load float, ptr %i.adk, align 4, !tbaa !15 ; 2 uses
  %i.adm = fcmp ogt float %i.adl, %.355987.i.epil.init ; 2 uses
  %i.adn = trunc nuw nsw i64 %indvars.iv217.i.epil.init to i32
  %.4589.i.epil = select i1 %i.adm, i32 %i.adn, i32 %.358886.i.epil.init
  %.4.i.epil = select i1 %i.adm, float %i.adl, float %.355987.i.epil.init
  br label %._crit_edge89.i

._crit_edge89.i:                                  ; preds = %._crit_edge89.i.unr-lcssa, %.lr.ph88.i.epil.preheader
  %.4589.i.lcssa = phi i32 [ %.4589.i.1, %._crit_edge89.i.unr-lcssa ], [ %.4589.i.epil, %.lr.ph88.i.epil.preheader ] ; 5 uses
  %.4.i.lcssa = phi float [ %.4.i.1, %._crit_edge89.i.unr-lcssa ], [ %.4.i.epil, %.lr.ph88.i.epil.preheader ] ; 2 uses
  %i.ado = sext i32 %.4589.i.lcssa to i64         ; 4 uses
  %i.adp = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.ado
  %i.adq = load float, ptr %i.adp, align 4, !tbaa !15 ; 3 uses
  %i.adr = add nsw i32 %.4589.i.lcssa, -1         ; 4 uses
  %i.ads = icmp sgt i32 %.4589.i.lcssa, 0
  br i1 %i.ads, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %._crit_edge89.i
  %i.adt = zext nneg i32 %i.adr to i64
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.adt
  %i.adv = load float, ptr %i.adu, align 4, !tbaa !15 ; 2 uses
  %i.adw = fcmp ogt float %i.adv, %i.adq
  br i1 %i.adw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.ado
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !7
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %._crit_edge89.i
  %.4584.i = phi float [ %i.adv, %bb.ah ], [ %i.adq, %bb.ag ], [ %i.adq, %._crit_edge89.i ]
  %.1551.i = phi i32 [ %i.ady, %bb.ah ], [ %i.adr, %bb.ag ], [ %i.adr, %._crit_edge89.i ]
  %i.adz = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.ado
  %i.aea = load float, ptr %i.adz, align 4, !tbaa !15
  %i.aeb = fcmp ogt float %i.aea, %.4584.i
  br i1 %i.aeb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.aec = getelementptr inbounds [4 x i8], ptr %i.he, i64 %i.ado
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !7
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.af
  %.5590.i = phi i32 [ %.4589.i.lcssa, %bb.aj ], [ %.4589.i.lcssa, %bb.ai ], [ %.058595.i, %bb.af ] ; 3 uses
  %.5.i = phi float [ %.4.i.lcssa, %bb.aj ], [ %.4.i.lcssa, %bb.ai ], [ %.055698.i, %bb.af ] ; 7 uses
  %.2554.i = phi i32 [ %i.aed, %bb.aj ], [ %i.aco, %bb.ai ], [ %.055299.i, %bb.af ] ; 3 uses
  %.2.i = phi i32 [ %i.adr, %bb.aj ], [ %.1551.i, %bb.ai ], [ %.0550100.i, %bb.af ] ; 3 uses
  %i.aee = zext i32 %.2554.i to i64
  %i.aef = icmp eq i64 %indvars.iv.next224.i, %i.aee
  br i1 %i.aef, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.aeg = icmp eq i32 %.5590.i, 0
  br i1 %i.aeg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.aeh = add nsw i32 %.1.i, -1
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %.not636.not.i.not = icmp slt i32 %.5590.i, %i.l
  br i1 %.not636.not.i.not, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.aei = sext i32 %.2.i to i64                  ; 2 uses
  %i.aej = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.aei
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !7
  %i.ael = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.aei
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !7
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.ak
  %.1592.i = phi i32 [ %.1.i, %bb.am ], [ %.059194.i, %bb.ak ], [ %i.aek, %bb.ao ], [ %.059194.i, %bb.an ]
  %.6.i = phi i32 [ 1, %bb.am ], [ %.5590.i, %bb.ak ], [ %i.aem, %bb.ao ], [ %i.l, %bb.an ]
  %.3555.i = phi i32 [ %i.aeh, %bb.am ], [ %.2554.i, %bb.ak ], [ %.2554.i, %bb.ao ], [ %i.aco, %bb.an ]
  %.3.i = phi i32 [ 0, %bb.am ], [ %.2.i, %bb.ak ], [ %.2.i, %bb.ao ], [ %i.dh, %bb.an ]
  %i.aen = icmp sgt i64 %indvars.iv223.i, 1
  br i1 %i.aen, label %.lr.ph74.i, label %.preheader2.preheader.i, !llvm.loop !212

.preheader2.i:                                    ; preds = %._crit_edge109.i, %.preheader2.preheader.i
  %indvars.iv232.i = phi i64 [ 0, %.preheader2.preheader.i ], [ %indvars.iv.next233.i, %._crit_edge109.i ] ; 3 uses
  %i.aeo = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv232.i
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !19 ; 7 uses
  %i.aeq = getelementptr inbounds nuw [8 x i8], ptr %15, i64 %indvars.iv232.i
  %i.aer = load ptr, ptr %i.aeq, align 8, !tbaa !19 ; 7 uses
  %i.aes = ptrtoaddr ptr %i.aer to i64
  %i.aet = ptrtoaddr ptr %i.aep to i64
  %i.aeu = sub i64 %i.aet, %i.aes
  %diff.check528 = icmp ugt i64 %i.aeu, -16
  %or.cond546 = select i1 %min.iters.check530, i1 true, i1 %diff.check528
  br i1 %or.cond546, label %scalar.ph529.preheader, label %vector.body535

vector.body535:                                   ; preds = %.preheader2.i, %vector.body535
  %index536 = phi i64 [ %index.next538, %vector.body535 ], [ 0, %.preheader2.i ] ; 3 uses
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %index536
  %wide.load537 = load <4 x float>, ptr %i.aev, align 4, !tbaa !15
  %i.aew = fdiv <4 x float> %wide.load537, %broadcast.splat534
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %index536
  store <4 x float> %i.aew, ptr %i.aex, align 4, !tbaa !15
  %index.next538 = add nuw i64 %index536, 4       ; 2 uses
  %i.aey = icmp eq i64 %index.next538, %n.vec532
  br i1 %i.aey, label %middle.block539, label %vector.body535, !llvm.loop !213

middle.block539:                                  ; preds = %vector.body535
  br i1 %cmp.n540, label %._crit_edge109.i, label %scalar.ph529.preheader

scalar.ph529.preheader:                           ; preds = %.preheader2.i, %middle.block539
  %indvars.iv226.i.ph = phi i64 [ 0, %.preheader2.i ], [ %n.vec532, %middle.block539 ] ; 3 uses
  br i1 %lcmp.mod604.not, label %scalar.ph529.prol.loopexit, label %scalar.ph529.prol

scalar.ph529.prol:                                ; preds = %scalar.ph529.preheader, %scalar.ph529.prol
  %indvars.iv226.i.prol = phi i64 [ %indvars.iv.next227.i.prol, %scalar.ph529.prol ], [ %indvars.iv226.i.ph, %scalar.ph529.preheader ] ; 3 uses
  %prol.iter605 = phi i64 [ %prol.iter605.next, %scalar.ph529.prol ], [ 0, %scalar.ph529.preheader ]
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv226.i.prol
  %i.afa = load float, ptr %i.aez, align 4, !tbaa !15
  %i.afb = fdiv float %i.afa, %.5.i
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %indvars.iv226.i.prol
  store float %i.afb, ptr %i.afc, align 4, !tbaa !15
  %indvars.iv.next227.i.prol = add nuw nsw i64 %indvars.iv226.i.prol, 1 ; 2 uses
  %prol.iter605.next = add i64 %prol.iter605, 1   ; 2 uses
  %prol.iter605.cmp.not = icmp eq i64 %prol.iter605.next, %xtraiter603
  br i1 %prol.iter605.cmp.not, label %scalar.ph529.prol.loopexit, label %scalar.ph529.prol, !llvm.loop !214

scalar.ph529.prol.loopexit:                       ; preds = %scalar.ph529.prol, %scalar.ph529.preheader
  %indvars.iv226.i.unr = phi i64 [ %indvars.iv226.i.ph, %scalar.ph529.preheader ], [ %indvars.iv.next227.i.prol, %scalar.ph529.prol ]
  %i.afd = sub nsw i64 %indvars.iv226.i.ph, %i.pa
  %i.afe = icmp ugt i64 %i.afd, -4
  br i1 %i.afe, label %._crit_edge109.i, label %scalar.ph529

scalar.ph529:                                     ; preds = %scalar.ph529.prol.loopexit, %scalar.ph529
  %indvars.iv226.i = phi i64 [ %indvars.iv.next227.i.3, %scalar.ph529 ], [ %indvars.iv226.i.unr, %scalar.ph529.prol.loopexit ] ; 6 uses
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv226.i
  %i.afg = load float, ptr %i.aff, align 4, !tbaa !15
  %i.afh = fdiv float %i.afg, %.5.i
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %indvars.iv226.i
  store float %i.afh, ptr %i.afi, align 4, !tbaa !15
  %indvars.iv.next227.i = add nuw nsw i64 %indvars.iv226.i, 1 ; 2 uses
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv.next227.i
  %i.afk = load float, ptr %i.afj, align 4, !tbaa !15
  %i.afl = fdiv float %i.afk, %.5.i
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %indvars.iv.next227.i
  store float %i.afl, ptr %i.afm, align 4, !tbaa !15
  %indvars.iv.next227.i.1 = add nuw nsw i64 %indvars.iv226.i, 2 ; 2 uses
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv.next227.i.1
  %i.afo = load float, ptr %i.afn, align 4, !tbaa !15
  %i.afp = fdiv float %i.afo, %.5.i
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %indvars.iv.next227.i.1
  store float %i.afp, ptr %i.afq, align 4, !tbaa !15
  %indvars.iv.next227.i.2 = add nuw nsw i64 %indvars.iv226.i, 3 ; 2 uses
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv.next227.i.2
  %i.afs = load float, ptr %i.afr, align 4, !tbaa !15
  %i.aft = fdiv float %i.afs, %.5.i
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %indvars.iv.next227.i.2
  store float %i.aft, ptr %i.afu, align 4, !tbaa !15
  %indvars.iv.next227.i.3 = add nuw nsw i64 %indvars.iv226.i, 4 ; 2 uses
  %exitcond231.not.i.3 = icmp eq i64 %indvars.iv.next227.i.3, %i.pa
  br i1 %exitcond231.not.i.3, label %._crit_edge109.i, label %scalar.ph529, !llvm.loop !215

._crit_edge109.i:                                 ; preds = %scalar.ph529.prol.loopexit, %scalar.ph529, %middle.block539
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %exitcond237.not.i = icmp eq i64 %indvars.iv.next233.i, %wide.trip.count236.i
end_hunk_3
