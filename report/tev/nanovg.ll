Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/nanovg?download=true
inline.NumInlined: 893
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 56
begin_hunk_0_@stbtt_Rasterize:bb.a

.lr.ph115.split.i:                                ; preds = %.lr.ph115.split.i.preheader, %._crit_edge110.split.i
  %indvars.iv132.i = phi i64 [ %indvars.iv.next133.i, %._crit_edge110.split.i ], [ 0, %.lr.ph115.split.i.preheader ] ; 2 uses
  %.085114.i = phi i32 [ %i.iw, %._crit_edge110.split.i ], [ 0, %.lr.ph115.split.i.preheader ] ; 2 uses
  %.190112.i = phi i32 [ %.2.lcssa.i, %._crit_edge110.split.i ], [ 0, %.lr.ph115.split.i.preheader ] ; 2 uses
  %i.is = sext i32 %.085114.i to i64
  %i.it = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.is ; 4 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv132.i ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !70 ; 4 uses
  %i.iw = add nsw i32 %i.iv, %.085114.i
  %i.ix = icmp sgt i32 %i.iv, 0
  br i1 %i.ix, label %.lr.ph109.preheader.i, label %._crit_edge110.split.i

.lr.ph109.preheader.i:                            ; preds = %.lr.ph115.split.i
  %i.iy = add nsw i32 %i.iv, -1
  br label %.lr.ph109.i

.lr.ph109.i:                                      ; preds = %.lr.ph109._crit_edge.i, %.lr.ph109.preheader.i
  %i.iz = phi i32 [ %i.iv, %.lr.ph109.preheader.i ], [ %i.jv, %.lr.ph109._crit_edge.i ]
  %indvars.iv129.i = phi i64 [ 0, %.lr.ph109.preheader.i ], [ %indvars.iv.next130.i, %.lr.ph109._crit_edge.i ] ; 5 uses
  %.087106.i = phi i32 [ %i.iy, %.lr.ph109.preheader.i ], [ %.pre-phi148.i, %.lr.ph109._crit_edge.i ]
  %.2105.i = phi i32 [ %.190112.i, %.lr.ph109.preheader.i ], [ %.3.i, %.lr.ph109._crit_edge.i ] ; 3 uses
  %i.ja = sext i32 %.087106.i to i64              ; 3 uses
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !83 ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv129.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !83 ; 2 uses
  %i.jh = fcmp oeq float %i.jd, %i.jg
  br i1 %i.jh, label %.lr.ph109._crit_edge.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph109.i
  %i.ji = sext i32 %.2105.i to i64
  %i.jj = getelementptr inbounds [20 x i8], ptr %i.gy, i64 %i.ji ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jl = fcmp ogt float %i.jd, %i.jg             ; 3 uses
  %spec.store.select120.i = zext i1 %i.jl to i32
  store i32 %spec.store.select120.i, ptr %i.jk, align 4
  %i.jm = select i1 %i.jl, i64 %i.ja, i64 %indvars.iv129.i
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.jm
  %i.jo = select i1 %i.jl, i64 %indvars.iv129.i, i64 %i.ja
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.jo
  %i.jq = load <2 x float>, ptr %i.jn, align 4, !tbaa !81
  %i.jr = load <2 x float>, ptr %i.jp, align 4, !tbaa !81
  %i.js = shufflevector <2 x float> %i.jq, <2 x float> %i.jr, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.js, <4 x float> %i.hc, <4 x float> %i.hf)
  store <4 x float> %i.jt, ptr %i.jj, align 4, !tbaa !81
  %i.ju = add nsw i32 %.2105.i, 1
  %.pre.i25 = load i32, ptr %i.iu, align 4, !tbaa !70
  br label %.lr.ph109._crit_edge.i

.lr.ph109._crit_edge.i:                           ; preds = %bb.x, %.lr.ph109.i
  %i.jv = phi i32 [ %.pre.i25, %bb.x ], [ %i.iz, %.lr.ph109.i ] ; 2 uses
  %.3.i = phi i32 [ %i.ju, %bb.x ], [ %.2105.i, %.lr.ph109.i ] ; 2 uses
  %.pre-phi148.i = trunc i64 %indvars.iv129.i to i32
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1 ; 2 uses
  %i.jw = sext i32 %i.jv to i64
  %i.jx = icmp slt i64 %indvars.iv.next130.i, %i.jw
  br i1 %i.jx, label %.lr.ph109.i, label %._crit_edge110.split.i, !llvm.loop !335

._crit_edge110.split.i:                           ; preds = %.lr.ph109._crit_edge.i, %.lr.ph115.split.i
  %.2.lcssa.i = phi i32 [ %.190112.i, %.lr.ph115.split.i ], [ %.3.i, %.lr.ph109._crit_edge.i ] ; 2 uses
  %indvars.iv.next133.i = add nuw nsw i64 %indvars.iv132.i, 1 ; 2 uses
  %exitcond136.not.i = icmp eq i64 %indvars.iv.next133.i, %wide.trip.count.i28
  br i1 %exitcond136.not.i, label %._crit_edge116.i, label %.lr.ph115.split.i, !llvm.loop !336

._crit_edge116.i:                                 ; preds = %._crit_edge110.split.i, %._crit_edge110.split.us.us.i
  %.190.lcssa.i = phi i32 [ %.2.lcssa.us.i, %._crit_edge110.split.us.us.i ], [ %.2.lcssa.i, %._crit_edge110.split.i ] ; 4 uses
  tail call fastcc void @stbtt__sort_edges_quicksort(ptr noundef nonnull %i.gy, i32 noundef %.190.lcssa.i)
  %i.jy = icmp sgt i32 %.190.lcssa.i, 1
  br i1 %i.jy, label %.lr.ph.preheader.i.i.i, label %stbtt__sort_edges.exit.i

.lr.ph.preheader.i.i.i:                           ; preds = %._crit_edge116.i
  %wide.trip.count.i.i.i = zext nneg i32 %.190.lcssa.i to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.ab ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.jz = getelementptr inbounds nuw [20 x i8], ptr %i.gy, i64 %indvars.iv.i.i.i ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  %.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !81
  %i.ka = load <2 x float>, ptr %i.jz, align 4, !tbaa !81
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i.i, i64 12, i1 false), !tbaa.struct !348
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph.i.i.i
  %indvars.iv31.i.i.i = phi i64 [ %indvars.iv.i.i.i, %.lr.ph.i.i.i ], [ %indvars.iv.next32.i.i.i, %bb.z ] ; 4 uses
  %i.kb = getelementptr [20 x i8], ptr %i.gy, i64 %indvars.iv31.i.i.i ; 3 uses
  %i.kc = getelementptr i8, ptr %i.kb, i64 -16
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !85
  %i.ke = fcmp olt float %.sroa.4.0.copyload.i.i.i, %i.kd
  br i1 %i.ke, label %bb.z, label %.thread.split.loop.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.kf = getelementptr i8, ptr %i.kb, i64 -20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.kb, ptr noundef nonnull align 4 dereferenceable(20) %i.kf, i64 20, i1 false), !tbaa.struct !86
  %indvars.iv.next32.i.i.i = add nsw i64 %indvars.iv31.i.i.i, -1
  %i.kg = icmp sgt i64 %indvars.iv31.i.i.i, 1
  br i1 %i.kg, label %bb.y, label %.thread.i.i.i

.thread.split.loop.exit.i.i.i:                    ; preds = %bb.y
  %i.kh = trunc nuw nsw i64 %indvars.iv31.i.i.i to i32
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.z, %.thread.split.loop.exit.i.i.i
  %.021.lcssa.i.i.i = phi i32 [ %i.kh, %.thread.split.loop.exit.i.i.i ], [ 0, %bb.z ] ; 2 uses
  %i.ki = zext i32 %.021.lcssa.i.i.i to i64
  %.not.i.i.i = icmp eq i64 %indvars.iv.i.i.i, %i.ki
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.thread.i.i.i
  %i.kj = sext i32 %.021.lcssa.i.i.i to i64
  %i.kk = getelementptr inbounds [20 x i8], ptr %i.gy, i64 %i.kj ; 2 uses
  store <2 x float> %i.ka, ptr %i.kk, align 4, !tbaa !81
  %.sroa.5.0..sroa_idx26.i.i.i = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx26.i.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.5.i.i.i, i64 12, i1 false), !tbaa.struct !348
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %stbtt__sort_edges.exit.i, label %.lr.ph.i.i.i, !llvm.loop !337

stbtt__sort_edges.exit.i:                         ; preds = %bb.ab, %._crit_edge116.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.kl = load i32, ptr %0, align 8, !tbaa !88    ; 5 uses
  %i.km = icmp sgt i32 %i.kl, 64
  br i1 %i.km, label %bb.ac, label %fons__tmpalloc.exit.i.i

bb.ac:                                            ; preds = %stbtt__sort_edges.exit.i
  %i.kn = shl i32 %i.kl, 3
  %i.ko = load i32, ptr %i.bd, align 8, !tbaa !53 ; 2 uses
  %i.kp = and i32 %i.kn, -16
  %i.kq = add i32 %i.kp, 16
  %i.kr = add nsw i32 %i.kq, %i.ko                ; 3 uses
  %i.ks = icmp sgt i32 %i.kr, 96000
  br i1 %i.ks, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.kt = getelementptr inbounds nuw i8, ptr %11, i64 21104
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !54 ; 2 uses
  %.not.i.i98.i = icmp eq ptr %i.ku, null
  br i1 %.not.i.i98.i, label %fons__tmpalloc.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kv = getelementptr inbounds nuw i8, ptr %11, i64 21112
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !55
  tail call void %i.ku(ptr noundef %i.kw, i32 noundef 2, i32 noundef %i.kr) #40, !inline_history !338
  %.pre.i.i = load i32, ptr %0, align 8, !tbaa !88
  br label %fons__tmpalloc.exit.i.i

bb.af:                                            ; preds = %bb.ac
  %i.kx = load ptr, ptr %i.bn, align 8, !tbaa !56
  %i.ky = sext i32 %i.ko to i64
  %i.kz = getelementptr inbounds i8, ptr %i.kx, i64 %i.ky
  store i32 %i.kr, ptr %i.bd, align 8, !tbaa !53
  br label %fons__tmpalloc.exit.i.i

fons__tmpalloc.exit.i.i:                          ; preds = %bb.af, %bb.ae, %bb.ad, %stbtt__sort_edges.exit.i
  %i.la = phi i32 [ %i.kl, %stbtt__sort_edges.exit.i ], [ %i.kl, %bb.af ], [ %.pre.i.i, %bb.ae ], [ %i.kl, %bb.ad ] ; 2 uses
  %.082.i.i = phi ptr [ %i.b, %stbtt__sort_edges.exit.i ], [ %i.kz, %bb.af ], [ null, %bb.ae ], [ null, %bb.ad ] ; 41 uses
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [4 x i8], ptr %.082.i.i, i64 %i.lb ; 9 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !89 ; 2 uses
  %i.lf = add nsw i32 %i.le, %9
  %i.lg = sitofp i32 %i.lf to float
  %i.lh = fadd float %i.lg, 1.000000e+00
  %i.li = sext i32 %.190.lcssa.i to i64
  %i.lj = getelementptr inbounds [20 x i8], ptr %i.gy, i64 %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  store float %i.lh, ptr %i.lk, align 4, !tbaa !85
  %i.ll = icmp sgt i32 %i.le, 0
  br i1 %i.ll, label %.lr.ph129.i.i, label %stbtt__rasterize_sorted_edges.exit.i

