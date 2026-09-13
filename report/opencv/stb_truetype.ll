Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stb_truetype?download=true
inline.NumInlined: 427
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN2cv15stbtt_RasterizeEPNS_13stbtt__bitmapEfPNS_12stbtt_vertexEiffffiiiPv:bb.a
  %i.gs = sext i32 %.0857.us.us.i to i64          ; 2 uses
  %i.gt = select i1 %i.gr, i64 %i.gs, i64 %indvars.iv40.i
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.gt
  %i.gv = select i1 %i.gr, i64 %indvars.iv40.i, i64 %i.gs
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.gv
  %i.gx = load <2 x float>, ptr %i.gu, align 4, !tbaa !64
  %i.gy = load <2 x float>, ptr %i.gw, align 4, !tbaa !64
  %i.gz = shufflevector <2 x float> %i.gx, <2 x float> %i.gy, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ha = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gz, <4 x float> %i.fy, <4 x float> %i.gb)
  store <4 x float> %i.ha, ptr %i.gp, align 4, !tbaa !64
  %i.hb = add nsw i32 %.26.us.us.i, 1
  br label %.lr.ph10.us._crit_edge.i

.lr.ph10.us._crit_edge.i:                         ; preds = %bb.r, %.lr.ph10.us.i
  %.3.us.us.i = phi i32 [ %i.hb, %bb.r ], [ %.26.us.us.i, %.lr.ph10.us.i ] ; 2 uses
  %.pre-phi.i = trunc i64 %indvars.iv40.i to i32
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %exitcond44.not.i = icmp eq i64 %indvars.iv.next41.i, %wide.trip.count43.i
  br i1 %exitcond44.not.i, label %._crit_edge11.split.us.us.i, label %.lr.ph10.us.i, !llvm.loop !165

._crit_edge11.split.us.us.i:                      ; preds = %.lr.ph10.us._crit_edge.i, %.lr.ph16.split.us.i
  %.2.lcssa.us.i = phi i32 [ %.18813.us.i, %.lr.ph16.split.us.i ], [ %.3.us.us.i, %.lr.ph10.us._crit_edge.i ] ; 2 uses
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %exitcond49.not.i = icmp eq i64 %indvars.iv.next46.i, %i.bc
  br i1 %exitcond49.not.i, label %._crit_edge17.i, label %.lr.ph16.split.us.i, !llvm.loop !166

.lr.ph16.split.i:                                 ; preds = %.lr.ph16.split.i.preheader, %._crit_edge11.split.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %._crit_edge11.split.i ], [ 0, %.lr.ph16.split.i.preheader ] ; 2 uses
  %.08315.i = phi i32 [ %i.hg, %._crit_edge11.split.i ], [ 0, %.lr.ph16.split.i.preheader ] ; 2 uses
  %.18813.i = phi i32 [ %.2.lcssa.i, %._crit_edge11.split.i ], [ 0, %.lr.ph16.split.i.preheader ] ; 2 uses
  %i.hc = sext i32 %.08315.i to i64
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.hc ; 4 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv35.i
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !34 ; 4 uses
  %i.hg = add nsw i32 %i.hf, %.08315.i
  %i.hh = icmp sgt i32 %i.hf, 0
  br i1 %i.hh, label %.lr.ph10.preheader.i, label %._crit_edge11.split.i

.lr.ph10.preheader.i:                             ; preds = %.lr.ph16.split.i
  %i.hi = add nsw i32 %i.hf, -1                   ; 2 uses
  %wide.trip.count33.i = zext nneg i32 %i.hf to i64
  %.phi.trans.insert.i = zext nneg i32 %i.hi to i64
  %.phi.trans.insert50.i = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %.phi.trans.insert.i
  %.phi.trans.insert51.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert50.i, i64 4
  %.pre.i28 = load float, ptr %.phi.trans.insert51.i, align 4, !tbaa !66
  br label %.lr.ph10.i

.lr.ph10.i:                                       ; preds = %.lr.ph10._crit_edge.i, %.lr.ph10.preheader.i
  %i.hj = phi float [ %.pre.i28, %.lr.ph10.preheader.i ], [ %i.hm, %.lr.ph10._crit_edge.i ] ; 2 uses
  %indvars.iv30.i = phi i64 [ 0, %.lr.ph10.preheader.i ], [ %indvars.iv.next31.i, %.lr.ph10._crit_edge.i ] ; 5 uses
  %.0857.i = phi i32 [ %i.hi, %.lr.ph10.preheader.i ], [ %.pre-phi58.i, %.lr.ph10._crit_edge.i ]
  %.26.i = phi i32 [ %.18813.i, %.lr.ph10.preheader.i ], [ %.3.i, %.lr.ph10._crit_edge.i ] ; 3 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv30.i
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !66 ; 3 uses
  %i.hn = fcmp oeq float %i.hj, %i.hm
  br i1 %i.hn, label %.lr.ph10._crit_edge.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph10.i
  %i.ho = sext i32 %.26.i to i64
  %i.hp = getelementptr inbounds [20 x i8], ptr %i.fo, i64 %i.ho ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = fcmp ogt float %i.hj, %i.hm             ; 3 uses
  %spec.store.select21.i = zext i1 %i.hr to i32
  store i32 %spec.store.select21.i, ptr %i.hq, align 4
  %i.hs = sext i32 %.0857.i to i64                ; 2 uses
  %i.ht = select i1 %i.hr, i64 %i.hs, i64 %indvars.iv30.i
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.hd, i64 %i.ht
  %i.hv = select i1 %i.hr, i64 %indvars.iv30.i, i64 %i.hs
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.hd, i64 %i.hv
  %i.hx = load <2 x float>, ptr %i.hu, align 4, !tbaa !64
  %i.hy = load <2 x float>, ptr %i.hw, align 4, !tbaa !64
  %i.hz = shufflevector <2 x float> %i.hx, <2 x float> %i.hy, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ia = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hz, <4 x float> %i.fs, <4 x float> %i.fv)
  store <4 x float> %i.ia, ptr %i.hp, align 4, !tbaa !64
  %i.ib = add nsw i32 %.26.i, 1
  br label %.lr.ph10._crit_edge.i

.lr.ph10._crit_edge.i:                            ; preds = %bb.s, %.lr.ph10.i
  %.3.i = phi i32 [ %i.ib, %bb.s ], [ %.26.i, %.lr.ph10.i ] ; 2 uses
  %.pre-phi58.i = trunc i64 %indvars.iv30.i to i32
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next31.i, %wide.trip.count33.i
  br i1 %exitcond34.not.i, label %._crit_edge11.split.i, label %.lr.ph10.i, !llvm.loop !165

._crit_edge11.split.i:                            ; preds = %.lr.ph10._crit_edge.i, %.lr.ph16.split.i
  %.2.lcssa.i = phi i32 [ %.18813.i, %.lr.ph16.split.i ], [ %.3.i, %.lr.ph10._crit_edge.i ] ; 2 uses
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next36.i, %i.bc
  br i1 %exitcond39.not.i, label %._crit_edge17.i, label %.lr.ph16.split.i, !llvm.loop !166

._crit_edge17.i:                                  ; preds = %._crit_edge11.split.i, %._crit_edge11.split.us.us.i
  %.188.lcssa.i = phi i32 [ %.2.lcssa.us.i, %._crit_edge11.split.us.us.i ], [ %.2.lcssa.i, %._crit_edge11.split.i ] ; 4 uses
  tail call fastcc void @_ZN2cvL27stbtt__sort_edges_quicksortEPNS_11stbtt__edgeEi(ptr noundef nonnull %i.fo, i32 noundef %.188.lcssa.i)
  %i.ic = icmp sgt i32 %.188.lcssa.i, 1
  br i1 %i.ic, label %.lr.ph.preheader.i.i.i, label %_ZN2cvL17stbtt__sort_edgesEPNS_11stbtt__edgeEi.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %._crit_edge17.i
  %wide.trip.count.i.i.i = zext nneg i32 %.188.lcssa.i to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.w, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.w ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.id = getelementptr inbounds nuw [20 x i8], ptr %i.fo, i64 %indvars.iv.i.i.i ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !64
  %i.ie = load <2 x float>, ptr %i.id, align 4, !tbaa !64
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i.i, i64 12, i1 false), !tbaa.struct !177
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph.i.i.i
  %indvars.iv31.i.i.i = phi i64 [ %indvars.iv.i.i.i, %.lr.ph.i.i.i ], [ %indvars.iv.next32.i.i.i, %bb.u ] ; 4 uses
  %i.if = getelementptr [20 x i8], ptr %i.fo, i64 %indvars.iv31.i.i.i ; 3 uses
  %i.ig = getelementptr i8, ptr %i.if, i64 -16
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !68
  %i.ii = fcmp olt float %.sroa.4.0.copyload.i.i.i, %i.ih
  br i1 %i.ii, label %bb.u, label %.thread.split.loop.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.ij = getelementptr i8, ptr %i.if, i64 -20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.if, ptr noundef nonnull align 4 dereferenceable(20) %i.ij, i64 20, i1 false), !tbaa.struct !69
  %indvars.iv.next32.i.i.i = add nsw i64 %indvars.iv31.i.i.i, -1
  %i.ik = icmp sgt i64 %indvars.iv31.i.i.i, 1
  br i1 %i.ik, label %bb.t, label %.thread.i.i.i

.thread.split.loop.exit.i.i.i:                    ; preds = %bb.t
  %i.il = trunc nuw nsw i64 %indvars.iv31.i.i.i to i32
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.u, %.thread.split.loop.exit.i.i.i
  %.021.lcssa.i.i.i = phi i32 [ %i.il, %.thread.split.loop.exit.i.i.i ], [ 0, %bb.u ] ; 2 uses
  %i.im = zext i32 %.021.lcssa.i.i.i to i64
  %.not.i.i.i = icmp eq i64 %indvars.iv.i.i.i, %i.im
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.thread.i.i.i
  %i.in = sext i32 %.021.lcssa.i.i.i to i64
  %i.io = getelementptr inbounds [20 x i8], ptr %i.fo, i64 %i.in ; 2 uses
  store <2 x float> %i.ie, ptr %i.io, align 4, !tbaa !64
  %.sroa.5.0..sroa_idx26.i.i.i = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx26.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i, i64 12, i1 false), !tbaa.struct !177
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN2cvL17stbtt__sort_edgesEPNS_11stbtt__edgeEi.exit.i, label %.lr.ph.i.i.i, !llvm.loop !167

