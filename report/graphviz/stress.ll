Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/stress?download=true
inline.NumInlined: 37
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 33
begin_hunk_0_@stress_majorization_kD_mkernel:bb.a
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx884.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dw, i64 296
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !146
  %.idx885.i = mul nuw nsw i64 %i.ca, 152
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx885.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.dw, i64 304
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !146
  %.idx886.i = mul nuw nsw i64 %i.ca, 156
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx886.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dw, i64 312
  store ptr %i.gw, ptr %i.gx, align 8, !tbaa !146
  %i.gy = call i32 @rand() #15
  %i.gz = srem i32 %i.gy, %1                      ; 6 uses
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.ha
  store i32 0, ptr %i.hb, align 4, !tbaa !46
  store i32 %i.gz, ptr %i.dl, align 4, !tbaa !46
  br i1 %i.h, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %gv_calloc.exit564.i
  %i.hc = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.hd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hc, ptr noundef nonnull @.str.15, i64 noundef 320) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.ak:                                            ; preds = %gv_calloc.exit565.preheader.i
  call void @ngdijkstra(i32 noundef %i.gz, ptr noundef nonnull %0, i32 noundef range(i32 2, -2147483648) %1, ptr noundef nonnull %i.dr) #15
  br label %bb.am

bb.al:                                            ; preds = %gv_calloc.exit565.preheader.i
  call void @bfs(i32 noundef %i.gz, ptr noundef nonnull %0, i32 noundef range(i32 2, -2147483648) %1, ptr noundef nonnull %i.dr) #15
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dh, ptr noundef nonnull align 4 dereferenceable(1) %i.dr, i64 %i.db, i1 false), !tbaa !46
  %i.he = add nsw i64 %i.ca, -1                   ; 2 uses
  %xtraiter975 = and i64 %i.ca, 3                 ; 3 uses
  %i.hf = icmp ult i64 %i.he, 3
  br i1 %i.hf, label %.epil.preheader974, label %.new

.new:                                             ; preds = %bb.am
  %unroll_iter980 = and i64 %i.ca, 2147483644
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.new
  %indvars.iv724.i = phi i64 [ 0, %.new ], [ %indvars.iv.next725.i.3, %bb.an ] ; 6 uses
  %.0507658.i = phi i32 [ 0, %.new ], [ %spec.select550.i.3, %bb.an ] ; 2 uses
  %.0513657.i = phi i32 [ %i.gz, %.new ], [ %spec.select.i.3, %bb.an ]
  %niter981 = phi i64 [ 0, %.new ], [ %niter981.next.3, %bb.an ]
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv724.i
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !46 ; 2 uses
  %i.hi = icmp sgt i32 %i.hh, %.0507658.i
  %i.hj = trunc nuw nsw i64 %indvars.iv724.i to i32
  %spec.select.i = select i1 %i.hi, i32 %i.hj, i32 %.0513657.i
  %spec.select550.i = call i32 @llvm.smax.i32(i32 %i.hh, i32 %.0507658.i) ; 2 uses
  %indvars.iv.next725.i = or disjoint i64 %indvars.iv724.i, 1 ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.next725.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !46 ; 2 uses
  %i.hm = icmp sgt i32 %i.hl, %spec.select550.i
  %i.hn = trunc nuw nsw i64 %indvars.iv.next725.i to i32
  %spec.select.i.1 = select i1 %i.hm, i32 %i.hn, i32 %spec.select.i
  %spec.select550.i.1 = call i32 @llvm.smax.i32(i32 %i.hl, i32 %spec.select550.i) ; 2 uses
  %indvars.iv.next725.i.1 = or disjoint i64 %indvars.iv724.i, 2 ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.next725.i.1
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !46 ; 2 uses
  %i.hq = icmp sgt i32 %i.hp, %spec.select550.i.1
  %i.hr = trunc nuw nsw i64 %indvars.iv.next725.i.1 to i32
  %spec.select.i.2 = select i1 %i.hq, i32 %i.hr, i32 %spec.select.i.1
  %spec.select550.i.2 = call i32 @llvm.smax.i32(i32 %i.hp, i32 %spec.select550.i.1) ; 2 uses
  %indvars.iv.next725.i.2 = or disjoint i64 %indvars.iv724.i, 3 ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.next725.i.2
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !46 ; 2 uses
  %i.hu = icmp sgt i32 %i.ht, %spec.select550.i.2
  %i.hv = trunc nuw nsw i64 %indvars.iv.next725.i.2 to i32
  %spec.select.i.3 = select i1 %i.hu, i32 %i.hv, i32 %spec.select.i.2 ; 3 uses
  %spec.select550.i.3 = call i32 @llvm.smax.i32(i32 %i.ht, i32 %spec.select550.i.2) ; 2 uses
  %indvars.iv.next725.i.3 = add nuw nsw i64 %indvars.iv724.i, 4 ; 2 uses
  %niter981.next.3 = add i64 %niter981, 4         ; 2 uses
  %niter981.ncmp.3 = icmp eq i64 %niter981.next.3, %unroll_iter980
  br i1 %niter981.ncmp.3, label %.preheader646.i.preheader.unr-lcssa, label %bb.an, !llvm.loop !83

.preheader646.i.preheader.unr-lcssa:              ; preds = %bb.an
  %lcmp.mod977.not = icmp eq i64 %xtraiter975, 0
  br i1 %lcmp.mod977.not, label %.preheader646.i.preheader, label %.epil.preheader974

.epil.preheader974:                               ; preds = %.preheader646.i.preheader.unr-lcssa, %bb.am
  %indvars.iv724.i.epil.init = phi i64 [ 0, %bb.am ], [ %indvars.iv.next725.i.3, %.preheader646.i.preheader.unr-lcssa ]
  %.0507658.i.epil.init = phi i32 [ 0, %bb.am ], [ %spec.select550.i.3, %.preheader646.i.preheader.unr-lcssa ]
  %.0513657.i.epil.init = phi i32 [ %i.gz, %bb.am ], [ %spec.select.i.3, %.preheader646.i.preheader.unr-lcssa ]
  %lcmp.mod979 = icmp ne i64 %xtraiter975, 0
  call void @llvm.assume(i1 %lcmp.mod979)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.epil.preheader974
  %indvars.iv724.i.epil = phi i64 [ %indvars.iv724.i.epil.init, %.epil.preheader974 ], [ %indvars.iv.next725.i.epil, %bb.ao ] ; 3 uses
  %.0507658.i.epil = phi i32 [ %.0507658.i.epil.init, %.epil.preheader974 ], [ %spec.select550.i.epil, %bb.ao ] ; 2 uses
  %.0513657.i.epil = phi i32 [ %.0513657.i.epil.init, %.epil.preheader974 ], [ %spec.select.i.epil, %bb.ao ]
  %epil.iter976 = phi i64 [ 0, %.epil.preheader974 ], [ %epil.iter976.next, %bb.ao ]
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv724.i.epil
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !46 ; 2 uses
  %i.hy = icmp sgt i32 %i.hx, %.0507658.i.epil
  %i.hz = trunc nuw nsw i64 %indvars.iv724.i.epil to i32
  %spec.select.i.epil = select i1 %i.hy, i32 %i.hz, i32 %.0513657.i.epil ; 2 uses
  %spec.select550.i.epil = call i32 @llvm.smax.i32(i32 %i.hx, i32 %.0507658.i.epil)
  %indvars.iv.next725.i.epil = add nuw nsw i64 %indvars.iv724.i.epil, 1
  %epil.iter976.next = add i64 %epil.iter976, 1   ; 2 uses
  %epil.iter976.cmp.not = icmp eq i64 %epil.iter976.next, %xtraiter975
  br i1 %epil.iter976.cmp.not, label %.preheader646.i.preheader, label %bb.ao, !llvm.loop !84

.preheader646.i.preheader:                        ; preds = %bb.ao, %.preheader646.i.preheader.unr-lcssa
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.3, %.preheader646.i.preheader.unr-lcssa ], [ %spec.select.i.epil, %bb.ao ]
  br label %.preheader646.i

.preheader646.i:                                  ; preds = %.preheader646.i.preheader, %bb.ar
  %indvars.iv734.i = phi i64 [ %indvars.iv.next735.i, %bb.ar ], [ 1, %.preheader646.i.preheader ] ; 4 uses
  %.2515663.i = phi i32 [ %.4517.i, %bb.ar ], [ %spec.select.i.lcssa, %.preheader646.i.preheader ] ; 5 uses
  %i.ia = sext i32 %.2515663.i to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.ia
  %i.ic = trunc nuw nsw i64 %indvars.iv734.i to i32
  store i32 %i.ic, ptr %i.ib, align 4, !tbaa !46
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv734.i
  store i32 %.2515663.i, ptr %i.id, align 4, !tbaa !46
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv734.i
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !146 ; 3 uses
  br i1 %i.h, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.preheader646.i
  call void @ngdijkstra(i32 noundef %.2515663.i, ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, ptr noundef %i.if) #15
  br label %.preheader972

.preheader972:                                    ; preds = %bb.aq, %bb.ap
  br label %bb.as

bb.aq:                                            ; preds = %.preheader646.i
  call void @bfs(i32 noundef %.2515663.i, ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, ptr noundef %i.if) #15
  br label %.preheader972

