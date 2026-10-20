Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stb_truetype?download=true
inline.NumInlined: 427
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 43
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
  %.pre-phi58.i = trunc i64 %indvars.iv40.i to i32
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
  %.0857.i = phi i32 [ %i.hi, %.lr.ph10.preheader.i ], [ %.pre-phi60.i, %.lr.ph10._crit_edge.i ]
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
  store i32 %spec.store.select21.i, ptr %i.hq, align 4, !tbaa !177
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
  %.pre-phi60.i = trunc i64 %indvars.iv30.i to i32
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i.i, i64 12, i1 false), !tbaa.struct !178
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx26.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i, i64 12, i1 false), !tbaa.struct !178
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN2cvL17stbtt__sort_edgesEPNS_11stbtt__edgeEi.exit.i, label %.lr.ph.i.i.i, !llvm.loop !167

_ZN2cvL17stbtt__sort_edgesEPNS_11stbtt__edgeEi.exit.i: ; preds = %bb.w, %._crit_edge17.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.ip = load i32, ptr %0, align 8, !tbaa !71    ; 4 uses
  %i.iq = icmp sgt i32 %i.ip, 64
  br i1 %i.iq, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN2cvL17stbtt__sort_edgesEPNS_11stbtt__edgeEi.exit.i
  %i.ir = shl nuw nsw i32 %i.ip, 1
  %i.is = or disjoint i32 %i.ir, 1
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = shl nuw nsw i64 %i.it, 2
  %i.iv = tail call noalias ptr @malloc(i64 noundef %i.iu) #22
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
  br i1 %i.jg, label %.lr.ph63.i.i, label %_ZN2cvL20stbtt__hheap_cleanupEPNS_12stbtt__hheapEPv.exit.i.i

.lr.ph63.i.i:                                     ; preds = %bb.y
  %i.jh = sitofp i32 %8 to float
  %i.ji = icmp ne i32 %9, 0
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ix, i64 4 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge55.i.i, %.lr.ph63.i.i
  %i.jm = phi i32 [ %i.ip, %.lr.ph63.i.i ], [ %i.aor, %._crit_edge55.i.i ] ; 6 uses
  %.0..i.i = phi ptr [ null, %.lr.ph63.i.i ], [ %.0..0..0..0..0..0..0..0.82.i.i, %._crit_edge55.i.i ] ; 2 uses
  %.061.i.i = phi ptr [ %i.fo, %.lr.ph63.i.i ], [ %.1.lcssa.i.i, %._crit_edge55.i.i ] ; 3 uses
  %.07560.i.i = phi i32 [ %9, %.lr.ph63.i.i ], [ %i.apr, %._crit_edge55.i.i ] ; 2 uses
  %.07659.i.i = phi i32 [ 0, %.lr.ph63.i.i ], [ %i.aps, %._crit_edge55.i.i ] ; 3 uses
  %.sroa.11.058.i.i = phi i32 [ 0, %.lr.ph63.i.i ], [ %.sroa.11.1.lcssa.i.i, %._crit_edge55.i.i ] ; 2 uses
  %.sroa.7.057.i.i = phi ptr [ null, %.lr.ph63.i.i ], [ %.sroa.7.3.lcssa.i.i, %._crit_edge55.i.i ] ; 2 uses
  %.sroa.0.056.i.i = phi ptr [ null, %.lr.ph63.i.i ], [ %.sroa.0.1.lcssa.i.i, %._crit_edge55.i.i ] ; 2 uses
  %i.jn = sitofp i32 %.07560.i.i to float         ; 40 uses
  %i.jo = fadd float %i.jn, 1.000000e+00          ; 53 uses
  %i.jp = sext i32 %i.jm to i64
  %i.jq = shl nsw i64 %i.jp, 2
  call void @llvm.memset.p0.i64(ptr align 4 %.080.i.i, i8 0, i64 %i.jq, i1 false)
  %i.jr = add nsw i32 %i.jm, 1
  %i.js = sext i32 %i.jr to i64
  %i.jt = shl nsw i64 %i.js, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ix, i8 0, i64 %i.jt, i1 false)
  %.not9038.i.i = icmp eq ptr %.0..i.i, null
  br i1 %.not9038.i.i, label %.preheader37.i.i, label %.lr.ph.i.i

