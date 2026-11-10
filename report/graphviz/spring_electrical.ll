Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/spring_electrical?download=true
inline.NumInlined: 51
inline.NumDeleted: 19
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@multilevel_spring_electrical_embedding:bb.a
  br i1 %i.hn, label %pred.store.if785, label %pred.store.continue786

pred.store.if785:                                 ; preds = %pred.store.continue784
  %i.ho = extractelement <4 x i32> %i.gt, i64 3
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.hp
  store i32 -1, ptr %i.hq, align 4, !tbaa !39
  br label %pred.store.continue786

pred.store.continue786:                           ; preds = %pred.store.if785, %pred.store.continue784
  %i.hr = extractelement <4 x i1> %i.ha, i64 0
  br i1 %i.hr, label %pred.store.if787, label %pred.store.continue788

pred.store.if787:                                 ; preds = %pred.store.continue786
  %i.hs = extractelement <4 x i32> %i.gu, i64 0
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.ht
  store i32 -1, ptr %i.hu, align 4, !tbaa !39
  br label %pred.store.continue788

pred.store.continue788:                           ; preds = %pred.store.if787, %pred.store.continue786
  %i.hv = extractelement <4 x i1> %i.ha, i64 1
  br i1 %i.hv, label %pred.store.if789, label %pred.store.continue790

pred.store.if789:                                 ; preds = %pred.store.continue788
  %i.hw = extractelement <4 x i32> %i.gu, i64 1
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.hx
  store i32 -1, ptr %i.hy, align 4, !tbaa !39
  br label %pred.store.continue790

pred.store.continue790:                           ; preds = %pred.store.if789, %pred.store.continue788
  %i.hz = extractelement <4 x i1> %i.ha, i64 2
  br i1 %i.hz, label %pred.store.if791, label %pred.store.continue792

pred.store.if791:                                 ; preds = %pred.store.continue790
  %i.ia = extractelement <4 x i32> %i.gu, i64 2
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.ib
  store i32 -1, ptr %i.ic, align 4, !tbaa !39
  br label %pred.store.continue792

pred.store.continue792:                           ; preds = %pred.store.if791, %pred.store.continue790
  %i.id = extractelement <4 x i1> %i.ha, i64 3
  br i1 %i.id, label %pred.store.if793, label %pred.store.continue794

pred.store.if793:                                 ; preds = %pred.store.continue792
  %i.ie = extractelement <4 x i32> %i.gu, i64 3
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.if
  store i32 -1, ptr %i.ig, align 4, !tbaa !39
  br label %pred.store.continue794

pred.store.continue794:                           ; preds = %pred.store.if793, %pred.store.continue792
  %index.next795 = add nuw i64 %index780, 8       ; 2 uses
  %i.ih = icmp eq i64 %index.next795, %n.vec776
  br i1 %i.ih, label %middle.block796, label %vector.body779, !llvm.loop !113

middle.block796:                                  ; preds = %pred.store.continue794
  %cmp.n797 = icmp eq i64 %n.vec776, %wide.trip.count125.i
  br i1 %cmp.n797, label %.preheader101.i, label %.lr.ph105.i174.preheader

.lr.ph105.i174.preheader:                         ; preds = %.lr.ph105.preheader.i173, %middle.block796
  %indvars.iv119.i.ph = phi i64 [ 0, %.lr.ph105.preheader.i173 ], [ %n.vec776, %middle.block796 ]
  br label %.lr.ph105.i174

.lr.ph.i163:                                      ; preds = %.lr.ph.i163.preheader, %.lr.ph.i163
  %indvars.iv.i164 = phi i64 [ %indvars.iv.next.i165, %.lr.ph.i163 ], [ %indvars.iv.i164.ph, %.lr.ph.i163.preheader ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.i164
  store i32 1, ptr %i.ii, align 4, !tbaa !39
  %indvars.iv.next.i165 = add nuw nsw i64 %indvars.iv.i164, 1 ; 2 uses
  %exitcond.not.i166 = icmp eq i64 %indvars.iv.next.i165, %wide.trip.count.i162
  br i1 %exitcond.not.i166, label %.lr.ph105.preheader.i173, label %.lr.ph.i163, !llvm.loop !114

.preheader101.i:                                  ; preds = %bb.aq, %middle.block796
  br i1 %.not.i.not.i159, label %.preheader101.i..lr.ph117.i_crit_edge, label %.lr.ph108.preheader.i

.preheader101.i..lr.ph117.i_crit_edge:            ; preds = %.preheader101.i
  %.pre332 = zext nneg i32 %0 to i64              ; 2 uses
  %.pre333 = shl nuw nsw i64 %.pre332, 3
  br label %.lr.ph117.i

.lr.ph108.preheader.i:                            ; preds = %.preheader101.i
  %wide.trip.count127.i = zext i32 %i.gc to i64   ; 5 uses
  %i.ij = add nsw i64 %wide.trip.count127.i, -1   ; 2 uses
  %xtraiter936 = and i64 %wide.trip.count127.i, 1
  %i.ik = icmp eq i64 %i.ij, 0
  br i1 %i.ik, label %.lr.ph108.i.epil.preheader, label %.lr.ph108.preheader.i.new

.lr.ph108.preheader.i.new:                        ; preds = %.lr.ph108.preheader.i
  %unroll_iter940 = and i64 %wide.trip.count127.i, 4294967294
  br label %.lr.ph108.i

.lr.ph105.i174:                                   ; preds = %.lr.ph105.i174.preheader, %bb.aq
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i, %bb.aq ], [ %indvars.iv119.i.ph, %.lr.ph105.i174.preheader ] ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv119.i
  %i.im = load i32, ptr %i.il, align 4, !tbaa !39 ; 3 uses
  %i.in = icmp sgt i32 %i.im, -1
  %i.io = icmp slt i32 %i.im, %i.gc
  %or.cond.i = and i1 %i.in, %i.io
  br i1 %or.cond.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph105.i174
  %i.ip = zext nneg i32 %i.im to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.ip
  store i32 -1, ptr %i.iq, align 4, !tbaa !39
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph105.i174
  %indvars.iv.next120.i = add nuw nsw i64 %indvars.iv119.i, 1 ; 2 uses
  %exitcond123.not.i = icmp eq i64 %indvars.iv.next120.i, %wide.trip.count125.i
  br i1 %exitcond123.not.i, label %.preheader101.i, label %.lr.ph105.i174, !llvm.loop !115

.preheader100.i.unr-lcssa:                        ; preds = %bb.au
  %lcmp.mod938.not = icmp eq i64 %xtraiter936, 0
  br i1 %lcmp.mod938.not, label %.preheader100.i, label %.lr.ph108.i.epil.preheader

.lr.ph108.i.epil.preheader:                       ; preds = %.preheader100.i.unr-lcssa, %.lr.ph108.preheader.i
  %indvars.iv124.i.epil.init = phi i64 [ 0, %.lr.ph108.preheader.i ], [ %indvars.iv.next125.i.1, %.preheader100.i.unr-lcssa ]
  %.0107.i.epil.init = phi i32 [ 0, %.lr.ph108.preheader.i ], [ %.1.i167.1, %.preheader100.i.unr-lcssa ]
  %lcmp.mod939 = trunc i32 %i.gc to i1
  call void @llvm.assume(i1 %lcmp.mod939)
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv124.i.epil.init ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !39
  %i.it = icmp sgt i32 %i.is, -1
  br i1 %i.it, label %bb.ar, label %.preheader100.i

bb.ar:                                            ; preds = %.lr.ph108.i.epil.preheader
  store i32 %.0107.i.epil.init, ptr %i.ir, align 4, !tbaa !39
  br label %.preheader100.i

.preheader100.i:                                  ; preds = %.lr.ph108.i.epil.preheader, %bb.ar, %.preheader100.i.unr-lcssa
  %i.iu = zext nneg i32 %0 to i64                 ; 7 uses
  %i.iv = shl nuw nsw i64 %i.iu, 3                ; 6 uses
  %xtraiter942 = and i64 %wide.trip.count127.i, 1
  %i.iw = icmp eq i64 %i.ij, 0
  br i1 %i.iw, label %.lr.ph111.i.epil.preheader, label %.preheader100.i.new

.preheader100.i.new:                              ; preds = %.preheader100.i
  %unroll_iter946 = and i64 %wide.trip.count127.i, 4294967294
  br label %.lr.ph111.i

.lr.ph108.i:                                      ; preds = %bb.au, %.lr.ph108.preheader.i.new
  %indvars.iv124.i = phi i64 [ 0, %.lr.ph108.preheader.i.new ], [ %indvars.iv.next125.i.1, %bb.au ] ; 3 uses
  %.0107.i = phi i32 [ 0, %.lr.ph108.preheader.i.new ], [ %.1.i167.1, %bb.au ] ; 3 uses
  %niter941 = phi i64 [ 0, %.lr.ph108.preheader.i.new ], [ %niter941.next.1, %bb.au ]
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv124.i ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !39
  %i.iz = icmp sgt i32 %i.iy, -1
  br i1 %i.iz, label %bb.as, label %.lr.ph108.i.1

bb.as:                                            ; preds = %.lr.ph108.i
  %i.ja = add nsw i32 %.0107.i, 1
  store i32 %.0107.i, ptr %i.ix, align 4, !tbaa !39
  br label %.lr.ph108.i.1

.lr.ph108.i.1:                                    ; preds = %bb.as, %.lr.ph108.i
  %.1.i167 = phi i32 [ %i.ja, %bb.as ], [ %.0107.i, %.lr.ph108.i ] ; 3 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv124.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 4 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !39
  %i.je = icmp sgt i32 %i.jd, -1
  br i1 %i.je, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph108.i.1
  %i.jf = add nsw i32 %.1.i167, 1
  store i32 %.1.i167, ptr %i.jc, align 4, !tbaa !39
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph108.i.1
  %.1.i167.1 = phi i32 [ %i.jf, %bb.at ], [ %.1.i167, %.lr.ph108.i.1 ] ; 2 uses
  %indvars.iv.next125.i.1 = add nuw nsw i64 %indvars.iv124.i, 2 ; 2 uses
  %niter941.next.1 = add i64 %niter941, 2         ; 2 uses
  %niter941.ncmp.1 = icmp eq i64 %niter941.next.1, %unroll_iter940
  br i1 %niter941.ncmp.1, label %.preheader100.i.unr-lcssa, label %.lr.ph108.i, !llvm.loop !116

.lr.ph117.i.loopexit.unr-lcssa:                   ; preds = %.loopexit.i169.1
  %lcmp.mod944.not = icmp eq i64 %xtraiter942, 0
  br i1 %lcmp.mod944.not, label %.lr.ph117.i, label %.lr.ph111.i.epil.preheader

.lr.ph111.i.epil.preheader:                       ; preds = %.lr.ph117.i.loopexit.unr-lcssa, %.preheader100.i
  %indvars.iv135.i168.epil.init = phi i64 [ 0, %.preheader100.i ], [ %indvars.iv.next136.i170.1, %.lr.ph117.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod945 = trunc i32 %i.gc to i1
  call void @llvm.assume(i1 %lcmp.mod945)
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv135.i168.epil.init
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !39 ; 2 uses
  %i.ji = icmp sgt i32 %i.jh, -1
  br i1 %i.ji, label %.preheader99.i.epil, label %.lr.ph117.i

.preheader99.i.epil:                              ; preds = %.lr.ph111.i.epil.preheader
  %i.jj = mul nuw nsw i32 %i.jh, %0
  %i.jk = mul nuw nsw i64 %indvars.iv135.i168.epil.init, %i.iu
  %i.jl = zext nneg i32 %i.jj to i64
  %invariant.gep.i.epil = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.jl
  %invariant.gep171.i.epil = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.jk
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %invariant.gep171.i.epil, ptr align 8 %invariant.gep.i.epil, i64 %i.iv, i1 false), !tbaa !12
  br label %.lr.ph117.i

.lr.ph117.i:                                      ; preds = %.lr.ph117.i.loopexit.unr-lcssa, %.preheader99.i.epil, %.lr.ph111.i.epil.preheader, %.preheader101.i..lr.ph117.i_crit_edge
  %.pre-phi334 = phi i64 [ %.pre333, %.preheader101.i..lr.ph117.i_crit_edge ], [ %i.iv, %.lr.ph111.i.epil.preheader ], [ %i.iv, %.preheader99.i.epil ], [ %i.iv, %.lr.ph117.i.loopexit.unr-lcssa ]
  %.pre-phi = phi i64 [ %.pre332, %.preheader101.i..lr.ph117.i_crit_edge ], [ %i.iu, %.lr.ph111.i.epil.preheader ], [ %i.iu, %.preheader99.i.epil ], [ %i.iu, %.lr.ph117.i.loopexit.unr-lcssa ] ; 12 uses
  %i.jm = load ptr, ptr %i.ah, align 8, !tbaa !36
  %i.jn = shl nuw nsw i64 %.pre-phi, 3
  %scevgep820 = getelementptr i8, ptr %4, i64 %i.jn
  %min.iters.check823 = icmp samesign ult i64 %.pre-phi, 4
  %n.vec829 = and i64 %.pre-phi, 2147483644       ; 3 uses
  %cmp.n838 = icmp eq i64 %.pre-phi, %n.vec829
  %xtraiter948 = and i64 %.pre-phi, 3             ; 2 uses
  %lcmp.mod949.not = icmp eq i64 %xtraiter948, 0
  %min.iters.check800 = icmp samesign ult i64 %.pre-phi, 2
  %n.vec802 = and i64 %.pre-phi, 2147483646       ; 3 uses
  %cmp.n810 = icmp eq i64 %.pre-phi, %n.vec802
  br label %.preheader97.i

.lr.ph111.i:                                      ; preds = %.loopexit.i169.1, %.preheader100.i.new
  %indvars.iv135.i168 = phi i64 [ 0, %.preheader100.i.new ], [ %indvars.iv.next136.i170.1, %.loopexit.i169.1 ] ; 4 uses
  %niter947 = phi i64 [ 0, %.preheader100.i.new ], [ %niter947.next.1, %.loopexit.i169.1 ]
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv135.i168
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !39 ; 2 uses
  %i.jq = icmp sgt i32 %i.jp, -1
  br i1 %i.jq, label %.preheader99.i, label %.loopexit.i169

.preheader99.i:                                   ; preds = %.lr.ph111.i
  %i.jr = mul nuw nsw i32 %i.jp, %0
  %i.js = mul nuw nsw i64 %indvars.iv135.i168, %i.iu
  %i.jt = zext nneg i32 %i.jr to i64
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.jt
  %invariant.gep171.i = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.js
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %invariant.gep171.i, ptr align 8 %invariant.gep.i, i64 %i.iv, i1 false), !tbaa !12
  br label %.loopexit.i169

.loopexit.i169:                                   ; preds = %.preheader99.i, %.lr.ph111.i
  %indvars.iv.next136.i170 = or disjoint i64 %indvars.iv135.i168, 1 ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.next136.i170
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !39 ; 2 uses
  %i.jw = icmp sgt i32 %i.jv, -1
  br i1 %i.jw, label %.preheader99.i.1, label %.loopexit.i169.1

.preheader99.i.1:                                 ; preds = %.loopexit.i169
  %i.jx = mul nuw nsw i32 %i.jv, %0
  %i.jy = mul nuw nsw i64 %indvars.iv.next136.i170, %i.iu
  %i.jz = zext nneg i32 %i.jx to i64
  %invariant.gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.jz
  %invariant.gep171.i.1 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.jy
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %invariant.gep171.i.1, ptr align 8 %invariant.gep.i.1, i64 %i.iv, i1 false), !tbaa !12
  br label %.loopexit.i169.1

.loopexit.i169.1:                                 ; preds = %.preheader99.i.1, %.loopexit.i169
  %indvars.iv.next136.i170.1 = add nuw nsw i64 %indvars.iv135.i168, 2 ; 2 uses
  %niter947.next.1 = add i64 %niter947, 2         ; 2 uses
  %niter947.ncmp.1 = icmp eq i64 %niter947.next.1, %unroll_iter946
  br i1 %niter947.ncmp.1, label %.lr.ph117.i.loopexit.unr-lcssa, label %.lr.ph111.i, !llvm.loop !117

.preheader97.i:                                   ; preds = %.loopexit840, %.lr.ph117.i
  %indvars.iv158.i = phi i64 [ 0, %.lr.ph117.i ], [ %indvars.iv.next159.i, %.loopexit840 ] ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv158.i
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !39 ; 2 uses
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr [4 x i8], ptr %i.jm, i64 %i.kc ; 2 uses
  %i.ke = getelementptr i8, ptr %i.kd, i64 4
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !39 ; 3 uses
  %i.kg = load i32, ptr %i.kd, align 4, !tbaa !39 ; 3 uses
  %i.kh = mul nsw i32 %i.kb, %0
  %i.ki = sext i32 %i.kh to i64                   ; 4 uses
  %i.kj = shl nsw i64 %i.ki, 3
  %scevgep.i = getelementptr i8, ptr %4, i64 %i.kj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %.pre-phi334, i1 false), !tbaa !12
  %i.kk = sub nsw i32 %i.kf, %i.kg
  %i.kl = sitofp i32 %i.kk to double              ; 2 uses
  %i.km = icmp slt i32 %i.kg, %i.kf
  br i1 %i.km, label %.preheader.lr.ph.i, label %.preheader96.i

.preheader.lr.ph.i:                               ; preds = %.preheader97.i
  %i.kn = load ptr, ptr %i.aj, align 8, !tbaa !37
  %i.ko = sext i32 %i.kg to i64
  %wide.trip.count151.i = sext i32 %i.kf to i64
  %invariant.gep175.i = getelementptr [8 x i8], ptr %4, i64 %i.ki ; 7 uses
  %i.kp = shl nsw i64 %i.ki, 3
  %scevgep821 = getelementptr i8, ptr %scevgep820, i64 %i.kp
  br label %.preheader.i172

.preheader96.i:                                   ; preds = %.loopexit, %.preheader97.i
  %invariant.gep177.i = getelementptr [8 x i8], ptr %4, i64 %i.ki ; 2 uses
  br i1 %min.iters.check800, label %scalar.ph799.preheader, label %vector.ph801

vector.ph801:                                     ; preds = %.preheader96.i
  %broadcast.splatinsert803 = insertelement <2 x double> poison, double %i.kl, i64 0
  %broadcast.splat804 = shufflevector <2 x double> %broadcast.splatinsert803, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body805

vector.body805:                                   ; preds = %vector.body805, %vector.ph801
  %index806 = phi i64 [ 0, %vector.ph801 ], [ %index.next808, %vector.body805 ] ; 2 uses
  %i.kq = getelementptr [8 x i8], ptr %invariant.gep177.i, i64 %index806 ; 2 uses
  %wide.load807 = load <2 x double>, ptr %i.kq, align 8, !tbaa !12
  %i.kr = fdiv <2 x double> %wide.load807, %broadcast.splat804
  store <2 x double> %i.kr, ptr %i.kq, align 8, !tbaa !12
  %index.next808 = add nuw i64 %index806, 2       ; 2 uses
  %i.ks = icmp eq i64 %index.next808, %n.vec802
  br i1 %i.ks, label %middle.block809, label %vector.body805, !llvm.loop !118

