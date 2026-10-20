Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/nanovg?download=true
inline.NumInlined: 893
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 56
begin_hunk_0_@stbtt_Rasterize:bb.a
  %indvars.iv132.i = phi i64 [ %indvars.iv.next133.i, %._crit_edge110.split.i ], [ 0, %.lr.ph115.split.i.preheader ] ; 2 uses
  %.085114.i = phi i32 [ %i.iu, %._crit_edge110.split.i ], [ 0, %.lr.ph115.split.i.preheader ] ; 2 uses
  %.190112.i = phi i32 [ %.2.lcssa.i, %._crit_edge110.split.i ], [ 0, %.lr.ph115.split.i.preheader ] ; 2 uses
  %i.iq = sext i32 %.085114.i to i64
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.iq ; 4 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv132.i ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !70 ; 4 uses
  %i.iu = add nsw i32 %i.it, %.085114.i
  %i.iv = icmp sgt i32 %i.it, 0
  br i1 %i.iv, label %.lr.ph109.preheader.i, label %._crit_edge110.split.i

.lr.ph109.preheader.i:                            ; preds = %.lr.ph115.split.i
  %i.iw = add nsw i32 %i.it, -1                   ; 2 uses
  %.phi.trans.insert.i = zext nneg i32 %i.iw to i64
  %.phi.trans.insert145.i = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.phi.trans.insert.i
  %.phi.trans.insert146.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert145.i, i64 4
  %.pre.i25 = load float, ptr %.phi.trans.insert146.i, align 4, !tbaa !83
  br label %.lr.ph109.i

.lr.ph109.i:                                      ; preds = %.lr.ph109._crit_edge.i, %.lr.ph109.preheader.i
  %i.ix = phi i32 [ %i.it, %.lr.ph109.preheader.i ], [ %i.jr, %.lr.ph109._crit_edge.i ]
  %i.iy = phi float [ %.pre.i25, %.lr.ph109.preheader.i ], [ %i.jb, %.lr.ph109._crit_edge.i ] ; 2 uses
  %indvars.iv129.i = phi i64 [ 0, %.lr.ph109.preheader.i ], [ %indvars.iv.next130.i, %.lr.ph109._crit_edge.i ] ; 5 uses
  %.087106.i = phi i32 [ %i.iw, %.lr.ph109.preheader.i ], [ %.pre-phi155.i, %.lr.ph109._crit_edge.i ]
  %.2105.i = phi i32 [ %.190112.i, %.lr.ph109.preheader.i ], [ %.3.i, %.lr.ph109._crit_edge.i ] ; 3 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv129.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !83 ; 3 uses
  %i.jc = fcmp oeq float %i.iy, %i.jb
  br i1 %i.jc, label %.lr.ph109._crit_edge.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph109.i
  %i.jd = sext i32 %.2105.i to i64
  %i.je = getelementptr inbounds [20 x i8], ptr %i.gy, i64 %i.jd ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jg = fcmp ogt float %i.iy, %i.jb             ; 3 uses
  %spec.store.select120.i = zext i1 %i.jg to i32
  store i32 %spec.store.select120.i, ptr %i.jf, align 4, !tbaa !348
  %i.jh = sext i32 %.087106.i to i64              ; 2 uses
  %i.ji = select i1 %i.jg, i64 %i.jh, i64 %indvars.iv129.i
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.ir, i64 %i.ji
  %i.jk = select i1 %i.jg, i64 %indvars.iv129.i, i64 %i.jh
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.ir, i64 %i.jk
  %i.jm = load <2 x float>, ptr %i.jj, align 4, !tbaa !81
  %i.jn = load <2 x float>, ptr %i.jl, align 4, !tbaa !81
  %i.jo = shufflevector <2 x float> %i.jm, <2 x float> %i.jn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jo, <4 x float> %i.hc, <4 x float> %i.hf)
  store <4 x float> %i.jp, ptr %i.je, align 4, !tbaa !81
  %i.jq = add nsw i32 %.2105.i, 1
  %.pre147.i = load i32, ptr %i.is, align 4, !tbaa !70
  br label %.lr.ph109._crit_edge.i

.lr.ph109._crit_edge.i:                           ; preds = %bb.x, %.lr.ph109.i
  %i.jr = phi i32 [ %.pre147.i, %bb.x ], [ %i.ix, %.lr.ph109.i ] ; 2 uses
  %.3.i = phi i32 [ %i.jq, %bb.x ], [ %.2105.i, %.lr.ph109.i ] ; 2 uses
  %.pre-phi155.i = trunc i64 %indvars.iv129.i to i32
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1 ; 2 uses
  %i.js = sext i32 %i.jr to i64
  %i.jt = icmp slt i64 %indvars.iv.next130.i, %i.js
  br i1 %i.jt, label %.lr.ph109.i, label %._crit_edge110.split.i, !llvm.loop !335

._crit_edge110.split.i:                           ; preds = %.lr.ph109._crit_edge.i, %.lr.ph115.split.i
  %.2.lcssa.i = phi i32 [ %.190112.i, %.lr.ph115.split.i ], [ %.3.i, %.lr.ph109._crit_edge.i ] ; 2 uses
  %indvars.iv.next133.i = add nuw nsw i64 %indvars.iv132.i, 1 ; 2 uses
  %exitcond136.not.i = icmp eq i64 %indvars.iv.next133.i, %wide.trip.count.i28
  br i1 %exitcond136.not.i, label %._crit_edge116.i, label %.lr.ph115.split.i, !llvm.loop !336

._crit_edge116.i:                                 ; preds = %._crit_edge110.split.i, %._crit_edge110.split.us.us.i
  %.190.lcssa.i = phi i32 [ %.2.lcssa.us.i, %._crit_edge110.split.us.us.i ], [ %.2.lcssa.i, %._crit_edge110.split.i ] ; 4 uses
  tail call fastcc void @stbtt__sort_edges_quicksort(ptr noundef nonnull %i.gy, i32 noundef %.190.lcssa.i)
  %i.ju = icmp sgt i32 %.190.lcssa.i, 1
  br i1 %i.ju, label %.lr.ph.preheader.i.i.i, label %stbtt__sort_edges.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %._crit_edge116.i
  %wide.trip.count.i.i.i = zext nneg i32 %.190.lcssa.i to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.ab ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.jv = getelementptr inbounds nuw [20 x i8], ptr %i.gy, i64 %indvars.iv.i.i.i ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  %.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !81
  %i.jw = load <2 x float>, ptr %i.jv, align 4, !tbaa !81
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i.i, i64 12, i1 false), !tbaa.struct !349
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph.i.i.i
  %indvars.iv31.i.i.i = phi i64 [ %indvars.iv.i.i.i, %.lr.ph.i.i.i ], [ %indvars.iv.next32.i.i.i, %bb.z ] ; 4 uses
  %i.jx = getelementptr [20 x i8], ptr %i.gy, i64 %indvars.iv31.i.i.i ; 3 uses
  %i.jy = getelementptr i8, ptr %i.jx, i64 -16
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !85
  %i.ka = fcmp olt float %.sroa.4.0.copyload.i.i.i, %i.jz
  br i1 %i.ka, label %bb.z, label %.thread.split.loop.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.kb = getelementptr i8, ptr %i.jx, i64 -20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.jx, ptr noundef nonnull align 4 dereferenceable(20) %i.kb, i64 20, i1 false), !tbaa.struct !86
  %indvars.iv.next32.i.i.i = add nsw i64 %indvars.iv31.i.i.i, -1
  %i.kc = icmp sgt i64 %indvars.iv31.i.i.i, 1
  br i1 %i.kc, label %bb.y, label %.thread.i.i.i

.thread.split.loop.exit.i.i.i:                    ; preds = %bb.y
  %i.kd = trunc nuw nsw i64 %indvars.iv31.i.i.i to i32
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.z, %.thread.split.loop.exit.i.i.i
  %.021.lcssa.i.i.i = phi i32 [ %i.kd, %.thread.split.loop.exit.i.i.i ], [ 0, %bb.z ] ; 2 uses
  %i.ke = zext i32 %.021.lcssa.i.i.i to i64
  %.not.i.i.i = icmp eq i64 %indvars.iv.i.i.i, %i.ke
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.thread.i.i.i
  %i.kf = sext i32 %.021.lcssa.i.i.i to i64
  %i.kg = getelementptr inbounds [20 x i8], ptr %i.gy, i64 %i.kf ; 2 uses
  store <2 x float> %i.jw, ptr %i.kg, align 4, !tbaa !81
  %.sroa.5.0..sroa_idx26.i.i.i = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx26.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i, i64 12, i1 false), !tbaa.struct !349
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %stbtt__sort_edges.exit.i, label %.lr.ph.i.i.i, !llvm.loop !337

stbtt__sort_edges.exit.i:                         ; preds = %bb.ab, %._crit_edge116.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.kh = load i32, ptr %0, align 8, !tbaa !88    ; 5 uses
  %i.ki = icmp sgt i32 %i.kh, 64
  br i1 %i.ki, label %bb.ac, label %fons__tmpalloc.exit.i.i

bb.ac:                                            ; preds = %stbtt__sort_edges.exit.i
  %i.kj = shl i32 %i.kh, 3
  %i.kk = load i32, ptr %i.bd, align 8, !tbaa !53 ; 2 uses
  %i.kl = and i32 %i.kj, -16
  %i.km = add i32 %i.kl, 16
  %i.kn = add nsw i32 %i.km, %i.kk                ; 3 uses
  %i.ko = icmp sgt i32 %i.kn, 96000
  br i1 %i.ko, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.kp = getelementptr inbounds nuw i8, ptr %11, i64 21104
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !54 ; 2 uses
  %.not.i.i98.i = icmp eq ptr %i.kq, null
  br i1 %.not.i.i98.i, label %fons__tmpalloc.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kr = getelementptr inbounds nuw i8, ptr %11, i64 21112
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !55
  tail call void %i.kq(ptr noundef %i.ks, i32 noundef 2, i32 noundef %i.kn) #40, !inline_history !338
  %.pre.i.i = load i32, ptr %0, align 8, !tbaa !88
  br label %fons__tmpalloc.exit.i.i

bb.af:                                            ; preds = %bb.ac
  %i.kt = load ptr, ptr %i.bn, align 8, !tbaa !56
  %i.ku = sext i32 %i.kk to i64
  %i.kv = getelementptr inbounds i8, ptr %i.kt, i64 %i.ku
  store i32 %i.kn, ptr %i.bd, align 8, !tbaa !53
  br label %fons__tmpalloc.exit.i.i

fons__tmpalloc.exit.i.i:                          ; preds = %bb.af, %bb.ae, %bb.ad, %stbtt__sort_edges.exit.i
  %i.kw = phi i32 [ %i.kh, %stbtt__sort_edges.exit.i ], [ %i.kh, %bb.af ], [ %.pre.i.i, %bb.ae ], [ %i.kh, %bb.ad ] ; 2 uses
  %.082.i.i = phi ptr [ %i.b, %stbtt__sort_edges.exit.i ], [ %i.kv, %bb.af ], [ null, %bb.ae ], [ null, %bb.ad ] ; 41 uses
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [4 x i8], ptr %.082.i.i, i64 %i.kx ; 9 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !89 ; 2 uses
  %i.lb = add nsw i32 %i.la, %9
  %i.lc = sitofp i32 %i.lb to float
  %i.ld = fadd float %i.lc, 1.000000e+00
  %i.le = sext i32 %.190.lcssa.i to i64
  %i.lf = getelementptr inbounds [20 x i8], ptr %i.gy, i64 %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  store float %i.ld, ptr %i.lg, align 4, !tbaa !85
  %i.lh = icmp sgt i32 %i.la, 0
  br i1 %i.lh, label %.lr.ph129.i.i, label %stbtt__rasterize_sorted_edges.exit.i

.lr.ph129.i.i:                                    ; preds = %fons__tmpalloc.exit.i.i
  %i.li = sitofp i32 %8 to float
  %i.lj = icmp ne i32 %9, 0
  %i.lk = getelementptr inbounds nuw i8, ptr %11, i64 21104
  %i.ll = getelementptr inbounds nuw i8, ptr %11, i64 21112
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ky, i64 4 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge122.i.i, %.lr.ph129.i.i
  %.0..i.i = phi ptr [ null, %.lr.ph129.i.i ], [ %.0..0..0..0..0..0..0..0.84.i.i, %._crit_edge122.i.i ] ; 2 uses
  %i.lp = phi i32 [ %i.kw, %.lr.ph129.i.i ], [ %i.auv, %._crit_edge122.i.i ]
  %.0128.i.i = phi ptr [ %i.gy, %.lr.ph129.i.i ], [ %.1.lcssa.i.i, %._crit_edge122.i.i ] ; 3 uses
  %.077127.i.i = phi i32 [ %9, %.lr.ph129.i.i ], [ %i.avv, %._crit_edge122.i.i ] ; 2 uses
  %.078126.i.i = phi i32 [ 0, %.lr.ph129.i.i ], [ %i.avw, %._crit_edge122.i.i ] ; 3 uses
  %.sroa.11.0125.i.i = phi i32 [ 0, %.lr.ph129.i.i ], [ %.sroa.11.1.lcssa.i.i, %._crit_edge122.i.i ] ; 2 uses
  %.sroa.7.0124.i.i = phi ptr [ null, %.lr.ph129.i.i ], [ %.sroa.7.3.lcssa.i.i, %._crit_edge122.i.i ] ; 2 uses
  %.sroa.0.0123.i.i = phi ptr [ null, %.lr.ph129.i.i ], [ %.sroa.0.1.lcssa.i.i, %._crit_edge122.i.i ] ; 2 uses
  %i.lq = sitofp i32 %.077127.i.i to float        ; 69 uses
  %i.lr = fadd float %i.lq, 1.000000e+00          ; 75 uses
  %i.ls = sext i32 %i.lp to i64
  %i.lt = shl nsw i64 %i.ls, 2
  call void @llvm.memset.p0.i64(ptr align 4 %.082.i.i, i8 0, i64 %i.lt, i1 false)
  %i.lu = load i32, ptr %0, align 8, !tbaa !88
  %i.lv = add nsw i32 %i.lu, 1
  %i.lw = sext i32 %i.lv to i64
  %i.lx = shl nsw i64 %i.lw, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ky, i8 0, i64 %i.lx, i1 false)
  %.not92105.i.i = icmp eq ptr %.0..i.i, null
  br i1 %.not92105.i.i, label %.preheader104.i.i, label %.lr.ph.i.i

.preheader104.i.i:                                ; preds = %bb.ai, %bb.ag
  %.sroa.7.1.lcssa.i.i = phi ptr [ %.sroa.7.0124.i.i, %bb.ag ], [ %.sroa.7.2.i.i, %bb.ai ] ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.0128.i.i, i64 4
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !85 ; 2 uses
  %i.ma = fcmp ugt float %i.lz, %i.lr
  br i1 %i.ma, label %._crit_edge.i.i, label %.lr.ph112.i.i

.lr.ph112.i.i:                                    ; preds = %.preheader104.i.i
  %i.mb = icmp eq i32 %.078126.i.i, 0
  %or.cond.i.i = and i1 %i.lj, %i.mb
  br label %bb.aj