.preheader37.i.i:                                 ; preds = %bb.ab, %bb.z
  %.sroa.7.1.lcssa.i.i = phi ptr [ %.sroa.7.057.i.i, %bb.z ], [ %.sroa.7.2.i.i, %bb.ab ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.061.i.i, i64 4
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !68 ; 2 uses
  %i.jw = fcmp ugt float %i.jv, %i.jo
  br i1 %i.jw, label %._crit_edge.i.i, label %.lr.ph45.i.i

.lr.ph45.i.i:                                     ; preds = %.preheader37.i.i
  %i.jx = icmp eq i32 %.07659.i.i, 0
  %or.cond.i.i = and i1 %i.ji, %i.jx
  br label %bb.ac

.lr.ph.i.i:                                       ; preds = %bb.z, %bb.ab
  %i.jy = phi ptr [ %i.ke, %bb.ab ], [ %.0..i.i, %bb.z ] ; 6 uses
  %.07840.i.i = phi ptr [ %.179.i.i, %bb.ab ], [ %i.a, %bb.z ] ; 2 uses
  %.sroa.7.139.i.i = phi ptr [ %.sroa.7.2.i.i, %bb.ab ], [ %.sroa.7.057.i.i, %bb.z ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 28
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !182
  %i.kb = fcmp ugt float %i.ka, %i.jn
  br i1 %i.kb, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i
  %i.kc = load ptr, ptr %i.jy, align 8, !tbaa !183
  store ptr %i.kc, ptr %.07840.i.i, align 8, !tbaa !180
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 20
  store float 0.000000e+00, ptr %i.kd, align 4, !tbaa !184
  store ptr %.sroa.7.139.i.i, ptr %i.jy, align 8, !tbaa !40
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i.i
  %.sroa.7.2.i.i = phi ptr [ %.sroa.7.139.i.i, %.lr.ph.i.i ], [ %i.jy, %bb.aa ] ; 2 uses
  %.179.i.i = phi ptr [ %i.jy, %.lr.ph.i.i ], [ %.07840.i.i, %bb.aa ] ; 2 uses
  %i.ke = load ptr, ptr %.179.i.i, align 8, !tbaa !180 ; 2 uses
  %.not90.i.i = icmp eq ptr %i.ke, null
  br i1 %.not90.i.i, label %.preheader37.i.i, label %.lr.ph.i.i, !llvm.loop !168

bb.ac:                                            ; preds = %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i, %.lr.ph45.i.i
  %i.kf = phi float [ %i.jv, %.lr.ph45.i.i ], [ %i.lr, %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i ] ; 4 uses
  %.144.i.i = phi ptr [ %.061.i.i, %.lr.ph45.i.i ], [ %i.lp, %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i ] ; 6 uses
  %.sroa.11.143.i.i = phi i32 [ %.sroa.11.058.i.i, %.lr.ph45.i.i ], [ %.sroa.11.4.i.i, %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i ] ; 4 uses
  %.sroa.7.342.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i, %.lr.ph45.i.i ], [ %.sroa.7.6.i.i, %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i ] ; 4 uses
  %.sroa.0.141.i.i = phi ptr [ %.sroa.0.056.i.i, %.lr.ph45.i.i ], [ %.sroa.0.5.i.i, %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i ] ; 5 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.144.i.i, i64 12
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !185 ; 4 uses
  %i.ki = fcmp une float %i.kf, %i.kh
  br i1 %i.ki, label %bb.ad, label %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i

bb.ad:                                            ; preds = %bb.ac
  %.not.i.i.i.i = icmp eq ptr %.sroa.7.342.i.i, null
  br i1 %.not.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kj = load ptr, ptr %.sroa.7.342.i.i, align 8, !tbaa !40
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %i.kk = icmp eq i32 %.sroa.11.143.i.i, 0
  br i1 %i.kk, label %bb.ag, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.af
  %i.kl = add nsw i32 %.sroa.11.143.i.i, -1
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.km = tail call noalias dereferenceable_or_null(25608) ptr @malloc(i64 noundef 25608) #22 ; 3 uses
  %i.kn = icmp eq ptr %i.km, null
  br i1 %i.kn, label %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.ag
  store ptr %.sroa.0.141.i.i, ptr %i.km, align 8, !tbaa !188
  br label %bb.ah

bb.ah:                                            ; preds = %.thread.i.i.i.i, %._crit_edge.i.i.i.i
  %.sroa.0.2.i.i = phi ptr [ %i.km, %.thread.i.i.i.i ], [ %.sroa.0.141.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ko = phi i32 [ 799, %.thread.i.i.i.i ], [ %i.kl, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.i, i64 8
  %i.kq = zext nneg i32 %i.ko to i64
  %i.kr = shl nuw nsw i64 %i.kq, 5
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.kr
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %.sroa.0.3.i.i = phi ptr [ %.sroa.0.2.i.i, %bb.ah ], [ %.sroa.0.141.i.i, %bb.ae ]
  %.sroa.7.4.i.i = phi ptr [ null, %bb.ah ], [ %i.kj, %bb.ae ]
  %.sroa.11.2.i.i = phi i32 [ %i.ko, %bb.ah ], [ %.sroa.11.143.i.i, %bb.ae ]
  %.1.i.ph.i.i.i = phi ptr [ %i.ks, %bb.ah ], [ %.sroa.7.342.i.i, %bb.ae ] ; 9 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.144.i.i, i64 8
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !189
  %i.kv = load float, ptr %.144.i.i, align 4, !tbaa !190 ; 2 uses
  %i.kw = fsub float %i.ku, %i.kv
  %i.kx = fsub float %i.kh, %i.kf
  %i.ky = fdiv float %i.kw, %i.kx                 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i, i64 12
  store float %i.ky, ptr %i.kz, align 4, !tbaa !191
  %i.la = fcmp une float %i.ky, 0.000000e+00
  %i.lb = fdiv float 1.000000e+00, %i.ky
  %i.lc = select i1 %i.la, float %i.lb, float 0.000000e+00
  %i.ld = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i, i64 16
  store float %i.lc, ptr %i.ld, align 8, !tbaa !192
  %i.le = fsub float %i.jn, %i.kf
  %i.lf = tail call float @llvm.fmuladd.f32(float %i.ky, float %i.le, float %i.kv)
  %i.lg = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i, i64 8
  %i.lh = fsub float %i.lf, %i.jh
  store float %i.lh, ptr %i.lg, align 8, !tbaa !193
  %i.li = getelementptr inbounds nuw i8, ptr %.144.i.i, i64 16
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !177
  %.not28.i.i.i = icmp eq i32 %i.lj, 0
  %i.lk = select i1 %.not28.i.i.i, float -1.000000e+00, float 1.000000e+00
  %i.ll = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i, i64 20
  store float %i.lk, ptr %i.ll, align 4, !tbaa !184
  %i.lm = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i, i64 24
  store float %i.kf, ptr %i.lm, align 8, !tbaa !194
  %i.ln = getelementptr inbounds nuw i8, ptr %.1.i.ph.i.i.i, i64 28 ; 2 uses
  store float %i.kh, ptr %i.ln, align 4, !tbaa !182
  store ptr null, ptr %.1.i.ph.i.i.i, align 8, !tbaa !183
  %i.lo = fcmp olt float %i.kh, %i.jn
  %or.cond145.i.i = select i1 %or.cond.i.i, i1 %i.lo, i1 false
  br i1 %or.cond145.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store float %i.jn, ptr %i.ln, align 4, !tbaa !182
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0..0..0..0..0..0..0..0..i.i = load ptr, ptr %i.a, align 8, !tbaa !180
  store ptr %.0..0..0..0..0..0..0..0..i.i, ptr %.1.i.ph.i.i.i, align 8, !tbaa !183
  store ptr %.1.i.ph.i.i.i, ptr %i.a, align 8, !tbaa !180
  br label %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i

_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i: ; preds = %bb.ak, %bb.ag, %bb.ac
  %.sroa.0.5.i.i = phi ptr [ %.sroa.0.141.i.i, %bb.ac ], [ %.sroa.0.3.i.i, %bb.ak ], [ %.sroa.0.141.i.i, %bb.ag ] ; 2 uses
  %.sroa.7.6.i.i = phi ptr [ %.sroa.7.342.i.i, %bb.ac ], [ %.sroa.7.4.i.i, %bb.ak ], [ null, %bb.ag ] ; 2 uses
  %.sroa.11.4.i.i = phi i32 [ %.sroa.11.143.i.i, %bb.ac ], [ %.sroa.11.2.i.i, %bb.ak ], [ 0, %bb.ag ] ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.144.i.i, i64 20 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.144.i.i, i64 24
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !68 ; 2 uses
  %i.ls = fcmp ugt float %i.lr, %i.jo
  br i1 %i.ls, label %._crit_edge.i.i, label %bb.ac, !llvm.loop !169

._crit_edge.i.i:                                  ; preds = %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i, %.preheader37.i.i
  %.sroa.0.1.lcssa.i.i = phi ptr [ %.sroa.0.056.i.i, %.preheader37.i.i ], [ %.sroa.0.5.i.i, %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i ] ; 3 uses
  %.sroa.7.3.lcssa.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i, %.preheader37.i.i ], [ %.sroa.7.6.i.i, %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i ]
  %.sroa.11.1.lcssa.i.i = phi i32 [ %.sroa.11.058.i.i, %.preheader37.i.i ], [ %.sroa.11.4.i.i, %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i ]
  %.1.lcssa.i.i = phi ptr [ %.061.i.i, %.preheader37.i.i ], [ %i.lp, %_ZN2cvL17stbtt__new_activeEPNS_12stbtt__hheapEPNS_11stbtt__edgeEifPv.exit.thread.i.i ]
  %.0..0..0..0..0..0..0..0.82.i.i = load ptr, ptr %i.a, align 8, !tbaa !180 ; 4 uses
  %.not91.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0.82.i.i, null ; 2 uses
  br i1 %.not91.i.i, label %_ZN2cvL28stbtt__fill_active_edges_newEPfS0_iPNS_18stbtt__active_edgeEf.exit.i.i, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i.i
  %i.lt = sitofp i32 %i.jm to float               ; 3 uses
  %i.lu = icmp sgt i32 %i.jm, 0
  %i.lv = fcmp oeq float %i.jo, %i.jn             ; 3 uses
  %i.lw = fsub float %i.jo, %i.jn                 ; 4 uses
  %wide.trip.count.i.i91.i = zext nneg i32 %i.jm to i64
  br label %bb.am

bb.am:                                            ; preds = %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i, %bb.al
  %.0293468.i.i.i = phi ptr [ %.0..0..0..0..0..0..0..0.82.i.i, %bb.al ], [ %i.aoo, %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i ] ; 19 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 12
  %i.ly = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 8
  %i.lz = load float, ptr %i.lx, align 4, !tbaa !191 ; 5 uses
  %i.ma = fcmp oeq float %i.lz, 0.000000e+00
  %i.mb = load float, ptr %i.ly, align 8, !tbaa !193 ; 49 uses
  br i1 %i.ma, label %bb.an, label %bb.bt

bb.an:                                            ; preds = %bb.am
  %i.mc = fcmp olt float %i.mb, %i.lt
  br i1 %i.mc, label %bb.ao, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.md = fcmp ult float %i.mb, 0.000000e+00
  br i1 %i.md, label %bb.bi, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.me = fptosi float %i.mb to i32               ; 6 uses
  br i1 %i.lv, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.mf = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 28
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !182 ; 6 uses
  %i.mh = fcmp olt float %i.mg, %i.jn
  br i1 %i.mh, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.mi = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 24
  %i.mj = load float, ptr %i.mi, align 8, !tbaa !194 ; 6 uses
  %i.mk = fcmp olt float %i.jo, %i.mj
  br i1 %i.mk, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ml = fcmp ogt float %i.mj, %i.jn             ; 2 uses
  br i1 %i.ml, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.mm = fsub float %i.mb, %i.mb
  %i.mn = fsub float %i.mj, %i.jn
  %i.mo = fmul float %i.mm, %i.mn
  %i.mp = fdiv float %i.mo, %i.lw
  %i.mq = fadd float %i.mb, %i.mp
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.055.i.i.i.i = phi float [ %i.mq, %bb.at ], [ %i.mb, %bb.as ] ; 4 uses
  %.054.i.i.i.i = phi float [ %i.mj, %bb.at ], [ %i.jn, %bb.as ] ; 3 uses
  %i.mr = fcmp ogt float %i.jo, %i.mg             ; 2 uses
  br i1 %i.mr, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ms = fsub float %i.mb, %.055.i.i.i.i
  %i.mt = fsub float %i.mg, %i.jo
  %i.mu = fmul float %i.mt, %i.ms
  %i.mv = fsub float %i.jo, %.054.i.i.i.i
  %i.mw = fdiv float %i.mu, %i.mv
  %i.mx = fadd float %i.mb, %i.mw
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.053.i.i.i.i = phi float [ %i.mx, %bb.av ], [ %i.mb, %bb.au ] ; 3 uses
  %.0.i.i.i.i = phi float [ %i.mg, %bb.av ], [ %i.jo, %bb.au ] ; 2 uses
  %i.my = sitofp i32 %i.me to float               ; 4 uses
  %i.mz = fcmp ugt float %.055.i.i.i.i, %i.my
  %i.na = fcmp ugt float %.053.i.i.i.i, %i.my
  %or.cond.i.i.i.i = select i1 %i.mz, i1 true, i1 %i.na
  br i1 %or.cond.i.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.nb = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !184
  %i.nd = fsub float %.0.i.i.i.i, %.054.i.i.i.i
  %i.ne = zext nneg i32 %i.me to i64
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %i.ne ; 2 uses
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !64
  %i.nh = tail call float @llvm.fmuladd.f32(float %i.nc, float %i.nd, float %i.ng)
  store float %i.nh, ptr %i.nf, align 4, !tbaa !64
  %.pre56.i = add nuw nsw i32 %i.me, 1
  br label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  %i.ni = add nuw nsw i32 %i.me, 1                ; 3 uses
  %i.nj = sitofp i32 %i.ni to float               ; 2 uses
  %i.nk = fcmp ult float %.055.i.i.i.i, %i.nj
  %i.nl = fcmp ult float %.053.i.i.i.i, %i.nj
  %or.cond62.i.i.i.i = select i1 %i.nk, i1 true, i1 %i.nl
  br i1 %or.cond62.i.i.i.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.nm = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !184
  %i.no = fsub float %.0.i.i.i.i, %.054.i.i.i.i
  %i.np = fmul float %i.no, %i.nn
  %i.nq = fsub float %.055.i.i.i.i, %i.my
  %i.nr = fsub float %.053.i.i.i.i, %i.my
  %i.ns = fadd float %i.nq, %i.nr
  %i.nt = fmul float %i.ns, 5.000000e-01
  %i.nu = fsub float 1.000000e+00, %i.nt
  %i.nv = zext nneg i32 %i.me to i64
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %i.nv ; 2 uses
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !64
  %i.ny = tail call float @llvm.fmuladd.f32(float %i.np, float %i.nu, float %i.nx)
  store float %i.ny, ptr %i.nw, align 4, !tbaa !64
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %.pre-phi.i = phi i32 [ %i.ni, %bb.az ], [ %i.ni, %bb.ay ], [ %.pre56.i, %bb.ax ] ; 3 uses
  br i1 %i.ml, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.nz = fsub float %i.mb, %i.mb
  %i.oa = fsub float %i.mj, %i.jn
  %i.ob = fmul float %i.nz, %i.oa
  %i.oc = fdiv float %i.ob, %i.lw
  %i.od = fadd float %i.mb, %i.oc
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.055.i345.i.i.i = phi float [ %i.od, %bb.bb ], [ %i.mb, %bb.ba ] ; 4 uses
  %.054.i346.i.i.i = phi float [ %i.mj, %bb.bb ], [ %i.jn, %bb.ba ] ; 3 uses
  br i1 %i.mr, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.oe = fsub float %i.mb, %.055.i345.i.i.i
  %i.of = fsub float %i.mg, %i.jo
  %i.og = fmul float %i.of, %i.oe
  %i.oh = fsub float %i.jo, %.054.i346.i.i.i
  %i.oi = fdiv float %i.og, %i.oh
  %i.oj = fadd float %i.mb, %i.oi
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.053.i347.i.i.i = phi float [ %i.oj, %bb.bd ], [ %i.mb, %bb.bc ] ; 3 uses
  %.0.i348.i.i.i = phi float [ %i.mg, %bb.bd ], [ %i.jo, %bb.bc ] ; 2 uses
  %i.ok = sitofp i32 %.pre-phi.i to float         ; 4 uses
  %i.ol = fcmp ugt float %.055.i345.i.i.i, %i.ok
  %i.om = fcmp ugt float %.053.i347.i.i.i, %i.ok
  %or.cond.i349.i.i.i = select i1 %i.ol, i1 true, i1 %i.om
  br i1 %or.cond.i349.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.on = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.oo = load float, ptr %i.on, align 4, !tbaa !184
  %i.op = fsub float %.0.i348.i.i.i, %.054.i346.i.i.i
  %i.oq = zext nneg i32 %.pre-phi.i to i64
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %i.oq ; 2 uses
  %i.os = load float, ptr %i.or, align 4, !tbaa !64
  %i.ot = tail call float @llvm.fmuladd.f32(float %i.oo, float %i.op, float %i.os)
  store float %i.ot, ptr %i.or, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i

bb.bg:                                            ; preds = %bb.be
  %i.ou = add nuw nsw i32 %i.me, 2
  %i.ov = sitofp i32 %i.ou to float               ; 2 uses
  %i.ow = fcmp ult float %.055.i345.i.i.i, %i.ov
  %i.ox = fcmp ult float %.053.i347.i.i.i, %i.ov
  %or.cond62.i350.i.i.i = select i1 %i.ow, i1 true, i1 %i.ox
  br i1 %or.cond62.i350.i.i.i, label %bb.bh, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.oy = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !184
  %i.pa = fsub float %.0.i348.i.i.i, %.054.i346.i.i.i
  %i.pb = fmul float %i.pa, %i.oz
  %i.pc = fsub float %.055.i345.i.i.i, %i.ok
  %i.pd = fsub float %.053.i347.i.i.i, %i.ok
  %i.pe = fadd float %i.pc, %i.pd
  %i.pf = fmul float %i.pe, 5.000000e-01
  %i.pg = fsub float 1.000000e+00, %i.pf
  %i.ph = zext nneg i32 %.pre-phi.i to i64
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %i.ph ; 2 uses
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !64
  %i.pk = tail call float @llvm.fmuladd.f32(float %i.pb, float %i.pg, float %i.pj)
  store float %i.pk, ptr %i.pi, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i

bb.bi:                                            ; preds = %bb.ao
  br i1 %i.lv, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.pl = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 28
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !182 ; 4 uses
  %i.pn = fcmp olt float %i.pm, %i.jn
  br i1 %i.pn, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.po = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 24
  %i.pp = load float, ptr %i.po, align 8, !tbaa !194 ; 4 uses
  %i.pq = fcmp olt float %i.jo, %i.pp
  br i1 %i.pq, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.pr = fcmp ogt float %i.pp, %i.jn
  br i1 %i.pr, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ps = fsub float %i.mb, %i.mb
  %i.pt = fsub float %i.pp, %i.jn
  %i.pu = fmul float %i.ps, %i.pt
  %i.pv = fdiv float %i.pu, %i.lw
  %i.pw = fadd float %i.mb, %i.pv
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.055.i352.i.i.i = phi float [ %i.pw, %bb.bm ], [ %i.mb, %bb.bl ] ; 4 uses
  %.054.i353.i.i.i = phi float [ %i.pp, %bb.bm ], [ %i.jn, %bb.bl ] ; 3 uses
  %i.px = fcmp ogt float %i.jo, %i.pm
  br i1 %i.px, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.py = fsub float %i.mb, %.055.i352.i.i.i
  %i.pz = fsub float %i.pm, %i.jo
  %i.qa = fmul float %i.pz, %i.py
  %i.qb = fsub float %i.jo, %.054.i353.i.i.i
  %i.qc = fdiv float %i.qa, %i.qb
  %i.qd = fadd float %i.mb, %i.qc
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.053.i354.i.i.i = phi float [ %i.qd, %bb.bo ], [ %i.mb, %bb.bn ] ; 3 uses
  %.0.i355.i.i.i = phi float [ %i.pm, %bb.bo ], [ %i.jo, %bb.bn ] ; 2 uses
  %i.qe = fcmp ugt float %.055.i352.i.i.i, 0.000000e+00
  %i.qf = fcmp ugt float %.053.i354.i.i.i, 0.000000e+00
  %or.cond.i356.i.i.i = select i1 %i.qe, i1 true, i1 %i.qf
  br i1 %or.cond.i356.i.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.qg = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !184
  %i.qi = fsub float %.0.i355.i.i.i, %.054.i353.i.i.i
  %i.qj = load float, ptr %i.ix, align 4, !tbaa !64
  %i.qk = tail call float @llvm.fmuladd.f32(float %i.qh, float %i.qi, float %i.qj)
  store float %i.qk, ptr %i.ix, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i

bb.br:                                            ; preds = %bb.bp
  %i.ql = fcmp ult float %.055.i352.i.i.i, 1.000000e+00
  %i.qm = fcmp ult float %.053.i354.i.i.i, 1.000000e+00
  %or.cond62.i357.i.i.i = select i1 %i.ql, i1 true, i1 %i.qm
  br i1 %or.cond62.i357.i.i.i, label %bb.bs, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i

bb.bs:                                            ; preds = %bb.br
  %i.qn = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !184
  %i.qp = fsub float %.0.i355.i.i.i, %.054.i353.i.i.i
  %i.qq = fmul float %i.qp, %i.qo
  %i.qr = fadd float %.055.i352.i.i.i, %.053.i354.i.i.i
  %i.qs = fmul float %i.qr, 5.000000e-01
  %i.qt = fsub float 1.000000e+00, %i.qs
  %i.qu = load float, ptr %i.ix, align 4, !tbaa !64
  %i.qv = tail call float @llvm.fmuladd.f32(float %i.qq, float %i.qt, float %i.qu)
  store float %i.qv, ptr %i.ix, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i

bb.bt:                                            ; preds = %bb.am
  %i.qw = fadd float %i.lz, %i.mb                 ; 34 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 16
  %i.qy = load float, ptr %i.qx, align 8, !tbaa !192 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 24
  %12 = load float, ptr %i.qz, align 8, !tbaa !194 ; 28 uses
  %i.ra = fcmp ogt float %12, %i.jn               ; 9 uses
  %13 = fsub float %12, %i.jn                     ; 8 uses
  %14 = tail call float @llvm.fmuladd.f32(float %i.lz, float %13, float %i.mb)
  %.0305.i.i.i = select i1 %i.ra, float %14, float %i.mb ; 7 uses
  %.0301.i.i.i = select i1 %i.ra, float %12, float %i.jn ; 23 uses
  %15 = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 28
  %16 = load float, ptr %15, align 4, !tbaa !182  ; 43 uses
  %17 = fcmp olt float %16, %i.jo                 ; 9 uses
  %18 = fsub float %16, %i.jn
  %19 = tail call float @llvm.fmuladd.f32(float %i.lz, float %18, float %i.mb)
  %.0303.i.i.i = select i1 %17, float %19, float %i.qw ; 7 uses
  %.0299.i.i.i = select i1 %17, float %16, float %i.jo ; 4 uses
  %i.rb = fcmp oge float %.0305.i.i.i, 0.000000e+00
  %i.rc = fcmp oge float %.0303.i.i.i, 0.000000e+00
  %or.cond.i.i.i = select i1 %i.rb, i1 %i.rc, i1 false
  br i1 %or.cond.i.i.i, label %bb.bu, label %bb.ca

bb.bu:                                            ; preds = %bb.bt
  %i.rd = fcmp olt float %.0305.i.i.i, %i.lt
  %i.re = fcmp olt float %.0303.i.i.i, %i.lt
  %or.cond338.i.i.i = select i1 %i.rd, i1 %i.re, i1 false
  br i1 %or.cond338.i.i.i, label %bb.bv, label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  %i.rf = fptosi float %.0305.i.i.i to i32        ; 5 uses
  %i.rg = fptosi float %.0303.i.i.i to i32        ; 3 uses
  %i.rh = icmp eq i32 %i.rf, %i.rg
  br i1 %i.rh, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ri = fsub float %.0299.i.i.i, %.0301.i.i.i
  %i.rj = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !184
  %i.rl = fmul float %i.ri, %i.rk                 ; 2 uses
  %i.rm = sitofp i32 %i.rf to float
  %i.rn = fadd float %i.rm, 1.000000e+00          ; 2 uses
  %i.ro = fsub float %i.rn, %.0305.i.i.i
  %i.rp = fsub float %i.rn, %.0303.i.i.i
  %i.rq = fadd float %i.ro, %i.rp
  %i.rr = fmul float %i.rq, 5.000000e-01
  %i.rs = fmul float %i.rr, %i.rl
  %i.rt = zext nneg i32 %i.rf to i64              ; 2 uses
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %i.rt ; 2 uses
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !64
  %i.rw = fadd float %i.rv, %i.rs
  store float %i.rw, ptr %i.ru, align 4, !tbaa !64
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.rt ; 2 uses
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !64
  %i.rz = fadd float %i.rl, %i.ry
  store float %i.rz, ptr %i.rx, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i

bb.bx:                                            ; preds = %bb.bv
  %i.sa = fcmp ogt float %.0305.i.i.i, %.0303.i.i.i
  br i1 %i.sa, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.sb = fsub float %i.jn, %.0301.i.i.i
  %i.sc = fadd float %i.jo, %i.sb
  %i.sd = fsub float %i.jn, %.0299.i.i.i
  %i.se = fadd float %i.jo, %i.sd
  %i.sf = fneg float %i.qy
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.pre-phi474.i.i.i = phi i32 [ %i.rf, %bb.by ], [ %i.rg, %bb.bx ] ; 7 uses
  %.pre-phi.i.i.i = phi i32 [ %i.rg, %bb.by ], [ %i.rf, %bb.bx ] ; 4 uses
  %.0307.i.i.i = phi float [ %i.qw, %bb.by ], [ %i.mb, %bb.bx ] ; 2 uses
  %.1306.i.i.i = phi float [ %.0303.i.i.i, %bb.by ], [ %.0305.i.i.i, %bb.bx ]
  %.1304.i.i.i = phi float [ %.0305.i.i.i, %bb.by ], [ %.0303.i.i.i, %bb.bx ]
  %.1302.i.i.i = phi float [ %i.se, %bb.by ], [ %.0301.i.i.i, %bb.bx ] ; 2 uses
  %.1300.i.i.i = phi float [ %i.sc, %bb.by ], [ %.0299.i.i.i, %bb.bx ] ; 2 uses
  %.0298.i.i.i = phi float [ %i.sf, %bb.by ], [ %i.qy, %bb.bx ] ; 3 uses
  %i.sg = add nuw nsw i32 %.pre-phi.i.i.i, 1      ; 3 uses
  %i.sh = uitofp nneg i32 %i.sg to float          ; 2 uses
  %i.si = fsub float %i.sh, %.0307.i.i.i
  %i.sj = tail call float @llvm.fmuladd.f32(float %.0298.i.i.i, float %i.si, float %i.jn) ; 2 uses
  %i.sk = uitofp nneg i32 %.pre-phi474.i.i.i to float ; 3 uses
  %i.sl = fsub float %i.sk, %.0307.i.i.i
  %i.sm = tail call float @llvm.fmuladd.f32(float %.0298.i.i.i, float %i.sl, float %i.jn) ; 2 uses
  %i.sn = fcmp ogt float %i.sj, %i.jo
  %.0296.i.i.i = select i1 %i.sn, float %i.jo, float %i.sj ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.sp = load float, ptr %i.so, align 4, !tbaa !184 ; 4 uses
  %i.sq = fsub float %.0296.i.i.i, %.1302.i.i.i
  %i.sr = fmul float %i.sp, %i.sq                 ; 5 uses
  %i.ss = fsub nnan float %i.sh, %.1306.i.i.i
  %i.st = fmul float %i.ss, %i.sr
  %i.su = fmul float %i.st, 5.000000e-01
  %i.sv = zext nneg i32 %.pre-phi.i.i.i to i64    ; 3 uses
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %i.sv ; 2 uses
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !64
  %i.sy = fadd float %i.sx, %i.su
  store float %i.sy, ptr %i.sw, align 4, !tbaa !64
  %i.sz = fcmp ogt float %i.sm, %i.jo             ; 2 uses
  %i.ta = fsub float %i.jo, %.0296.i.i.i
  %i.tb = sub nsw i32 %.pre-phi474.i.i.i, %i.sg
  %i.tc = sitofp i32 %i.tb to float
  %i.td = fdiv float %i.ta, %i.tc
  %.1.i.i.i = select i1 %i.sz, float %i.td, float %.0298.i.i.i
  %.0295.i.i.i = select i1 %i.sz, float %i.jo, float %i.sm
  %i.te = fmul float %i.sp, %.1.i.i.i             ; 4 uses
  %i.tf = icmp slt i32 %i.sg, %.pre-phi474.i.i.i
  br i1 %i.tf, label %.lr.ph467.i.i.i, label %._crit_edge.i.i.i

.lr.ph467.i.i.i:                                  ; preds = %bb.bz
  %i.tg = fmul float %i.te, 5.000000e-01          ; 3 uses
  %i.th = add nuw nsw i64 %i.sv, 1                ; 2 uses
  %i.ti = add nsw i32 %.pre-phi474.i.i.i, -2
  %i.tj = sub nsw i32 %.pre-phi.i.i.i, %.pre-phi474.i.i.i
  %i.tk = and i32 %i.tj, 1
  %lcmp.mod.not.not = icmp eq i32 %i.tk, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph467.i.i.i
  %i.tl = fadd float %i.tg, %i.sr
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %i.th ; 2 uses
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !64
  %i.to = fadd float %i.tl, %i.tn
  store float %i.to, ptr %i.tm, align 4, !tbaa !64
  %i.tp = fadd float %i.te, %i.sr                 ; 2 uses
  %indvars.iv.next472.i.i.i.prol = add nuw nsw i64 %i.sv, 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph467.i.i.i
  %indvars.iv471.i.i.i.unr = phi i64 [ %i.th, %.lr.ph467.i.i.i ], [ %indvars.iv.next472.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.0294466.i.i.i.unr = phi float [ %i.sr, %.lr.ph467.i.i.i ], [ %i.tp, %.prol.loopexit.unr-lcssa ]
  %.lcssa172.unr = phi float [ poison, %.lr.ph467.i.i.i ], [ %i.tp, %.prol.loopexit.unr-lcssa ]
  %i.tq = icmp eq i32 %i.ti, %.pre-phi.i.i.i
  br i1 %i.tq, label %._crit_edge.i.i.i, label %.lr.ph467.i.i.i.new

.lr.ph467.i.i.i.new:                              ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.new
  %indvars.iv471.i.i.i = phi i64 [ %indvars.iv.next472.i.i.i.1, %.lr.ph467.i.i.i.new ], [ %indvars.iv471.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0294466.i.i.i = phi float [ %i.ub, %.lr.ph467.i.i.i.new ], [ %.0294466.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.tr = fadd float %i.tg, %.0294466.i.i.i
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv471.i.i.i ; 2 uses
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !64
  %i.tu = fadd float %i.tr, %i.tt
  store float %i.tu, ptr %i.ts, align 4, !tbaa !64
  %i.tv = fadd float %i.te, %.0294466.i.i.i       ; 2 uses
  %i.tw = fadd float %i.tg, %i.tv
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv471.i.i.i
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 4 ; 2 uses
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !64
  %i.ua = fadd float %i.tw, %i.tz
  store float %i.ua, ptr %i.ty, align 4, !tbaa !64
  %i.ub = fadd float %i.te, %i.tv                 ; 2 uses
  %indvars.iv.next472.i.i.i.1 = add nuw nsw i64 %indvars.iv471.i.i.i, 2 ; 2 uses
  %i.uc = trunc nuw i64 %indvars.iv.next472.i.i.i.1 to i32
  %i.ud = icmp sgt i32 %.pre-phi474.i.i.i, %i.uc
  br i1 %i.ud, label %.lr.ph467.i.i.i.new, label %._crit_edge.i.i.i, !llvm.loop !170

._crit_edge.i.i.i:                                ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.new, %bb.bz
  %.0294.lcssa.i.i.i = phi float [ %i.sr, %bb.bz ], [ %.lcssa172.unr, %.prol.loopexit ], [ %i.ub, %.lr.ph467.i.i.i.new ]
  %i.ue = fsub float %.1300.i.i.i, %.0295.i.i.i
  %i.uf = fadd float %i.sk, 1.000000e+00          ; 2 uses
  %i.ug = fsub nnan float %i.uf, %i.sk
  %i.uh = fsub float %i.uf, %.1304.i.i.i
  %i.ui = fadd float %i.ug, %i.uh
  %i.uj = fmul float %i.ui, 5.000000e-01
  %i.uk = fmul float %i.uj, %i.ue
  %i.ul = tail call float @llvm.fmuladd.f32(float %i.sp, float %i.uk, float %.0294.lcssa.i.i.i)
  %i.um = zext nneg i32 %.pre-phi474.i.i.i to i64 ; 2 uses
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %i.um ; 2 uses
  %i.uo = load float, ptr %i.un, align 4, !tbaa !64
  %i.up = fadd float %i.ul, %i.uo
  store float %i.up, ptr %i.un, align 4, !tbaa !64
  %i.uq = fsub float %.1300.i.i.i, %.1302.i.i.i
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.um ; 2 uses
  %i.us = load float, ptr %i.ur, align 4, !tbaa !64
  %i.ut = tail call float @llvm.fmuladd.f32(float %i.sp, float %i.uq, float %i.us)
  store float %i.ut, ptr %i.ur, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i

bb.ca:                                            ; preds = %bb.bu, %bb.bt
  br i1 %i.lu, label %.lr.ph.i.i93.i, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i

.lr.ph.i.i93.i:                                   ; preds = %bb.ca
  %i.uu = fsub float %i.qw, %i.mb
  %i.uv = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20 ; 30 uses
  %i.uw = fcmp olt float %16, %i.jn               ; 7 uses
  %or.cond35.i.i = select i1 %i.lv, i1 true, i1 %i.uw
  %i.ux = fcmp olt float %i.jo, %12               ; 7 uses
  %or.cond36.i.i = or i1 %i.ux, %or.cond35.i.i
  %i.uy = fmul float %i.uu, %13
  %i.uz = fdiv float %i.uy, %i.lw
  %i.va = fadd float %i.mb, %i.uz
  %.055.i457.i.i.i = select i1 %i.ra, float %i.va, float %i.mb ; 4 uses
  %i.vb = fsub float %i.qw, %.055.i457.i.i.i
  %i.vc = fsub float %16, %i.jo                   ; 7 uses
  %i.vd = fmul float %i.vc, %i.vb
  %i.ve = fsub float %i.jo, %.0301.i.i.i
  %i.vf = fdiv float %i.vd, %i.ve
  %i.vg = fadd float %i.qw, %i.vf
  %.053.i459.i.i.i = select i1 %17, float %i.vg, float %i.qw ; 3 uses
  %i.vh = fsub float %.0299.i.i.i, %.0301.i.i.i   ; 2 uses
  %20 = insertelement <2 x float> poison, float %i.mb, i64 0
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %22 = insertelement <2 x float> poison, float %i.lz, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.cb

bb.cb:                                            ; preds = %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i, %.lr.ph.i.i93.i
  %indvars.iv.i.i94.i = phi i64 [ 0, %.lr.ph.i.i93.i ], [ %indvars.iv.next.i.i95.i, %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i ] ; 32 uses
  %indvars.iv.next.i.i95.i = add nuw nsw i64 %indvars.iv.i.i94.i, 1 ; 3 uses
  %i.vi = trunc nuw nsw i64 %indvars.iv.i.i94.i to i32
  %i.vj = uitofp nneg i32 %i.vi to float          ; 90 uses
  %i.vk = trunc nuw nsw i64 %indvars.iv.next.i.i95.i to i32
  %i.vl = uitofp nneg i32 %i.vk to float          ; 60 uses
  %i.vm = insertelement <2 x float> poison, float %i.vj, i64 0
  %i.vn = insertelement <2 x float> %i.vm, float %i.vl, i64 1
  %i.vo = fsub <2 x float> %i.vn, %21             ; 7 uses
  %i.vp = fdiv <2 x float> %i.vo, %23             ; 2 uses
  %i.vq = extractelement <2 x float> %i.vp, i64 0
  %i.vr = fadd float %i.vq, %i.jn                 ; 48 uses
  %i.vs = extractelement <2 x float> %i.vp, i64 1
  %i.vt = fadd float %i.vs, %i.jn                 ; 48 uses
  %i.vu = fcmp olt float %i.mb, %i.vj             ; 2 uses
  %i.vv = fcmp ogt float %i.qw, %i.vl             ; 2 uses
  %or.cond339.i.i.i = select i1 %i.vu, i1 %i.vv, i1 false
  br i1 %or.cond339.i.i.i, label %bb.cc, label %bb.cz

bb.cc:                                            ; preds = %bb.cb
  %i.vw = fcmp oeq float %i.vr, %i.jn
  %or.cond7.i.i = select i1 %i.vw, i1 true, i1 %i.uw
  %i.vx = fcmp olt float %i.vr, %12               ; 2 uses
  %or.cond8.i.i = or i1 %i.vx, %or.cond7.i.i
  br i1 %or.cond8.i.i, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit365.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %24 = extractelement <2 x float> %i.vo, i64 0
  %25 = fmul float %13, %24
  %i.vy = fsub float %i.vr, %i.jn
  %i.vz = fdiv float %25, %i.vy
  %i.wa = fadd float %i.mb, %i.vz
  %.055.i359.i.i.i = select i1 %i.ra, float %i.wa, float %i.mb ; 4 uses
  %i.wb = fcmp ogt float %i.vr, %16
  br i1 %i.wb, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.wc = fsub float %i.vj, %.055.i359.i.i.i
  %i.wd = fsub float %16, %i.vr
  %i.we = fmul float %i.wd, %i.wc
  %i.wf = fsub float %i.vr, %.0301.i.i.i
  %i.wg = fdiv float %i.we, %i.wf
  %i.wh = fadd float %i.wg, %i.vj
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.053.i361.i.i.i = phi float [ %i.wh, %bb.ce ], [ %i.vj, %bb.cd ] ; 3 uses
  %.0.i362.i.i.i = phi float [ %16, %bb.ce ], [ %i.vr, %bb.cd ] ; 2 uses
  %i.wi = fcmp ugt float %.055.i359.i.i.i, %i.vj
  %i.wj = fcmp ugt float %.053.i361.i.i.i, %i.vj
  %or.cond.i363.i.i.i = select i1 %i.wi, i1 true, i1 %i.wj
  br i1 %or.cond.i363.i.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.wk = load float, ptr %i.uv, align 4, !tbaa !184
  %i.wl = fsub float %.0.i362.i.i.i, %.0301.i.i.i
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !64
  %i.wo = tail call float @llvm.fmuladd.f32(float %i.wk, float %i.wl, float %i.wn)
  store float %i.wo, ptr %i.wm, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit365.i.i.i

bb.ch:                                            ; preds = %bb.cf
  %i.wp = fcmp ult float %.055.i359.i.i.i, %i.vl
  %i.wq = fcmp ult float %.053.i361.i.i.i, %i.vl
  %or.cond62.i364.i.i.i = select i1 %i.wp, i1 true, i1 %i.wq
  br i1 %or.cond62.i364.i.i.i, label %bb.ci, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit365.i.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.wr = load float, ptr %i.uv, align 4, !tbaa !184
  %i.ws = fsub float %.0.i362.i.i.i, %.0301.i.i.i
  %i.wt = fmul float %i.ws, %i.wr
  %i.wu = fsub float %.055.i359.i.i.i, %i.vj
  %i.wv = fsub float %.053.i361.i.i.i, %i.vj
  %i.ww = fadd float %i.wu, %i.wv
  %i.wx = fmul float %i.ww, 5.000000e-01
  %i.wy = fsub float 1.000000e+00, %i.wx
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.xa = load float, ptr %i.wz, align 4, !tbaa !64
  %i.xb = tail call float @llvm.fmuladd.f32(float %i.wt, float %i.wy, float %i.xa)
  store float %i.xb, ptr %i.wz, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit365.i.i.i

_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit365.i.i.i: ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.cc
  %i.xc = fcmp oeq float %i.vr, %i.vt
  %i.xd = fcmp ogt float %i.vr, %16
  %or.cond9.i.i = select i1 %i.xc, i1 true, i1 %i.xd
  %i.xe = fcmp olt float %i.vt, %12               ; 2 uses
  %or.cond10.i.i = or i1 %i.xe, %or.cond9.i.i
  br i1 %or.cond10.i.i, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit372.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit365.i.i.i
  br i1 %i.vx, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.xf = fsub nnan float %i.vl, %i.vj
  %i.xg = fsub float %12, %i.vr
  %i.xh = fmul float %i.xf, %i.xg
  %i.xi = fsub float %i.vt, %i.vr
  %i.xj = fdiv float %i.xh, %i.xi
  %i.xk = fadd float %i.xj, %i.vj
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.055.i366.i.i.i = phi float [ %i.xk, %bb.ck ], [ %i.vj, %bb.cj ] ; 4 uses
  %.054.i367.i.i.i = phi float [ %12, %bb.ck ], [ %i.vr, %bb.cj ] ; 3 uses
  %i.xl = fcmp ogt float %i.vt, %16
  br i1 %i.xl, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.xm = fsub float %i.vl, %.055.i366.i.i.i
  %i.xn = fsub float %16, %i.vt
  %i.xo = fmul float %i.xn, %i.xm
  %i.xp = fsub float %i.vt, %.054.i367.i.i.i
  %i.xq = fdiv float %i.xo, %i.xp
  %i.xr = fadd float %i.xq, %i.vl
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.053.i368.i.i.i = phi float [ %i.xr, %bb.cm ], [ %i.vl, %bb.cl ] ; 3 uses
  %.0.i369.i.i.i = phi float [ %16, %bb.cm ], [ %i.vt, %bb.cl ] ; 2 uses
  %i.xs = fcmp ugt float %.055.i366.i.i.i, %i.vj
  %i.xt = fcmp ugt float %.053.i368.i.i.i, %i.vj
  %or.cond.i370.i.i.i = select i1 %i.xs, i1 true, i1 %i.xt
  br i1 %or.cond.i370.i.i.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.xu = load float, ptr %i.uv, align 4, !tbaa !184
  %i.xv = fsub float %.0.i369.i.i.i, %.054.i367.i.i.i
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.xx = load float, ptr %i.xw, align 4, !tbaa !64
  %i.xy = tail call float @llvm.fmuladd.f32(float %i.xu, float %i.xv, float %i.xx)
  store float %i.xy, ptr %i.xw, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit372.i.i.i

bb.cp:                                            ; preds = %bb.cn
  %i.xz = fcmp ult float %.055.i366.i.i.i, %i.vl
  %i.ya = fcmp ult float %.053.i368.i.i.i, %i.vl
  %or.cond62.i371.i.i.i = select i1 %i.xz, i1 true, i1 %i.ya
  br i1 %or.cond62.i371.i.i.i, label %bb.cq, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit372.i.i.i

bb.cq:                                            ; preds = %bb.cp
  %i.yb = load float, ptr %i.uv, align 4, !tbaa !184
  %i.yc = fsub float %.0.i369.i.i.i, %.054.i367.i.i.i
  %i.yd = fmul float %i.yc, %i.yb
  %i.ye = fsub float %.055.i366.i.i.i, %i.vj
  %i.yf = fsub float %.053.i368.i.i.i, %i.vj
  %i.yg = fadd float %i.ye, %i.yf
  %i.yh = fmul float %i.yg, 5.000000e-01
  %i.yi = fsub float 1.000000e+00, %i.yh
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !64
  %i.yl = tail call float @llvm.fmuladd.f32(float %i.yd, float %i.yi, float %i.yk)
  store float %i.yl, ptr %i.yj, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit372.i.i.i

_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit372.i.i.i: ; preds = %bb.cq, %bb.cp, %bb.co, %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit365.i.i.i
  %i.ym = fcmp oeq float %i.vt, %i.jo
  %i.yn = fcmp ogt float %i.vt, %16
  %or.cond11.i.i = select i1 %i.ym, i1 true, i1 %i.yn
  %or.cond12.i.i = or i1 %i.ux, %or.cond11.i.i
  br i1 %or.cond12.i.i, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit372.i.i.i
  br i1 %i.xe, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.yo = fsub float %i.qw, %i.vl
  %i.yp = fsub float %12, %i.vt
  %i.yq = fmul float %i.yo, %i.yp
  %i.yr = fsub float %i.jo, %i.vt
  %i.ys = fdiv float %i.yq, %i.yr
  %i.yt = fadd float %i.ys, %i.vl
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.055.i373.i.i.i = phi float [ %i.yt, %bb.cs ], [ %i.vl, %bb.cr ] ; 4 uses
  %.054.i374.i.i.i = phi float [ %12, %bb.cs ], [ %i.vt, %bb.cr ] ; 3 uses
  br i1 %17, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.yu = fsub float %i.qw, %.055.i373.i.i.i
  %i.yv = fmul float %i.vc, %i.yu
  %i.yw = fsub float %i.jo, %.054.i374.i.i.i
  %i.yx = fdiv float %i.yv, %i.yw
  %i.yy = fadd float %i.qw, %i.yx
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.053.i375.i.i.i = phi float [ %i.yy, %bb.cu ], [ %i.qw, %bb.ct ] ; 3 uses
  %.0.i376.i.i.i = phi float [ %16, %bb.cu ], [ %i.jo, %bb.ct ] ; 2 uses
  %i.yz = fcmp ugt float %.055.i373.i.i.i, %i.vj
  %i.za = fcmp ugt float %.053.i375.i.i.i, %i.vj
  %or.cond.i377.i.i.i = select i1 %i.yz, i1 true, i1 %i.za
  br i1 %or.cond.i377.i.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.zb = load float, ptr %i.uv, align 4, !tbaa !184
  %i.zc = fsub float %.0.i376.i.i.i, %.054.i374.i.i.i
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.ze = load float, ptr %i.zd, align 4, !tbaa !64
  %i.zf = tail call float @llvm.fmuladd.f32(float %i.zb, float %i.zc, float %i.ze)
  store float %i.zf, ptr %i.zd, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

bb.cx:                                            ; preds = %bb.cv
  %i.zg = fcmp ult float %.055.i373.i.i.i, %i.vl
  %i.zh = fcmp ult float %.053.i375.i.i.i, %i.vl
  %or.cond62.i378.i.i.i = select i1 %i.zg, i1 true, i1 %i.zh
  br i1 %or.cond62.i378.i.i.i, label %bb.cy, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

bb.cy:                                            ; preds = %bb.cx
  %i.zi = load float, ptr %i.uv, align 4, !tbaa !184
  %i.zj = fsub float %.0.i376.i.i.i, %.054.i374.i.i.i
  %i.zk = fmul float %i.zj, %i.zi
  %i.zl = fsub float %.055.i373.i.i.i, %i.vj
  %i.zm = fsub float %.053.i375.i.i.i, %i.vj
  %i.zn = fadd float %i.zl, %i.zm
  %i.zo = fmul float %i.zn, 5.000000e-01
  %i.zp = fsub float 1.000000e+00, %i.zo
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !64
  %i.zs = tail call float @llvm.fmuladd.f32(float %i.zk, float %i.zp, float %i.zr)
  store float %i.zs, ptr %i.zq, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

bb.cz:                                            ; preds = %bb.cb
  %i.zt = fcmp olt float %i.qw, %i.vj             ; 2 uses
  %i.zu = fcmp ogt float %i.mb, %i.vl             ; 2 uses
  %or.cond340.i.i.i = select i1 %i.zt, i1 %i.zu, i1 false
  br i1 %or.cond340.i.i.i, label %bb.da, label %bb.dx

bb.da:                                            ; preds = %bb.cz
  %i.zv = fcmp oeq float %i.vt, %i.jn
  %or.cond13.i.i = select i1 %i.zv, i1 true, i1 %i.uw
  %i.zw = fcmp olt float %i.vt, %12               ; 2 uses
  %or.cond14.i.i = or i1 %i.zw, %or.cond13.i.i
  br i1 %or.cond14.i.i, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit386.i.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %26 = extractelement <2 x float> %i.vo, i64 1
  %27 = fmul float %13, %26
  %i.zx = fsub float %i.vt, %i.jn
  %i.zy = fdiv float %27, %i.zx
  %i.zz = fadd float %i.mb, %i.zy
  %.055.i380.i.i.i = select i1 %i.ra, float %i.zz, float %i.mb ; 4 uses
  %i.aaa = fcmp ogt float %i.vt, %16
  br i1 %i.aaa, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.aab = fsub float %i.vl, %.055.i380.i.i.i
  %i.aac = fsub float %16, %i.vt
  %i.aad = fmul float %i.aac, %i.aab
  %i.aae = fsub float %i.vt, %.0301.i.i.i
  %i.aaf = fdiv float %i.aad, %i.aae
  %i.aag = fadd float %i.aaf, %i.vl
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.053.i382.i.i.i = phi float [ %i.aag, %bb.dc ], [ %i.vl, %bb.db ] ; 3 uses
  %.0.i383.i.i.i = phi float [ %16, %bb.dc ], [ %i.vt, %bb.db ] ; 2 uses
  %i.aah = fcmp ugt float %.055.i380.i.i.i, %i.vj
  %i.aai = fcmp ugt float %.053.i382.i.i.i, %i.vj
  %or.cond.i384.i.i.i = select i1 %i.aah, i1 true, i1 %i.aai
  br i1 %or.cond.i384.i.i.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.aaj = load float, ptr %i.uv, align 4, !tbaa !184
  %i.aak = fsub float %.0.i383.i.i.i, %.0301.i.i.i
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.aam = load float, ptr %i.aal, align 4, !tbaa !64
  %i.aan = tail call float @llvm.fmuladd.f32(float %i.aaj, float %i.aak, float %i.aam)
  store float %i.aan, ptr %i.aal, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit386.i.i.i

bb.df:                                            ; preds = %bb.dd
  %i.aao = fcmp ult float %.055.i380.i.i.i, %i.vl
  %i.aap = fcmp ult float %.053.i382.i.i.i, %i.vl
  %or.cond62.i385.i.i.i = select i1 %i.aao, i1 true, i1 %i.aap
  br i1 %or.cond62.i385.i.i.i, label %bb.dg, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit386.i.i.i

bb.dg:                                            ; preds = %bb.df
  %i.aaq = load float, ptr %i.uv, align 4, !tbaa !184
  %i.aar = fsub float %.0.i383.i.i.i, %.0301.i.i.i
  %i.aas = fmul float %i.aar, %i.aaq
  %i.aat = fsub float %.055.i380.i.i.i, %i.vj
  %i.aau = fsub float %.053.i382.i.i.i, %i.vj
  %i.aav = fadd float %i.aat, %i.aau
  %i.aaw = fmul float %i.aav, 5.000000e-01
  %i.aax = fsub float 1.000000e+00, %i.aaw
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.aaz = load float, ptr %i.aay, align 4, !tbaa !64
  %i.aba = tail call float @llvm.fmuladd.f32(float %i.aas, float %i.aax, float %i.aaz)
  store float %i.aba, ptr %i.aay, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit386.i.i.i

_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit386.i.i.i: ; preds = %bb.dg, %bb.df, %bb.de, %bb.da
  %i.abb = fcmp oeq float %i.vt, %i.vr
  %i.abc = fcmp ogt float %i.vt, %16
  %or.cond15.i.i = select i1 %i.abb, i1 true, i1 %i.abc
  %i.abd = fcmp olt float %i.vr, %12              ; 2 uses
  %or.cond16.i.i = or i1 %i.abd, %or.cond15.i.i
  br i1 %or.cond16.i.i, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit393.i.i.i, label %bb.dh

bb.dh:                                            ; preds = %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit386.i.i.i
  br i1 %i.zw, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.abe = fsub nnan float %i.vj, %i.vl
  %i.abf = fsub float %12, %i.vt
  %i.abg = fmul float %i.abe, %i.abf
  %i.abh = fsub float %i.vr, %i.vt
  %i.abi = fdiv float %i.abg, %i.abh
  %i.abj = fadd float %i.abi, %i.vl
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.055.i387.i.i.i = phi float [ %i.abj, %bb.di ], [ %i.vl, %bb.dh ] ; 4 uses
  %.054.i388.i.i.i = phi float [ %12, %bb.di ], [ %i.vt, %bb.dh ] ; 3 uses
  %i.abk = fcmp ogt float %i.vr, %16
  br i1 %i.abk, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.abl = fsub float %i.vj, %.055.i387.i.i.i
  %i.abm = fsub float %16, %i.vr
  %i.abn = fmul float %i.abm, %i.abl
  %i.abo = fsub float %i.vr, %.054.i388.i.i.i
  %i.abp = fdiv float %i.abn, %i.abo
  %i.abq = fadd float %i.abp, %i.vj
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.053.i389.i.i.i = phi float [ %i.abq, %bb.dk ], [ %i.vj, %bb.dj ] ; 3 uses
  %.0.i390.i.i.i = phi float [ %16, %bb.dk ], [ %i.vr, %bb.dj ] ; 2 uses
  %i.abr = fcmp ugt float %.055.i387.i.i.i, %i.vj
  %i.abs = fcmp ugt float %.053.i389.i.i.i, %i.vj
  %or.cond.i391.i.i.i = select i1 %i.abr, i1 true, i1 %i.abs
  br i1 %or.cond.i391.i.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.abt = load float, ptr %i.uv, align 4, !tbaa !184
  %i.abu = fsub float %.0.i390.i.i.i, %.054.i388.i.i.i
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.abw = load float, ptr %i.abv, align 4, !tbaa !64
  %i.abx = tail call float @llvm.fmuladd.f32(float %i.abt, float %i.abu, float %i.abw)
  store float %i.abx, ptr %i.abv, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit393.i.i.i

bb.dn:                                            ; preds = %bb.dl
  %i.aby = fcmp ult float %.055.i387.i.i.i, %i.vl
  %i.abz = fcmp ult float %.053.i389.i.i.i, %i.vl
  %or.cond62.i392.i.i.i = select i1 %i.aby, i1 true, i1 %i.abz
  br i1 %or.cond62.i392.i.i.i, label %bb.do, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit393.i.i.i

bb.do:                                            ; preds = %bb.dn
  %i.aca = load float, ptr %i.uv, align 4, !tbaa !184
  %i.acb = fsub float %.0.i390.i.i.i, %.054.i388.i.i.i
  %i.acc = fmul float %i.acb, %i.aca
  %i.acd = fsub float %.055.i387.i.i.i, %i.vj
  %i.ace = fsub float %.053.i389.i.i.i, %i.vj
  %i.acf = fadd float %i.acd, %i.ace
  %i.acg = fmul float %i.acf, 5.000000e-01
  %i.ach = fsub float 1.000000e+00, %i.acg
  %i.aci = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.acj = load float, ptr %i.aci, align 4, !tbaa !64
  %i.ack = tail call float @llvm.fmuladd.f32(float %i.acc, float %i.ach, float %i.acj)
  store float %i.ack, ptr %i.aci, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit393.i.i.i

_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit393.i.i.i: ; preds = %bb.do, %bb.dn, %bb.dm, %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit386.i.i.i
  %i.acl = fcmp oeq float %i.vr, %i.jo
  %i.acm = fcmp ogt float %i.vr, %16
  %or.cond17.i.i = select i1 %i.acl, i1 true, i1 %i.acm
  %or.cond18.i.i = or i1 %i.ux, %or.cond17.i.i
  br i1 %or.cond18.i.i, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i, label %bb.dp

bb.dp:                                            ; preds = %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit393.i.i.i
  br i1 %i.abd, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.acn = fsub float %i.qw, %i.vj
  %i.aco = fsub float %12, %i.vr
  %i.acp = fmul float %i.acn, %i.aco
  %i.acq = fsub float %i.jo, %i.vr
  %i.acr = fdiv float %i.acp, %i.acq
  %i.acs = fadd float %i.acr, %i.vj
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.055.i394.i.i.i = phi float [ %i.acs, %bb.dq ], [ %i.vj, %bb.dp ] ; 4 uses
  %.054.i395.i.i.i = phi float [ %12, %bb.dq ], [ %i.vr, %bb.dp ] ; 3 uses
  br i1 %17, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.act = fsub float %i.qw, %.055.i394.i.i.i
  %i.acu = fmul float %i.vc, %i.act
  %i.acv = fsub float %i.jo, %.054.i395.i.i.i
  %i.acw = fdiv float %i.acu, %i.acv
  %i.acx = fadd float %i.qw, %i.acw
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.053.i396.i.i.i = phi float [ %i.acx, %bb.ds ], [ %i.qw, %bb.dr ] ; 3 uses
  %.0.i397.i.i.i = phi float [ %16, %bb.ds ], [ %i.jo, %bb.dr ] ; 2 uses
  %i.acy = fcmp ugt float %.055.i394.i.i.i, %i.vj
  %i.acz = fcmp ugt float %.053.i396.i.i.i, %i.vj
  %or.cond.i398.i.i.i = select i1 %i.acy, i1 true, i1 %i.acz
  br i1 %or.cond.i398.i.i.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ada = load float, ptr %i.uv, align 4, !tbaa !184
  %i.adb = fsub float %.0.i397.i.i.i, %.054.i395.i.i.i
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.add = load float, ptr %i.adc, align 4, !tbaa !64
  %i.ade = tail call float @llvm.fmuladd.f32(float %i.ada, float %i.adb, float %i.add)
  store float %i.ade, ptr %i.adc, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

bb.dv:                                            ; preds = %bb.dt
  %i.adf = fcmp ult float %.055.i394.i.i.i, %i.vl
  %i.adg = fcmp ult float %.053.i396.i.i.i, %i.vl
  %or.cond62.i399.i.i.i = select i1 %i.adf, i1 true, i1 %i.adg
  br i1 %or.cond62.i399.i.i.i, label %bb.dw, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

bb.dw:                                            ; preds = %bb.dv
  %i.adh = load float, ptr %i.uv, align 4, !tbaa !184
  %i.adi = fsub float %.0.i397.i.i.i, %.054.i395.i.i.i
  %i.adj = fmul float %i.adi, %i.adh
  %i.adk = fsub float %.055.i394.i.i.i, %i.vj
  %i.adl = fsub float %.053.i396.i.i.i, %i.vj
  %i.adm = fadd float %i.adk, %i.adl
  %i.adn = fmul float %i.adm, 5.000000e-01
  %i.ado = fsub float 1.000000e+00, %i.adn
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.adq = load float, ptr %i.adp, align 4, !tbaa !64
  %i.adr = tail call float @llvm.fmuladd.f32(float %i.adj, float %i.ado, float %i.adq)
  store float %i.adr, ptr %i.adp, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

bb.dx:                                            ; preds = %bb.cz
  %i.ads = fcmp ogt float %i.qw, %i.vj
  %or.cond341.i.i.i = and i1 %i.vu, %i.ads
  br i1 %or.cond341.i.i.i, label %bb.dy, label %bb.en

bb.dy:                                            ; preds = %bb.dx
  %i.adt = fcmp oeq float %i.vr, %i.jn
  %or.cond19.i.i = select i1 %i.adt, i1 true, i1 %i.uw
  %i.adu = fcmp olt float %i.vr, %12              ; 2 uses
  %or.cond20.i.i = or i1 %i.adu, %or.cond19.i.i
  br i1 %or.cond20.i.i, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit407.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %28 = extractelement <2 x float> %i.vo, i64 0
  %29 = fmul float %13, %28
  %i.adv = fsub float %i.vr, %i.jn
  %i.adw = fdiv float %29, %i.adv
  %i.adx = fadd float %i.mb, %i.adw
  %.055.i401.i.i.i = select i1 %i.ra, float %i.adx, float %i.mb ; 4 uses
  %i.ady = fcmp ogt float %i.vr, %16
  br i1 %i.ady, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.adz = fsub float %i.vj, %.055.i401.i.i.i
  %i.aea = fsub float %16, %i.vr
  %i.aeb = fmul float %i.aea, %i.adz
  %i.aec = fsub float %i.vr, %.0301.i.i.i
  %i.aed = fdiv float %i.aeb, %i.aec
  %i.aee = fadd float %i.aed, %i.vj
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.053.i403.i.i.i = phi float [ %i.aee, %bb.ea ], [ %i.vj, %bb.dz ] ; 3 uses
  %.0.i404.i.i.i = phi float [ %16, %bb.ea ], [ %i.vr, %bb.dz ] ; 2 uses
  %i.aef = fcmp ugt float %.055.i401.i.i.i, %i.vj
  %i.aeg = fcmp ugt float %.053.i403.i.i.i, %i.vj
  %or.cond.i405.i.i.i = select i1 %i.aef, i1 true, i1 %i.aeg
  br i1 %or.cond.i405.i.i.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.aeh = load float, ptr %i.uv, align 4, !tbaa !184
  %i.aei = fsub float %.0.i404.i.i.i, %.0301.i.i.i
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.aek = load float, ptr %i.aej, align 4, !tbaa !64
  %i.ael = tail call float @llvm.fmuladd.f32(float %i.aeh, float %i.aei, float %i.aek)
  store float %i.ael, ptr %i.aej, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit407.i.i.i

bb.ed:                                            ; preds = %bb.eb
  %i.aem = fcmp ult float %.055.i401.i.i.i, %i.vl
  %i.aen = fcmp ult float %.053.i403.i.i.i, %i.vl
  %or.cond62.i406.i.i.i = select i1 %i.aem, i1 true, i1 %i.aen
  br i1 %or.cond62.i406.i.i.i, label %bb.ee, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit407.i.i.i

bb.ee:                                            ; preds = %bb.ed
  %i.aeo = load float, ptr %i.uv, align 4, !tbaa !184
  %i.aep = fsub float %.0.i404.i.i.i, %.0301.i.i.i
  %i.aeq = fmul float %i.aep, %i.aeo
  %i.aer = fsub float %.055.i401.i.i.i, %i.vj
  %i.aes = fsub float %.053.i403.i.i.i, %i.vj
  %i.aet = fadd float %i.aer, %i.aes
  %i.aeu = fmul float %i.aet, 5.000000e-01
  %i.aev = fsub float 1.000000e+00, %i.aeu
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !64
  %i.aey = tail call float @llvm.fmuladd.f32(float %i.aeq, float %i.aev, float %i.aex)
  store float %i.aey, ptr %i.aew, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit407.i.i.i

_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit407.i.i.i: ; preds = %bb.ee, %bb.ed, %bb.ec, %bb.dy
  %i.aez = fcmp oeq float %i.vr, %i.jo
  %i.afa = fcmp ogt float %i.vr, %16
  %or.cond21.i.i = select i1 %i.aez, i1 true, i1 %i.afa
  %or.cond22.i.i = or i1 %i.ux, %or.cond21.i.i
  br i1 %or.cond22.i.i, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit407.i.i.i
  br i1 %i.adu, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.afb = fsub float %i.qw, %i.vj
  %i.afc = fsub float %12, %i.vr
  %i.afd = fmul float %i.afb, %i.afc
  %i.afe = fsub float %i.jo, %i.vr
  %i.aff = fdiv float %i.afd, %i.afe
  %i.afg = fadd float %i.aff, %i.vj
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.055.i408.i.i.i = phi float [ %i.afg, %bb.eg ], [ %i.vj, %bb.ef ] ; 4 uses
  %.054.i409.i.i.i = phi float [ %12, %bb.eg ], [ %i.vr, %bb.ef ] ; 3 uses
  br i1 %17, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.afh = fsub float %i.qw, %.055.i408.i.i.i
  %i.afi = fmul float %i.vc, %i.afh
  %i.afj = fsub float %i.jo, %.054.i409.i.i.i
  %i.afk = fdiv float %i.afi, %i.afj
  %i.afl = fadd float %i.qw, %i.afk
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.053.i410.i.i.i = phi float [ %i.afl, %bb.ei ], [ %i.qw, %bb.eh ] ; 3 uses
  %.0.i411.i.i.i = phi float [ %16, %bb.ei ], [ %i.jo, %bb.eh ] ; 2 uses
  %i.afm = fcmp ugt float %.055.i408.i.i.i, %i.vj
  %i.afn = fcmp ugt float %.053.i410.i.i.i, %i.vj
  %or.cond.i412.i.i.i = select i1 %i.afm, i1 true, i1 %i.afn
  br i1 %or.cond.i412.i.i.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.afo = load float, ptr %i.uv, align 4, !tbaa !184
  %i.afp = fsub float %.0.i411.i.i.i, %.054.i409.i.i.i
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.afr = load float, ptr %i.afq, align 4, !tbaa !64
  %i.afs = tail call float @llvm.fmuladd.f32(float %i.afo, float %i.afp, float %i.afr)
  store float %i.afs, ptr %i.afq, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

bb.el:                                            ; preds = %bb.ej
  %i.aft = fcmp ult float %.055.i408.i.i.i, %i.vl
  %i.afu = fcmp ult float %.053.i410.i.i.i, %i.vl
  %or.cond62.i413.i.i.i = select i1 %i.aft, i1 true, i1 %i.afu
  br i1 %or.cond62.i413.i.i.i, label %bb.em, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

bb.em:                                            ; preds = %bb.el
  %i.afv = load float, ptr %i.uv, align 4, !tbaa !184
  %i.afw = fsub float %.0.i411.i.i.i, %.054.i409.i.i.i
  %i.afx = fmul float %i.afw, %i.afv
  %i.afy = fsub float %.055.i408.i.i.i, %i.vj
  %i.afz = fsub float %.053.i410.i.i.i, %i.vj
  %i.aga = fadd float %i.afy, %i.afz
  %i.agb = fmul float %i.aga, 5.000000e-01
  %i.agc = fsub float 1.000000e+00, %i.agb
  %i.agd = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.age = load float, ptr %i.agd, align 4, !tbaa !64
  %i.agf = tail call float @llvm.fmuladd.f32(float %i.afx, float %i.agc, float %i.age)
  store float %i.agf, ptr %i.agd, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

bb.en:                                            ; preds = %bb.dx
  %i.agg = fcmp ogt float %i.mb, %i.vj
  %or.cond342.i.i.i = and i1 %i.zt, %i.agg
  br i1 %or.cond342.i.i.i, label %bb.eo, label %bb.fd

bb.eo:                                            ; preds = %bb.en
  %i.agh = fcmp oeq float %i.vr, %i.jn
  %or.cond23.i.i = select i1 %i.agh, i1 true, i1 %i.uw
  %i.agi = fcmp olt float %i.vr, %12              ; 2 uses
  %or.cond24.i.i = or i1 %i.agi, %or.cond23.i.i
  br i1 %or.cond24.i.i, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit421.i.i.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %30 = extractelement <2 x float> %i.vo, i64 0
  %31 = fmul float %13, %30
  %i.agj = fsub float %i.vr, %i.jn
  %i.agk = fdiv float %31, %i.agj
  %i.agl = fadd float %i.mb, %i.agk
  %.055.i415.i.i.i = select i1 %i.ra, float %i.agl, float %i.mb ; 4 uses
  %i.agm = fcmp ogt float %i.vr, %16
  br i1 %i.agm, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.agn = fsub float %i.vj, %.055.i415.i.i.i
  %i.ago = fsub float %16, %i.vr
  %i.agp = fmul float %i.ago, %i.agn
  %i.agq = fsub float %i.vr, %.0301.i.i.i
  %i.agr = fdiv float %i.agp, %i.agq
  %i.ags = fadd float %i.agr, %i.vj
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %.053.i417.i.i.i = phi float [ %i.ags, %bb.eq ], [ %i.vj, %bb.ep ] ; 3 uses
  %.0.i418.i.i.i = phi float [ %16, %bb.eq ], [ %i.vr, %bb.ep ] ; 2 uses
  %i.agt = fcmp ugt float %.055.i415.i.i.i, %i.vj
  %i.agu = fcmp ugt float %.053.i417.i.i.i, %i.vj
  %or.cond.i419.i.i.i = select i1 %i.agt, i1 true, i1 %i.agu
  br i1 %or.cond.i419.i.i.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.agv = load float, ptr %i.uv, align 4, !tbaa !184
  %i.agw = fsub float %.0.i418.i.i.i, %.0301.i.i.i
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.agy = load float, ptr %i.agx, align 4, !tbaa !64
  %i.agz = tail call float @llvm.fmuladd.f32(float %i.agv, float %i.agw, float %i.agy)
  store float %i.agz, ptr %i.agx, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit421.i.i.i

bb.et:                                            ; preds = %bb.er
  %i.aha = fcmp ult float %.055.i415.i.i.i, %i.vl
  %i.ahb = fcmp ult float %.053.i417.i.i.i, %i.vl
  %or.cond62.i420.i.i.i = select i1 %i.aha, i1 true, i1 %i.ahb
  br i1 %or.cond62.i420.i.i.i, label %bb.eu, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit421.i.i.i

bb.eu:                                            ; preds = %bb.et
  %i.ahc = load float, ptr %i.uv, align 4, !tbaa !184
  %i.ahd = fsub float %.0.i418.i.i.i, %.0301.i.i.i
  %i.ahe = fmul float %i.ahd, %i.ahc
  %i.ahf = fsub float %.055.i415.i.i.i, %i.vj
  %i.ahg = fsub float %.053.i417.i.i.i, %i.vj
  %i.ahh = fadd float %i.ahf, %i.ahg
  %i.ahi = fmul float %i.ahh, 5.000000e-01
  %i.ahj = fsub float 1.000000e+00, %i.ahi
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.ahl = load float, ptr %i.ahk, align 4, !tbaa !64
  %i.ahm = tail call float @llvm.fmuladd.f32(float %i.ahe, float %i.ahj, float %i.ahl)
  store float %i.ahm, ptr %i.ahk, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit421.i.i.i

_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit421.i.i.i: ; preds = %bb.eu, %bb.et, %bb.es, %bb.eo
  %i.ahn = fcmp oeq float %i.vr, %i.jo
  %i.aho = fcmp ogt float %i.vr, %16
  %or.cond25.i.i = select i1 %i.ahn, i1 true, i1 %i.aho
  %or.cond26.i.i = or i1 %i.ux, %or.cond25.i.i
  br i1 %or.cond26.i.i, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i, label %bb.ev

bb.ev:                                            ; preds = %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit421.i.i.i
  br i1 %i.agi, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.ahp = fsub float %i.qw, %i.vj
  %i.ahq = fsub float %12, %i.vr
  %i.ahr = fmul float %i.ahp, %i.ahq
  %i.ahs = fsub float %i.jo, %i.vr
  %i.aht = fdiv float %i.ahr, %i.ahs
  %i.ahu = fadd float %i.aht, %i.vj
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.055.i422.i.i.i = phi float [ %i.ahu, %bb.ew ], [ %i.vj, %bb.ev ] ; 4 uses
  %.054.i423.i.i.i = phi float [ %12, %bb.ew ], [ %i.vr, %bb.ev ] ; 3 uses
  br i1 %17, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.ahv = fsub float %i.qw, %.055.i422.i.i.i
  %i.ahw = fmul float %i.vc, %i.ahv
  %i.ahx = fsub float %i.jo, %.054.i423.i.i.i
  %i.ahy = fdiv float %i.ahw, %i.ahx
  %i.ahz = fadd float %i.qw, %i.ahy
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %.053.i424.i.i.i = phi float [ %i.ahz, %bb.ey ], [ %i.qw, %bb.ex ] ; 3 uses
  %.0.i425.i.i.i = phi float [ %16, %bb.ey ], [ %i.jo, %bb.ex ] ; 2 uses
  %i.aia = fcmp ugt float %.055.i422.i.i.i, %i.vj
  %i.aib = fcmp ugt float %.053.i424.i.i.i, %i.vj
  %or.cond.i426.i.i.i = select i1 %i.aia, i1 true, i1 %i.aib
  br i1 %or.cond.i426.i.i.i, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.aic = load float, ptr %i.uv, align 4, !tbaa !184
  %i.aid = fsub float %.0.i425.i.i.i, %.054.i423.i.i.i
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.aif = load float, ptr %i.aie, align 4, !tbaa !64
  %i.aig = tail call float @llvm.fmuladd.f32(float %i.aic, float %i.aid, float %i.aif)
  store float %i.aig, ptr %i.aie, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

bb.fb:                                            ; preds = %bb.ez
  %i.aih = fcmp ult float %.055.i422.i.i.i, %i.vl
  %i.aii = fcmp ult float %.053.i424.i.i.i, %i.vl
  %or.cond62.i427.i.i.i = select i1 %i.aih, i1 true, i1 %i.aii
  br i1 %or.cond62.i427.i.i.i, label %bb.fc, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

bb.fc:                                            ; preds = %bb.fb
  %i.aij = load float, ptr %i.uv, align 4, !tbaa !184
  %i.aik = fsub float %.0.i425.i.i.i, %.054.i423.i.i.i
  %i.ail = fmul float %i.aik, %i.aij
  %i.aim = fsub float %.055.i422.i.i.i, %i.vj
  %i.ain = fsub float %.053.i424.i.i.i, %i.vj
  %i.aio = fadd float %i.aim, %i.ain
  %i.aip = fmul float %i.aio, 5.000000e-01
  %i.aiq = fsub float 1.000000e+00, %i.aip
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.ais = load float, ptr %i.air, align 4, !tbaa !64
  %i.ait = tail call float @llvm.fmuladd.f32(float %i.ail, float %i.aiq, float %i.ais)
  store float %i.ait, ptr %i.air, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

bb.fd:                                            ; preds = %bb.en
  %i.aiu = fcmp olt float %i.mb, %i.vl
  %or.cond343.i.i.i = and i1 %i.aiu, %i.vv
  br i1 %or.cond343.i.i.i, label %bb.fe, label %bb.ft

bb.fe:                                            ; preds = %bb.fd
  %i.aiv = fcmp oeq float %i.vt, %i.jn
  %or.cond27.i.i = select i1 %i.aiv, i1 true, i1 %i.uw
  %i.aiw = fcmp olt float %i.vt, %12              ; 2 uses
  %or.cond28.i.i = or i1 %i.aiw, %or.cond27.i.i
  br i1 %or.cond28.i.i, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit435.i.i.i, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %32 = extractelement <2 x float> %i.vo, i64 1
  %33 = fmul float %13, %32
  %i.aix = fsub float %i.vt, %i.jn
  %i.aiy = fdiv float %33, %i.aix
  %i.aiz = fadd float %i.mb, %i.aiy
  %.055.i429.i.i.i = select i1 %i.ra, float %i.aiz, float %i.mb ; 4 uses
  %i.aja = fcmp ogt float %i.vt, %16
  br i1 %i.aja, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.ajb = fsub float %i.vl, %.055.i429.i.i.i
  %i.ajc = fsub float %16, %i.vt
  %i.ajd = fmul float %i.ajc, %i.ajb
  %i.aje = fsub float %i.vt, %.0301.i.i.i
  %i.ajf = fdiv float %i.ajd, %i.aje
  %i.ajg = fadd float %i.ajf, %i.vl
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %.053.i431.i.i.i = phi float [ %i.ajg, %bb.fg ], [ %i.vl, %bb.ff ] ; 3 uses
  %.0.i432.i.i.i = phi float [ %16, %bb.fg ], [ %i.vt, %bb.ff ] ; 2 uses
  %i.ajh = fcmp ugt float %.055.i429.i.i.i, %i.vj
  %i.aji = fcmp ugt float %.053.i431.i.i.i, %i.vj
  %or.cond.i433.i.i.i = select i1 %i.ajh, i1 true, i1 %i.aji
  br i1 %or.cond.i433.i.i.i, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.ajj = load float, ptr %i.uv, align 4, !tbaa !184
  %i.ajk = fsub float %.0.i432.i.i.i, %.0301.i.i.i
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.ajm = load float, ptr %i.ajl, align 4, !tbaa !64
  %i.ajn = tail call float @llvm.fmuladd.f32(float %i.ajj, float %i.ajk, float %i.ajm)
  store float %i.ajn, ptr %i.ajl, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit435.i.i.i

bb.fj:                                            ; preds = %bb.fh
  %i.ajo = fcmp ult float %.055.i429.i.i.i, %i.vl
  %i.ajp = fcmp ult float %.053.i431.i.i.i, %i.vl
  %or.cond62.i434.i.i.i = select i1 %i.ajo, i1 true, i1 %i.ajp
  br i1 %or.cond62.i434.i.i.i, label %bb.fk, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit435.i.i.i

bb.fk:                                            ; preds = %bb.fj
  %i.ajq = load float, ptr %i.uv, align 4, !tbaa !184
  %i.ajr = fsub float %.0.i432.i.i.i, %.0301.i.i.i
  %i.ajs = fmul float %i.ajr, %i.ajq
  %i.ajt = fsub float %.055.i429.i.i.i, %i.vj
  %i.aju = fsub float %.053.i431.i.i.i, %i.vj
  %i.ajv = fadd float %i.ajt, %i.aju
  %i.ajw = fmul float %i.ajv, 5.000000e-01
  %i.ajx = fsub float 1.000000e+00, %i.ajw
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.ajz = load float, ptr %i.ajy, align 4, !tbaa !64
  %i.aka = tail call float @llvm.fmuladd.f32(float %i.ajs, float %i.ajx, float %i.ajz)
  store float %i.aka, ptr %i.ajy, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit435.i.i.i

_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit435.i.i.i: ; preds = %bb.fk, %bb.fj, %bb.fi, %bb.fe
  %i.akb = fcmp oeq float %i.vt, %i.jo
  %i.akc = fcmp ogt float %i.vt, %16
  %or.cond29.i.i = select i1 %i.akb, i1 true, i1 %i.akc
  %or.cond30.i.i = or i1 %i.ux, %or.cond29.i.i
  br i1 %or.cond30.i.i, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i, label %bb.fl

bb.fl:                                            ; preds = %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit435.i.i.i
  br i1 %i.aiw, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.akd = fsub float %i.qw, %i.vl
  %i.ake = fsub float %12, %i.vt
  %i.akf = fmul float %i.akd, %i.ake
  %i.akg = fsub float %i.jo, %i.vt
  %i.akh = fdiv float %i.akf, %i.akg
  %i.aki = fadd float %i.akh, %i.vl
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %.055.i436.i.i.i = phi float [ %i.aki, %bb.fm ], [ %i.vl, %bb.fl ] ; 4 uses
  %.054.i437.i.i.i = phi float [ %12, %bb.fm ], [ %i.vt, %bb.fl ] ; 3 uses
  br i1 %17, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.akj = fsub float %i.qw, %.055.i436.i.i.i
  %i.akk = fmul float %i.vc, %i.akj
  %i.akl = fsub float %i.jo, %.054.i437.i.i.i
  %i.akm = fdiv float %i.akk, %i.akl
  %i.akn = fadd float %i.qw, %i.akm
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %.053.i438.i.i.i = phi float [ %i.akn, %bb.fo ], [ %i.qw, %bb.fn ] ; 3 uses
  %.0.i439.i.i.i = phi float [ %16, %bb.fo ], [ %i.jo, %bb.fn ] ; 2 uses
  %i.ako = fcmp ugt float %.055.i436.i.i.i, %i.vj
  %i.akp = fcmp ugt float %.053.i438.i.i.i, %i.vj
  %or.cond.i440.i.i.i = select i1 %i.ako, i1 true, i1 %i.akp
  br i1 %or.cond.i440.i.i.i, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.akq = load float, ptr %i.uv, align 4, !tbaa !184
  %i.akr = fsub float %.0.i439.i.i.i, %.054.i437.i.i.i
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.akt = load float, ptr %i.aks, align 4, !tbaa !64
  %i.aku = tail call float @llvm.fmuladd.f32(float %i.akq, float %i.akr, float %i.akt)
  store float %i.aku, ptr %i.aks, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

bb.fr:                                            ; preds = %bb.fp
  %i.akv = fcmp ult float %.055.i436.i.i.i, %i.vl
  %i.akw = fcmp ult float %.053.i438.i.i.i, %i.vl
  %or.cond62.i441.i.i.i = select i1 %i.akv, i1 true, i1 %i.akw
  br i1 %or.cond62.i441.i.i.i, label %bb.fs, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

bb.fs:                                            ; preds = %bb.fr
  %i.akx = load float, ptr %i.uv, align 4, !tbaa !184
  %i.aky = fsub float %.0.i439.i.i.i, %.054.i437.i.i.i
  %i.akz = fmul float %i.aky, %i.akx
  %i.ala = fsub float %.055.i436.i.i.i, %i.vj
  %i.alb = fsub float %.053.i438.i.i.i, %i.vj
  %i.alc = fadd float %i.ala, %i.alb
  %i.ald = fmul float %i.alc, 5.000000e-01
  %i.ale = fsub float 1.000000e+00, %i.ald
  %i.alf = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.alg = load float, ptr %i.alf, align 4, !tbaa !64
  %i.alh = tail call float @llvm.fmuladd.f32(float %i.akz, float %i.ale, float %i.alg)
  store float %i.alh, ptr %i.alf, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

bb.ft:                                            ; preds = %bb.fd
  %i.ali = fcmp olt float %i.qw, %i.vl
  %or.cond344.i.i.i = and i1 %i.ali, %i.zu
  br i1 %or.cond344.i.i.i, label %bb.fu, label %bb.gj

bb.fu:                                            ; preds = %bb.ft
  %i.alj = fcmp oeq float %i.vt, %i.jn
  %or.cond31.i.i = select i1 %i.alj, i1 true, i1 %i.uw
  %i.alk = fcmp olt float %i.vt, %12              ; 2 uses
  %or.cond32.i.i = or i1 %i.alk, %or.cond31.i.i
  br i1 %or.cond32.i.i, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit449.i.i.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %34 = extractelement <2 x float> %i.vo, i64 1
  %35 = fmul float %13, %34
  %i.all = fsub float %i.vt, %i.jn
  %i.alm = fdiv float %35, %i.all
  %i.aln = fadd float %i.mb, %i.alm
  %.055.i443.i.i.i = select i1 %i.ra, float %i.aln, float %i.mb ; 4 uses
  %i.alo = fcmp ogt float %i.vt, %16
  br i1 %i.alo, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.alp = fsub float %i.vl, %.055.i443.i.i.i
  %i.alq = fsub float %16, %i.vt
  %i.alr = fmul float %i.alq, %i.alp
  %i.als = fsub float %i.vt, %.0301.i.i.i
  %i.alt = fdiv float %i.alr, %i.als
  %i.alu = fadd float %i.alt, %i.vl
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %.053.i445.i.i.i = phi float [ %i.alu, %bb.fw ], [ %i.vl, %bb.fv ] ; 3 uses
  %.0.i446.i.i.i = phi float [ %16, %bb.fw ], [ %i.vt, %bb.fv ] ; 2 uses
  %i.alv = fcmp ugt float %.055.i443.i.i.i, %i.vj
  %i.alw = fcmp ugt float %.053.i445.i.i.i, %i.vj
  %or.cond.i447.i.i.i = select i1 %i.alv, i1 true, i1 %i.alw
  br i1 %or.cond.i447.i.i.i, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.alx = load float, ptr %i.uv, align 4, !tbaa !184
  %i.aly = fsub float %.0.i446.i.i.i, %.0301.i.i.i
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.ama = load float, ptr %i.alz, align 4, !tbaa !64
  %i.amb = tail call float @llvm.fmuladd.f32(float %i.alx, float %i.aly, float %i.ama)
  store float %i.amb, ptr %i.alz, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit449.i.i.i

bb.fz:                                            ; preds = %bb.fx
  %i.amc = fcmp ult float %.055.i443.i.i.i, %i.vl
  %i.amd = fcmp ult float %.053.i445.i.i.i, %i.vl
  %or.cond62.i448.i.i.i = select i1 %i.amc, i1 true, i1 %i.amd
  br i1 %or.cond62.i448.i.i.i, label %bb.ga, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit449.i.i.i

bb.ga:                                            ; preds = %bb.fz
  %i.ame = load float, ptr %i.uv, align 4, !tbaa !184
  %i.amf = fsub float %.0.i446.i.i.i, %.0301.i.i.i
  %i.amg = fmul float %i.amf, %i.ame
  %i.amh = fsub float %.055.i443.i.i.i, %i.vj
  %i.ami = fsub float %.053.i445.i.i.i, %i.vj
  %i.amj = fadd float %i.amh, %i.ami
  %i.amk = fmul float %i.amj, 5.000000e-01
  %i.aml = fsub float 1.000000e+00, %i.amk
  %i.amm = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.amn = load float, ptr %i.amm, align 4, !tbaa !64
  %i.amo = tail call float @llvm.fmuladd.f32(float %i.amg, float %i.aml, float %i.amn)
  store float %i.amo, ptr %i.amm, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit449.i.i.i

_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit449.i.i.i: ; preds = %bb.ga, %bb.fz, %bb.fy, %bb.fu
  %i.amp = fcmp oeq float %i.vt, %i.jo
  %i.amq = fcmp ogt float %i.vt, %16
  %or.cond33.i.i = select i1 %i.amp, i1 true, i1 %i.amq
  %or.cond34.i.i = or i1 %i.ux, %or.cond33.i.i
  br i1 %or.cond34.i.i, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i, label %bb.gb

bb.gb:                                            ; preds = %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit449.i.i.i
  br i1 %i.alk, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.amr = fsub float %i.qw, %i.vl
  %i.ams = fsub float %12, %i.vt
  %i.amt = fmul float %i.amr, %i.ams
  %i.amu = fsub float %i.jo, %i.vt
  %i.amv = fdiv float %i.amt, %i.amu
  %i.amw = fadd float %i.amv, %i.vl
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %.055.i450.i.i.i = phi float [ %i.amw, %bb.gc ], [ %i.vl, %bb.gb ] ; 4 uses
  %.054.i451.i.i.i = phi float [ %12, %bb.gc ], [ %i.vt, %bb.gb ] ; 3 uses
  br i1 %17, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.amx = fsub float %i.qw, %.055.i450.i.i.i
  %i.amy = fmul float %i.vc, %i.amx
  %i.amz = fsub float %i.jo, %.054.i451.i.i.i
  %i.ana = fdiv float %i.amy, %i.amz
  %i.anb = fadd float %i.qw, %i.ana
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %.053.i452.i.i.i = phi float [ %i.anb, %bb.ge ], [ %i.qw, %bb.gd ] ; 3 uses
  %.0.i453.i.i.i = phi float [ %16, %bb.ge ], [ %i.jo, %bb.gd ] ; 2 uses
  %i.anc = fcmp ugt float %.055.i450.i.i.i, %i.vj
  %i.and = fcmp ugt float %.053.i452.i.i.i, %i.vj
  %or.cond.i454.i.i.i = select i1 %i.anc, i1 true, i1 %i.and
  br i1 %or.cond.i454.i.i.i, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.ane = load float, ptr %i.uv, align 4, !tbaa !184
  %i.anf = fsub float %.0.i453.i.i.i, %.054.i451.i.i.i
  %i.ang = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.anh = load float, ptr %i.ang, align 4, !tbaa !64
  %i.ani = tail call float @llvm.fmuladd.f32(float %i.ane, float %i.anf, float %i.anh)
  store float %i.ani, ptr %i.ang, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

bb.gh:                                            ; preds = %bb.gf
  %i.anj = fcmp ult float %.055.i450.i.i.i, %i.vl
  %i.ank = fcmp ult float %.053.i452.i.i.i, %i.vl
  %or.cond62.i455.i.i.i = select i1 %i.anj, i1 true, i1 %i.ank
  br i1 %or.cond62.i455.i.i.i, label %bb.gi, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

bb.gi:                                            ; preds = %bb.gh
  %i.anl = load float, ptr %i.uv, align 4, !tbaa !184
  %i.anm = fsub float %.0.i453.i.i.i, %.054.i451.i.i.i
  %i.ann = fmul float %i.anm, %i.anl
  %i.ano = fsub float %.055.i450.i.i.i, %i.vj
  %i.anp = fsub float %.053.i452.i.i.i, %i.vj
  %i.anq = fadd float %i.ano, %i.anp
  %i.anr = fmul float %i.anq, 5.000000e-01
  %i.ans = fsub float 1.000000e+00, %i.anr
  %i.ant = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.anu = load float, ptr %i.ant, align 4, !tbaa !64
  %i.anv = tail call float @llvm.fmuladd.f32(float %i.ann, float %i.ans, float %i.anu)
  store float %i.anv, ptr %i.ant, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

bb.gj:                                            ; preds = %bb.ft
  br i1 %or.cond36.i.i, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.anw = fcmp ugt float %.055.i457.i.i.i, %i.vj
  %i.anx = fcmp ugt float %.053.i459.i.i.i, %i.vj
  %or.cond.i461.i.i.i = select i1 %i.anw, i1 true, i1 %i.anx
  br i1 %or.cond.i461.i.i.i, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.any = load float, ptr %i.uv, align 4, !tbaa !184
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.aoa = load float, ptr %i.anz, align 4, !tbaa !64
  %i.aob = tail call float @llvm.fmuladd.f32(float %i.any, float %i.vh, float %i.aoa)
  store float %i.aob, ptr %i.anz, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

bb.gm:                                            ; preds = %bb.gk
  %i.aoc = fcmp ult float %.055.i457.i.i.i, %i.vl
  %i.aod = fcmp ult float %.053.i459.i.i.i, %i.vl
  %or.cond62.i462.i.i.i = select i1 %i.aoc, i1 true, i1 %i.aod
  br i1 %or.cond62.i462.i.i.i, label %bb.gn, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

bb.gn:                                            ; preds = %bb.gm
  %i.aoe = load float, ptr %i.uv, align 4, !tbaa !184
  %i.aof = fmul float %i.vh, %i.aoe
  %i.aog = fsub float %.055.i457.i.i.i, %i.vj
  %i.aoh = fsub float %.053.i459.i.i.i, %i.vj
  %i.aoi = fadd float %i.aog, %i.aoh
  %i.aoj = fmul float %i.aoi, 5.000000e-01
  %i.aok = fsub float 1.000000e+00, %i.aoj
  %i.aol = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i94.i ; 2 uses
  %i.aom = load float, ptr %i.aol, align 4, !tbaa !64
  %i.aon = tail call float @llvm.fmuladd.f32(float %i.aof, float %i.aok, float %i.aom)
  store float %i.aon, ptr %i.aol, align 4, !tbaa !64
  br label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i

_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i: ; preds = %bb.gn, %bb.gm, %bb.gl, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit449.i.i.i, %bb.fs, %bb.fr, %bb.fq, %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit435.i.i.i, %bb.fc, %bb.fb, %bb.fa, %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit421.i.i.i, %bb.em, %bb.el, %bb.ek, %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit407.i.i.i, %bb.dw, %bb.dv, %bb.du, %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit393.i.i.i, %bb.cy, %bb.cx, %bb.cw, %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit372.i.i.i
  %exitcond.not.i.i96.i = icmp eq i64 %indvars.iv.next.i.i95.i, %wide.trip.count.i.i91.i
  br i1 %exitcond.not.i.i96.i, label %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i, label %bb.cb, !llvm.loop !171

_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i: ; preds = %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit379.i.i.i, %bb.ca, %._crit_edge.i.i.i, %bb.bw, %bb.bs, %bb.br, %bb.bq, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.ar, %bb.aq, %bb.ap, %bb.an
  %i.aoo = load ptr, ptr %.0293468.i.i.i, align 8, !tbaa !183 ; 2 uses
  %.not.i.i92.i = icmp eq ptr %i.aoo, null
  br i1 %.not.i.i92.i, label %_ZN2cvL28stbtt__fill_active_edges_newEPfS0_iPNS_18stbtt__active_edgeEf.exit.loopexit.i.i, label %bb.am, !llvm.loop !172

_ZN2cvL28stbtt__fill_active_edges_newEPfS0_iPNS_18stbtt__active_edgeEf.exit.loopexit.i.i: ; preds = %_ZN2cvL26stbtt__handle_clipped_edgeEPfiPNS_18stbtt__active_edgeEffff.exit351.i.i.i
  %.pre.i.i = load i32, ptr %0, align 8, !tbaa !71
  br label %_ZN2cvL28stbtt__fill_active_edges_newEPfS0_iPNS_18stbtt__active_edgeEf.exit.i.i

_ZN2cvL28stbtt__fill_active_edges_newEPfS0_iPNS_18stbtt__active_edgeEf.exit.i.i: ; preds = %_ZN2cvL28stbtt__fill_active_edges_newEPfS0_iPNS_18stbtt__active_edgeEf.exit.loopexit.i.i, %._crit_edge.i.i
  %i.aop = phi i32 [ %.pre.i.i, %_ZN2cvL28stbtt__fill_active_edges_newEPfS0_iPNS_18stbtt__active_edgeEf.exit.loopexit.i.i ], [ %i.jm, %._crit_edge.i.i ] ; 2 uses
  %i.aoq = icmp sgt i32 %i.aop, 0
  br i1 %i.aoq, label %.lr.ph52.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph52.i.i, %_ZN2cvL28stbtt__fill_active_edges_newEPfS0_iPNS_18stbtt__active_edgeEf.exit.i.i
  %i.aor = phi i32 [ %i.aop, %_ZN2cvL28stbtt__fill_active_edges_newEPfS0_iPNS_18stbtt__active_edgeEf.exit.i.i ], [ %i.apj, %.lr.ph52.i.i ]
  br i1 %.not91.i.i, label %._crit_edge55.i.i, label %.lr.ph54.i.i

.lr.ph52.i.i:                                     ; preds = %_ZN2cvL28stbtt__fill_active_edges_newEPfS0_iPNS_18stbtt__active_edgeEf.exit.i.i, %.lr.ph52.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph52.i.i ], [ 0, %_ZN2cvL28stbtt__fill_active_edges_newEPfS0_iPNS_18stbtt__active_edgeEf.exit.i.i ] ; 4 uses
  %.07751.i.i = phi float [ %i.aou, %.lr.ph52.i.i ], [ 0.000000e+00, %_ZN2cvL28stbtt__fill_active_edges_newEPfS0_iPNS_18stbtt__active_edgeEf.exit.i.i ]
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.i.i
  %i.aot = load float, ptr %i.aos, align 4, !tbaa !64
  %i.aou = fadd float %.07751.i.i, %i.aot         ; 2 uses
  %i.aov = getelementptr inbounds nuw [4 x i8], ptr %.080.i.i, i64 %indvars.iv.i.i
  %i.aow = load float, ptr %i.aov, align 4, !tbaa !64
  %i.aox = fadd float %i.aow, %i.aou
  %i.aoy = tail call noundef float @llvm.fabs.f32(float %i.aox)
  %i.aoz = tail call float @llvm.fmuladd.f32(float %i.aoy, float 2.550000e+02, float 5.000000e-01)
  %i.apa = fptosi float %i.aoz to i32
  %spec.store.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.apa, i32 255)
  %i.apb = trunc nuw i32 %spec.store.select.i.i to i8
  %i.apc = load ptr, ptr %i.jk, align 8, !tbaa !73
  %i.apd = load i32, ptr %i.jl, align 8, !tbaa !74
  %i.ape = mul nsw i32 %i.apd, %.07659.i.i
  %i.apf = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.apg = add nsw i32 %i.ape, %i.apf
  %i.aph = sext i32 %i.apg to i64
  %i.api = getelementptr inbounds i8, ptr %i.apc, i64 %i.aph
  store i8 %i.apb, ptr %i.api, align 1, !tbaa !32
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.apj = load i32, ptr %0, align 8, !tbaa !71   ; 2 uses
  %i.apk = sext i32 %i.apj to i64
  %i.apl = icmp slt i64 %indvars.iv.next.i.i, %i.apk
  br i1 %i.apl, label %.lr.ph52.i.i, label %.preheader.i.i, !llvm.loop !173

.lr.ph54.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph54.i.i
  %i.apm = phi ptr [ %i.apq, %.lr.ph54.i.i ], [ %.0..0..0..0..0..0..0..0.82.i.i, %.preheader.i.i ] ; 2 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apm, i64 8 ; 2 uses
  %i.apo = load <2 x float>, ptr %i.apn, align 8, !tbaa !64
  %i.app = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.apo)
  store float %i.app, ptr %i.apn, align 8, !tbaa !193
  %i.apq = load ptr, ptr %i.apm, align 8, !tbaa !180 ; 2 uses
  %.not92.i.i = icmp eq ptr %i.apq, null
  br i1 %.not92.i.i, label %._crit_edge55.i.i, label %.lr.ph54.i.i, !llvm.loop !174

._crit_edge55.i.i:                                ; preds = %.lr.ph54.i.i, %.preheader.i.i
  %i.apr = add nsw i32 %.07560.i.i, 1
  %i.aps = add nuw nsw i32 %.07659.i.i, 1         ; 2 uses
  %i.apt = load i32, ptr %i.iy, align 4, !tbaa !72
  %i.apu = icmp slt i32 %i.aps, %i.apt
  br i1 %i.apu, label %bb.z, label %._crit_edge64.i.i, !llvm.loop !175

._crit_edge64.i.i:                                ; preds = %._crit_edge55.i.i
  %.not1.i.i.i = icmp eq ptr %.sroa.0.1.lcssa.i.i, null
  br i1 %.not1.i.i.i, label %_ZN2cvL20stbtt__hheap_cleanupEPNS_12stbtt__hheapEPv.exit.i.i, label %.lr.ph.i94.i.i

.lr.ph.i94.i.i:                                   ; preds = %._crit_edge64.i.i, %.lr.ph.i94.i.i
  %.02.i.i.i = phi ptr [ %i.apv, %.lr.ph.i94.i.i ], [ %.sroa.0.1.lcssa.i.i, %._crit_edge64.i.i ] ; 2 uses
  %i.apv = load ptr, ptr %.02.i.i.i, align 8, !tbaa !188 ; 2 uses
  tail call void @free(ptr noundef nonnull %.02.i.i.i) #23
  %.not.i95.i.i = icmp eq ptr %i.apv, null
  br i1 %.not.i95.i.i, label %_ZN2cvL20stbtt__hheap_cleanupEPNS_12stbtt__hheapEPv.exit.i.i, label %.lr.ph.i94.i.i, !llvm.loop !176

_ZN2cvL20stbtt__hheap_cleanupEPNS_12stbtt__hheapEPv.exit.i.i: ; preds = %.lr.ph.i94.i.i, %._crit_edge64.i.i, %bb.y
  %.not.i.i = icmp eq ptr %.080.i.i, %i.b
  br i1 %.not.i.i, label %_ZN2cvL29stbtt__rasterize_sorted_edgesEPNS_13stbtt__bitmapEPNS_11stbtt__edgeEiiiiPv.exit.i, label %bb.go

bb.go:                                            ; preds = %_ZN2cvL20stbtt__hheap_cleanupEPNS_12stbtt__hheapEPv.exit.i.i
  call void @free(ptr noundef %.080.i.i) #23
  br label %_ZN2cvL29stbtt__rasterize_sorted_edgesEPNS_13stbtt__bitmapEPNS_11stbtt__edgeEiiiiPv.exit.i

_ZN2cvL29stbtt__rasterize_sorted_edgesEPNS_13stbtt__bitmapEPNS_11stbtt__edgeEiiiiPv.exit.i: ; preds = %bb.go, %_ZN2cvL20stbtt__hheap_cleanupEPNS_12stbtt__hheapEPv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @free(ptr noundef %i.fo) #23
  br label %_ZN2cvL16stbtt__rasterizeEPNS_13stbtt__bitmapEPNS_12stbtt__pointEPiiffffiiiPv.exit

_ZN2cvL16stbtt__rasterizeEPNS_13stbtt__bitmapEPNS_12stbtt__pointEPiiffffiiiPv.exit: ; preds = %._crit_edge.i27, %_ZN2cvL29stbtt__rasterize_sorted_edgesEPNS_13stbtt__bitmapEPNS_11stbtt__edgeEiiiiPv.exit.i
  call void @free(ptr noundef %i.be) #23
  call void @free(ptr noundef %i.db) #23
  br label %bb.gp

bb.gp:                                            ; preds = %_ZN2cvL19stbtt_FlattenCurvesEPNS_12stbtt_vertexEifPPiS2_Pv.exit.thread, %_ZN2cvL16stbtt__rasterizeEPNS_13stbtt__bitmapEPNS_12stbtt__pointEPiiffffiiiPv.exit
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_ZN2cv16stbtt_FreeBitmapEPhPv(ptr noundef captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #8 {
bb.a:
  tail call void @free(ptr noundef %0) #23
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
end_hunk_0