bb.ar:                                            ; preds = %bb.av
  %indvars.iv.next735.i = add nuw nsw i64 %indvars.iv734.i, 1 ; 2 uses
  %exitcond737.not.i = icmp eq i64 %indvars.iv.next735.i, 40
  br i1 %exitcond737.not.i, label %.preheader645.preheader.i, label %.preheader646.i, !llvm.loop !85

.preheader645.preheader.i:                        ; preds = %bb.ar
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dh, i8 -1, i64 %i.db, i1 false), !tbaa !46
  %i.ig = call noalias ptr @calloc(i64 noundef %i.ca, i64 noundef 32) #16 ; 9 uses
  %i.ih = icmp eq ptr %i.ig, null
  br i1 %i.ih, label %bb.aw, label %gv_calloc.exit571.preheader.i

bb.as:                                            ; preds = %.preheader972, %bb.av
  %indvars.iv729.i = phi i64 [ %indvars.iv.next730.i, %bb.av ], [ 0, %.preheader972 ] ; 5 uses
  %.2509660.i = phi i32 [ %.3510.i, %bb.av ], [ 0, %.preheader972 ] ; 4 uses
  %.3516659.i = phi i32 [ %.4517.i, %bb.av ], [ %.2515663.i, %.preheader972 ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv729.i ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !46
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv729.i
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !46
  %.551.i = call i32 @llvm.smin.i32(i32 %i.ij, i32 %i.il) ; 5 uses
  store i32 %.551.i, ptr %i.ii, align 4, !tbaa !46
  %i.im = icmp sgt i32 %.551.i, %.2509660.i
  br i1 %i.im, label %._crit_edge759, label %bb.at

._crit_edge759:                                   ; preds = %bb.as
  %.pre760 = trunc nuw nsw i64 %indvars.iv729.i to i32
  br label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.in = icmp eq i32 %.551.i, %.2509660.i
  br i1 %i.in, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.io = call i32 @rand() #15
  %i.ip = trunc i64 %indvars.iv729.i to i32       ; 2 uses
  %i.iq = add i32 %i.ip, 1
  %i.ir = srem i32 %i.io, %i.iq
  %i.is = icmp eq i32 %i.ir, 0                    ; 2 uses
  %spec.select = select i1 %i.is, i32 %i.ip, i32 %.3516659.i
  %spec.select830 = select i1 %i.is, i32 %.551.i, i32 %.2509660.i
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge759, %bb.at
  %.4517.i = phi i32 [ %.3516659.i, %bb.at ], [ %spec.select, %bb.au ], [ %.pre760, %._crit_edge759 ] ; 2 uses
  %.3510.i = phi i32 [ %.2509660.i, %bb.at ], [ %spec.select830, %bb.au ], [ %.551.i, %._crit_edge759 ]
  %indvars.iv.next730.i = add nuw nsw i64 %indvars.iv729.i, 1 ; 2 uses
  %exitcond733.not.i = icmp eq i64 %indvars.iv.next730.i, %i.ca
  br i1 %exitcond733.not.i, label %bb.ar, label %bb.as, !llvm.loop !86

gv_calloc.exit571.preheader.i:                    ; preds = %.preheader645.preheader.i
  %i.it = add nsw i32 %1, -1
  %i.iu = zext i32 %i.it to i64                   ; 8 uses
  %i.iv = add nsw i64 %i.ca, -1                   ; 5 uses
  %i.iw = add nsw i64 %i.iu, -1
  br label %bb.ax

bb.aw:                                            ; preds = %.preheader645.preheader.i
  %i.ix = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.iy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ix, ptr noundef nonnull @.str.15, i64 noundef %.idx855.i) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.ax:                                            ; preds = %gv_calloc.exit571.i, %gv_calloc.exit571.preheader.i
  %indvar = phi i64 [ %indvar.next, %gv_calloc.exit571.i ], [ 0, %gv_calloc.exit571.preheader.i ] ; 2 uses
  %indvars.iv755.i = phi i64 [ %indvars.iv.next756.pre-phi.i, %gv_calloc.exit571.i ], [ 0, %gv_calloc.exit571.preheader.i ] ; 18 uses
  %indvars.iv751.i = phi i64 [ %indvars.iv.next752.i, %gv_calloc.exit571.i ], [ 1, %gv_calloc.exit571.preheader.i ] ; 7 uses
  %.0488676.i = phi i64 [ %.1.i, %gv_calloc.exit571.i ], [ 0, %gv_calloc.exit571.preheader.i ]
  %.0498675.i = phi ptr [ %.2500.i, %gv_calloc.exit571.i ], [ null, %gv_calloc.exit571.preheader.i ] ; 5 uses
  %.0501674.i = phi ptr [ %.2503.i, %gv_calloc.exit571.i ], [ null, %gv_calloc.exit571.preheader.i ] ; 5 uses
  %.0504673.i = phi i32 [ %.2506.i, %gv_calloc.exit571.i ], [ 0, %gv_calloc.exit571.preheader.i ] ; 6 uses
  %8 = sub i64 %i.iu, %indvar                     ; 3 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv755.i
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !46 ; 3 uses
  %i.jb = icmp sgt i32 %i.ja, -1
  br i1 %i.jb, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.jc = call noalias ptr @calloc(i64 noundef %i.iu, i64 noundef 4) #16 ; 13 uses
  %i.jd = ptrtoaddr ptr %i.jc to i64              ; 4 uses
  %i.je = icmp eq ptr %i.jc, null
  br i1 %i.je, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jf = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.jg = shl nuw nsw i64 %i.iu, 2
  %i.jh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jf, ptr noundef nonnull @.str.15, i64 noundef %i.jg) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.ji = getelementptr inbounds nuw [32 x i8], ptr %i.ig, i64 %indvars.iv755.i ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store ptr %i.jc, ptr %i.jj, align 8, !tbaa !53
  %i.jk = call noalias ptr @calloc(i64 noundef %i.iu, i64 noundef 4) #16 ; 13 uses
  %i.jl = ptrtoaddr ptr %i.jk to i64              ; 4 uses
  %i.jm = icmp eq ptr %i.jk, null
  br i1 %i.jm, label %bb.bb, label %gv_calloc.exit579.i

bb.bb:                                            ; preds = %bb.ba
  %i.jn = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.jo = shl nuw nsw i64 %i.iu, 2
  %i.jp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jn, ptr noundef nonnull @.str.15, i64 noundef %i.jo) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit579.i:                              ; preds = %bb.ba
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  store ptr %i.jk, ptr %i.jq, align 8, !tbaa !54
  store i64 %i.iv, ptr %i.ji, align 8, !tbaa !55
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  store i8 1, ptr %i.jr, align 8, !tbaa !147
  %.not711.i = icmp eq i64 %indvars.iv755.i, 0
  br i1 %.not711.i, label %.preheader643.i, label %.lr.ph.i436

.lr.ph.i436:                                      ; preds = %gv_calloc.exit579.i
  %i.js = zext nneg i32 %i.ja to i64
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.js
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !146 ; 7 uses
  %min.iters.check856 = icmp ult i64 %indvars.iv755.i, 12
  br i1 %min.iters.check856, label %scalar.ph855.preheader, label %vector.memcheck849

vector.memcheck849:                               ; preds = %.lr.ph.i436
  %i.jv = ptrtoaddr ptr %i.ju to i64              ; 2 uses
  %i.jw = sub i64 %i.jd, %i.jl
  %diff.check850 = icmp ugt i64 %i.jw, -32
  %i.jx = sub i64 %i.jd, %i.jv
  %diff.check851 = icmp ugt i64 %i.jx, -32
  %conflict.rdx852 = or i1 %diff.check850, %diff.check851
  %i.jy = sub i64 %i.jv, %i.jl
  %diff.check853 = icmp ugt i64 %i.jy, -32
  %conflict.rdx854 = or i1 %conflict.rdx852, %diff.check853
  br i1 %conflict.rdx854, label %scalar.ph855.preheader, label %vector.ph857

vector.ph857:                                     ; preds = %vector.memcheck849
  %n.vec858 = and i64 %indvars.iv755.i, -8        ; 3 uses
  br label %vector.body859

vector.body859:                                   ; preds = %vector.body859, %vector.ph857
  %index860 = phi i64 [ 0, %vector.ph857 ], [ %index.next865, %vector.body859 ] ; 4 uses
  %vec.ind861 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph857 ], [ %vec.ind.next866, %vector.body859 ] ; 3 uses
  %step.add862 = add <4 x i32> %vec.ind861, splat (i32 4)
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %index860 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store <4 x i32> %vec.ind861, ptr %i.jz, align 4, !tbaa !46
  store <4 x i32> %step.add862, ptr %i.ka, align 4, !tbaa !46
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %index860 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %wide.load863 = load <4 x i32>, ptr %i.kb, align 4, !tbaa !46
  %wide.load864 = load <4 x i32>, ptr %i.kc, align 4, !tbaa !46
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %index860 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  store <4 x i32> %wide.load863, ptr %i.kd, align 4, !tbaa !46
  store <4 x i32> %wide.load864, ptr %i.ke, align 4, !tbaa !46
  %index.next865 = add nuw i64 %index860, 8       ; 2 uses
  %vec.ind.next866 = add <4 x i32> %vec.ind861, splat (i32 8)
  %i.kf = icmp eq i64 %index.next865, %n.vec858
  br i1 %i.kf, label %middle.block867, label %vector.body859, !llvm.loop !87