.lr.ph129.i.i:                                    ; preds = %fons__tmpalloc.exit.i.i
  %i.lm = sitofp i32 %8 to float
  %i.ln = icmp ne i32 %9, 0
  %i.lo = getelementptr inbounds nuw i8, ptr %11, i64 21104
  %i.lp = getelementptr inbounds nuw i8, ptr %11, i64 21112
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lc, i64 4 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge122.i.i, %.lr.ph129.i.i
  %.0..i.i = phi ptr [ null, %.lr.ph129.i.i ], [ %.0..0..0..0..0..0..0..0.84.i.i, %._crit_edge122.i.i ] ; 2 uses
  %i.lt = phi i32 [ %i.la, %.lr.ph129.i.i ], [ %i.aux, %._crit_edge122.i.i ]
  %.0128.i.i = phi ptr [ %i.gy, %.lr.ph129.i.i ], [ %.1.lcssa.i.i, %._crit_edge122.i.i ] ; 3 uses
  %.077127.i.i = phi i32 [ %9, %.lr.ph129.i.i ], [ %i.avx, %._crit_edge122.i.i ] ; 2 uses
  %.078126.i.i = phi i32 [ 0, %.lr.ph129.i.i ], [ %i.avy, %._crit_edge122.i.i ] ; 3 uses
  %.sroa.11.0125.i.i = phi i32 [ 0, %.lr.ph129.i.i ], [ %.sroa.11.1.lcssa.i.i, %._crit_edge122.i.i ] ; 2 uses
  %.sroa.7.0124.i.i = phi ptr [ null, %.lr.ph129.i.i ], [ %.sroa.7.3.lcssa.i.i, %._crit_edge122.i.i ] ; 2 uses
  %.sroa.0.0123.i.i = phi ptr [ null, %.lr.ph129.i.i ], [ %.sroa.0.1.lcssa.i.i, %._crit_edge122.i.i ] ; 2 uses
  %i.lu = sitofp i32 %.077127.i.i to float        ; 66 uses
  %i.lv = fadd float %i.lu, 1.000000e+00          ; 75 uses
  %i.lw = sext i32 %i.lt to i64
  %i.lx = shl nsw i64 %i.lw, 2
  call void @llvm.memset.p0.i64(ptr align 4 %.082.i.i, i8 0, i64 %i.lx, i1 false)
  %i.ly = load i32, ptr %0, align 8, !tbaa !88
  %i.lz = add nsw i32 %i.ly, 1
  %i.ma = sext i32 %i.lz to i64
  %i.mb = shl nsw i64 %i.ma, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.lc, i8 0, i64 %i.mb, i1 false)
  %.not92105.i.i = icmp eq ptr %.0..i.i, null
  br i1 %.not92105.i.i, label %.preheader104.i.i, label %.lr.ph.i.i

.preheader104.i.i:                                ; preds = %bb.ai, %bb.ag
  %.sroa.7.1.lcssa.i.i = phi ptr [ %.sroa.7.0124.i.i, %bb.ag ], [ %.sroa.7.2.i.i, %bb.ai ] ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.0128.i.i, i64 4
  %i.md = load float, ptr %i.mc, align 4, !tbaa !85 ; 2 uses
  %i.me = fcmp ugt float %i.md, %i.lv
  br i1 %i.me, label %._crit_edge.i.i, label %.lr.ph112.i.i

.lr.ph112.i.i:                                    ; preds = %.preheader104.i.i
  %i.mf = icmp eq i32 %.078126.i.i, 0
  %or.cond.i.i = and i1 %i.ln, %i.mf
  br label %bb.aj

.lr.ph.i.i:                                       ; preds = %bb.ag, %bb.ai
  %i.mg = phi ptr [ %i.mm, %bb.ai ], [ %.0..i.i, %bb.ag ] ; 6 uses
  %.080107.i.i = phi ptr [ %.181.i.i, %bb.ai ], [ %i.a, %bb.ag ] ; 2 uses
  %.sroa.7.1106.i.i = phi ptr [ %.sroa.7.2.i.i, %bb.ai ], [ %.sroa.7.0124.i.i, %bb.ag ] ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 28
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !352
  %i.mj = fcmp ugt float %i.mi, %i.lu
  br i1 %i.mj, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i
  %i.mk = load ptr, ptr %i.mg, align 8, !tbaa !353
  store ptr %i.mk, ptr %.080107.i.i, align 8, !tbaa !350
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mg, i64 20
  store float 0.000000e+00, ptr %i.ml, align 4, !tbaa !354
  store ptr %.sroa.7.1106.i.i, ptr %i.mg, align 8, !tbaa !45
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.i.i
  %.sroa.7.2.i.i = phi ptr [ %.sroa.7.1106.i.i, %.lr.ph.i.i ], [ %i.mg, %bb.ah ] ; 2 uses
  %.181.i.i = phi ptr [ %i.mg, %.lr.ph.i.i ], [ %.080107.i.i, %bb.ah ] ; 2 uses
  %i.mm = load ptr, ptr %.181.i.i, align 8, !tbaa !350 ; 2 uses
  %.not92.i.i = icmp eq ptr %i.mm, null
  br i1 %.not92.i.i, label %.preheader104.i.i, label %.lr.ph.i.i, !llvm.loop !339

bb.aj:                                            ; preds = %stbtt__new_active.exit.thread.i.i, %.lr.ph112.i.i
  %i.mn = phi float [ %i.md, %.lr.ph112.i.i ], [ %i.og, %stbtt__new_active.exit.thread.i.i ] ; 4 uses
  %.1111.i.i = phi ptr [ %.0128.i.i, %.lr.ph112.i.i ], [ %i.oe, %stbtt__new_active.exit.thread.i.i ] ; 6 uses
  %.sroa.11.1110.i.i = phi i32 [ %.sroa.11.0125.i.i, %.lr.ph112.i.i ], [ %.sroa.11.2.i.i, %stbtt__new_active.exit.thread.i.i ] ; 4 uses
  %.sroa.7.3109.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i, %.lr.ph112.i.i ], [ %.sroa.7.4.i.i, %stbtt__new_active.exit.thread.i.i ] ; 4 uses
  %.sroa.0.1108.i.i = phi ptr [ %.sroa.0.0123.i.i, %.lr.ph112.i.i ], [ %.sroa.0.2.i.i, %stbtt__new_active.exit.thread.i.i ] ; 7 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.1111.i.i, i64 12
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !355 ; 4 uses
  %i.mq = fcmp une float %i.mn, %i.mp
  br i1 %i.mq, label %bb.ak, label %stbtt__new_active.exit.thread.i.i

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i.i.i = icmp eq ptr %.sroa.7.3109.i.i, null
  br i1 %.not.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.mr = load ptr, ptr %.sroa.7.3109.i.i, align 8, !tbaa !45
  br label %bb.as

bb.am:                                            ; preds = %bb.ak
  %i.ms = icmp eq i32 %.sroa.11.1110.i.i, 0
  br i1 %i.ms, label %bb.an, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.am
  %i.mt = add nsw i32 %.sroa.11.1110.i.i, -1
  br label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.mu = load i32, ptr %i.bd, align 8, !tbaa !53 ; 3 uses
  %i.mv = add nsw i32 %i.mu, 25616                ; 2 uses
  %i.mw = icmp sgt i32 %i.mu, 70384
  br i1 %i.mw, label %bb.ao, label %fons__tmpalloc.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.mx = load ptr, ptr %i.lo, align 8, !tbaa !54 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.mx, null
  br i1 %.not.i.i.i.i.i, label %stbtt__new_active.exit.thread.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.my = load ptr, ptr %i.lp, align 8, !tbaa !55
  tail call void %i.mx(ptr noundef %i.my, i32 noundef 2, i32 noundef %i.mv) #40, !inline_history !340
  br label %stbtt__new_active.exit.thread.i.i

fons__tmpalloc.exit.i.i.i.i:                      ; preds = %bb.an
  %i.mz = load ptr, ptr %i.bn, align 8, !tbaa !56 ; 2 uses
  store i32 %i.mv, ptr %i.bd, align 8, !tbaa !53
  %i.na = icmp eq ptr %i.mz, null
  br i1 %i.na, label %stbtt__new_active.exit.thread.i.i, label %bb.aq