_ZN2cvL17stbtt__sort_edgesEPNS_11stbtt__edgeEi.exit.i: ; preds = %bb.w, %._crit_edge17.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.ip = load i32, ptr %0, align 8, !tbaa !71    ; 4 uses
  %i.iq = icmp sgt i32 %i.ip, 64
  br i1 %i.iq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN2cvL17stbtt__sort_edgesEPNS_11stbtt__edgeEi.exit.i
  %i.ir = shl nuw nsw i32 %i.ip, 1
  %i.is = or disjoint i32 %i.ir, 1
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = shl nuw nsw i64 %i.it, 2
  %i.iv = tail call noalias ptr @malloc(i64 noundef %i.iu) #21
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN2cvL17stbtt__sort_edgesEPNS_11stbtt__edgeEi.exit.i
  %.080.i.i = phi ptr [ %i.iv, %bb.x ], [ %i.b, %_ZN2cvL17stbtt__sort_edgesEPNS_11stbtt__edgeEi.exit.i ] ; 43 uses
  %i.iw = sext i32 %i.ip to i64
  %i.ix = getelementptr inbounds [4 x i8], ptr %.080.i.i, i64 %i.iw ; 9 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !72 ; 2 uses
  %i.ja = add nsw i32 %i.iz, %9
  %i.jb = sitofp i32 %i.ja to float
  %i.jc = fadd float %i.jb, 1.000000e+00
  %i.jd = sext i32 %.188.lcssa.i to i64
  %i.je = getelementptr inbounds [20 x i8], ptr %i.fo, i64 %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  store float %i.jc, ptr %i.jf, align 4, !tbaa !68
  %i.jg = icmp sgt i32 %i.iz, 0
  br i1 %i.jg, label %.lr.ph33.i.i, label %_ZN2cvL20stbtt__hheap_cleanupEPNS_12stbtt__hheapEPv.exit.i.i

.lr.ph33.i.i:                                     ; preds = %bb.y
  %i.jh = sitofp i32 %8 to float
  %i.ji = icmp ne i32 %9, 0
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ix, i64 4 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge25.i.i, %.lr.ph33.i.i
  %i.jm = phi i32 [ %i.ip, %.lr.ph33.i.i ], [ %i.asj, %._crit_edge25.i.i ] ; 6 uses
  %.0..i.i = phi ptr [ null, %.lr.ph33.i.i ], [ %.0..0..0..0..0..0..0..0.82.i.i, %._crit_edge25.i.i ] ; 2 uses
  %.031.i.i = phi ptr [ %i.fo, %.lr.ph33.i.i ], [ %.1.lcssa.i.i, %._crit_edge25.i.i ] ; 3 uses
  %.07530.i.i = phi i32 [ %9, %.lr.ph33.i.i ], [ %i.atj, %._crit_edge25.i.i ] ; 2 uses
  %.07629.i.i = phi i32 [ 0, %.lr.ph33.i.i ], [ %i.atk, %._crit_edge25.i.i ] ; 3 uses
  %.sroa.11.028.i.i = phi i32 [ 0, %.lr.ph33.i.i ], [ %.sroa.11.1.lcssa.i.i, %._crit_edge25.i.i ] ; 2 uses
  %.sroa.7.027.i.i = phi ptr [ null, %.lr.ph33.i.i ], [ %.sroa.7.3.lcssa.i.i, %._crit_edge25.i.i ] ; 2 uses
  %.sroa.0.026.i.i = phi ptr [ null, %.lr.ph33.i.i ], [ %.sroa.0.1.lcssa.i.i, %._crit_edge25.i.i ] ; 2 uses
  %i.jn = sitofp i32 %.07530.i.i to float         ; 66 uses
  %i.jo = fadd float %i.jn, 1.000000e+00          ; 75 uses
  %i.jp = sext i32 %i.jm to i64
  %i.jq = shl nsw i64 %i.jp, 2
  call void @llvm.memset.p0.i64(ptr align 4 %.080.i.i, i8 0, i64 %i.jq, i1 false)
  %i.jr = add nsw i32 %i.jm, 1
  %i.js = sext i32 %i.jr to i64
  %i.jt = shl nsw i64 %i.js, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ix, i8 0, i64 %i.jt, i1 false)
  %.not908.i.i = icmp eq ptr %.0..i.i, null
  br i1 %.not908.i.i, label %.preheader7.i.i, label %.lr.ph.i.i