middle.block867:                                  ; preds = %vector.body859
  %cmp.n868 = icmp eq i64 %indvars.iv755.i, %n.vec858
  br i1 %cmp.n868, label %.preheader643.i, label %scalar.ph855.preheader

scalar.ph855.preheader:                           ; preds = %vector.memcheck849, %.lr.ph.i436, %middle.block867
  %indvars.iv745.i.ph = phi i64 [ 0, %vector.memcheck849 ], [ 0, %.lr.ph.i436 ], [ %n.vec858, %middle.block867 ] ; 3 uses
  %xtraiter982.a = and i64 %indvars.iv755.i, 3    ; 2 uses
  %lcmp.mod983.not.a = icmp eq i64 %xtraiter982.a, 0
  br i1 %lcmp.mod983.not.a, label %scalar.ph855.prol.loopexit, label %scalar.ph855.prol

scalar.ph855.prol:                                ; preds = %scalar.ph855.preheader, %scalar.ph855.prol
  %indvars.iv745.i.prol = phi i64 [ %indvars.iv.next746.i.prol, %scalar.ph855.prol ], [ %indvars.iv745.i.ph, %scalar.ph855.preheader ] ; 5 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph855.prol ], [ 0, %scalar.ph855.preheader ]
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv745.i.prol
  %i.kh = trunc nuw nsw i64 %indvars.iv745.i.prol to i32
  store i32 %i.kh, ptr %i.kg, align 4, !tbaa !46
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %indvars.iv745.i.prol
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !46
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv745.i.prol
  store i32 %i.kj, ptr %i.kk, align 4, !tbaa !46
  %indvars.iv.next746.i.prol = add nuw nsw i64 %indvars.iv745.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter982.a
  br i1 %prol.iter.cmp.not, label %scalar.ph855.prol.loopexit, label %scalar.ph855.prol, !llvm.loop !88

scalar.ph855.prol.loopexit:                       ; preds = %scalar.ph855.prol, %scalar.ph855.preheader
  %indvars.iv745.i.unr = phi i64 [ %indvars.iv745.i.ph, %scalar.ph855.preheader ], [ %indvars.iv.next746.i.prol, %scalar.ph855.prol ]
  %i.kl = sub i64 %indvars.iv745.i.ph, %indvars.iv755.i
  %i.km = icmp ugt i64 %i.kl, -4
  br i1 %i.km, label %.preheader643.i, label %scalar.ph855

.preheader643.i:                                  ; preds = %scalar.ph855.prol.loopexit, %scalar.ph855, %middle.block867, %gv_calloc.exit579.i
  %i.kn = add nuw nsw i64 %indvars.iv755.i, 1     ; 5 uses
  %i.ko = icmp samesign ult i64 %i.kn, %i.ca
  br i1 %i.ko, label %.lr.ph670.i, label %gv_calloc.exit571.i

.lr.ph670.i:                                      ; preds = %.preheader643.i
  %i.kp = zext nneg i32 %i.ja to i64
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.kp
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !146 ; 5 uses
  %min.iters.check = icmp ult i64 %8, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph670.i
  %i.ks = ptrtoaddr ptr %i.kr to i64              ; 2 uses
  %i.kt = sub i64 %i.jd, %i.jl
  %diff.check = icmp ugt i64 %i.kt, -32
  %i.ku = sub i64 %i.ks, %i.jd
  %i.kv = add i64 %i.ku, 3
  %diff.check844 = icmp ult i64 %i.kv, 31
  %conflict.rdx = or i1 %diff.check, %diff.check844
  %i.kw = sub i64 %i.jl, %i.ks
  %i.kx = add i64 %i.kw, -5
  %diff.check845 = icmp ult i64 %i.kx, 31
  %conflict.rdx846 = or i1 %conflict.rdx, %diff.check845
  br i1 %conflict.rdx846, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %8, -8                         ; 4 uses
  %i.ky = add i64 %indvars.iv755.i, %n.vec
  %i.kz = add i64 %indvars.iv751.i, %n.vec
  %i.la = trunc i64 %indvars.iv751.i to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.la, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv751.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.lc = add nuw i64 %indvars.iv755.i, %index    ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.lc ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  store <4 x i32> %vec.ind, ptr %i.ld, align 4, !tbaa !46
  store <4 x i32> %step.add, ptr %i.le, align 4, !tbaa !46
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %index ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %wide.load = load <4 x i32>, ptr %i.lf, align 4, !tbaa !46
  %wide.load847 = load <4 x i32>, ptr %i.lg, align 4, !tbaa !46
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.lc ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  store <4 x i32> %wide.load, ptr %i.lh, align 4, !tbaa !46
  store <4 x i32> %wide.load847, ptr %i.li, align 4, !tbaa !46
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.lj = icmp eq i64 %index.next, %n.vec
  br i1 %i.lj, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %gv_calloc.exit571.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph670.i, %middle.block
  %indvars.iv757.i.ph = phi i64 [ %indvars.iv755.i, %vector.memcheck ], [ %indvars.iv755.i, %.lr.ph670.i ], [ %i.ky, %middle.block ] ; 6 uses
  %indvars.iv753.i.ph = phi i64 [ %indvars.iv751.i, %vector.memcheck ], [ %indvars.iv751.i, %.lr.ph670.i ], [ %i.kz, %middle.block ] ; 4 uses
  %i.lk = sub i64 %i.iu, %indvars.iv757.i.ph
  %xtraiter984 = and i64 %i.lk, 1
  %lcmp.mod985.not = icmp eq i64 %xtraiter984, 0
  br i1 %lcmp.mod985.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv757.i.ph
  %i.lm = trunc nuw nsw i64 %indvars.iv753.i.ph to i32
  store i32 %i.lm, ptr %i.ll, align 4, !tbaa !46
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv753.i.ph
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !46
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv757.i.ph
  store i32 %i.lo, ptr %i.lp, align 4, !tbaa !46
  %indvars.iv.next754.i.prol = add nuw nsw i64 %indvars.iv753.i.ph, 1
  %indvars.iv.next758.i.prol = add nuw nsw i64 %indvars.iv757.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv757.i.unr = phi i64 [ %indvars.iv757.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next758.i.prol, %scalar.ph.prol ]
  %indvars.iv753.i.unr = phi i64 [ %indvars.iv753.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next754.i.prol, %scalar.ph.prol ]
  %i.lq = icmp eq i64 %indvars.iv757.i.ph, %i.iw
  br i1 %i.lq, label %gv_calloc.exit571.i, label %scalar.ph