bb.aq:                                            ; preds = %fons__tmpalloc.exit.i.i.i.i
  %i.nb = sext i32 %i.mu to i64
  %i.nc = getelementptr inbounds i8, ptr %i.mz, i64 %i.nb ; 2 uses
  store ptr %.sroa.0.1108.i.i, ptr %i.nc, align 8, !tbaa !358
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %._crit_edge.i.i.i.i
  %.sroa.0.4.i.i = phi ptr [ %i.nc, %bb.aq ], [ %.sroa.0.1108.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.nd = phi i32 [ 799, %bb.aq ], [ %i.mt, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0.4.i.i, i64 8
  %i.nf = zext nneg i32 %i.nd to i64
  %i.ng = shl nuw nsw i64 %i.nf, 5
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.ng
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.al
  %.sroa.0.3.i.i = phi ptr [ %.sroa.0.4.i.i, %bb.ar ], [ %.sroa.0.1108.i.i, %bb.al ]
  %.sroa.7.5.i.i = phi ptr [ null, %bb.ar ], [ %i.mr, %bb.al ]
  %.sroa.11.3.i.i = phi i32 [ %i.nd, %bb.ar ], [ %.sroa.11.1110.i.i, %bb.al ]
  %.1.i.i.i.i = phi ptr [ %i.nh, %bb.ar ], [ %.sroa.7.3109.i.i, %bb.al ] ; 9 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.1111.i.i, i64 8
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !359
  %i.nk = load float, ptr %.1111.i.i, align 4, !tbaa !360 ; 2 uses
  %i.nl = fsub float %i.nj, %i.nk
  %i.nm = fsub float %i.mp, %i.mn
  %i.nn = fdiv float %i.nl, %i.nm                 ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 12
  store float %i.nn, ptr %i.no, align 4, !tbaa !361
  %i.np = fcmp une float %i.nn, 0.000000e+00
  %i.nq = fdiv float 1.000000e+00, %i.nn
  %i.nr = select i1 %i.np, float %i.nq, float 0.000000e+00
  %i.ns = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 16
  store float %i.nr, ptr %i.ns, align 8, !tbaa !362
  %i.nt = fsub float %i.lu, %i.mn
  %i.nu = tail call float @llvm.fmuladd.f32(float %i.nn, float %i.nt, float %i.nk)
  %i.nv = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  %i.nw = fsub float %i.nu, %i.lm
  store float %i.nw, ptr %i.nv, align 8, !tbaa !363
  %i.nx = getelementptr inbounds nuw i8, ptr %.1111.i.i, i64 16
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !364
  %.not28.i.i.i = icmp eq i32 %i.ny, 0
  %i.nz = select i1 %.not28.i.i.i, float -1.000000e+00, float 1.000000e+00
  %i.oa = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 20
  store float %i.nz, ptr %i.oa, align 4, !tbaa !354
  %i.ob = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 24
  store float %i.mn, ptr %i.ob, align 8, !tbaa !365
  %i.oc = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 28 ; 2 uses
  store float %i.mp, ptr %i.oc, align 4, !tbaa !352
  store ptr null, ptr %.1.i.i.i.i, align 8, !tbaa !353
  %i.od = fcmp olt float %i.mp, %i.lu
  %or.cond229.i.i = select i1 %or.cond.i.i, i1 %i.od, i1 false
  br i1 %or.cond229.i.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store float %i.lu, ptr %i.oc, align 4, !tbaa !352
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.0..0..0..0..0..0..0..0..i.i = load ptr, ptr %i.a, align 8, !tbaa !350
  store ptr %.0..0..0..0..0..0..0..0..i.i, ptr %.1.i.i.i.i, align 8, !tbaa !353
  store ptr %.1.i.i.i.i, ptr %i.a, align 8, !tbaa !350
  br label %stbtt__new_active.exit.thread.i.i

stbtt__new_active.exit.thread.i.i:                ; preds = %bb.au, %fons__tmpalloc.exit.i.i.i.i, %bb.ap, %bb.ao, %bb.aj
  %.sroa.0.2.i.i = phi ptr [ %.sroa.0.1108.i.i, %bb.aj ], [ %.sroa.0.3.i.i, %bb.au ], [ %.sroa.0.1108.i.i, %fons__tmpalloc.exit.i.i.i.i ], [ %.sroa.0.1108.i.i, %bb.ap ], [ %.sroa.0.1108.i.i, %bb.ao ] ; 2 uses
  %.sroa.7.4.i.i = phi ptr [ %.sroa.7.3109.i.i, %bb.aj ], [ %.sroa.7.5.i.i, %bb.au ], [ null, %fons__tmpalloc.exit.i.i.i.i ], [ null, %bb.ap ], [ null, %bb.ao ] ; 2 uses
  %.sroa.11.2.i.i = phi i32 [ %.sroa.11.1110.i.i, %bb.aj ], [ %.sroa.11.3.i.i, %bb.au ], [ 0, %fons__tmpalloc.exit.i.i.i.i ], [ 0, %bb.ap ], [ 0, %bb.ao ] ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.1111.i.i, i64 20 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.1111.i.i, i64 24
  %i.og = load float, ptr %i.of, align 4, !tbaa !85 ; 2 uses
  %i.oh = fcmp ugt float %i.og, %i.lv
  br i1 %i.oh, label %._crit_edge.i.i, label %bb.aj, !llvm.loop !341

._crit_edge.i.i:                                  ; preds = %stbtt__new_active.exit.thread.i.i, %.preheader104.i.i
  %.sroa.0.1.lcssa.i.i = phi ptr [ %.sroa.0.0123.i.i, %.preheader104.i.i ], [ %.sroa.0.2.i.i, %stbtt__new_active.exit.thread.i.i ]
  %.sroa.7.3.lcssa.i.i = phi ptr [ %.sroa.7.1.lcssa.i.i, %.preheader104.i.i ], [ %.sroa.7.4.i.i, %stbtt__new_active.exit.thread.i.i ]
  %.sroa.11.1.lcssa.i.i = phi i32 [ %.sroa.11.0125.i.i, %.preheader104.i.i ], [ %.sroa.11.2.i.i, %stbtt__new_active.exit.thread.i.i ]
  %.1.lcssa.i.i = phi ptr [ %.0128.i.i, %.preheader104.i.i ], [ %i.oe, %stbtt__new_active.exit.thread.i.i ]
  %.0..0..0..0..0..0..0..0.84.i.i = load ptr, ptr %i.a, align 8, !tbaa !350 ; 4 uses
  %.not93.i.i = icmp eq ptr %.0..0..0..0..0..0..0..0.84.i.i, null ; 2 uses
  %.pre136.i.i = load i32, ptr %0, align 8, !tbaa !88 ; 5 uses
  br i1 %.not93.i.i, label %stbtt__fill_active_edges_new.exit.i.i, label %bb.av

bb.av:                                            ; preds = %._crit_edge.i.i
  %i.oi = sitofp i32 %.pre136.i.i to float        ; 3 uses
  %i.oj = icmp sgt i32 %.pre136.i.i, 0
  %i.ok = fcmp oeq float %i.lv, %i.lu             ; 3 uses
  %i.ol = fsub float %i.lv, %i.lu                 ; 4 uses
  %wide.trip.count.i.i93.i = zext nneg i32 %.pre136.i.i to i64
  %i.om = insertelement <2 x float> poison, float %i.lu, i64 0
  %i.on = shufflevector <2 x float> %i.om, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %stbtt__handle_clipped_edge.exit351.i.i.i, %bb.av
  %.0293468.i.i.i = phi ptr [ %.0..0..0..0..0..0..0..0.84.i.i, %bb.av ], [ %i.auv, %stbtt__handle_clipped_edge.exit351.i.i.i ] ; 19 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 8
  %i.op = load <2 x float>, ptr %i.oo, align 8, !tbaa !81 ; 10 uses
  %i.oq = extractelement <2 x float> %i.op, i64 0 ; 40 uses
  %i.or = extractelement <2 x float> %i.op, i64 1 ; 2 uses
  %i.os = fcmp oeq float %i.or, 0.000000e+00
  br i1 %i.os, label %bb.ax, label %bb.cf

bb.ax:                                            ; preds = %bb.aw
  %i.ot = fcmp olt float %i.oq, %i.oi
  br i1 %i.ot, label %bb.ay, label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.ou = fcmp ult float %i.oq, 0.000000e+00
  br i1 %i.ou, label %bb.bu, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ov = fptosi float %i.oq to i32               ; 6 uses
  br i1 %i.ok, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ow = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 28 ; 2 uses
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !352 ; 4 uses
  %i.oy = fcmp olt float %i.ox, %i.lu
  br i1 %i.oy, label %bb.bk, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.oz = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 24
  %i.pa = load float, ptr %i.oz, align 8, !tbaa !365 ; 4 uses
  %i.pb = fcmp olt float %i.lv, %i.pa
  br i1 %i.pb, label %bb.bk, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.pc = fcmp ogt float %i.pa, %i.lu
  br i1 %i.pc, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %foldExtExtBinop = fsub <2 x float> %i.op, %i.op
  %i.pd = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.pe = fsub float %i.pa, %i.lu
  %i.pf = fmul float %i.pd, %i.pe
  %i.pg = fdiv float %i.pf, %i.ol
  %i.ph = fadd float %i.oq, %i.pg
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.055.i.i.i.i = phi float [ %i.ph, %bb.bd ], [ %i.oq, %bb.bc ] ; 4 uses
  %.054.i.i.i.i = phi float [ %i.pa, %bb.bd ], [ %i.lu, %bb.bc ] ; 3 uses
  %i.pi = fcmp ogt float %i.lv, %i.ox
  br i1 %i.pi, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.pj = fsub float %i.oq, %.055.i.i.i.i
  %i.pk = fsub float %i.ox, %i.lv
  %i.pl = fmul float %i.pk, %i.pj
  %i.pm = fsub float %i.lv, %.054.i.i.i.i
  %i.pn = fdiv float %i.pl, %i.pm
  %i.po = fadd float %i.oq, %i.pn
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.053.i.i.i.i = phi float [ %i.po, %bb.bf ], [ %i.oq, %bb.be ] ; 3 uses
  %.0.i.i.i.i = phi float [ %i.ox, %bb.bf ], [ %i.lv, %bb.be ] ; 2 uses
  %i.pp = sitofp i32 %i.ov to float               ; 4 uses
  %i.pq = fcmp ugt float %.055.i.i.i.i, %i.pp
  %i.pr = fcmp ugt float %.053.i.i.i.i, %i.pp
  %or.cond.i.i.i.i = select i1 %i.pq, i1 true, i1 %i.pr
  br i1 %or.cond.i.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ps = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !354
  %i.pu = fsub float %.0.i.i.i.i, %.054.i.i.i.i
  %12 = sext i32 %i.ov to i64
  %i.pv = getelementptr inbounds [4 x i8], ptr %.082.i.i, i64 %12 ; 2 uses
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !81
  %i.px = tail call float @llvm.fmuladd.f32(float %i.pt, float %i.pu, float %i.pw)
  store float %i.px, ptr %i.pv, align 4, !tbaa !81
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg
  %i.py = add nsw i32 %i.ov, 1
  %i.pz = sitofp i32 %i.py to float               ; 2 uses
  %i.qa = fcmp ult float %.055.i.i.i.i, %i.pz
  %i.qb = fcmp ult float %.053.i.i.i.i, %i.pz
  %or.cond62.i.i.i.i = select i1 %i.qa, i1 true, i1 %i.qb
  br i1 %or.cond62.i.i.i.i, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.qc = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !354
  %i.qe = fsub float %.0.i.i.i.i, %.054.i.i.i.i
  %i.qf = fmul float %i.qe, %i.qd
  %i.qg = fsub float %.055.i.i.i.i, %i.pp
  %i.qh = fsub float %.053.i.i.i.i, %i.pp
  %i.qi = fadd float %i.qg, %i.qh
  %i.qj = fmul float %i.qi, 5.000000e-01
  %i.qk = fsub float 1.000000e+00, %i.qj
  %13 = sext i32 %i.ov to i64
  %i.ql = getelementptr inbounds [4 x i8], ptr %.082.i.i, i64 %13 ; 2 uses
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !81
  %i.qn = tail call float @llvm.fmuladd.f32(float %i.qf, float %i.qk, float %i.qm)
  store float %i.qn, ptr %i.ql, align 4, !tbaa !81
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bb, %bb.ba
  %i.qo = add nsw i32 %i.ov, 1                    ; 3 uses
  %i.qp = load float, ptr %i.ow, align 4, !tbaa !352 ; 4 uses
  %i.qq = fcmp olt float %i.qp, %i.lu
  br i1 %i.qq, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.qr = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 24
  %i.qs = load float, ptr %i.qr, align 8, !tbaa !365 ; 4 uses
  %i.qt = fcmp olt float %i.lv, %i.qs
  br i1 %i.qt, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.qu = fcmp ogt float %i.qs, %i.lu
  br i1 %i.qu, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %foldExtExtBinop184 = fsub <2 x float> %i.op, %i.op
  %i.qv = extractelement <2 x float> %foldExtExtBinop184, i64 0
  %i.qw = fsub float %i.qs, %i.lu
  %i.qx = fmul float %i.qv, %i.qw
  %i.qy = fdiv float %i.qx, %i.ol
  %i.qz = fadd float %i.oq, %i.qy
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.055.i345.i.i.i = phi float [ %i.qz, %bb.bn ], [ %i.oq, %bb.bm ] ; 4 uses
  %.054.i346.i.i.i = phi float [ %i.qs, %bb.bn ], [ %i.lu, %bb.bm ] ; 3 uses
  %i.ra = fcmp ogt float %i.lv, %i.qp
  br i1 %i.ra, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.rb = fsub float %i.oq, %.055.i345.i.i.i
  %i.rc = fsub float %i.qp, %i.lv
  %i.rd = fmul float %i.rc, %i.rb
  %i.re = fsub float %i.lv, %.054.i346.i.i.i
  %i.rf = fdiv float %i.rd, %i.re
  %i.rg = fadd float %i.oq, %i.rf
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.053.i347.i.i.i = phi float [ %i.rg, %bb.bp ], [ %i.oq, %bb.bo ] ; 3 uses
  %.0.i348.i.i.i = phi float [ %i.qp, %bb.bp ], [ %i.lv, %bb.bo ] ; 2 uses
  %i.rh = sitofp i32 %i.qo to float               ; 4 uses
  %i.ri = fcmp ugt float %.055.i345.i.i.i, %i.rh
  %i.rj = fcmp ugt float %.053.i347.i.i.i, %i.rh
  %or.cond.i349.i.i.i = select i1 %i.ri, i1 true, i1 %i.rj
  br i1 %or.cond.i349.i.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.rk = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !354
  %i.rm = fsub float %.0.i348.i.i.i, %.054.i346.i.i.i
  %14 = sext i32 %i.qo to i64
  %i.rn = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %14 ; 2 uses
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !81
  %i.rp = tail call float @llvm.fmuladd.f32(float %i.rl, float %i.rm, float %i.ro)
  store float %i.rp, ptr %i.rn, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.rq = add nsw i32 %i.ov, 2
  %i.rr = sitofp i32 %i.rq to float               ; 2 uses
  %i.rs = fcmp ult float %.055.i345.i.i.i, %i.rr
  %i.rt = fcmp ult float %.053.i347.i.i.i, %i.rr
  %or.cond62.i350.i.i.i = select i1 %i.rs, i1 true, i1 %i.rt
  br i1 %or.cond62.i350.i.i.i, label %bb.bt, label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.ru = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !354
  %i.rw = fsub float %.0.i348.i.i.i, %.054.i346.i.i.i
  %i.rx = fmul float %i.rw, %i.rv
  %i.ry = fsub float %.055.i345.i.i.i, %i.rh
  %i.rz = fsub float %.053.i347.i.i.i, %i.rh
  %i.sa = fadd float %i.ry, %i.rz
  %i.sb = fmul float %i.sa, 5.000000e-01
  %i.sc = fsub float 1.000000e+00, %i.sb
  %15 = sext i32 %i.qo to i64
  %i.sd = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %15 ; 2 uses
  %i.se = load float, ptr %i.sd, align 4, !tbaa !81
  %i.sf = tail call float @llvm.fmuladd.f32(float %i.rx, float %i.sc, float %i.se)
  store float %i.sf, ptr %i.sd, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.bu:                                            ; preds = %bb.ay
  br i1 %i.ok, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.sg = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 28
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !352 ; 4 uses
  %i.si = fcmp olt float %i.sh, %i.lu
  br i1 %i.si, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.sj = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 24
  %i.sk = load float, ptr %i.sj, align 8, !tbaa !365 ; 4 uses
  %i.sl = fcmp olt float %i.lv, %i.sk
  br i1 %i.sl, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.sm = fcmp ogt float %i.sk, %i.lu
  br i1 %i.sm, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %foldExtExtBinop186 = fsub <2 x float> %i.op, %i.op
  %i.sn = extractelement <2 x float> %foldExtExtBinop186, i64 0
  %i.so = fsub float %i.sk, %i.lu
  %i.sp = fmul float %i.sn, %i.so
  %i.sq = fdiv float %i.sp, %i.ol
  %i.sr = fadd float %i.oq, %i.sq
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.055.i352.i.i.i = phi float [ %i.sr, %bb.by ], [ %i.oq, %bb.bx ] ; 4 uses
  %.054.i353.i.i.i = phi float [ %i.sk, %bb.by ], [ %i.lu, %bb.bx ] ; 3 uses
  %i.ss = fcmp ogt float %i.lv, %i.sh
  br i1 %i.ss, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.st = fsub float %i.oq, %.055.i352.i.i.i
  %i.su = fsub float %i.sh, %i.lv
  %i.sv = fmul float %i.su, %i.st
  %i.sw = fsub float %i.lv, %.054.i353.i.i.i
  %i.sx = fdiv float %i.sv, %i.sw
  %i.sy = fadd float %i.oq, %i.sx
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.053.i354.i.i.i = phi float [ %i.sy, %bb.ca ], [ %i.oq, %bb.bz ] ; 3 uses
  %.0.i355.i.i.i = phi float [ %i.sh, %bb.ca ], [ %i.lv, %bb.bz ] ; 2 uses
  %i.sz = fcmp ugt float %.055.i352.i.i.i, 0.000000e+00
  %i.ta = fcmp ugt float %.053.i354.i.i.i, 0.000000e+00
  %or.cond.i356.i.i.i = select i1 %i.sz, i1 true, i1 %i.ta
  br i1 %or.cond.i356.i.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.tb = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !354
  %i.td = fsub float %.0.i355.i.i.i, %.054.i353.i.i.i
  %i.te = load float, ptr %i.lc, align 4, !tbaa !81
  %i.tf = tail call float @llvm.fmuladd.f32(float %i.tc, float %i.td, float %i.te)
  store float %i.tf, ptr %i.lc, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.tg = fcmp ult float %.055.i352.i.i.i, 1.000000e+00
  %i.th = fcmp ult float %.053.i354.i.i.i, 1.000000e+00
  %or.cond62.i357.i.i.i = select i1 %i.tg, i1 true, i1 %i.th
  br i1 %or.cond62.i357.i.i.i, label %bb.ce, label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.ti = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !354
  %i.tk = fsub float %.0.i355.i.i.i, %.054.i353.i.i.i
  %i.tl = fmul float %i.tk, %i.tj
  %i.tm = fadd float %.055.i352.i.i.i, %.053.i354.i.i.i
  %i.tn = fmul float %i.tm, 5.000000e-01
  %i.to = fsub float 1.000000e+00, %i.tn
  %i.tp = load float, ptr %i.lc, align 4, !tbaa !81
  %i.tq = tail call float @llvm.fmuladd.f32(float %i.tl, float %i.to, float %i.tp)
  store float %i.tq, ptr %i.lc, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.cf:                                            ; preds = %bb.aw
  %i.tr = fadd float %i.or, %i.oq                 ; 34 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 16
  %i.tt = load float, ptr %i.ts, align 8, !tbaa !362 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 24 ; 16 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 28 ; 15 uses
  %i.tw = load <2 x float>, ptr %i.tu, align 8, !tbaa !81 ; 3 uses
  %i.tx = extractelement <2 x float> %i.tw, i64 0 ; 2 uses
  %i.ty = fcmp ogt float %i.tx, %i.lu             ; 2 uses
  %i.tz = fsub <2 x float> %i.tw, %i.on
  %i.ua = shufflevector <2 x float> %i.op, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ub = shufflevector <2 x float> %i.op, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.uc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ua, <2 x float> %i.tz, <2 x float> %i.ub) ; 2 uses
  %i.ud = extractelement <2 x float> %i.uc, i64 0
  %.0305.i.i.i = select i1 %i.ty, float %i.ud, float %i.oq ; 7 uses
  %.0301.i.i.i = select i1 %i.ty, float %i.tx, float %i.lu ; 3 uses
  %i.ue = extractelement <2 x float> %i.tw, i64 1 ; 2 uses
  %i.uf = fcmp olt float %i.ue, %i.lv             ; 2 uses
  %i.ug = extractelement <2 x float> %i.uc, i64 1
  %.0303.i.i.i = select i1 %i.uf, float %i.ug, float %i.tr ; 7 uses
  %.0299.i.i.i = select i1 %i.uf, float %i.ue, float %i.lv ; 3 uses
  %i.uh = fcmp oge float %.0305.i.i.i, 0.000000e+00
  %i.ui = fcmp oge float %.0303.i.i.i, 0.000000e+00
  %or.cond.i.i.i = select i1 %i.uh, i1 %i.ui, i1 false
  br i1 %or.cond.i.i.i, label %bb.cg, label %bb.cm

bb.cg:                                            ; preds = %bb.cf
  %i.uj = fcmp olt float %.0305.i.i.i, %i.oi
  %i.uk = fcmp olt float %.0303.i.i.i, %i.oi
  %or.cond338.i.i.i = select i1 %i.uj, i1 %i.uk, i1 false
  br i1 %or.cond338.i.i.i, label %bb.ch, label %bb.cm

bb.ch:                                            ; preds = %bb.cg
  %i.ul = fptosi float %.0305.i.i.i to i32        ; 5 uses
  %i.um = fptosi float %.0303.i.i.i to i32        ; 3 uses
  %i.un = icmp eq i32 %i.ul, %i.um
  br i1 %i.un, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.uo = fsub float %.0299.i.i.i, %.0301.i.i.i
  %i.up = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.uq = load float, ptr %i.up, align 4, !tbaa !354
  %i.ur = fmul float %i.uo, %i.uq                 ; 2 uses
  %i.us = sitofp i32 %i.ul to float
  %i.ut = fadd float %i.us, 1.000000e+00          ; 2 uses
  %i.uu = fsub float %i.ut, %.0305.i.i.i
  %i.uv = fsub float %i.ut, %.0303.i.i.i
  %i.uw = fadd float %i.uu, %i.uv
  %i.ux = fmul float %i.uw, 5.000000e-01
  %i.uy = fmul float %i.ux, %i.ur
  %16 = sext i32 %i.ul to i64                     ; 2 uses
  %i.uz = getelementptr inbounds [4 x i8], ptr %.082.i.i, i64 %16 ; 2 uses
  %i.va = load float, ptr %i.uz, align 4, !tbaa !81
  %i.vb = fadd float %i.va, %i.uy
  store float %i.vb, ptr %i.uz, align 4, !tbaa !81
  %i.vc = getelementptr inbounds [4 x i8], ptr %i.lq, i64 %16 ; 2 uses
  %i.vd = load float, ptr %i.vc, align 4, !tbaa !81
  %i.ve = fadd float %i.ur, %i.vd
  store float %i.ve, ptr %i.vc, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.cj:                                            ; preds = %bb.ch
  %i.vf = fcmp ogt float %.0305.i.i.i, %.0303.i.i.i
  br i1 %i.vf, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.vg = fsub float %i.lu, %.0301.i.i.i
  %i.vh = fadd float %i.lv, %i.vg
  %i.vi = fsub float %i.lu, %.0299.i.i.i
  %i.vj = fadd float %i.lv, %i.vi
  %i.vk = fneg float %i.tt
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.pre-phi475.i.i.i = phi i32 [ %i.ul, %bb.ck ], [ %i.um, %bb.cj ] ; 7 uses
  %.pre-phi.i.i.i = phi i32 [ %i.um, %bb.ck ], [ %i.ul, %bb.cj ] ; 4 uses
  %.0307.i.i.i = phi float [ %i.tr, %bb.ck ], [ %i.oq, %bb.cj ]
  %.1306.i.i.i = phi float [ %.0303.i.i.i, %bb.ck ], [ %.0305.i.i.i, %bb.cj ]
  %.1304.i.i.i = phi float [ %.0305.i.i.i, %bb.ck ], [ %.0303.i.i.i, %bb.cj ]
  %.1302.i.i.i = phi float [ %i.vj, %bb.ck ], [ %.0301.i.i.i, %bb.cj ] ; 2 uses
  %.1300.i.i.i = phi float [ %i.vh, %bb.ck ], [ %.0299.i.i.i, %bb.cj ] ; 2 uses
  %.0298.i.i.i = phi float [ %i.vk, %bb.ck ], [ %i.tt, %bb.cj ] ; 2 uses
  %i.vl = add nsw i32 %.pre-phi.i.i.i, 1          ; 3 uses
  %17 = insertelement <2 x i32> poison, i32 %.pre-phi475.i.i.i, i64 0
  %18 = insertelement <2 x i32> %17, i32 %i.vl, i64 1
  %19 = sitofp <2 x i32> %18 to <2 x float>       ; 3 uses
  %20 = insertelement <2 x float> poison, float %.0307.i.i.i, i64 0
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %22 = fsub <2 x float> %19, %21
  %23 = insertelement <2 x float> poison, float %.0298.i.i.i, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %25 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> %22, <2 x float> %i.on) ; 2 uses
  %26 = extractelement <2 x float> %25, i64 1     ; 2 uses
  %i.vm = fcmp ogt float %26, %i.lv
  %.0296.i.i.i = select i1 %i.vm, float %i.lv, float %26 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !354 ; 4 uses
  %i.vp = fsub float %.0296.i.i.i, %.1302.i.i.i
  %i.vq = fmul float %i.vo, %i.vp                 ; 5 uses
  %27 = extractelement <2 x float> %19, i64 1
  %i.vr = fsub nnan float %27, %.1306.i.i.i
  %i.vs = fmul float %i.vr, %i.vq
  %i.vt = fmul float %i.vs, 5.000000e-01
  %28 = sext i32 %.pre-phi.i.i.i to i64           ; 3 uses
  %i.vu = getelementptr inbounds [4 x i8], ptr %.082.i.i, i64 %28 ; 2 uses
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !81
  %i.vw = fadd float %i.vv, %i.vt
  store float %i.vw, ptr %i.vu, align 4, !tbaa !81
  %29 = extractelement <2 x float> %25, i64 0     ; 2 uses
  %i.vx = fcmp ogt float %29, %i.lv               ; 2 uses
  %i.vy = fsub float %i.lv, %.0296.i.i.i
  %i.vz = sub nsw i32 %.pre-phi475.i.i.i, %i.vl
  %i.wa = sitofp i32 %i.vz to float
  %i.wb = fdiv float %i.vy, %i.wa
  %.1.i.i.i = select i1 %i.vx, float %i.wb, float %.0298.i.i.i
  %.0295.i.i.i = select i1 %i.vx, float %i.lv, float %29
  %i.wc = fmul float %i.vo, %.1.i.i.i             ; 4 uses
  %i.wd = icmp slt i32 %i.vl, %.pre-phi475.i.i.i
  br i1 %i.wd, label %.lr.ph467.i.i.i, label %._crit_edge.i.i.i