.preheader7.i.i:                                  ; preds = %bb.ab, %bb.z
  %.sroa.7.1.lcssa.i.i = phi ptr [ %.sroa.7.027.i.i, %bb.z ], [ %.sroa.7.2.i.i, %bb.ab ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 4
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !68 ; 2 uses
  %i.jw = fcmp ugt float %i.jv, %i.jo
  br i1 %i.jw, label %._crit_edge.i.i, label %.lr.ph15.i.i

.lr.ph15.i.i:                                     ; preds = %.preheader7.i.i
  %i.jx = icmp eq i32 %.07629.i.i, 0
  %or.cond.i.i = and i1 %i.ji, %i.jx
  br label %bb.ac

.lr.ph.i.i:                                       ; preds = %bb.z, %bb.ab
  %i.jy = phi ptr [ %i.ke, %bb.ab ], [ %.0..i.i, %bb.z ] ; 6 uses
  %.07810.i.i = phi ptr [ %.179.i.i, %bb.ab ], [ %i.a, %bb.z ] ; 2 uses
  %.sroa.7.19.i.i = phi ptr [ %.sroa.7.2.i.i, %bb.ab ], [ %.sroa.7.027.i.i, %bb.z ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 28
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !181
  %i.kb = fcmp ugt float %i.ka, %i.jn
  br i1 %i.kb, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i
  %i.kc = load ptr, ptr %i.jy, align 8, !tbaa !182
  store ptr %i.kc, ptr %.07810.i.i, align 8, !tbaa !179
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 20
  store float 0.000000e+00, ptr %i.kd, align 4, !tbaa !183
  store ptr %.sroa.7.19.i.i, ptr %i.jy, align 8, !tbaa !40
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i.i
  %.sroa.7.2.i.i = phi ptr [ %.sroa.7.19.i.i, %.lr.ph.i.i ], [ %i.jy, %bb.aa ] ; 2 uses
  %.179.i.i = phi ptr [ %i.jy, %.lr.ph.i.i ], [ %.07810.i.i, %bb.aa ] ; 2 uses
  %i.ke = load ptr, ptr %.179.i.i, align 8, !tbaa !179 ; 2 uses
  %.not90.i.i = icmp eq ptr %i.ke, null
  br i1 %.not90.i.i, label %.preheader7.i.i, label %.lr.ph.i.i, !llvm.loop !168

bb.ac:                                            ; preds = %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i, %.lr.ph15.i.i
  %i.kf = phi float [ %i.jv, %.lr.ph15.i.i ], [ %i.lr, %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i ] ; 4 uses
  %.114.i.i = phi ptr [ %.031.i.i, %.lr.ph15.i.i ], [ %i.lp, %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i ] ; 6 uses
  %.sroa.11.113.i.i = phi i32 [ %.sroa.11.028.i.i, %.lr.ph15.i.i ], [ %.sroa.11.4.i.i, %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i ] ; 4 uses
  %.sroa.7.312.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i, %.lr.ph15.i.i ], [ %.sroa.7.6.i.i, %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i ] ; 4 uses
  %.sroa.0.111.i.i = phi ptr [ %.sroa.0.026.i.i, %.lr.ph15.i.i ], [ %.sroa.0.5.i.i, %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i ] ; 5 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.114.i.i, i64 12
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !184 ; 4 uses
  %i.ki = fcmp une float %i.kf, %i.kh
  br i1 %i.ki, label %bb.ad, label %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i.i.i = icmp eq ptr %.sroa.7.312.i.i, null
  br i1 %.not.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kj = load ptr, ptr %.sroa.7.312.i.i, align 8, !tbaa !40
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %i.kk = icmp eq i32 %.sroa.11.113.i.i, 0
  br i1 %i.kk, label %bb.ag, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.af
  %i.kl = add nsw i32 %.sroa.11.113.i.i, -1
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.km = tail call noalias dereferenceable_or_null(25608) ptr @malloc(i64 noundef 25608) #21 ; 3 uses
  %i.kn = icmp eq ptr %i.km, null
  br i1 %i.kn, label %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.ag
  store ptr %.sroa.0.111.i.i, ptr %i.km, align 8, !tbaa !187
  br label %bb.ah

bb.ah:                                            ; preds = %.thread.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.0.2.i.i = phi ptr [ %i.km, %.thread.i.i.i.i ], [ %.sroa.0.111.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ko = phi i32 [ 799, %.thread.i.i.i.i ], [ %i.kl, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.i, i64 8
  %i.kq = zext nneg i32 %i.ko to i64
  %i.kr = shl nuw nsw i64 %i.kq, 5
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.kr
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %.sroa.0.3.i.i = phi ptr [ %.sroa.0.2.i.i, %bb.ah ], [ %.sroa.0.111.i.i, %bb.ae ]
  %.sroa.7.4.i.i = phi ptr [ null, %bb.ah ], [ %i.kj, %bb.ae ]
  %.sroa.11.2.i.i = phi i32 [ %i.ko, %bb.ah ], [ %.sroa.11.113.i.i, %bb.ae ]
  %.1.i.ph.i.i.i = phi ptr [ %i.ks, %bb.ah ], [ %.sroa.7.312.i.i, %bb.ae ] ; 9 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.114.i.i, i64 8
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !188
  %i.kv = load float, ptr %.114.i.i, align 4, !tbaa !189 ; 2 uses
  %i.kw = fsub float %i.ku, %i.kv
  %i.kx = fsub float %i.kh, %i.kf
  %i.ky = fdiv float %i.kw, %i.kx                 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i, i64 12
  store float %i.ky, ptr %i.kz, align 4, !tbaa !190
  %i.la = fcmp une float %i.ky, 0.000000e+00
  %i.lb = fdiv float 1.000000e+00, %i.ky
  %i.lc = select i1 %i.la, float %i.lb, float 0.000000e+00
  %i.ld = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i, i64 16
  store float %i.lc, ptr %i.ld, align 8, !tbaa !191
  %i.le = fsub float %i.jn, %i.kf
  %i.lf = tail call float @llvm.fmuladd.f32(float %i.ky, float %i.le, float %i.kv)
  %i.lg = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i, i64 8
  %i.lh = fsub float %i.lf, %i.jh
  store float %i.lh, ptr %i.lg, align 8, !tbaa !192
  %i.li = getelementptr inbounds nuw i8, ptr %.114.i.i, i64 16
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !193
  %.not28.i.i.i = icmp eq i32 %i.lj, 0
  %i.lk = select i1 %.not28.i.i.i, float -1.000000e+00, float 1.000000e+00
  %i.ll = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i, i64 20
  store float %i.lk, ptr %i.ll, align 4, !tbaa !183
  %i.lm = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i, i64 24
  store float %i.kf, ptr %i.lm, align 8, !tbaa !194
  %i.ln = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i, i64 28 ; 2 uses
  store float %i.kh, ptr %i.ln, align 4, !tbaa !181
  store ptr null, ptr %.1.i.ph.i.i.i, align 8, !tbaa !182
  %i.lo = fcmp olt float %i.kh, %i.jn
  %or.cond129.i.i = select i1 %or.cond.i.i, i1 %i.lo, i1 false
  br i1 %or.cond129.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store float %i.jn, ptr %i.ln, align 4, !tbaa !181
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0..0..0..0..0..0..0..0..i.i = load ptr, ptr %i.a, align 8, !tbaa !179
  store ptr %.0..0..0..0..0..0..0..0..i.i, ptr %.1.i.ph.i.i.i, align 8, !tbaa !182
  store ptr %.1.i.ph.i.i.i, ptr %i.a, align 8, !tbaa !179
  br label %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i

_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i: ; preds = %bb.ak, %bb.ag, %bb.ac
  %.sroa.0.5.i.i = phi ptr [ %.sroa.0.111.i.i, %bb.ac ], [ %.sroa.0.3.i.i, %bb.ak ], [ %.sroa.0.111.i.i, %bb.ag ] ; 2 uses
  %.sroa.7.6.i.i = phi ptr [ %.sroa.7.312.i.i, %bb.ac ], [ %.sroa.7.4.i.i, %bb.ak ], [ null, %bb.ag ] ; 2 uses
  %.sroa.11.4.i.i = phi i32 [ %.sroa.11.113.i.i, %bb.ac ], [ %.sroa.11.2.i.i, %bb.ak ], [ 0, %bb.ag ] ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.114.i.i, i64 20 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.114.i.i, i64 24
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !68 ; 2 uses
  %i.ls = fcmp ugt float %i.lr, %i.jo
  br i1 %i.ls, label %._crit_edge.i.i, label %bb.ac, !llvm.loop !169

._crit_edge.i.i:                                  ; preds = %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i, %.preheader7.i.i
  %.sroa.0.1.lcssa.i.i = phi ptr [ %.sroa.0.026.i.i, %.preheader7.i.i ], [ %.sroa.0.5.i.i, %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i ] ; 3 uses
  %.sroa.7.3.lcssa.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i, %.preheader7.i.i ], [ %.sroa.7.6.i.i, %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i ]
  %.sroa.11.1.lcssa.i.i = phi i32 [ %.sroa.11.028.i.i, %.preheader7.i.i ], [ %.sroa.11.4.i.i, %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i ]
  %.1.lcssa.i.i = phi ptr [ %.031.i.i, %.preheader7.i.i ], [ %i.lp, %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i ]
  %.0..0..0..0..0..0..0..0.82.i.i = load ptr, ptr %i.a, align 8, !tbaa !179 ; 4 uses
  %.not91.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0.82.i.i, null ; 2 uses
  br i1 %.not91.i.i, label %_ZN2cvL28stbtt__fill_active_edges_newEPfS0_iPNS_18stbtt__active_edgeEf.exit.i.i, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i.i
  %i.lt = sitofp i32 %i.jm to float               ; 3 uses
  %i.lu = icmp sgt i32 %i.jm, 0
  %i.lv = fcmp oeq float %i.jo, %i.jn             ; 3 uses
  %i.lw = fsub float %i.jo, %i.jn                 ; 4 uses
  %wide.trip.count.i.i91.i = zext nneg i32 %i.jm to i64
  %i.lx = insertelement <2 x float> poison, float %i.jn, i64 0
  %i.ly = shufflevector <2 x float> %i.lx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i, %bb.al
  %.0293468.i.i.i = phi ptr [ %.0..0..0..0..0..0..0..0.82.i.i, %bb.al ], [ %i.asg, %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i ] ; 19 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 8
  %i.ma = load <2 x float>, ptr %i.lz, align 8, !tbaa !64 ; 10 uses
  %i.mb = extractelement <2 x float> %i.ma, i64 0 ; 40 uses
  %i.mc = extractelement <2 x float> %i.ma, i64 1 ; 2 uses
  %i.md = fcmp oeq float %i.mc, 0.000000e+00
  br i1 %i.md, label %bb.an, label %bb.bv

bb.an:                                            ; preds = %bb.am
  %i.me = fcmp olt float %i.mb, %i.lt
  br i1 %i.me, label %bb.ao, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.mf = fcmp ult float %i.mb, 0.000000e+00
  br i1 %i.mf, label %bb.bk, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mg = fptosi float %i.mb to i32               ; 6 uses
  br i1 %i.lv, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.mh = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 28 ; 2 uses
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !181 ; 4 uses
  %i.mj = fcmp olt float %i.mi, %i.jn
  br i1 %i.mj, label %bb.ba, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.mk = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 24
  %i.ml = load float, ptr %i.mk, align 8, !tbaa !194 ; 4 uses
  %i.mm = fcmp olt float %i.jo, %i.ml
  br i1 %i.mm, label %bb.ba, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.mn = fcmp ogt float %i.ml, %i.jn
  br i1 %i.mn, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %foldExtExtBinop = fsub <2 x float> %i.ma, %i.ma
  %i.mo = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.mp = fsub float %i.ml, %i.jn
  %i.mq = fmul float %i.mo, %i.mp
  %i.mr = fdiv float %i.mq, %i.lw
  %i.ms = fadd float %i.mb, %i.mr
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.055.i.i.i.i = phi float [ %i.ms, %bb.at ], [ %i.mb, %bb.as ] ; 4 uses
  %.054.i.i.i.i = phi float [ %i.ml, %bb.at ], [ %i.jn, %bb.as ] ; 3 uses
  %i.mt = fcmp ogt float %i.jo, %i.mi
  br i1 %i.mt, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.mu = fsub float %i.mb, %.055.i.i.i.i
  %i.mv = fsub float %i.mi, %i.jo
  %i.mw = fmul float %i.mv, %i.mu
  %i.mx = fsub float %i.jo, %.054.i.i.i.i
  %i.my = fdiv float %i.mw, %i.mx
  %i.mz = fadd float %i.mb, %i.my
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.053.i.i.i.i = phi float [ %i.mz, %bb.av ], [ %i.mb, %bb.au ] ; 3 uses
  %.0.i.i.i.i = phi float [ %i.mi, %bb.av ], [ %i.jo, %bb.au ] ; 2 uses
  %i.na = sitofp i32 %i.mg to float               ; 4 uses
  %i.nb = fcmp ugt float %.055.i.i.i.i, %i.na
  %i.nc = fcmp ugt float %.053.i.i.i.i, %i.na
  %or.cond.i.i.i.i = select i1 %i.nb, i1 true, i1 %i.nc
  br i1 %or.cond.i.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.nd = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !183
  %i.nf = fsub float %.0.i.i.i.i, %.054.i.i.i.i
  %12 = sext i32 %i.mg to i64
  %i.ng = getelementptr inbounds [4 x i8], ptr %.080.i.i, i64 %12 ; 2 uses
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !64
  %i.ni = tail call float @llvm.fmuladd.f32(float %i.ne, float %i.nf, float %i.nh)
  store float %i.ni, ptr %i.ng, align 4, !tbaa !64
  br label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  %i.nj = add nsw i32 %i.mg, 1
  %i.nk = sitofp i32 %i.nj to float               ; 2 uses
  %i.nl = fcmp ult float %.055.i.i.i.i, %i.nk
  %i.nm = fcmp ult float %.053.i.i.i.i, %i.nk
  %or.cond62.i.i.i.i = select i1 %i.nl, i1 true, i1 %i.nm
  br i1 %or.cond62.i.i.i.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.nn = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.no = load float, ptr %i.nn, align 4, !tbaa !183
  %i.np = fsub float %.0.i.i.i.i, %.054.i.i.i.i
  %i.nq = fmul float %i.np, %i.no
  %i.nr = fsub float %.055.i.i.i.i, %i.na
  %i.ns = fsub float %.053.i.i.i.i, %i.na
  %i.nt = fadd float %i.nr, %i.ns
  %i.nu = fmul float %i.nt, 5.000000e-01
  %i.nv = fsub float 1.000000e+00, %i.nu
  %13 = sext i32 %i.mg to i64
  %i.nw = getelementptr inbounds [4 x i8], ptr %.080.i.i, i64 %13 ; 2 uses
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !64
  %i.ny = tail call float @llvm.fmuladd.f32(float %i.nq, float %i.nv, float %i.nx)
  store float %i.ny, ptr %i.nw, align 4, !tbaa !64
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %bb.ar, %bb.aq
  %i.nz = add nsw i32 %i.mg, 1                    ; 3 uses
  %i.oa = load float, ptr %i.mh, align 4, !tbaa !181 ; 4 uses
  %i.ob = fcmp olt float %i.oa, %i.jn
  br i1 %i.ob, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.oc = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 24
  %i.od = load float, ptr %i.oc, align 8, !tbaa !194 ; 4 uses
  %i.oe = fcmp olt float %i.jo, %i.od
  br i1 %i.oe, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.of = fcmp ogt float %i.od, %i.jn
  br i1 %i.of, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %foldExtExtBinop170 = fsub <2 x float> %i.ma, %i.ma
  %i.og = extractelement <2 x float> %foldExtExtBinop170, i64 0
  %i.oh = fsub float %i.od, %i.jn
  %i.oi = fmul float %i.og, %i.oh
  %i.oj = fdiv float %i.oi, %i.lw
  %i.ok = fadd float %i.mb, %i.oj
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.055.i345.i.i.i = phi float [ %i.ok, %bb.bd ], [ %i.mb, %bb.bc ] ; 4 uses
  %.054.i346.i.i.i = phi float [ %i.od, %bb.bd ], [ %i.jn, %bb.bc ] ; 3 uses
  %i.ol = fcmp ogt float %i.jo, %i.oa
  br i1 %i.ol, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.om = fsub float %i.mb, %.055.i345.i.i.i
  %i.on = fsub float %i.oa, %i.jo
  %i.oo = fmul float %i.on, %i.om
  %i.op = fsub float %i.jo, %.054.i346.i.i.i
  %i.oq = fdiv float %i.oo, %i.op
  %i.or = fadd float %i.mb, %i.oq
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.053.i347.i.i.i = phi float [ %i.or, %bb.bf ], [ %i.mb, %bb.be ] ; 3 uses
  %.0.i348.i.i.i = phi float [ %i.oa, %bb.bf ], [ %i.jo, %bb.be ] ; 2 uses
  %i.os = sitofp i32 %i.nz to float               ; 4 uses
  %i.ot = fcmp ugt float %.055.i345.i.i.i, %i.os
  %i.ou = fcmp ugt float %.053.i347.i.i.i, %i.os
  %or.cond.i349.i.i.i = select i1 %i.ot, i1 true, i1 %i.ou
  br i1 %or.cond.i349.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ov = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !183
  %i.ox = fsub float %.0.i348.i.i.i, %.054.i346.i.i.i
  %14 = sext i32 %i.nz to i64
  %i.oy = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %14 ; 2 uses
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !64
  %i.pa = tail call float @llvm.fmuladd.f32(float %i.ow, float %i.ox, float %i.oz)
  store float %i.pa, ptr %i.oy, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.pb = add nsw i32 %i.mg, 2
  %i.pc = sitofp i32 %i.pb to float               ; 2 uses
  %i.pd = fcmp ult float %.055.i345.i.i.i, %i.pc
  %i.pe = fcmp ult float %.053.i347.i.i.i, %i.pc
  %or.cond62.i350.i.i.i = select i1 %i.pd, i1 true, i1 %i.pe
  br i1 %or.cond62.i350.i.i.i, label %bb.bj, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.pf = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !183
  %i.ph = fsub float %.0.i348.i.i.i, %.054.i346.i.i.i
  %i.pi = fmul float %i.ph, %i.pg
  %i.pj = fsub float %.055.i345.i.i.i, %i.os
  %i.pk = fsub float %.053.i347.i.i.i, %i.os
  %i.pl = fadd float %i.pj, %i.pk
  %i.pm = fmul float %i.pl, 5.000000e-01
  %i.pn = fsub float 1.000000e+00, %i.pm
  %15 = sext i32 %i.nz to i64
  %i.po = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %15 ; 2 uses
  %i.pp = load float, ptr %i.po, align 4, !tbaa !64
  %i.pq = tail call float @llvm.fmuladd.f32(float %i.pi, float %i.pn, float %i.pp)
  store float %i.pq, ptr %i.po, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i

bb.bk:                                            ; preds = %bb.ao
  br i1 %i.lv, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.pr = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 28
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !181 ; 4 uses
  %i.pt = fcmp olt float %i.ps, %i.jn
  br i1 %i.pt, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.pu = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 24
  %i.pv = load float, ptr %i.pu, align 8, !tbaa !194 ; 4 uses
  %i.pw = fcmp olt float %i.jo, %i.pv
  br i1 %i.pw, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.px = fcmp ogt float %i.pv, %i.jn
  br i1 %i.px, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %foldExtExtBinop172 = fsub <2 x float> %i.ma, %i.ma
  %i.py = extractelement <2 x float> %foldExtExtBinop172, i64 0
  %i.pz = fsub float %i.pv, %i.jn
  %i.qa = fmul float %i.py, %i.pz
  %i.qb = fdiv float %i.qa, %i.lw
  %i.qc = fadd float %i.mb, %i.qb
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.055.i352.i.i.i = phi float [ %i.qc, %bb.bo ], [ %i.mb, %bb.bn ] ; 4 uses
  %.054.i353.i.i.i = phi float [ %i.pv, %bb.bo ], [ %i.jn, %bb.bn ] ; 3 uses
  %i.qd = fcmp ogt float %i.jo, %i.ps
  br i1 %i.qd, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.qe = fsub float %i.mb, %.055.i352.i.i.i
  %i.qf = fsub float %i.ps, %i.jo
  %i.qg = fmul float %i.qf, %i.qe
  %i.qh = fsub float %i.jo, %.054.i353.i.i.i
  %i.qi = fdiv float %i.qg, %i.qh
  %i.qj = fadd float %i.mb, %i.qi
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.053.i354.i.i.i = phi float [ %i.qj, %bb.bq ], [ %i.mb, %bb.bp ] ; 3 uses
  %.0.i355.i.i.i = phi float [ %i.ps, %bb.bq ], [ %i.jo, %bb.bp ] ; 2 uses
  %i.qk = fcmp ugt float %.055.i352.i.i.i, 0.000000e+00
  %i.ql = fcmp ugt float %.053.i354.i.i.i, 0.000000e+00
  %or.cond.i356.i.i.i = select i1 %i.qk, i1 true, i1 %i.ql
  br i1 %or.cond.i356.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.qm = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !183
  %i.qo = fsub float %.0.i355.i.i.i, %.054.i353.i.i.i
  %i.qp = load float, ptr %i.ix, align 4, !tbaa !64
  %i.qq = tail call float @llvm.fmuladd.f32(float %i.qn, float %i.qo, float %i.qp)
  store float %i.qq, ptr %i.ix, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.qr = fcmp ult float %.055.i352.i.i.i, 1.000000e+00
  %i.qs = fcmp ult float %.053.i354.i.i.i, 1.000000e+00
  %or.cond62.i357.i.i.i = select i1 %i.qr, i1 true, i1 %i.qs
  br i1 %or.cond62.i357.i.i.i, label %bb.bu, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.qt = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !183
  %i.qv = fsub float %.0.i355.i.i.i, %.054.i353.i.i.i
  %i.qw = fmul float %i.qv, %i.qu
  %i.qx = fadd float %.055.i352.i.i.i, %.053.i354.i.i.i
  %i.qy = fmul float %i.qx, 5.000000e-01
  %i.qz = fsub float 1.000000e+00, %i.qy
  %i.ra = load float, ptr %i.ix, align 4, !tbaa !64
  %i.rb = tail call float @llvm.fmuladd.f32(float %i.qw, float %i.qz, float %i.ra)
  store float %i.rb, ptr %i.ix, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i

bb.bv:                                            ; preds = %bb.am
  %i.rc = fadd float %i.mc, %i.mb                 ; 34 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 16
  %i.re = load float, ptr %i.rd, align 8, !tbaa !191 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 24 ; 16 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 28 ; 15 uses
  %i.rh = load <2 x float>, ptr %i.rf, align 8, !tbaa !64 ; 3 uses
  %i.ri = extractelement <2 x float> %i.rh, i64 0 ; 2 uses
  %i.rj = fcmp ogt float %i.ri, %i.jn             ; 2 uses
  %i.rk = fsub <2 x float> %i.rh, %i.ly
  %i.rl = shufflevector <2 x float> %i.ma, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.rm = shufflevector <2 x float> %i.ma, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.rn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rl, <2 x float> %i.rk, <2 x float> %i.rm) ; 2 uses
  %i.ro = extractelement <2 x float> %i.rn, i64 0
  %.0305.i.i.i = select i1 %i.rj, float %i.ro, float %i.mb ; 7 uses
  %.0301.i.i.i = select i1 %i.rj, float %i.ri, float %i.jn ; 3 uses
  %i.rp = extractelement <2 x float> %i.rh, i64 1 ; 2 uses
  %i.rq = fcmp olt float %i.rp, %i.jo             ; 2 uses
  %i.rr = extractelement <2 x float> %i.rn, i64 1
  %.0303.i.i.i = select i1 %i.rq, float %i.rr, float %i.rc ; 7 uses
  %.0299.i.i.i = select i1 %i.rq, float %i.rp, float %i.jo ; 3 uses
  %i.rs = fcmp oge float %.0305.i.i.i, 0.000000e+00
  %i.rt = fcmp oge float %.0303.i.i.i, 0.000000e+00
  %or.cond.i.i.i = select i1 %i.rs, i1 %i.rt, i1 false
  br i1 %or.cond.i.i.i, label %bb.bw, label %bb.cc

bb.bw:                                            ; preds = %bb.bv
  %i.ru = fcmp olt float %.0305.i.i.i, %i.lt
  %i.rv = fcmp olt float %.0303.i.i.i, %i.lt
  %or.cond338.i.i.i = select i1 %i.ru, i1 %i.rv, i1 false
  br i1 %or.cond338.i.i.i, label %bb.bx, label %bb.cc

bb.bx:                                            ; preds = %bb.bw
  %i.rw = fptosi float %.0305.i.i.i to i32        ; 5 uses
  %i.rx = fptosi float %.0303.i.i.i to i32        ; 3 uses
  %i.ry = icmp eq i32 %i.rw, %i.rx
  br i1 %i.ry, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.rz = fsub float %.0299.i.i.i, %.0301.i.i.i
  %i.sa = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !183
  %i.sc = fmul float %i.rz, %i.sb                 ; 2 uses
  %i.sd = sitofp i32 %i.rw to float
  %i.se = fadd float %i.sd, 1.000000e+00          ; 2 uses
  %i.sf = fsub float %i.se, %.0305.i.i.i
  %i.sg = fsub float %i.se, %.0303.i.i.i
  %i.sh = fadd float %i.sf, %i.sg
  %i.si = fmul float %i.sh, 5.000000e-01
  %i.sj = fmul float %i.si, %i.sc
  %16 = sext i32 %i.rw to i64                     ; 2 uses
  %i.sk = getelementptr inbounds [4 x i8], ptr %.080.i.i, i64 %16 ; 2 uses
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !64
  %i.sm = fadd float %i.sl, %i.sj
  store float %i.sm, ptr %i.sk, align 4, !tbaa !64
  %i.sn = getelementptr inbounds [4 x i8], ptr %i.jj, i64 %16 ; 2 uses
  %i.so = load float, ptr %i.sn, align 4, !tbaa !64
  %i.sp = fadd float %i.sc, %i.so
  store float %i.sp, ptr %i.sn, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.sq = fcmp ogt float %.0305.i.i.i, %.0303.i.i.i
  br i1 %i.sq, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.sr = fsub float %i.jn, %.0301.i.i.i
  %i.ss = fadd float %i.jo, %i.sr
  %i.st = fsub float %i.jn, %.0299.i.i.i
  %i.su = fadd float %i.jo, %i.st
  %i.sv = fneg float %i.re
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.pre-phi475.i.i.i = phi i32 [ %i.rw, %bb.ca ], [ %i.rx, %bb.bz ] ; 7 uses
  %.pre-phi.i.i.i = phi i32 [ %i.rx, %bb.ca ], [ %i.rw, %bb.bz ] ; 4 uses
  %.0307.i.i.i = phi float [ %i.rc, %bb.ca ], [ %i.mb, %bb.bz ]
  %.1306.i.i.i = phi float [ %.0303.i.i.i, %bb.ca ], [ %.0305.i.i.i, %bb.bz ]
  %.1304.i.i.i = phi float [ %.0305.i.i.i, %bb.ca ], [ %.0303.i.i.i, %bb.bz ]
  %.1302.i.i.i = phi float [ %i.su, %bb.ca ], [ %.0301.i.i.i, %bb.bz ] ; 2 uses
  %.1300.i.i.i = phi float [ %i.ss, %bb.ca ], [ %.0299.i.i.i, %bb.bz ] ; 2 uses
  %.0298.i.i.i = phi float [ %i.sv, %bb.ca ], [ %i.re, %bb.bz ] ; 2 uses
  %i.sw = add nsw i32 %.pre-phi.i.i.i, 1          ; 3 uses
  %17 = insertelement <2 x i32> poison, i32 %.pre-phi475.i.i.i, i64 0
  %18 = insertelement <2 x i32> %17, i32 %i.sw, i64 1
  %19 = sitofp <2 x i32> %18 to <2 x float>       ; 3 uses
  %20 = insertelement <2 x float> poison, float %.0307.i.i.i, i64 0
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %22 = fsub <2 x float> %19, %21
  %23 = insertelement <2 x float> poison, float %.0298.i.i.i, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %25 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> %22, <2 x float> %i.ly) ; 2 uses
  %26 = extractelement <2 x float> %25, i64 1     ; 2 uses
  %i.sx = fcmp ogt float %26, %i.jo
  %.0296.i.i.i = select i1 %i.sx, float %i.jo, float %26 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !183 ; 4 uses
  %i.ta = fsub float %.0296.i.i.i, %.1302.i.i.i
  %i.tb = fmul float %i.sz, %i.ta                 ; 5 uses
  %27 = extractelement <2 x float> %19, i64 1
  %i.tc = fsub nnan float %27, %.1306.i.i.i
  %i.td = fmul float %i.tc, %i.tb
  %i.te = fmul float %i.td, 5.000000e-01
  %28 = sext i32 %.pre-phi.i.i.i to i64           ; 3 uses
  %i.tf = getelementptr inbounds [4 x i8], ptr %.080.i.i, i64 %28 ; 2 uses
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !64
  %i.th = fadd float %i.tg, %i.te
  store float %i.th, ptr %i.tf, align 4, !tbaa !64
  %29 = extractelement <2 x float> %25, i64 0     ; 2 uses
  %i.ti = fcmp ogt float %29, %i.jo               ; 2 uses
  %i.tj = fsub float %i.jo, %.0296.i.i.i
  %i.tk = sub nsw i32 %.pre-phi475.i.i.i, %i.sw
  %i.tl = sitofp i32 %i.tk to float
  %i.tm = fdiv float %i.tj, %i.tl
  %.1.i.i.i = select i1 %i.ti, float %i.tm, float %.0298.i.i.i
  %.0295.i.i.i = select i1 %i.ti, float %i.jo, float %29
  %i.tn = fmul float %i.sz, %.1.i.i.i             ; 4 uses
  %i.to = icmp slt i32 %i.sw, %.pre-phi475.i.i.i
  br i1 %i.to, label %.lr.ph467.i.i.i, label %._crit_edge.i.i.i