scalar.ph855:                                     ; preds = %scalar.ph855.prol.loopexit, %scalar.ph855
  %indvars.iv745.i = phi i64 [ %indvars.iv.next746.i.3, %scalar.ph855 ], [ %indvars.iv745.i.unr, %scalar.ph855.prol.loopexit ] ; 8 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv745.i
  %i.ls = trunc nuw nsw i64 %indvars.iv745.i to i32
  store i32 %i.ls, ptr %i.lr, align 4, !tbaa !46
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %indvars.iv745.i
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !46
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv745.i
  store i32 %i.lu, ptr %i.lv, align 4, !tbaa !46
  %indvars.iv.next746.i = add nuw nsw i64 %indvars.iv745.i, 1 ; 4 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv.next746.i
  %i.lx = trunc nuw nsw i64 %indvars.iv.next746.i to i32
  store i32 %i.lx, ptr %i.lw, align 4, !tbaa !46
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %indvars.iv.next746.i
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !46
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv.next746.i
  store i32 %i.lz, ptr %i.ma, align 4, !tbaa !46
  %indvars.iv.next746.i.1 = add nuw nsw i64 %indvars.iv745.i, 2 ; 4 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv.next746.i.1
  %i.mc = trunc nuw nsw i64 %indvars.iv.next746.i.1 to i32
  store i32 %i.mc, ptr %i.mb, align 4, !tbaa !46
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %indvars.iv.next746.i.1
  %i.me = load i32, ptr %i.md, align 4, !tbaa !46
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv.next746.i.1
  store i32 %i.me, ptr %i.mf, align 4, !tbaa !46
  %indvars.iv.next746.i.2 = add nuw nsw i64 %indvars.iv745.i, 3 ; 4 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv.next746.i.2
  %i.mh = trunc nuw nsw i64 %indvars.iv.next746.i.2 to i32
  store i32 %i.mh, ptr %i.mg, align 4, !tbaa !46
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %indvars.iv.next746.i.2
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !46
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv.next746.i.2
  store i32 %i.mj, ptr %i.mk, align 4, !tbaa !46
  %indvars.iv.next746.i.3 = add nuw nsw i64 %indvars.iv745.i, 4 ; 2 uses
  %exitcond749.not.i.3 = icmp eq i64 %indvars.iv.next746.i.3, %indvars.iv755.i
  br i1 %exitcond749.not.i.3, label %.preheader643.i, label %scalar.ph855, !llvm.loop !90

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv757.i = phi i64 [ %indvars.iv.next758.i.1, %scalar.ph ], [ %indvars.iv757.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %indvars.iv753.i = phi i64 [ %indvars.iv.next754.i.1, %scalar.ph ], [ %indvars.iv753.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv757.i
  %i.mm = trunc nuw nsw i64 %indvars.iv753.i to i32
  store i32 %i.mm, ptr %i.ml, align 4, !tbaa !46
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv753.i
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !46
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv757.i
  store i32 %i.mo, ptr %i.mp, align 4, !tbaa !46
  %indvars.iv.next754.i = add nuw nsw i64 %indvars.iv753.i, 1 ; 2 uses
  %indvars.iv.next758.i = add nuw nsw i64 %indvars.iv757.i, 1 ; 2 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv.next758.i
  %i.mr = trunc nuw nsw i64 %indvars.iv.next754.i to i32
  store i32 %i.mr, ptr %i.mq, align 4, !tbaa !46
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv.next754.i
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !46
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv.next758.i
  store i32 %i.mt, ptr %i.mu, align 4, !tbaa !46
  %indvars.iv.next754.i.1 = add nuw nsw i64 %indvars.iv753.i, 2
  %indvars.iv.next758.i.1 = add nuw nsw i64 %indvars.iv757.i, 2 ; 2 uses
  %exitcond763.not.i.1 = icmp eq i64 %indvars.iv.next758.i.1, %i.iu
  br i1 %exitcond763.not.i.1, label %gv_calloc.exit571.i, label %scalar.ph, !llvm.loop !91

bb.bc:                                            ; preds = %bb.ax
  %i.mv = icmp slt i32 %.0504673.i, 40
  br i1 %i.mv, label %bb.bd, label %gv_calloc.exit589.i

bb.bd:                                            ; preds = %bb.bc
  %i.mw = call noalias ptr @calloc(i64 noundef %i.ca, i64 noundef 4) #16 ; 2 uses
  %i.mx = icmp eq ptr %i.mw, null
  br i1 %i.mx, label %bb.be, label %gv_calloc.exit584.i

bb.be:                                            ; preds = %bb.bd
  %i.my = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.mz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.my, ptr noundef nonnull @.str.15, i64 noundef %i.db) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit584.i:                              ; preds = %bb.bd
  %i.na = call noalias ptr @calloc(i64 noundef %i.ca, i64 noundef 4) #16 ; 2 uses
  %i.nb = icmp eq ptr %i.na, null
  br i1 %i.nb, label %bb.bf, label %gv_calloc.exit589.i

bb.bf:                                            ; preds = %gv_calloc.exit584.i
  %i.nc = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.nd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nc, ptr noundef nonnull @.str.15, i64 noundef %i.db) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit589.i:                              ; preds = %gv_calloc.exit584.i, %bb.bc
  %.sink.i = phi i8 [ 1, %gv_calloc.exit584.i ], [ 0, %bb.bc ]
  %.1505.i = phi i32 [ %1, %gv_calloc.exit584.i ], [ %.0504673.i, %bb.bc ]
  %.1502.i = phi ptr [ %i.mw, %gv_calloc.exit584.i ], [ %.0501674.i, %bb.bc ] ; 4 uses
  %.1499.i = phi ptr [ %i.na, %gv_calloc.exit584.i ], [ %.0498675.i, %bb.bc ] ; 4 uses
  %i.ne = getelementptr inbounds nuw [32 x i8], ptr %i.ig, i64 %indvars.iv755.i ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 24
  store i8 %.sink.i, ptr %i.nf, align 8, !tbaa !147
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  store ptr %.1502.i, ptr %i.ng, align 8, !tbaa !53
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  store ptr %.1499.i, ptr %i.nh, align 8, !tbaa !54
  store i64 40, ptr %i.ne, align 8, !tbaa !55
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bh
  %i.ni = getelementptr inbounds nuw i8, ptr %.1502.i, i64 160
  %i.nj = getelementptr inbounds nuw i8, ptr %.1499.i, i64 160
  %i.nk = add nsw i32 %.1505.i, -40
  %.pre816.i = add nuw nsw i64 %indvars.iv755.i, 1
  br label %gv_calloc.exit571.i

bb.bh:                                            ; preds = %bb.bh, %gv_calloc.exit589.i
  %indvars.iv741.i = phi i64 [ 0, %gv_calloc.exit589.i ], [ %indvars.iv.next742.i.1, %bb.bh ] ; 6 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv741.i
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !46
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %.1502.i, i64 %indvars.iv741.i
  store i32 %i.nm, ptr %i.nn, align 4, !tbaa !46
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv741.i
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !146
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.np, i64 %indvars.iv755.i
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !46
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %.1499.i, i64 %indvars.iv741.i
  store i32 %i.nr, ptr %i.ns, align 4, !tbaa !46
  %indvars.iv.next742.i = or disjoint i64 %indvars.iv741.i, 1 ; 4 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.next742.i
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !46
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %.1502.i, i64 %indvars.iv.next742.i
  store i32 %i.nu, ptr %i.nv, align 4, !tbaa !46
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.next742.i
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !146
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %indvars.iv755.i
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !46
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %.1499.i, i64 %indvars.iv.next742.i
  store i32 %i.nz, ptr %i.oa, align 4, !tbaa !46
  %indvars.iv.next742.i.1 = add nuw nsw i64 %indvars.iv741.i, 2 ; 2 uses
  %exitcond744.not.i.1 = icmp eq i64 %indvars.iv.next742.i.1, 40
  br i1 %exitcond744.not.i.1, label %bb.bg, label %bb.bh, !llvm.loop !92

gv_calloc.exit571.i:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.bg, %.preheader643.i
  %indvars.iv.next756.pre-phi.i = phi i64 [ %.pre816.i, %bb.bg ], [ %i.kn, %.preheader643.i ], [ %i.kn, %middle.block ], [ %i.kn, %scalar.ph ], [ %i.kn, %scalar.ph.prol.loopexit ]
  %.2506.i = phi i32 [ %i.nk, %bb.bg ], [ %.0504673.i, %.preheader643.i ], [ %.0504673.i, %middle.block ], [ %.0504673.i, %scalar.ph ], [ %.0504673.i, %scalar.ph.prol.loopexit ]
  %.2503.i = phi ptr [ %i.ni, %bb.bg ], [ %.0501674.i, %.preheader643.i ], [ %.0501674.i, %middle.block ], [ %.0501674.i, %scalar.ph ], [ %.0501674.i, %scalar.ph.prol.loopexit ]
  %.2500.i = phi ptr [ %i.nj, %bb.bg ], [ %.0498675.i, %.preheader643.i ], [ %.0498675.i, %middle.block ], [ %.0498675.i, %scalar.ph ], [ %.0498675.i, %scalar.ph.prol.loopexit ]
  %.pn.i = phi i64 [ 40, %bb.bg ], [ %i.iv, %.preheader643.i ], [ %i.iv, %middle.block ], [ %i.iv, %scalar.ph ], [ %i.iv, %scalar.ph.prol.loopexit ]
  %.1.i = add i64 %.pn.i, %.0488676.i             ; 2 uses
  %indvars.iv.next752.i = add nuw i64 %indvars.iv751.i, 1
  %exitcond = icmp eq i64 %indvars.iv751.i, %i.ca
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond, label %bb.bi, label %bb.ax, !llvm.loop !93

bb.bi:                                            ; preds = %gv_calloc.exit571.i
  call void @free(ptr noundef %i.dh) #15
  %i.ob = load ptr, ptr %i.dw, align 8, !tbaa !146
  call void @free(ptr noundef %i.ob) #15
  call void @free(ptr noundef %i.dw) #15
  %i.oc = call noalias ptr @calloc(i64 noundef %i.ca, i64 noundef 40) #16 ; 7 uses
  %i.od = icmp eq ptr %i.oc, null
  br i1 %i.od, label %bb.bj, label %gv_calloc.exit594.i

bb.bj:                                            ; preds = %bb.bi
  %i.oe = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.of = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oe, ptr noundef nonnull @.str.15, i64 noundef %.idx857.i) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit594.i:                              ; preds = %bb.bi
  %i.og = add i64 %.1.i, %i.ca                    ; 7 uses
  %.not.i595.i = icmp eq i64 %i.og, 0
  br i1 %.not.i595.i, label %.thread.i603.i, label %bb.bk

bb.bk:                                            ; preds = %gv_calloc.exit594.i
  %mul.ov.i597.i = icmp ugt i64 %i.og, 4611686018427387903
  br i1 %mul.ov.i597.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.oh = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.oi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oh, ptr noundef nonnull @.str.14, i64 noundef %i.og, i64 noundef 4) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.oj = call noalias ptr @calloc(i64 noundef %i.og, i64 noundef 4) #16 ; 2 uses
  %i.ok = icmp eq ptr %i.oj, null
  br i1 %i.ok, label %bb.bn, label %gv_calloc.exit599.i

bb.bn:                                            ; preds = %bb.bm
  %i.ol = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.om = shl nuw i64 %i.og, 2
  %i.on = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ol, ptr noundef nonnull @.str.15, i64 noundef %i.om) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

.thread.i603.i:                                   ; preds = %gv_calloc.exit594.i
  %i.oo = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  %i.op = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit604.i

gv_calloc.exit599.i:                              ; preds = %bb.bm
  %i.oq = call noalias ptr @calloc(i64 noundef %i.og, i64 noundef 4) #16 ; 2 uses
  %i.or = icmp eq ptr %i.oq, null
  br i1 %i.or, label %bb.bo, label %gv_calloc.exit604.i