middle.block809:                                  ; preds = %vector.body805
  br i1 %cmp.n810, label %.loopexit840, label %scalar.ph799.preheader

scalar.ph799.preheader:                           ; preds = %.preheader96.i, %middle.block809
  %indvars.iv153.i.ph = phi i64 [ 0, %.preheader96.i ], [ %n.vec802, %middle.block809 ]
  br label %scalar.ph799

.preheader.i172:                                  ; preds = %.loopexit, %.preheader.lr.ph.i
  %indvars.iv148.i = phi i64 [ %i.ko, %.preheader.lr.ph.i ], [ %indvars.iv.next149.i, %.loopexit ] ; 2 uses
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.kn, i64 %indvars.iv148.i
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !39
  %i.kv = mul nsw i32 %i.ku, %0
  %i.kw = sext i32 %i.kv to i64                   ; 2 uses
  %invariant.gep173.i = getelementptr [8 x i8], ptr %4, i64 %i.kw ; 7 uses
  br i1 %min.iters.check823, label %scalar.ph822.preheader, label %vector.memcheck824

vector.memcheck824:                               ; preds = %.preheader.i172
  %13 = add nsw i64 %.pre-phi, %i.kw
  %i.kx = shl nsw i64 %13, 3
  %i.ky = getelementptr i8, ptr %4, i64 %i.kx
  %bound0825 = icmp ult ptr %invariant.gep175.i, %i.ky
  %bound1826 = icmp ult ptr %invariant.gep173.i, %scevgep821
  %found.conflict827 = and i1 %bound0825, %bound1826
  br i1 %found.conflict827, label %scalar.ph822.preheader, label %vector.body830

vector.body830:                                   ; preds = %vector.memcheck824, %vector.body830
  %index831 = phi i64 [ %index.next836, %vector.body830 ], [ 0, %vector.memcheck824 ] ; 3 uses
  %i.kz = getelementptr [8 x i8], ptr %invariant.gep173.i, i64 %index831 ; 2 uses
  %i.la = getelementptr i8, ptr %i.kz, i64 16
  %wide.load832 = load <2 x double>, ptr %i.kz, align 8, !tbaa !12, !alias.scope !209
  %wide.load833 = load <2 x double>, ptr %i.la, align 8, !tbaa !12, !alias.scope !209
  %i.lb = getelementptr [8 x i8], ptr %invariant.gep175.i, i64 %index831 ; 3 uses
  %i.lc = getelementptr i8, ptr %i.lb, i64 16     ; 2 uses
  %wide.load834 = load <2 x double>, ptr %i.lb, align 8, !tbaa !12, !alias.scope !210, !noalias !209
  %wide.load835 = load <2 x double>, ptr %i.lc, align 8, !tbaa !12, !alias.scope !210, !noalias !209
  %i.ld = fadd <2 x double> %wide.load832, %wide.load834
  %i.le = fadd <2 x double> %wide.load833, %wide.load835
  store <2 x double> %i.ld, ptr %i.lb, align 8, !tbaa !12, !alias.scope !210, !noalias !209
  store <2 x double> %i.le, ptr %i.lc, align 8, !tbaa !12, !alias.scope !210, !noalias !209
  %index.next836 = add nuw i64 %index831, 4       ; 2 uses
  %i.lf = icmp eq i64 %index.next836, %n.vec829
  br i1 %i.lf, label %middle.block837, label %vector.body830, !llvm.loop !122

middle.block837:                                  ; preds = %vector.body830
  br i1 %cmp.n838, label %.loopexit, label %scalar.ph822.preheader

scalar.ph822.preheader:                           ; preds = %vector.memcheck824, %.preheader.i172, %middle.block837
  %indvars.iv143.i.ph = phi i64 [ 0, %vector.memcheck824 ], [ 0, %.preheader.i172 ], [ %n.vec829, %middle.block837 ] ; 3 uses
  br i1 %lcmp.mod949.not, label %scalar.ph822.prol.loopexit, label %scalar.ph822.prol

scalar.ph822.prol:                                ; preds = %scalar.ph822.preheader, %scalar.ph822.prol
  %indvars.iv143.i.prol = phi i64 [ %indvars.iv.next144.i.prol, %scalar.ph822.prol ], [ %indvars.iv143.i.ph, %scalar.ph822.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph822.prol ], [ 0, %scalar.ph822.preheader ]
  %gep174.i.prol = getelementptr [8 x i8], ptr %invariant.gep173.i, i64 %indvars.iv143.i.prol
  %i.lg = load double, ptr %gep174.i.prol, align 8, !tbaa !12
  %gep176.i.prol = getelementptr [8 x i8], ptr %invariant.gep175.i, i64 %indvars.iv143.i.prol ; 2 uses
  %i.lh = load double, ptr %gep176.i.prol, align 8, !tbaa !12
  %i.li = fadd double %i.lg, %i.lh
  store double %i.li, ptr %gep176.i.prol, align 8, !tbaa !12
  %indvars.iv.next144.i.prol = add nuw nsw i64 %indvars.iv143.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter948
  br i1 %prol.iter.cmp.not, label %scalar.ph822.prol.loopexit, label %scalar.ph822.prol, !llvm.loop !123

scalar.ph822.prol.loopexit:                       ; preds = %scalar.ph822.prol, %scalar.ph822.preheader
  %indvars.iv143.i.unr = phi i64 [ %indvars.iv143.i.ph, %scalar.ph822.preheader ], [ %indvars.iv.next144.i.prol, %scalar.ph822.prol ]
  %i.lj = sub nsw i64 %indvars.iv143.i.ph, %.pre-phi
  %i.lk = icmp ugt i64 %i.lj, -4
  br i1 %i.lk, label %.loopexit, label %scalar.ph822

scalar.ph822:                                     ; preds = %scalar.ph822.prol.loopexit, %scalar.ph822
  %indvars.iv143.i = phi i64 [ %indvars.iv.next144.i.3, %scalar.ph822 ], [ %indvars.iv143.i.unr, %scalar.ph822.prol.loopexit ] ; 6 uses
  %gep174.i = getelementptr [8 x i8], ptr %invariant.gep173.i, i64 %indvars.iv143.i
  %i.ll = load double, ptr %gep174.i, align 8, !tbaa !12
  %gep176.i = getelementptr [8 x i8], ptr %invariant.gep175.i, i64 %indvars.iv143.i ; 2 uses
  %i.lm = load double, ptr %gep176.i, align 8, !tbaa !12
  %i.ln = fadd double %i.ll, %i.lm
  store double %i.ln, ptr %gep176.i, align 8, !tbaa !12
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 1 ; 2 uses
  %gep174.i.1 = getelementptr [8 x i8], ptr %invariant.gep173.i, i64 %indvars.iv.next144.i
  %i.lo = load double, ptr %gep174.i.1, align 8, !tbaa !12
  %gep176.i.1 = getelementptr [8 x i8], ptr %invariant.gep175.i, i64 %indvars.iv.next144.i ; 2 uses
  %i.lp = load double, ptr %gep176.i.1, align 8, !tbaa !12
  %i.lq = fadd double %i.lo, %i.lp
  store double %i.lq, ptr %gep176.i.1, align 8, !tbaa !12
  %indvars.iv.next144.i.1 = add nuw nsw i64 %indvars.iv143.i, 2 ; 2 uses
  %gep174.i.2 = getelementptr [8 x i8], ptr %invariant.gep173.i, i64 %indvars.iv.next144.i.1
  %i.lr = load double, ptr %gep174.i.2, align 8, !tbaa !12
  %gep176.i.2 = getelementptr [8 x i8], ptr %invariant.gep175.i, i64 %indvars.iv.next144.i.1 ; 2 uses
  %i.ls = load double, ptr %gep176.i.2, align 8, !tbaa !12
  %i.lt = fadd double %i.lr, %i.ls
  store double %i.lt, ptr %gep176.i.2, align 8, !tbaa !12
  %indvars.iv.next144.i.2 = add nuw nsw i64 %indvars.iv143.i, 3 ; 2 uses
  %gep174.i.3 = getelementptr [8 x i8], ptr %invariant.gep173.i, i64 %indvars.iv.next144.i.2
  %i.lu = load double, ptr %gep174.i.3, align 8, !tbaa !12
  %gep176.i.3 = getelementptr [8 x i8], ptr %invariant.gep175.i, i64 %indvars.iv.next144.i.2 ; 2 uses
  %i.lv = load double, ptr %gep176.i.3, align 8, !tbaa !12
  %i.lw = fadd double %i.lu, %i.lv
  store double %i.lw, ptr %gep176.i.3, align 8, !tbaa !12
  %indvars.iv.next144.i.3 = add nuw nsw i64 %indvars.iv143.i, 4 ; 2 uses
  %exitcond147.not.i.3 = icmp eq i64 %indvars.iv.next144.i.3, %.pre-phi
  br i1 %exitcond147.not.i.3, label %.loopexit, label %scalar.ph822, !llvm.loop !124

.loopexit:                                        ; preds = %scalar.ph822.prol.loopexit, %scalar.ph822, %middle.block837
  %indvars.iv.next149.i = add nsw i64 %indvars.iv148.i, 1 ; 2 uses
  %exitcond152.not.i = icmp eq i64 %indvars.iv.next149.i, %wide.trip.count151.i
  br i1 %exitcond152.not.i, label %.preheader96.i, label %.preheader.i172, !llvm.loop !125

scalar.ph799:                                     ; preds = %scalar.ph799.preheader, %scalar.ph799
  %indvars.iv153.i = phi i64 [ %indvars.iv.next154.i, %scalar.ph799 ], [ %indvars.iv153.i.ph, %scalar.ph799.preheader ] ; 2 uses
  %gep178.i = getelementptr [8 x i8], ptr %invariant.gep177.i, i64 %indvars.iv153.i ; 2 uses
  %i.lx = load double, ptr %gep178.i, align 8, !tbaa !12
  %i.ly = fdiv double %i.lx, %i.kl
  store double %i.ly, ptr %gep178.i, align 8, !tbaa !12
  %indvars.iv.next154.i = add nuw nsw i64 %indvars.iv153.i, 1 ; 2 uses
  %exitcond157.not.i = icmp eq i64 %indvars.iv.next154.i, %.pre-phi
  br i1 %exitcond157.not.i, label %.loopexit840, label %scalar.ph799, !llvm.loop !126

.loopexit840:                                     ; preds = %scalar.ph799, %middle.block809
  %indvars.iv.next159.i = add nuw nsw i64 %indvars.iv158.i, 1 ; 2 uses
  %exitcond162.not.i = icmp eq i64 %indvars.iv.next159.i, %wide.trip.count125.i
  br i1 %exitcond162.not.i, label %attach_edge_label_coordinates.exit, label %.preheader97.i, !llvm.loop !127

attach_edge_label_coordinates.exit:               ; preds = %.loopexit840
  call void @free(ptr noundef %i.gp) #22
  %i.lz = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !20
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !23
  %i.md = load i32, ptr %i.q, align 8, !tbaa !24
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.mf = load i8, ptr %i.me, align 8, !tbaa !21, !range !31, !noundef !32
  %i.mg = trunc nuw i8 %i.mf to i1
  call void @remove_overlap(i32 noundef %0, ptr noundef nonnull %.0142, ptr noundef nonnull %4, ptr noundef %3, i32 noundef %i.ma, double noundef %i.mc, i32 noundef %i.md, i32 noundef %5, ptr noundef %6, ptr noundef nonnull %.0142, i1 noundef zeroext %i.mg) #22
  call void @SparseMatrix_delete(ptr noundef %i.cv) #22
  call void @free(ptr noundef %i.ag) #22
  %.not157 = icmp eq ptr %.0142, %1
  br i1 %.not157, label %bb.fj, label %bb.av

bb.av:                                            ; preds = %attach_edge_label_coordinates.exit
  call void @SparseMatrix_delete(ptr noundef nonnull %.0142) #22
  br label %bb.fj

bb.aw:                                            ; preds = %bb.i, %bb.h
  %i.mh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !15
  %i.mj = tail call ptr @Multilevel_new(ptr noundef %.0142, i32 %i.mi) #22 ; 2 uses
  %i.mk = tail call ptr @Multilevel_get_coarsest(ptr noundef %i.mj) #22 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 40
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !214
  %.not151 = icmp eq ptr %i.mm, null
  br i1 %.not151, label %gv_calloc.exit180, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !215
  %i.mp = mul nsw i32 %i.mo, %0                   ; 3 uses
  %i.mq = sext i32 %i.mp to i64                   ; 3 uses
  %.not.i176 = icmp eq i32 %i.mp, 0
  br i1 %.not.i176, label %.thread.i179, label %bb.ay

.thread.i179:                                     ; preds = %bb.ax
  %i.mr = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #23
  br label %gv_calloc.exit180

bb.ay:                                            ; preds = %bb.ax
  %mul.ov.i178 = icmp slt i32 %i.mp, 0
  br i1 %mul.ov.i178, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ms = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.mt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ms, ptr noundef nonnull @.str.24, i64 noundef range(i64 -2147483648, 2305843009213693953) %i.mq, i64 noundef 8) #21 ; 0 uses
  tail call fastcc void @graphviz_exit() #24
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.mu = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2305843009213693953) %i.mq, i64 noundef 8) #23 ; 2 uses
  %i.mv = icmp eq ptr %i.mu, null
  br i1 %i.mv, label %bb.bb, label %gv_calloc.exit180

bb.bb:                                            ; preds = %bb.ba
  %i.mw = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.mx = shl nuw nsw i64 %i.mq, 3
  %i.my = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mw, ptr noundef nonnull @.str.25, i64 noundef %i.mx) #21 ; 0 uses
  tail call fastcc void @graphviz_exit() #24
  unreachable

gv_calloc.exit180:                                ; preds = %bb.ba, %.thread.i179, %bb.aw
  %.0140 = phi ptr [ %4, %bb.aw ], [ %i.mr, %.thread.i179 ], [ %i.mu, %bb.ba ]
  %i.mz = getelementptr inbounds nuw i8, ptr %.0142, i64 32
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !36 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.0142, i64 40
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !37 ; 2 uses
  %i.nd = load i32, ptr %.0142, align 8, !tbaa !38 ; 5 uses
  %i.ne = add nsw i32 %i.nd, 1                    ; 2 uses
  %i.nf = sext i32 %i.ne to i64                   ; 3 uses
  %.not.i.i = icmp eq i32 %i.ne, 0
  br i1 %.not.i.i, label %.preheader.thread.i, label %bb.bc

.preheader.thread.i:                              ; preds = %gv_calloc.exit180
  %i.ng = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #23
  br label %power_law_graph.exit

bb.bc:                                            ; preds = %gv_calloc.exit180
  %mul.ov.i.i181 = icmp slt i32 %i.nd, -1
  br i1 %mul.ov.i.i181, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.nh = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.ni = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nh, ptr noundef nonnull @.str.24, i64 noundef range(i64 -2147483648, 2305843009213693953) %i.nf, i64 noundef 4) #21 ; 0 uses
  tail call fastcc void @graphviz_exit() #24
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.nj = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2305843009213693953) %i.nf, i64 noundef 4) #23 ; 4 uses
  %i.nk = icmp eq ptr %i.nj, null
  br i1 %i.nk, label %bb.bf, label %.preheader.i182

bb.bf:                                            ; preds = %bb.be
  %i.nl = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.nm = shl nuw nsw i64 %i.nf, 2
  %i.nn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nl, ptr noundef nonnull @.str.25, i64 noundef %i.nm) #21 ; 0 uses
  tail call fastcc void @graphviz_exit() #24
  unreachable

.preheader.i182:                                  ; preds = %bb.be
  %.not.i183 = icmp eq i32 %i.nd, 0
  br i1 %.not.i183, label %power_law_graph.exit, label %.lr.ph52.preheader.i

.lr.ph52.preheader.i:                             ; preds = %.preheader.i182
  %wide.trip.count60.i = zext nneg i32 %i.nd to i64
  %.pre.i184 = load i32, ptr %i.na, align 4, !tbaa !39
  br label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %._crit_edge.i185, %.lr.ph52.preheader.i
  %i.no = phi i32 [ %.pre.i184, %.lr.ph52.preheader.i ], [ %i.nq, %._crit_edge.i185 ] ; 2 uses
  %indvars.iv57.i = phi i64 [ 0, %.lr.ph52.preheader.i ], [ %indvars.iv.next58.i, %._crit_edge.i185 ] ; 3 uses
  %.03950.i = phi i32 [ 0, %.lr.ph52.preheader.i ], [ %.039..i, %._crit_edge.i185 ]
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 3 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv.next58.i
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !39 ; 3 uses
  %i.nr = icmp slt i32 %i.no, %i.nq
  br i1 %i.nr, label %.lr.ph48.preheader.i, label %._crit_edge.i185

.lr.ph48.preheader.i:                             ; preds = %.lr.ph52.i
  %i.ns = sext i32 %i.no to i64                   ; 4 uses
  %wide.trip.count.i186 = sext i32 %i.nq to i64   ; 2 uses
  %i.nt = sub nsw i64 %wide.trip.count.i186, %i.ns ; 3 uses
  %min.iters.check = icmp ult i64 %i.nt, 8
  br i1 %min.iters.check, label %.lr.ph48.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph48.preheader.i
  %n.vec = and i64 %i.nt, -8                      ; 3 uses
  %i.nu = add nsw i64 %n.vec, %i.ns
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %indvars.iv57.i, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.nc, i64 %i.ns
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.oc, %vector.body ]
  %vec.phi450 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.od, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !39
  %wide.load451 = load <4 x i32>, ptr %i.nv, align 4, !tbaa !39
  %i.nw = zext <4 x i32> %wide.load to <4 x i64>
  %i.nx = zext <4 x i32> %wide.load451 to <4 x i64>
  %i.ny = icmp ne <4 x i64> %broadcast.splat, %i.nw
  %i.nz = icmp ne <4 x i64> %broadcast.splat, %i.nx
  %i.oa = zext <4 x i1> %i.ny to <4 x i32>
  %i.ob = zext <4 x i1> %i.nz to <4 x i32>
  %i.oc = add <4 x i32> %vec.phi, %i.oa           ; 2 uses
  %i.od = add <4 x i32> %vec.phi450, %i.ob        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.oe = icmp eq i64 %index.next, %n.vec
  br i1 %i.oe, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.od, %i.oc
  %i.of = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.nt, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph48.i.preheader