.lr.ph467.i.i.i:                                  ; preds = %bb.cl
  %i.we = fmul float %i.wc, 5.000000e-01          ; 3 uses
  %i.wf = add nsw i64 %28, 1                      ; 2 uses
  %i.wg = add i32 %.pre-phi475.i.i.i, -2
  %i.wh = sub i32 %.pre-phi.i.i.i, %.pre-phi475.i.i.i
  %i.wi = and i32 %i.wh, 1
  %lcmp.mod.not.not = icmp eq i32 %i.wi, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph467.i.i.i
  %i.wj = fadd float %i.we, %i.vq
  %i.wk = getelementptr inbounds [4 x i8], ptr %.082.i.i, i64 %i.wf ; 2 uses
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !81
  %i.wm = fadd float %i.wj, %i.wl
  store float %i.wm, ptr %i.wk, align 4, !tbaa !81
  %i.wn = fadd float %i.wc, %i.vq                 ; 2 uses
  %indvars.iv.next472.i.i.i.prol = add nsw i64 %28, 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph467.i.i.i
  %.lcssa188.unr = phi float [ poison, %.lr.ph467.i.i.i ], [ %i.wn, %.prol.loopexit.unr-lcssa ]
  %indvars.iv471.i.i.i.unr = phi i64 [ %i.wf, %.lr.ph467.i.i.i ], [ %indvars.iv.next472.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.0294466.i.i.i.unr = phi float [ %i.vq, %.lr.ph467.i.i.i ], [ %i.wn, %.prol.loopexit.unr-lcssa ]
  %i.wo = icmp eq i32 %i.wg, %.pre-phi.i.i.i
  br i1 %i.wo, label %._crit_edge.i.i.i, label %.lr.ph467.i.i.i.new

.lr.ph467.i.i.i.new:                              ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.new
  %indvars.iv471.i.i.i = phi i64 [ %indvars.iv.next472.i.i.i.1, %.lr.ph467.i.i.i.new ], [ %indvars.iv471.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0294466.i.i.i = phi float [ %i.wz, %.lr.ph467.i.i.i.new ], [ %.0294466.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.wp = fadd float %i.we, %.0294466.i.i.i
  %i.wq = getelementptr inbounds [4 x i8], ptr %.082.i.i, i64 %indvars.iv471.i.i.i ; 2 uses
  %i.wr = load float, ptr %i.wq, align 4, !tbaa !81
  %i.ws = fadd float %i.wp, %i.wr
  store float %i.ws, ptr %i.wq, align 4, !tbaa !81
  %i.wt = fadd float %i.wc, %.0294466.i.i.i       ; 2 uses
  %i.wu = fadd float %i.we, %i.wt
  %i.wv = getelementptr [4 x i8], ptr %.082.i.i, i64 %indvars.iv471.i.i.i
  %i.ww = getelementptr i8, ptr %i.wv, i64 4      ; 2 uses
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !81
  %i.wy = fadd float %i.wu, %i.wx
  store float %i.wy, ptr %i.ww, align 4, !tbaa !81
  %i.wz = fadd float %i.wc, %i.wt                 ; 2 uses
  %indvars.iv.next472.i.i.i.1 = add nsw i64 %indvars.iv471.i.i.i, 2 ; 2 uses
  %lftr.wideiv.i.i.i.1 = trunc i64 %indvars.iv.next472.i.i.i.1 to i32
  %exitcond474.not.i.i.i.1 = icmp eq i32 %.pre-phi475.i.i.i, %lftr.wideiv.i.i.i.1
  br i1 %exitcond474.not.i.i.i.1, label %._crit_edge.i.i.i, label %.lr.ph467.i.i.i.new, !llvm.loop !342

._crit_edge.i.i.i:                                ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.new, %bb.cl
  %.0294.lcssa.i.i.i = phi float [ %i.vq, %bb.cl ], [ %.lcssa188.unr, %.prol.loopexit ], [ %i.wz, %.lr.ph467.i.i.i.new ]
  %i.xa = fsub float %.1300.i.i.i, %.0295.i.i.i
  %30 = extractelement <2 x float> %19, i64 0     ; 2 uses
  %i.xb = fadd float %30, 1.000000e+00            ; 2 uses
  %i.xc = fsub nnan float %i.xb, %30
  %i.xd = fsub float %i.xb, %.1304.i.i.i
  %i.xe = fadd float %i.xc, %i.xd
  %i.xf = fmul float %i.xe, 5.000000e-01
  %i.xg = fmul float %i.xf, %i.xa
  %i.xh = tail call float @llvm.fmuladd.f32(float %i.vo, float %i.xg, float %.0294.lcssa.i.i.i)
  %31 = sext i32 %.pre-phi475.i.i.i to i64        ; 2 uses
  %i.xi = getelementptr inbounds [4 x i8], ptr %.082.i.i, i64 %31 ; 2 uses
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !81
  %i.xk = fadd float %i.xh, %i.xj
  store float %i.xk, ptr %i.xi, align 4, !tbaa !81
  %i.xl = fsub float %.1300.i.i.i, %.1302.i.i.i
  %i.xm = getelementptr inbounds [4 x i8], ptr %i.lq, i64 %31 ; 2 uses
  %i.xn = load float, ptr %i.xm, align 4, !tbaa !81
  %i.xo = tail call float @llvm.fmuladd.f32(float %i.vo, float %i.xl, float %i.xn)
  store float %i.xo, ptr %i.xm, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.cm:                                            ; preds = %bb.cg, %bb.cf
  br i1 %i.oj, label %.lr.ph.i.i94.i, label %stbtt__handle_clipped_edge.exit351.i.i.i

.lr.ph.i.i94.i:                                   ; preds = %bb.cm
  %i.xp = fsub float %i.tr, %i.oq
  %i.xq = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20 ; 30 uses
  br label %bb.cn

bb.cn:                                            ; preds = %stbtt__handle_clipped_edge.exit379.i.i.i, %.lr.ph.i.i94.i
  %indvars.iv.i.i95.i = phi i64 [ 0, %.lr.ph.i.i94.i ], [ %indvars.iv.next.i.i96.i, %stbtt__handle_clipped_edge.exit379.i.i.i ] ; 32 uses
  %indvars.iv.next.i.i96.i = add nuw nsw i64 %indvars.iv.i.i95.i, 1 ; 3 uses
  %i.xr = trunc nuw nsw i64 %indvars.iv.next.i.i96.i to i32
  %i.xs = trunc nuw nsw i64 %indvars.iv.i.i95.i to i32
  %i.xt = uitofp nneg i32 %i.xr to float          ; 60 uses
  %i.xu = uitofp nneg i32 %i.xs to float          ; 90 uses
  %i.xv = insertelement <2 x float> poison, float %i.xu, i64 0
  %i.xw = insertelement <2 x float> %i.xv, float %i.xt, i64 1
  %i.xx = fsub <2 x float> %i.xw, %i.ub           ; 7 uses
  %i.xy = fdiv <2 x float> %i.xx, %i.ua           ; 2 uses
  %i.xz = extractelement <2 x float> %i.xy, i64 0
  %i.ya = fadd float %i.xz, %i.lu                 ; 52 uses
  %i.yb = extractelement <2 x float> %i.xy, i64 1
  %i.yc = fadd float %i.yb, %i.lu                 ; 52 uses
  %i.yd = fcmp olt float %i.oq, %i.xu             ; 2 uses
  %i.ye = fcmp ogt float %i.tr, %i.xt             ; 2 uses
  %or.cond339.i.i.i = select i1 %i.yd, i1 %i.ye, i1 false
  br i1 %or.cond339.i.i.i, label %bb.co, label %bb.dt

bb.co:                                            ; preds = %bb.cn
  %i.yf = fcmp oeq float %i.ya, %i.lu
  br i1 %i.yf, label %stbtt__handle_clipped_edge.exit365.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.yg = load float, ptr %i.tv, align 4, !tbaa !352 ; 4 uses
  %i.yh = fcmp olt float %i.yg, %i.lu
  br i1 %i.yh, label %stbtt__handle_clipped_edge.exit365.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.yi = load float, ptr %i.tu, align 8, !tbaa !365 ; 4 uses
  %i.yj = fcmp olt float %i.ya, %i.yi
  br i1 %i.yj, label %stbtt__handle_clipped_edge.exit365.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.yk = fcmp ogt float %i.yi, %i.lu
  br i1 %i.yk, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.yl = fsub float %i.yi, %i.lu
  %i.ym = extractelement <2 x float> %i.xx, i64 0
  %i.yn = fmul float %i.ym, %i.yl
  %i.yo = fsub float %i.ya, %i.lu
  %i.yp = fdiv float %i.yn, %i.yo
  %i.yq = fadd float %i.oq, %i.yp
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.055.i359.i.i.i = phi float [ %i.yq, %bb.cs ], [ %i.oq, %bb.cr ] ; 4 uses
  %.054.i360.i.i.i = phi float [ %i.yi, %bb.cs ], [ %i.lu, %bb.cr ] ; 3 uses
  %i.yr = fcmp ogt float %i.ya, %i.yg
  br i1 %i.yr, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.ys = fsub float %i.xu, %.055.i359.i.i.i
  %i.yt = fsub float %i.yg, %i.ya
  %i.yu = fmul float %i.yt, %i.ys
  %i.yv = fsub float %i.ya, %.054.i360.i.i.i
  %i.yw = fdiv float %i.yu, %i.yv
  %i.yx = fadd float %i.yw, %i.xu
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.053.i361.i.i.i = phi float [ %i.yx, %bb.cu ], [ %i.xu, %bb.ct ] ; 3 uses
  %.0.i362.i.i.i = phi float [ %i.yg, %bb.cu ], [ %i.ya, %bb.ct ] ; 2 uses
  %i.yy = fcmp ugt float %.055.i359.i.i.i, %i.xu
  %i.yz = fcmp ugt float %.053.i361.i.i.i, %i.xu
  %or.cond.i363.i.i.i = select i1 %i.yy, i1 true, i1 %i.yz
  br i1 %or.cond.i363.i.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.za = load float, ptr %i.xq, align 4, !tbaa !354
  %i.zb = fsub float %.0.i362.i.i.i, %.054.i360.i.i.i
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.zd = load float, ptr %i.zc, align 4, !tbaa !81
  %i.ze = tail call float @llvm.fmuladd.f32(float %i.za, float %i.zb, float %i.zd)
  store float %i.ze, ptr %i.zc, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit365.i.i.i

bb.cx:                                            ; preds = %bb.cv
  %i.zf = fcmp ult float %.055.i359.i.i.i, %i.xt
  %i.zg = fcmp ult float %.053.i361.i.i.i, %i.xt
  %or.cond62.i364.i.i.i = select i1 %i.zf, i1 true, i1 %i.zg
  br i1 %or.cond62.i364.i.i.i, label %bb.cy, label %stbtt__handle_clipped_edge.exit365.i.i.i

bb.cy:                                            ; preds = %bb.cx
  %i.zh = load float, ptr %i.xq, align 4, !tbaa !354
  %i.zi = fsub float %.0.i362.i.i.i, %.054.i360.i.i.i
  %i.zj = fmul float %i.zi, %i.zh
  %i.zk = fsub float %.055.i359.i.i.i, %i.xu
  %i.zl = fsub float %.053.i361.i.i.i, %i.xu
  %i.zm = fadd float %i.zk, %i.zl
  %i.zn = fmul float %i.zm, 5.000000e-01
  %i.zo = fsub float 1.000000e+00, %i.zn
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.zq = load float, ptr %i.zp, align 4, !tbaa !81
  %i.zr = tail call float @llvm.fmuladd.f32(float %i.zj, float %i.zo, float %i.zq)
  store float %i.zr, ptr %i.zp, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit365.i.i.i

stbtt__handle_clipped_edge.exit365.i.i.i:         ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cq, %bb.cp, %bb.co
  %i.zs = fcmp oeq float %i.ya, %i.yc
  br i1 %i.zs, label %stbtt__handle_clipped_edge.exit372.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %stbtt__handle_clipped_edge.exit365.i.i.i
  %i.zt = load float, ptr %i.tv, align 4, !tbaa !352 ; 4 uses
  %i.zu = fcmp ogt float %i.ya, %i.zt
  br i1 %i.zu, label %stbtt__handle_clipped_edge.exit372.i.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.zv = load float, ptr %i.tu, align 8, !tbaa !365 ; 4 uses
  %i.zw = fcmp olt float %i.yc, %i.zv
  br i1 %i.zw, label %stbtt__handle_clipped_edge.exit372.i.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.zx = fcmp olt float %i.ya, %i.zv
  br i1 %i.zx, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.zy = fsub nnan float %i.xt, %i.xu
  %i.zz = fsub float %i.zv, %i.ya
  %i.aaa = fmul float %i.zy, %i.zz
  %i.aab = fsub float %i.yc, %i.ya
  %i.aac = fdiv float %i.aaa, %i.aab
  %i.aad = fadd float %i.aac, %i.xu
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.055.i366.i.i.i = phi float [ %i.aad, %bb.dc ], [ %i.xu, %bb.db ] ; 4 uses
  %.054.i367.i.i.i = phi float [ %i.zv, %bb.dc ], [ %i.ya, %bb.db ] ; 3 uses
  %i.aae = fcmp ogt float %i.yc, %i.zt
  br i1 %i.aae, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.aaf = fsub float %i.xt, %.055.i366.i.i.i
  %i.aag = fsub float %i.zt, %i.yc
  %i.aah = fmul float %i.aag, %i.aaf
  %i.aai = fsub float %i.yc, %.054.i367.i.i.i
  %i.aaj = fdiv float %i.aah, %i.aai
  %i.aak = fadd float %i.aaj, %i.xt
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.053.i368.i.i.i = phi float [ %i.aak, %bb.de ], [ %i.xt, %bb.dd ] ; 3 uses
  %.0.i369.i.i.i = phi float [ %i.zt, %bb.de ], [ %i.yc, %bb.dd ] ; 2 uses
  %i.aal = fcmp ugt float %.055.i366.i.i.i, %i.xu
  %i.aam = fcmp ugt float %.053.i368.i.i.i, %i.xu
  %or.cond.i370.i.i.i = select i1 %i.aal, i1 true, i1 %i.aam
  br i1 %or.cond.i370.i.i.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.aan = load float, ptr %i.xq, align 4, !tbaa !354
  %i.aao = fsub float %.0.i369.i.i.i, %.054.i367.i.i.i
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !81
  %i.aar = tail call float @llvm.fmuladd.f32(float %i.aan, float %i.aao, float %i.aaq)
  store float %i.aar, ptr %i.aap, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit372.i.i.i

bb.dh:                                            ; preds = %bb.df
  %i.aas = fcmp ult float %.055.i366.i.i.i, %i.xt
  %i.aat = fcmp ult float %.053.i368.i.i.i, %i.xt
  %or.cond62.i371.i.i.i = select i1 %i.aas, i1 true, i1 %i.aat
  br i1 %or.cond62.i371.i.i.i, label %bb.di, label %stbtt__handle_clipped_edge.exit372.i.i.i

bb.di:                                            ; preds = %bb.dh
  %i.aau = load float, ptr %i.xq, align 4, !tbaa !354
  %i.aav = fsub float %.0.i369.i.i.i, %.054.i367.i.i.i
  %i.aaw = fmul float %i.aav, %i.aau
  %i.aax = fsub float %.055.i366.i.i.i, %i.xu
  %i.aay = fsub float %.053.i368.i.i.i, %i.xu
  %i.aaz = fadd float %i.aax, %i.aay
  %i.aba = fmul float %i.aaz, 5.000000e-01
  %i.abb = fsub float 1.000000e+00, %i.aba
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !81
  %i.abe = tail call float @llvm.fmuladd.f32(float %i.aaw, float %i.abb, float %i.abd)
  store float %i.abe, ptr %i.abc, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit372.i.i.i

stbtt__handle_clipped_edge.exit372.i.i.i:         ; preds = %bb.di, %bb.dh, %bb.dg, %bb.da, %bb.cz, %stbtt__handle_clipped_edge.exit365.i.i.i
  %i.abf = fcmp oeq float %i.yc, %i.lv
  br i1 %i.abf, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %stbtt__handle_clipped_edge.exit372.i.i.i
  %i.abg = load float, ptr %i.tv, align 4, !tbaa !352 ; 4 uses
  %i.abh = fcmp ogt float %i.yc, %i.abg
end_hunk_0
begin_hunk_1_@stbtt_Rasterize:bb.a
  %i.arl = fcmp ult float %.055.i443.i.i.i, %i.xt
  %i.arm = fcmp ult float %.053.i445.i.i.i, %i.xt
  %or.cond62.i448.i.i.i = select i1 %i.arl, i1 true, i1 %i.arm
  br i1 %or.cond62.i448.i.i.i, label %bb.hy, label %stbtt__handle_clipped_edge.exit449.i.i.i

bb.hy:                                            ; preds = %bb.hx
  %i.arn = load float, ptr %i.xq, align 4, !tbaa !354
  %i.aro = fsub float %.0.i446.i.i.i, %.054.i444.i.i.i
  %i.arp = fmul float %i.aro, %i.arn
  %i.arq = fsub float %.055.i443.i.i.i, %i.xu
  %i.arr = fsub float %.053.i445.i.i.i, %i.xu
  %i.ars = fadd float %i.arq, %i.arr
  %i.art = fmul float %i.ars, 5.000000e-01
  %i.aru = fsub float 1.000000e+00, %i.art
  %i.arv = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.arw = load float, ptr %i.arv, align 4, !tbaa !81
  %i.arx = tail call float @llvm.fmuladd.f32(float %i.arp, float %i.aru, float %i.arw)
  store float %i.arx, ptr %i.arv, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit449.i.i.i

stbtt__handle_clipped_edge.exit449.i.i.i:         ; preds = %bb.hy, %bb.hx, %bb.hw, %bb.hq, %bb.hp, %bb.ho
  %i.ary = fcmp oeq float %i.yc, %i.lv
  br i1 %i.ary, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.hz

bb.hz:                                            ; preds = %stbtt__handle_clipped_edge.exit449.i.i.i
  %i.arz = load float, ptr %i.tv, align 4, !tbaa !352 ; 4 uses
  %i.asa = fcmp ogt float %i.yc, %i.arz
  br i1 %i.asa, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.asb = load float, ptr %i.tu, align 8, !tbaa !365 ; 4 uses
  %i.asc = fcmp olt float %i.lv, %i.asb
  br i1 %i.asc, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.asd = fcmp olt float %i.yc, %i.asb
  br i1 %i.asd, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.ase = fsub float %i.tr, %i.xt
  %i.asf = fsub float %i.asb, %i.yc
  %i.asg = fmul float %i.ase, %i.asf
  %i.ash = fsub float %i.lv, %i.yc
  %i.asi = fdiv float %i.asg, %i.ash
  %i.asj = fadd float %i.asi, %i.xt
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib
  %.055.i450.i.i.i = phi float [ %i.asj, %bb.ic ], [ %i.xt, %bb.ib ] ; 4 uses
  %.054.i451.i.i.i = phi float [ %i.asb, %bb.ic ], [ %i.yc, %bb.ib ] ; 3 uses
  %i.ask = fcmp ogt float %i.lv, %i.arz
  br i1 %i.ask, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  %i.asl = fsub float %i.tr, %.055.i450.i.i.i
  %i.asm = fsub float %i.arz, %i.lv
  %i.asn = fmul float %i.asm, %i.asl
  %i.aso = fsub float %i.lv, %.054.i451.i.i.i
  %i.asp = fdiv float %i.asn, %i.aso
  %i.asq = fadd float %i.tr, %i.asp
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  %.053.i452.i.i.i = phi float [ %i.asq, %bb.ie ], [ %i.tr, %bb.id ] ; 3 uses
  %.0.i453.i.i.i = phi float [ %i.arz, %bb.ie ], [ %i.lv, %bb.id ] ; 2 uses
  %i.asr = fcmp ugt float %.055.i450.i.i.i, %i.xu
  %i.ass = fcmp ugt float %.053.i452.i.i.i, %i.xu
  %or.cond.i454.i.i.i = select i1 %i.asr, i1 true, i1 %i.ass
  br i1 %or.cond.i454.i.i.i, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.ast = load float, ptr %i.xq, align 4, !tbaa !354
  %i.asu = fsub float %.0.i453.i.i.i, %.054.i451.i.i.i
  %i.asv = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.asw = load float, ptr %i.asv, align 4, !tbaa !81
  %i.asx = tail call float @llvm.fmuladd.f32(float %i.ast, float %i.asu, float %i.asw)
  store float %i.asx, ptr %i.asv, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.ih:                                            ; preds = %bb.if
  %i.asy = fcmp ult float %.055.i450.i.i.i, %i.xt
  %i.asz = fcmp ult float %.053.i452.i.i.i, %i.xt
  %or.cond62.i455.i.i.i = select i1 %i.asy, i1 true, i1 %i.asz
  br i1 %or.cond62.i455.i.i.i, label %bb.ii, label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.ii:                                            ; preds = %bb.ih
  %i.ata = load float, ptr %i.xq, align 4, !tbaa !354
  %i.atb = fsub float %.0.i453.i.i.i, %.054.i451.i.i.i
  %i.atc = fmul float %i.atb, %i.ata
  %i.atd = fsub float %.055.i450.i.i.i, %i.xu
  %i.ate = fsub float %.053.i452.i.i.i, %i.xu
  %i.atf = fadd float %i.atd, %i.ate
  %i.atg = fmul float %i.atf, 5.000000e-01
  %i.ath = fsub float 1.000000e+00, %i.atg
  %i.ati = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.atj = load float, ptr %i.ati, align 4, !tbaa !81
  %i.atk = tail call float @llvm.fmuladd.f32(float %i.atc, float %i.ath, float %i.atj)
  store float %i.atk, ptr %i.ati, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.ij:                                            ; preds = %bb.hn
  br i1 %i.ok, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.atl = load float, ptr %i.tv, align 4, !tbaa !352 ; 4 uses
  %i.atm = fcmp olt float %i.atl, %i.lu
  br i1 %i.atm, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.atn = load float, ptr %i.tu, align 8, !tbaa !365 ; 4 uses
  %i.ato = fcmp olt float %i.lv, %i.atn
  br i1 %i.ato, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.atp = fcmp ogt float %i.atn, %i.lu           ; 2 uses
  %i.atq = fsub float %i.atn, %i.lu
  %i.atr = fmul float %i.xp, %i.atq
  %i.ats = fdiv float %i.atr, %i.ol
  %i.att = fadd float %i.oq, %i.ats
  %.055.i457.i.i.i = select i1 %i.atp, float %i.att, float %i.oq ; 4 uses
  %.054.i458.i.i.i = select i1 %i.atp, float %i.atn, float %i.lu ; 3 uses
  %i.atu = fcmp ogt float %i.lv, %i.atl
  br i1 %i.atu, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  %i.atv = fsub float %i.tr, %.055.i457.i.i.i
  %i.atw = fsub float %i.atl, %i.lv
  %i.atx = fmul float %i.atw, %i.atv
  %i.aty = fsub float %i.lv, %.054.i458.i.i.i
  %i.atz = fdiv float %i.atx, %i.aty
  %i.aua = fadd float %i.tr, %i.atz
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  %.053.i459.i.i.i = phi float [ %i.aua, %bb.in ], [ %i.tr, %bb.im ] ; 3 uses
  %.0.i460.i.i.i = phi float [ %i.atl, %bb.in ], [ %i.lv, %bb.im ] ; 2 uses
  %i.aub = fcmp ugt float %.055.i457.i.i.i, %i.xu
  %i.auc = fcmp ugt float %.053.i459.i.i.i, %i.xu
  %or.cond.i461.i.i.i = select i1 %i.aub, i1 true, i1 %i.auc
  br i1 %or.cond.i461.i.i.i, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.aud = load float, ptr %i.xq, align 4, !tbaa !354
  %i.aue = fsub float %.0.i460.i.i.i, %.054.i458.i.i.i
  %i.auf = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.aug = load float, ptr %i.auf, align 4, !tbaa !81
  %i.auh = tail call float @llvm.fmuladd.f32(float %i.aud, float %i.aue, float %i.aug)
  store float %i.auh, ptr %i.auf, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.iq:                                            ; preds = %bb.io
  %i.aui = fcmp ult float %.055.i457.i.i.i, %i.xt
  %i.auj = fcmp ult float %.053.i459.i.i.i, %i.xt
  %or.cond62.i462.i.i.i = select i1 %i.aui, i1 true, i1 %i.auj
  br i1 %or.cond62.i462.i.i.i, label %bb.ir, label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.ir:                                            ; preds = %bb.iq
  %i.auk = load float, ptr %i.xq, align 4, !tbaa !354
  %i.aul = fsub float %.0.i460.i.i.i, %.054.i458.i.i.i
  %i.aum = fmul float %i.aul, %i.auk
  %i.aun = fsub float %.055.i457.i.i.i, %i.xu
  %i.auo = fsub float %.053.i459.i.i.i, %i.xu
  %i.aup = fadd float %i.aun, %i.auo
  %i.auq = fmul float %i.aup, 5.000000e-01
  %i.aur = fsub float 1.000000e+00, %i.auq
  %i.aus = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i95.i ; 2 uses
  %i.aut = load float, ptr %i.aus, align 4, !tbaa !81
  %i.auu = tail call float @llvm.fmuladd.f32(float %i.aum, float %i.aur, float %i.aut)
  store float %i.auu, ptr %i.aus, align 4, !tbaa !81
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

stbtt__handle_clipped_edge.exit379.i.i.i:         ; preds = %bb.ir, %bb.iq, %bb.ip, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %bb.ia, %bb.hz, %stbtt__handle_clipped_edge.exit449.i.i.i, %bb.hm, %bb.hl, %bb.hk, %bb.he, %bb.hd, %stbtt__handle_clipped_edge.exit435.i.i.i, %bb.gq, %bb.gp, %bb.go, %bb.gi, %bb.gh, %stbtt__handle_clipped_edge.exit421.i.i.i, %bb.fu, %bb.ft, %bb.fs, %bb.fm, %bb.fl, %stbtt__handle_clipped_edge.exit407.i.i.i, %bb.ey, %bb.ex, %bb.ew, %bb.eq, %bb.ep, %stbtt__handle_clipped_edge.exit393.i.i.i, %bb.ds, %bb.dr, %bb.dq, %bb.dk, %bb.dj, %stbtt__handle_clipped_edge.exit372.i.i.i
  %exitcond.not.i.i97.i = icmp eq i64 %indvars.iv.next.i.i96.i, %wide.trip.count.i.i93.i
  br i1 %exitcond.not.i.i97.i, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.cn, !llvm.loop !343

stbtt__handle_clipped_edge.exit351.i.i.i:         ; preds = %stbtt__handle_clipped_edge.exit379.i.i.i, %bb.cm, %._crit_edge.i.i.i, %bb.ci, %bb.ce, %bb.cd, %bb.cc, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bl, %bb.bk, %bb.az, %bb.ax
  %i.auv = load ptr, ptr %.0293468.i.i.i, align 8, !tbaa !353 ; 2 uses
  %.not.i96.i.i = icmp eq ptr %i.auv, null
  br i1 %.not.i96.i.i, label %stbtt__fill_active_edges_new.exit.i.i, label %bb.aw, !llvm.loop !344

stbtt__fill_active_edges_new.exit.i.i:            ; preds = %stbtt__handle_clipped_edge.exit351.i.i.i, %._crit_edge.i.i
  %i.auw = icmp sgt i32 %.pre136.i.i, 0
  br i1 %i.auw, label %.lr.ph119.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph119.i.i, %stbtt__fill_active_edges_new.exit.i.i
  %i.aux = phi i32 [ %.pre136.i.i, %stbtt__fill_active_edges_new.exit.i.i ], [ %i.avp, %.lr.ph119.i.i ]
  br i1 %.not93.i.i, label %._crit_edge122.i.i, label %.lr.ph121.i.i

.lr.ph119.i.i:                                    ; preds = %stbtt__fill_active_edges_new.exit.i.i, %.lr.ph119.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph119.i.i ], [ 0, %stbtt__fill_active_edges_new.exit.i.i ] ; 4 uses
  %.079118.i.i = phi float [ %i.ava, %.lr.ph119.i.i ], [ 0.000000e+00, %stbtt__fill_active_edges_new.exit.i.i ]
  %i.auy = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv.i.i
  %i.auz = load float, ptr %i.auy, align 4, !tbaa !81
  %i.ava = fadd float %.079118.i.i, %i.auz        ; 2 uses
  %i.avb = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i
  %i.avc = load float, ptr %i.avb, align 4, !tbaa !81
  %i.avd = fadd float %i.avc, %i.ava
  %i.ave = tail call float @llvm.fabs.f32(float %i.avd)
  %i.avf = tail call float @llvm.fmuladd.f32(float %i.ave, float 2.550000e+02, float 5.000000e-01)
  %i.avg = fptosi float %i.avf to i32
  %spec.store.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.avg, i32 255)
  %i.avh = trunc i32 %spec.store.select.i.i to i8
  %i.avi = load ptr, ptr %i.lr, align 8, !tbaa !90
  %i.avj = load i32, ptr %i.ls, align 8, !tbaa !91
  %i.avk = mul nsw i32 %i.avj, %.078126.i.i
  %i.avl = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.avm = add nsw i32 %i.avk, %i.avl
  %i.avn = sext i32 %i.avm to i64
  %i.avo = getelementptr inbounds i8, ptr %i.avi, i64 %i.avn
  store i8 %i.avh, ptr %i.avo, align 1, !tbaa !38
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.avp = load i32, ptr %0, align 8, !tbaa !88   ; 2 uses
  %i.avq = sext i32 %i.avp to i64
  %i.avr = icmp slt i64 %indvars.iv.next.i.i, %i.avq
  br i1 %i.avr, label %.lr.ph119.i.i, label %.preheader.i.i, !llvm.loop !345

.lr.ph121.i.i:                                    ; preds = %.preheader.i.i, %.lr.ph121.i.i
  %i.avs = phi ptr [ %i.avw, %.lr.ph121.i.i ], [ %.0..0..0..0..0..0..0..0.84.i.i, %.preheader.i.i ] ; 2 uses
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avs, i64 8 ; 2 uses
  %i.avu = load <2 x float>, ptr %i.avt, align 8, !tbaa !81
  %i.avv = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.avu)
  store float %i.avv, ptr %i.avt, align 8, !tbaa !363
  %i.avw = load ptr, ptr %i.avs, align 8, !tbaa !350 ; 2 uses
  %.not94.i.i = icmp eq ptr %i.avw, null
  br i1 %.not94.i.i, label %._crit_edge122.i.i, label %.lr.ph121.i.i, !llvm.loop !346