.lr.ph467.i.i.i:                                  ; preds = %bb.cb
  %i.tp = fmul float %i.tn, 5.000000e-01          ; 3 uses
  %i.tq = add nsw i64 %28, 1                      ; 2 uses
  %i.tr = add i32 %.pre-phi475.i.i.i, -2
  %i.ts = sub i32 %.pre-phi.i.i.i, %.pre-phi475.i.i.i
  %i.tt = and i32 %i.ts, 1
  %lcmp.mod.not.not = icmp eq i32 %i.tt, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph467.i.i.i
  %i.tu = fadd float %i.tp, %i.tb
  %i.tv = getelementptr inbounds [4 x i8], ptr %.080.i.i, i64 %i.tq ; 2 uses
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !64
  %i.tx = fadd float %i.tu, %i.tw
  store float %i.tx, ptr %i.tv, align 4, !tbaa !64
  %i.ty = fadd float %i.tn, %i.tb                 ; 2 uses
  %indvars.iv.next472.i.i.i.prol = add nsw i64 %28, 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph467.i.i.i
  %.lcssa174.unr = phi float [ poison, %.lr.ph467.i.i.i ], [ %i.ty, %.prol.loopexit.unr-lcssa ]
  %indvars.iv471.i.i.i.unr = phi i64 [ %i.tq, %.lr.ph467.i.i.i ], [ %indvars.iv.next472.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.0294466.i.i.i.unr = phi float [ %i.tb, %.lr.ph467.i.i.i ], [ %i.ty, %.prol.loopexit.unr-lcssa ]
  %i.tz = icmp eq i32 %i.tr, %.pre-phi.i.i.i
  br i1 %i.tz, label %._crit_edge.i.i.i, label %.lr.ph467.i.i.i.new

.lr.ph467.i.i.i.new:                              ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.new
  %indvars.iv471.i.i.i = phi i64 [ %indvars.iv.next472.i.i.i.1, %.lr.ph467.i.i.i.new ], [ %indvars.iv471.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0294466.i.i.i = phi float [ %i.uk, %.lr.ph467.i.i.i.new ], [ %.0294466.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.ua = fadd float %i.tp, %.0294466.i.i.i
  %i.ub = getelementptr inbounds [4 x i8], ptr %.080.i.i, i64 %indvars.iv471.i.i.i ; 2 uses
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !64
  %i.ud = fadd float %i.ua, %i.uc
  store float %i.ud, ptr %i.ub, align 4, !tbaa !64
  %i.ue = fadd float %i.tn, %.0294466.i.i.i       ; 2 uses
  %i.uf = fadd float %i.tp, %i.ue
  %i.ug = getelementptr [4 x i8], ptr %.080.i.i, i64 %indvars.iv471.i.i.i
  %i.uh = getelementptr i8, ptr %i.ug, i64 4      ; 2 uses
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !64
  %i.uj = fadd float %i.uf, %i.ui
  store float %i.uj, ptr %i.uh, align 4, !tbaa !64
  %i.uk = fadd float %i.tn, %i.ue                 ; 2 uses
  %indvars.iv.next472.i.i.i.1 = add nsw i64 %indvars.iv471.i.i.i, 2 ; 2 uses
  %lftr.wideiv.i.i.i.1 = trunc i64 %indvars.iv.next472.i.i.i.1 to i32
  %exitcond474.not.i.i.i.1 = icmp eq i32 %.pre-phi475.i.i.i, %lftr.wideiv.i.i.i.1
  br i1 %exitcond474.not.i.i.i.1, label %._crit_edge.i.i.i, label %.lr.ph467.i.i.i.new, !llvm.loop !170

._crit_edge.i.i.i:                                ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.new, %bb.cb
  %.0294.lcssa.i.i.i = phi float [ %i.tb, %bb.cb ], [ %.lcssa174.unr, %.prol.loopexit ], [ %i.uk, %.lr.ph467.i.i.i.new ]
  %i.ul = fsub float %.1300.i.i.i, %.0295.i.i.i
  %30 = extractelement <2 x float> %19, i64 0     ; 2 uses
  %i.um = fadd float %30, 1.000000e+00            ; 2 uses
  %i.un = fsub nnan float %i.um, %30
  %i.uo = fsub float %i.um, %.1304.i.i.i
  %i.up = fadd float %i.un, %i.uo
  %i.uq = fmul float %i.up, 5.000000e-01
  %i.ur = fmul float %i.uq, %i.ul
  %i.us = tail call float @llvm.fmuladd.f32(float %i.sz, float %i.ur, float %.0294.lcssa.i.i.i)
  %31 = sext i32 %.pre-phi475.i.i.i to i64        ; 2 uses
  %i.ut = getelementptr inbounds [4 x i8], ptr %.080.i.i, i64 %31 ; 2 uses
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !64
  %i.uv = fadd float %i.us, %i.uu
  store float %i.uv, ptr %i.ut, align 4, !tbaa !64
  %i.uw = fsub float %.1300.i.i.i, %.1302.i.i.i
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.jj, i64 %31 ; 2 uses
  %i.uy = load float, ptr %i.ux, align 4, !tbaa !64
  %i.uz = tail call float @llvm.fmuladd.f32(float %i.sz, float %i.uw, float %i.uy)
  store float %i.uz, ptr %i.ux, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i

bb.cc:                                            ; preds = %bb.bw, %bb.bv
  br i1 %i.lu, label %.lr.ph.i.i93.i, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i

.lr.ph.i.i93.i:                                   ; preds = %bb.cc
  %i.va = fsub float %i.rc, %i.mb
  %i.vb = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20 ; 30 uses
  br label %bb.cd

bb.cd:                                            ; preds = %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i, %.lr.ph.i.i93.i
  %indvars.iv.i.i94.i = phi i64 [ 0, %.lr.ph.i.i93.i ], [ %indvars.iv.next.i.i95.i, %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i ] ; 32 uses
  %indvars.iv.next.i.i95.i = add nuw nsw i64 %indvars.iv.i.i94.i, 1 ; 3 uses
  %i.vc = trunc nuw nsw i64 %indvars.iv.next.i.i95.i to i32
  %i.vd = trunc nuw nsw i64 %indvars.iv.i.i94.i to i32
  %i.ve = uitofp nneg i32 %i.vc to float          ; 60 uses
  %i.vf = uitofp nneg i32 %i.vd to float          ; 90 uses
  %i.vg = insertelement <2 x float> poison, float %i.vf, i64 0
  %i.vh = insertelement <2 x float> %i.vg, float %i.ve, i64 1
  %i.vi = fsub <2 x float> %i.vh, %i.rm           ; 7 uses
  %i.vj = fdiv <2 x float> %i.vi, %i.rl           ; 2 uses
  %i.vk = extractelement <2 x float> %i.vj, i64 0
  %i.vl = fadd float %i.vk, %i.jn                 ; 52 uses
  %i.vm = extractelement <2 x float> %i.vj, i64 1
  %i.vn = fadd float %i.vm, %i.jn                 ; 52 uses
  %i.vo = fcmp olt float %i.mb, %i.vf             ; 2 uses
  %i.vp = fcmp ogt float %i.rc, %i.ve             ; 2 uses
  %or.cond339.i.i.i = select i1 %i.vo, i1 %i.vp, i1 false
  br i1 %or.cond339.i.i.i, label %bb.ce, label %bb.dj

bb.ce:                                            ; preds = %bb.cd
  %i.vq = fcmp oeq float %i.vl, %i.jn
  br i1 %i.vq, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit365.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.vr = load float, ptr %i.rg, align 4, !tbaa !181 ; 4 uses
  %i.vs = fcmp olt float %i.vr, %i.jn
  br i1 %i.vs, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit365.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.vt = load float, ptr %i.rf, align 8, !tbaa !194 ; 4 uses
  %i.vu = fcmp olt float %i.vl, %i.vt
  br i1 %i.vu, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit365.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.vv = fcmp ogt float %i.vt, %i.jn
  br i1 %i.vv, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.vw = fsub float %i.vt, %i.jn
  %i.vx = extractelement <2 x float> %i.vi, i64 0
  %i.vy = fmul float %i.vx, %i.vw
  %i.vz = fsub float %i.vl, %i.jn
  %i.wa = fdiv float %i.vy, %i.vz
  %i.wb = fadd float %i.mb, %i.wa
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.055.i359.i.i.i = phi float [ %i.wb, %bb.ci ], [ %i.mb, %bb.ch ] ; 4 uses
  %.054.i360.i.i.i = phi float [ %i.vt, %bb.ci ], [ %i.jn, %bb.ch ] ; 3 uses
  %i.wc = fcmp ogt float %i.vl, %i.vr
  br i1 %i.wc, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.wd = fsub float %i.vf, %.055.i359.i.i.i
  %i.we = fsub float %i.vr, %i.vl
  %i.wf = fmul float %i.we, %i.wd
  %i.wg = fsub float %i.vl, %.054.i360.i.i.i
  %i.wh = fdiv float %i.wf, %i.wg
  %i.wi = fadd float %i.wh, %i.vf
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.053.i361.i.i.i = phi float [ %i.wi, %bb.ck ], [ %i.vf, %bb.cj ] ; 3 uses
  %.0.i362.i.i.i = phi float [ %i.vr, %bb.ck ], [ %i.vl, %bb.cj ] ; 2 uses
  %i.wj = fcmp ugt float %.055.i359.i.i.i, %i.vf
  %i.wk = fcmp ugt float %.053.i361.i.i.i, %i.vf
  %or.cond.i363.i.i.i = select i1 %i.wj, i1 true, i1 %i.wk
  br i1 %or.cond.i363.i.i.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.wl = load float, ptr %i.vb, align 4, !tbaa !183
  %i.wm = fsub float %.0.i362.i.i.i, %.054.i360.i.i.i
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !64
  %i.wp = tail call float @llvm.fmuladd.f32(float %i.wl, float %i.wm, float %i.wo)
  store float %i.wp, ptr %i.wn, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit365.i.i.i

bb.cn:                                            ; preds = %bb.cl
  %i.wq = fcmp ult float %.055.i359.i.i.i, %i.ve
  %i.wr = fcmp ult float %.053.i361.i.i.i, %i.ve
  %or.cond62.i364.i.i.i = select i1 %i.wq, i1 true, i1 %i.wr
  br i1 %or.cond62.i364.i.i.i, label %bb.co, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit365.i.i.i

bb.co:                                            ; preds = %bb.cn
  %i.ws = load float, ptr %i.vb, align 4, !tbaa !183
  %i.wt = fsub float %.0.i362.i.i.i, %.054.i360.i.i.i
  %i.wu = fmul float %i.wt, %i.ws
  %i.wv = fsub float %.055.i359.i.i.i, %i.vf
  %i.ww = fsub float %.053.i361.i.i.i, %i.vf
  %i.wx = fadd float %i.wv, %i.ww
  %i.wy = fmul float %i.wx, 5.000000e-01
  %i.wz = fsub float 1.000000e+00, %i.wy
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !64
  %i.xc = tail call float @llvm.fmuladd.f32(float %i.wu, float %i.wz, float %i.xb)
  store float %i.xc, ptr %i.xa, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit365.i.i.i

_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit365.i.i.i: ; preds = %bb.co, %bb.cn, %bb.cm, %bb.cg, %bb.cf, %bb.ce
  %i.xd = fcmp oeq float %i.vl, %i.vn
  br i1 %i.xd, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit372.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit365.i.i.i
  %i.xe = load float, ptr %i.rg, align 4, !tbaa !181 ; 4 uses
  %i.xf = fcmp ogt float %i.vl, %i.xe
  br i1 %i.xf, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit372.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.xg = load float, ptr %i.rf, align 8, !tbaa !194 ; 4 uses
  %i.xh = fcmp olt float %i.vn, %i.xg
  br i1 %i.xh, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit372.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.xi = fcmp olt float %i.vl, %i.xg
  br i1 %i.xi, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.xj = fsub nnan float %i.ve, %i.vf
  %i.xk = fsub float %i.xg, %i.vl
  %i.xl = fmul float %i.xj, %i.xk
  %i.xm = fsub float %i.vn, %i.vl
  %i.xn = fdiv float %i.xl, %i.xm
  %i.xo = fadd float %i.xn, %i.vf
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.055.i366.i.i.i = phi float [ %i.xo, %bb.cs ], [ %i.vf, %bb.cr ] ; 4 uses
  %.054.i367.i.i.i = phi float [ %i.xg, %bb.cs ], [ %i.vl, %bb.cr ] ; 3 uses
  %i.xp = fcmp ogt float %i.vn, %i.xe
  br i1 %i.xp, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.xq = fsub float %i.ve, %.055.i366.i.i.i
  %i.xr = fsub float %i.xe, %i.vn
  %i.xs = fmul float %i.xr, %i.xq
  %i.xt = fsub float %i.vn, %.054.i367.i.i.i
  %i.xu = fdiv float %i.xs, %i.xt
  %i.xv = fadd float %i.xu, %i.ve
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.053.i368.i.i.i = phi float [ %i.xv, %bb.cu ], [ %i.ve, %bb.ct ] ; 3 uses
  %.0.i369.i.i.i = phi float [ %i.xe, %bb.cu ], [ %i.vn, %bb.ct ] ; 2 uses
  %i.xw = fcmp ugt float %.055.i366.i.i.i, %i.vf
  %i.xx = fcmp ugt float %.053.i368.i.i.i, %i.vf
  %or.cond.i370.i.i.i = select i1 %i.xw, i1 true, i1 %i.xx
  br i1 %or.cond.i370.i.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.xy = load float, ptr %i.vb, align 4, !tbaa !183
  %i.xz = fsub float %.0.i369.i.i.i, %.054.i367.i.i.i
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.yb = load float, ptr %i.ya, align 4, !tbaa !64
  %i.yc = tail call float @llvm.fmuladd.f32(float %i.xy, float %i.xz, float %i.yb)
  store float %i.yc, ptr %i.ya, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit372.i.i.i

bb.cx:                                            ; preds = %bb.cv
  %i.yd = fcmp ult float %.055.i366.i.i.i, %i.ve
  %i.ye = fcmp ult float %.053.i368.i.i.i, %i.ve
  %or.cond62.i371.i.i.i = select i1 %i.yd, i1 true, i1 %i.ye
  br i1 %or.cond62.i371.i.i.i, label %bb.cy, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit372.i.i.i

bb.cy:                                            ; preds = %bb.cx
  %i.yf = load float, ptr %i.vb, align 4, !tbaa !183
  %i.yg = fsub float %.0.i369.i.i.i, %.054.i367.i.i.i
  %i.yh = fmul float %i.yg, %i.yf
  %i.yi = fsub float %.055.i366.i.i.i, %i.vf
  %i.yj = fsub float %.053.i368.i.i.i, %i.vf
  %i.yk = fadd float %i.yi, %i.yj
  %i.yl = fmul float %i.yk, 5.000000e-01
  %i.ym = fsub float 1.000000e+00, %i.yl
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.yo = load float, ptr %i.yn, align 4, !tbaa !64
  %i.yp = tail call float @llvm.fmuladd.f32(float %i.yh, float %i.ym, float %i.yo)
  store float %i.yp, ptr %i.yn, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit372.i.i.i

_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit372.i.i.i: ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cq, %bb.cp, %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit365.i.i.i
  %i.yq = fcmp oeq float %i.vn, %i.jo
  br i1 %i.yq, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit372.i.i.i
  %i.yr = load float, ptr %i.rg, align 4, !tbaa !181 ; 4 uses
  %i.ys = fcmp ogt float %i.vn, %i.yr
end_hunk_0
begin_hunk_1_@_ZN2cv15stbtt_RasterizeEPNS_13stbtt__bitmapEfPNS_12stbtt_vertexEiffffiiiPv:bb.a
  %i.aoy = load float, ptr %i.vb, align 4, !tbaa !183
  %i.aoz = fsub float %.0.i446.i.i.i, %.054.i444.i.i.i
  %i.apa = fmul float %i.aoz, %i.aoy
  %i.apb = fsub float %.055.i443.i.i.i, %i.vf
  %i.apc = fsub float %.053.i445.i.i.i, %i.vf
  %i.apd = fadd float %i.apb, %i.apc
  %i.ape = fmul float %i.apd, 5.000000e-01
  %i.apf = fsub float 1.000000e+00, %i.ape
  %i.apg = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.aph = load float, ptr %i.apg, align 4, !tbaa !64
  %i.api = tail call float @llvm.fmuladd.f32(float %i.apa, float %i.apf, float %i.aph)
  store float %i.api, ptr %i.apg, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit449.i.i.i

_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit449.i.i.i: ; preds = %bb.ho, %bb.hn, %bb.hm, %bb.hg, %bb.hf, %bb.he
  %i.apj = fcmp oeq float %i.vn, %i.jo
  br i1 %i.apj, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i, label %bb.hp

bb.hp:                                            ; preds = %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit449.i.i.i
  %i.apk = load float, ptr %i.rg, align 4, !tbaa !181 ; 4 uses
  %i.apl = fcmp ogt float %i.vn, %i.apk
  br i1 %i.apl, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.apm = load float, ptr %i.rf, align 8, !tbaa !194 ; 4 uses
  %i.apn = fcmp olt float %i.jo, %i.apm
  br i1 %i.apn, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.apo = fcmp olt float %i.vn, %i.apm
  br i1 %i.apo, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.app = fsub float %i.rc, %i.ve
  %i.apq = fsub float %i.apm, %i.vn
  %i.apr = fmul float %i.app, %i.apq
  %i.aps = fsub float %i.jo, %i.vn
  %i.apt = fdiv float %i.apr, %i.aps
  %i.apu = fadd float %i.apt, %i.ve
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %.055.i450.i.i.i = phi float [ %i.apu, %bb.hs ], [ %i.ve, %bb.hr ] ; 4 uses
  %.054.i451.i.i.i = phi float [ %i.apm, %bb.hs ], [ %i.vn, %bb.hr ] ; 3 uses
  %i.apv = fcmp ogt float %i.jo, %i.apk
  br i1 %i.apv, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.apw = fsub float %i.rc, %.055.i450.i.i.i
  %i.apx = fsub float %i.apk, %i.jo
  %i.apy = fmul float %i.apx, %i.apw
  %i.apz = fsub float %i.jo, %.054.i451.i.i.i
  %i.aqa = fdiv float %i.apy, %i.apz
  %i.aqb = fadd float %i.rc, %i.aqa
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %.053.i452.i.i.i = phi float [ %i.aqb, %bb.hu ], [ %i.rc, %bb.ht ] ; 3 uses
  %.0.i453.i.i.i = phi float [ %i.apk, %bb.hu ], [ %i.jo, %bb.ht ] ; 2 uses
  %i.aqc = fcmp ugt float %.055.i450.i.i.i, %i.vf
  %i.aqd = fcmp ugt float %.053.i452.i.i.i, %i.vf
  %or.cond.i454.i.i.i = select i1 %i.aqc, i1 true, i1 %i.aqd
  br i1 %or.cond.i454.i.i.i, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.aqe = load float, ptr %i.vb, align 4, !tbaa !183
  %i.aqf = fsub float %.0.i453.i.i.i, %.054.i451.i.i.i
  %i.aqg = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.aqh = load float, ptr %i.aqg, align 4, !tbaa !64
  %i.aqi = tail call float @llvm.fmuladd.f32(float %i.aqe, float %i.aqf, float %i.aqh)
  store float %i.aqi, ptr %i.aqg, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

bb.hx:                                            ; preds = %bb.hv
  %i.aqj = fcmp ult float %.055.i450.i.i.i, %i.ve
  %i.aqk = fcmp ult float %.053.i452.i.i.i, %i.ve
  %or.cond62.i455.i.i.i = select i1 %i.aqj, i1 true, i1 %i.aqk
  br i1 %or.cond62.i455.i.i.i, label %bb.hy, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

bb.hy:                                            ; preds = %bb.hx
  %i.aql = load float, ptr %i.vb, align 4, !tbaa !183
  %i.aqm = fsub float %.0.i453.i.i.i, %.054.i451.i.i.i
  %i.aqn = fmul float %i.aqm, %i.aql
  %i.aqo = fsub float %.055.i450.i.i.i, %i.vf
  %i.aqp = fsub float %.053.i452.i.i.i, %i.vf
  %i.aqq = fadd float %i.aqo, %i.aqp
  %i.aqr = fmul float %i.aqq, 5.000000e-01
  %i.aqs = fsub float 1.000000e+00, %i.aqr
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.aqu = load float, ptr %i.aqt, align 4, !tbaa !64
  %i.aqv = tail call float @llvm.fmuladd.f32(float %i.aqn, float %i.aqs, float %i.aqu)
  store float %i.aqv, ptr %i.aqt, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

bb.hz:                                            ; preds = %bb.hd
  br i1 %i.lv, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.aqw = load float, ptr %i.rg, align 4, !tbaa !181 ; 4 uses
  %i.aqx = fcmp olt float %i.aqw, %i.jn
  br i1 %i.aqx, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.aqy = load float, ptr %i.rf, align 8, !tbaa !194 ; 4 uses
  %i.aqz = fcmp olt float %i.jo, %i.aqy
  br i1 %i.aqz, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.ara = fcmp ogt float %i.aqy, %i.jn           ; 2 uses
  %i.arb = fsub float %i.aqy, %i.jn
  %i.arc = fmul float %i.va, %i.arb
  %i.ard = fdiv float %i.arc, %i.lw
  %i.are = fadd float %i.mb, %i.ard
  %.055.i457.i.i.i = select i1 %i.ara, float %i.are, float %i.mb ; 4 uses
  %.054.i458.i.i.i = select i1 %i.ara, float %i.aqy, float %i.jn ; 3 uses
  %i.arf = fcmp ogt float %i.jo, %i.aqw
  br i1 %i.arf, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.arg = fsub float %i.rc, %.055.i457.i.i.i
  %i.arh = fsub float %i.aqw, %i.jo
  %i.ari = fmul float %i.arh, %i.arg
  %i.arj = fsub float %i.jo, %.054.i458.i.i.i
  %i.ark = fdiv float %i.ari, %i.arj
  %i.arl = fadd float %i.rc, %i.ark
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %.053.i459.i.i.i = phi float [ %i.arl, %bb.id ], [ %i.rc, %bb.ic ] ; 3 uses
  %.0.i460.i.i.i = phi float [ %i.aqw, %bb.id ], [ %i.jo, %bb.ic ] ; 2 uses
  %i.arm = fcmp ugt float %.055.i457.i.i.i, %i.vf
  %i.arn = fcmp ugt float %.053.i459.i.i.i, %i.vf
  %or.cond.i461.i.i.i = select i1 %i.arm, i1 true, i1 %i.arn
  br i1 %or.cond.i461.i.i.i, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.aro = load float, ptr %i.vb, align 4, !tbaa !183
  %i.arp = fsub float %.0.i460.i.i.i, %.054.i458.i.i.i
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.arr = load float, ptr %i.arq, align 4, !tbaa !64
  %i.ars = tail call float @llvm.fmuladd.f32(float %i.aro, float %i.arp, float %i.arr)
  store float %i.ars, ptr %i.arq, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

bb.ig:                                            ; preds = %bb.ie
  %i.art = fcmp ult float %.055.i457.i.i.i, %i.ve
  %i.aru = fcmp ult float %.053.i459.i.i.i, %i.ve
  %or.cond62.i462.i.i.i = select i1 %i.art, i1 true, i1 %i.aru
  br i1 %or.cond62.i462.i.i.i, label %bb.ih, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

bb.ih:                                            ; preds = %bb.ig
  %i.arv = load float, ptr %i.vb, align 4, !tbaa !183
  %i.arw = fsub float %.0.i460.i.i.i, %.054.i458.i.i.i
  %i.arx = fmul float %i.arw, %i.arv
  %i.ary = fsub float %.055.i457.i.i.i, %i.vf
  %i.arz = fsub float %.053.i459.i.i.i, %i.vf
  %i.asa = fadd float %i.ary, %i.arz
  %i.asb = fmul float %i.asa, 5.000000e-01
  %i.asc = fsub float 1.000000e+00, %i.asb
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.ase = load float, ptr %i.asd, align 4, !tbaa !64
  %i.asf = tail call float @llvm.fmuladd.f32(float %i.arx, float %i.asc, float %i.ase)
  store float %i.asf, ptr %i.asd, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i: ; preds = %bb.ih, %bb.ig, %bb.if, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hq, %bb.hp, %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit449.i.i.i, %bb.hc, %bb.hb, %bb.ha, %bb.gu, %bb.gt, %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit435.i.i.i, %bb.gg, %bb.gf, %bb.ge, %bb.fy, %bb.fx, %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit421.i.i.i, %bb.fk, %bb.fj, %bb.fi, %bb.fc, %bb.fb, %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit407.i.i.i, %bb.eo, %bb.en, %bb.em, %bb.eg, %bb.ef, %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit393.i.i.i, %bb.di, %bb.dh, %bb.dg, %bb.da, %bb.cz, %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit372.i.i.i
  %exitcond.not.i.i96.i = icmp eq i64 %indvars.iv.next.i.i95.i, %wide.trip.count.i.i91.i
  br i1 %exitcond.not.i.i96.i, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i, label %bb.cd, !llvm.loop !171

_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i: ; preds = %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i, %bb.cc, %._crit_edge.i.i.i, %bb.by, %bb.bu, %bb.bt, %bb.bs, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bb, %bb.ba, %bb.ap, %bb.an
  %i.asg = load ptr, ptr %.0293468.i.i.i, align 8, !tbaa !182 ; 2 uses
  %.not.i.i92.i = icmp eq ptr %i.asg, null
  br i1 %.not.i.i92.i, label %_ZN2cvL28stbtt__fill_active_edges_newEPfS0_iPNS_18stbtt__active_edgeEf.exit.loopexit.i.i, label %bb.am, !llvm.loop !172

_ZN2cvL28stbtt__fill_active_edges_newEPfS0_iPNS_18stbtt__active_edgeEf.exit.loopexit.i.i: ; preds = %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i
  %.pre.i.i = load i32, ptr %0, align 8, !tbaa !71
  br label %_ZN2cvL28stbtt__fill_active_edges_newEPfS0_iPNS_18stbtt__active_edgeEf.exit.i.i

_ZN2cvL28stbtt__fill_active_edges_newEPfS0_iPNS_18stbtt__active_edgeEf.exit.i.i: ; preds = %_ZN2cvL28stbtt__fill_active_edges_newEPfS0_iPNS_18stbtt__active_edgeEf.exit.loopexit.i.i, %._crit_edge.i.i
  %i.ash = phi i32 [ %.pre.i.i, %_ZN2cvL28stbtt__fill_active_edges_newEPfS0_iPNS_18stbtt__active_edgeEf.exit.loopexit.i.i ], [ %i.jm, %._crit_edge.i.i ] ; 2 uses
  %i.asi = icmp sgt i32 %i.ash, 0
  br i1 %i.asi, label %.lr.ph22.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph22.i.i, %_ZN2cvL28stbtt__fill_active_edges_newEPfS0_iPNS_18stbtt__active_edgeEf.exit.i.i
  %i.asj = phi i32 [ %i.ash, %_ZN2cvL28stbtt__fill_active_edges_newEPfS0_iPNS_18stbtt__active_edgeEf.exit.i.i ], [ %i.atb, %.lr.ph22.i.i ]
  br i1 %.not91.i.i, label %._crit_edge25.i.i, label %.lr.ph24.i.i

.lr.ph22.i.i:                                     ; preds = %_ZN2cvL28stbtt__fill_active_edges_newEPfS0_iPNS_18stbtt__active_edgeEf.exit.i.i, %.lr.ph22.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph22.i.i ], [ 0, %_ZN2cvL28stbtt__fill_active_edges_newEPfS0_iPNS_18stbtt__active_edgeEf.exit.i.i ] ; 4 uses
  %.07721.i.i = phi float [ %i.asm, %.lr.ph22.i.i ], [ 0.000000e+00, %_ZN2cvL28stbtt__fill_active_edges_newEPfS0_iPNS_18stbtt__active_edgeEf.exit.i.i ]
  %i.ask = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.i.i
  %i.asl = load float, ptr %i.ask, align 4, !tbaa !64
  %i.asm = fadd float %.07721.i.i, %i.asl         ; 2 uses
  %i.asn = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i
  %i.aso = load float, ptr %i.asn, align 4, !tbaa !64
  %i.asp = fadd float %i.aso, %i.asm
  %i.asq = tail call noundef float @llvm.fabs.f32(float %i.asp)
  %i.asr = tail call float @llvm.fmuladd.f32(float %i.asq, float 2.550000e+02, float 5.000000e-01)
  %i.ass = fptosi float %i.asr to i32
  %spec.store.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.ass, i32 255)
  %i.ast = trunc i32 %spec.store.select.i.i to i8
  %i.asu = load ptr, ptr %i.jk, align 8, !tbaa !73
  %i.asv = load i32, ptr %i.jl, align 8, !tbaa !74
  %i.asw = mul nsw i32 %i.asv, %.07629.i.i
  %i.asx = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.asy = add nsw i32 %i.asw, %i.asx
  %i.asz = sext i32 %i.asy to i64
  %i.ata = getelementptr inbounds i8, ptr %i.asu, i64 %i.asz
  store i8 %i.ast, ptr %i.ata, align 1, !tbaa !32
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.atb = load i32, ptr %0, align 8, !tbaa !71   ; 2 uses
  %i.atc = sext i32 %i.atb to i64
  %i.atd = icmp slt i64 %indvars.iv.next.i.i, %i.atc
  br i1 %i.atd, label %.lr.ph22.i.i, label %.preheader.i.i, !llvm.loop !173

.lr.ph24.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph24.i.i
  %i.ate = phi ptr [ %i.ati, %.lr.ph24.i.i ], [ %.0..0..0..0..0..0..0..0.82.i.i, %.preheader.i.i ] ; 2 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %i.ate, i64 8 ; 2 uses
  %i.atg = load <2 x float>, ptr %i.atf, align 8, !tbaa !64
  %i.ath = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.atg)
  store float %i.ath, ptr %i.atf, align 8, !tbaa !192
  %i.ati = load ptr, ptr %i.ate, align 8, !tbaa !179 ; 2 uses
  %.not92.i.i = icmp eq ptr %i.ati, null
  br i1 %.not92.i.i, label %._crit_edge25.i.i, label %.lr.ph24.i.i, !llvm.loop !174