bb.bo:                                            ; preds = %gv_calloc.exit599.i
  %i.os = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.ot = shl nuw i64 %i.og, 2
  %i.ou = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.os, ptr noundef nonnull @.str.15, i64 noundef %i.ot) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit604.i:                              ; preds = %gv_calloc.exit599.i, %.thread.i603.i
  %i.ov = phi ptr [ %i.oo, %.thread.i603.i ], [ %i.oj, %gv_calloc.exit599.i ]
  %i.ow = phi ptr [ %i.op, %.thread.i603.i ], [ %i.oq, %gv_calloc.exit599.i ]
  %i.ox = icmp eq i32 %i.e, 2
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit640.i, %gv_calloc.exit604.i
  %indvars.iv770.i = phi i64 [ 0, %gv_calloc.exit604.i ], [ %indvars.iv.next771.i, %.loopexit640.i ] ; 4 uses
  %.0496686.i = phi ptr [ %i.ow, %gv_calloc.exit604.i ], [ %i.sm, %.loopexit640.i ] ; 9 uses
  %.0497685.i = phi ptr [ %i.ov, %gv_calloc.exit604.i ], [ %i.sl, %.loopexit640.i ] ; 9 uses
  %i.oy = getelementptr inbounds nuw [40 x i8], ptr %i.oc, i64 %indvars.iv770.i ; 3 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  store ptr %.0497685.i, ptr %i.oz, align 8, !tbaa !45
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  store ptr %.0496686.i, ptr %i.pa, align 8, !tbaa !43
  %i.pb = getelementptr inbounds nuw [32 x i8], ptr %i.ig, i64 %indvars.iv770.i ; 4 uses
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !55 ; 9 uses
  %i.pd = add i64 %i.pc, 1                        ; 4 uses
  store i64 %i.pd, ptr %i.oy, align 8, !tbaa !44
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !54 ; 3 uses
  %i.pg = getelementptr inbounds i8, ptr %i.pf, i64 -4 ; 4 uses
  %i.ph = icmp ugt i64 %i.pd, 1                   ; 2 uses
  br i1 %i.ox, label %.preheader639.i, label %.preheader641.i

.preheader641.i:                                  ; preds = %bb.bp
  br i1 %i.ph, label %.lr.ph679.i, label %.loopexit640.i

.lr.ph679.i:                                      ; preds = %.preheader641.i
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !53 ; 3 uses
  %xtraiter988 = and i64 %i.pc, 1
  %i.pk = icmp eq i64 %i.pc, 1
  br i1 %i.pk, label %.epil.preheader987, label %.lr.ph679.i.new

.lr.ph679.i.new:                                  ; preds = %.lr.ph679.i
  %unroll_iter993 = and i64 %i.pc, -2
  br label %bb.br

.preheader639.i:                                  ; preds = %bb.bp
  br i1 %i.ph, label %.lr.ph682.i, label %.loopexit640.i

.lr.ph682.i:                                      ; preds = %.preheader639.i
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !53 ; 3 uses
  %xtraiter996 = and i64 %i.pc, 1
  %i.pn = icmp eq i64 %i.pc, 1
  br i1 %i.pn, label %.epil.preheader995, label %.lr.ph682.i.new

.lr.ph682.i.new:                                  ; preds = %.lr.ph682.i
  %unroll_iter1001 = and i64 %i.pc, -2
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %.lr.ph682.i.new
  %.0483681.i = phi i64 [ 1, %.lr.ph682.i.new ], [ %i.qn, %bb.bq ] ; 7 uses
  %.0494680.i = phi double [ 0.000000e+00, %.lr.ph682.i.new ], [ %i.qm, %bb.bq ]
  %niter1002 = phi i64 [ 0, %.lr.ph682.i.new ], [ %niter1002.next.1, %bb.bq ]
  %i.po = getelementptr [4 x i8], ptr %i.pm, i64 %.0483681.i
  %i.pp = getelementptr i8, ptr %i.po, i64 -4
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !46
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %.0497685.i, i64 %.0483681.i
  store i32 %i.pq, ptr %i.pr, align 4, !tbaa !46
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %.0483681.i
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !46
  %i.pu = sitofp i32 %i.pt to float               ; 2 uses
  %i.pv = fmul nnan float %i.pu, %i.pu
  %i.pw = fdiv float -1.000000e+00, %i.pv         ; 2 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %.0496686.i, i64 %.0483681.i
  store float %i.pw, ptr %i.px, align 4, !tbaa !48
  %i.py = fpext float %i.pw to double
  %i.pz = fsub double %.0494680.i, %i.py
  %i.qa = add nuw i64 %.0483681.i, 1              ; 3 uses
  %i.qb = getelementptr [4 x i8], ptr %i.pm, i64 %i.qa
  %i.qc = getelementptr i8, ptr %i.qb, i64 -4
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !46
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %.0497685.i, i64 %i.qa
  store i32 %i.qd, ptr %i.qe, align 4, !tbaa !46
  %i.qf = getelementptr [4 x i8], ptr %i.pf, i64 %.0483681.i
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !46
  %i.qh = sitofp i32 %i.qg to float               ; 2 uses
  %i.qi = fmul nnan float %i.qh, %i.qh
  %i.qj = fdiv float -1.000000e+00, %i.qi         ; 2 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %.0496686.i, i64 %i.qa
  store float %i.qj, ptr %i.qk, align 4, !tbaa !48
  %i.ql = fpext float %i.qj to double
  %i.qm = fsub double %i.pz, %i.ql                ; 3 uses
  %i.qn = add nuw i64 %.0483681.i, 2              ; 2 uses
  %niter1002.next.1 = add nuw i64 %niter1002, 2   ; 2 uses
  %niter1002.ncmp.1 = icmp eq i64 %niter1002.next.1, %unroll_iter1001
  br i1 %niter1002.ncmp.1, label %.loopexit640.i.loopexit.unr-lcssa, label %bb.bq, !llvm.loop !94

bb.br:                                            ; preds = %bb.br, %.lr.ph679.i.new
  %.0482678.i = phi i64 [ 1, %.lr.ph679.i.new ], [ %i.rl, %bb.br ] ; 7 uses
  %.1495677.i = phi double [ 0.000000e+00, %.lr.ph679.i.new ], [ %i.rk, %bb.br ]
  %niter994 = phi i64 [ 0, %.lr.ph679.i.new ], [ %niter994.next.1, %bb.br ]
  %i.qo = getelementptr [4 x i8], ptr %i.pj, i64 %.0482678.i
  %i.qp = getelementptr i8, ptr %i.qo, i64 -4
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !46
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %.0497685.i, i64 %.0482678.i
  store i32 %i.qq, ptr %i.qr, align 4, !tbaa !46
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %.0482678.i
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !46
  %i.qu = sitofp i32 %i.qt to float
  %i.qv = fdiv float -1.000000e+00, %i.qu         ; 2 uses
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %.0496686.i, i64 %.0482678.i
  store float %i.qv, ptr %i.qw, align 4, !tbaa !48
  %i.qx = fpext float %i.qv to double
  %i.qy = fsub double %.1495677.i, %i.qx
  %i.qz = add nuw i64 %.0482678.i, 1              ; 3 uses
  %i.ra = getelementptr [4 x i8], ptr %i.pj, i64 %i.qz
  %i.rb = getelementptr i8, ptr %i.ra, i64 -4
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !46
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %.0497685.i, i64 %i.qz
  store i32 %i.rc, ptr %i.rd, align 4, !tbaa !46
  %i.re = getelementptr [4 x i8], ptr %i.pf, i64 %.0482678.i
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !46
  %i.rg = sitofp i32 %i.rf to float
  %i.rh = fdiv float -1.000000e+00, %i.rg         ; 2 uses
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %.0496686.i, i64 %i.qz
  store float %i.rh, ptr %i.ri, align 4, !tbaa !48
  %i.rj = fpext float %i.rh to double
  %i.rk = fsub double %i.qy, %i.rj                ; 3 uses
  %i.rl = add nuw i64 %.0482678.i, 2              ; 2 uses
  %niter994.next.1 = add nuw i64 %niter994, 2     ; 2 uses
  %niter994.ncmp.1 = icmp eq i64 %niter994.next.1, %unroll_iter993
  br i1 %niter994.ncmp.1, label %.loopexit640.i.loopexit969.unr-lcssa, label %bb.br, !llvm.loop !95

.loopexit640.i.loopexit.unr-lcssa:                ; preds = %bb.bq
  %lcmp.mod998.not = icmp eq i64 %xtraiter996, 0
  br i1 %lcmp.mod998.not, label %.loopexit640.i, label %.epil.preheader995