._crit_edge122.i.i:                               ; preds = %.lr.ph121.i.i, %.preheader.i.i
  %i.avx = add nsw i32 %.077127.i.i, 1
  %i.avy = add nuw nsw i32 %.078126.i.i, 1        ; 2 uses
  %i.avz = load i32, ptr %i.ld, align 4, !tbaa !89
  %i.awa = icmp slt i32 %i.avy, %i.avz
  br i1 %i.awa, label %bb.ag, label %stbtt__rasterize_sorted_edges.exit.i, !llvm.loop !347

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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.ai = shufflevector <4 x i32> %i.ah, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %i.aj = shufflevector <4 x i32> %i.ah, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.ak = sub nsw <2 x i32> %i.ai, %i.aj          ; 2 uses
  %i.al = extractelement <2 x i32> %i.ak, i64 1   ; 3 uses
  %i.am = extractelement <2 x i32> %i.ak, i64 0   ; 4 uses
  store i32 %i.am, ptr %10, align 8, !tbaa !88
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.al, ptr %i.an, align 4, !tbaa !89
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %stbtt_GetGlyphBitmapBoxSubpixel.exit
  store i32 %i.am, ptr %6, align 4, !tbaa !70
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %stbtt_GetGlyphBitmapBoxSubpixel.exit
  %.not42 = icmp eq ptr %7, null
  br i1 %.not42, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.al, ptr %7, align 4, !tbaa !70
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not43 = icmp eq ptr %8, null
  br i1 %.not43, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = extractelement <4 x i32> %i.ah, i64 2
  store i32 %i.ap, ptr %8, align 4, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not44 = icmp eq ptr %9, null
  br i1 %.not44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = extractelement <4 x i32> %i.ah, i64 3
  store i32 %i.aq, ptr %9, align 4, !tbaa !70
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ar = extractelement <4 x i32> %i.ah, i64 0
  %i.as = extractelement <4 x i32> %i.ah, i64 2   ; 2 uses
  %i.at = icmp ne i32 %i.ar, %i.as
  %i.au = extractelement <4 x i32> %i.ah, i64 1
  %i.av = extractelement <4 x i32> %i.ah, i64 3   ; 2 uses
  %i.aw = icmp ne i32 %i.au, %i.av
  %or.cond = select i1 %i.at, i1 %i.aw, i1 false
  br i1 %or.cond, label %bb.l, label %fons__tmpalloc.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ax = mul nsw i32 %i.al, %i.am
  %i.ay = load ptr, ptr %0, align 8, !tbaa !46    ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 20616 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !53 ; 2 uses
  %i.bb = add i32 %i.ax, 15
  %i.bc = and i32 %i.bb, -16
  %i.bd = add nsw i32 %i.ba, %i.bc                ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 96000
  br i1 %i.be, label %bb.m, label %fons__tmpalloc.exit

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 21104
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !54 ; 2 uses
  %.not.i46 = icmp eq ptr %i.bg, null
  br i1 %.not.i46, label %fons__tmpalloc.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 21112
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !55
  call void %i.bg(ptr noundef %i.bi, i32 noundef 2, i32 noundef %i.bd) #40, !inline_history !1
  br label %fons__tmpalloc.exit.thread