.lr.ph.i.i:                                       ; preds = %bb.ag, %bb.ai
  %i.mc = phi ptr [ %i.mi, %bb.ai ], [ %.0..i.i, %bb.ag ] ; 6 uses
  %.080107.i.i = phi ptr [ %.181.i.i, %bb.ai ], [ %i.a, %bb.ag ] ; 2 uses
  %.sroa.7.1106.i.i = phi ptr [ %.sroa.7.2.i.i, %bb.ai ], [ %.sroa.7.0124.i.i, %bb.ag ] ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 28
  %i.me = load float, ptr %i.md, align 4, !tbaa !353
  %i.mf = fcmp ugt float %i.me, %i.lq
  br i1 %i.mf, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i
  %i.mg = load ptr, ptr %i.mc, align 8, !tbaa !354
  store ptr %i.mg, ptr %.080107.i.i, align 8, !tbaa !351
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mc, i64 20
  store float 0.000000e+00, ptr %i.mh, align 4, !tbaa !355
  store ptr %.sroa.7.1106.i.i, ptr %i.mc, align 8, !tbaa !45
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.i.i
  %.sroa.7.2.i.i = phi ptr [ %.sroa.7.1106.i.i, %.lr.ph.i.i ], [ %i.mc, %bb.ah ] ; 2 uses
  %.181.i.i = phi ptr [ %i.mc, %.lr.ph.i.i ], [ %.080107.i.i, %bb.ah ] ; 2 uses
  %i.mi = load ptr, ptr %.181.i.i, align 8, !tbaa !351 ; 2 uses
  %.not92.i.i = icmp eq ptr %i.mi, null
  br i1 %.not92.i.i, label %.preheader104.i.i, label %.lr.ph.i.i, !llvm.loop !339

bb.aj:                                            ; preds = %stbtt__new_active.exit.thread.i.i, %.lr.ph112.i.i
  %i.mj = phi float [ %i.lz, %.lr.ph112.i.i ], [ %i.oc, %stbtt__new_active.exit.thread.i.i ] ; 4 uses
  %.1111.i.i = phi ptr [ %.0128.i.i, %.lr.ph112.i.i ], [ %i.oa, %stbtt__new_active.exit.thread.i.i ] ; 6 uses
  %.sroa.11.1110.i.i = phi i32 [ %.sroa.11.0125.i.i, %.lr.ph112.i.i ], [ %.sroa.11.2.i.i, %stbtt__new_active.exit.thread.i.i ] ; 4 uses
  %.sroa.7.3109.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i, %.lr.ph112.i.i ], [ %.sroa.7.4.i.i, %stbtt__new_active.exit.thread.i.i ] ; 4 uses
  %.sroa.0.1108.i.i = phi ptr [ %.sroa.0.0123.i.i, %.lr.ph112.i.i ], [ %.sroa.0.2.i.i, %stbtt__new_active.exit.thread.i.i ] ; 7 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.1111.i.i, i64 12
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !356 ; 4 uses
  %i.mm = fcmp une float %i.mj, %i.ml
  br i1 %i.mm, label %bb.ak, label %stbtt__new_active.exit.thread.i.i

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i.i.i = icmp eq ptr %.sroa.7.3109.i.i, null
  br i1 %.not.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.mn = load ptr, ptr %.sroa.7.3109.i.i, align 8, !tbaa !45
  br label %bb.as

bb.am:                                            ; preds = %bb.ak
  %i.mo = icmp eq i32 %.sroa.11.1110.i.i, 0
  br i1 %i.mo, label %bb.an, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.am
  %i.mp = add nsw i32 %.sroa.11.1110.i.i, -1
  br label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.mq = load i32, ptr %i.bd, align 8, !tbaa !53 ; 3 uses
  %i.mr = add nsw i32 %i.mq, 25616                ; 2 uses
  %i.ms = icmp sgt i32 %i.mq, 70384
  br i1 %i.ms, label %bb.ao, label %fons__tmpalloc.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.mt = load ptr, ptr %i.lk, align 8, !tbaa !54 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.mt, null
  br i1 %.not.i.i.i.i.i, label %stbtt__new_active.exit.thread.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mu = load ptr, ptr %i.ll, align 8, !tbaa !55
  tail call void %i.mt(ptr noundef %i.mu, i32 noundef 2, i32 noundef %i.mr) #40, !inline_history !340
  br label %stbtt__new_active.exit.thread.i.i

fons__tmpalloc.exit.i.i.i.i:                      ; preds = %bb.an
  %i.mv = load ptr, ptr %i.bn, align 8, !tbaa !56 ; 2 uses
  store i32 %i.mr, ptr %i.bd, align 8, !tbaa !53
  %i.mw = icmp eq ptr %i.mv, null
  br i1 %i.mw, label %stbtt__new_active.exit.thread.i.i, label %bb.aq