._crit_edge25.i.i:                                ; preds = %.lr.ph24.i.i, %.preheader.i.i
  %i.atj = add nsw i32 %.07530.i.i, 1
  %i.atk = add nuw nsw i32 %.07629.i.i, 1         ; 2 uses
  %i.atl = load i32, ptr %i.iy, align 4, !tbaa !72
  %i.atm = icmp slt i32 %i.atk, %i.atl
  br i1 %i.atm, label %bb.z, label %._crit_edge34.i.i, !llvm.loop !175

._crit_edge34.i.i:                                ; preds = %._crit_edge25.i.i
  %.not1.i.i.i = icmp eq ptr %.sroa.0.1.lcssa.i.i, null
  br i1 %.not1.i.i.i, label %_ZN2cvL20stbtt__hheap_cleanupEPNS_12stbtt__hheapEPv.exit.i.i, label %.lr.ph.i94.i.i

.lr.ph.i94.i.i:                                   ; preds = %._crit_edge34.i.i, %.lr.ph.i94.i.i
  %.02.i.i.i = phi ptr [ %i.atn, %.lr.ph.i94.i.i ], [ %.sroa.0.1.lcssa.i.i, %._crit_edge34.i.i ] ; 2 uses
  %i.atn = load ptr, ptr %.02.i.i.i, align 8, !tbaa !187 ; 2 uses
  tail call void @free(ptr noundef nonnull %.02.i.i.i) #22
  %.not.i95.i.i = icmp eq ptr %i.atn, null
  br i1 %.not.i95.i.i, label %_ZN2cvL20stbtt__hheap_cleanupEPNS_12stbtt__hheapEPv.exit.i.i, label %.lr.ph.i94.i.i, !llvm.loop !176