fons__tmpalloc.exit:                              ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 20608
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !56 ; 2 uses
  %i.bl = sext i32 %i.ba to i64
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 %i.bl ; 2 uses
  store i32 %i.bd, ptr %i.az, align 8, !tbaa !53
  store ptr %i.bm, ptr %i.ao, align 8, !tbaa !90
  %.not45 = icmp eq ptr %i.bk, null
  br i1 %.not45, label %fons__tmpalloc.exit.thread, label %bb.o

bb.o:                                             ; preds = %fons__tmpalloc.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %i.am, ptr %i.bn, align 8, !tbaa !91
  %i.bo = load ptr, ptr %i.e, align 8, !tbaa !45
  %i.bp = extractelement <2 x float> %i.l, i64 0
  %i.bq = extractelement <2 x float> %i.l, i64 1
  call void @stbtt_Rasterize(ptr noundef nonnull %10, float noundef 3.500000e-01, ptr noundef %i.bo, i32 noundef %i.f, float noundef %i.bp, float noundef %i.bq, float noundef %3, float noundef %4, i32 noundef %i.as, i32 noundef %i.av, i32 noundef 1, ptr noundef nonnull %i.ay)
  br label %fons__tmpalloc.exit.thread
end_hunk_1
begin_hunk_2_@nvg__bevelJoin:bb.a
  %i.ci = extractelement <2 x float> %i.ch, i64 0
  store float %i.ci, ptr %i.ce, align 4, !tbaa !278
  %i.cj = extractelement <2 x float> %i.ch, i64 1
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  %i.ck = fneg float %3                           ; 3 uses
  %.not.i190 = icmp eq i32 %i.j, 0
  %i.cl = load float, ptr %1, align 4, !tbaa !269 ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br i1 %.not.i190, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !270 ; 3 uses
  %i.co = insertelement <2 x float> poison, float %.12.val, i64 0
  %i.cp = insertelement <2 x float> %i.co, float %.8.val, i64 1
  %i.cq = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %3, i64 1
  %i.cs = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.cn, i64 1
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %i.cr, <2 x float> %i.ct)
  %i.cv = insertelement <2 x float> poison, float %3, i64 0
  %i.cw = insertelement <2 x float> %i.cv, float %i.ck, i64 1
  %i.cx = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cl, i64 1
  %i.cz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.c, <2 x float> %i.cw, <2 x float> %i.cy)
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %nvg__chooseBevel.exit192