bb.aq:                                            ; preds = %fons__tmpalloc.exit.i.i.i.i
  %i.mx = sext i32 %i.mq to i64
  %i.my = getelementptr inbounds i8, ptr %i.mv, i64 %i.mx ; 2 uses
  store ptr %.sroa.0.1108.i.i, ptr %i.my, align 8, !tbaa !359
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %._crit_edge.i.i.i.i
  %.sroa.0.4.i.i = phi ptr [ %i.my, %bb.aq ], [ %.sroa.0.1108.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.mz = phi i32 [ 799, %bb.aq ], [ %i.mp, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0.4.i.i, i64 8
  %i.nb = zext nneg i32 %i.mz to i64
  %i.nc = shl nuw nsw i64 %i.nb, 5
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.nc
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.al
  %.sroa.0.3.i.i = phi ptr [ %.sroa.0.4.i.i, %bb.ar ], [ %.sroa.0.1108.i.i, %bb.al ]
  %.sroa.7.5.i.i = phi ptr [ null, %bb.ar ], [ %i.mn, %bb.al ]
  %.sroa.11.3.i.i = phi i32 [ %i.mz, %bb.ar ], [ %.sroa.11.1110.i.i, %bb.al ]
  %.1.i.i.i.i = phi ptr [ %i.nd, %bb.ar ], [ %.sroa.7.3109.i.i, %bb.al ] ; 9 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.1111.i.i, i64 8
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !360
  %i.ng = load float, ptr %.1111.i.i, align 4, !tbaa !361 ; 2 uses
  %i.nh = fsub float %i.nf, %i.ng
  %i.ni = fsub float %i.ml, %i.mj
  %i.nj = fdiv float %i.nh, %i.ni                 ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 12
  store float %i.nj, ptr %i.nk, align 4, !tbaa !362
  %i.nl = fcmp une float %i.nj, 0.000000e+00
  %i.nm = fdiv float 1.000000e+00, %i.nj
  %i.nn = select i1 %i.nl, float %i.nm, float 0.000000e+00
  %i.no = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 16
  store float %i.nn, ptr %i.no, align 8, !tbaa !363
  %i.np = fsub float %i.lq, %i.mj
  %i.nq = tail call float @llvm.fmuladd.f32(float %i.nj, float %i.np, float %i.ng)
  %i.nr = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  %i.ns = fsub float %i.nq, %i.li
  store float %i.ns, ptr %i.nr, align 8, !tbaa !364
  %i.nt = getelementptr inbounds nuw i8, ptr %.1111.i.i, i64 16
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !348
  %.not28.i.i.i = icmp eq i32 %i.nu, 0
  %i.nv = select i1 %.not28.i.i.i, float -1.000000e+00, float 1.000000e+00
  %i.nw = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 20
  store float %i.nv, ptr %i.nw, align 4, !tbaa !355
  %i.nx = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 24
  store float %i.mj, ptr %i.nx, align 8, !tbaa !365
  %i.ny = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 28 ; 2 uses
  store float %i.ml, ptr %i.ny, align 4, !tbaa !353
  store ptr null, ptr %.1.i.i.i.i, align 8, !tbaa !354
  %i.nz = fcmp olt float %i.ml, %i.lq
  %or.cond229.i.i = select i1 %or.cond.i.i, i1 %i.nz, i1 false
  br i1 %or.cond229.i.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store float %i.lq, ptr %i.ny, align 4, !tbaa !353
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.0..0..0..0..0..0..0..0..i.i = load ptr, ptr %i.a, align 8, !tbaa !351
  store ptr %.0..0..0..0..0..0..0..0..i.i, ptr %.1.i.i.i.i, align 8, !tbaa !354
  store ptr %.1.i.i.i.i, ptr %i.a, align 8, !tbaa !351
  br label %stbtt__new_active.exit.thread.i.i

stbtt__new_active.exit.thread.i.i:                ; preds = %bb.au, %fons__tmpalloc.exit.i.i.i.i, %bb.ap, %bb.ao, %bb.aj
  %.sroa.0.2.i.i = phi ptr [ %.sroa.0.1108.i.i, %bb.aj ], [ %.sroa.0.3.i.i, %bb.au ], [ %.sroa.0.1108.i.i, %fons__tmpalloc.exit.i.i.i.i ], [ %.sroa.0.1108.i.i, %bb.ap ], [ %.sroa.0.1108.i.i, %bb.ao ] ; 2 uses
  %.sroa.7.4.i.i = phi ptr [ %.sroa.7.3109.i.i, %bb.aj ], [ %.sroa.7.5.i.i, %bb.au ], [ null, %fons__tmpalloc.exit.i.i.i.i ], [ null, %bb.ap ], [ null, %bb.ao ] ; 2 uses
  %.sroa.11.2.i.i = phi i32 [ %.sroa.11.1110.i.i, %bb.aj ], [ %.sroa.11.3.i.i, %bb.au ], [ 0, %fons__tmpalloc.exit.i.i.i.i ], [ 0, %bb.ap ], [ 0, %bb.ao ] ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.1111.i.i, i64 20 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.1111.i.i, i64 24
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !85 ; 2 uses
  %i.od = fcmp ugt float %i.oc, %i.lr
  br i1 %i.od, label %._crit_edge.i.i, label %bb.aj, !llvm.loop !341

._crit_edge.i.i:                                  ; preds = %stbtt__new_active.exit.thread.i.i, %.preheader104.i.i
  %.sroa.0.1.lcssa.i.i = phi ptr [ %.sroa.0.0123.i.i, %.preheader104.i.i ], [ %.sroa.0.2.i.i, %stbtt__new_active.exit.thread.i.i ]
  %.sroa.7.3.lcssa.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i, %.preheader104.i.i ], [ %.sroa.7.4.i.i, %stbtt__new_active.exit.thread.i.i ]
  %.sroa.11.1.lcssa.i.i = phi i32 [ %.sroa.11.0125.i.i, %.preheader104.i.i ], [ %.sroa.11.2.i.i, %stbtt__new_active.exit.thread.i.i ]
  %.1.lcssa.i.i = phi ptr [ %.0128.i.i, %.preheader104.i.i ], [ %i.oa, %stbtt__new_active.exit.thread.i.i ]
  %.0..0..0..0..0..0..0..0.84.i.i = load ptr, ptr %i.a, align 8, !tbaa !351 ; 4 uses
  %.not93.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0.84.i.i, null ; 2 uses
  %.pre136.i.i = load i32, ptr %0, align 8, !tbaa !88 ; 5 uses
  br i1 %.not93.i.i, label %stbtt__fill_active_edges_new.exit.i.i, label %bb.av

bb.av:                                            ; preds = %._crit_edge.i.i
  %i.oe = sitofp i32 %.pre136.i.i to float        ; 3 uses
  %i.of = icmp sgt i32 %.pre136.i.i, 0
  %i.og = fcmp oeq float %i.lr, %i.lq             ; 3 uses
  %i.oh = fsub float %i.lr, %i.lq                 ; 4 uses
  %wide.trip.count.i.i93.i = zext nneg i32 %.pre136.i.i to i64
  br label %bb.aw

bb.aw:                                            ; preds = %stbtt__handle_clipped_edge.exit351.i.i.i, %bb.av
  %.0293468.i.i.i = phi ptr [ %.0..0..0..0..0..0..0..0.84.i.i, %bb.av ], [ %i.aut, %stbtt__handle_clipped_edge.exit351.i.i.i ] ; 20 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 12
  %i.oj = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 8
  %i.ok = load float, ptr %i.oi, align 4, !tbaa !362 ; 5 uses
  %i.ol = fcmp oeq float %i.ok, 0.000000e+00
  %i.om = load float, ptr %i.oj, align 8, !tbaa !364 ; 49 uses
  br i1 %i.ol, label %bb.ax, label %bb.cf

bb.ax:                                            ; preds = %bb.aw
  %i.on = fcmp olt float %i.om, %i.oe
  br i1 %i.on, label %bb.ay, label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.oo = fcmp ult float %i.om, 0.000000e+00
  br i1 %i.oo, label %bb.bu, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.op = fptosi float %i.om to i32               ; 6 uses
  br i1 %i.og, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.oq = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 28 ; 2 uses
  %i.or = load float, ptr %i.oq, align 4, !tbaa !353 ; 4 uses
  %i.os = fcmp olt float %i.or, %i.lq
  br i1 %i.os, label %bb.bk, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ot = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 24
  %i.ou = load float, ptr %i.ot, align 8, !tbaa !365 ; 4 uses
  %i.ov = fcmp olt float %i.lr, %i.ou
  br i1 %i.ov, label %bb.bk, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ow = fcmp ogt float %i.ou, %i.lq
  br i1 %i.ow, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ox = fsub float %i.om, %i.om
  %i.oy = fsub float %i.ou, %i.lq
  %i.oz = fmul float %i.ox, %i.oy
  %i.pa = fdiv float %i.oz, %i.oh
  %i.pb = fadd float %i.om, %i.pa
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.055.i.i.i.i = phi float [ %i.pb, %bb.bd ], [ %i.om, %bb.bc ] ; 4 uses
  %.054.i.i.i.i = phi float [ %i.ou, %bb.bd ], [ %i.lq, %bb.bc ] ; 3 uses
  %i.pc = fcmp ogt float %i.lr, %i.or
  br i1 %i.pc, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.pd = fsub float %i.om, %.055.i.i.i.i
  %i.pe = fsub float %i.or, %i.lr
  %i.pf = fmul float %i.pe, %i.pd
  %i.pg = fsub float %i.lr, %.054.i.i.i.i
  %i.ph = fdiv float %i.pf, %i.pg
  %i.pi = fadd float %i.om, %i.ph
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.053.i.i.i.i = phi float [ %i.pi, %bb.bf ], [ %i.om, %bb.be ] ; 3 uses
  %.0.i.i.i.i = phi float [ %i.or, %bb.bf ], [ %i.lr, %bb.be ] ; 2 uses
  %i.pj = sitofp i32 %i.op to float               ; 4 uses
  %i.pk = fcmp ugt float %.055.i.i.i.i, %i.pj
  %i.pl = fcmp ugt float %.053.i.i.i.i, %i.pj
  %or.cond.i.i.i.i = select i1 %i.pk, i1 true, i1 %i.pl
  br i1 %or.cond.i.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.pm = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !355
  %i.po = fsub float %.0.i.i.i.i, %.054.i.i.i.i
  %i.pp = zext nneg i32 %i.op to i64
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %i.pp ; 2 uses
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !81
  %i.ps = tail call float @llvm.fmuladd.f32(float %i.pn, float %i.po, float %i.pr)
  store float %i.ps, ptr %i.pq, align 4, !tbaa !81
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %i.pt = add nuw nsw i32 %i.op, 1
  %i.pu = sitofp i32 %i.pt to float               ; 2 uses
  %i.pv = fcmp ult float %.055.i.i.i.i, %i.pu
  %i.pw = fcmp ult float %.053.i.i.i.i, %i.pu
  %or.cond62.i.i.i.i = select i1 %i.pv, i1 true, i1 %i.pw
  br i1 %or.cond62.i.i.i.i, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.px = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.py = load float, ptr %i.px, align 4, !tbaa !355
  %i.pz = fsub float %.0.i.i.i.i, %.054.i.i.i.i
  %i.qa = fmul float %i.pz, %i.py
  %i.qb = fsub float %.055.i.i.i.i, %i.pj
  %i.qc = fsub float %.053.i.i.i.i, %i.pj
  %i.qd = fadd float %i.qb, %i.qc
  %i.qe = fmul float %i.qd, 5.000000e-01
  %i.qf = fsub float 1.000000e+00, %i.qe
  %i.qg = zext nneg i32 %i.op to i64
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %i.qg ; 2 uses
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !81
  %i.qj = tail call float @llvm.fmuladd.f32(float %i.qa, float %i.qf, float %i.qi)
  store float %i.qj, ptr %i.qh, align 4, !tbaa !81
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bb, %bb.ba
  %i.qk = add nuw nsw i32 %i.op, 1                ; 3 uses
  %i.ql = load float, ptr %i.oq, align 4, !tbaa !353 ; 4 uses
  %i.qm = fcmp olt float %i.ql, %i.lq
  br i1 %i.qm, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.qn = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 24
  %i.qo = load float, ptr %i.qn, align 8, !tbaa !365 ; 4 uses
  %i.qp = fcmp olt float %i.lr, %i.qo
  br i1 %i.qp, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.qq = fcmp ogt float %i.qo, %i.lq
  br i1 %i.qq, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.qr = fsub float %i.om, %i.om
  %i.qs = fsub float %i.qo, %i.lq
  %i.qt = fmul float %i.qr, %i.qs
  %i.qu = fdiv float %i.qt, %i.oh
  %i.qv = fadd float %i.om, %i.qu
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.055.i345.i.i.i = phi float [ %i.qv, %bb.bn ], [ %i.om, %bb.bm ] ; 4 uses
  %.054.i346.i.i.i = phi float [ %i.qo, %bb.bn ], [ %i.lq, %bb.bm ] ; 3 uses
  %i.qw = fcmp ogt float %i.lr, %i.ql
  br i1 %i.qw, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.qx = fsub float %i.om, %.055.i345.i.i.i
  %i.qy = fsub float %i.ql, %i.lr
  %i.qz = fmul float %i.qy, %i.qx
  %i.ra = fsub float %i.lr, %.054.i346.i.i.i
  %i.rb = fdiv float %i.qz, %i.ra
  %i.rc = fadd float %i.om, %i.rb
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.053.i347.i.i.i = phi float [ %i.rc, %bb.bp ], [ %i.om, %bb.bo ] ; 3 uses
  %.0.i348.i.i.i = phi float [ %i.ql, %bb.bp ], [ %i.lr, %bb.bo ] ; 2 uses
  %i.rd = sitofp i32 %i.qk to float               ; 4 uses
  %i.re = fcmp ugt float %.055.i345.i.i.i, %i.rd
  %i.rf = fcmp ugt float %.053.i347.i.i.i, %i.rd
  %or.cond.i349.i.i.i = select i1 %i.re, i1 true, i1 %i.rf
  br i1 %or.cond.i349.i.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.rg = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !355
  %i.ri = fsub float %.0.i348.i.i.i, %.054.i346.i.i.i
  %i.rj = zext nneg i32 %i.qk to i64
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.rj ; 2 uses
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !81
  %i.rm = tail call float @llvm.fmuladd.f32(float %i.rh, float %i.ri, float %i.rl)
  store float %i.rm, ptr %i.rk, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.rn = add nuw nsw i32 %i.op, 2
  %i.ro = sitofp i32 %i.rn to float               ; 2 uses
  %i.rp = fcmp ult float %.055.i345.i.i.i, %i.ro
  %i.rq = fcmp ult float %.053.i347.i.i.i, %i.ro
  %or.cond62.i350.i.i.i = select i1 %i.rp, i1 true, i1 %i.rq
  br i1 %or.cond62.i350.i.i.i, label %bb.bt, label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.rr = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !355
  %i.rt = fsub float %.0.i348.i.i.i, %.054.i346.i.i.i
  %i.ru = fmul float %i.rt, %i.rs
  %i.rv = fsub float %.055.i345.i.i.i, %i.rd
  %i.rw = fsub float %.053.i347.i.i.i, %i.rd
  %i.rx = fadd float %i.rv, %i.rw
  %i.ry = fmul float %i.rx, 5.000000e-01
  %i.rz = fsub float 1.000000e+00, %i.ry
  %i.sa = zext nneg i32 %i.qk to i64
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.sa ; 2 uses
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !81
  %i.sd = tail call float @llvm.fmuladd.f32(float %i.ru, float %i.rz, float %i.sc)
  store float %i.sd, ptr %i.sb, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.bu:                                            ; preds = %bb.ay
  br i1 %i.og, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.se = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 28
  %i.sf = load float, ptr %i.se, align 4, !tbaa !353 ; 4 uses
  %i.sg = fcmp olt float %i.sf, %i.lq
  br i1 %i.sg, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.sh = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 24
  %i.si = load float, ptr %i.sh, align 8, !tbaa !365 ; 4 uses
  %i.sj = fcmp olt float %i.lr, %i.si
  br i1 %i.sj, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.sk = fcmp ogt float %i.si, %i.lq
  br i1 %i.sk, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.sl = fsub float %i.om, %i.om
  %i.sm = fsub float %i.si, %i.lq
  %i.sn = fmul float %i.sl, %i.sm
  %i.so = fdiv float %i.sn, %i.oh
  %i.sp = fadd float %i.om, %i.so
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.055.i352.i.i.i = phi float [ %i.sp, %bb.by ], [ %i.om, %bb.bx ] ; 4 uses
  %.054.i353.i.i.i = phi float [ %i.si, %bb.by ], [ %i.lq, %bb.bx ] ; 3 uses
  %i.sq = fcmp ogt float %i.lr, %i.sf
  br i1 %i.sq, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.sr = fsub float %i.om, %.055.i352.i.i.i
  %i.ss = fsub float %i.sf, %i.lr
  %i.st = fmul float %i.ss, %i.sr
  %i.su = fsub float %i.lr, %.054.i353.i.i.i
  %i.sv = fdiv float %i.st, %i.su
  %i.sw = fadd float %i.om, %i.sv
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.053.i354.i.i.i = phi float [ %i.sw, %bb.ca ], [ %i.om, %bb.bz ] ; 3 uses
  %.0.i355.i.i.i = phi float [ %i.sf, %bb.ca ], [ %i.lr, %bb.bz ] ; 2 uses
  %i.sx = fcmp ugt float %.055.i352.i.i.i, 0.000000e+00
  %i.sy = fcmp ugt float %.053.i354.i.i.i, 0.000000e+00
  %or.cond.i356.i.i.i = select i1 %i.sx, i1 true, i1 %i.sy
  br i1 %or.cond.i356.i.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.sz = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !355
  %i.tb = fsub float %.0.i355.i.i.i, %.054.i353.i.i.i
  %i.tc = load float, ptr %i.ky, align 4, !tbaa !81
  %i.td = tail call float @llvm.fmuladd.f32(float %i.ta, float %i.tb, float %i.tc)
  store float %i.td, ptr %i.ky, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.te = fcmp ult float %.055.i352.i.i.i, 1.000000e+00
  %i.tf = fcmp ult float %.053.i354.i.i.i, 1.000000e+00
  %or.cond62.i357.i.i.i = select i1 %i.te, i1 true, i1 %i.tf
  br i1 %or.cond62.i357.i.i.i, label %bb.ce, label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.tg = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.th = load float, ptr %i.tg, align 4, !tbaa !355
  %i.ti = fsub float %.0.i355.i.i.i, %.054.i353.i.i.i
  %i.tj = fmul float %i.ti, %i.th
  %i.tk = fadd float %.055.i352.i.i.i, %.053.i354.i.i.i
  %i.tl = fmul float %i.tk, 5.000000e-01
  %i.tm = fsub float 1.000000e+00, %i.tl
  %i.tn = load float, ptr %i.ky, align 4, !tbaa !81
  %i.to = tail call float @llvm.fmuladd.f32(float %i.tj, float %i.tm, float %i.tn)
  store float %i.to, ptr %i.ky, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.cf:                                            ; preds = %bb.aw
  %i.tp = fadd float %i.ok, %i.om                 ; 34 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 16
  %i.tr = load float, ptr %i.tq, align 8, !tbaa !363 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 24 ; 16 uses
  %12 = load float, ptr %i.ts, align 8, !tbaa !365 ; 3 uses
  %i.tt = fcmp ogt float %12, %i.lq               ; 2 uses
  %13 = fsub float %12, %i.lq
  %14 = tail call float @llvm.fmuladd.f32(float %i.ok, float %13, float %i.om)
  %.0305.i.i.i = select i1 %i.tt, float %14, float %i.om ; 7 uses
  %.0301.i.i.i = select i1 %i.tt, float %12, float %i.lq ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 28 ; 16 uses
  %16 = load float, ptr %15, align 4, !tbaa !353  ; 3 uses
  %17 = fcmp olt float %16, %i.lr                 ; 2 uses
  %18 = fsub float %16, %i.lq
  %19 = tail call float @llvm.fmuladd.f32(float %i.ok, float %18, float %i.om)
  %.0303.i.i.i = select i1 %17, float %19, float %i.tp ; 7 uses
  %.0299.i.i.i = select i1 %17, float %16, float %i.lr ; 3 uses
  %i.tu = fcmp oge float %.0305.i.i.i, 0.000000e+00
  %i.tv = fcmp oge float %.0303.i.i.i, 0.000000e+00
  %or.cond.i.i.i = select i1 %i.tu, i1 %i.tv, i1 false
  br i1 %or.cond.i.i.i, label %bb.cg, label %bb.cm

bb.cg:                                            ; preds = %bb.cf
  %i.tw = fcmp olt float %.0305.i.i.i, %i.oe
  %i.tx = fcmp olt float %.0303.i.i.i, %i.oe
  %or.cond338.i.i.i = select i1 %i.tw, i1 %i.tx, i1 false
  br i1 %or.cond338.i.i.i, label %bb.ch, label %bb.cm

bb.ch:                                            ; preds = %bb.cg
  %i.ty = fptosi float %.0305.i.i.i to i32        ; 5 uses
  %i.tz = fptosi float %.0303.i.i.i to i32        ; 3 uses
  %i.ua = icmp eq i32 %i.ty, %i.tz
  br i1 %i.ua, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ub = fsub float %.0299.i.i.i, %.0301.i.i.i
  %i.uc = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !355
  %i.ue = fmul float %i.ub, %i.ud                 ; 2 uses
  %i.uf = sitofp i32 %i.ty to float
  %i.ug = fadd float %i.uf, 1.000000e+00          ; 2 uses
  %i.uh = fsub float %i.ug, %.0305.i.i.i
  %i.ui = fsub float %i.ug, %.0303.i.i.i
  %i.uj = fadd float %i.uh, %i.ui
  %i.uk = fmul float %i.uj, 5.000000e-01
  %i.ul = fmul float %i.uk, %i.ue
  %i.um = zext nneg i32 %i.ty to i64              ; 2 uses
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %i.um ; 2 uses
  %i.uo = load float, ptr %i.un, align 4, !tbaa !81
  %i.up = fadd float %i.uo, %i.ul
  store float %i.up, ptr %i.un, align 4, !tbaa !81
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.um ; 2 uses
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !81
  %i.us = fadd float %i.ue, %i.ur
  store float %i.us, ptr %i.uq, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.cj:                                            ; preds = %bb.ch
  %i.ut = fcmp ogt float %.0305.i.i.i, %.0303.i.i.i
  br i1 %i.ut, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.uu = fsub float %i.lq, %.0301.i.i.i
  %i.uv = fadd float %i.lr, %i.uu
  %i.uw = fsub float %i.lq, %.0299.i.i.i
  %i.ux = fadd float %i.lr, %i.uw
  %i.uy = fneg float %i.tr
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.pre-phi474.i.i.i = phi i32 [ %i.ty, %bb.ck ], [ %i.tz, %bb.cj ] ; 7 uses
  %.pre-phi.i.i.i = phi i32 [ %i.tz, %bb.ck ], [ %i.ty, %bb.cj ] ; 4 uses
  %.0307.i.i.i = phi float [ %i.tp, %bb.ck ], [ %i.om, %bb.cj ] ; 2 uses
  %.1306.i.i.i = phi float [ %.0303.i.i.i, %bb.ck ], [ %.0305.i.i.i, %bb.cj ]
  %.1304.i.i.i = phi float [ %.0305.i.i.i, %bb.ck ], [ %.0303.i.i.i, %bb.cj ]
  %.1302.i.i.i = phi float [ %i.ux, %bb.ck ], [ %.0301.i.i.i, %bb.cj ] ; 2 uses
  %.1300.i.i.i = phi float [ %i.uv, %bb.ck ], [ %.0299.i.i.i, %bb.cj ] ; 2 uses
  %.0298.i.i.i = phi float [ %i.uy, %bb.ck ], [ %i.tr, %bb.cj ] ; 3 uses
  %i.uz = add nuw nsw i32 %.pre-phi.i.i.i, 1      ; 3 uses
  %i.va = uitofp nneg i32 %i.uz to float          ; 2 uses
  %i.vb = fsub float %i.va, %.0307.i.i.i
  %i.vc = tail call float @llvm.fmuladd.f32(float %.0298.i.i.i, float %i.vb, float %i.lq) ; 2 uses
  %i.vd = uitofp nneg i32 %.pre-phi474.i.i.i to float ; 3 uses
  %i.ve = fsub float %i.vd, %.0307.i.i.i
  %i.vf = tail call float @llvm.fmuladd.f32(float %.0298.i.i.i, float %i.ve, float %i.lq) ; 2 uses
  %i.vg = fcmp ogt float %i.vc, %i.lr
  %.0296.i.i.i = select i1 %i.vg, float %i.lr, float %i.vc ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !355 ; 4 uses
  %i.vj = fsub float %.0296.i.i.i, %.1302.i.i.i
  %i.vk = fmul float %i.vi, %i.vj                 ; 5 uses
  %i.vl = fsub nnan float %i.va, %.1306.i.i.i
  %i.vm = fmul float %i.vl, %i.vk
  %i.vn = fmul float %i.vm, 5.000000e-01
  %i.vo = zext nneg i32 %.pre-phi.i.i.i to i64    ; 3 uses
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %i.vo ; 2 uses
  %i.vq = load float, ptr %i.vp, align 4, !tbaa !81
  %i.vr = fadd float %i.vq, %i.vn
  store float %i.vr, ptr %i.vp, align 4, !tbaa !81
  %i.vs = fcmp ogt float %i.vf, %i.lr             ; 2 uses
  %i.vt = fsub float %i.lr, %.0296.i.i.i
  %i.vu = sub nsw i32 %.pre-phi474.i.i.i, %i.uz
  %i.vv = sitofp i32 %i.vu to float
  %i.vw = fdiv float %i.vt, %i.vv
  %.1.i.i.i = select i1 %i.vs, float %i.vw, float %.0298.i.i.i
  %.0295.i.i.i = select i1 %i.vs, float %i.lr, float %i.vf
  %i.vx = fmul float %i.vi, %.1.i.i.i             ; 4 uses
  %i.vy = icmp slt i32 %i.uz, %.pre-phi474.i.i.i
  br i1 %i.vy, label %.lr.ph467.i.i.i, label %._crit_edge.i.i.i

.lr.ph467.i.i.i:                                  ; preds = %bb.cl
  %i.vz = fmul float %i.vx, 5.000000e-01          ; 3 uses
  %i.wa = add nuw nsw i64 %i.vo, 1                ; 2 uses
  %i.wb = add nsw i32 %.pre-phi474.i.i.i, -2
  %i.wc = sub nsw i32 %.pre-phi.i.i.i, %.pre-phi474.i.i.i
  %i.wd = and i32 %i.wc, 1
  %lcmp.mod.not.not = icmp eq i32 %i.wd, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph467.i.i.i
  %i.we = fadd float %i.vz, %i.vk
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %i.wa ; 2 uses
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !81
  %i.wh = fadd float %i.we, %i.wg
  store float %i.wh, ptr %i.wf, align 4, !tbaa !81
  %i.wi = fadd float %i.vx, %i.vk                 ; 2 uses
  %indvars.iv.next472.i.i.i.prol = add nuw nsw i64 %i.vo, 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph467.i.i.i
  %indvars.iv471.i.i.i.unr = phi i64 [ %i.wa, %.lr.ph467.i.i.i ], [ %indvars.iv.next472.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.0294466.i.i.i.unr = phi float [ %i.vk, %.lr.ph467.i.i.i ], [ %i.wi, %.prol.loopexit.unr-lcssa ]
  %.lcssa183.unr = phi float [ poison, %.lr.ph467.i.i.i ], [ %i.wi, %.prol.loopexit.unr-lcssa ]
  %i.wj = icmp eq i32 %i.wb, %.pre-phi.i.i.i
  br i1 %i.wj, label %._crit_edge.i.i.i, label %.lr.ph467.i.i.i.new

.lr.ph467.i.i.i.new:                              ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.new
  %indvars.iv471.i.i.i = phi i64 [ %indvars.iv.next472.i.i.i.1, %.lr.ph467.i.i.i.new ], [ %indvars.iv471.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0294466.i.i.i = phi float [ %i.wu, %.lr.ph467.i.i.i.new ], [ %.0294466.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.wk = fadd float %i.vz, %.0294466.i.i.i
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv471.i.i.i ; 2 uses
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !81
  %i.wn = fadd float %i.wk, %i.wm
  store float %i.wn, ptr %i.wl, align 4, !tbaa !81
  %i.wo = fadd float %i.vx, %.0294466.i.i.i       ; 2 uses
  %i.wp = fadd float %i.vz, %i.wo
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv471.i.i.i
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 4 ; 2 uses
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !81
  %i.wt = fadd float %i.wp, %i.ws
  store float %i.wt, ptr %i.wr, align 4, !tbaa !81
  %i.wu = fadd float %i.vx, %i.wo                 ; 2 uses
  %indvars.iv.next472.i.i.i.1 = add nuw nsw i64 %indvars.iv471.i.i.i, 2 ; 2 uses
  %i.wv = trunc nuw i64 %indvars.iv.next472.i.i.i.1 to i32
  %i.ww = icmp sgt i32 %.pre-phi474.i.i.i, %i.wv
  br i1 %i.ww, label %.lr.ph467.i.i.i.new, label %._crit_edge.i.i.i, !llvm.loop !342

._crit_edge.i.i.i:                                ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.new, %bb.cl
  %.0294.lcssa.i.i.i = phi float [ %i.vk, %bb.cl ], [ %.lcssa183.unr, %.prol.loopexit ], [ %i.wu, %.lr.ph467.i.i.i.new ]
  %i.wx = fsub float %.1300.i.i.i, %.0295.i.i.i
  %i.wy = fadd float %i.vd, 1.000000e+00          ; 2 uses
  %i.wz = fsub nnan float %i.wy, %i.vd
  %i.xa = fsub float %i.wy, %.1304.i.i.i
  %i.xb = fadd float %i.wz, %i.xa
  %i.xc = fmul float %i.xb, 5.000000e-01
  %i.xd = fmul float %i.xc, %i.wx
  %i.xe = tail call float @llvm.fmuladd.f32(float %i.vi, float %i.xd, float %.0294.lcssa.i.i.i)
  %i.xf = zext nneg i32 %.pre-phi474.i.i.i to i64 ; 2 uses
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %i.xf ; 2 uses
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !81
  %i.xi = fadd float %i.xe, %i.xh
  store float %i.xi, ptr %i.xg, align 4, !tbaa !81
  %i.xj = fsub float %.1300.i.i.i, %.1302.i.i.i
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.xf ; 2 uses
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !81
  %i.xm = tail call float @llvm.fmuladd.f32(float %i.vi, float %i.xj, float %i.xl)
  store float %i.xm, ptr %i.xk, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.cm:                                            ; preds = %bb.cg, %bb.cf
  br i1 %i.of, label %.lr.ph.i.i94.i, label %stbtt__handle_clipped_edge.exit351.i.i.i

.lr.ph.i.i94.i:                                   ; preds = %bb.cm
  %i.xn = fsub float %i.tp, %i.om
  %i.xo = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20 ; 30 uses
  %20 = insertelement <2 x float> poison, float %i.om, i64 0
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %22 = insertelement <2 x float> poison, float %i.ok, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.cn

bb.cn:                                            ; preds = %stbtt__handle_clipped_edge.exit379.i.i.i, %.lr.ph.i.i94.i
  %indvars.iv.i.i95.i = phi i64 [ 0, %.lr.ph.i.i94.i ], [ %indvars.iv.next.i.i96.i, %stbtt__handle_clipped_edge.exit379.i.i.i ] ; 32 uses
  %indvars.iv.next.i.i96.i = add nuw nsw i64 %indvars.iv.i.i95.i, 1 ; 3 uses
  %i.xp = trunc nuw nsw i64 %indvars.iv.i.i95.i to i32
  %i.xq = uitofp nneg i32 %i.xp to float          ; 90 uses
  %i.xr = trunc nuw nsw i64 %indvars.iv.next.i.i96.i to i32
  %i.xs = uitofp nneg i32 %i.xr to float          ; 60 uses
  %i.xt = insertelement <2 x float> poison, float %i.xq, i64 0
  %i.xu = insertelement <2 x float> %i.xt, float %i.xs, i64 1
  %i.xv = fsub <2 x float> %i.xu, %21             ; 7 uses
  %i.xw = fdiv <2 x float> %i.xv, %23             ; 2 uses
  %i.xx = extractelement <2 x float> %i.xw, i64 0
  %i.xy = fadd float %i.xx, %i.lq                 ; 52 uses
  %i.xz = extractelement <2 x float> %i.xw, i64 1
  %i.ya = fadd float %i.xz, %i.lq                 ; 52 uses
  %i.yb = fcmp olt float %i.om, %i.xq             ; 2 uses
  %i.yc = fcmp ogt float %i.tp, %i.xs             ; 2 uses
  %or.cond339.i.i.i = select i1 %i.yb, i1 %i.yc, i1 false
  br i1 %or.cond339.i.i.i, label %bb.co, label %bb.dt

bb.co:                                            ; preds = %bb.cn
  %i.yd = fcmp oeq float %i.xy, %i.lq
  br i1 %i.yd, label %stbtt__handle_clipped_edge.exit365.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ye = load float, ptr %15, align 4, !tbaa !353 ; 4 uses
  %i.yf = fcmp olt float %i.ye, %i.lq
  br i1 %i.yf, label %stbtt__handle_clipped_edge.exit365.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.yg = load float, ptr %i.ts, align 8, !tbaa !365 ; 4 uses
  %i.yh = fcmp olt float %i.xy, %i.yg
  br i1 %i.yh, label %stbtt__handle_clipped_edge.exit365.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.yi = fcmp ogt float %i.yg, %i.lq
  br i1 %i.yi, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.yj = fsub float %i.yg, %i.lq
  %i.yk = extractelement <2 x float> %i.xv, i64 0
  %i.yl = fmul float %i.yk, %i.yj
  %i.ym = fsub float %i.xy, %i.lq
  %i.yn = fdiv float %i.yl, %i.ym
  %i.yo = fadd float %i.om, %i.yn
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.055.i359.i.i.i = phi float [ %i.yo, %bb.cs ], [ %i.om, %bb.cr ] ; 4 uses
  %.054.i360.i.i.i = phi float [ %i.yg, %bb.cs ], [ %i.lq, %bb.cr ] ; 3 uses
  %i.yp = fcmp ogt float %i.xy, %i.ye
  br i1 %i.yp, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.yq = fsub float %i.xq, %.055.i359.i.i.i
  %i.yr = fsub float %i.ye, %i.xy
  %i.ys = fmul float %i.yr, %i.yq
  %i.yt = fsub float %i.xy, %.054.i360.i.i.i
  %i.yu = fdiv float %i.ys, %i.yt
  %i.yv = fadd float %i.yu, %i.xq
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.053.i361.i.i.i = phi float [ %i.yv, %bb.cu ], [ %i.xq, %bb.ct ] ; 3 uses
  %.0.i362.i.i.i = phi float [ %i.ye, %bb.cu ], [ %i.xy, %bb.ct ] ; 2 uses
  %i.yw = fcmp ugt float %.055.i359.i.i.i, %i.xq
  %i.yx = fcmp ugt float %.053.i361.i.i.i, %i.xq
  %or.cond.i363.i.i.i = select i1 %i.yw, i1 true, i1 %i.yx
  br i1 %or.cond.i363.i.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.yy = load float, ptr %i.xo, align 4, !tbaa !355
  %i.yz = fsub float %.0.i362.i.i.i, %.054.i360.i.i.i
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.zb = load float, ptr %i.za, align 4, !tbaa !81
  %i.zc = tail call float @llvm.fmuladd.f32(float %i.yy, float %i.yz, float %i.zb)
  store float %i.zc, ptr %i.za, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit365.i.i.i

bb.cx:                                            ; preds = %bb.cv
  %i.zd = fcmp ult float %.055.i359.i.i.i, %i.xs
  %i.ze = fcmp ult float %.053.i361.i.i.i, %i.xs
  %or.cond62.i364.i.i.i = select i1 %i.zd, i1 true, i1 %i.ze
  br i1 %or.cond62.i364.i.i.i, label %bb.cy, label %stbtt__handle_clipped_edge.exit365.i.i.i

bb.cy:                                            ; preds = %bb.cx
  %i.zf = load float, ptr %i.xo, align 4, !tbaa !355
  %i.zg = fsub float %.0.i362.i.i.i, %.054.i360.i.i.i
  %i.zh = fmul float %i.zg, %i.zf
  %i.zi = fsub float %.055.i359.i.i.i, %i.xq
  %i.zj = fsub float %.053.i361.i.i.i, %i.xq
  %i.zk = fadd float %i.zi, %i.zj
  %i.zl = fmul float %i.zk, 5.000000e-01
  %i.zm = fsub float 1.000000e+00, %i.zl
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !81
  %i.zp = tail call float @llvm.fmuladd.f32(float %i.zh, float %i.zm, float %i.zo)
  store float %i.zp, ptr %i.zn, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit365.i.i.i

stbtt__handle_clipped_edge.exit365.i.i.i:         ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cq, %bb.cp, %bb.co
  %i.zq = fcmp oeq float %i.xy, %i.ya
  br i1 %i.zq, label %stbtt__handle_clipped_edge.exit372.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %stbtt__handle_clipped_edge.exit365.i.i.i
  %i.zr = load float, ptr %15, align 4, !tbaa !353 ; 4 uses
  %i.zs = fcmp ogt float %i.xy, %i.zr
  br i1 %i.zs, label %stbtt__handle_clipped_edge.exit372.i.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.zt = load float, ptr %i.ts, align 8, !tbaa !365 ; 4 uses
  %i.zu = fcmp olt float %i.ya, %i.zt
  br i1 %i.zu, label %stbtt__handle_clipped_edge.exit372.i.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.zv = fcmp olt float %i.xy, %i.zt
  br i1 %i.zv, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.zw = fsub nnan float %i.xs, %i.xq
  %i.zx = fsub float %i.zt, %i.xy
  %i.zy = fmul float %i.zw, %i.zx
  %i.zz = fsub float %i.ya, %i.xy
  %i.aaa = fdiv float %i.zy, %i.zz
  %i.aab = fadd float %i.aaa, %i.xq
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.055.i366.i.i.i = phi float [ %i.aab, %bb.dc ], [ %i.xq, %bb.db ] ; 4 uses
  %.054.i367.i.i.i = phi float [ %i.zt, %bb.dc ], [ %i.xy, %bb.db ] ; 3 uses
  %i.aac = fcmp ogt float %i.ya, %i.zr
  br i1 %i.aac, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.aad = fsub float %i.xs, %.055.i366.i.i.i
  %i.aae = fsub float %i.zr, %i.ya
  %i.aaf = fmul float %i.aae, %i.aad
  %i.aag = fsub float %i.ya, %.054.i367.i.i.i
  %i.aah = fdiv float %i.aaf, %i.aag
  %i.aai = fadd float %i.aah, %i.xs
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.053.i368.i.i.i = phi float [ %i.aai, %bb.de ], [ %i.xs, %bb.dd ] ; 3 uses
  %.0.i369.i.i.i = phi float [ %i.zr, %bb.de ], [ %i.ya, %bb.dd ] ; 2 uses
  %i.aaj = fcmp ugt float %.055.i366.i.i.i, %i.xq
  %i.aak = fcmp ugt float %.053.i368.i.i.i, %i.xq
  %or.cond.i370.i.i.i = select i1 %i.aaj, i1 true, i1 %i.aak
  br i1 %or.cond.i370.i.i.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.aal = load float, ptr %i.xo, align 4, !tbaa !355
  %i.aam = fsub float %.0.i369.i.i.i, %.054.i367.i.i.i
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.aao = load float, ptr %i.aan, align 4, !tbaa !81
  %i.aap = tail call float @llvm.fmuladd.f32(float %i.aal, float %i.aam, float %i.aao)
  store float %i.aap, ptr %i.aan, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit372.i.i.i

bb.dh:                                            ; preds = %bb.df
  %i.aaq = fcmp ult float %.055.i366.i.i.i, %i.xs
  %i.aar = fcmp ult float %.053.i368.i.i.i, %i.xs
  %or.cond62.i371.i.i.i = select i1 %i.aaq, i1 true, i1 %i.aar
  br i1 %or.cond62.i371.i.i.i, label %bb.di, label %stbtt__handle_clipped_edge.exit372.i.i.i

bb.di:                                            ; preds = %bb.dh
  %i.aas = load float, ptr %i.xo, align 4, !tbaa !355
  %i.aat = fsub float %.0.i369.i.i.i, %.054.i367.i.i.i
  %i.aau = fmul float %i.aat, %i.aas
  %i.aav = fsub float %.055.i366.i.i.i, %i.xq
  %i.aaw = fsub float %.053.i368.i.i.i, %i.xq
  %i.aax = fadd float %i.aav, %i.aaw
  %i.aay = fmul float %i.aax, 5.000000e-01
  %i.aaz = fsub float 1.000000e+00, %i.aay
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.abb = load float, ptr %i.aba, align 4, !tbaa !81
  %i.abc = tail call float @llvm.fmuladd.f32(float %i.aau, float %i.aaz, float %i.abb)
  store float %i.abc, ptr %i.aba, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit372.i.i.i

stbtt__handle_clipped_edge.exit372.i.i.i:         ; preds = %bb.di, %bb.dh, %bb.dg, %bb.da, %bb.cz, %stbtt__handle_clipped_edge.exit365.i.i.i
  %i.abd = fcmp oeq float %i.ya, %i.lr
  br i1 %i.abd, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %stbtt__handle_clipped_edge.exit372.i.i.i
  %i.abe = load float, ptr %15, align 4, !tbaa !353 ; 4 uses
  %i.abf = fcmp ogt float %i.ya, %i.abe
  br i1 %i.abf, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.abg = load float, ptr %i.ts, align 8, !tbaa !365 ; 4 uses
  %i.abh = fcmp olt float %i.lr, %i.abg
  br i1 %i.abh, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.abi = fcmp olt float %i.ya, %i.abg
  br i1 %i.abi, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.abj = fsub float %i.tp, %i.xs
  %i.abk = fsub float %i.abg, %i.ya
  %i.abl = fmul float %i.abj, %i.abk
  %i.abm = fsub float %i.lr, %i.ya
  %i.abn = fdiv float %i.abl, %i.abm
  %i.abo = fadd float %i.abn, %i.xs
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.055.i373.i.i.i = phi float [ %i.abo, %bb.dm ], [ %i.xs, %bb.dl ] ; 4 uses
  %.054.i374.i.i.i = phi float [ %i.abg, %bb.dm ], [ %i.ya, %bb.dl ] ; 3 uses
  %i.abp = fcmp ogt float %i.lr, %i.abe
  br i1 %i.abp, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.abq = fsub float %i.tp, %.055.i373.i.i.i
  %i.abr = fsub float %i.abe, %i.lr
  %i.abs = fmul float %i.abr, %i.abq
  %i.abt = fsub float %i.lr, %.054.i374.i.i.i
  %i.abu = fdiv float %i.abs, %i.abt
  %i.abv = fadd float %i.tp, %i.abu
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.053.i375.i.i.i = phi float [ %i.abv, %bb.do ], [ %i.tp, %bb.dn ] ; 3 uses
  %.0.i376.i.i.i = phi float [ %i.abe, %bb.do ], [ %i.lr, %bb.dn ] ; 2 uses
  %i.abw = fcmp ugt float %.055.i373.i.i.i, %i.xq
  %i.abx = fcmp ugt float %.053.i375.i.i.i, %i.xq
  %or.cond.i377.i.i.i = select i1 %i.abw, i1 true, i1 %i.abx
  br i1 %or.cond.i377.i.i.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.aby = load float, ptr %i.xo, align 4, !tbaa !355
  %i.abz = fsub float %.0.i376.i.i.i, %.054.i374.i.i.i
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.acb = load float, ptr %i.aca, align 4, !tbaa !81
  %i.acc = tail call float @llvm.fmuladd.f32(float %i.aby, float %i.abz, float %i.acb)
  store float %i.acc, ptr %i.aca, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.dr:                                            ; preds = %bb.dp
  %i.acd = fcmp ult float %.055.i373.i.i.i, %i.xs
  %i.ace = fcmp ult float %.053.i375.i.i.i, %i.xs
  %or.cond62.i378.i.i.i = select i1 %i.acd, i1 true, i1 %i.ace
  br i1 %or.cond62.i378.i.i.i, label %bb.ds, label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.ds:                                            ; preds = %bb.dr
  %i.acf = load float, ptr %i.xo, align 4, !tbaa !355
  %i.acg = fsub float %.0.i376.i.i.i, %.054.i374.i.i.i
  %i.ach = fmul float %i.acg, %i.acf
  %i.aci = fsub float %.055.i373.i.i.i, %i.xq
  %i.acj = fsub float %.053.i375.i.i.i, %i.xq
  %i.ack = fadd float %i.aci, %i.acj
  %i.acl = fmul float %i.ack, 5.000000e-01
  %i.acm = fsub float 1.000000e+00, %i.acl
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.aco = load float, ptr %i.acn, align 4, !tbaa !81
  %i.acp = tail call float @llvm.fmuladd.f32(float %i.ach, float %i.acm, float %i.aco)
  store float %i.acp, ptr %i.acn, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.dt:                                            ; preds = %bb.cn
  %i.acq = fcmp olt float %i.tp, %i.xq            ; 2 uses
  %i.acr = fcmp ogt float %i.om, %i.xs            ; 2 uses
  %or.cond340.i.i.i = select i1 %i.acq, i1 %i.acr, i1 false
  br i1 %or.cond340.i.i.i, label %bb.du, label %bb.ez

bb.du:                                            ; preds = %bb.dt
  %i.acs = fcmp oeq float %i.ya, %i.lq
  br i1 %i.acs, label %stbtt__handle_clipped_edge.exit386.i.i.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.act = load float, ptr %15, align 4, !tbaa !353 ; 4 uses
  %i.acu = fcmp olt float %i.act, %i.lq
  br i1 %i.acu, label %stbtt__handle_clipped_edge.exit386.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.acv = load float, ptr %i.ts, align 8, !tbaa !365 ; 4 uses
  %i.acw = fcmp olt float %i.ya, %i.acv
  br i1 %i.acw, label %stbtt__handle_clipped_edge.exit386.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.acx = fcmp ogt float %i.acv, %i.lq
  br i1 %i.acx, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.acy = fsub float %i.acv, %i.lq
  %i.acz = extractelement <2 x float> %i.xv, i64 1
  %i.ada = fmul float %i.acz, %i.acy
  %i.adb = fsub float %i.ya, %i.lq
  %i.adc = fdiv float %i.ada, %i.adb
  %i.add = fadd float %i.om, %i.adc
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.055.i380.i.i.i = phi float [ %i.add, %bb.dy ], [ %i.om, %bb.dx ] ; 4 uses
  %.054.i381.i.i.i = phi float [ %i.acv, %bb.dy ], [ %i.lq, %bb.dx ] ; 3 uses
  %i.ade = fcmp ogt float %i.ya, %i.act
  br i1 %i.ade, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.adf = fsub float %i.xs, %.055.i380.i.i.i
  %i.adg = fsub float %i.act, %i.ya
  %i.adh = fmul float %i.adg, %i.adf
  %i.adi = fsub float %i.ya, %.054.i381.i.i.i
  %i.adj = fdiv float %i.adh, %i.adi
  %i.adk = fadd float %i.adj, %i.xs
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.053.i382.i.i.i = phi float [ %i.adk, %bb.ea ], [ %i.xs, %bb.dz ] ; 3 uses
  %.0.i383.i.i.i = phi float [ %i.act, %bb.ea ], [ %i.ya, %bb.dz ] ; 2 uses
  %i.adl = fcmp ugt float %.055.i380.i.i.i, %i.xq
  %i.adm = fcmp ugt float %.053.i382.i.i.i, %i.xq
  %or.cond.i384.i.i.i = select i1 %i.adl, i1 true, i1 %i.adm
  br i1 %or.cond.i384.i.i.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.adn = load float, ptr %i.xo, align 4, !tbaa !355
  %i.ado = fsub float %.0.i383.i.i.i, %.054.i381.i.i.i
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.adq = load float, ptr %i.adp, align 4, !tbaa !81
  %i.adr = tail call float @llvm.fmuladd.f32(float %i.adn, float %i.ado, float %i.adq)
  store float %i.adr, ptr %i.adp, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit386.i.i.i

bb.ed:                                            ; preds = %bb.eb
  %i.ads = fcmp ult float %.055.i380.i.i.i, %i.xs
  %i.adt = fcmp ult float %.053.i382.i.i.i, %i.xs
  %or.cond62.i385.i.i.i = select i1 %i.ads, i1 true, i1 %i.adt
  br i1 %or.cond62.i385.i.i.i, label %bb.ee, label %stbtt__handle_clipped_edge.exit386.i.i.i

bb.ee:                                            ; preds = %bb.ed
  %i.adu = load float, ptr %i.xo, align 4, !tbaa !355
  %i.adv = fsub float %.0.i383.i.i.i, %.054.i381.i.i.i
  %i.adw = fmul float %i.adv, %i.adu
  %i.adx = fsub float %.055.i380.i.i.i, %i.xq
  %i.ady = fsub float %.053.i382.i.i.i, %i.xq
  %i.adz = fadd float %i.adx, %i.ady
  %i.aea = fmul float %i.adz, 5.000000e-01
  %i.aeb = fsub float 1.000000e+00, %i.aea
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.aed = load float, ptr %i.aec, align 4, !tbaa !81
  %i.aee = tail call float @llvm.fmuladd.f32(float %i.adw, float %i.aeb, float %i.aed)
  store float %i.aee, ptr %i.aec, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit386.i.i.i

stbtt__handle_clipped_edge.exit386.i.i.i:         ; preds = %bb.ee, %bb.ed, %bb.ec, %bb.dw, %bb.dv, %bb.du
  %i.aef = fcmp oeq float %i.ya, %i.xy
  br i1 %i.aef, label %stbtt__handle_clipped_edge.exit393.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %stbtt__handle_clipped_edge.exit386.i.i.i
  %i.aeg = load float, ptr %15, align 4, !tbaa !353 ; 4 uses
  %i.aeh = fcmp ogt float %i.ya, %i.aeg
  br i1 %i.aeh, label %stbtt__handle_clipped_edge.exit393.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.aei = load float, ptr %i.ts, align 8, !tbaa !365 ; 4 uses
  %i.aej = fcmp olt float %i.xy, %i.aei
  br i1 %i.aej, label %stbtt__handle_clipped_edge.exit393.i.i.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.aek = fcmp olt float %i.ya, %i.aei
  br i1 %i.aek, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.ael = fsub nnan float %i.xq, %i.xs
  %i.aem = fsub float %i.aei, %i.ya
  %i.aen = fmul float %i.ael, %i.aem
  %i.aeo = fsub float %i.xy, %i.ya
  %i.aep = fdiv float %i.aen, %i.aeo
  %i.aeq = fadd float %i.aep, %i.xs
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.055.i387.i.i.i = phi float [ %i.aeq, %bb.ei ], [ %i.xs, %bb.eh ] ; 4 uses
  %.054.i388.i.i.i = phi float [ %i.aei, %bb.ei ], [ %i.ya, %bb.eh ] ; 3 uses
  %i.aer = fcmp ogt float %i.xy, %i.aeg
  br i1 %i.aer, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.aes = fsub float %i.xq, %.055.i387.i.i.i
  %i.aet = fsub float %i.aeg, %i.xy
  %i.aeu = fmul float %i.aet, %i.aes
  %i.aev = fsub float %i.xy, %.054.i388.i.i.i
  %i.aew = fdiv float %i.aeu, %i.aev
  %i.aex = fadd float %i.aew, %i.xq
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %.053.i389.i.i.i = phi float [ %i.aex, %bb.ek ], [ %i.xq, %bb.ej ] ; 3 uses
  %.0.i390.i.i.i = phi float [ %i.aeg, %bb.ek ], [ %i.xy, %bb.ej ] ; 2 uses
  %i.aey = fcmp ugt float %.055.i387.i.i.i, %i.xq
  %i.aez = fcmp ugt float %.053.i389.i.i.i, %i.xq
  %or.cond.i391.i.i.i = select i1 %i.aey, i1 true, i1 %i.aez
  br i1 %or.cond.i391.i.i.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.afa = load float, ptr %i.xo, align 4, !tbaa !355
  %i.afb = fsub float %.0.i390.i.i.i, %.054.i388.i.i.i
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.afd = load float, ptr %i.afc, align 4, !tbaa !81
  %i.afe = tail call float @llvm.fmuladd.f32(float %i.afa, float %i.afb, float %i.afd)
  store float %i.afe, ptr %i.afc, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit393.i.i.i

bb.en:                                            ; preds = %bb.el
  %i.aff = fcmp ult float %.055.i387.i.i.i, %i.xs
  %i.afg = fcmp ult float %.053.i389.i.i.i, %i.xs
  %or.cond62.i392.i.i.i = select i1 %i.aff, i1 true, i1 %i.afg
  br i1 %or.cond62.i392.i.i.i, label %bb.eo, label %stbtt__handle_clipped_edge.exit393.i.i.i

bb.eo:                                            ; preds = %bb.en
  %i.afh = load float, ptr %i.xo, align 4, !tbaa !355
  %i.afi = fsub float %.0.i390.i.i.i, %.054.i388.i.i.i
  %i.afj = fmul float %i.afi, %i.afh
  %i.afk = fsub float %.055.i387.i.i.i, %i.xq
  %i.afl = fsub float %.053.i389.i.i.i, %i.xq
  %i.afm = fadd float %i.afk, %i.afl
  %i.afn = fmul float %i.afm, 5.000000e-01
  %i.afo = fsub float 1.000000e+00, %i.afn
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.afq = load float, ptr %i.afp, align 4, !tbaa !81
  %i.afr = tail call float @llvm.fmuladd.f32(float %i.afj, float %i.afo, float %i.afq)
  store float %i.afr, ptr %i.afp, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit393.i.i.i

stbtt__handle_clipped_edge.exit393.i.i.i:         ; preds = %bb.eo, %bb.en, %bb.em, %bb.eg, %bb.ef, %stbtt__handle_clipped_edge.exit386.i.i.i
  %i.afs = fcmp oeq float %i.xy, %i.lr
  br i1 %i.afs, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.ep

bb.ep:                                            ; preds = %stbtt__handle_clipped_edge.exit393.i.i.i
  %i.aft = load float, ptr %15, align 4, !tbaa !353 ; 4 uses
  %i.afu = fcmp ogt float %i.xy, %i.aft
  br i1 %i.afu, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.afv = load float, ptr %i.ts, align 8, !tbaa !365 ; 4 uses
  %i.afw = fcmp olt float %i.lr, %i.afv
  br i1 %i.afw, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.afx = fcmp olt float %i.xy, %i.afv
  br i1 %i.afx, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.afy = fsub float %i.tp, %i.xq
  %i.afz = fsub float %i.afv, %i.xy
  %i.aga = fmul float %i.afy, %i.afz
  %i.agb = fsub float %i.lr, %i.xy
  %i.agc = fdiv float %i.aga, %i.agb
  %i.agd = fadd float %i.agc, %i.xq
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.055.i394.i.i.i = phi float [ %i.agd, %bb.es ], [ %i.xq, %bb.er ] ; 4 uses
  %.054.i395.i.i.i = phi float [ %i.afv, %bb.es ], [ %i.xy, %bb.er ] ; 3 uses
  %i.age = fcmp ogt float %i.lr, %i.aft
  br i1 %i.age, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.agf = fsub float %i.tp, %.055.i394.i.i.i
  %i.agg = fsub float %i.aft, %i.lr
  %i.agh = fmul float %i.agg, %i.agf
  %i.agi = fsub float %i.lr, %.054.i395.i.i.i
  %i.agj = fdiv float %i.agh, %i.agi
  %i.agk = fadd float %i.tp, %i.agj
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %.053.i396.i.i.i = phi float [ %i.agk, %bb.eu ], [ %i.tp, %bb.et ] ; 3 uses
  %.0.i397.i.i.i = phi float [ %i.aft, %bb.eu ], [ %i.lr, %bb.et ] ; 2 uses
  %i.agl = fcmp ugt float %.055.i394.i.i.i, %i.xq
  %i.agm = fcmp ugt float %.053.i396.i.i.i, %i.xq
  %or.cond.i398.i.i.i = select i1 %i.agl, i1 true, i1 %i.agm
  br i1 %or.cond.i398.i.i.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.agn = load float, ptr %i.xo, align 4, !tbaa !355
  %i.ago = fsub float %.0.i397.i.i.i, %.054.i395.i.i.i
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.agq = load float, ptr %i.agp, align 4, !tbaa !81
  %i.agr = tail call float @llvm.fmuladd.f32(float %i.agn, float %i.ago, float %i.agq)
  store float %i.agr, ptr %i.agp, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.ex:                                            ; preds = %bb.ev
  %i.ags = fcmp ult float %.055.i394.i.i.i, %i.xs
  %i.agt = fcmp ult float %.053.i396.i.i.i, %i.xs
  %or.cond62.i399.i.i.i = select i1 %i.ags, i1 true, i1 %i.agt
  br i1 %or.cond62.i399.i.i.i, label %bb.ey, label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.ey:                                            ; preds = %bb.ex
  %i.agu = load float, ptr %i.xo, align 4, !tbaa !355
  %i.agv = fsub float %.0.i397.i.i.i, %.054.i395.i.i.i
  %i.agw = fmul float %i.agv, %i.agu
  %i.agx = fsub float %.055.i394.i.i.i, %i.xq
  %i.agy = fsub float %.053.i396.i.i.i, %i.xq
  %i.agz = fadd float %i.agx, %i.agy
  %i.aha = fmul float %i.agz, 5.000000e-01
  %i.ahb = fsub float 1.000000e+00, %i.aha
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.ahd = load float, ptr %i.ahc, align 4, !tbaa !81
  %i.ahe = tail call float @llvm.fmuladd.f32(float %i.agw, float %i.ahb, float %i.ahd)
  store float %i.ahe, ptr %i.ahc, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.ez:                                            ; preds = %bb.dt
  %i.ahf = fcmp ogt float %i.tp, %i.xq
  %or.cond341.i.i.i = and i1 %i.yb, %i.ahf
  br i1 %or.cond341.i.i.i, label %bb.fa, label %bb.fv

bb.fa:                                            ; preds = %bb.ez
  %i.ahg = fcmp oeq float %i.xy, %i.lq
  br i1 %i.ahg, label %stbtt__handle_clipped_edge.exit407.i.i.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ahh = load float, ptr %15, align 4, !tbaa !353 ; 4 uses
  %i.ahi = fcmp olt float %i.ahh, %i.lq
  br i1 %i.ahi, label %stbtt__handle_clipped_edge.exit407.i.i.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ahj = load float, ptr %i.ts, align 8, !tbaa !365 ; 4 uses
  %i.ahk = fcmp olt float %i.xy, %i.ahj
  br i1 %i.ahk, label %stbtt__handle_clipped_edge.exit407.i.i.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ahl = fcmp ogt float %i.ahj, %i.lq
  br i1 %i.ahl, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.ahm = fsub float %i.ahj, %i.lq
  %i.ahn = extractelement <2 x float> %i.xv, i64 0
  %i.aho = fmul float %i.ahn, %i.ahm
  %i.ahp = fsub float %i.xy, %i.lq
  %i.ahq = fdiv float %i.aho, %i.ahp
  %i.ahr = fadd float %i.om, %i.ahq
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %.055.i401.i.i.i = phi float [ %i.ahr, %bb.fe ], [ %i.om, %bb.fd ] ; 4 uses
  %.054.i402.i.i.i = phi float [ %i.ahj, %bb.fe ], [ %i.lq, %bb.fd ] ; 3 uses
  %i.ahs = fcmp ogt float %i.xy, %i.ahh
  br i1 %i.ahs, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.aht = fsub float %i.xq, %.055.i401.i.i.i
  %i.ahu = fsub float %i.ahh, %i.xy
  %i.ahv = fmul float %i.ahu, %i.aht
  %i.ahw = fsub float %i.xy, %.054.i402.i.i.i
  %i.ahx = fdiv float %i.ahv, %i.ahw
  %i.ahy = fadd float %i.ahx, %i.xq
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %.053.i403.i.i.i = phi float [ %i.ahy, %bb.fg ], [ %i.xq, %bb.ff ] ; 3 uses
  %.0.i404.i.i.i = phi float [ %i.ahh, %bb.fg ], [ %i.xy, %bb.ff ] ; 2 uses
  %i.ahz = fcmp ugt float %.055.i401.i.i.i, %i.xq
  %i.aia = fcmp ugt float %.053.i403.i.i.i, %i.xq
  %or.cond.i405.i.i.i = select i1 %i.ahz, i1 true, i1 %i.aia
  br i1 %or.cond.i405.i.i.i, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.aib = load float, ptr %i.xo, align 4, !tbaa !355
  %i.aic = fsub float %.0.i404.i.i.i, %.054.i402.i.i.i
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.aie = load float, ptr %i.aid, align 4, !tbaa !81
  %i.aif = tail call float @llvm.fmuladd.f32(float %i.aib, float %i.aic, float %i.aie)
  store float %i.aif, ptr %i.aid, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit407.i.i.i

bb.fj:                                            ; preds = %bb.fh
  %i.aig = fcmp ult float %.055.i401.i.i.i, %i.xs
  %i.aih = fcmp ult float %.053.i403.i.i.i, %i.xs
  %or.cond62.i406.i.i.i = select i1 %i.aig, i1 true, i1 %i.aih
  br i1 %or.cond62.i406.i.i.i, label %bb.fk, label %stbtt__handle_clipped_edge.exit407.i.i.i

bb.fk:                                            ; preds = %bb.fj
  %i.aii = load float, ptr %i.xo, align 4, !tbaa !355
  %i.aij = fsub float %.0.i404.i.i.i, %.054.i402.i.i.i
  %i.aik = fmul float %i.aij, %i.aii
  %i.ail = fsub float %.055.i401.i.i.i, %i.xq
  %i.aim = fsub float %.053.i403.i.i.i, %i.xq
  %i.ain = fadd float %i.ail, %i.aim
  %i.aio = fmul float %i.ain, 5.000000e-01
  %i.aip = fsub float 1.000000e+00, %i.aio
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.air = load float, ptr %i.aiq, align 4, !tbaa !81
  %i.ais = tail call float @llvm.fmuladd.f32(float %i.aik, float %i.aip, float %i.air)
  store float %i.ais, ptr %i.aiq, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit407.i.i.i

stbtt__handle_clipped_edge.exit407.i.i.i:         ; preds = %bb.fk, %bb.fj, %bb.fi, %bb.fc, %bb.fb, %bb.fa
  %i.ait = fcmp oeq float %i.xy, %i.lr
  br i1 %i.ait, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.fl

bb.fl:                                            ; preds = %stbtt__handle_clipped_edge.exit407.i.i.i
  %i.aiu = load float, ptr %15, align 4, !tbaa !353 ; 4 uses
  %i.aiv = fcmp ogt float %i.xy, %i.aiu
  br i1 %i.aiv, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.aiw = load float, ptr %i.ts, align 8, !tbaa !365 ; 4 uses
  %i.aix = fcmp olt float %i.lr, %i.aiw
  br i1 %i.aix, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.aiy = fcmp olt float %i.xy, %i.aiw
  br i1 %i.aiy, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.aiz = fsub float %i.tp, %i.xq
  %i.aja = fsub float %i.aiw, %i.xy
  %i.ajb = fmul float %i.aiz, %i.aja
  %i.ajc = fsub float %i.lr, %i.xy
  %i.ajd = fdiv float %i.ajb, %i.ajc
  %i.aje = fadd float %i.ajd, %i.xq
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %.055.i408.i.i.i = phi float [ %i.aje, %bb.fo ], [ %i.xq, %bb.fn ] ; 4 uses
  %.054.i409.i.i.i = phi float [ %i.aiw, %bb.fo ], [ %i.xy, %bb.fn ] ; 3 uses
  %i.ajf = fcmp ogt float %i.lr, %i.aiu
  br i1 %i.ajf, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.ajg = fsub float %i.tp, %.055.i408.i.i.i
  %i.ajh = fsub float %i.aiu, %i.lr
  %i.aji = fmul float %i.ajh, %i.ajg
  %i.ajj = fsub float %i.lr, %.054.i409.i.i.i
  %i.ajk = fdiv float %i.aji, %i.ajj
  %i.ajl = fadd float %i.tp, %i.ajk
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %.053.i410.i.i.i = phi float [ %i.ajl, %bb.fq ], [ %i.tp, %bb.fp ] ; 3 uses
  %.0.i411.i.i.i = phi float [ %i.aiu, %bb.fq ], [ %i.lr, %bb.fp ] ; 2 uses
  %i.ajm = fcmp ugt float %.055.i408.i.i.i, %i.xq
  %i.ajn = fcmp ugt float %.053.i410.i.i.i, %i.xq
  %or.cond.i412.i.i.i = select i1 %i.ajm, i1 true, i1 %i.ajn
  br i1 %or.cond.i412.i.i.i, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.ajo = load float, ptr %i.xo, align 4, !tbaa !355
  %i.ajp = fsub float %.0.i411.i.i.i, %.054.i409.i.i.i
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.ajr = load float, ptr %i.ajq, align 4, !tbaa !81
  %i.ajs = tail call float @llvm.fmuladd.f32(float %i.ajo, float %i.ajp, float %i.ajr)
  store float %i.ajs, ptr %i.ajq, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.ft:                                            ; preds = %bb.fr
  %i.ajt = fcmp ult float %.055.i408.i.i.i, %i.xs
  %i.aju = fcmp ult float %.053.i410.i.i.i, %i.xs
  %or.cond62.i413.i.i.i = select i1 %i.ajt, i1 true, i1 %i.aju
  br i1 %or.cond62.i413.i.i.i, label %bb.fu, label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.fu:                                            ; preds = %bb.ft
  %i.ajv = load float, ptr %i.xo, align 4, !tbaa !355
  %i.ajw = fsub float %.0.i411.i.i.i, %.054.i409.i.i.i
  %i.ajx = fmul float %i.ajw, %i.ajv
  %i.ajy = fsub float %.055.i408.i.i.i, %i.xq
  %i.ajz = fsub float %.053.i410.i.i.i, %i.xq
  %i.aka = fadd float %i.ajy, %i.ajz
  %i.akb = fmul float %i.aka, 5.000000e-01
  %i.akc = fsub float 1.000000e+00, %i.akb
  %i.akd = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.ake = load float, ptr %i.akd, align 4, !tbaa !81
  %i.akf = tail call float @llvm.fmuladd.f32(float %i.ajx, float %i.akc, float %i.ake)
  store float %i.akf, ptr %i.akd, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.fv:                                            ; preds = %bb.ez
  %i.akg = fcmp ogt float %i.om, %i.xq
  %or.cond342.i.i.i = and i1 %i.acq, %i.akg
  br i1 %or.cond342.i.i.i, label %bb.fw, label %bb.gr

bb.fw:                                            ; preds = %bb.fv
  %i.akh = fcmp oeq float %i.xy, %i.lq
  br i1 %i.akh, label %stbtt__handle_clipped_edge.exit421.i.i.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.aki = load float, ptr %15, align 4, !tbaa !353 ; 4 uses
  %i.akj = fcmp olt float %i.aki, %i.lq
  br i1 %i.akj, label %stbtt__handle_clipped_edge.exit421.i.i.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.akk = load float, ptr %i.ts, align 8, !tbaa !365 ; 4 uses
  %i.akl = fcmp olt float %i.xy, %i.akk
  br i1 %i.akl, label %stbtt__handle_clipped_edge.exit421.i.i.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.akm = fcmp ogt float %i.akk, %i.lq
  br i1 %i.akm, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.akn = fsub float %i.akk, %i.lq
  %i.ako = extractelement <2 x float> %i.xv, i64 0
  %i.akp = fmul float %i.ako, %i.akn
  %i.akq = fsub float %i.xy, %i.lq
  %i.akr = fdiv float %i.akp, %i.akq
  %i.aks = fadd float %i.om, %i.akr
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %.055.i415.i.i.i = phi float [ %i.aks, %bb.ga ], [ %i.om, %bb.fz ] ; 4 uses
  %.054.i416.i.i.i = phi float [ %i.akk, %bb.ga ], [ %i.lq, %bb.fz ] ; 3 uses
  %i.akt = fcmp ogt float %i.xy, %i.aki
  br i1 %i.akt, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.aku = fsub float %i.xq, %.055.i415.i.i.i
  %i.akv = fsub float %i.aki, %i.xy
  %i.akw = fmul float %i.akv, %i.aku
  %i.akx = fsub float %i.xy, %.054.i416.i.i.i
  %i.aky = fdiv float %i.akw, %i.akx
  %i.akz = fadd float %i.aky, %i.xq
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %.053.i417.i.i.i = phi float [ %i.akz, %bb.gc ], [ %i.xq, %bb.gb ] ; 3 uses
  %.0.i418.i.i.i = phi float [ %i.aki, %bb.gc ], [ %i.xy, %bb.gb ] ; 2 uses
  %i.ala = fcmp ugt float %.055.i415.i.i.i, %i.xq
  %i.alb = fcmp ugt float %.053.i417.i.i.i, %i.xq
  %or.cond.i419.i.i.i = select i1 %i.ala, i1 true, i1 %i.alb
  br i1 %or.cond.i419.i.i.i, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.alc = load float, ptr %i.xo, align 4, !tbaa !355
  %i.ald = fsub float %.0.i418.i.i.i, %.054.i416.i.i.i
  %i.ale = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.alf = load float, ptr %i.ale, align 4, !tbaa !81
  %i.alg = tail call float @llvm.fmuladd.f32(float %i.alc, float %i.ald, float %i.alf)
  store float %i.alg, ptr %i.ale, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit421.i.i.i

bb.gf:                                            ; preds = %bb.gd
  %i.alh = fcmp ult float %.055.i415.i.i.i, %i.xs
  %i.ali = fcmp ult float %.053.i417.i.i.i, %i.xs
  %or.cond62.i420.i.i.i = select i1 %i.alh, i1 true, i1 %i.ali
  br i1 %or.cond62.i420.i.i.i, label %bb.gg, label %stbtt__handle_clipped_edge.exit421.i.i.i

bb.gg:                                            ; preds = %bb.gf
  %i.alj = load float, ptr %i.xo, align 4, !tbaa !355
  %i.alk = fsub float %.0.i418.i.i.i, %.054.i416.i.i.i
  %i.all = fmul float %i.alk, %i.alj
  %i.alm = fsub float %.055.i415.i.i.i, %i.xq
  %i.aln = fsub float %.053.i417.i.i.i, %i.xq
  %i.alo = fadd float %i.alm, %i.aln
  %i.alp = fmul float %i.alo, 5.000000e-01
  %i.alq = fsub float 1.000000e+00, %i.alp
  %i.alr = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.als = load float, ptr %i.alr, align 4, !tbaa !81
  %i.alt = tail call float @llvm.fmuladd.f32(float %i.all, float %i.alq, float %i.als)
  store float %i.alt, ptr %i.alr, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit421.i.i.i

stbtt__handle_clipped_edge.exit421.i.i.i:         ; preds = %bb.gg, %bb.gf, %bb.ge, %bb.fy, %bb.fx, %bb.fw
  %i.alu = fcmp oeq float %i.xy, %i.lr
  br i1 %i.alu, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.gh

bb.gh:                                            ; preds = %stbtt__handle_clipped_edge.exit421.i.i.i
  %i.alv = load float, ptr %15, align 4, !tbaa !353 ; 4 uses
  %i.alw = fcmp ogt float %i.xy, %i.alv
  br i1 %i.alw, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.alx = load float, ptr %i.ts, align 8, !tbaa !365 ; 4 uses
  %i.aly = fcmp olt float %i.lr, %i.alx
  br i1 %i.aly, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.alz = fcmp olt float %i.xy, %i.alx
  br i1 %i.alz, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.ama = fsub float %i.tp, %i.xq
  %i.amb = fsub float %i.alx, %i.xy
  %i.amc = fmul float %i.ama, %i.amb
  %i.amd = fsub float %i.lr, %i.xy
  %i.ame = fdiv float %i.amc, %i.amd
  %i.amf = fadd float %i.ame, %i.xq
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %.055.i422.i.i.i = phi float [ %i.amf, %bb.gk ], [ %i.xq, %bb.gj ] ; 4 uses
  %.054.i423.i.i.i = phi float [ %i.alx, %bb.gk ], [ %i.xy, %bb.gj ] ; 3 uses
  %i.amg = fcmp ogt float %i.lr, %i.alv
  br i1 %i.amg, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.amh = fsub float %i.tp, %.055.i422.i.i.i
  %i.ami = fsub float %i.alv, %i.lr
  %i.amj = fmul float %i.ami, %i.amh
  %i.amk = fsub float %i.lr, %.054.i423.i.i.i
  %i.aml = fdiv float %i.amj, %i.amk
  %i.amm = fadd float %i.tp, %i.aml
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %.053.i424.i.i.i = phi float [ %i.amm, %bb.gm ], [ %i.tp, %bb.gl ] ; 3 uses
  %.0.i425.i.i.i = phi float [ %i.alv, %bb.gm ], [ %i.lr, %bb.gl ] ; 2 uses
  %i.amn = fcmp ugt float %.055.i422.i.i.i, %i.xq
  %i.amo = fcmp ugt float %.053.i424.i.i.i, %i.xq
  %or.cond.i426.i.i.i = select i1 %i.amn, i1 true, i1 %i.amo
  br i1 %or.cond.i426.i.i.i, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.amp = load float, ptr %i.xo, align 4, !tbaa !355
  %i.amq = fsub float %.0.i425.i.i.i, %.054.i423.i.i.i
  %i.amr = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.ams = load float, ptr %i.amr, align 4, !tbaa !81
  %i.amt = tail call float @llvm.fmuladd.f32(float %i.amp, float %i.amq, float %i.ams)
  store float %i.amt, ptr %i.amr, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.gp:                                            ; preds = %bb.gn
  %i.amu = fcmp ult float %.055.i422.i.i.i, %i.xs
  %i.amv = fcmp ult float %.053.i424.i.i.i, %i.xs
  %or.cond62.i427.i.i.i = select i1 %i.amu, i1 true, i1 %i.amv
  br i1 %or.cond62.i427.i.i.i, label %bb.gq, label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.gq:                                            ; preds = %bb.gp
  %i.amw = load float, ptr %i.xo, align 4, !tbaa !355
  %i.amx = fsub float %.0.i425.i.i.i, %.054.i423.i.i.i
  %i.amy = fmul float %i.amx, %i.amw
  %i.amz = fsub float %.055.i422.i.i.i, %i.xq
  %i.ana = fsub float %.053.i424.i.i.i, %i.xq
  %i.anb = fadd float %i.amz, %i.ana
  %i.anc = fmul float %i.anb, 5.000000e-01
  %i.and = fsub float 1.000000e+00, %i.anc
  %i.ane = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.anf = load float, ptr %i.ane, align 4, !tbaa !81
  %i.ang = tail call float @llvm.fmuladd.f32(float %i.amy, float %i.and, float %i.anf)
  store float %i.ang, ptr %i.ane, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.gr:                                            ; preds = %bb.fv
  %i.anh = fcmp olt float %i.om, %i.xs
  %or.cond343.i.i.i = and i1 %i.anh, %i.yc
  br i1 %or.cond343.i.i.i, label %bb.gs, label %bb.hn

bb.gs:                                            ; preds = %bb.gr
  %i.ani = fcmp oeq float %i.ya, %i.lq
  br i1 %i.ani, label %stbtt__handle_clipped_edge.exit435.i.i.i, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.anj = load float, ptr %15, align 4, !tbaa !353 ; 4 uses
  %i.ank = fcmp olt float %i.anj, %i.lq
  br i1 %i.ank, label %stbtt__handle_clipped_edge.exit435.i.i.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.anl = load float, ptr %i.ts, align 8, !tbaa !365 ; 4 uses
  %i.anm = fcmp olt float %i.ya, %i.anl
  br i1 %i.anm, label %stbtt__handle_clipped_edge.exit435.i.i.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.ann = fcmp ogt float %i.anl, %i.lq
  br i1 %i.ann, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.ano = fsub float %i.anl, %i.lq
  %i.anp = extractelement <2 x float> %i.xv, i64 1
  %i.anq = fmul float %i.anp, %i.ano
  %i.anr = fsub float %i.ya, %i.lq
  %i.ans = fdiv float %i.anq, %i.anr
  %i.ant = fadd float %i.om, %i.ans
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %.055.i429.i.i.i = phi float [ %i.ant, %bb.gw ], [ %i.om, %bb.gv ] ; 4 uses
  %.054.i430.i.i.i = phi float [ %i.anl, %bb.gw ], [ %i.lq, %bb.gv ] ; 3 uses
  %i.anu = fcmp ogt float %i.ya, %i.anj
  br i1 %i.anu, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.anv = fsub float %i.xs, %.055.i429.i.i.i
  %i.anw = fsub float %i.anj, %i.ya
  %i.anx = fmul float %i.anw, %i.anv
  %i.any = fsub float %i.ya, %.054.i430.i.i.i
  %i.anz = fdiv float %i.anx, %i.any
  %i.aoa = fadd float %i.anz, %i.xs
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  %.053.i431.i.i.i = phi float [ %i.aoa, %bb.gy ], [ %i.xs, %bb.gx ] ; 3 uses
  %.0.i432.i.i.i = phi float [ %i.anj, %bb.gy ], [ %i.ya, %bb.gx ] ; 2 uses
  %i.aob = fcmp ugt float %.055.i429.i.i.i, %i.xq
  %i.aoc = fcmp ugt float %.053.i431.i.i.i, %i.xq
  %or.cond.i433.i.i.i = select i1 %i.aob, i1 true, i1 %i.aoc
  br i1 %or.cond.i433.i.i.i, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.aod = load float, ptr %i.xo, align 4, !tbaa !355
  %i.aoe = fsub float %.0.i432.i.i.i, %.054.i430.i.i.i
  %i.aof = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.aog = load float, ptr %i.aof, align 4, !tbaa !81
  %i.aoh = tail call float @llvm.fmuladd.f32(float %i.aod, float %i.aoe, float %i.aog)
  store float %i.aoh, ptr %i.aof, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit435.i.i.i

bb.hb:                                            ; preds = %bb.gz
  %i.aoi = fcmp ult float %.055.i429.i.i.i, %i.xs
  %i.aoj = fcmp ult float %.053.i431.i.i.i, %i.xs
  %or.cond62.i434.i.i.i = select i1 %i.aoi, i1 true, i1 %i.aoj
  br i1 %or.cond62.i434.i.i.i, label %bb.hc, label %stbtt__handle_clipped_edge.exit435.i.i.i

bb.hc:                                            ; preds = %bb.hb
  %i.aok = load float, ptr %i.xo, align 4, !tbaa !355
  %i.aol = fsub float %.0.i432.i.i.i, %.054.i430.i.i.i
  %i.aom = fmul float %i.aol, %i.aok
  %i.aon = fsub float %.055.i429.i.i.i, %i.xq
  %i.aoo = fsub float %.053.i431.i.i.i, %i.xq
  %i.aop = fadd float %i.aon, %i.aoo
  %i.aoq = fmul float %i.aop, 5.000000e-01
  %i.aor = fsub float 1.000000e+00, %i.aoq
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.aot = load float, ptr %i.aos, align 4, !tbaa !81
  %i.aou = tail call float @llvm.fmuladd.f32(float %i.aom, float %i.aor, float %i.aot)
  store float %i.aou, ptr %i.aos, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit435.i.i.i

stbtt__handle_clipped_edge.exit435.i.i.i:         ; preds = %bb.hc, %bb.hb, %bb.ha, %bb.gu, %bb.gt, %bb.gs
  %i.aov = fcmp oeq float %i.ya, %i.lr
  br i1 %i.aov, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.hd

bb.hd:                                            ; preds = %stbtt__handle_clipped_edge.exit435.i.i.i
  %i.aow = load float, ptr %15, align 4, !tbaa !353 ; 4 uses
  %i.aox = fcmp ogt float %i.ya, %i.aow
  br i1 %i.aox, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.aoy = load float, ptr %i.ts, align 8, !tbaa !365 ; 4 uses
  %i.aoz = fcmp olt float %i.lr, %i.aoy
  br i1 %i.aoz, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.apa = fcmp olt float %i.ya, %i.aoy
  br i1 %i.apa, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.apb = fsub float %i.tp, %i.xs
  %i.apc = fsub float %i.aoy, %i.ya
  %i.apd = fmul float %i.apb, %i.apc
  %i.ape = fsub float %i.lr, %i.ya
  %i.apf = fdiv float %i.apd, %i.ape
  %i.apg = fadd float %i.apf, %i.xs
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %.055.i436.i.i.i = phi float [ %i.apg, %bb.hg ], [ %i.xs, %bb.hf ] ; 4 uses
  %.054.i437.i.i.i = phi float [ %i.aoy, %bb.hg ], [ %i.ya, %bb.hf ] ; 3 uses
  %i.aph = fcmp ogt float %i.lr, %i.aow
  br i1 %i.aph, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  %i.api = fsub float %i.tp, %.055.i436.i.i.i
  %i.apj = fsub float %i.aow, %i.lr
  %i.apk = fmul float %i.apj, %i.api
  %i.apl = fsub float %i.lr, %.054.i437.i.i.i
  %i.apm = fdiv float %i.apk, %i.apl
  %i.apn = fadd float %i.tp, %i.apm
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %.053.i438.i.i.i = phi float [ %i.apn, %bb.hi ], [ %i.tp, %bb.hh ] ; 3 uses
  %.0.i439.i.i.i = phi float [ %i.aow, %bb.hi ], [ %i.lr, %bb.hh ] ; 2 uses
  %i.apo = fcmp ugt float %.055.i436.i.i.i, %i.xq
  %i.app = fcmp ugt float %.053.i438.i.i.i, %i.xq
  %or.cond.i440.i.i.i = select i1 %i.apo, i1 true, i1 %i.app
  br i1 %or.cond.i440.i.i.i, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.apq = load float, ptr %i.xo, align 4, !tbaa !355
  %i.apr = fsub float %.0.i439.i.i.i, %.054.i437.i.i.i
  %i.aps = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.apt = load float, ptr %i.aps, align 4, !tbaa !81
  %i.apu = tail call float @llvm.fmuladd.f32(float %i.apq, float %i.apr, float %i.apt)
  store float %i.apu, ptr %i.aps, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.hl:                                            ; preds = %bb.hj
  %i.apv = fcmp ult float %.055.i436.i.i.i, %i.xs
  %i.apw = fcmp ult float %.053.i438.i.i.i, %i.xs
  %or.cond62.i441.i.i.i = select i1 %i.apv, i1 true, i1 %i.apw
  br i1 %or.cond62.i441.i.i.i, label %bb.hm, label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.hm:                                            ; preds = %bb.hl
  %i.apx = load float, ptr %i.xo, align 4, !tbaa !355
  %i.apy = fsub float %.0.i439.i.i.i, %.054.i437.i.i.i
  %i.apz = fmul float %i.apy, %i.apx
  %i.aqa = fsub float %.055.i436.i.i.i, %i.xq
  %i.aqb = fsub float %.053.i438.i.i.i, %i.xq
  %i.aqc = fadd float %i.aqa, %i.aqb
  %i.aqd = fmul float %i.aqc, 5.000000e-01
  %i.aqe = fsub float 1.000000e+00, %i.aqd
  %i.aqf = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.aqg = load float, ptr %i.aqf, align 4, !tbaa !81
  %i.aqh = tail call float @llvm.fmuladd.f32(float %i.apz, float %i.aqe, float %i.aqg)
  store float %i.aqh, ptr %i.aqf, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.hn:                                            ; preds = %bb.gr
  %i.aqi = fcmp olt float %i.tp, %i.xs
  %or.cond344.i.i.i = and i1 %i.aqi, %i.acr
  br i1 %or.cond344.i.i.i, label %bb.ho, label %bb.ij

bb.ho:                                            ; preds = %bb.hn
  %i.aqj = fcmp oeq float %i.ya, %i.lq
  br i1 %i.aqj, label %stbtt__handle_clipped_edge.exit449.i.i.i, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.aqk = load float, ptr %15, align 4, !tbaa !353 ; 4 uses
  %i.aql = fcmp olt float %i.aqk, %i.lq
  br i1 %i.aql, label %stbtt__handle_clipped_edge.exit449.i.i.i, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.aqm = load float, ptr %i.ts, align 8, !tbaa !365 ; 4 uses
  %i.aqn = fcmp olt float %i.ya, %i.aqm
  br i1 %i.aqn, label %stbtt__handle_clipped_edge.exit449.i.i.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.aqo = fcmp ogt float %i.aqm, %i.lq
  br i1 %i.aqo, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.aqp = fsub float %i.aqm, %i.lq
  %i.aqq = extractelement <2 x float> %i.xv, i64 1
  %i.aqr = fmul float %i.aqq, %i.aqp
  %i.aqs = fsub float %i.ya, %i.lq
  %i.aqt = fdiv float %i.aqr, %i.aqs
  %i.aqu = fadd float %i.om, %i.aqt
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %.055.i443.i.i.i = phi float [ %i.aqu, %bb.hs ], [ %i.om, %bb.hr ] ; 4 uses
  %.054.i444.i.i.i = phi float [ %i.aqm, %bb.hs ], [ %i.lq, %bb.hr ] ; 3 uses
  %i.aqv = fcmp ogt float %i.ya, %i.aqk
  br i1 %i.aqv, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.aqw = fsub float %i.xs, %.055.i443.i.i.i
  %i.aqx = fsub float %i.aqk, %i.ya
  %i.aqy = fmul float %i.aqx, %i.aqw
  %i.aqz = fsub float %i.ya, %.054.i444.i.i.i
  %i.ara = fdiv float %i.aqy, %i.aqz
  %i.arb = fadd float %i.ara, %i.xs
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %.053.i445.i.i.i = phi float [ %i.arb, %bb.hu ], [ %i.xs, %bb.ht ] ; 3 uses
  %.0.i446.i.i.i = phi float [ %i.aqk, %bb.hu ], [ %i.ya, %bb.ht ] ; 2 uses
  %i.arc = fcmp ugt float %.055.i443.i.i.i, %i.xq
  %i.ard = fcmp ugt float %.053.i445.i.i.i, %i.xq
  %or.cond.i447.i.i.i = select i1 %i.arc, i1 true, i1 %i.ard
  br i1 %or.cond.i447.i.i.i, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.are = load float, ptr %i.xo, align 4, !tbaa !355
  %i.arf = fsub float %.0.i446.i.i.i, %.054.i444.i.i.i
  %i.arg = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.arh = load float, ptr %i.arg, align 4, !tbaa !81
  %i.ari = tail call float @llvm.fmuladd.f32(float %i.are, float %i.arf, float %i.arh)
  store float %i.ari, ptr %i.arg, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit449.i.i.i

bb.hx:                                            ; preds = %bb.hv
  %i.arj = fcmp ult float %.055.i443.i.i.i, %i.xs
  %i.ark = fcmp ult float %.053.i445.i.i.i, %i.xs
  %or.cond62.i448.i.i.i = select i1 %i.arj, i1 true, i1 %i.ark
  br i1 %or.cond62.i448.i.i.i, label %bb.hy, label %stbtt__handle_clipped_edge.exit449.i.i.i

bb.hy:                                            ; preds = %bb.hx
  %i.arl = load float, ptr %i.xo, align 4, !tbaa !355
  %i.arm = fsub float %.0.i446.i.i.i, %.054.i444.i.i.i
  %i.arn = fmul float %i.arm, %i.arl
  %i.aro = fsub float %.055.i443.i.i.i, %i.xq
  %i.arp = fsub float %.053.i445.i.i.i, %i.xq
  %i.arq = fadd float %i.aro, %i.arp
  %i.arr = fmul float %i.arq, 5.000000e-01
  %i.ars = fsub float 1.000000e+00, %i.arr
  %i.art = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.aru = load float, ptr %i.art, align 4, !tbaa !81
  %i.arv = tail call float @llvm.fmuladd.f32(float %i.arn, float %i.ars, float %i.aru)
  store float %i.arv, ptr %i.art, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit449.i.i.i

stbtt__handle_clipped_edge.exit449.i.i.i:         ; preds = %bb.hy, %bb.hx, %bb.hw, %bb.hq, %bb.hp, %bb.ho
  %i.arw = fcmp oeq float %i.ya, %i.lr
  br i1 %i.arw, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.hz

bb.hz:                                            ; preds = %stbtt__handle_clipped_edge.exit449.i.i.i
  %i.arx = load float, ptr %15, align 4, !tbaa !353 ; 4 uses
  %i.ary = fcmp ogt float %i.ya, %i.arx
  br i1 %i.ary, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.arz = load float, ptr %i.ts, align 8, !tbaa !365 ; 4 uses
  %i.asa = fcmp olt float %i.lr, %i.arz
  br i1 %i.asa, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.asb = fcmp olt float %i.ya, %i.arz
  br i1 %i.asb, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.asc = fsub float %i.tp, %i.xs
  %i.asd = fsub float %i.arz, %i.ya
  %i.ase = fmul float %i.asc, %i.asd
  %i.asf = fsub float %i.lr, %i.ya
  %i.asg = fdiv float %i.ase, %i.asf
  %i.ash = fadd float %i.asg, %i.xs
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib
  %.055.i450.i.i.i = phi float [ %i.ash, %bb.ic ], [ %i.xs, %bb.ib ] ; 4 uses
  %.054.i451.i.i.i = phi float [ %i.arz, %bb.ic ], [ %i.ya, %bb.ib ] ; 3 uses
  %i.asi = fcmp ogt float %i.lr, %i.arx
  br i1 %i.asi, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  %i.asj = fsub float %i.tp, %.055.i450.i.i.i
  %i.ask = fsub float %i.arx, %i.lr
  %i.asl = fmul float %i.ask, %i.asj
  %i.asm = fsub float %i.lr, %.054.i451.i.i.i
  %i.asn = fdiv float %i.asl, %i.asm
  %i.aso = fadd float %i.tp, %i.asn
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  %.053.i452.i.i.i = phi float [ %i.aso, %bb.ie ], [ %i.tp, %bb.id ] ; 3 uses
  %.0.i453.i.i.i = phi float [ %i.arx, %bb.ie ], [ %i.lr, %bb.id ] ; 2 uses
  %i.asp = fcmp ugt float %.055.i450.i.i.i, %i.xq
  %i.asq = fcmp ugt float %.053.i452.i.i.i, %i.xq
  %or.cond.i454.i.i.i = select i1 %i.asp, i1 true, i1 %i.asq
  br i1 %or.cond.i454.i.i.i, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.asr = load float, ptr %i.xo, align 4, !tbaa !355
  %i.ass = fsub float %.0.i453.i.i.i, %.054.i451.i.i.i
  %i.ast = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.asu = load float, ptr %i.ast, align 4, !tbaa !81
  %i.asv = tail call float @llvm.fmuladd.f32(float %i.asr, float %i.ass, float %i.asu)
  store float %i.asv, ptr %i.ast, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.ih:                                            ; preds = %bb.if
  %i.asw = fcmp ult float %.055.i450.i.i.i, %i.xs
  %i.asx = fcmp ult float %.053.i452.i.i.i, %i.xs
  %or.cond62.i455.i.i.i = select i1 %i.asw, i1 true, i1 %i.asx
  br i1 %or.cond62.i455.i.i.i, label %bb.ii, label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.ii:                                            ; preds = %bb.ih
  %i.asy = load float, ptr %i.xo, align 4, !tbaa !355
  %i.asz = fsub float %.0.i453.i.i.i, %.054.i451.i.i.i
  %i.ata = fmul float %i.asz, %i.asy
  %i.atb = fsub float %.055.i450.i.i.i, %i.xq
  %i.atc = fsub float %.053.i452.i.i.i, %i.xq
  %i.atd = fadd float %i.atb, %i.atc
  %i.ate = fmul float %i.atd, 5.000000e-01
  %i.atf = fsub float 1.000000e+00, %i.ate
  %i.atg = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.ath = load float, ptr %i.atg, align 4, !tbaa !81
  %i.ati = tail call float @llvm.fmuladd.f32(float %i.ata, float %i.atf, float %i.ath)
  store float %i.ati, ptr %i.atg, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.ij:                                            ; preds = %bb.hn
  br i1 %i.og, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.atj = load float, ptr %15, align 4, !tbaa !353 ; 4 uses
  %i.atk = fcmp olt float %i.atj, %i.lq
  br i1 %i.atk, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.atl = load float, ptr %i.ts, align 8, !tbaa !365 ; 4 uses
  %i.atm = fcmp olt float %i.lr, %i.atl
  br i1 %i.atm, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.atn = fcmp ogt float %i.atl, %i.lq           ; 2 uses
  %i.ato = fsub float %i.atl, %i.lq
  %i.atp = fmul float %i.xn, %i.ato
  %i.atq = fdiv float %i.atp, %i.oh
  %i.atr = fadd float %i.om, %i.atq
  %.055.i457.i.i.i = select i1 %i.atn, float %i.atr, float %i.om ; 4 uses
  %.054.i458.i.i.i = select i1 %i.atn, float %i.atl, float %i.lq ; 3 uses
  %i.ats = fcmp ogt float %i.lr, %i.atj
  br i1 %i.ats, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  %i.att = fsub float %i.tp, %.055.i457.i.i.i
  %i.atu = fsub float %i.atj, %i.lr
  %i.atv = fmul float %i.atu, %i.att
  %i.atw = fsub float %i.lr, %.054.i458.i.i.i
  %i.atx = fdiv float %i.atv, %i.atw
  %i.aty = fadd float %i.tp, %i.atx
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  %.053.i459.i.i.i = phi float [ %i.aty, %bb.in ], [ %i.tp, %bb.im ] ; 3 uses
  %.0.i460.i.i.i = phi float [ %i.atj, %bb.in ], [ %i.lr, %bb.im ] ; 2 uses
  %i.atz = fcmp ugt float %.055.i457.i.i.i, %i.xq
  %i.aua = fcmp ugt float %.053.i459.i.i.i, %i.xq
  %or.cond.i461.i.i.i = select i1 %i.atz, i1 true, i1 %i.aua
  br i1 %or.cond.i461.i.i.i, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.aub = load float, ptr %i.xo, align 4, !tbaa !355
  %i.auc = fsub float %.0.i460.i.i.i, %.054.i458.i.i.i
  %i.aud = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.aue = load float, ptr %i.aud, align 4, !tbaa !81
  %i.auf = tail call float @llvm.fmuladd.f32(float %i.aub, float %i.auc, float %i.aue)
  store float %i.auf, ptr %i.aud, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.iq:                                            ; preds = %bb.io
  %i.aug = fcmp ult float %.055.i457.i.i.i, %i.xs
  %i.auh = fcmp ult float %.053.i459.i.i.i, %i.xs
  %or.cond62.i462.i.i.i = select i1 %i.aug, i1 true, i1 %i.auh
  br i1 %or.cond62.i462.i.i.i, label %bb.ir, label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.ir:                                            ; preds = %bb.iq
  %i.aui = load float, ptr %i.xo, align 4, !tbaa !355
  %i.auj = fsub float %.0.i460.i.i.i, %.054.i458.i.i.i
  %i.auk = fmul float %i.auj, %i.aui
  %i.aul = fsub float %.055.i457.i.i.i, %i.xq
  %i.aum = fsub float %.053.i459.i.i.i, %i.xq
  %i.aun = fadd float %i.aul, %i.aum
  %i.auo = fmul float %i.aun, 5.000000e-01
  %i.aup = fsub float 1.000000e+00, %i.auo
  %i.auq = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.aur = load float, ptr %i.auq, align 4, !tbaa !81
  %i.aus = tail call float @llvm.fmuladd.f32(float %i.auk, float %i.aup, float %i.aur)
  store float %i.aus, ptr %i.auq, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

stbtt__handle_clipped_edge.exit379.i.i.i:         ; preds = %bb.ir, %bb.iq, %bb.ip, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.ia, %bb.hz, %stbtt__handle_clipped_edge.exit449.i.i.i, %bb.hm, %bb.hl, %bb.hk, %bb.he, %bb.hd, %stbtt__handle_clipped_edge.exit435.i.i.i, %bb.gq, %bb.gp, %bb.go, %bb.gi, %bb.gh, %stbtt__handle_clipped_edge.exit421.i.i.i, %bb.fu, %bb.ft, %bb.fs, %bb.fm, %bb.fl, %stbtt__handle_clipped_edge.exit407.i.i.i, %bb.ey, %bb.ex, %bb.ew, %bb.eq, %bb.ep, %stbtt__handle_clipped_edge.exit393.i.i.i, %bb.ds, %bb.dr, %bb.dq, %bb.dk, %bb.dj, %stbtt__handle_clipped_edge.exit372.i.i.i
  %exitcond.not.i.i97.i = icmp eq i64 %indvars.iv.next.i.i96.i, %wide.trip.count.i.i93.i
  br i1 %exitcond.not.i.i97.i, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.cn, !llvm.loop !343

stbtt__handle_clipped_edge.exit351.i.i.i:         ; preds = %stbtt__handle_clipped_edge.exit379.i.i.i, %bb.cm, %._crit_edge.i.i.i, %bb.ci, %bb.ce, %bb.cd, %bb.cc, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bl, %bb.bk, %bb.az, %bb.ax
  %i.aut = load ptr, ptr %.0293468.i.i.i, align 8, !tbaa !354 ; 2 uses
  %.not.i96.i.i = icmp eq ptr %i.aut, null
  br i1 %.not.i96.i.i, label %stbtt__fill_active_edges_new.exit.i.i, label %bb.aw, !llvm.loop !344

stbtt__fill_active_edges_new.exit.i.i:            ; preds = %stbtt__handle_clipped_edge.exit351.i.i.i, %._crit_edge.i.i
  %i.auu = icmp sgt i32 %.pre136.i.i, 0
  br i1 %i.auu, label %.lr.ph119.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph119.i.i, %stbtt__fill_active_edges_new.exit.i.i
  %i.auv = phi i32 [ %.pre136.i.i, %stbtt__fill_active_edges_new.exit.i.i ], [ %i.avn, %.lr.ph119.i.i ]
  br i1 %.not93.i.i, label %._crit_edge122.i.i, label %.lr.ph121.i.i

.lr.ph119.i.i:                                    ; preds = %stbtt__fill_active_edges_new.exit.i.i, %.lr.ph119.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph119.i.i ], [ 0, %stbtt__fill_active_edges_new.exit.i.i ] ; 4 uses
  %.079118.i.i = phi float [ %i.auy, %.lr.ph119.i.i ], [ 0.000000e+00, %stbtt__fill_active_edges_new.exit.i.i ]
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i.i
  %i.aux = load float, ptr %i.auw, align 4, !tbaa !81
  %i.auy = fadd float %.079118.i.i, %i.aux        ; 2 uses
  %i.auz = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i
  %i.ava = load float, ptr %i.auz, align 4, !tbaa !81
  %i.avb = fadd float %i.ava, %i.auy
  %i.avc = tail call float @llvm.fabs.f32(float %i.avb)
  %i.avd = tail call float @llvm.fmuladd.f32(float %i.avc, float 2.550000e+02, float 5.000000e-01)
  %i.ave = fptosi float %i.avd to i32
  %spec.store.select.i.i = tail call i32 @llvm.umin.i32(i32 %i.ave, i32 255)
  %i.avf = trunc nuw i32 %spec.store.select.i.i to i8
  %i.avg = load ptr, ptr %i.ln, align 8, !tbaa !90
  %i.avh = load i32, ptr %i.lo, align 8, !tbaa !91
  %i.avi = mul nsw i32 %i.avh, %.078126.i.i
  %i.avj = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.avk = add nsw i32 %i.avi, %i.avj
  %i.avl = sext i32 %i.avk to i64
  %i.avm = getelementptr inbounds i8, ptr %i.avg, i64 %i.avl
  store i8 %i.avf, ptr %i.avm, align 1, !tbaa !38
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.avn = load i32, ptr %0, align 8, !tbaa !88   ; 2 uses
  %i.avo = sext i32 %i.avn to i64
  %i.avp = icmp slt i64 %indvars.iv.next.i.i, %i.avo
  br i1 %i.avp, label %.lr.ph119.i.i, label %.preheader.i.i, !llvm.loop !345

.lr.ph121.i.i:                                    ; preds = %.preheader.i.i, %.lr.ph121.i.i
  %i.avq = phi ptr [ %i.avu, %.lr.ph121.i.i ], [ %.0..0..0..0..0..0..0..0.84.i.i, %.preheader.i.i ] ; 2 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avq, i64 8 ; 2 uses
  %i.avs = load <2 x float>, ptr %i.avr, align 8, !tbaa !81
  %i.avt = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.avs)
  store float %i.avt, ptr %i.avr, align 8, !tbaa !364
  %i.avu = load ptr, ptr %i.avq, align 8, !tbaa !351 ; 2 uses
  %.not94.i.i = icmp eq ptr %i.avu, null
  br i1 %.not94.i.i, label %._crit_edge122.i.i, label %.lr.ph121.i.i, !llvm.loop !346

._crit_edge122.i.i:                               ; preds = %.lr.ph121.i.i, %.preheader.i.i
  %i.avv = add nsw i32 %.077127.i.i, 1
  %i.avw = add nuw nsw i32 %.078126.i.i, 1        ; 2 uses
  %i.avx = load i32, ptr %i.kz, align 4, !tbaa !89
  %i.avy = icmp slt i32 %i.avw, %i.avx
  br i1 %i.avy, label %bb.ag, label %stbtt__rasterize_sorted_edges.exit.i, !llvm.loop !347

stbtt__rasterize_sorted_edges.exit.i:             ; preds = %._crit_edge122.i.i, %fons__tmpalloc.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %stbtt__rasterize.exit

stbtt__rasterize.exit:                            ; preds = %stbtt__rasterize_sorted_edges.exit.i, %fons__tmpalloc.exit.i23, %bb.v, %bb.u, %stbtt_FlattenCurves.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @stbtt_FreeBitmap(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @stbtt_GetGlyphBitmapSubpixel(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %10 = alloca %struct.stbtt__bitmap, align 8     ; 7 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #40
  %i.f = call i32 @stbtt_GetGlyphShape(ptr noundef %0, i32 noundef %5, ptr noundef nonnull %i.e)
  %i.g = insertelement <2 x float> poison, float %1, i64 0
  %i.h = insertelement <2 x float> %i.g, float %2, i64 1 ; 3 uses
  %i.i = fcmp une <2 x float> %i.h, zeroinitializer ; 2 uses
  %i.j = bitcast <2 x i1> %i.i to i2
  %brmerge.not = icmp eq i2 %i.j, 0
  %i.k = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.l = select <2 x i1> %i.i, <2 x float> %i.h, <2 x float> %i.k ; 4 uses
  br i1 %brmerge.not, label %fons__tmpalloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i32 0, ptr %i.a, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i32 0, ptr %i.b, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  %i.m = call i32 @stbtt_GetGlyphBox(ptr noundef readonly %0, i32 noundef %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %stbtt_GetGlyphBitmapBoxSubpixel.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.a, align 4, !tbaa !70
  %i.o = load i32, ptr %i.d, align 4, !tbaa !70
  %i.p = sub nsw i32 0, %i.o
  %i.q = load i32, ptr %i.c, align 4, !tbaa !70
  %i.r = load i32, ptr %i.b, align 4, !tbaa !70
  %i.s = sub nsw i32 0, %i.r
  %i.t = insertelement <2 x i32> poison, i32 %i.n, i64 0
  %i.u = insertelement <2 x i32> %i.t, i32 %i.p, i64 1
  %i.v = sitofp <2 x i32> %i.u to <2 x float>
  %i.w = insertelement <2 x float> poison, float %3, i64 0
  %i.x = insertelement <2 x float> %i.w, float %4, i64 1 ; 2 uses
  %i.y = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.l, <2 x float> %i.x)
  %i.z = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.y)
  %i.aa = insertelement <2 x i32> poison, i32 %i.q, i64 0
  %i.ab = insertelement <2 x i32> %i.aa, i32 %i.s, i64 1
  %i.ac = sitofp <2 x i32> %i.ab to <2 x float>
  %i.ad = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.l, <2 x float> %i.x)
  %i.ae = call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ad)
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> %i.z, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ag = fptosi <4 x float> %i.af to <4 x i32>
  br label %stbtt_GetGlyphBitmapBoxSubpixel.exit

stbtt_GetGlyphBitmapBoxSubpixel.exit:             ; preds = %bb.b, %bb.c
  %i.ah = phi <4 x i32> [ %i.ag, %bb.c ], [ zeroinitializer, %bb.b ] ; 8 uses
end_hunk_0