.epil.preheader995:                               ; preds = %.loopexit640.i.loopexit.unr-lcssa, %.lr.ph682.i
  %.0483681.i.epil.init = phi i64 [ 1, %.lr.ph682.i ], [ %i.qn, %.loopexit640.i.loopexit.unr-lcssa ] ; 4 uses
  %.0494680.i.epil.init = phi double [ 0.000000e+00, %.lr.ph682.i ], [ %i.qm, %.loopexit640.i.loopexit.unr-lcssa ]
  %lcmp.mod1000 = trunc i64 %i.pc to i1
  call void @llvm.assume(i1 %lcmp.mod1000)
  %i.rm = getelementptr [4 x i8], ptr %i.pm, i64 %.0483681.i.epil.init
  %i.rn = getelementptr i8, ptr %i.rm, i64 -4
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !46
end_hunk_0
begin_hunk_1_@stress_majorization_kD_mkernel:bb.a
  %.0529707.i = phi i32 [ 0, %gv_calloc.exit624.i ], [ %i.yq, %bb.ci ] ; 3 uses
  br i1 %.not.i605.not.i, label %._crit_edge706.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader632.i, %bb.cg
  %indvars.iv806.i = phi i64 [ %indvars.iv.next807.i, %bb.cg ], [ 0, %.preheader632.i ] ; 3 uses
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv806.i ; 3 uses
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge702.i, %.preheader.i
  %indvars.iv801.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next802.i, %._crit_edge702.i ] ; 6 uses
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %i.wb, i64 %indvars.iv801.i ; 5 uses
  store double 0.000000e+00, ptr %i.wm, align 8, !tbaa !35
  %i.wn = getelementptr inbounds nuw [32 x i8], ptr %i.ig, i64 %indvars.iv801.i
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 16
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !54
  %i.wq = getelementptr inbounds i8, ptr %i.wp, i64 -4
  %i.wr = getelementptr inbounds nuw [40 x i8], ptr %i.oc, i64 %indvars.iv801.i ; 4 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !45
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !43
  %i.ww = load i64, ptr %i.wr, align 8, !tbaa !44
  %i.wx = icmp ugt i64 %i.ww, 1
  br i1 %i.wx, label %.lr.ph701.preheader.i, label %._crit_edge702.i

.lr.ph701.preheader.i:                            ; preds = %bb.cc
  %i.wy = trunc nuw nsw i64 %indvars.iv801.i to i32
  br label %.lr.ph701.i

._crit_edge702.loopexit.i:                        ; preds = %bb.ce
  %.pre.i = load double, ptr %i.wm, align 8, !tbaa !35
  br label %._crit_edge702.i

._crit_edge702.i:                                 ; preds = %._crit_edge702.loopexit.i, %bb.cc
  %i.wz = phi double [ 0.000000e+00, %bb.cc ], [ %.pre.i, %._crit_edge702.loopexit.i ]
  %.3.lcssa.i = phi double [ 0.000000e+00, %bb.cc ], [ %.4.i, %._crit_edge702.loopexit.i ]
  %i.xa = load ptr, ptr %i.wl, align 8, !tbaa !12
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.xa, i64 %indvars.iv801.i
  %i.xc = load double, ptr %i.xb, align 8, !tbaa !35
  %i.xd = call double @llvm.fmuladd.f64(double %.3.lcssa.i, double %i.xc, double %i.wz)
  store double %i.xd, ptr %i.wm, align 8, !tbaa !35
  %indvars.iv.next802.i = add nuw nsw i64 %indvars.iv801.i, 1 ; 2 uses
  %exitcond805.not.i = icmp eq i64 %indvars.iv.next802.i, %i.ca
  br i1 %exitcond805.not.i, label %bb.cf, label %bb.cc, !llvm.loop !104

.lr.ph701.i:                                      ; preds = %bb.ce, %.lr.ph701.preheader.i
  %.0699.i = phi i64 [ %i.xy, %bb.ce ], [ 1, %.lr.ph701.preheader.i ] ; 4 uses
  %.3698.i = phi double [ %.4.i, %bb.ce ], [ 0.000000e+00, %.lr.ph701.preheader.i ] ; 2 uses
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.wt, i64 %.0699.i
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !46 ; 2 uses
  %i.xg = call double @distance_kD(ptr noundef %2, i32 noundef %4, i32 noundef %i.wy, i32 noundef %i.xf) #15 ; 2 uses
  %i.xh = fcmp ogt double %i.xg, 1.000000e-30
  br i1 %i.xh, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.lr.ph701.i
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %.0699.i
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !48
  %i.xk = fneg float %i.xj
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.wq, i64 %.0699.i
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !46
  %i.xn = sitofp i32 %i.xm to float
  %i.xo = fmul float %i.xk, %i.xn
  %i.xp = fpext float %i.xo to double
  %i.xq = fdiv double %i.xp, %i.xg                ; 2 uses
  %i.xr = fsub double %.3698.i, %i.xq
  %i.xs = load ptr, ptr %i.wl, align 8, !tbaa !12
  %i.xt = sext i32 %i.xf to i64
  %i.xu = getelementptr inbounds [8 x i8], ptr %i.xs, i64 %i.xt
  %i.xv = load double, ptr %i.xu, align 8, !tbaa !35
  %i.xw = load double, ptr %i.wm, align 8, !tbaa !35
  %i.xx = call double @llvm.fmuladd.f64(double %i.xq, double %i.xv, double %i.xw)
  store double %i.xx, ptr %i.wm, align 8, !tbaa !35
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.lr.ph701.i
  %.4.i = phi double [ %i.xr, %bb.cd ], [ %.3698.i, %.lr.ph701.i ] ; 2 uses
  %i.xy = add nuw i64 %.0699.i, 1                 ; 2 uses
  %i.xz = load i64, ptr %i.wr, align 8, !tbaa !44
  %i.ya = icmp ult i64 %i.xy, %i.xz
  br i1 %i.ya, label %.lr.ph701.i, label %._crit_edge702.loopexit.i, !llvm.loop !105

bb.cf:                                            ; preds = %._crit_edge702.i
  call void @right_mult_with_vector_d(ptr noundef nonnull %i.bo, i32 noundef %i.bm, i32 noundef range(i32 2, -2147483648) %1, ptr noundef nonnull %i.wb, ptr noundef nonnull %i.wf) #15
  %i.yb = load ptr, ptr %i.c, align 8, !tbaa !149
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %indvars.iv806.i ; 2 uses
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !12
  %i.ye = call i32 @conjugate_gradient_f(ptr noundef %i.yb, ptr noundef %i.yd, ptr noundef nonnull %i.wf, i32 noundef %i.bm, double noundef 1.000000e-03, i32 noundef %i.bm, i1 noundef zeroext false) #15
  %.not548.i = icmp eq i32 %i.ye, 0
  br i1 %.not548.i, label %bb.cg, label %.loopexit.i

bb.cg:                                            ; preds = %bb.cf
  %i.yf = load ptr, ptr %i.yc, align 8, !tbaa !12
  %i.yg = load ptr, ptr %i.wl, align 8, !tbaa !12
  call void @right_mult_with_vector_transpose(ptr noundef nonnull %i.bo, i32 noundef range(i32 2, -2147483648) %1, i32 noundef %i.bm, ptr noundef %i.yf, ptr noundef %i.yg) #15
  %indvars.iv.next807.i = add nuw nsw i64 %indvars.iv806.i, 1 ; 2 uses
  %exitcond810.not.i = icmp eq i64 %indvars.iv.next807.i, %wide.trip.count809.i
  br i1 %exitcond810.not.i, label %._crit_edge706.i, label %.preheader.i, !llvm.loop !106

._crit_edge706.i:                                 ; preds = %bb.cg, %.preheader632.i
  %i.yh = and i32 %.0529707.i, 1
  %i.yi = icmp eq i32 %i.yh, 0
  br i1 %i.yi, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %._crit_edge706.i
  %i.yj = call fastcc double @compute_stress1(ptr noundef %2, ptr noundef nonnull %i.ig, i32 noundef %4, i32 noundef range(i32 2, -2147483648) %1, i32 noundef range(i32 0, 4) %i.e) ; 3 uses
  %i.yk = fsub double %i.yj, %.0492708.i
  %i.yl = call double @llvm.fabs.f64(double %i.yk)
  %i.ym = fadd double %i.yj, 1.000000e-10
  %i.yn = fdiv double %i.yl, %i.ym
  %i.yo = load double, ptr @Epsilon, align 8, !tbaa !35
  %i.yp = fcmp olt double %i.yn, %i.yo
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %._crit_edge706.i
  %.1493.i = phi double [ %i.yj, %bb.ch ], [ %.0492708.i, %._crit_edge706.i ]
  %.1491.i = phi i1 [ %i.yp, %bb.ch ], [ false, %._crit_edge706.i ]
  %i.yq = add nuw nsw i32 %.0529707.i, 1
  %i.yr = icmp samesign ugt i32 %.0529707.i, 48
  %.not547.i = select i1 %i.yr, i1 true, i1 %.1491.i
  br i1 %.not547.i, label %.loopexit.i, label %.preheader632.i, !llvm.loop !107

.loopexit.i:                                      ; preds = %bb.ci, %bb.cf
  %.1530.i = phi i1 [ true, %bb.cf ], [ false, %bb.ci ]
  call void @free(ptr noundef %i.wf) #15
  call void @free(ptr noundef %i.wb) #15
  br i1 %i.h, label %bb.cj, label %.preheader967

bb.cj:                                            ; preds = %.loopexit.i
  call void @restore_old_weights(ptr noundef %0, i32 noundef range(i32 2, -2147483648) %1, ptr noundef %i.dd) #15
  br label %.preheader967

.preheader967:                                    ; preds = %bb.cj, %.loopexit.i
  br label %bb.ck

bb.ck:                                            ; preds = %.preheader967, %bb.cm
  %indvars.iv811.i = phi i64 [ %indvars.iv.next812.i, %bb.cm ], [ 0, %.preheader967 ] ; 2 uses
  %i.ys = getelementptr inbounds nuw [32 x i8], ptr %i.ig, i64 %indvars.iv811.i ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 24
  %i.yu = load i8, ptr %i.yt, align 8, !tbaa !147, !range !150, !noundef !151
  %i.yv = trunc nuw i8 %i.yu to i1
  br i1 %i.yv, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.yw = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !53
  call void @free(ptr noundef %i.yx) #15
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ys, i64 16
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !54
  call void @free(ptr noundef %i.yz) #15
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %indvars.iv.next812.i = add nuw nsw i64 %indvars.iv811.i, 1 ; 2 uses
  %exitcond815.not.i = icmp eq i64 %indvars.iv.next812.i, %i.ca
  br i1 %exitcond815.not.i, label %bb.cn, label %bb.ck, !llvm.loop !108