bb.j:                                             ; preds = %bb.h
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dc = load float, ptr %i.cm, align 4, !tbaa !270 ; 2 uses
  %i.dd = load <2 x float>, ptr %i.db, align 4, !tbaa !81
  %i.de = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %i.dc, i64 1
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.df, <2 x float> %i.dh) ; 2 uses
  br label %nvg__chooseBevel.exit192

nvg__chooseBevel.exit192:                         ; preds = %bb.i, %bb.j
  %i.dj = phi float [ %i.dc, %bb.j ], [ %i.cn, %bb.i ] ; 3 uses
  %i.dk = phi <2 x float> [ %i.di, %bb.j ], [ %i.da, %bb.i ] ; 3 uses
  %i.dl = phi <2 x float> [ %i.di, %bb.j ], [ %i.cu, %bb.i ] ; 2 uses
  %i.dm = insertelement <2 x float> poison, float %.12.val, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.a, i64 1
  %i.do = insertelement <2 x float> poison, float %2, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dq = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.dr = insertelement <2 x float> %i.dq, float %i.dj, i64 1 ; 3 uses
  %i.ds = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.dp, <2 x float> %i.dr) ; 4 uses
  store <2 x float> %i.ds, ptr %0, align 4, !tbaa !81
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %4, ptr %i.dt, align 4, !tbaa !282
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 1.000000e+00, ptr %i.du, align 4, !tbaa !283
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.dl, ptr %i.dv, align 4, !tbaa !81
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %5, ptr %i.dw, align 4, !tbaa !282
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 1.000000e+00, ptr %i.dx, align 4, !tbaa !283
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dz = and i8 %i.g, 4
  %.not188 = icmp eq i8 %i.dz, 0
  br i1 %.not188, label %bb.l, label %bb.k