.lr.ph48.i.preheader:                             ; preds = %.lr.ph48.preheader.i, %middle.block
  %indvars.iv.i187.ph = phi i64 [ %i.ns, %.lr.ph48.preheader.i ], [ %i.nu, %middle.block ]
  %.03547.i.ph = phi i32 [ 0, %.lr.ph48.preheader.i ], [ %i.of, %middle.block ]
  br label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %.lr.ph48.i.preheader, %.lr.ph48.i
  %indvars.iv.i187 = phi i64 [ %indvars.iv.next.i188, %.lr.ph48.i ], [ %indvars.iv.i187.ph, %.lr.ph48.i.preheader ] ; 2 uses
  %.03547.i = phi i32 [ %spec.select.i, %.lr.ph48.i ], [ %.03547.i.ph, %.lr.ph48.i.preheader ]
  %i.og = getelementptr inbounds [4 x i8], ptr %i.nc, i64 %indvars.iv.i187
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !39
  %i.oi = zext i32 %i.oh to i64
  %i.oj = icmp ne i64 %indvars.iv57.i, %i.oi
  %i.ok = zext i1 %i.oj to i32
  %spec.select.i = add nuw nsw i32 %.03547.i, %i.ok ; 2 uses
  %indvars.iv.next.i188 = add nsw i64 %indvars.iv.i187, 1 ; 2 uses
  %exitcond.not.i189 = icmp eq i64 %indvars.iv.next.i188, %wide.trip.count.i186
  br i1 %exitcond.not.i189, label %._crit_edge.loopexit.i, label %.lr.ph48.i, !llvm.loop !129

._crit_edge.loopexit.i:                           ; preds = %.lr.ph48.i, %middle.block
  %spec.select.i.lcssa = phi i32 [ %i.of, %middle.block ], [ %spec.select.i, %.lr.ph48.i ]
  %i.ol = zext nneg i32 %spec.select.i.lcssa to i64
  br label %._crit_edge.i185

._crit_edge.i185:                                 ; preds = %._crit_edge.loopexit.i, %.lr.ph52.i
  %.035.lcssa.i = phi i64 [ 0, %.lr.ph52.i ], [ %i.ol, %._crit_edge.loopexit.i ]
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.035.lcssa.i ; 2 uses
  %i.on = load i32, ptr %i.om, align 4, !tbaa !39
  %i.oo = add nsw i32 %i.on, 1                    ; 2 uses
  store i32 %i.oo, ptr %i.om, align 4, !tbaa !39
  %.039..i = tail call i32 @llvm.smax.i32(i32 %.03950.i, i32 %i.oo) ; 2 uses
  %exitcond61.not.i = icmp eq i64 %indvars.iv.next58.i, %wide.trip.count60.i
  br i1 %exitcond61.not.i, label %._crit_edge53.loopexit.i, label %.lr.ph52.i, !llvm.loop !130

._crit_edge53.loopexit.i:                         ; preds = %._crit_edge.i185
  %i.op = uitofp nneg i32 %.039..i to double
  %i.oq = fmul nnan double %i.op, 8.000000e-01
  br label %power_law_graph.exit

power_law_graph.exit:                             ; preds = %.preheader.thread.i, %.preheader.i182, %._crit_edge53.loopexit.i
  %i.or = phi ptr [ %i.nj, %.preheader.i182 ], [ %i.nj, %._crit_edge53.loopexit.i ], [ %i.ng, %.preheader.thread.i ] ; 2 uses
  %.039.lcssa.i = phi double [ 0.000000e+00, %.preheader.i182 ], [ %i.oq, %._crit_edge53.loopexit.i ], [ 0.000000e+00, %.preheader.thread.i ]
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 4
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !39
  tail call void @free(ptr noundef %i.or) #22
  %i.ou = load double, ptr %2, align 8, !tbaa !28
  %i.ov = fcmp oeq double %i.ou, f0xBFF0008164EF6DE2
  br i1 %i.ov, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %power_law_graph.exit
  %i.ow = sitofp i32 %i.ot to double              ; 2 uses
  %i.ox = fcmp olt double %.039.lcssa.i, %i.ow
  %i.oy = sitofp i32 %i.nd to double
  %i.oz = fmul nnan double %i.oy, 3.000000e-01
  %i.pa = fcmp olt double %i.oz, %i.ow
  %.0.i = select i1 %i.ox, i1 %i.pa, i1 false
  %spec.store.select = select i1 %.0.i, double -1.800000e+00, double -1.000000e+00
  store double %spec.store.select, ptr %2, align 8, !tbaa !28
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %power_law_graph.exit
  %i.pb = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.pc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 8 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 5 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.pi = zext nneg i32 %0 to i64                 ; 86 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.pl = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.pm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.pn = getelementptr inbounds nuw i8, ptr %8, i64 176 ; 5 uses
  %i.po = shl nuw nsw i64 %i.pi, 3                ; 10 uses
  %i.pp = shl nuw nsw i64 %i.pi, 3
  %i.pq = shl nuw nsw i64 %i.pi, 3
  %i.pr = shl nuw nsw i64 %i.pi, 3
  %i.ps = shl nuw nsw i64 %i.pi, 3
  %i.pt = shl nuw nsw i64 %i.pi, 3
  %i.pu = add nsw i64 %i.pi, -1                   ; 4 uses
  %xtraiter = and i64 %i.pi, 3                    ; 3 uses
  %i.pv = icmp ult i64 %i.pu, 3
  %unroll_iter = and i64 %i.pi, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod877 = icmp ne i64 %xtraiter, 0
  %min.iters.check685 = icmp ult i32 %0, 4
  %n.vec695 = and i64 %i.pi, 2147483644           ; 3 uses
  %cmp.n710 = icmp eq i64 %n.vec695, %i.pi
  %xtraiter878 = and i64 %i.pi, 1
  %lcmp.mod879.not = icmp eq i64 %xtraiter878, 0
  %i.pw = add nsw i64 %i.pi, -1
  %xtraiter881 = and i64 %i.pi, 3                 ; 3 uses
  %i.px = icmp ult i64 %i.pu, 3
  %unroll_iter886 = and i64 %i.pi, 2147483644
  %lcmp.mod883.not = icmp eq i64 %xtraiter881, 0
  %lcmp.mod885 = icmp ne i64 %xtraiter881, 0
  %min.iters.check658 = icmp ult i32 %0, 2
  %n.vec660 = and i64 %i.pi, 2147483646           ; 3 uses
  %cmp.n668 = icmp eq i64 %n.vec660, %i.pi
  %min.iters.check638 = icmp ult i32 %0, 4
  %n.vec644 = and i64 %i.pi, 2147483644           ; 3 uses
  %cmp.n655 = icmp eq i64 %n.vec644, %i.pi
  %xtraiter888 = and i64 %i.pi, 1
  %lcmp.mod889.not = icmp eq i64 %xtraiter888, 0
  %i.py = add nsw i64 %i.pi, -1
  %xtraiter891 = and i64 %i.pi, 3                 ; 3 uses
  %i.pz = icmp ult i64 %i.pu, 3
  %unroll_iter896 = and i64 %i.pi, 2147483644
  %lcmp.mod893.not = icmp eq i64 %xtraiter891, 0
  %lcmp.mod895 = icmp ne i64 %xtraiter891, 0
  %min.iters.check602 = icmp ult i32 %0, 4
  %n.vec612 = and i64 %i.pi, 2147483644           ; 3 uses
  %cmp.n627 = icmp eq i64 %n.vec612, %i.pi
  %xtraiter898 = and i64 %i.pi, 1
  %lcmp.mod899.not = icmp eq i64 %xtraiter898, 0
  %i.qa = add nsw i64 %i.pi, -1
  %min.iters.check565 = icmp ult i32 %0, 2
  %n.vec575 = and i64 %i.pi, 2147483646           ; 3 uses
  %cmp.n587 = icmp eq i64 %n.vec575, %i.pi
  %xtraiter900 = and i64 %i.pi, 1
  %lcmp.mod901.not = icmp eq i64 %xtraiter900, 0
  %i.qb = add nsw i64 %i.pi, -1
  %min.iters.check527 = icmp ult i32 %0, 2
  %n.vec536 = and i64 %i.pi, 2147483646           ; 3 uses
  %cmp.n548 = icmp eq i64 %n.vec536, %i.pi
  %xtraiter902 = and i64 %i.pi, 1
  %lcmp.mod903.not = icmp eq i64 %xtraiter902, 0
  %i.qc = add nsw i64 %i.pi, -1
  %xtraiter906 = and i64 %i.pi, 3                 ; 3 uses
  %i.qd = icmp ult i64 %i.pu, 3
  %unroll_iter912 = and i64 %i.pi, 2147483644
  %lcmp.mod908.not = icmp eq i64 %xtraiter906, 0
  %lcmp.mod911 = icmp ne i64 %xtraiter906, 0
  %min.iters.check501 = icmp ult i32 %0, 2
  %n.vec503 = and i64 %i.pi, 2147483646           ; 3 uses
  %cmp.n511 = icmp eq i64 %n.vec503, %i.pi
  %min.iters.check485 = icmp ult i32 %0, 4
  %n.vec487 = and i64 %i.pi, 2147483644           ; 3 uses
  %cmp.n498 = icmp eq i64 %n.vec487, %i.pi
  %xtraiter914 = and i64 %i.pi, 1
  %lcmp.mod915.not = icmp eq i64 %xtraiter914, 0
  %i.qe = add nsw i64 %i.pi, -1
  %min.iters.check469 = icmp ult i32 %0, 4
  %n.vec471 = and i64 %i.pi, 2147483644           ; 3 uses
  %cmp.n480 = icmp eq i64 %n.vec471, %i.pi
  %min.iters.check453 = icmp ult i32 %0, 4
  %n.vec455 = and i64 %i.pi, 2147483644           ; 3 uses
  %cmp.n466 = icmp eq i64 %n.vec455, %i.pi
  br label %bb.bi

bb.bi:                                            ; preds = %prolongate.exit, %bb.bh
  %.0141 = phi ptr [ %i.mk, %bb.bh ], [ %i.aon, %prolongate.exit ] ; 6 uses
  %.1 = phi ptr [ %.0140, %bb.bh ], [ %.0, %prolongate.exit ] ; 39 uses
  %i.qf = load i32, ptr %i.pb, align 4, !tbaa !22
  switch i32 %i.qf, label %._crit_edge [
    i32 0, label %bb.bj
    i32 2, label %bb.bn
    i32 3, label %bb.bk
  ]

._crit_edge:                                      ; preds = %bb.bi
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0141, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !216
  br label %bb.cu

bb.bj:                                            ; preds = %bb.bi
  %i.qg = getelementptr inbounds nuw i8, ptr %.0141, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !216
  call fastcc void @spring_electrical_embedding_slow(i32 noundef %0, ptr noundef %i.qh, ptr noundef nonnull %2, ptr noundef %.1, ptr noundef nonnull %7)
  br label %bb.el

bb.bk:                                            ; preds = %bb.bi
  %i.qi = getelementptr inbounds nuw i8, ptr %.0141, i64 8
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !216 ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !38
  %i.ql = icmp sgt i32 %i.qk, 10000
  br i1 %i.ql, label %bb.bl, label %bb.cu

bb.bl:                                            ; preds = %bb.bk
  %i.qm = load i8, ptr @Verbose, align 1
  %.not407 = icmp eq i8 %i.qm, 0
  br i1 %.not407, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.qn = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.qo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qn, ptr noundef nonnull @.str.12, i32 noundef 10000) #21 ; 0 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bi, %bb.bm, %bb.bl
  %i.qp = getelementptr inbounds nuw i8, ptr %.0141, i64 8
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !216 ; 5 uses
  %i.qr = load double, ptr %2, align 8, !tbaa !28 ; 2 uses
  %i.qs = load double, ptr %i.pc, align 8, !tbaa !29 ; 2 uses
  %i.qt = load i32, ptr %i.pd, align 8, !tbaa !17 ; 2 uses
  %i.qu = load double, ptr %i.pe, align 8, !tbaa !18
  %i.qv = load i8, ptr %i.pf, align 4
  %i.qw = and i8 %i.qv, 2
  %.not183.i = icmp eq i8 %i.qw, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  %i.qx = load i32, ptr %i.pg, align 4, !tbaa !16 ; 2 uses
  %i.qy = icmp eq ptr %i.qq, null
  %i.qz = icmp slt i32 %i.qt, 1
  %or.cond.i190 = select i1 %i.qy, i1 true, i1 %i.qz
  br i1 %or.cond.i190, label %spring_electrical_embedding_fast.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qq, i64 4
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !44 ; 6 uses
  %i.rc = icmp slt i32 %i.rb, 1
  br i1 %i.rc, label %spring_electrical_embedding_fast.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.rd = load i32, ptr %i.qq, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %9, i8 0, i64 184, i1 false), !alias.scope !217
  store i32 0, ptr %7, align 4, !tbaa !39
  %.not.i191 = icmp eq i32 %i.rd, %i.rb
  br i1 %.not.i191, label %bb.bq, label %.thread.i192

.thread.i192:                                     ; preds = %bb.bp
  store i32 -100, ptr %7, align 4, !tbaa !39
  store i32 %i.qx, ptr %i.pg, align 4, !tbaa !16
  br label %bb.ct

bb.bq:                                            ; preds = %bb.bp
  %i.re = call ptr @SparseMatrix_symmetrize(ptr noundef nonnull %i.qq, i1 noundef zeroext true) #22 ; 7 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 32 ; 2 uses
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !36 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 40 ; 2 uses
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !37
  %i.rj = load i8, ptr %i.pf, align 4
  %i.rk = trunc i8 %i.rj to i1
  br i1 %i.rk, label %.lr.ph.preheader.i200, label %.loopexit187.i

.lr.ph.preheader.i200:                            ; preds = %bb.bq
  %i.rl = load i32, ptr %i.ph, align 8, !tbaa !19
  call void @srand(i32 noundef %i.rl) #22
  %i.rm = mul i32 %i.rb, %0
  %smax.i = call i32 @llvm.smax.i32(i32 %i.rm, i32 1)
  %wide.trip.count.i201 = zext nneg i32 %smax.i to i64
  br label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %.lr.ph.i202, %.lr.ph.preheader.i200
  %indvars.iv.i203 = phi i64 [ 0, %.lr.ph.preheader.i200 ], [ %indvars.iv.next.i204, %.lr.ph.i202 ] ; 2 uses
  %i.rn = call double @drand() #22
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %indvars.iv.i203
  store double %i.rn, ptr %i.ro, align 8, !tbaa !12
  %indvars.iv.next.i204 = add nuw nsw i64 %indvars.iv.i203, 1 ; 2 uses
  %exitcond.not.i205 = icmp eq i64 %indvars.iv.next.i204, %wide.trip.count.i201
  br i1 %exitcond.not.i205, label %.loopexit187.i, label %.lr.ph.i202, !llvm.loop !133

.loopexit187.i:                                   ; preds = %.lr.ph.i202, %bb.bq
  %i.rp = fcmp olt double %i.qs, 0.000000e+00
  br i1 %i.rp, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %.loopexit187.i
  %i.rq = load ptr, ptr %i.rf, align 8, !tbaa !36 ; 3 uses
  %i.rr = load ptr, ptr %i.rh, align 8, !tbaa !37
  %i.rs = load i32, ptr %i.re, align 8, !tbaa !38 ; 3 uses
  %i.rt = sext i32 %i.rs to i64
  %i.ru = getelementptr inbounds [4 x i8], ptr %i.rq, i64 %i.rt ; 2 uses
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !39 ; 2 uses
  %i.rw = icmp eq i32 %i.rv, 0
  br i1 %i.rw, label %average_edge_length.exit.i, label %.preheader45.i.i

.preheader45.i.i:                                 ; preds = %bb.br
  %i.rx = icmp sgt i32 %i.rs, 0
  br i1 %i.rx, label %.lr.ph.split.us.preheader.i.i, label %._crit_edge.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.preheader45.i.i
  %wide.trip.count67.i.i = zext nneg i32 %i.rs to i64
  %.pre.i.i = load i32, ptr %i.rq, align 4, !tbaa !39
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.loopexit.us.i.i, %.lr.ph.split.us.preheader.i.i
  %i.ry = phi i32 [ %.pre.i.i, %.lr.ph.split.us.preheader.i.i ], [ %i.th, %.loopexit.us.i.i ] ; 2 uses
  %indvars.iv64.i.i = phi i64 [ 0, %.lr.ph.split.us.preheader.i.i ], [ %indvars.iv.next65.i.i, %.loopexit.us.i.i ] ; 2 uses
  %.04153.us.i.i = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader.i.i ], [ %.1.lcssa.us.i.i, %.loopexit.us.i.i ] ; 2 uses
  %indvars.iv.next65.i.i = add nuw nsw i64 %indvars.iv64.i.i, 1 ; 3 uses
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.rq, i64 %indvars.iv.next65.i.i ; 2 uses
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !39 ; 2 uses
  %i.sb = icmp slt i32 %i.ry, %i.sa
  br i1 %i.sb, label %.preheader.lr.ph.us.i.i, label %.loopexit.us.i.i

.preheader.lr.ph.us.i.i:                          ; preds = %.lr.ph.split.us.i.i
  %i.sc = mul nuw nsw i64 %indvars.iv64.i.i, %i.pi
  %i.sd = sext i32 %i.ry to i64
  %invariant.gep.i.i = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.sc ; 5 uses
  br label %.preheader.us.us.i.i

.preheader.us.us.i.i:                             ; preds = %._crit_edge.us.us.i.i, %.preheader.lr.ph.us.i.i
  %indvars.iv61.i.i = phi i64 [ %indvars.iv.next62.i.i, %._crit_edge.us.us.i.i ], [ %i.sd, %.preheader.lr.ph.us.i.i ] ; 2 uses
  %.148.us.us.i.i = phi double [ %i.td, %._crit_edge.us.us.i.i ], [ %.04153.us.i.i, %.preheader.lr.ph.us.i.i ]
  %i.se = getelementptr inbounds [4 x i8], ptr %i.rr, i64 %indvars.iv61.i.i
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !39
  %i.sg = mul nsw i32 %i.sf, %0
  %i.sh = sext i32 %i.sg to i64
  %i.si = getelementptr inbounds [8 x i8], ptr %.1, i64 %i.sh
  %i.sj = load double, ptr %i.si, align 8, !tbaa !12 ; 5 uses
  br i1 %i.pv, label %.epil.preheader, label %.preheader.us.us.i.i.new

.preheader.us.us.i.i.new:                         ; preds = %.preheader.us.us.i.i, %.preheader.us.us.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.preheader.us.us.i.i.new ], [ 0, %.preheader.us.us.i.i ] ; 5 uses
  %.04046.us.us.i.i = phi double [ %i.sy, %.preheader.us.us.i.i.new ], [ 0.000000e+00, %.preheader.us.us.i.i ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.us.i.i.new ], [ 0, %.preheader.us.us.i.i ]
  %gep.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.sk = load double, ptr %gep.i.i, align 8, !tbaa !12
  %i.sl = fsub double %i.sk, %i.sj                ; 2 uses
  %i.sm = call double @llvm.fmuladd.f64(double %i.sl, double %i.sl, double %.04046.us.us.i.i)
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %gep.i.i.1 = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.so = load double, ptr %gep.i.i.1, align 8, !tbaa !12
  %i.sp = fsub double %i.so, %i.sj                ; 2 uses
  %i.sq = call double @llvm.fmuladd.f64(double %i.sp, double %i.sp, double %i.sm)
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %gep.i.i.2 = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  %i.ss = load double, ptr %gep.i.i.2, align 8, !tbaa !12
  %i.st = fsub double %i.ss, %i.sj                ; 2 uses
  %i.su = call double @llvm.fmuladd.f64(double %i.st, double %i.st, double %i.sq)
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %gep.i.i.3 = getelementptr inbounds nuw i8, ptr %i.sv, i64 24
  %i.sw = load double, ptr %gep.i.i.3, align 8, !tbaa !12
  %i.sx = fsub double %i.sw, %i.sj                ; 2 uses
  %i.sy = call double @llvm.fmuladd.f64(double %i.sx, double %i.sx, double %i.su) ; 3 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.i.i.unr-lcssa, label %.preheader.us.us.i.i.new, !llvm.loop !0