bb.cn:                                            ; preds = %bb.cm
  call void @free(ptr noundef nonnull %i.ig) #15
  %i.za = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !45
  call void @free(ptr noundef %i.zb) #15
  %i.zc = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !43
  call void @free(ptr noundef %i.zd) #15
  call void @free(ptr noundef %i.oc) #15
  call void @free(ptr noundef %i.cz) #15
  call void @free(ptr noundef %i.dl) #15
  %i.ze = load ptr, ptr %i.vw, align 8, !tbaa !12
  call void @free(ptr noundef %i.ze) #15
  call void @free(ptr noundef %i.vw) #15
  %i.zf = load ptr, ptr %i.c, align 8, !tbaa !149 ; 2 uses
  %.not549.i = icmp eq ptr %i.zf, null
  br i1 %.not549.i, label %sparse_stress_subspace_majorization_kD.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !56
  call void @free(ptr noundef %i.zg) #15
  %i.zh = load ptr, ptr %i.c, align 8, !tbaa !149
  call void @free(ptr noundef %i.zh) #15
  br label %sparse_stress_subspace_majorization_kD.exit

sparse_stress_subspace_majorization_kD.exit:      ; preds = %bb.cn, %bb.co
  %i.zi = load ptr, ptr %i.bo, align 8, !tbaa !12
  call void @free(ptr noundef %i.zi) #15
  call void @free(ptr noundef %i.bo) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br i1 %.1530.i, label %.thread, label %.preheader496

.preheader496:                                    ; preds = %sparse_stress_subspace_majorization_kD.exit
  %i.zj = icmp sgt i32 %4, 0
  br i1 %i.zj, label %.lr.ph.preheader, label %.loopexit497

.lr.ph.preheader:                                 ; preds = %.preheader496
  %xtraiter1022 = and i64 %i.ca, 1
  %i.zk = icmp eq i64 %i.he, 0
  %unroll_iter1027 = and i64 %i.ca, 2147483646
  %lcmp.mod1024.not = icmp eq i64 %xtraiter1022, 0
  %lcmp.mod1026 = trunc i32 %1 to i1
  %min.iters.check871 = icmp ult i32 %1, 2
  %n.vec873 = and i64 %i.ca, 2147483646           ; 3 uses
  %cmp.n881 = icmp eq i64 %n.vec873, %i.ca
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv623 = phi i64 [ %indvars.iv.next624, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv623
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !12 ; 3 uses
  br i1 %i.zk, label %.epil.preheader1021, label %.lr.ph.new

.lr.ph505.unr-lcssa:                              ; preds = %.lr.ph.new
  br i1 %lcmp.mod1024.not, label %.lr.ph505, label %.epil.preheader1021

.epil.preheader1021:                              ; preds = %.lr.ph505.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.lr.ph505.unr-lcssa ]
  %.0343503.epil.init = phi double [ 1.000000e+00, %.lr.ph ], [ %.1344.1, %.lr.ph505.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1026)
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %i.zm, i64 %indvars.iv.epil.init
  %i.zo = load double, ptr %i.zn, align 8, !tbaa !35
  %i.zp = call double @llvm.fabs.f64(double %i.zo) ; 2 uses
  %i.zq = fcmp ogt double %i.zp, %.0343503.epil.init
  %.1344.epil = select i1 %i.zq, double %i.zp, double %.0343503.epil.init
  br label %.lr.ph505

.lr.ph505:                                        ; preds = %.lr.ph505.unr-lcssa, %.epil.preheader1021
  %.1344.lcssa = phi double [ %.1344.1, %.lr.ph505.unr-lcssa ], [ %.1344.epil, %.epil.preheader1021 ] ; 2 uses
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv623
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !12 ; 2 uses
  br i1 %min.iters.check871, label %scalar.ph870.preheader, label %vector.ph872

vector.ph872:                                     ; preds = %.lr.ph505
  %broadcast.splatinsert874 = insertelement <2 x double> poison, double %.1344.lcssa, i64 0
  %broadcast.splat875 = shufflevector <2 x double> %broadcast.splatinsert874, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body876

vector.body876:                                   ; preds = %vector.body876, %vector.ph872
  %index877 = phi i64 [ 0, %vector.ph872 ], [ %index.next879, %vector.body876 ] ; 2 uses
  %i.zt = getelementptr inbounds nuw [8 x i8], ptr %i.zs, i64 %index877 ; 2 uses
  %wide.load878 = load <2 x double>, ptr %i.zt, align 8, !tbaa !35
  %i.zu = fdiv <2 x double> %wide.load878, %broadcast.splat875
  store <2 x double> %i.zu, ptr %i.zt, align 8, !tbaa !35
  %index.next879 = add nuw i64 %index877, 2       ; 2 uses
  %i.zv = icmp eq i64 %index.next879, %n.vec873
  br i1 %i.zv, label %middle.block880, label %vector.body876, !llvm.loop !109

middle.block880:                                  ; preds = %vector.body876
  br i1 %cmp.n881, label %.lr.ph507, label %scalar.ph870.preheader

scalar.ph870.preheader:                           ; preds = %.lr.ph505, %middle.block880
  %indvars.iv613.ph = phi i64 [ 0, %.lr.ph505 ], [ %n.vec873, %middle.block880 ]
  br label %scalar.ph870

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 0, %.lr.ph ] ; 3 uses
  %.0343503 = phi double [ %.1344.1, %.lr.ph.new ], [ 1.000000e+00, %.lr.ph ] ; 2 uses
  %niter1028 = phi i64 [ %niter1028.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %i.zm, i64 %indvars.iv
  %i.zx = load double, ptr %i.zw, align 8, !tbaa !35
  %i.zy = call double @llvm.fabs.f64(double %i.zx) ; 2 uses
  %i.zz = fcmp ogt double %i.zy, %.0343503
  %.1344 = select i1 %i.zz, double %i.zy, double %.0343503 ; 2 uses
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %i.zm, i64 %indvars.iv
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  %i.aac = load double, ptr %i.aab, align 8, !tbaa !35
  %i.aad = call double @llvm.fabs.f64(double %i.aac) ; 2 uses
  %i.aae = fcmp ogt double %i.aad, %.1344
  %.1344.1 = select i1 %i.aae, double %i.aad, double %.1344 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter1028.next.1 = add i64 %niter1028, 2       ; 2 uses
  %niter1028.ncmp.1 = icmp eq i64 %niter1028.next.1, %unroll_iter1027
  br i1 %niter1028.ncmp.1, label %.lr.ph505.unr-lcssa, label %.lr.ph.new, !llvm.loop !110

.lr.ph507:                                        ; preds = %scalar.ph870, %middle.block880
  %i.aaf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv623
  br label %bb.cp

scalar.ph870:                                     ; preds = %scalar.ph870.preheader, %scalar.ph870
  %indvars.iv613 = phi i64 [ %indvars.iv.next614, %scalar.ph870 ], [ %indvars.iv613.ph, %scalar.ph870.preheader ] ; 2 uses
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.zs, i64 %indvars.iv613 ; 2 uses
  %i.aah = load double, ptr %i.aag, align 8, !tbaa !35
  %i.aai = fdiv double %i.aah, %.1344.lcssa
  store double %i.aai, ptr %i.aag, align 8, !tbaa !35
  %indvars.iv.next614 = add nuw nsw i64 %indvars.iv613, 1 ; 2 uses
  %exitcond617.not = icmp eq i64 %indvars.iv.next614, %i.ca
  br i1 %exitcond617.not, label %.lr.ph507, label %scalar.ph870, !llvm.loop !111

bb.cp:                                            ; preds = %.lr.ph507, %bb.cp
  %indvars.iv618 = phi i64 [ 0, %.lr.ph507 ], [ %indvars.iv.next619, %bb.cp ] ; 2 uses
  %i.aaj = call double @drand48() #15
  %i.aak = fadd double %i.aaj, -5.000000e-01
  %i.aal = load ptr, ptr %i.aaf, align 8, !tbaa !12 ; 2 uses
  %i.aam = getelementptr inbounds nuw [8 x i8], ptr %i.aal, i64 %indvars.iv618 ; 2 uses
  %i.aan = load double, ptr %i.aam, align 8, !tbaa !35
  %i.aao = call double @llvm.fmuladd.f64(double %i.aak, double f0x3EB0C6F7A0B5ED8D, double %i.aan)
  store double %i.aao, ptr %i.aam, align 8, !tbaa !35
  %indvars.iv.next619 = add nuw nsw i64 %indvars.iv618, 1 ; 2 uses
  %exitcond622.not = icmp eq i64 %indvars.iv.next619, %i.ca
  br i1 %exitcond622.not, label %._crit_edge, label %bb.cp, !llvm.loop !112

._crit_edge:                                      ; preds = %bb.cp
  call void @orthog1(i32 noundef %1, ptr noundef nonnull %i.aal) #15
  %indvars.iv.next624 = add nuw nsw i64 %indvars.iv623, 1 ; 2 uses
  %exitcond627.not = icmp eq i64 %indvars.iv.next624, %wide.trip.count809.i
  br i1 %exitcond627.not, label %.loopexit497, label %.lr.ph, !llvm.loop !113

bb.cq:                                            ; preds = %bb.x
  %i.aap = tail call i32 @initLayout(i32 noundef %1, i32 noundef %4, ptr noundef %2, ptr noundef %3)
  %i.aaq = icmp eq i32 %i.aap, 0
  br label %.loopexit497

.loopexit497:                                     ; preds = %._crit_edge, %.preheader496, %bb.cq
  %.0346 = phi i1 [ %i.aaq, %bb.cq ], [ true, %.preheader496 ], [ true, %._crit_edge ]
  %i.aar = load i8, ptr @Verbose, align 1, !tbaa !49
  %.not415 = icmp eq i8 %i.aar, 0
  br i1 %.not415, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %.loopexit497
  %i.aas = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.aat = call double @elapsed_sec() #15
  %i.aau = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aas, ptr noundef nonnull @.str.8, double noundef %i.aat) #17 ; 0 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %.loopexit497
  %i.aav = icmp eq i32 %1, 1
  %i.aaw = icmp eq i32 %7, 0
  %or.cond3 = or i1 %i.aav, %i.aaw
  br i1 %or.cond3, label %.sink.split, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.aax = load i8, ptr @Verbose, align 1, !tbaa !49
  %.not416 = icmp eq i8 %i.aax, 0
  br i1 %.not416, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.aay = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.aaz = call double @elapsed_sec() #15
  %i.aba = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aay, ptr noundef nonnull @.str.6, double noundef %i.aaz) #17 ; 0 uses
  %i.abb = load ptr, ptr @stderr, align 8, !tbaa !39
  %fwrite417 = call i64 @fwrite(ptr nonnull @.str.9, i64 26, i64 1, ptr %i.abb) #19 ; 0 uses
  call void @start_timer() #15
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.abc = sext i32 %4 to i64                     ; 6 uses
  %.not.i437 = icmp eq i32 %4, 0                  ; 2 uses
  br i1 %.not.i437, label %.thread.i, label %bb.cw