_ZN2cvL20stbtt__hheap_cleanupEPNS_12stbtt__hheapEPv.exit.i.i: ; preds = %.lr.ph.i94.i.i, %._crit_edge34.i.i, %bb.y
  %.not.i.i = icmp eq ptr %.080.i.i, %i.b
  br i1 %.not.i.i, label %_ZN2cvL29stbtt__rasterize_sorted_edgesEPNS_13stbtt__bitmapEPNS_11stbtt__edgeEiiiiPv.exit.i, label %bb.ii

bb.ii:                                            ; preds = %_ZN2cvL20stbtt__hheap_cleanupEPNS_12stbtt__hheapEPv.exit.i.i
  call void @free(ptr noundef %.080.i.i) #22
  br label %_ZN2cvL29stbtt__rasterize_sorted_edgesEPNS_13stbtt__bitmapEPNS_11stbtt__edgeEiiiiPv.exit.i

_ZN2cvL29stbtt__rasterize_sorted_edgesEPNS_13stbtt__bitmapEPNS_11stbtt__edgeEiiiiPv.exit.i: ; preds = %bb.ii, %_ZN2cvL20stbtt__hheap_cleanupEPNS_12stbtt__hheapEPv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @free(ptr noundef %i.fo) #22
  br label %_ZN2cvL16stbtt__rasterizeEPNS_13stbtt__bitmapEPNS_12stbtt__pointEPiiffffiiiPv.exit