._crit_edge.us.us.i.i.unr-lcssa:                  ; preds = %.preheader.us.us.i.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i.i.unr-lcssa, %.preheader.us.us.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.preheader.us.us.i.i ], [ %indvars.iv.next.i.i.3, %._crit_edge.us.us.i.i.unr-lcssa ]
  %.04046.us.us.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i.i ], [ %i.sy, %._crit_edge.us.us.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod877)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.next.i.i.epil, %bb.bs ], [ %indvars.iv.i.i.epil.init, %.epil.preheader ] ; 2 uses
  %.04046.us.us.i.i.epil = phi double [ %i.tb, %bb.bs ], [ %.04046.us.us.i.i.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.bs ], [ 0, %.epil.preheader ]
  %gep.i.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i.epil
  %i.sz = load double, ptr %gep.i.i.epil, align 8, !tbaa !12
  %i.ta = fsub double %i.sz, %i.sj                ; 2 uses
  %i.tb = call double @llvm.fmuladd.f64(double %i.ta, double %i.ta, double %.04046.us.us.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.i.i, label %bb.bs, !llvm.loop !134

._crit_edge.us.us.i.i:                            ; preds = %bb.bs, %._crit_edge.us.us.i.i.unr-lcssa
  %.lcssa = phi double [ %i.sy, %._crit_edge.us.us.i.i.unr-lcssa ], [ %i.tb, %bb.bs ]
  %i.tc = call double @sqrt(double noundef %.lcssa) #22
  %i.td = fadd double %.148.us.us.i.i, %i.tc      ; 2 uses
  %indvars.iv.next62.i.i = add nsw i64 %indvars.iv61.i.i, 1 ; 2 uses
  %i.te = load i32, ptr %i.rz, align 4, !tbaa !39 ; 2 uses
  %i.tf = sext i32 %i.te to i64
  %i.tg = icmp slt i64 %indvars.iv.next62.i.i, %i.tf
  br i1 %i.tg, label %.preheader.us.us.i.i, label %.loopexit.us.i.i, !llvm.loop !1

.loopexit.us.i.i:                                 ; preds = %._crit_edge.us.us.i.i, %.lr.ph.split.us.i.i
  %i.th = phi i32 [ %i.sa, %.lr.ph.split.us.i.i ], [ %i.te, %._crit_edge.us.us.i.i ]
  %.1.lcssa.us.i.i = phi double [ %.04153.us.i.i, %.lr.ph.split.us.i.i ], [ %i.td, %._crit_edge.us.us.i.i ] ; 2 uses
  %exitcond68.not.i.i = icmp eq i64 %indvars.iv.next65.i.i, %wide.trip.count67.i.i
  br i1 %exitcond68.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !2

._crit_edge.loopexit.i.i:                         ; preds = %.loopexit.us.i.i
  %.pre69.i.i = load i32, ptr %i.ru, align 4, !tbaa !39
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.preheader45.i.i
  %i.ti = phi i32 [ %i.rv, %.preheader45.i.i ], [ %.pre69.i.i, %._crit_edge.loopexit.i.i ]
  %.041.lcssa.i.i = phi double [ 0.000000e+00, %.preheader45.i.i ], [ %.1.lcssa.us.i.i, %._crit_edge.loopexit.i.i ]
  %i.tj = sitofp i32 %i.ti to double
  %i.tk = fdiv double %.041.lcssa.i.i, %i.tj
  br label %average_edge_length.exit.i

average_edge_length.exit.i:                       ; preds = %._crit_edge.i.i, %bb.br
  %.042.i.i = phi double [ %i.tk, %._crit_edge.i.i ], [ 1.000000e+00, %bb.br ] ; 2 uses
  store double %.042.i.i, ptr %i.pc, align 8, !tbaa !29
  br label %bb.bt

bb.bt:                                            ; preds = %average_edge_length.exit.i, %.loopexit187.i
  %.0154.i = phi double [ %.042.i.i, %average_edge_length.exit.i ], [ %i.qs, %.loopexit187.i ] ; 3 uses
  %i.tl = fcmp ult double %i.qr, 0.000000e+00
  br i1 %i.tl, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store double -1.000000e+00, ptr %2, align 8, !tbaa !28
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.0155.i = phi double [ -1.000000e+00, %bb.bu ], [ %i.qr, %bb.bt ] ; 3 uses
  %i.tm = fsub double 1.000000e+00, %.0155.i
  %i.tn = call double @pow(double noundef %.0154.i, double noundef %i.tm) #22
  %i.to = fsub double 2.000000e+00, %.0155.i
  %i.tp = fdiv double %i.to, 3.000000e+00
  %i.tq = call double @pow(double noundef 2.000000e-01, double noundef %i.tp) #22
  %i.tr = fdiv double %i.tq, %.0154.i             ; 4 uses
  %i.ts = mul nuw nsw i32 %i.rb, %0
  %i.tt = zext nneg i32 %i.ts to i64              ; 2 uses
  %i.tu = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2305843009213693953) %i.tt, i64 noundef 8) #23 ; 9 uses
  %i.tv = icmp eq ptr %i.tu, null
  br i1 %i.tv, label %bb.bw, label %gv_calloc.exit.preheader.i

gv_calloc.exit.preheader.i:                       ; preds = %bb.bv
  %i.tw = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %wide.trip.count220.i = zext nneg i32 %i.rb to i64 ; 3 uses
  %i.tx = mul i64 %i.ps, %wide.trip.count220.i    ; 2 uses
  %scevgep635 = getelementptr i8, ptr %i.tu, i64 %i.tx
  %scevgep636.a = getelementptr i8, ptr %.1, i64 %i.tx
  %broadcast.splatinsert698.a = insertelement <2 x double> poison, double %i.tr, i64 0
  %broadcast.splat699.a = shufflevector <2 x double> %broadcast.splatinsert698.a, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %bound0640 = icmp ult ptr %.1, %scevgep635
  %bound1641 = icmp ult ptr %i.tu, %scevgep636.a
  %found.conflict642 = and i1 %bound0640, %bound1641
  br label %.lr.ph196.preheader.i

bb.bw:                                            ; preds = %bb.bv
  %i.ty = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.tz = shl nuw nsw i64 %i.tt, 3
  %i.ua = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ty, ptr noundef nonnull @.str.25, i64 noundef %i.tz) #21 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

.lr.ph196.preheader.i:                            ; preds = %update_step.exit.i, %gv_calloc.exit.preheader.i
  %i.ub = phi i32 [ %i.zn, %update_step.exit.i ], [ 0, %gv_calloc.exit.preheader.i ] ; 4 uses
  %.val.i193 = phi i32 [ %.val242.i, %update_step.exit.i ], [ %i.qx, %gv_calloc.exit.preheader.i ] ; 13 uses
  %.0153.i = phi double [ %.0.i.i, %update_step.exit.i ], [ %i.qu, %gv_calloc.exit.preheader.i ] ; 9 uses
  %.0151.i = phi double [ %i.xl, %update_step.exit.i ], [ 0.000000e+00, %gv_calloc.exit.preheader.i ] ; 2 uses
  %.0150.i = phi i32 [ %i.yn, %update_step.exit.i ], [ 0, %gv_calloc.exit.preheader.i ]
  %i.uc = call ptr @QuadTree_new_from_point_list(i32 noundef range(i32 1, -2147483648) %0, i32 noundef %i.rb, i32 noundef %.val.i193, ptr noundef %.1) #22 ; 3 uses
  call void @QuadTree_get_repulsive_force(ptr noundef %i.uc, ptr noundef nonnull %i.tu, ptr noundef %.1, double noundef 6.000000e-01, double noundef %.0155.i, double noundef %i.tn, ptr noundef nonnull %i.g) #22
  %.pre.i194 = load i32, ptr %i.rg, align 4, !tbaa !39
  br label %.lr.ph196.i

.loopexit185.i:                                   ; preds = %.loopexit.i199, %.lr.ph196.i
  %i.ud = phi i32 [ %i.uk, %.lr.ph196.i ], [ %i.wn, %.loopexit.i199 ]
  %exitcond221.not.i = icmp eq i64 %indvars.iv.next218.i, %wide.trip.count220.i
  br i1 %exitcond221.not.i, label %.lr.ph203.i.preheader, label %.lr.ph196.i, !llvm.loop !135

.lr.ph203.i.preheader:                            ; preds = %.loopexit185.i
  %broadcast.splatinsert645 = insertelement <2 x double> poison, double %.0153.i, i64 0
  %broadcast.splat646 = shufflevector <2 x double> %broadcast.splatinsert645, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph203.i

.lr.ph196.i:                                      ; preds = %.loopexit185.i, %.lr.ph196.preheader.i
  %i.ue = phi i32 [ %.pre.i194, %.lr.ph196.preheader.i ], [ %i.ud, %.loopexit185.i ] ; 2 uses
  %indvars.iv217.i = phi i64 [ 0, %.lr.ph196.preheader.i ], [ %indvars.iv.next218.i, %.loopexit185.i ] ; 5 uses
  %i.uf = mul i64 %i.pt, %indvars.iv217.i
  %i.ug = add i64 %i.po, %i.uf                    ; 2 uses
  %scevgep682 = getelementptr i8, ptr %.1, i64 %i.ug
  %scevgep683 = getelementptr i8, ptr %i.tu, i64 %i.ug ; 2 uses
  %i.uh = mul i64 %indvars.iv217.i, %i.pi         ; 2 uses
  %i.ui = getelementptr [8 x i8], ptr %i.tu, i64 %i.uh ; 6 uses
  %indvars.iv.next218.i = add nuw nsw i64 %indvars.iv217.i, 1 ; 3 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %indvars.iv.next218.i ; 2 uses
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !39 ; 3 uses
  %i.ul = icmp slt i32 %i.ue, %i.uk
  br i1 %i.ul, label %.lr.ph194.preheader.i, label %.loopexit185.i

.lr.ph194.preheader.i:                            ; preds = %.lr.ph196.i
  %i.um = sext i32 %i.ue to i64
  %i.un = trunc nuw nsw i64 %indvars.iv217.i to i32
  %invariant.gep.i197 = getelementptr [8 x i8], ptr %.1, i64 %i.uh ; 5 uses
  %bound0690 = icmp ult ptr %i.ui, %scevgep682
  %bound1691 = icmp ult ptr %invariant.gep.i197, %scevgep683
  %found.conflict692 = and i1 %bound0690, %bound1691
  br label %.lr.ph194.i

.lr.ph194.i:                                      ; preds = %.loopexit.i199, %.lr.ph194.preheader.i
  %i.uo = phi i32 [ %i.uk, %.lr.ph194.preheader.i ], [ %i.wn, %.loopexit.i199 ]
  %indvars.iv214.i = phi i64 [ %i.um, %.lr.ph194.preheader.i ], [ %indvars.iv.next215.i, %.loopexit.i199 ] ; 2 uses
  %i.up = getelementptr inbounds [4 x i8], ptr %i.ri, i64 %indvars.iv214.i ; 2 uses
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !39 ; 2 uses
  %i.ur = zext i32 %i.uq to i64
  %i.us = icmp eq i64 %indvars.iv217.i, %i.ur
  br i1 %i.us, label %.loopexit.i199, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph194.i
  %i.ut = call double @distance(ptr noundef %.1, i32 noundef range(i32 1, -2147483648) %0, i32 noundef %i.un, i32 noundef %i.uq) #22 ; 4 uses
  %i.uu = load i32, ptr %i.up, align 4, !tbaa !39
  %i.uv = mul nsw i32 %i.uu, %0
  %i.uw = sext i32 %i.uv to i64                   ; 2 uses
  %invariant.gep264.i = getelementptr [8 x i8], ptr %.1, i64 %i.uw ; 5 uses
  br i1 %min.iters.check685, label %scalar.ph684.preheader, label %vector.memcheck686

vector.memcheck686:                               ; preds = %bb.bx
  %14 = add nsw i64 %i.uw, %i.pi
  %i.ux = shl nsw i64 %14, 3
  %i.uy = getelementptr i8, ptr %.1, i64 %i.ux
  %bound0687 = icmp ult ptr %i.ui, %i.uy
  %bound1688 = icmp ult ptr %invariant.gep264.i, %scevgep683
  %found.conflict689 = and i1 %bound0687, %bound1688
  %conflict.rdx693 = or i1 %found.conflict689, %found.conflict692
  br i1 %conflict.rdx693, label %scalar.ph684.preheader, label %vector.ph694

vector.ph694:                                     ; preds = %vector.memcheck686
  %broadcast.splatinsert696 = insertelement <2 x double> poison, double %i.ut, i64 0
  %broadcast.splat697 = shufflevector <2 x double> %broadcast.splatinsert696, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body700

vector.body700:                                   ; preds = %vector.body700, %vector.ph694
  %index701 = phi i64 [ 0, %vector.ph694 ], [ %index.next708, %vector.body700 ] ; 4 uses
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i197, i64 %index701 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  %wide.load702 = load <2 x double>, ptr %i.uz, align 8, !tbaa !12, !alias.scope !218
  %wide.load703 = load <2 x double>, ptr %i.va, align 8, !tbaa !12, !alias.scope !218
  %i.vb = getelementptr [8 x i8], ptr %invariant.gep264.i, i64 %index701 ; 2 uses
  %i.vc = getelementptr i8, ptr %i.vb, i64 16
  %wide.load704 = load <2 x double>, ptr %i.vb, align 8, !tbaa !12, !alias.scope !219
  %wide.load705 = load <2 x double>, ptr %i.vc, align 8, !tbaa !12, !alias.scope !219
  %i.vd = fsub <2 x double> %wide.load702, %wide.load704
  %i.ve = fsub <2 x double> %wide.load703, %wide.load705
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %index701 ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 16 ; 2 uses
  %wide.load706 = load <2 x double>, ptr %i.vf, align 8, !tbaa !12, !alias.scope !220, !noalias !221
  %wide.load707 = load <2 x double>, ptr %i.vg, align 8, !tbaa !12, !alias.scope !220, !noalias !221
  %i.vh = fneg <2 x double> %i.vd
  %i.vi = fneg <2 x double> %i.ve
  %i.vj = fmul <2 x double> %broadcast.splat699.a, %i.vh
  %i.vk = fmul <2 x double> %broadcast.splat699.a, %i.vi
  %i.vl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vj, <2 x double> %broadcast.splat697, <2 x double> %wide.load706)
  %i.vm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vk, <2 x double> %broadcast.splat697, <2 x double> %wide.load707)
  store <2 x double> %i.vl, ptr %i.vf, align 8, !tbaa !12, !alias.scope !220, !noalias !221
  store <2 x double> %i.vm, ptr %i.vg, align 8, !tbaa !12, !alias.scope !220, !noalias !221
  %index.next708 = add nuw i64 %index701, 4       ; 2 uses
  %i.vn = icmp eq i64 %index.next708, %n.vec695
  br i1 %i.vn, label %middle.block709, label %vector.body700, !llvm.loop !140

middle.block709:                                  ; preds = %vector.body700
  br i1 %cmp.n710, label %.loopexit.loopexit.i, label %scalar.ph684.preheader

scalar.ph684.preheader:                           ; preds = %vector.memcheck686, %bb.bx, %middle.block709
  %indvars.iv209.i.ph = phi i64 [ 0, %vector.memcheck686 ], [ 0, %bb.bx ], [ %n.vec695, %middle.block709 ] ; 6 uses
  br i1 %lcmp.mod879.not, label %scalar.ph684.prol.loopexit, label %scalar.ph684.prol

scalar.ph684.prol:                                ; preds = %scalar.ph684.preheader
  %gep.i198.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i197, i64 %indvars.iv209.i.ph
  %i.vo = load double, ptr %gep.i198.prol, align 8, !tbaa !12
  %gep265.i.prol = getelementptr [8 x i8], ptr %invariant.gep264.i, i64 %indvars.iv209.i.ph
  %i.vp = load double, ptr %gep265.i.prol, align 8, !tbaa !12
  %i.vq = fsub double %i.vo, %i.vp
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %indvars.iv209.i.ph ; 2 uses
  %i.vs = load double, ptr %i.vr, align 8, !tbaa !12
  %i.vt = fneg double %i.vq
  %i.vu = fmul double %i.tr, %i.vt
  %i.vv = call double @llvm.fmuladd.f64(double %i.vu, double %i.ut, double %i.vs)
  store double %i.vv, ptr %i.vr, align 8, !tbaa !12
  %indvars.iv.next210.i.prol = or disjoint i64 %indvars.iv209.i.ph, 1
  br label %scalar.ph684.prol.loopexit

scalar.ph684.prol.loopexit:                       ; preds = %scalar.ph684.prol, %scalar.ph684.preheader
  %indvars.iv209.i.unr = phi i64 [ %indvars.iv209.i.ph, %scalar.ph684.preheader ], [ %indvars.iv.next210.i.prol, %scalar.ph684.prol ]
  %i.vw = icmp eq i64 %indvars.iv209.i.ph, %i.pw
  br i1 %i.vw, label %.loopexit.loopexit.i, label %scalar.ph684

scalar.ph684:                                     ; preds = %scalar.ph684.prol.loopexit, %scalar.ph684
  %indvars.iv209.i = phi i64 [ %indvars.iv.next210.i.1, %scalar.ph684 ], [ %indvars.iv209.i.unr, %scalar.ph684.prol.loopexit ] ; 5 uses
  %gep.i198 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i197, i64 %indvars.iv209.i
  %i.vx = load double, ptr %gep.i198, align 8, !tbaa !12
  %gep265.i = getelementptr [8 x i8], ptr %invariant.gep264.i, i64 %indvars.iv209.i
  %i.vy = load double, ptr %gep265.i, align 8, !tbaa !12
  %i.vz = fsub double %i.vx, %i.vy
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %indvars.iv209.i ; 2 uses
  %i.wb = load double, ptr %i.wa, align 8, !tbaa !12
  %i.wc = fneg double %i.vz
  %i.wd = fmul double %i.tr, %i.wc
  %i.we = call double @llvm.fmuladd.f64(double %i.wd, double %i.ut, double %i.wb)
  store double %i.we, ptr %i.wa, align 8, !tbaa !12
  %indvars.iv.next210.i = add nuw nsw i64 %indvars.iv209.i, 1 ; 3 uses
  %gep.i198.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i197, i64 %indvars.iv.next210.i
  %i.wf = load double, ptr %gep.i198.1, align 8, !tbaa !12
  %gep265.i.1 = getelementptr [8 x i8], ptr %invariant.gep264.i, i64 %indvars.iv.next210.i
  %i.wg = load double, ptr %gep265.i.1, align 8, !tbaa !12
  %i.wh = fsub double %i.wf, %i.wg
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %indvars.iv.next210.i ; 2 uses
  %i.wj = load double, ptr %i.wi, align 8, !tbaa !12
  %i.wk = fneg double %i.wh
  %i.wl = fmul double %i.tr, %i.wk
  %i.wm = call double @llvm.fmuladd.f64(double %i.wl, double %i.ut, double %i.wj)
  store double %i.wm, ptr %i.wi, align 8, !tbaa !12
  %indvars.iv.next210.i.1 = add nuw nsw i64 %indvars.iv209.i, 2 ; 2 uses
  %exitcond213.not.i.1 = icmp eq i64 %indvars.iv.next210.i.1, %i.pi
  br i1 %exitcond213.not.i.1, label %.loopexit.loopexit.i, label %scalar.ph684, !llvm.loop !141