.thread.i:                                        ; preds = %bb.cv
  %i.abd = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #16
  br label %gv_calloc.exit

bb.cw:                                            ; preds = %bb.cv
  %mul.ov.i = icmp slt i32 %4, 0
  br i1 %mul.ov.i, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.abe = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.abf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abe, ptr noundef nonnull @.str.14, i64 noundef %i.abc, i64 noundef 8) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.abg = call noalias ptr @calloc(i64 noundef %i.abc, i64 noundef 8) #16 ; 2 uses
  %i.abh = icmp eq ptr %i.abg, null
  br i1 %i.abh, label %bb.cz, label %gv_calloc.exit

bb.cz:                                            ; preds = %bb.cy
  %i.abi = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.abj = shl nuw nsw i64 %i.abc, 3
  %i.abk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abi, ptr noundef nonnull @.str.15, i64 noundef %i.abj) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.cy
  %i.abl = phi ptr [ %i.abd, %.thread.i ], [ %i.abg, %bb.cy ] ; 13 uses
  %i.abm = mul nsw i32 %4, %1                     ; 4 uses
  %i.abn = sext i32 %i.abm to i64                 ; 6 uses
  %.not.i438 = icmp eq i32 %i.abm, 0              ; 2 uses
  br i1 %.not.i438, label %.thread.i441, label %bb.da

.thread.i441:                                     ; preds = %gv_calloc.exit
  %i.abo = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #16
  br label %gv_calloc.exit442

bb.da:                                            ; preds = %gv_calloc.exit
  %mul.ov.i440 = icmp slt i32 %i.abm, 0
  br i1 %mul.ov.i440, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.abp = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.abq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abp, ptr noundef nonnull @.str.14, i64 noundef %i.abn, i64 noundef 4) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

bb.dc:                                            ; preds = %bb.da
  %i.abr = call noalias ptr @calloc(i64 noundef %i.abn, i64 noundef 4) #16 ; 2 uses
  %i.abs = icmp eq ptr %i.abr, null
  br i1 %i.abs, label %bb.dd, label %gv_calloc.exit442

bb.dd:                                            ; preds = %bb.dc
  %i.abt = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.abu = shl nuw nsw i64 %i.abn, 2
  %i.abv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.abt, ptr noundef nonnull @.str.15, i64 noundef %i.abu) #17 ; 0 uses
  call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit442:                                ; preds = %.thread.i441, %bb.dc
  %i.abw = phi ptr [ %i.abo, %.thread.i441 ], [ %i.abr, %bb.dc ] ; 5 uses
  %i.abx = icmp ne i32 %4, 0                      ; 5 uses
  br i1 %i.abx, label %.lr.ph514, label %._crit_edge515

.lr.ph514:                                        ; preds = %gv_calloc.exit442
  %i.aby = icmp sgt i32 %1, 0
  %i.abz = sext i32 %1 to i64
  %wide.trip.count636 = zext nneg i32 %4 to i64
  %wide.trip.count631 = zext i32 %1 to i64        ; 3 uses
  %min.iters.check884 = icmp ult i32 %1, 4
  %n.vec886 = and i64 %wide.trip.count631, 2147483644 ; 3 uses
  %cmp.n893 = icmp eq i64 %n.vec886, %wide.trip.count631
  br label %bb.de

bb.de:                                            ; preds = %.lr.ph514, %._crit_edge512
  %indvars.iv633 = phi i64 [ 0, %.lr.ph514 ], [ %indvars.iv.next634, %._crit_edge512 ] ; 4 uses
  %i.aca = mul nsw i64 %indvars.iv633, %i.abz
  %i.acb = getelementptr inbounds [4 x i8], ptr %i.abw, i64 %i.aca ; 3 uses
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr %i.abl, i64 %indvars.iv633
  store ptr %i.acb, ptr %i.acc, align 8, !tbaa !56
  br i1 %i.aby, label %.lr.ph511, label %._crit_edge512

.lr.ph511:                                        ; preds = %bb.de
  %i.acd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv633
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !12 ; 2 uses
  br i1 %min.iters.check884, label %scalar.ph883.preheader, label %vector.body887

vector.body887:                                   ; preds = %.lr.ph511, %vector.body887
  %index888 = phi i64 [ %index.next891, %vector.body887 ], [ 0, %.lr.ph511 ] ; 3 uses
  %i.acf = getelementptr inbounds nuw [8 x i8], ptr %i.ace, i64 %index888 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 16
  %wide.load889 = load <2 x double>, ptr %i.acf, align 8, !tbaa !35
  %wide.load890 = load <2 x double>, ptr %i.acg, align 8, !tbaa !35
  %i.ach = fptrunc <2 x double> %wide.load889 to <2 x float>
  %i.aci = fptrunc <2 x double> %wide.load890 to <2 x float>
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.acb, i64 %index888 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 8
  store <2 x float> %i.ach, ptr %i.acj, align 4, !tbaa !48
  store <2 x float> %i.aci, ptr %i.ack, align 4, !tbaa !48
  %index.next891 = add nuw i64 %index888, 4       ; 2 uses
  %i.acl = icmp eq i64 %index.next891, %n.vec886
  br i1 %i.acl, label %middle.block892, label %vector.body887, !llvm.loop !114

middle.block892:                                  ; preds = %vector.body887
  br i1 %cmp.n893, label %._crit_edge512, label %scalar.ph883.preheader

scalar.ph883.preheader:                           ; preds = %.lr.ph511, %middle.block892
  %indvars.iv628.ph = phi i64 [ 0, %.lr.ph511 ], [ %n.vec886, %middle.block892 ]
  br label %scalar.ph883

scalar.ph883:                                     ; preds = %scalar.ph883.preheader, %scalar.ph883
  %indvars.iv628 = phi i64 [ %indvars.iv.next629, %scalar.ph883 ], [ %indvars.iv628.ph, %scalar.ph883.preheader ] ; 3 uses
  %i.acm = getelementptr inbounds nuw [8 x i8], ptr %i.ace, i64 %indvars.iv628
  %i.acn = load double, ptr %i.acm, align 8, !tbaa !35
  %i.aco = fptrunc double %i.acn to float
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.acb, i64 %indvars.iv628
  store float %i.aco, ptr %i.acp, align 4, !tbaa !48
  %indvars.iv.next629 = add nuw nsw i64 %indvars.iv628, 1 ; 2 uses
  %exitcond632.not = icmp eq i64 %indvars.iv.next629, %wide.trip.count631
  br i1 %exitcond632.not, label %._crit_edge512, label %scalar.ph883, !llvm.loop !115

._crit_edge512:                                   ; preds = %scalar.ph883, %middle.block892, %bb.de
  %indvars.iv.next634 = add nuw nsw i64 %indvars.iv633, 1 ; 2 uses
  %exitcond637.not = icmp eq i64 %indvars.iv.next634, %wide.trip.count636
  br i1 %exitcond637.not, label %._crit_edge515, label %bb.de, !llvm.loop !116

._crit_edge515:                                   ; preds = %._crit_edge512, %gv_calloc.exit442
  %i.acq = sitofp i32 %1 to float
  %i.acr = add i32 %1, -1                         ; 5 uses
  %i.acs = sitofp i32 %i.acr to float
  %i.act = fmul nnan float %i.acq, %i.acs
end_hunk_1