_ZN2cvL16stbtt__rasterizeEPNS_13stbtt__bitmapEPNS_12stbtt__pointEPiiffffiiiPv.exit: ; preds = %._crit_edge.i27, %_ZN2cvL29stbtt__rasterize_sorted_edgesEPNS_13stbtt__bitmapEPNS_11stbtt__edgeEiiiiPv.exit.i
  call void @free(ptr noundef %i.be) #22
  call void @free(ptr noundef %i.db) #22
  br label %bb.ij

bb.ij:                                            ; preds = %_ZN2cvL19stbtt_FlattenCurvesEPNS_12stbtt_vertexEifPPiS2_Pv.exit.thread, %_ZN2cvL16stbtt__rasterizeEPNS_13stbtt__bitmapEPNS_12stbtt__pointEPiiffffiiiPv.exit
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_ZN2cv16stbtt_FreeBitmapEPhPv(ptr noundef captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #8 {
bb.a:
  tail call void @free(ptr noundef %0) #22
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @_ZN2cv35stbtt_GetGlyphBitmapSubpixelReallocEPKNS_14stbtt_fontinfoEffffiPiS3_S3_S3_S3_PfPPhS3_(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9, ptr nofree noundef writeonly captures(address_is_null) %10, ptr nofree noundef writeonly captures(address_is_null) %11, ptr nofree noundef captures(address_is_null) %12, ptr nofree noundef captures(address_is_null) %13) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %14 = alloca %"struct.cv::stbtt__bitmap", align 8 ; 7 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = icmp ne ptr %12, null
  %i.i = icmp ne ptr %13, null
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  %i.j = call noundef i32 @_ZN2cv19stbtt_GetGlyphShapeEPKNS_14stbtt_fontinfoEiPPNS_12stbtt_vertexEPiS6_S6_S6_(ptr noundef %0, i32 noundef %5, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d)
  %i.k = insertelement <2 x float> poison, float %1, i64 0
  %i.l = insertelement <2 x float> %i.k, float %2, i64 1 ; 3 uses
  %i.m = fcmp une <2 x float> %i.l, zeroinitializer ; 2 uses
  %i.n = shufflevector <2 x i1> %i.m, <2 x i1> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.o = bitcast <2 x i1> %i.m to i2
  %brmerge.not = icmp eq i2 %i.o, 0
  %i.p = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.q = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.r = select <4 x i1> %i.n, <4 x float> %i.p, <4 x float> %i.q ; 4 uses
  br i1 %brmerge.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !40
  br label %bb.ah

bb.d:                                             ; preds = %bb.b
  %i.t = load i32, ptr %i.a, align 4, !tbaa !34   ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !34
  %i.v = load i32, ptr %i.b, align 4, !tbaa !34   ; 2 uses
  %i.w = load i32, ptr %i.d, align 4, !tbaa !34
  %i.x = sub nsw i32 0, %i.w
  %i.y = sub nsw i32 0, %i.u
  %i.z = insertelement <4 x i32> poison, i32 %i.x, i64 0
  %i.aa = insertelement <4 x i32> %i.z, i32 %i.t, i64 1
  %i.ab = insertelement <4 x i32> %i.aa, i32 %i.y, i64 2
  %i.ac = insertelement <4 x i32> %i.ab, i32 %i.v, i64 3
  %i.ad = sitofp <4 x i32> %i.ac to <4 x float>
  %i.ae = insertelement <4 x float> poison, float %4, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %3, i64 1
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ah = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.r, <4 x float> %i.ag) ; 2 uses
  %i.ai = call <4 x float> @llvm.floor.v4f32(<4 x float> %i.ah)
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ak = fptosi <2 x float> %i.aj to <2 x i32>   ; 3 uses
  %i.al = call <4 x float> @llvm.ceil.v4f32(<4 x float> %i.ah)
  %i.am = shufflevector <4 x float> %i.al, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.an = fptosi <2 x float> %i.am to <2 x i32>
  %i.ao = sub nsw <2 x i32> %i.an, %i.ak          ; 3 uses
  %i.ap = add nsw <2 x i32> %i.ao, splat (i32 9)
  %i.aq = sdiv <2 x i32> %i.ap, splat (i32 10)    ; 2 uses
  %i.ar = extractelement <2 x i32> %i.aq, i64 0
  %i.as = extractelement <2 x i32> %i.aq, i64 1
  %. = call i32 @llvm.smax.i32(i32 %i.ar, i32 %i.as) ; 2 uses
  %i.at = add nsw i32 %., 10                      ; 4 uses
  %.neg165 = sub nsw i32 -10, %.                  ; 2 uses
  %i.au = shl nsw i32 %i.at, 1                    ; 2 uses
  %i.av = extractelement <2 x i32> %i.ao, i64 1
  %i.aw = add nsw i32 %i.au, %i.av                ; 9 uses
  store i32 %i.aw, ptr %14, align 8, !tbaa !71
  %i.ax = extractelement <2 x i32> %i.ao, i64 0
  %i.ay = add nsw i32 %i.au, %i.ax                ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !72
  %i.ba = load ptr, ptr %12, align 8, !tbaa !75   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !73
  %.not = icmp eq ptr %6, null                    ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %6, align 4, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not136 = icmp eq ptr %7, null                 ; 2 uses
  br i1 %.not136, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %7, align 4, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not137 = icmp eq ptr %8, null
  br i1 %.not137, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.aw, ptr %8, align 4, !tbaa !34
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not138 = icmp eq ptr %9, null                 ; 2 uses
  br i1 %.not138, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %9, align 4, !tbaa !34
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not139 = icmp eq ptr %10, null                ; 2 uses
  br i1 %.not139, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %10, align 4, !tbaa !34
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not140 = icmp eq ptr %11, null
  br i1 %.not140, label %bb.o, label %_ZN2cv22stbtt_GetGlyphHMetricsEPKNS_14stbtt_fontinfoEiPiS3_.exit

_ZN2cv22stbtt_GetGlyphHMetricsEPKNS_14stbtt_fontinfoEiPiS3_.exit: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store i32 0, ptr %i.f, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  store i32 0, ptr %i.g, align 4, !tbaa !34
end_hunk_1