.loopexit.loopexit.i:                             ; preds = %scalar.ph684.prol.loopexit, %scalar.ph684, %middle.block709
  %.pre244.i = load i32, ptr %i.uj, align 4, !tbaa !39
  br label %.loopexit.i199

.loopexit.i199:                                   ; preds = %.loopexit.loopexit.i, %.lr.ph194.i
  %i.wn = phi i32 [ %.pre244.i, %.loopexit.loopexit.i ], [ %i.uo, %.lr.ph194.i ] ; 3 uses
  %indvars.iv.next215.i = add nsw i64 %indvars.iv214.i, 1 ; 2 uses
  %i.wo = sext i32 %i.wn to i64
  %i.wp = icmp slt i64 %indvars.iv.next215.i, %i.wo
  br i1 %i.wp, label %.lr.ph194.i, label %.loopexit185.i, !llvm.loop !142

.lr.ph203.i:                                      ; preds = %.lr.ph203.i.preheader, %.loopexit844.a
  %indvars.iv237.i = phi i64 [ %indvars.iv.next238.i, %.loopexit844.a ], [ 0, %.lr.ph203.i.preheader ] ; 2 uses
  %.1202.i = phi double [ %i.xl, %.loopexit844.a ], [ 0.000000e+00, %.lr.ph203.i.preheader ]
  %i.wq = mul nuw nsw i64 %indvars.iv237.i, %i.pi ; 2 uses
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %i.tu, i64 %i.wq ; 11 uses
  br i1 %i.px, label %.epil.preheader880, label %.lr.ph203.i.new

.lr.ph203.i.new:                                  ; preds = %.lr.ph203.i, %.lr.ph203.i.new
  %indvars.iv222.i = phi i64 [ %indvars.iv.next223.i.3, %.lr.ph203.i.new ], [ 0, %.lr.ph203.i ] ; 5 uses
  %.0152198.i = phi double [ %i.xg, %.lr.ph203.i.new ], [ 0.000000e+00, %.lr.ph203.i ]
  %niter887 = phi i64 [ %niter887.next.3, %.lr.ph203.i.new ], [ 0, %.lr.ph203.i ]
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %indvars.iv222.i
  %i.wt = load double, ptr %i.ws, align 8, !tbaa !12 ; 2 uses
  %i.wu = call double @llvm.fmuladd.f64(double %i.wt, double %i.wt, double %.0152198.i)
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %indvars.iv222.i
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  %i.wx = load double, ptr %i.ww, align 8, !tbaa !12 ; 2 uses
  %i.wy = call double @llvm.fmuladd.f64(double %i.wx, double %i.wx, double %i.wu)
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %indvars.iv222.i
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 16
  %i.xb = load double, ptr %i.xa, align 8, !tbaa !12 ; 2 uses
  %i.xc = call double @llvm.fmuladd.f64(double %i.xb, double %i.xb, double %i.wy)
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %indvars.iv222.i
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 24
  %i.xf = load double, ptr %i.xe, align 8, !tbaa !12 ; 2 uses
  %i.xg = call double @llvm.fmuladd.f64(double %i.xf, double %i.xf, double %i.xc) ; 3 uses
  %indvars.iv.next223.i.3 = add nuw nsw i64 %indvars.iv222.i, 4 ; 2 uses
  %niter887.next.3 = add i64 %niter887, 4         ; 2 uses
  %niter887.ncmp.3 = icmp eq i64 %niter887.next.3, %unroll_iter886
  br i1 %niter887.ncmp.3, label %.unr-lcssa, label %.lr.ph203.i.new, !llvm.loop !143

.unr-lcssa:                                       ; preds = %.lr.ph203.i.new
  br i1 %lcmp.mod883.not, label %.epilog-lcssa, label %.epil.preheader880

.epil.preheader880:                               ; preds = %.unr-lcssa, %.lr.ph203.i
  %indvars.iv222.i.epil.init = phi i64 [ 0, %.lr.ph203.i ], [ %indvars.iv.next223.i.3, %.unr-lcssa ]
  %.0152198.i.epil.init = phi double [ 0.000000e+00, %.lr.ph203.i ], [ %i.xg, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod885)
  br label %bb.by

bb.by:                                            ; preds = %bb.by, %.epil.preheader880
  %indvars.iv222.i.epil = phi i64 [ %indvars.iv222.i.epil.init, %.epil.preheader880 ], [ %indvars.iv.next223.i.epil, %bb.by ] ; 2 uses
  %.0152198.i.epil = phi double [ %.0152198.i.epil.init, %.epil.preheader880 ], [ %i.xj, %bb.by ]
  %epil.iter882 = phi i64 [ 0, %.epil.preheader880 ], [ %epil.iter882.next, %bb.by ]
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %indvars.iv222.i.epil
  %i.xi = load double, ptr %i.xh, align 8, !tbaa !12 ; 2 uses
  %i.xj = call double @llvm.fmuladd.f64(double %i.xi, double %i.xi, double %.0152198.i.epil) ; 2 uses
  %indvars.iv.next223.i.epil = add nuw nsw i64 %indvars.iv222.i.epil, 1
  %epil.iter882.next = add i64 %epil.iter882, 1   ; 2 uses
  %epil.iter882.cmp.not = icmp eq i64 %epil.iter882.next, %xtraiter881
  br i1 %epil.iter882.cmp.not, label %.epilog-lcssa, label %bb.by, !llvm.loop !144

.epilog-lcssa:                                    ; preds = %bb.by, %.unr-lcssa
  %.lcssa855 = phi double [ %i.xg, %.unr-lcssa ], [ %i.xj, %bb.by ]
  %i.xk = call double @sqrt(double noundef %.lcssa855) #22 ; 4 uses
  %i.xl = fadd double %.1202.i, %i.xk             ; 5 uses
  %i.xm = fcmp ogt double %i.xk, 0.000000e+00
  br i1 %i.xm, label %.preheader.i196.preheader, label %.loopexit184.i

.preheader.i196.preheader:                        ; preds = %.epilog-lcssa
  br i1 %min.iters.check658, label %.preheader.i196.preheader851, label %vector.ph659

vector.ph659:                                     ; preds = %.preheader.i196.preheader
  %broadcast.splatinsert661 = insertelement <2 x double> poison, double %i.xk, i64 0
  %broadcast.splat662 = shufflevector <2 x double> %broadcast.splatinsert661, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body663

vector.body663:                                   ; preds = %vector.body663, %vector.ph659
  %index664 = phi i64 [ 0, %vector.ph659 ], [ %index.next666, %vector.body663 ] ; 2 uses
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %index664 ; 2 uses
  %wide.load665 = load <2 x double>, ptr %i.xn, align 8, !tbaa !12
  %i.xo = fdiv <2 x double> %wide.load665, %broadcast.splat662
  store <2 x double> %i.xo, ptr %i.xn, align 8, !tbaa !12
  %index.next666 = add nuw i64 %index664, 2       ; 2 uses
  %i.xp = icmp eq i64 %index.next666, %n.vec660
  br i1 %i.xp, label %middle.block667, label %vector.body663, !llvm.loop !145

middle.block667:                                  ; preds = %vector.body663
  br i1 %cmp.n668, label %.loopexit184.i, label %.preheader.i196.preheader851

.preheader.i196.preheader851:                     ; preds = %.preheader.i196.preheader, %middle.block667
  %indvars.iv227.i.ph = phi i64 [ 0, %.preheader.i196.preheader ], [ %n.vec660, %middle.block667 ]
  br label %.preheader.i196

.preheader.i196:                                  ; preds = %.preheader.i196.preheader851, %.preheader.i196
  %indvars.iv227.i = phi i64 [ %indvars.iv.next228.i, %.preheader.i196 ], [ %indvars.iv227.i.ph, %.preheader.i196.preheader851 ] ; 2 uses
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %indvars.iv227.i ; 2 uses
  %i.xr = load double, ptr %i.xq, align 8, !tbaa !12
  %i.xs = fdiv double %i.xr, %i.xk
  store double %i.xs, ptr %i.xq, align 8, !tbaa !12
  %indvars.iv.next228.i = add nuw nsw i64 %indvars.iv227.i, 1 ; 2 uses
  %exitcond231.not.i = icmp eq i64 %indvars.iv.next228.i, %i.pi
  br i1 %exitcond231.not.i, label %.loopexit184.i, label %.preheader.i196, !llvm.loop !146

end_hunk_0
begin_hunk_1_@multilevel_spring_electrical_embedding:bb.a
  br i1 %i.aao, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(180) %.sroa.5.0..sroa_idx.i, i8 0, i64 180, i1 false)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.val328.i = phi i32 [ %i.aah, %bb.cx ], [ 0, %bb.cw ]
  store i32 0, ptr %7, align 4, !tbaa !39
  %.not.i207 = icmp eq i32 %i.aak, %i.aam
  br i1 %.not.i207, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  store i32 -100, ptr %7, align 4, !tbaa !39
  br label %bb.eg

bb.da:                                            ; preds = %bb.cy
  %i.aap = call ptr @SparseMatrix_symmetrize(ptr noundef nonnull %i.aaa, i1 noundef zeroext true) #22 ; 6 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 32 ; 2 uses
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !36 ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aap, i64 40 ; 2 uses
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !37
  %i.aau = load i8, ptr %i.pf, align 4
  %i.aav = trunc i8 %i.aau to i1
  br i1 %i.aav, label %.lr.ph.preheader.i253, label %.loopexit241.i

.lr.ph.preheader.i253:                            ; preds = %bb.da
  %i.aaw = load i32, ptr %i.ph, align 8, !tbaa !19
  call void @srand(i32 noundef %i.aaw) #22
  %i.aax = mul i32 %i.aak, %0
  %smax.i254 = call i32 @llvm.smax.i32(i32 %i.aax, i32 1)
  %wide.trip.count.i255 = zext nneg i32 %smax.i254 to i64
  br label %.lr.ph.i256

.lr.ph.i256:                                      ; preds = %.lr.ph.i256, %.lr.ph.preheader.i253
  %indvars.iv.i257 = phi i64 [ 0, %.lr.ph.preheader.i253 ], [ %indvars.iv.next.i258, %.lr.ph.i256 ] ; 2 uses
  %i.aay = call double @drand() #22
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %indvars.iv.i257
  store double %i.aay, ptr %i.aaz, align 8, !tbaa !12
  %indvars.iv.next.i258 = add nuw nsw i64 %indvars.iv.i257, 1 ; 2 uses
  %exitcond.not.i259 = icmp eq i64 %indvars.iv.next.i258, %wide.trip.count.i255
  br i1 %exitcond.not.i259, label %.loopexit241.i, label %.lr.ph.i256, !llvm.loop !154

.loopexit241.i:                                   ; preds = %.lr.ph.i256, %bb.da
  %i.aba = fcmp olt double %i.aac, 0.000000e+00
  br i1 %i.aba, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %.loopexit241.i
  %i.abb = load ptr, ptr %i.aaq, align 8, !tbaa !36 ; 3 uses
  %i.abc = load ptr, ptr %i.aas, align 8, !tbaa !37
  %i.abd = load i32, ptr %i.aap, align 8, !tbaa !38 ; 3 uses
  %i.abe = sext i32 %i.abd to i64
  %i.abf = getelementptr inbounds [4 x i8], ptr %i.abb, i64 %i.abe ; 2 uses
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !39 ; 2 uses
  %i.abh = icmp eq i32 %i.abg, 0
  br i1 %i.abh, label %average_edge_length.exit.i227, label %.preheader45.i.i224

.preheader45.i.i224:                              ; preds = %bb.db
  %i.abi = icmp sgt i32 %i.abd, 0
  br i1 %i.abi, label %.lr.ph.split.us.preheader.i.i229, label %._crit_edge.i.i225

.lr.ph.split.us.preheader.i.i229:                 ; preds = %.preheader45.i.i224
  %wide.trip.count67.i.i230 = zext nneg i32 %i.abd to i64
  %.pre.i.i231 = load i32, ptr %i.abb, align 4, !tbaa !39
  br label %.lr.ph.split.us.i.i232

.lr.ph.split.us.i.i232:                           ; preds = %.loopexit.us.i.i236, %.lr.ph.split.us.preheader.i.i229
  %i.abj = phi i32 [ %.pre.i.i231, %.lr.ph.split.us.preheader.i.i229 ], [ %i.acs, %.loopexit.us.i.i236 ] ; 2 uses
  %indvars.iv64.i.i233 = phi i64 [ 0, %.lr.ph.split.us.preheader.i.i229 ], [ %indvars.iv.next65.i.i235, %.loopexit.us.i.i236 ] ; 2 uses
  %.04153.us.i.i234 = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader.i.i229 ], [ %.1.lcssa.us.i.i237, %.loopexit.us.i.i236 ] ; 2 uses
  %indvars.iv.next65.i.i235 = add nuw nsw i64 %indvars.iv64.i.i233, 1 ; 3 uses
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %indvars.iv.next65.i.i235 ; 2 uses
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !39 ; 2 uses
  %i.abm = icmp slt i32 %i.abj, %i.abl
  br i1 %i.abm, label %.preheader.lr.ph.us.i.i241, label %.loopexit.us.i.i236

.preheader.lr.ph.us.i.i241:                       ; preds = %.lr.ph.split.us.i.i232
  %i.abn = mul nuw nsw i64 %indvars.iv64.i.i233, %i.pi
  %i.abo = sext i32 %i.abj to i64
  %invariant.gep.i.i242 = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.abn ; 5 uses
  br label %.preheader.us.us.i.i243

.preheader.us.us.i.i243:                          ; preds = %._crit_edge.us.us.i.i251, %.preheader.lr.ph.us.i.i241
  %indvars.iv61.i.i244 = phi i64 [ %indvars.iv.next62.i.i252, %._crit_edge.us.us.i.i251 ], [ %i.abo, %.preheader.lr.ph.us.i.i241 ] ; 2 uses
  %.148.us.us.i.i245 = phi double [ %i.aco, %._crit_edge.us.us.i.i251 ], [ %.04153.us.i.i234, %.preheader.lr.ph.us.i.i241 ]
  %i.abp = getelementptr inbounds [4 x i8], ptr %i.abc, i64 %indvars.iv61.i.i244
  %i.abq = load i32, ptr %i.abp, align 4, !tbaa !39
  %i.abr = mul nsw i32 %i.abq, %0
  %i.abs = sext i32 %i.abr to i64
  %i.abt = getelementptr inbounds [8 x i8], ptr %.1, i64 %i.abs
  %i.abu = load double, ptr %i.abt, align 8, !tbaa !12 ; 5 uses
  br i1 %i.pz, label %.epil.preheader890, label %.preheader.us.us.i.i243.new

.preheader.us.us.i.i243.new:                      ; preds = %.preheader.us.us.i.i243, %.preheader.us.us.i.i243.new
  %indvars.iv.i.i246 = phi i64 [ %indvars.iv.next.i.i249.3, %.preheader.us.us.i.i243.new ], [ 0, %.preheader.us.us.i.i243 ] ; 5 uses
  %.04046.us.us.i.i247 = phi double [ %i.acj, %.preheader.us.us.i.i243.new ], [ 0.000000e+00, %.preheader.us.us.i.i243 ]
  %niter897 = phi i64 [ %niter897.next.3, %.preheader.us.us.i.i243.new ], [ 0, %.preheader.us.us.i.i243 ]
  %gep.i.i248 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i242, i64 %indvars.iv.i.i246
  %i.abv = load double, ptr %gep.i.i248, align 8, !tbaa !12
  %i.abw = fsub double %i.abv, %i.abu             ; 2 uses
  %i.abx = call double @llvm.fmuladd.f64(double %i.abw, double %i.abw, double %.04046.us.us.i.i247)
  %i.aby = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i242, i64 %indvars.iv.i.i246
  %gep.i.i248.1 = getelementptr inbounds nuw i8, ptr %i.aby, i64 8
  %i.abz = load double, ptr %gep.i.i248.1, align 8, !tbaa !12
  %i.aca = fsub double %i.abz, %i.abu             ; 2 uses
  %i.acb = call double @llvm.fmuladd.f64(double %i.aca, double %i.aca, double %i.abx)
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i242, i64 %indvars.iv.i.i246
  %gep.i.i248.2 = getelementptr inbounds nuw i8, ptr %i.acc, i64 16
  %i.acd = load double, ptr %gep.i.i248.2, align 8, !tbaa !12
  %i.ace = fsub double %i.acd, %i.abu             ; 2 uses
  %i.acf = call double @llvm.fmuladd.f64(double %i.ace, double %i.ace, double %i.acb)
  %i.acg = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i242, i64 %indvars.iv.i.i246
  %gep.i.i248.3 = getelementptr inbounds nuw i8, ptr %i.acg, i64 24
  %i.ach = load double, ptr %gep.i.i248.3, align 8, !tbaa !12
  %i.aci = fsub double %i.ach, %i.abu             ; 2 uses
  %i.acj = call double @llvm.fmuladd.f64(double %i.aci, double %i.aci, double %i.acf) ; 3 uses
  %indvars.iv.next.i.i249.3 = add nuw nsw i64 %indvars.iv.i.i246, 4 ; 2 uses
  %niter897.next.3 = add i64 %niter897, 4         ; 2 uses
  %niter897.ncmp.3 = icmp eq i64 %niter897.next.3, %unroll_iter896
  br i1 %niter897.ncmp.3, label %._crit_edge.us.us.i.i251.unr-lcssa, label %.preheader.us.us.i.i243.new, !llvm.loop !0

._crit_edge.us.us.i.i251.unr-lcssa:               ; preds = %.preheader.us.us.i.i243.new
  br i1 %lcmp.mod893.not, label %._crit_edge.us.us.i.i251, label %.epil.preheader890