bb.k:                                             ; preds = %nvg__chooseBevel.exit192
  %i.ea = extractelement <2 x float> %i.ds, i64 0
  store float %i.ea, ptr %i.dy, align 4, !tbaa !278
  %i.eb = extractelement <2 x float> %i.dk, i64 0
  %i.ec = extractelement <2 x float> %i.dk, i64 1
  %i.ed = extractelement <2 x float> %i.ds, i64 1
  br label %bb.m

bb.l:                                             ; preds = %nvg__chooseBevel.exit192
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ef = load <2 x float>, ptr %i.ee, align 4, !tbaa !81
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.dp, <2 x float> %i.dr) ; 3 uses
  store <2 x float> %i.ds, ptr %i.dy, align 4, !tbaa !81
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %4, ptr %i.eh, align 4, !tbaa !282
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float 1.000000e+00, ptr %i.ei, align 4, !tbaa !283
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.cl, ptr %i.ej, align 4, !tbaa !278
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.el = shufflevector <2 x float> %i.eg, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.em = shufflevector <4 x float> %i.el, <4 x float> <float poison, float 5.000000e-01, float 1.000000e+00, float poison>, <4 x i32> <i32 poison, i32 5, i32 6, i32 3>
  %i.en = insertelement <4 x float> %i.em, float %i.dj, i64 0
  store <4 x float> %i.en, ptr %i.ek, align 4, !tbaa !81
  %i.eo = extractelement <2 x float> %i.eg, i64 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink113 = phi i64 [ 68, %bb.l ], [ 36, %bb.k ]
  %.sink111 = phi float [ %i.eo, %bb.l ], [ %i.ed, %bb.k ]
  %.sink110 = phi i64 [ 72, %bb.l ], [ 40, %bb.k ]
  %.sink108 = phi i64 [ 76, %bb.l ], [ 44, %bb.k ]
  %.sink106 = phi i64 [ 80, %bb.l ], [ 48, %bb.k ]
  %.sink103 = phi i64 [ 84, %bb.l ], [ 52, %bb.k ]
  %.sink100 = phi i64 [ 88, %bb.l ], [ 56, %bb.k ]
  %.sink98 = phi float [ %4, %bb.l ], [ %5, %bb.k ]
  %.sink97 = phi i64 [ 92, %bb.l ], [ 60, %bb.k ]
  %.sink95 = phi i64 [ 96, %bb.l ], [ 64, %bb.k ]
  %.sink92 = phi i64 [ 100, %bb.l ], [ 68, %bb.k ]
  %.sink89 = phi i64 [ 104, %bb.l ], [ 72, %bb.k ]
  %.sink87 = phi i64 [ 108, %bb.l ], [ 76, %bb.k ]
  %.sink85 = phi i64 [ 112, %bb.l ], [ 80, %bb.k ]
  %.sink83 = phi float [ %i.cl, %bb.l ], [ %i.eb, %bb.k ]
  %.sink82 = phi i64 [ 116, %bb.l ], [ 84, %bb.k ]
  %.sink80 = phi float [ %i.dj, %bb.l ], [ %i.ec, %bb.k ]
  %.sink79 = phi i64 [ 120, %bb.l ], [ 88, %bb.k ]
  %.sink77 = phi float [ 5.000000e-01, %bb.l ], [ %5, %bb.k ]
  %.sink76 = phi i64 [ 124, %bb.l ], [ 92, %bb.k ]
  %.sink74 = phi i64 [ 128, %bb.l ], [ 96, %bb.k ]
  %i.ep = phi <2 x float> [ %i.eg, %bb.l ], [ %i.dl, %bb.k ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 %.sink113
  store float %.sink111, ptr %i.eq, align 4, !tbaa !281
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 %.sink110
  store float %4, ptr %i.er, align 4, !tbaa !282
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 %.sink108
  store float 1.000000e+00, ptr %i.es, align 4, !tbaa !283
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 %.sink106
  %i.eu = extractelement <2 x float> %i.ep, i64 0
  store float %i.eu, ptr %i.et, align 4, !tbaa !278
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 %.sink103
  %i.ew = extractelement <2 x float> %i.ep, i64 1
  store float %i.ew, ptr %i.ev, align 4, !tbaa !281
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 %.sink100
  store float %.sink98, ptr %i.ex, align 4, !tbaa !282
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 %.sink97
  store float 1.000000e+00, ptr %i.ey, align 4, !tbaa !283
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 %.sink95
  %i.fa = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fb = insertelement <2 x float> %i.fa, float %i.e, i64 1
  %i.fc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.dp, <2 x float> %i.dr) ; 3 uses
  %i.fd = extractelement <2 x float> %i.fc, i64 0
  store float %i.fd, ptr %i.ez, align 4, !tbaa !278
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 %.sink92
  %i.ff = extractelement <2 x float> %i.fc, i64 1
  store float %i.ff, ptr %i.fe, align 4, !tbaa !281
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 %.sink89
  store float %4, ptr %i.fg, align 4, !tbaa !282
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 %.sink87
  store float 1.000000e+00, ptr %i.fh, align 4, !tbaa !283
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 %.sink85
  store float %.sink83, ptr %i.fi, align 4, !tbaa !278
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.g
  %.sink82.sink = phi i64 [ %.sink82, %bb.m ], [ %.sink40, %bb.g ]
  %.sink80.sink = phi float [ %.sink80, %bb.m ], [ %i.cj, %bb.g ]
  %.sink79.sink = phi i64 [ %.sink79, %bb.m ], [ %.sink37, %bb.g ]
  %.sink77.sink = phi float [ %.sink77, %bb.m ], [ %5, %bb.g ]
  %.sink76.sink = phi i64 [ %.sink76, %bb.m ], [ %.sink35, %bb.g ]
  %.sink74.sink = phi i64 [ %.sink74, %bb.m ], [ %.sink, %bb.g ]
  %i.fj = phi <2 x float> [ %i.fc, %bb.m ], [ %i.ag, %bb.g ]
  %i.fk = phi <2 x float> [ %i.dk, %bb.m ], [ %i.ch, %bb.g ]
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 %.sink82.sink
  store float %.sink80.sink, ptr %i.fl, align 4, !tbaa !281
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 %.sink79.sink
  store float %.sink77.sink, ptr %i.fm, align 4, !tbaa !282
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 %.sink76.sink
  store float 1.000000e+00, ptr %i.fn, align 4, !tbaa !283
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 %.sink74.sink ; 7 uses
  store <2 x float> %i.fj, ptr %i.fo, align 4, !tbaa !81
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store float %4, ptr %i.fp, align 4, !tbaa !282
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  store float 1.000000e+00, ptr %i.fq, align 4, !tbaa !283
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store <2 x float> %i.fk, ptr %i.fr, align 4, !tbaa !81
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  store float %5, ptr %i.fs, align 4, !tbaa !282
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 28
  store float 1.000000e+00, ptr %i.ft, align 4, !tbaa !283
  %.2 = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  ret ptr %.2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #8

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #8

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #39 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { nounwind allocsize(0) }
attributes #43 = { nounwind allocsize(1) }

!llvm.module.flags = !{!23, !24, !25}
!llvm.ident = !{!26}
!llvm.errno.tbaa = !{!31}

!0 = distinct !{!0, !39}
!1 = distinct !{null}
!2 = distinct !{!2, !39}
!3 = distinct !{!3, !39}
!4 = distinct !{!4, !39}
!5 = distinct !{!5, !39}
!6 = distinct !{!6, !39}
!7 = distinct !{!7, !39}
!8 = distinct !{!8, !39}
!9 = distinct !{!9, !39}
!10 = distinct !{!10, !39}
!11 = distinct !{!11, !39}
!12 = distinct !{!12, !39}
!13 = distinct !{!13, !39}
!14 = distinct !{!14, !39}
!15 = distinct !{!15, !39}
!16 = distinct !{!16, !39}
!17 = distinct !{!17, !39}
!18 = distinct !{!18, !39}
!19 = distinct !{!19, !39}
!20 = distinct !{null}
!21 = distinct !{!21, !39}
!22 = distinct !{null}
!23 = !{i32 8, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 2}
!26 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !{!"omnipotent char", !27, i64 0}
!29 = !{!"int", !28, i64 0}
!30 = !{!"__libc_errno", !29, i64 0}
!31 = !{!30, !29, i64 0}
!32 = !{!"any pointer", !28, i64 0}
!33 = !{!"p1 omnipotent char", !32, i64 0}
!34 = !{!"", !33, i64 0, !29, i64 8, !29, i64 12}
!35 = !{!"stbtt_fontinfo", !32, i64 0, !33, i64 8, !29, i64 16, !29, i64 20, !29, i64 24, !29, i64 28, !29, i64 32, !29, i64 36, !29, i64 40, !29, i64 44, !29, i64 48, !29, i64 52, !29, i64 56, !29, i64 60, !34, i64 64, !34, i64 80, !34, i64 96, !34, i64 112, !34, i64 128, !34, i64 144}
!36 = !{!35, !33, i64 8}
!37 = !{!35, !29, i64 56}
!38 = !{!28, !28, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!35, !29, i64 76}
!41 = !{!35, !29, i64 20}
!42 = !{!35, !29, i64 60}
!43 = !{!35, !29, i64 32}
!44 = !{!35, !29, i64 24}
!45 = !{!32, !32, i64 0}
!46 = !{!35, !32, i64 0}
!47 = !{!"FONSparams", !29, i64 0, !29, i64 4, !28, i64 8, !32, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !32, i64 56}
!48 = !{!"float", !28, i64 0}
!49 = !{!"any p2 pointer", !32, i64 0}
!50 = !{!"p2 _ZTS8FONSfont", !49, i64 0}
!51 = !{!"p1 _ZTS9FONSatlas", !32, i64 0}
!52 = !{!"FONScontext", !47, i64 0, !48, i64 64, !48, i64 68, !33, i64 72, !28, i64 80, !50, i64 96, !51, i64 104, !29, i64 112, !29, i64 116, !28, i64 120, !28, i64 8312, !28, i64 16504, !29, i64 20600, !33, i64 20608, !29, i64 20616, !28, i64 20620, !29, i64 21100, !32, i64 21104, !32, i64 21112}
!53 = !{!52, !29, i64 20616}
!54 = !{!52, !32, i64 21104}
!55 = !{!52, !32, i64 21112}
!56 = !{!52, !33, i64 20608}
!57 = !{!"short", !28, i64 0}
!58 = !{!"", !57, i64 0, !57, i64 2, !57, i64 4, !57, i64 6, !57, i64 8, !57, i64 10, !28, i64 12, !28, i64 13}
!59 = !{!58, !28, i64 12}
!60 = !{!58, !57, i64 0}
!61 = !{!58, !57, i64 2}
!62 = !{!58, !57, i64 4}
!63 = !{!58, !57, i64 6}
!64 = !{!57, !57, i64 0}
!65 = !{!"llvm.loop.isvectorized", i32 1}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = !{!"", !29, i64 0, !29, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !29, i64 24, !29, i64 28, !29, i64 32, !29, i64 36, !32, i64 40, !29, i64 48}
!68 = !{!67, !29, i64 48}
!69 = !{!67, !32, i64 40}
!70 = !{!29, !29, i64 0}
!71 = !{!35, !29, i64 36}
!72 = !{!35, !29, i64 40}
!73 = !{!35, !29, i64 44}
!74 = !{!35, !29, i64 48}
!75 = !{!35, !29, i64 16}
!76 = !{!35, !29, i64 28}
!77 = !{!35, !29, i64 52}
!78 = !{!33, !33, i64 0}
!79 = !{!58, !57, i64 8}
!80 = !{!58, !57, i64 10}
!81 = !{!48, !48, i64 0}
!82 = !{!"", !48, i64 0, !48, i64 4}
!83 = !{!82, !48, i64 4}
!84 = !{!"stbtt__edge", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !29, i64 16}
!85 = !{!84, !48, i64 4}
!86 = !{i64 0, i64 4, !81, i64 4, i64 4, !81, i64 8, i64 4, !81, i64 12, i64 4, !81, i64 16, i64 4, !70}
!87 = !{!"", !29, i64 0, !29, i64 4, !29, i64 8, !33, i64 16}
!88 = !{!87, !29, i64 0}
!89 = !{!87, !29, i64 4}
end_hunk_2