.epil.preheader890:                               ; preds = %._crit_edge.us.us.i.i251.unr-lcssa, %.preheader.us.us.i.i243
  %indvars.iv.i.i246.epil.init = phi i64 [ 0, %.preheader.us.us.i.i243 ], [ %indvars.iv.next.i.i249.3, %._crit_edge.us.us.i.i251.unr-lcssa ]
  %.04046.us.us.i.i247.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i.i243 ], [ %i.acj, %._crit_edge.us.us.i.i251.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod895)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dc, %.epil.preheader890
  %indvars.iv.i.i246.epil = phi i64 [ %indvars.iv.next.i.i249.epil, %bb.dc ], [ %indvars.iv.i.i246.epil.init, %.epil.preheader890 ] ; 2 uses
  %.04046.us.us.i.i247.epil = phi double [ %i.acm, %bb.dc ], [ %.04046.us.us.i.i247.epil.init, %.epil.preheader890 ]
  %epil.iter892 = phi i64 [ %epil.iter892.next, %bb.dc ], [ 0, %.epil.preheader890 ]
  %gep.i.i248.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i242, i64 %indvars.iv.i.i246.epil
  %i.ack = load double, ptr %gep.i.i248.epil, align 8, !tbaa !12
  %i.acl = fsub double %i.ack, %i.abu             ; 2 uses
  %i.acm = call double @llvm.fmuladd.f64(double %i.acl, double %i.acl, double %.04046.us.us.i.i247.epil) ; 2 uses
  %indvars.iv.next.i.i249.epil = add nuw nsw i64 %indvars.iv.i.i246.epil, 1
  %epil.iter892.next = add i64 %epil.iter892, 1   ; 2 uses
  %epil.iter892.cmp.not = icmp eq i64 %epil.iter892.next, %xtraiter891
  br i1 %epil.iter892.cmp.not, label %._crit_edge.us.us.i.i251, label %bb.dc, !llvm.loop !155

._crit_edge.us.us.i.i251:                         ; preds = %bb.dc, %._crit_edge.us.us.i.i251.unr-lcssa
  %.lcssa857 = phi double [ %i.acj, %._crit_edge.us.us.i.i251.unr-lcssa ], [ %i.acm, %bb.dc ]
  %i.acn = call double @sqrt(double noundef %.lcssa857) #22
  %i.aco = fadd double %.148.us.us.i.i245, %i.acn ; 2 uses
  %indvars.iv.next62.i.i252 = add nsw i64 %indvars.iv61.i.i244, 1 ; 2 uses
  %i.acp = load i32, ptr %i.abk, align 4, !tbaa !39 ; 2 uses
  %i.acq = sext i32 %i.acp to i64
  %i.acr = icmp slt i64 %indvars.iv.next62.i.i252, %i.acq
  br i1 %i.acr, label %.preheader.us.us.i.i243, label %.loopexit.us.i.i236, !llvm.loop !1

.loopexit.us.i.i236:                              ; preds = %._crit_edge.us.us.i.i251, %.lr.ph.split.us.i.i232
  %i.acs = phi i32 [ %i.abl, %.lr.ph.split.us.i.i232 ], [ %i.acp, %._crit_edge.us.us.i.i251 ]
  %.1.lcssa.us.i.i237 = phi double [ %.04153.us.i.i234, %.lr.ph.split.us.i.i232 ], [ %i.aco, %._crit_edge.us.us.i.i251 ] ; 2 uses
  %exitcond68.not.i.i238 = icmp eq i64 %indvars.iv.next65.i.i235, %wide.trip.count67.i.i230
  br i1 %exitcond68.not.i.i238, label %._crit_edge.loopexit.i.i239, label %.lr.ph.split.us.i.i232, !llvm.loop !2

._crit_edge.loopexit.i.i239:                      ; preds = %.loopexit.us.i.i236
  %.pre69.i.i240 = load i32, ptr %i.abf, align 4, !tbaa !39
  br label %._crit_edge.i.i225

._crit_edge.i.i225:                               ; preds = %._crit_edge.loopexit.i.i239, %.preheader45.i.i224
  %i.act = phi i32 [ %i.abg, %.preheader45.i.i224 ], [ %.pre69.i.i240, %._crit_edge.loopexit.i.i239 ]
  %.041.lcssa.i.i226 = phi double [ 0.000000e+00, %.preheader45.i.i224 ], [ %.1.lcssa.us.i.i237, %._crit_edge.loopexit.i.i239 ]
  %i.acu = sitofp i32 %i.act to double
  %i.acv = fdiv double %.041.lcssa.i.i226, %i.acu
  br label %average_edge_length.exit.i227

average_edge_length.exit.i227:                    ; preds = %._crit_edge.i.i225, %bb.db
  %.042.i.i228 = phi double [ %i.acv, %._crit_edge.i.i225 ], [ 1.000000e+00, %bb.db ] ; 2 uses
  store double %.042.i.i228, ptr %i.pc, align 8, !tbaa !29
  br label %bb.dd

bb.dd:                                            ; preds = %average_edge_length.exit.i227, %.loopexit241.i
  %.0208.i = phi double [ %.042.i.i228, %average_edge_length.exit.i227 ], [ %i.aac, %.loopexit241.i ] ; 2 uses
  %i.acw = fcmp ult double %i.aab, 0.000000e+00
  br i1 %i.acw, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  store double -1.000000e+00, ptr %2, align 8, !tbaa !28
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.0209.i = phi double [ -1.000000e+00, %bb.de ], [ %i.aab, %bb.dd ] ; 2 uses
  %i.acx = fsub double 1.000000e+00, %.0209.i     ; 3 uses
  %i.acy = call double @pow(double noundef %.0208.i, double noundef %i.acx) #22 ; 5 uses
  %i.acz = fsub double 2.000000e+00, %.0209.i
  %i.ada = fdiv double %i.acz, 3.000000e+00
  %i.adb = call double @pow(double noundef 2.000000e-01, double noundef %i.ada) #22
  %i.adc = fdiv double %i.adb, %.0208.i           ; 4 uses
  %i.add = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2305843009213693953) %i.pi, i64 noundef 8) #23 ; 33 uses
  %i.ade = icmp eq ptr %i.add, null
  br i1 %i.ade, label %bb.dg, label %gv_calloc.exit.preheader.i208

gv_calloc.exit.preheader.i208:                    ; preds = %bb.df
  %i.adf = uitofp nneg i32 %i.aak to double
  %wide.trip.count324.i = zext i32 %i.aak to i64  ; 3 uses
  %scevgep = getelementptr i8, ptr %i.add, i64 %i.po ; 5 uses
  %scevgep524.a = getelementptr i8, ptr %.1, i64 %i.po
  %scevgep561 = getelementptr i8, ptr %.1, i64 %i.po
  %i.adg = mul i64 %i.pq, %wide.trip.count324.i
  %scevgep563.a = getelementptr i8, ptr %.1, i64 %i.adg
  %i.adh = insertelement <2 x double> poison, double %i.adf, i64 0
  %i.adi = shufflevector <2 x double> %i.adh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adj = getelementptr i8, ptr %.1, i64 %i.po
  %broadcast.splatinsert615 = insertelement <2 x double> poison, double %i.adc, i64 0
  %broadcast.splat616 = shufflevector <2 x double> %broadcast.splatinsert615, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.adk = insertelement <2 x ptr> poison, ptr %i.add, i64 0
  %i.adl = shufflevector <2 x ptr> %i.adk, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.adm = insertelement <2 x ptr> poison, ptr %scevgep563.a, i64 0
  %i.adn = insertelement <2 x ptr> poison, ptr %.1, i64 0
  %i.ado = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %i.adp = shufflevector <2 x ptr> %i.ado, <2 x ptr> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert578 = insertelement <2 x double> poison, double %i.acy, i64 0
  %broadcast.splat579 = shufflevector <2 x double> %broadcast.splatinsert578, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adq = insertelement <2 x ptr> poison, ptr %i.add, i64 0
  %i.adr = shufflevector <2 x ptr> %i.adq, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.ads = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %i.adt = shufflevector <2 x ptr> %i.ads, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %gv_calloc.exit.i209

bb.dg:                                            ; preds = %bb.df
  %i.adu = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.adv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.adu, ptr noundef nonnull @.str.25, i64 noundef %i.po) #21 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

gv_calloc.exit.i209:                              ; preds = %update_step.exit.i216, %gv_calloc.exit.preheader.i208
  %i.adw = phi i32 [ %.val326.i, %update_step.exit.i216 ], [ %.val328.i, %gv_calloc.exit.preheader.i208 ] ; 12 uses
  %.0207.i = phi double [ %.0.i.i217, %update_step.exit.i216 ], [ %i.aae, %gv_calloc.exit.preheader.i208 ] ; 8 uses
  %.0203.i = phi double [ %i.alv, %update_step.exit.i216 ], [ 0.000000e+00, %gv_calloc.exit.preheader.i208 ] ; 2 uses
  %.0202.i = phi i32 [ %i.adx, %update_step.exit.i216 ], [ 0, %gv_calloc.exit.preheader.i208 ]
  %.0196.i = phi i32 [ %.1.i210, %update_step.exit.i216 ], [ %i.aah, %gv_calloc.exit.preheader.i208 ]
  %i.adx = add nuw nsw i32 %.0202.i, 1            ; 2 uses
  br i1 %i.aao, label %bb.dh, label %.preheader240.preheader.i

bb.dh:                                            ; preds = %gv_calloc.exit.i209
  %i.ady = call ptr @QuadTree_new_from_point_list(i32 noundef range(i32 1, -2147483648) %0, i32 noundef %i.aak, i32 noundef %i.adw, ptr noundef %.1) #22
  br label %.preheader240.preheader.i

.preheader240.preheader.i:                        ; preds = %bb.dh, %gv_calloc.exit.i209
  %.1.i210 = phi i32 [ %i.adw, %bb.dh ], [ %.0196.i, %gv_calloc.exit.i209 ] ; 3 uses
  %.0.i211 = phi ptr [ %i.ady, %bb.dh ], [ null, %gv_calloc.exit.i209 ] ; 3 uses
  %broadcast.splatinsert488 = insertelement <2 x double> poison, double %.0207.i, i64 0
  %broadcast.splat489 = shufflevector <2 x double> %broadcast.splatinsert488, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader240.i

.loopexit235.i:                                   ; preds = %scalar.ph484.prol.loopexit, %scalar.ph484, %middle.block497
  %exitcond325.not.i = icmp eq i64 %indvars.iv.next322.i, %wide.trip.count324.i
  br i1 %exitcond325.not.i, label %._crit_edge266.i, label %.preheader240.i, !llvm.loop !156

.preheader240.i:                                  ; preds = %.loopexit235.i, %.preheader240.preheader.i
  %indvars.iv321.i = phi i64 [ 0, %.preheader240.preheader.i ], [ %indvars.iv.next322.i, %.loopexit235.i ] ; 13 uses
  %.1204263.i = phi double [ 0.000000e+00, %.preheader240.preheader.i ], [ %i.alv, %.loopexit235.i ]
  %i.adz = phi <2 x double> [ zeroinitializer, %.preheader240.preheader.i ], [ %i.alb, %.loopexit235.i ] ; 2 uses
  %i.aea = mul i64 %i.pr, %indvars.iv321.i
  %scevgep600 = getelementptr i8, ptr %i.adj, i64 %i.aea
  %i.aeb = trunc i64 %indvars.iv321.i to i32
  %i.aec = mul i32 %0, %i.aeb
  %i.aed = zext i32 %i.aec to i64
  %i.aee = shl nuw nsw i64 %i.aed, 3
  %scevgep562 = getelementptr i8, ptr %scevgep561, i64 %i.aee
  %i.aef = trunc i64 %indvars.iv321.i to i32
  %i.aeg = mul i32 %0, %i.aef
  %i.aeh = zext i32 %i.aeg to i64
  %i.aei = shl nuw nsw i64 %i.aeh, 3
  %scevgep525 = getelementptr i8, ptr %scevgep524.a, i64 %i.aei
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.add, i8 0, i64 %i.po, i1 false), !tbaa !12
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.aar, i64 %indvars.iv321.i
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !39 ; 2 uses
  %indvars.iv.next322.i = add nuw nsw i64 %indvars.iv321.i, 1 ; 3 uses
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.aar, i64 %indvars.iv.next322.i ; 2 uses
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !39 ; 2 uses
  %i.aen = icmp slt i32 %i.aek, %i.aem
  br i1 %i.aen, label %.lr.ph249.i, label %._crit_edge.i212

.lr.ph249.i:                                      ; preds = %.preheader240.i
  %i.aeo = mul i64 %indvars.iv321.i, %i.pi
  %i.aep = sext i32 %i.aek to i64
  %i.aeq = trunc nuw nsw i64 %indvars.iv321.i to i32
  %invariant.gep.i221 = getelementptr [8 x i8], ptr %.1, i64 %i.aeo ; 5 uses
  %bound0607 = icmp ult ptr %i.add, %scevgep600
  %bound1608 = icmp ult ptr %invariant.gep.i221, %scevgep
  %found.conflict609 = and i1 %bound0607, %bound1608
  br label %bb.di

bb.di:                                            ; preds = %.loopexit234.i, %.lr.ph249.i
  %i.aer = phi i32 [ %i.aem, %.lr.ph249.i ], [ %i.agq, %.loopexit234.i ]
  %indvars.iv283.i = phi i64 [ %i.aep, %.lr.ph249.i ], [ %indvars.iv.next284.i, %.loopexit234.i ] ; 2 uses
  %i.aes = getelementptr inbounds [4 x i8], ptr %i.aat, i64 %indvars.iv283.i ; 2 uses
  %i.aet = load i32, ptr %i.aes, align 4, !tbaa !39 ; 2 uses
  %i.aeu = zext i32 %i.aet to i64
  %i.aev = icmp eq i64 %indvars.iv321.i, %i.aeu
  br i1 %i.aev, label %.loopexit234.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.aew = call double @distance(ptr noundef %.1, i32 noundef range(i32 1, -2147483648) %0, i32 noundef %i.aeq, i32 noundef %i.aet) #22 ; 4 uses
  %i.aex = load i32, ptr %i.aes, align 4, !tbaa !39
  %i.aey = mul nsw i32 %i.aex, %0
  %i.aez = sext i32 %i.aey to i64                 ; 2 uses
  %invariant.gep352.i = getelementptr [8 x i8], ptr %.1, i64 %i.aez ; 5 uses
  br i1 %min.iters.check602, label %scalar.ph601.preheader, label %vector.memcheck603

vector.memcheck603:                               ; preds = %bb.dj
  %15 = add nsw i64 %i.aez, %i.pi
  %i.afa = shl nsw i64 %15, 3
  %i.afb = getelementptr i8, ptr %.1, i64 %i.afa
  %bound0604 = icmp ult ptr %i.add, %i.afb
  %bound1605 = icmp ult ptr %invariant.gep352.i, %scevgep
  %found.conflict606 = and i1 %bound0604, %bound1605
  %conflict.rdx610 = or i1 %found.conflict606, %found.conflict609
  br i1 %conflict.rdx610, label %scalar.ph601.preheader, label %vector.ph611

vector.ph611:                                     ; preds = %vector.memcheck603
  %broadcast.splatinsert613 = insertelement <2 x double> poison, double %i.aew, i64 0
  %broadcast.splat614 = shufflevector <2 x double> %broadcast.splatinsert613, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body617

vector.body617:                                   ; preds = %vector.body617, %vector.ph611
  %index618 = phi i64 [ 0, %vector.ph611 ], [ %index.next625, %vector.body617 ] ; 4 uses
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i221, i64 %index618 ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 16
  %wide.load619 = load <2 x double>, ptr %i.afc, align 8, !tbaa !12, !alias.scope !225
  %wide.load620 = load <2 x double>, ptr %i.afd, align 8, !tbaa !12, !alias.scope !225
  %i.afe = getelementptr [8 x i8], ptr %invariant.gep352.i, i64 %index618 ; 2 uses
  %i.aff = getelementptr i8, ptr %i.afe, i64 16
  %wide.load621 = load <2 x double>, ptr %i.afe, align 8, !tbaa !12, !alias.scope !226
  %wide.load622 = load <2 x double>, ptr %i.aff, align 8, !tbaa !12, !alias.scope !226
  %i.afg = fsub <2 x double> %wide.load619, %wide.load621
  %i.afh = fsub <2 x double> %wide.load620, %wide.load622
  %i.afi = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %index618 ; 3 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 16 ; 2 uses
  %wide.load623 = load <2 x double>, ptr %i.afi, align 8, !tbaa !12, !alias.scope !227, !noalias !228
  %wide.load624 = load <2 x double>, ptr %i.afj, align 8, !tbaa !12, !alias.scope !227, !noalias !228
  %i.afk = fneg <2 x double> %i.afg
  %i.afl = fneg <2 x double> %i.afh
  %i.afm = fmul <2 x double> %broadcast.splat616, %i.afk
  %i.afn = fmul <2 x double> %broadcast.splat616, %i.afl
  %i.afo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afm, <2 x double> %broadcast.splat614, <2 x double> %wide.load623)
  %i.afp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afn, <2 x double> %broadcast.splat614, <2 x double> %wide.load624)
  store <2 x double> %i.afo, ptr %i.afi, align 8, !tbaa !12, !alias.scope !227, !noalias !228
  store <2 x double> %i.afp, ptr %i.afj, align 8, !tbaa !12, !alias.scope !227, !noalias !228
  %index.next625 = add nuw i64 %index618, 4       ; 2 uses
  %i.afq = icmp eq i64 %index.next625, %n.vec612
  br i1 %i.afq, label %middle.block626, label %vector.body617, !llvm.loop !161

middle.block626:                                  ; preds = %vector.body617
  br i1 %cmp.n627, label %.loopexit234.loopexit.i, label %scalar.ph601.preheader

scalar.ph601.preheader:                           ; preds = %vector.memcheck603, %bb.dj, %middle.block626
  %indvars.iv278.i.ph = phi i64 [ 0, %vector.memcheck603 ], [ 0, %bb.dj ], [ %n.vec612, %middle.block626 ] ; 6 uses
  br i1 %lcmp.mod899.not, label %scalar.ph601.prol.loopexit, label %scalar.ph601.prol

scalar.ph601.prol:                                ; preds = %scalar.ph601.preheader
  %gep.i222.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i221, i64 %indvars.iv278.i.ph
  %i.afr = load double, ptr %gep.i222.prol, align 8, !tbaa !12
  %gep353.i.prol = getelementptr [8 x i8], ptr %invariant.gep352.i, i64 %indvars.iv278.i.ph
  %i.afs = load double, ptr %gep353.i.prol, align 8, !tbaa !12
  %i.aft = fsub double %i.afr, %i.afs
  %i.afu = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %indvars.iv278.i.ph ; 2 uses
  %i.afv = load double, ptr %i.afu, align 8, !tbaa !12
  %i.afw = fneg double %i.aft
  %i.afx = fmul double %i.adc, %i.afw
  %i.afy = call double @llvm.fmuladd.f64(double %i.afx, double %i.aew, double %i.afv)
  store double %i.afy, ptr %i.afu, align 8, !tbaa !12
  %indvars.iv.next279.i.prol = or disjoint i64 %indvars.iv278.i.ph, 1
  br label %scalar.ph601.prol.loopexit

scalar.ph601.prol.loopexit:                       ; preds = %scalar.ph601.prol, %scalar.ph601.preheader
  %indvars.iv278.i.unr = phi i64 [ %indvars.iv278.i.ph, %scalar.ph601.preheader ], [ %indvars.iv.next279.i.prol, %scalar.ph601.prol ]
  %i.afz = icmp eq i64 %indvars.iv278.i.ph, %i.qa
  br i1 %i.afz, label %.loopexit234.loopexit.i, label %scalar.ph601

scalar.ph601:                                     ; preds = %scalar.ph601.prol.loopexit, %scalar.ph601
  %indvars.iv278.i = phi i64 [ %indvars.iv.next279.i.1, %scalar.ph601 ], [ %indvars.iv278.i.unr, %scalar.ph601.prol.loopexit ] ; 5 uses
  %gep.i222 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i221, i64 %indvars.iv278.i
  %i.aga = load double, ptr %gep.i222, align 8, !tbaa !12
  %gep353.i = getelementptr [8 x i8], ptr %invariant.gep352.i, i64 %indvars.iv278.i
  %i.agb = load double, ptr %gep353.i, align 8, !tbaa !12
  %i.agc = fsub double %i.aga, %i.agb
  %i.agd = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %indvars.iv278.i ; 2 uses
  %i.age = load double, ptr %i.agd, align 8, !tbaa !12
  %i.agf = fneg double %i.agc
  %i.agg = fmul double %i.adc, %i.agf
  %i.agh = call double @llvm.fmuladd.f64(double %i.agg, double %i.aew, double %i.age)
  store double %i.agh, ptr %i.agd, align 8, !tbaa !12
  %indvars.iv.next279.i = add nuw nsw i64 %indvars.iv278.i, 1 ; 3 uses
  %gep.i222.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i221, i64 %indvars.iv.next279.i
  %i.agi = load double, ptr %gep.i222.1, align 8, !tbaa !12
  %gep353.i.1 = getelementptr [8 x i8], ptr %invariant.gep352.i, i64 %indvars.iv.next279.i
  %i.agj = load double, ptr %gep353.i.1, align 8, !tbaa !12
  %i.agk = fsub double %i.agi, %i.agj
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %indvars.iv.next279.i ; 2 uses
  %i.agm = load double, ptr %i.agl, align 8, !tbaa !12
  %i.agn = fneg double %i.agk
  %i.ago = fmul double %i.adc, %i.agn
  %i.agp = call double @llvm.fmuladd.f64(double %i.ago, double %i.aew, double %i.agm)
  store double %i.agp, ptr %i.agl, align 8, !tbaa !12
  %indvars.iv.next279.i.1 = add nuw nsw i64 %indvars.iv278.i, 2 ; 2 uses
  %exitcond282.not.i.1 = icmp eq i64 %indvars.iv.next279.i.1, %i.pi
  br i1 %exitcond282.not.i.1, label %.loopexit234.loopexit.i, label %scalar.ph601, !llvm.loop !162

.loopexit234.loopexit.i:                          ; preds = %scalar.ph601.prol.loopexit, %scalar.ph601, %middle.block626
  %.pre.i223 = load i32, ptr %i.ael, align 4, !tbaa !39
  br label %.loopexit234.i

.loopexit234.i:                                   ; preds = %.loopexit234.loopexit.i, %bb.di
  %i.agq = phi i32 [ %.pre.i223, %.loopexit234.loopexit.i ], [ %i.aer, %bb.di ] ; 2 uses
  %indvars.iv.next284.i = add nsw i64 %indvars.iv283.i, 1 ; 2 uses
  %i.agr = sext i32 %i.agq to i64
  %i.ags = icmp slt i64 %indvars.iv.next284.i, %i.agr
  br i1 %i.ags, label %bb.di, label %._crit_edge.i212, !llvm.loop !163

._crit_edge.i212:                                 ; preds = %.loopexit234.i, %.preheader240.i
  br i1 %i.aao, label %bb.dk, label %.lr.ph252.i

.lr.ph252.i:                                      ; preds = %._crit_edge.i212
  %i.agt = trunc i64 %indvars.iv321.i to i32      ; 2 uses
  %i.agu = mul i32 %0, %i.agt
  %i.agv = zext i32 %i.agu to i64
  %invariant.gep354.i = getelementptr [8 x i8], ptr %.1, i64 %i.agv ; 5 uses
  %i.agw = insertelement <2 x ptr> %i.adm, ptr %scevgep562, i64 1
  %i.agx = insertelement <2 x ptr> %i.adn, ptr %invariant.gep354.i, i64 1
  %i.agy = icmp ult <2 x ptr> %i.adl, %i.agw
  %i.agz = icmp ult <2 x ptr> %i.agx, %i.adp
  %i.aha = and <2 x i1> %i.agy, %i.agz
  %i.ahb = bitcast <2 x i1> %i.aha to i2
  %.not846 = icmp eq i2 %i.ahb, 0
  br label %bb.dm

bb.dk:                                            ; preds = %._crit_edge.i212
  %i.ahc = mul nuw nsw i64 %indvars.iv321.i, %i.pi ; 2 uses
  %i.ahd = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.ahc
  %i.ahe = trunc nuw nsw i64 %indvars.iv321.i to i32
  call void @QuadTree_get_supernodes(ptr noundef %.0.i211, double noundef 6.000000e-01, ptr noundef %i.ahd, i32 noundef %i.ahe, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #22
  %i.ahf = load double, ptr %i.f, align 8, !tbaa !12
  %i.ahg = load i32, ptr %i.b, align 4, !tbaa !39 ; 3 uses
  %i.ahh = sitofp i32 %i.ahg to double
  %i.ahi = insertelement <2 x double> poison, double %i.ahh, i64 0
  %i.ahj = insertelement <2 x double> %i.ahi, double %i.ahf, i64 1
  %i.ahk = fadd <2 x double> %i.adz, %i.ahj       ; 2 uses
  %i.ahl = icmp sgt i32 %i.ahg, 0
  br i1 %i.ahl, label %.lr.ph256.i, label %.loopexit237.i

.lr.ph256.i:                                      ; preds = %bb.dk
  %i.ahm = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.ahn = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.aho = load ptr, ptr %i.c, align 8, !tbaa !43 ; 3 uses
  %i.ahp = and i64 %i.ahc, 4294967295
  %wide.trip.count304.i = zext nneg i32 %i.ahg to i64 ; 2 uses
  %invariant.gep358.i = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.ahp ; 5 uses
  %i.ahq = mul i64 %i.pp, %wide.trip.count304.i
  %scevgep523 = getelementptr i8, ptr %i.aho, i64 %i.ahq
  %i.ahr = insertelement <2 x ptr> poison, ptr %scevgep525, i64 0
  %i.ahs = insertelement <2 x ptr> %i.ahr, ptr %scevgep523, i64 1
  %i.aht = insertelement <2 x ptr> poison, ptr %invariant.gep358.i, i64 0
  %i.ahu = insertelement <2 x ptr> %i.aht, ptr %i.aho, i64 1
  %i.ahv = icmp ult <2 x ptr> %i.adr, %i.ahs
  %i.ahw = icmp ult <2 x ptr> %i.ahu, %i.adt
  %i.ahx = and <2 x i1> %i.ahv, %i.ahw
  %i.ahy = bitcast <2 x i1> %i.ahx to i2
  %.not847 = icmp eq i2 %i.ahy, 0
  br label %bb.dl

bb.dl:                                            ; preds = %.loopexit843, %.lr.ph256.i
  %indvars.iv301.i = phi i64 [ 0, %.lr.ph256.i ], [ %indvars.iv.next302.i, %.loopexit843 ] ; 4 uses
  %i.ahz = getelementptr inbounds nuw [8 x i8], ptr %i.ahm, i64 %indvars.iv301.i
  %i.aia = load double, ptr %i.ahz, align 8, !tbaa !12 ; 2 uses
  %i.aib = fcmp ogt double %i.aia, 1.000000e-15
  %i.aic = select i1 %i.aib, double %i.aia, double 1.000000e-15
  %i.aid = getelementptr inbounds nuw [8 x i8], ptr %i.ahn, i64 %indvars.iv301.i
  %i.aie = load double, ptr %i.aid, align 8, !tbaa !12
  %i.aif = fmul double %i.acy, %i.aie             ; 4 uses
  %i.aig = mul nuw nsw i64 %indvars.iv301.i, %i.pi
  %i.aih = call double @pow(double noundef %i.aic, double noundef %i.acx) #22 ; 4 uses
  %invariant.gep360.i = getelementptr inbounds nuw [8 x i8], ptr %i.aho, i64 %i.aig ; 4 uses
  %.not847.not = xor i1 %.not847, true
  %brmerge980 = select i1 %min.iters.check527, i1 true, i1 %.not847.not
  br i1 %brmerge980, label %scalar.ph526.preheader, label %vector.ph535

vector.ph535:                                     ; preds = %bb.dl
  %broadcast.splatinsert537 = insertelement <2 x double> poison, double %i.aif, i64 0
  %broadcast.splat538 = shufflevector <2 x double> %broadcast.splatinsert537, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert539 = insertelement <2 x double> poison, double %i.aih, i64 0
  %broadcast.splat540 = shufflevector <2 x double> %broadcast.splatinsert539, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body541

vector.body541:                                   ; preds = %vector.body541, %vector.ph535
  %index542 = phi i64 [ 0, %vector.ph535 ], [ %index.next546, %vector.body541 ] ; 4 uses
  %i.aii = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep358.i, i64 %index542
  %wide.load543 = load <2 x double>, ptr %i.aii, align 8, !tbaa !12, !alias.scope !229
  %i.aij = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep360.i, i64 %index542
  %wide.load544 = load <2 x double>, ptr %i.aij, align 8, !tbaa !12, !alias.scope !230
  %i.aik = fsub <2 x double> %wide.load543, %wide.load544
  %i.ail = fmul <2 x double> %broadcast.splat538, %i.aik
  %i.aim = fdiv <2 x double> %i.ail, %broadcast.splat540
  %i.ain = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %index542 ; 2 uses
  %wide.load545 = load <2 x double>, ptr %i.ain, align 8, !tbaa !12, !alias.scope !231, !noalias !232
  %i.aio = fadd <2 x double> %wide.load545, %i.aim
  store <2 x double> %i.aio, ptr %i.ain, align 8, !tbaa !12, !alias.scope !231, !noalias !232
  %index.next546 = add nuw i64 %index542, 2       ; 2 uses
  %i.aip = icmp eq i64 %index.next546, %n.vec536
  br i1 %i.aip, label %middle.block547, label %vector.body541, !llvm.loop !168

middle.block547:                                  ; preds = %vector.body541
  br i1 %cmp.n548, label %.loopexit843, label %scalar.ph526.preheader

end_hunk_1
begin_hunk_2_@multilevel_spring_electrical_embedding:bb.a
  %exitcond305.not.i = icmp eq i64 %indvars.iv.next302.i, %wide.trip.count304.i
  br i1 %exitcond305.not.i, label %.loopexit237.i, label %bb.dl, !llvm.loop !170

bb.dm:                                            ; preds = %.loopexit.i213, %.lr.ph252.i
  %indvars.iv291.i = phi i64 [ 0, %.lr.ph252.i ], [ %indvars.iv.next292.i, %.loopexit.i213 ] ; 4 uses
  %i.ajp = icmp eq i64 %indvars.iv291.i, %indvars.iv321.i
  br i1 %i.ajp, label %.loopexit.i213, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ajq = trunc nuw nsw i64 %indvars.iv291.i to i32
  %i.ajr = call double @distance_cropped(ptr noundef %.1, i32 noundef range(i32 1, -2147483648) %0, i32 noundef %i.agt, i32 noundef %i.ajq) #22
  %i.ajs = mul nuw nsw i64 %indvars.iv291.i, %i.pi
  %i.ajt = call double @pow(double noundef %i.ajr, double noundef %i.acx) #22 ; 4 uses
  %invariant.gep356.i = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.ajs ; 4 uses
  %.not846.not = xor i1 %.not846, true
  %brmerge981 = select i1 %min.iters.check565, i1 true, i1 %.not846.not
  br i1 %brmerge981, label %scalar.ph564.preheader, label %vector.ph574

vector.ph574:                                     ; preds = %bb.dn
  %broadcast.splatinsert576 = insertelement <2 x double> poison, double %i.ajt, i64 0
  %broadcast.splat577 = shufflevector <2 x double> %broadcast.splatinsert576, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body580

vector.body580:                                   ; preds = %vector.body580, %vector.ph574
  %index581 = phi i64 [ 0, %vector.ph574 ], [ %index.next585, %vector.body580 ] ; 4 uses
  %i.aju = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep354.i, i64 %index581
  %wide.load582 = load <2 x double>, ptr %i.aju, align 8, !tbaa !12, !alias.scope !233
  %i.ajv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep356.i, i64 %index581
  %wide.load583 = load <2 x double>, ptr %i.ajv, align 8, !tbaa !12, !alias.scope !234
  %i.ajw = fsub <2 x double> %wide.load582, %wide.load583
  %i.ajx = fmul <2 x double> %broadcast.splat579, %i.ajw
  %i.ajy = fdiv <2 x double> %i.ajx, %broadcast.splat577
  %i.ajz = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %index581 ; 2 uses
  %wide.load584 = load <2 x double>, ptr %i.ajz, align 8, !tbaa !12, !alias.scope !235, !noalias !236
  %i.aka = fadd <2 x double> %wide.load584, %i.ajy
  store <2 x double> %i.aka, ptr %i.ajz, align 8, !tbaa !12, !alias.scope !235, !noalias !236
  %index.next585 = add nuw i64 %index581, 2       ; 2 uses
  %i.akb = icmp eq i64 %index.next585, %n.vec575
  br i1 %i.akb, label %middle.block586, label %vector.body580, !llvm.loop !175

middle.block586:                                  ; preds = %vector.body580
  br i1 %cmp.n587, label %.loopexit.i213, label %scalar.ph564.preheader

scalar.ph564.preheader:                           ; preds = %bb.dn, %middle.block586
  %indvars.iv286.i.ph = phi i64 [ %n.vec575, %middle.block586 ], [ 0, %bb.dn ] ; 6 uses
  br i1 %lcmp.mod901.not, label %scalar.ph564.prol.loopexit, label %scalar.ph564.prol

scalar.ph564.prol:                                ; preds = %scalar.ph564.preheader
  %gep355.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep354.i, i64 %indvars.iv286.i.ph
  %i.akc = load double, ptr %gep355.i.prol, align 8, !tbaa !12
  %gep357.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep356.i, i64 %indvars.iv286.i.ph
  %i.akd = load double, ptr %gep357.i.prol, align 8, !tbaa !12
  %i.ake = fsub double %i.akc, %i.akd
  %i.akf = fmul double %i.acy, %i.ake
  %i.akg = fdiv double %i.akf, %i.ajt
  %i.akh = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %indvars.iv286.i.ph ; 2 uses
  %i.aki = load double, ptr %i.akh, align 8, !tbaa !12
  %i.akj = fadd double %i.aki, %i.akg
  store double %i.akj, ptr %i.akh, align 8, !tbaa !12
  %indvars.iv.next287.i.prol = or disjoint i64 %indvars.iv286.i.ph, 1
  br label %scalar.ph564.prol.loopexit

scalar.ph564.prol.loopexit:                       ; preds = %scalar.ph564.prol, %scalar.ph564.preheader
  %indvars.iv286.i.unr = phi i64 [ %indvars.iv286.i.ph, %scalar.ph564.preheader ], [ %indvars.iv.next287.i.prol, %scalar.ph564.prol ]
  %i.akk = icmp eq i64 %indvars.iv286.i.ph, %i.qb
  br i1 %i.akk, label %.loopexit.i213, label %scalar.ph564

scalar.ph564:                                     ; preds = %scalar.ph564.prol.loopexit, %scalar.ph564
  %indvars.iv286.i = phi i64 [ %indvars.iv.next287.i.1, %scalar.ph564 ], [ %indvars.iv286.i.unr, %scalar.ph564.prol.loopexit ] ; 5 uses
  %gep355.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep354.i, i64 %indvars.iv286.i
  %i.akl = load double, ptr %gep355.i, align 8, !tbaa !12
  %gep357.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep356.i, i64 %indvars.iv286.i
  %i.akm = load double, ptr %gep357.i, align 8, !tbaa !12
  %i.akn = fsub double %i.akl, %i.akm
  %i.ako = fmul double %i.acy, %i.akn
  %i.akp = fdiv double %i.ako, %i.ajt
  %i.akq = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %indvars.iv286.i ; 2 uses
  %i.akr = load double, ptr %i.akq, align 8, !tbaa !12
  %i.aks = fadd double %i.akr, %i.akp
  store double %i.aks, ptr %i.akq, align 8, !tbaa !12
  %indvars.iv.next287.i = add nuw nsw i64 %indvars.iv286.i, 1 ; 3 uses
  %gep355.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep354.i, i64 %indvars.iv.next287.i
  %i.akt = load double, ptr %gep355.i.1, align 8, !tbaa !12
  %gep357.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep356.i, i64 %indvars.iv.next287.i
  %i.aku = load double, ptr %gep357.i.1, align 8, !tbaa !12
  %i.akv = fsub double %i.akt, %i.aku
  %i.akw = fmul double %i.acy, %i.akv
  %i.akx = fdiv double %i.akw, %i.ajt
  %i.aky = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %indvars.iv.next287.i ; 2 uses
  %i.akz = load double, ptr %i.aky, align 8, !tbaa !12
  %i.ala = fadd double %i.akz, %i.akx
  store double %i.ala, ptr %i.aky, align 8, !tbaa !12
  %indvars.iv.next287.i.1 = add nuw nsw i64 %indvars.iv286.i, 2 ; 2 uses
  %exitcond290.not.i.1 = icmp eq i64 %indvars.iv.next287.i.1, %i.pi
  br i1 %exitcond290.not.i.1, label %.loopexit.i213, label %scalar.ph564, !llvm.loop !176

.loopexit.i213:                                   ; preds = %scalar.ph564.prol.loopexit, %scalar.ph564, %middle.block586, %bb.dm
  %indvars.iv.next292.i = add nuw nsw i64 %indvars.iv291.i, 1 ; 2 uses
  %exitcond295.not.i = icmp eq i64 %indvars.iv.next292.i, %wide.trip.count324.i
  br i1 %exitcond295.not.i, label %.loopexit237.i, label %bb.dm, !llvm.loop !177

.loopexit237.i:                                   ; preds = %.loopexit.i213, %.loopexit843, %bb.dk
  %i.alb = phi <2 x double> [ %i.ahk, %bb.dk ], [ %i.ahk, %.loopexit843 ], [ %i.adz, %.loopexit.i213 ] ; 2 uses
  br i1 %i.qd, label %.epil.preheader905, label %.loopexit237.i.new

.loopexit237.i.new:                               ; preds = %.loopexit237.i, %.loopexit237.i.new
  %indvars.iv306.i = phi i64 [ %indvars.iv.next307.i.3, %.loopexit237.i.new ], [ 0, %.loopexit237.i ] ; 5 uses
  %.0205258.i = phi double [ %i.alq, %.loopexit237.i.new ], [ 0.000000e+00, %.loopexit237.i ]
  %niter913 = phi i64 [ %niter913.next.3, %.loopexit237.i.new ], [ 0, %.loopexit237.i ]
  %i.alc = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %indvars.iv306.i
  %i.ald = load double, ptr %i.alc, align 8, !tbaa !12 ; 2 uses
  %i.ale = call double @llvm.fmuladd.f64(double %i.ald, double %i.ald, double %.0205258.i)
  %i.alf = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %indvars.iv306.i
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 8
  %i.alh = load double, ptr %i.alg, align 8, !tbaa !12 ; 2 uses
  %i.ali = call double @llvm.fmuladd.f64(double %i.alh, double %i.alh, double %i.ale)
  %i.alj = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %indvars.iv306.i
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 16
  %i.all = load double, ptr %i.alk, align 8, !tbaa !12 ; 2 uses
  %i.alm = call double @llvm.fmuladd.f64(double %i.all, double %i.all, double %i.ali)
  %i.aln = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %indvars.iv306.i
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 24
  %i.alp = load double, ptr %i.alo, align 8, !tbaa !12 ; 2 uses
  %i.alq = call double @llvm.fmuladd.f64(double %i.alp, double %i.alp, double %i.alm) ; 3 uses
  %indvars.iv.next307.i.3 = add nuw nsw i64 %indvars.iv306.i, 4 ; 2 uses
  %niter913.next.3 = add i64 %niter913, 4         ; 2 uses
  %niter913.ncmp.3 = icmp eq i64 %niter913.next.3, %unroll_iter912
  br i1 %niter913.ncmp.3, label %.unr-lcssa904, label %.loopexit237.i.new, !llvm.loop !178

.unr-lcssa904:                                    ; preds = %.loopexit237.i.new
  br i1 %lcmp.mod908.not, label %.epilog-lcssa909, label %.epil.preheader905

.epil.preheader905:                               ; preds = %.unr-lcssa904, %.loopexit237.i
  %indvars.iv306.i.epil.init = phi i64 [ 0, %.loopexit237.i ], [ %indvars.iv.next307.i.3, %.unr-lcssa904 ]
  %.0205258.i.epil.init = phi double [ 0.000000e+00, %.loopexit237.i ], [ %i.alq, %.unr-lcssa904 ]
  call void @llvm.assume(i1 %lcmp.mod911)
  br label %bb.do

bb.do:                                            ; preds = %bb.do, %.epil.preheader905
  %indvars.iv306.i.epil = phi i64 [ %indvars.iv306.i.epil.init, %.epil.preheader905 ], [ %indvars.iv.next307.i.epil, %bb.do ] ; 2 uses
  %.0205258.i.epil = phi double [ %.0205258.i.epil.init, %.epil.preheader905 ], [ %i.alt, %bb.do ]
  %epil.iter907 = phi i64 [ 0, %.epil.preheader905 ], [ %epil.iter907.next, %bb.do ]
  %i.alr = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %indvars.iv306.i.epil
  %i.als = load double, ptr %i.alr, align 8, !tbaa !12 ; 2 uses
  %i.alt = call double @llvm.fmuladd.f64(double %i.als, double %i.als, double %.0205258.i.epil) ; 2 uses
  %indvars.iv.next307.i.epil = add nuw nsw i64 %indvars.iv306.i.epil, 1
  %epil.iter907.next = add i64 %epil.iter907, 1   ; 2 uses
  %epil.iter907.cmp.not = icmp eq i64 %epil.iter907.next, %xtraiter906
  br i1 %epil.iter907.cmp.not, label %.epilog-lcssa909, label %bb.do, !llvm.loop !179

.epilog-lcssa909:                                 ; preds = %bb.do, %.unr-lcssa904
  %.lcssa860 = phi double [ %i.alq, %.unr-lcssa904 ], [ %i.alt, %bb.do ]
  %i.alu = call double @sqrt(double noundef %.lcssa860) #22 ; 4 uses
  %i.alv = fadd double %.1204263.i, %i.alu        ; 4 uses
  %i.alw = fcmp ogt double %i.alu, 0.000000e+00
  br i1 %i.alw, label %.preheader.i220.preheader, label %.loopexit236.i

.preheader.i220.preheader:                        ; preds = %.epilog-lcssa909
  br i1 %min.iters.check501, label %.preheader.i220.preheader849, label %vector.ph502

vector.ph502:                                     ; preds = %.preheader.i220.preheader
  %broadcast.splatinsert504 = insertelement <2 x double> poison, double %i.alu, i64 0
  %broadcast.splat505 = shufflevector <2 x double> %broadcast.splatinsert504, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body506

vector.body506:                                   ; preds = %vector.body506, %vector.ph502
  %index507 = phi i64 [ 0, %vector.ph502 ], [ %index.next509, %vector.body506 ] ; 2 uses
  %i.alx = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %index507 ; 2 uses
  %wide.load508 = load <2 x double>, ptr %i.alx, align 8, !tbaa !12
  %i.aly = fdiv <2 x double> %wide.load508, %broadcast.splat505
  store <2 x double> %i.aly, ptr %i.alx, align 8, !tbaa !12
  %index.next509 = add nuw i64 %index507, 2       ; 2 uses
  %i.alz = icmp eq i64 %index.next509, %n.vec503
  br i1 %i.alz, label %middle.block510, label %vector.body506, !llvm.loop !180

middle.block510:                                  ; preds = %vector.body506
  br i1 %cmp.n511, label %.loopexit236.i, label %.preheader.i220.preheader849

.preheader.i220.preheader849:                     ; preds = %.preheader.i220.preheader, %middle.block510
  %indvars.iv311.i.ph = phi i64 [ 0, %.preheader.i220.preheader ], [ %n.vec503, %middle.block510 ]
  br label %.preheader.i220

.preheader.i220:                                  ; preds = %.preheader.i220.preheader849, %.preheader.i220
  %indvars.iv311.i = phi i64 [ %indvars.iv.next312.i, %.preheader.i220 ], [ %indvars.iv311.i.ph, %.preheader.i220.preheader849 ] ; 2 uses
  %i.ama = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %indvars.iv311.i ; 2 uses
  %i.amb = load double, ptr %i.ama, align 8, !tbaa !12
  %i.amc = fdiv double %i.amb, %i.alu
  store double %i.amc, ptr %i.ama, align 8, !tbaa !12
  %indvars.iv.next312.i = add nuw nsw i64 %indvars.iv311.i, 1 ; 2 uses
  %exitcond315.not.i = icmp eq i64 %indvars.iv.next312.i, %i.pi
  br i1 %exitcond315.not.i, label %.loopexit236.i, label %.preheader.i220, !llvm.loop !181

.loopexit236.i:                                   ; preds = %.preheader.i220, %middle.block510, %.epilog-lcssa909
  %i.amd = trunc i64 %indvars.iv321.i to i32
  %i.ame = mul i32 %0, %i.amd
  %i.amf = zext i32 %i.ame to i64                 ; 2 uses
  %invariant.gep362.i = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.amf ; 5 uses
  br i1 %min.iters.check485, label %scalar.ph484.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.loopexit236.i
  %16 = add nuw nsw i64 %i.pi, %i.amf
  %i.amg = shl nuw nsw i64 %16, 3
  %i.amh = getelementptr i8, ptr %.1, i64 %i.amg
  %bound0 = icmp ult ptr %invariant.gep362.i, %scevgep
  %bound1 = icmp ult ptr %i.add, %i.amh
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph484.preheader, label %vector.body490

vector.body490:                                   ; preds = %vector.memcheck, %vector.body490
  %index491 = phi i64 [ %index.next496, %vector.body490 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ami = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %index491 ; 2 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 16
  %wide.load492 = load <2 x double>, ptr %i.ami, align 8, !tbaa !12, !alias.scope !237
  %wide.load493 = load <2 x double>, ptr %i.amj, align 8, !tbaa !12, !alias.scope !237
  %i.amk = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep362.i, i64 %index491 ; 3 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 16 ; 2 uses
  %wide.load494 = load <2 x double>, ptr %i.amk, align 8, !tbaa !12, !alias.scope !238, !noalias !237
  %wide.load495 = load <2 x double>, ptr %i.aml, align 8, !tbaa !12, !alias.scope !238, !noalias !237
  %i.amm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat489, <2 x double> %wide.load492, <2 x double> %wide.load494)
  %i.amn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat489, <2 x double> %wide.load493, <2 x double> %wide.load495)
  store <2 x double> %i.amm, ptr %i.amk, align 8, !tbaa !12, !alias.scope !238, !noalias !237
  store <2 x double> %i.amn, ptr %i.aml, align 8, !tbaa !12, !alias.scope !238, !noalias !237
  %index.next496 = add nuw i64 %index491, 4       ; 2 uses
  %i.amo = icmp eq i64 %index.next496, %n.vec487
  br i1 %i.amo, label %middle.block497, label %vector.body490, !llvm.loop !185

middle.block497:                                  ; preds = %vector.body490
  br i1 %cmp.n498, label %.loopexit235.i, label %scalar.ph484.preheader

scalar.ph484.preheader:                           ; preds = %vector.memcheck, %.loopexit236.i, %middle.block497
  %indvars.iv316.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.loopexit236.i ], [ %n.vec487, %middle.block497 ] ; 5 uses
  br i1 %lcmp.mod915.not, label %scalar.ph484.prol.loopexit, label %scalar.ph484.prol

scalar.ph484.prol:                                ; preds = %scalar.ph484.preheader
  %i.amp = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %indvars.iv316.i.ph
  %i.amq = load double, ptr %i.amp, align 8, !tbaa !12
  %gep363.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep362.i, i64 %indvars.iv316.i.ph ; 2 uses
  %i.amr = load double, ptr %gep363.i.prol, align 8, !tbaa !12
  %i.ams = call double @llvm.fmuladd.f64(double %.0207.i, double %i.amq, double %i.amr)
  store double %i.ams, ptr %gep363.i.prol, align 8, !tbaa !12
  %indvars.iv.next317.i.prol = or disjoint i64 %indvars.iv316.i.ph, 1
  br label %scalar.ph484.prol.loopexit

scalar.ph484.prol.loopexit:                       ; preds = %scalar.ph484.prol, %scalar.ph484.preheader
  %indvars.iv316.i.unr = phi i64 [ %indvars.iv316.i.ph, %scalar.ph484.preheader ], [ %indvars.iv.next317.i.prol, %scalar.ph484.prol ]
  %i.amt = icmp eq i64 %indvars.iv316.i.ph, %i.qe
  br i1 %i.amt, label %.loopexit235.i, label %scalar.ph484

scalar.ph484:                                     ; preds = %scalar.ph484.prol.loopexit, %scalar.ph484
  %indvars.iv316.i = phi i64 [ %indvars.iv.next317.i.1, %scalar.ph484 ], [ %indvars.iv316.i.unr, %scalar.ph484.prol.loopexit ] ; 4 uses
  %i.amu = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %indvars.iv316.i
  %i.amv = load double, ptr %i.amu, align 8, !tbaa !12
  %gep363.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep362.i, i64 %indvars.iv316.i ; 2 uses
  %i.amw = load double, ptr %gep363.i, align 8, !tbaa !12
  %i.amx = call double @llvm.fmuladd.f64(double %.0207.i, double %i.amv, double %i.amw)
  store double %i.amx, ptr %gep363.i, align 8, !tbaa !12
  %indvars.iv.next317.i = add nuw nsw i64 %indvars.iv316.i, 1 ; 2 uses
  %i.amy = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %indvars.iv.next317.i
  %i.amz = load double, ptr %i.amy, align 8, !tbaa !12
  %gep363.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep362.i, i64 %indvars.iv.next317.i ; 2 uses
  %i.ana = load double, ptr %gep363.i.1, align 8, !tbaa !12
  %i.anb = call double @llvm.fmuladd.f64(double %.0207.i, double %i.amz, double %i.ana)
  store double %i.anb, ptr %gep363.i.1, align 8, !tbaa !12
  %indvars.iv.next317.i.1 = add nuw nsw i64 %indvars.iv316.i, 2 ; 2 uses
  %exitcond320.not.i.1 = icmp eq i64 %indvars.iv.next317.i.1, %i.pi
  br i1 %exitcond320.not.i.1, label %.loopexit235.i, label %scalar.ph484, !llvm.loop !186

._crit_edge266.i:                                 ; preds = %.loopexit235.i
  %.not229.i = icmp eq ptr %.0.i211, null
  br i1 %.not229.i, label %oned_optimizer_train.exit.i215, label %bb.dp

bb.dp:                                            ; preds = %._crit_edge266.i
  call void @QuadTree_delete(ptr noundef nonnull %.0.i211) #22
  %i.anc = fdiv <2 x double> %i.alb, %i.adi       ; 2 uses
  %i.and = extractelement <2 x double> %i.anc, i64 0
  %i.ane = extractelement <2 x double> %i.anc, i64 1
  %i.anf = call double @llvm.fmuladd.f64(double %i.and, double 5.000000e+00, double %i.ane) ; 3 uses
  %i.ang = sext i32 %i.adw to i64
  %i.anh = getelementptr inbounds [8 x i8], ptr %i.pm, i64 %i.ang ; 3 uses
  store double %i.anf, ptr %i.anh, align 8, !tbaa !12
  %i.ani = load i32, ptr %i.pn, align 8, !tbaa !240
  switch i32 %i.ani, label %bb.dw [
    i32 0, label %bb.dq
    i32 1, label %bb.dt
  ]

bb.dq:                                            ; preds = %bb.dp
  %i.anj = icmp eq i32 %i.adw, 20
  br i1 %i.anj, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  store i32 -1, ptr %i.pn, align 8, !tbaa !240
  br label %oned_optimizer_train.exit.i215

bb.ds:                                            ; preds = %bb.dq
  store i32 1, ptr %i.pn, align 8, !tbaa !240
  %i.ank = call i32 @llvm.smin.i32(i32 %i.adw, i32 19)
  %spec.select.i.i218 = add nsw i32 %i.ank, 1
  br label %oned_optimizer_train.exit.i215

bb.dt:                                            ; preds = %bb.dp
  %i.anl = getelementptr i8, ptr %i.anh, i64 -8
  %i.anm = load double, ptr %i.anl, align 8, !tbaa !12
  %i.ann = fcmp olt double %i.anf, %i.anm
  %i.ano = icmp slt i32 %i.adw, 20
  %or.cond.i.i214 = and i1 %i.ano, %i.ann
  br i1 %or.cond.i.i214, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.anp = add nsw i32 %i.adw, 1
  br label %oned_optimizer_train.exit.i215

bb.dv:                                            ; preds = %bb.dt
  %i.anq = add nsw i32 %i.adw, -1
  store i32 -1, ptr %i.pn, align 8, !tbaa !240
  br label %oned_optimizer_train.exit.i215

bb.dw:                                            ; preds = %bb.dp
  %i.anr = getelementptr i8, ptr %i.anh, i64 8
  %i.ans = load double, ptr %i.anr, align 8, !tbaa !12
  %i.ant = fcmp olt double %i.anf, %i.ans
  %i.anu = icmp sgt i32 %i.adw, 0
  %or.cond37.i.i219 = and i1 %i.anu, %i.ant
  br i1 %or.cond37.i.i219, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.anv = add nsw i32 %i.adw, -1
  br label %oned_optimizer_train.exit.i215

bb.dy:                                            ; preds = %bb.dw
  %i.anw = add nsw i32 %i.adw, 1
  store i32 1, ptr %i.pn, align 8, !tbaa !240
  br label %oned_optimizer_train.exit.i215

oned_optimizer_train.exit.i215:                   ; preds = %bb.dy, %bb.dx, %bb.dv, %bb.du, %bb.ds, %bb.dr, %._crit_edge266.i
  %.val326.i = phi i32 [ %i.anw, %bb.dy ], [ %i.anv, %bb.dx ], [ %i.anq, %bb.dv ], [ %i.anp, %bb.du ], [ %spec.select.i.i218, %bb.ds ], [ 19, %bb.dr ], [ %i.adw, %._crit_edge266.i ]
  br i1 %.not233.i, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %oned_optimizer_train.exit.i215
  %i.anx = fmul double %.0207.i, 9.000000e-01
  br label %update_step.exit.i216

bb.ea:                                            ; preds = %oned_optimizer_train.exit.i215
  %i.any = fcmp ult double %i.alv, %.0203.i
  br i1 %i.any, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.anz = fmul double %.0207.i, 9.000000e-01
  br label %update_step.exit.i216

bb.ec:                                            ; preds = %bb.ea
  %i.aoa = fmul double %.0203.i, f0x3FEE666666666666
  %i.aob = fcmp ogt double %i.alv, %i.aoa
  br i1 %i.aob, label %update_step.exit.i216, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.aoc = fmul double %.0207.i, f0x3FEFAE147AE147AE
  %i.aod = fdiv double %i.aoc, 9.000000e-01
  br label %update_step.exit.i216

update_step.exit.i216:                            ; preds = %bb.ed, %bb.ec, %bb.eb, %bb.dz
  %.0.i.i217 = phi double [ %i.anx, %bb.dz ], [ %i.anz, %bb.eb ], [ %.0207.i, %bb.ec ], [ %i.aod, %bb.ed ] ; 2 uses
  %i.aoe = fcmp ogt double %.0.i.i217, 1.000000e-03
  %i.aof = icmp slt i32 %i.adx, %i.aad
  %i.aog = select i1 %i.aoe, i1 %i.aof, i1 false
  br i1 %i.aog, label %gv_calloc.exit.i209, label %bb.ee, !llvm.loop !187

bb.ee:                                            ; preds = %update_step.exit.i216
  %i.aoh = load i8, ptr %i.pf, align 4
  %i.aoi = and i8 %i.aoh, 4
  %.not230.i = icmp eq i8 %i.aoi, 0
  br i1 %.not230.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call fastcc void @beautify_leaves(i32 noundef range(i32 1, -2147483648) %0, ptr noundef %i.aap, ptr noundef nonnull %.1)
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee, %bb.cz
  %.0218.i = phi ptr [ %i.aaa, %bb.cz ], [ %i.aap, %bb.ef ], [ %i.aap, %bb.ee ] ; 2 uses
  %.0206.i = phi ptr [ null, %bb.cz ], [ %i.add, %bb.ef ], [ %i.add, %bb.ee ]
  %.2.i = phi i32 [ %i.aah, %bb.cz ], [ %.1.i210, %bb.ef ], [ %.1.i210, %bb.ee ]
  br i1 %i.aao, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  store i32 %.2.i, ptr %i.pg, align 4, !tbaa !16
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.not231.i = icmp eq ptr %.0218.i, %i.aaa
  br i1 %.not231.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @SparseMatrix_delete(ptr noundef %.0218.i) #22
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  call void @free(ptr noundef %.0206.i) #22
  %i.aoj = load ptr, ptr %i.c, align 8, !tbaa !43
  call void @free(ptr noundef %i.aoj) #22
  %i.aok = load ptr, ptr %i.d, align 8, !tbaa !43
  call void @free(ptr noundef %i.aok) #22
  %i.aol = load ptr, ptr %i.e, align 8, !tbaa !43
  call void @free(ptr noundef %i.aol) #22
end_hunk_2
