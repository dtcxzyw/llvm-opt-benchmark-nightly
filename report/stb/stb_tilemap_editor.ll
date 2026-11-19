Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_tilemap_editor?download=true
inline.NumInlined: 201
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 29
begin_hunk_0_@stbte__copy_cut:bb.a
  %.011.i = phi i32 [ 0, %bb.d ], [ 0, %bb.b ], [ %i.c, %bb.a ], [ 0, %bb.c ], [ 1, %.preheader.i ], [ 1, %bb.e ], [ 0, %bb.f ], [ 0, %.lr.ph.i ]
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5296), align 8, !tbaa !97
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.bh, label %bb.g

bb.g:                                             ; preds = %stbte__should_copy_properties.exit
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5308), align 4, !tbaa !99 ; 9 uses
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5300), align 4, !tbaa !98 ; 8 uses
  %i.v = sub nsw i32 %i.t, %i.u                   ; 3 uses
  %i.w = add nsw i32 %i.v, 1                      ; 3 uses
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5312), align 8, !tbaa !101 ; 7 uses
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5304), align 8, !tbaa !100 ; 8 uses
  %i.z = sub nsw i32 %i.x, %i.y                   ; 2 uses
  %i.aa = add nsw i32 %i.z, 1                     ; 2 uses
  %i.ab = sdiv i32 65536, %i.w
  %.not72 = icmp sgt i32 %i.ab, %i.z
  br i1 %.not72, label %.preheader86, label %bb.h

.preheader86:                                     ; preds = %bb.g
  %i.ac = mul nsw i32 %i.aa, %i.w                 ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.preheader85.lr.ph, label %._crit_edge89.split

.preheader85.lr.ph:                               ; preds = %.preheader86
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 800008
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !41 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.preheader85.preheader, label %._crit_edge89.split

.preheader85.preheader:                           ; preds = %.preheader85.lr.ph
  %i.ah = shl nuw i32 %i.af, 1
  %i.ai = zext i32 %i.ah to i64                   ; 9 uses
  %wide.trip.count = zext nneg i32 %i.ac to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.aj = icmp ult i32 %i.ac, 8
  br i1 %i.aj, label %.preheader85.epil.preheader, label %.preheader85.preheader.new

.preheader85.preheader.new:                       ; preds = %.preheader85.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.preheader85

bb.h:                                             ; preds = %bb.g
  store ptr @.str.3, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5352), align 8, !tbaa !81
  store float 3.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5348), align 4, !tbaa !114
  br label %bb.bh

.preheader85:                                     ; preds = %.preheader85, %.preheader85.preheader.new
  %indvars.iv = phi i64 [ 0, %.preheader85.preheader.new ], [ %indvars.iv.next.7, %.preheader85 ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader85.preheader.new ], [ %niter.next.7, %.preheader85 ]
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvars.iv
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ak, i8 -1, i64 %i.ai, i1 false), !tbaa !35
  %i.al = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.am, i8 -1, i64 %i.ai, i1 false), !tbaa !35
  %i.an = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ao, i8 -1, i64 %i.ai, i1 false), !tbaa !35
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aq, i8 -1, i64 %i.ai, i1 false), !tbaa !35
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvars.iv
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.as, i8 -1, i64 %i.ai, i1 false), !tbaa !35
  %i.at = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.au, i8 -1, i64 %i.ai, i1 false), !tbaa !35
  %i.av = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aw, i8 -1, i64 %i.ai, i1 false), !tbaa !35
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ay, i8 -1, i64 %i.ai, i1 false), !tbaa !35
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge89.split.loopexit.unr-lcssa, label %.preheader85, !llvm.loop !179

._crit_edge89.split.loopexit.unr-lcssa:           ; preds = %.preheader85
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge89.split, label %.preheader85.epil.preheader

.preheader85.epil.preheader:                      ; preds = %._crit_edge89.split.loopexit.unr-lcssa, %.preheader85.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader85.preheader ], [ %indvars.iv.next.7, %._crit_edge89.split.loopexit.unr-lcssa ]
  %lcmp.mod336 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod336)
  br label %.preheader85.epil

.preheader85.epil:                                ; preds = %.preheader85.epil, %.preheader85.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.preheader85.epil.preheader ], [ %indvars.iv.next.epil, %.preheader85.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader85.epil.preheader ], [ %epil.iter.next, %.preheader85.epil ]
  %i.az = getelementptr inbounds nuw [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvars.iv.epil
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.az, i8 -1, i64 %i.ai, i1 false), !tbaa !35
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge89.split, label %.preheader85.epil, !llvm.loop !180

._crit_edge89.split:                              ; preds = %._crit_edge89.split.loopexit.unr-lcssa, %.preheader85.epil, %.preheader85.lr.ph, %.preheader86
  %.not73 = icmp eq i32 %1, 0                     ; 3 uses
  br i1 %.not73, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge89.split
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 801052
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 801044 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !77 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 805160
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !40
  %i.bf = sext i32 %i.bc to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.bf
  store i16 -2, ptr %i.bg, align 2, !tbaa !35
  %i.bh = add nsw i32 %i.bc, 1
  %i.bi = and i32 %i.bh, 8388607
  store i32 %i.bi, ptr %i.bb, align 4, !tbaa !77
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 801048 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !78 ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 8388606
  %i.bm = zext i1 %i.bl to i32
  %i.bn = add nsw i32 %i.bk, %i.bm
  store i32 %i.bn, ptr %i.bj, align 8, !tbaa !78
  store i32 0, ptr %i.ba, align 4, !tbaa !79
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 800876
  store i8 0, ptr %i.bo, align 4, !tbaa !51
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !80
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5352), align 8, !tbaa !81
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge89.split
  %.not74115 = icmp sgt i32 %i.y, %i.x
  br i1 %.not74115, label %._crit_edge118.split, label %.preheader84.lr.ph

.preheader84.lr.ph:                               ; preds = %bb.j
  %.not7594 = icmp sgt i32 %i.u, %i.t
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 801040
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 800044 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 800896 ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 801044 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 805160 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 801048 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 801052 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 800876 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 801056
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 640000 ; 5 uses
  br i1 %.not7594, label %._crit_edge118.split, label %.preheader84.lr.ph.split

.preheader84.lr.ph.split:                         ; preds = %.preheader84.lr.ph
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 800008
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !41 ; 16 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.preheader84.lr.ph.split.split.us, label %.preheader84.lr.ph.split.split

.preheader84.lr.ph.split.split.us:                ; preds = %.preheader84.lr.ph.split
  %i.cc = load i32, ptr %i.bp, align 8, !tbaa !116 ; 4 uses
  %i.cd = icmp sgt i32 %i.cc, -1                  ; 3 uses
  br i1 %.not73, label %.preheader84.lr.ph.split.split.us.split.us, label %.preheader84.us.preheader

.preheader84.us.preheader:                        ; preds = %.preheader84.lr.ph.split.split.us
  %i.ce = zext nneg i32 %i.cc to i64
  %i.cf = sext i32 %i.u to i64
  %i.cg = add i32 %i.t, 1
  %i.ch = sext i32 %i.y to i64
  %i.ci = add i32 %i.x, 1
  %wide.trip.count178 = zext nneg i32 %i.ca to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 800908
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 800904
  %.not80.us.us.peel = icmp eq i32 %i.cc, 0
  %exitcond179.peel.not = icmp eq i32 %i.ca, 1
  br label %.preheader84.us

.preheader84.lr.ph.split.split.us.split.us:       ; preds = %.preheader84.lr.ph.split.split.us
  br i1 %i.cd, label %.preheader84.lr.ph.split.split.us.split.us.split.us, label %.preheader84.lr.ph.split.split.us.split.us.split

.preheader84.lr.ph.split.split.us.split.us.split.us: ; preds = %.preheader84.lr.ph.split.split.us.split.us
  %i.cl = zext nneg i32 %i.cc to i64              ; 8 uses
  %i.cm = sext i32 %i.u to i64                    ; 2 uses
  %i.cn = add i32 %i.t, 1                         ; 2 uses
  %i.co = sext i32 %i.y to i64                    ; 2 uses
  %i.cp = add i32 %i.x, 1                         ; 2 uses
  %wide.trip.count274 = zext nneg i32 %i.ca to i64 ; 4 uses
  %invariant.gep319 = getelementptr [2 x i8], ptr %0, i64 %i.cl ; 2 uses
  %invariant.gep317 = getelementptr [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %i.cl ; 2 uses
  br i1 %.not76, label %.preheader84.us.us.us.us.preheader, label %.preheader84.us.us.us.preheader

.preheader84.us.us.us.preheader:                  ; preds = %.preheader84.lr.ph.split.split.us.split.us.split.us
  %xtraiter360 = and i64 %wide.trip.count274, 1
  %i.cq = icmp eq i32 %i.ca, 1
  %unroll_iter364 = and i64 %wide.trip.count274, 2147483646
  %lcmp.mod362.not = icmp eq i64 %xtraiter360, 0
  %lcmp.mod363 = trunc i32 %i.ca to i1
  br label %.preheader84.us.us.us

.preheader84.us.us.us.us.preheader:               ; preds = %.preheader84.lr.ph.split.split.us.split.us.split.us
  %xtraiter367 = and i64 %wide.trip.count274, 1
  %i.cr = icmp eq i32 %i.ca, 1
  %unroll_iter371 = and i64 %wide.trip.count274, 2147483646
  %lcmp.mod369.not = icmp eq i64 %xtraiter367, 0
  %lcmp.mod370 = trunc i32 %i.ca to i1
  br label %.preheader84.us.us.us.us

.preheader84.us.us.us.us:                         ; preds = %.preheader84.us.us.us.us.preheader, %._crit_edge97.split.us.us.split.us.split.us.us.us.split.us.us
  %indvars.iv285 = phi i64 [ %indvars.iv.next286, %._crit_edge97.split.us.us.split.us.split.us.us.us.split.us.us ], [ %i.co, %.preheader84.us.us.us.us.preheader ] ; 2 uses
  %.0117.us.us.us.us = phi i64 [ %indvars.iv.next277, %._crit_edge97.split.us.us.split.us.split.us.us.us.split.us.us ], [ 0, %.preheader84.us.us.us.us.preheader ]
  %gep320 = getelementptr [3200 x i8], ptr %invariant.gep319, i64 %indvars.iv285
  br label %.preheader.us.us.us.us.us.us.us.us

.preheader.us.us.us.us.us.us.us.us:               ; preds = %._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us, %.preheader84.us.us.us.us
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us ], [ %i.cm, %.preheader84.us.us.us.us ] ; 2 uses
  %indvars.iv276 = phi i64 [ %indvars.iv.next277, %._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us ], [ %.0117.us.us.us.us, %.preheader84.us.us.us.us ] ; 2 uses
  %gep316 = getelementptr [16 x i8], ptr %gep320, i64 %indvars.iv278 ; 3 uses
  %gep318 = getelementptr [16 x i8], ptr %invariant.gep317, i64 %indvars.iv276 ; 3 uses
  br i1 %i.cr, label %.epil.preheader366, label %.preheader.us.us.us.us.us.us.us.us.new

.preheader.us.us.us.us.us.us.us.us.new:           ; preds = %.preheader.us.us.us.us.us.us.us.us, %bb.n
  %indvars.iv271 = phi i64 [ %indvars.iv.next272.1, %bb.n ], [ 0, %.preheader.us.us.us.us.us.us.us.us ] ; 3 uses
  %niter372 = phi i64 [ %niter372.next.1, %bb.n ], [ 0, %.preheader.us.us.us.us.us.us.us.us ]
  %.not80.us.us.us.us.us.us.us.us.us.us = icmp eq i64 %indvars.iv271, %i.cl
  br i1 %.not80.us.us.us.us.us.us.us.us.us.us, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader.us.us.us.us.us.us.us.us.new
  %i.cs = load i16, ptr %gep316, align 2, !tbaa !35
  store i16 %i.cs, ptr %gep318, align 2, !tbaa !35
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader.us.us.us.us.us.us.us.us.new
  %indvars.iv.next272 = or disjoint i64 %indvars.iv271, 1
  %.not80.us.us.us.us.us.us.us.us.us.us.1 = icmp eq i64 %indvars.iv.next272, %i.cl
  br i1 %.not80.us.us.us.us.us.us.us.us.us.us.1, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ct = load i16, ptr %gep316, align 2, !tbaa !35
  store i16 %i.ct, ptr %gep318, align 2, !tbaa !35
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next272.1 = add nuw nsw i64 %indvars.iv271, 2 ; 2 uses
  %niter372.next.1 = add i64 %niter372, 2         ; 2 uses
  %niter372.ncmp.1 = icmp eq i64 %niter372.next.1, %unroll_iter371
  br i1 %niter372.ncmp.1, label %._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us.unr-lcssa, label %.preheader.us.us.us.us.us.us.us.us.new, !llvm.loop !181

._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us.unr-lcssa: ; preds = %bb.n
  br i1 %lcmp.mod369.not, label %._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us, label %.epil.preheader366

.epil.preheader366:                               ; preds = %._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us.unr-lcssa, %.preheader.us.us.us.us.us.us.us.us
  %indvars.iv271.epil.init = phi i64 [ 0, %.preheader.us.us.us.us.us.us.us.us ], [ %indvars.iv.next272.1, %._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod370)
  %.not80.us.us.us.us.us.us.us.us.us.us.epil = icmp eq i64 %indvars.iv271.epil.init, %i.cl
  br i1 %.not80.us.us.us.us.us.us.us.us.us.us.epil, label %bb.o, label %._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us

bb.o:                                             ; preds = %.epil.preheader366
  %i.cu = load i16, ptr %gep316, align 2, !tbaa !35
  store i16 %i.cu, ptr %gep318, align 2, !tbaa !35
  br label %._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us

._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us: ; preds = %.epil.preheader366, %bb.o, %._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us.unr-lcssa
  %indvars.iv.next277 = add nsw i64 %indvars.iv276, 1 ; 2 uses
  %indvars.iv.next279 = add nsw i64 %indvars.iv278, 1 ; 2 uses
  %lftr.wideiv283 = trunc i64 %indvars.iv.next279 to i32
  %exitcond284.not = icmp eq i32 %i.cn, %lftr.wideiv283
  br i1 %exitcond284.not, label %._crit_edge97.split.us.us.split.us.split.us.us.us.split.us.us, label %.preheader.us.us.us.us.us.us.us.us, !llvm.loop !182

._crit_edge97.split.us.us.split.us.split.us.us.us.split.us.us: ; preds = %._crit_edge92.split.us.split.us.us.us.us.us.us.us.us.us
  %indvars.iv.next286 = add nsw i64 %indvars.iv285, 1 ; 2 uses
  %lftr.wideiv288 = trunc i64 %indvars.iv.next286 to i32
  %exitcond289.not = icmp eq i32 %i.cp, %lftr.wideiv288
  br i1 %exitcond289.not, label %._crit_edge118.split, label %.preheader84.us.us.us.us, !llvm.loop !183

.preheader84.us.us.us:                            ; preds = %.preheader84.us.us.us.preheader, %._crit_edge97.split.us.us.split.us.split.us.us.us.split
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %._crit_edge97.split.us.us.split.us.split.us.us.us.split ], [ %i.co, %.preheader84.us.us.us.preheader ] ; 3 uses
  %.0117.us.us.us = phi i64 [ %indvars.iv.next258, %._crit_edge97.split.us.us.split.us.split.us.us.us.split ], [ 0, %.preheader84.us.us.us.preheader ]
  %i.cv = getelementptr inbounds [800 x i8], ptr %i.by, i64 %indvars.iv266
  %gep315 = getelementptr [3200 x i8], ptr %invariant.gep319, i64 %indvars.iv266
  br label %.preheader.us.us.us.us.us.us

.preheader.us.us.us.us.us.us:                     ; preds = %._crit_edge92.split.us.split.us.us.us.us.us.us.us, %.preheader84.us.us.us
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %._crit_edge92.split.us.split.us.us.us.us.us.us.us ], [ %i.cm, %.preheader84.us.us.us ] ; 3 uses
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %._crit_edge92.split.us.split.us.us.us.us.us.us.us ], [ %.0117.us.us.us, %.preheader84.us.us.us ] ; 3 uses
  %gep311 = getelementptr [16 x i8], ptr %gep315, i64 %indvars.iv259 ; 3 uses
  %gep313 = getelementptr [16 x i8], ptr %invariant.gep317, i64 %indvars.iv257 ; 3 uses
  br i1 %i.cq, label %.epil.preheader359, label %.preheader.us.us.us.us.us.us.new

.preheader.us.us.us.us.us.us.new:                 ; preds = %.preheader.us.us.us.us.us.us, %bb.s
  %indvars.iv252 = phi i64 [ %indvars.iv.next253.1, %bb.s ], [ 0, %.preheader.us.us.us.us.us.us ] ; 3 uses
  %niter365 = phi i64 [ %niter365.next.1, %bb.s ], [ 0, %.preheader.us.us.us.us.us.us ]
  %.not80.us.us.us.us.us.us.us.us = icmp eq i64 %indvars.iv252, %i.cl
  br i1 %.not80.us.us.us.us.us.us.us.us, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.preheader.us.us.us.us.us.us.new
  %i.cw = load i16, ptr %gep311, align 2, !tbaa !35
  store i16 %i.cw, ptr %gep313, align 2, !tbaa !35
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.preheader.us.us.us.us.us.us.new
  %indvars.iv.next253 = or disjoint i64 %indvars.iv252, 1
  %.not80.us.us.us.us.us.us.us.us.1 = icmp eq i64 %indvars.iv.next253, %i.cl
  br i1 %.not80.us.us.us.us.us.us.us.us.1, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cx = load i16, ptr %gep311, align 2, !tbaa !35
  store i16 %i.cx, ptr %gep313, align 2, !tbaa !35
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.next253.1 = add nuw nsw i64 %indvars.iv252, 2 ; 2 uses
  %niter365.next.1 = add i64 %niter365, 2         ; 2 uses
  %niter365.ncmp.1 = icmp eq i64 %niter365.next.1, %unroll_iter364
  br i1 %niter365.ncmp.1, label %._crit_edge92.split.us.split.us.us.us.us.us.us.us.unr-lcssa, label %.preheader.us.us.us.us.us.us.new, !llvm.loop !181

._crit_edge92.split.us.split.us.us.us.us.us.us.us.unr-lcssa: ; preds = %bb.s
  br i1 %lcmp.mod362.not, label %._crit_edge92.split.us.split.us.us.us.us.us.us.us, label %.epil.preheader359

.epil.preheader359:                               ; preds = %._crit_edge92.split.us.split.us.us.us.us.us.us.us.unr-lcssa, %.preheader.us.us.us.us.us.us
  %indvars.iv252.epil.init = phi i64 [ 0, %.preheader.us.us.us.us.us.us ], [ %indvars.iv.next253.1, %._crit_edge92.split.us.split.us.us.us.us.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod363)
  %.not80.us.us.us.us.us.us.us.us.epil = icmp eq i64 %indvars.iv252.epil.init, %i.cl
  br i1 %.not80.us.us.us.us.us.us.us.us.epil, label %bb.t, label %._crit_edge92.split.us.split.us.us.us.us.us.us.us

bb.t:                                             ; preds = %.epil.preheader359
  %i.cy = load i16, ptr %gep311, align 2, !tbaa !35
  store i16 %i.cy, ptr %gep313, align 2, !tbaa !35
  br label %._crit_edge92.split.us.split.us.us.us.us.us.us.us

._crit_edge92.split.us.split.us.us.us.us.us.us.us: ; preds = %.epil.preheader359, %bb.t, %._crit_edge92.split.us.split.us.us.us.us.us.us.us.unr-lcssa
  %i.cz = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1054164), i64 %indvars.iv257
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %indvars.iv259
  %i.db = load float, ptr %i.da, align 4, !tbaa !54
  store float %i.db, ptr %i.cz, align 4, !tbaa !54
  %indvars.iv.next258 = add nsw i64 %indvars.iv257, 1 ; 2 uses
  %indvars.iv.next260 = add nsw i64 %indvars.iv259, 1 ; 2 uses
  %lftr.wideiv264 = trunc i64 %indvars.iv.next260 to i32
  %exitcond265.not = icmp eq i32 %i.cn, %lftr.wideiv264
  br i1 %exitcond265.not, label %._crit_edge97.split.us.us.split.us.split.us.us.us.split, label %.preheader.us.us.us.us.us.us, !llvm.loop !182

._crit_edge97.split.us.us.split.us.split.us.us.us.split: ; preds = %._crit_edge92.split.us.split.us.us.us.us.us.us.us
  %indvars.iv.next267 = add nsw i64 %indvars.iv266, 1 ; 2 uses
  %lftr.wideiv269 = trunc i64 %indvars.iv.next267 to i32
  %exitcond270.not = icmp eq i32 %i.cp, %lftr.wideiv269
  br i1 %exitcond270.not, label %._crit_edge118.split, label %.preheader84.us.us.us, !llvm.loop !183

.preheader84.lr.ph.split.split.us.split.us.split: ; preds = %.preheader84.lr.ph.split.split.us.split.us
  %i.dc = load i32, ptr %i.bq, align 4, !tbaa !117
  %.fr = freeze i32 %i.dc                         ; 2 uses
  %i.dd = icmp slt i32 %.fr, 0
  br i1 %i.dd, label %.preheader84.lr.ph.split.split.us.split.us.split.split.us, label %.preheader84.us.us.preheader

.preheader84.us.us.preheader:                     ; preds = %.preheader84.lr.ph.split.split.us.split.us.split
  %i.de = zext nneg i32 %.fr to i64               ; 6 uses
  %i.df = sext i32 %i.u to i64
  %i.dg = add i32 %i.t, 1
  %i.dh = sext i32 %i.y to i64
  %i.di = add i32 %i.x, 1
  %wide.trip.count198 = zext nneg i32 %i.ca to i64 ; 2 uses
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.de
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 12 ; 3 uses
  %invariant.gep309 = getelementptr [2 x i8], ptr %0, i64 %i.de
  %invariant.gep307 = getelementptr [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %i.de
  %xtraiter339 = and i64 %wide.trip.count198, 1
  %i.dl = icmp eq i32 %i.ca, 1
  %unroll_iter343 = and i64 %wide.trip.count198, 2147483646
  %lcmp.mod341.not = icmp eq i64 %xtraiter339, 0
  %lcmp.mod342 = trunc i32 %i.ca to i1
  br label %.preheader84.us.us

.preheader84.lr.ph.split.split.us.split.us.split.split.us: ; preds = %.preheader84.lr.ph.split.split.us.split.us.split
  %i.dm = sext i32 %i.u to i64                    ; 2 uses
  %i.dn = add i32 %i.t, 1                         ; 2 uses
  %i.do = sext i32 %i.y to i64                    ; 2 uses
  %i.dp = add i32 %i.x, 1                         ; 2 uses
  %wide.trip.count236 = zext nneg i32 %i.ca to i64 ; 4 uses
  br i1 %.not76, label %.preheader84.us.us.us141.us.preheader, label %.preheader84.us.us.us141.preheader

.preheader84.us.us.us141.preheader:               ; preds = %.preheader84.lr.ph.split.split.us.split.us.split.split.us
  %xtraiter346 = and i64 %wide.trip.count236, 1
  %i.dq = icmp eq i32 %i.ca, 1
  %unroll_iter350 = and i64 %wide.trip.count236, 2147483646
  %lcmp.mod348.not = icmp eq i64 %xtraiter346, 0
  %lcmp.mod349 = trunc i32 %i.ca to i1
  br label %.preheader84.us.us.us141

.preheader84.us.us.us141.us.preheader:            ; preds = %.preheader84.lr.ph.split.split.us.split.us.split.split.us
  %xtraiter353 = and i64 %wide.trip.count236, 1
  %i.dr = icmp eq i32 %i.ca, 1
  %unroll_iter357 = and i64 %wide.trip.count236, 2147483646
  %lcmp.mod355.not = icmp eq i64 %xtraiter353, 0
  %lcmp.mod356 = trunc i32 %i.ca to i1
  br label %.preheader84.us.us.us141.us

.preheader84.us.us.us141.us:                      ; preds = %.preheader84.us.us.us141.us.preheader, %._crit_edge97.split.us.us.split.us.split.split.us.us.us.split.us.us
  %indvars.iv247 = phi i64 [ %indvars.iv.next248, %._crit_edge97.split.us.us.split.us.split.split.us.us.us.split.us.us ], [ %i.do, %.preheader84.us.us.us141.us.preheader ] ; 2 uses
  %.0117.us.us.us142.us = phi i64 [ %indvars.iv.next239, %._crit_edge97.split.us.us.split.us.split.split.us.us.us.split.us.us ], [ 0, %.preheader84.us.us.us141.us.preheader ]
  %i.ds = getelementptr inbounds [3200 x i8], ptr %0, i64 %indvars.iv247
  br label %.preheader.us.us.us.us126.us.us.us.us

.preheader.us.us.us.us126.us.us.us.us:            ; preds = %._crit_edge92.split.us.split.split.us.us.us.us.us.us.us.us.us, %.preheader84.us.us.us141.us
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %._crit_edge92.split.us.split.split.us.us.us.us.us.us.us.us.us ], [ %i.dm, %.preheader84.us.us.us141.us ] ; 2 uses
  %indvars.iv238 = phi i64 [ %indvars.iv.next239, %._crit_edge92.split.us.split.split.us.us.us.us.us.us.us.us.us ], [ %.0117.us.us.us142.us, %.preheader84.us.us.us141.us ] ; 2 uses
  %i.dt = getelementptr inbounds [16 x i8], ptr %i.ds, i64 %indvars.iv240 ; 3 uses
  %i.du = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvars.iv238 ; 3 uses
  br i1 %i.dr, label %.epil.preheader352, label %.preheader.us.us.us.us126.us.us.us.us.new

.preheader.us.us.us.us126.us.us.us.us.new:        ; preds = %.preheader.us.us.us.us126.us.us.us.us, %bb.x
  %indvars.iv233 = phi i64 [ %indvars.iv.next234.1, %bb.x ], [ 0, %.preheader.us.us.us.us126.us.us.us.us ] ; 5 uses
  %niter358 = phi i64 [ %niter358.next.1, %bb.x ], [ 0, %.preheader.us.us.us.us126.us.us.us.us ]
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %indvars.iv233
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !118
  %.not78.us.us.us.us.us.us.us.us.us.us = icmp eq i32 %i.dx, 0
  br i1 %.not78.us.us.us.us.us.us.us.us.us.us, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.preheader.us.us.us.us126.us.us.us.us.new
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %indvars.iv233
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !35
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %indvars.iv233
  store i16 %i.dz, ptr %i.ea, align 4, !tbaa !35
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.preheader.us.us.us.us126.us.us.us.us.new
  %indvars.iv.next234 = or disjoint i64 %indvars.iv233, 1 ; 3 uses
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %indvars.iv.next234
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !118
  %.not78.us.us.us.us.us.us.us.us.us.us.1 = icmp eq i32 %i.ed, 0
  br i1 %.not78.us.us.us.us.us.us.us.us.us.us.1, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %indvars.iv.next234
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !35
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %indvars.iv.next234
  store i16 %i.ef, ptr %i.eg, align 2, !tbaa !35
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %indvars.iv.next234.1 = add nuw nsw i64 %indvars.iv233, 2 ; 2 uses
  %niter358.next.1 = add i64 %niter358, 2         ; 2 uses
  %niter358.ncmp.1 = icmp eq i64 %niter358.next.1, %unroll_iter357
  br i1 %niter358.ncmp.1, label %._crit_edge92.split.us.split.split.us.us.us.us.us.us.us.us.us.unr-lcssa, label %.preheader.us.us.us.us126.us.us.us.us.new, !llvm.loop !181

._crit_edge92.split.us.split.split.us.us.us.us.us.us.us.us.us.unr-lcssa: ; preds = %bb.x
  br i1 %lcmp.mod355.not, label %._crit_edge92.split.us.split.split.us.us.us.us.us.us.us.us.us, label %.epil.preheader352

.epil.preheader352:                               ; preds = %._crit_edge92.split.us.split.split.us.us.us.us.us.us.us.us.us.unr-lcssa, %.preheader.us.us.us.us126.us.us.us.us
  %indvars.iv233.epil.init = phi i64 [ 0, %.preheader.us.us.us.us126.us.us.us.us ], [ %indvars.iv.next234.1, %._crit_edge92.split.us.split.split.us.us.us.us.us.us.us.us.us.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod356)
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %indvars.iv233.epil.init
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !118
  %.not78.us.us.us.us.us.us.us.us.us.us.epil = icmp eq i32 %i.ej, 0
  br i1 %.not78.us.us.us.us.us.us.us.us.us.us.epil, label %bb.y, label %._crit_edge92.split.us.split.split.us.us.us.us.us.us.us.us.us

bb.y:                                             ; preds = %.epil.preheader352
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %indvars.iv233.epil.init
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !35
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.du, i64 %indvars.iv233.epil.init
  store i16 %i.el, ptr %i.em, align 2, !tbaa !35
  br label %._crit_edge92.split.us.split.split.us.us.us.us.us.us.us.us.us

._crit_edge92.split.us.split.split.us.us.us.us.us.us.us.us.us: ; preds = %.epil.preheader352, %bb.y, %._crit_edge92.split.us.split.split.us.us.us.us.us.us.us.us.us.unr-lcssa
  %indvars.iv.next239 = add nsw i64 %indvars.iv238, 1 ; 2 uses
  %indvars.iv.next241 = add nsw i64 %indvars.iv240, 1 ; 2 uses
  %lftr.wideiv245 = trunc i64 %indvars.iv.next241 to i32
  %exitcond246.not = icmp eq i32 %i.dn, %lftr.wideiv245
  br i1 %exitcond246.not, label %._crit_edge97.split.us.us.split.us.split.split.us.us.us.split.us.us, label %.preheader.us.us.us.us126.us.us.us.us, !llvm.loop !182

._crit_edge97.split.us.us.split.us.split.split.us.us.us.split.us.us: ; preds = %._crit_edge92.split.us.split.split.us.us.us.us.us.us.us.us.us
  %indvars.iv.next248 = add nsw i64 %indvars.iv247, 1 ; 2 uses
  %lftr.wideiv250 = trunc i64 %indvars.iv.next248 to i32
  %exitcond251.not = icmp eq i32 %i.dp, %lftr.wideiv250
  br i1 %exitcond251.not, label %._crit_edge118.split, label %.preheader84.us.us.us141.us, !llvm.loop !183

.preheader84.us.us.us141:                         ; preds = %.preheader84.us.us.us141.preheader, %._crit_edge97.split.us.us.split.us.split.split.us.us.us.split
  %indvars.iv228 = phi i64 [ %indvars.iv.next229, %._crit_edge97.split.us.us.split.us.split.split.us.us.us.split ], [ %i.do, %.preheader84.us.us.us141.preheader ] ; 3 uses
  %.0117.us.us.us142 = phi i64 [ %indvars.iv.next220, %._crit_edge97.split.us.us.split.us.split.split.us.us.us.split ], [ 0, %.preheader84.us.us.us141.preheader ]
  %i.en = getelementptr inbounds [3200 x i8], ptr %0, i64 %indvars.iv228
  %i.eo = getelementptr inbounds [800 x i8], ptr %i.by, i64 %indvars.iv228
  br label %.preheader.us.us.us.us126.us.us

.preheader.us.us.us.us126.us.us:                  ; preds = %._crit_edge92.split.us.split.split.us.us.us.us.us.us.us, %.preheader84.us.us.us141
  %indvars.iv221 = phi i64 [ %indvars.iv.next222, %._crit_edge92.split.us.split.split.us.us.us.us.us.us.us ], [ %i.dm, %.preheader84.us.us.us141 ] ; 3 uses
  %indvars.iv219 = phi i64 [ %indvars.iv.next220, %._crit_edge92.split.us.split.split.us.us.us.us.us.us.us ], [ %.0117.us.us.us142, %.preheader84.us.us.us141 ] ; 3 uses
  %i.ep = getelementptr inbounds [16 x i8], ptr %i.en, i64 %indvars.iv221 ; 3 uses
  %i.eq = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvars.iv219 ; 3 uses
  br i1 %i.dq, label %.epil.preheader345, label %.preheader.us.us.us.us126.us.us.new

.preheader.us.us.us.us126.us.us.new:              ; preds = %.preheader.us.us.us.us126.us.us, %bb.ac
  %indvars.iv214 = phi i64 [ %indvars.iv.next215.1, %bb.ac ], [ 0, %.preheader.us.us.us.us126.us.us ] ; 5 uses
  %niter351 = phi i64 [ %niter351.next.1, %bb.ac ], [ 0, %.preheader.us.us.us.us126.us.us ]
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %indvars.iv214
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.et = load i32, ptr %i.es, align 4, !tbaa !118
  %.not78.us.us.us.us.us.us.us.us = icmp eq i32 %i.et, 0
  br i1 %.not78.us.us.us.us.us.us.us.us, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.preheader.us.us.us.us126.us.us.new
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %indvars.iv214
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !35
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %indvars.iv214
  store i16 %i.ev, ptr %i.ew, align 4, !tbaa !35
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.preheader.us.us.us.us126.us.us.new
  %indvars.iv.next215 = or disjoint i64 %indvars.iv214, 1 ; 3 uses
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %indvars.iv.next215
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !118
  %.not78.us.us.us.us.us.us.us.us.1 = icmp eq i32 %i.ez, 0
  br i1 %.not78.us.us.us.us.us.us.us.us.1, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %indvars.iv.next215
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !35
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %indvars.iv.next215
  store i16 %i.fb, ptr %i.fc, align 2, !tbaa !35
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %indvars.iv.next215.1 = add nuw nsw i64 %indvars.iv214, 2 ; 2 uses
  %niter351.next.1 = add i64 %niter351, 2         ; 2 uses
  %niter351.ncmp.1 = icmp eq i64 %niter351.next.1, %unroll_iter350
  br i1 %niter351.ncmp.1, label %._crit_edge92.split.us.split.split.us.us.us.us.us.us.us.unr-lcssa, label %.preheader.us.us.us.us126.us.us.new, !llvm.loop !181

._crit_edge92.split.us.split.split.us.us.us.us.us.us.us.unr-lcssa: ; preds = %bb.ac
  br i1 %lcmp.mod348.not, label %._crit_edge92.split.us.split.split.us.us.us.us.us.us.us, label %.epil.preheader345

.epil.preheader345:                               ; preds = %._crit_edge92.split.us.split.split.us.us.us.us.us.us.us.unr-lcssa, %.preheader.us.us.us.us126.us.us
  %indvars.iv214.epil.init = phi i64 [ 0, %.preheader.us.us.us.us126.us.us ], [ %indvars.iv.next215.1, %._crit_edge92.split.us.split.split.us.us.us.us.us.us.us.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod349)
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %indvars.iv214.epil.init
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !118
  %.not78.us.us.us.us.us.us.us.us.epil = icmp eq i32 %i.ff, 0
  br i1 %.not78.us.us.us.us.us.us.us.us.epil, label %bb.ad, label %._crit_edge92.split.us.split.split.us.us.us.us.us.us.us

bb.ad:                                            ; preds = %.epil.preheader345
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %indvars.iv214.epil.init
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !35
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %indvars.iv214.epil.init
  store i16 %i.fh, ptr %i.fi, align 2, !tbaa !35
  br label %._crit_edge92.split.us.split.split.us.us.us.us.us.us.us

._crit_edge92.split.us.split.split.us.us.us.us.us.us.us: ; preds = %.epil.preheader345, %bb.ad, %._crit_edge92.split.us.split.split.us.us.us.us.us.us.us.unr-lcssa
  %i.fj = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1054164), i64 %indvars.iv219
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %indvars.iv221
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !54
  store float %i.fl, ptr %i.fj, align 4, !tbaa !54
  %indvars.iv.next220 = add nsw i64 %indvars.iv219, 1 ; 2 uses
  %indvars.iv.next222 = add nsw i64 %indvars.iv221, 1 ; 2 uses
  %lftr.wideiv226 = trunc i64 %indvars.iv.next222 to i32
  %exitcond227.not = icmp eq i32 %i.dn, %lftr.wideiv226
  br i1 %exitcond227.not, label %._crit_edge97.split.us.us.split.us.split.split.us.us.us.split, label %.preheader.us.us.us.us126.us.us, !llvm.loop !182

._crit_edge97.split.us.us.split.us.split.split.us.us.us.split: ; preds = %._crit_edge92.split.us.split.split.us.us.us.us.us.us.us
  %indvars.iv.next229 = add nsw i64 %indvars.iv228, 1 ; 2 uses
  %lftr.wideiv231 = trunc i64 %indvars.iv.next229 to i32
  %exitcond232.not = icmp eq i32 %i.dp, %lftr.wideiv231
  br i1 %exitcond232.not, label %._crit_edge118.split, label %.preheader84.us.us.us141, !llvm.loop !183

.preheader84.us.us:                               ; preds = %.preheader84.us.us.preheader, %._crit_edge97.split.us.us.split.us.split.split.us138
  %indvars.iv209 = phi i64 [ %i.dh, %.preheader84.us.us.preheader ], [ %indvars.iv.next210, %._crit_edge97.split.us.us.split.us.split.split.us138 ] ; 3 uses
  %.0117.us.us = phi i64 [ 0, %.preheader84.us.us.preheader ], [ %indvars.iv.next201, %._crit_edge97.split.us.us.split.us.split.split.us138 ]
  %i.fm = getelementptr inbounds [800 x i8], ptr %i.by, i64 %indvars.iv209
  %gep310 = getelementptr [3200 x i8], ptr %invariant.gep309, i64 %indvars.iv209
  br label %.preheader.us.us.us.us134

.preheader.us.us.us.us134:                        ; preds = %bb.an, %.preheader84.us.us
  %indvars.iv202 = phi i64 [ %indvars.iv.next203, %bb.an ], [ %i.df, %.preheader84.us.us ] ; 3 uses
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %bb.an ], [ %.0117.us.us, %.preheader84.us.us ] ; 3 uses
  %gep = getelementptr [16 x i8], ptr %gep310, i64 %indvars.iv202 ; 3 uses
  %gep308 = getelementptr [16 x i8], ptr %invariant.gep307, i64 %indvars.iv200 ; 3 uses
  br i1 %i.dl, label %.epil.preheader, label %.preheader.us.us.us.us134.new

.preheader.us.us.us.us134.new:                    ; preds = %.preheader.us.us.us.us134, %bb.aj
  %indvars.iv195 = phi i64 [ %indvars.iv.next196.1, %bb.aj ], [ 0, %.preheader.us.us.us.us134 ] ; 3 uses
  %niter344 = phi i64 [ %niter344.next.1, %bb.aj ], [ 0, %.preheader.us.us.us.us134 ]
  %.not77.us.us.us.us.us = icmp eq i64 %indvars.iv195, %i.de
  br i1 %.not77.us.us.us.us.us, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %.preheader.us.us.us.us134.new
  %i.fn = load i32, ptr %i.dk, align 4, !tbaa !118
  %.not78.us.us106.us.us.us = icmp eq i32 %i.fn, 0
  br i1 %.not78.us.us106.us.us.us, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fo = load i16, ptr %gep, align 2, !tbaa !35
  store i16 %i.fo, ptr %gep308, align 2, !tbaa !35
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %.preheader.us.us.us.us134.new
  %indvars.iv.next196 = or disjoint i64 %indvars.iv195, 1
  %.not77.us.us.us.us.us.1 = icmp eq i64 %indvars.iv.next196, %i.de
  br i1 %.not77.us.us.us.us.us.1, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.fp = load i32, ptr %i.dk, align 4, !tbaa !118
  %.not78.us.us106.us.us.us.1 = icmp eq i32 %i.fp, 0
  br i1 %.not78.us.us106.us.us.us.1, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fq = load i16, ptr %gep, align 2, !tbaa !35
  store i16 %i.fq, ptr %gep308, align 2, !tbaa !35
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %indvars.iv.next196.1 = add nuw nsw i64 %indvars.iv195, 2 ; 2 uses
  %niter344.next.1 = add i64 %niter344, 2         ; 2 uses
  %niter344.ncmp.1 = icmp eq i64 %niter344.next.1, %unroll_iter343
  br i1 %niter344.ncmp.1, label %._crit_edge92.split.us.split.split.us107.us.us.us.unr-lcssa, label %.preheader.us.us.us.us134.new, !llvm.loop !181

._crit_edge92.split.us.split.split.us107.us.us.us.unr-lcssa: ; preds = %bb.aj
  br i1 %lcmp.mod341.not, label %._crit_edge92.split.us.split.split.us107.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge92.split.us.split.split.us107.us.us.us.unr-lcssa, %.preheader.us.us.us.us134
  %indvars.iv195.epil.init = phi i64 [ 0, %.preheader.us.us.us.us134 ], [ %indvars.iv.next196.1, %._crit_edge92.split.us.split.split.us107.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod342)
  %.not77.us.us.us.us.us.epil = icmp eq i64 %indvars.iv195.epil.init, %i.de
  br i1 %.not77.us.us.us.us.us.epil, label %bb.ak, label %._crit_edge92.split.us.split.split.us107.us.us.us

bb.ak:                                            ; preds = %.epil.preheader
  %i.fr = load i32, ptr %i.dk, align 4, !tbaa !118
  %.not78.us.us106.us.us.us.epil = icmp eq i32 %i.fr, 0
  br i1 %.not78.us.us106.us.us.us.epil, label %bb.al, label %._crit_edge92.split.us.split.split.us107.us.us.us

bb.al:                                            ; preds = %bb.ak
  %i.fs = load i16, ptr %gep, align 2, !tbaa !35
  store i16 %i.fs, ptr %gep308, align 2, !tbaa !35
  br label %._crit_edge92.split.us.split.split.us107.us.us.us

._crit_edge92.split.us.split.split.us107.us.us.us: ; preds = %.epil.preheader, %bb.ak, %bb.al, %._crit_edge92.split.us.split.split.us107.us.us.us.unr-lcssa
  br i1 %.not76, label %bb.an, label %bb.am

bb.am:                                            ; preds = %._crit_edge92.split.us.split.split.us107.us.us.us
  %i.ft = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1054164), i64 %indvars.iv200
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %indvars.iv202
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !54
  store float %i.fv, ptr %i.ft, align 4, !tbaa !54
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge92.split.us.split.split.us107.us.us.us
  %indvars.iv.next201 = add nsw i64 %indvars.iv200, 1 ; 2 uses
  %indvars.iv.next203 = add nsw i64 %indvars.iv202, 1 ; 2 uses
  %lftr.wideiv207 = trunc i64 %indvars.iv.next203 to i32
  %exitcond208.not = icmp eq i32 %i.dg, %lftr.wideiv207
  br i1 %exitcond208.not, label %._crit_edge97.split.us.us.split.us.split.split.us138, label %.preheader.us.us.us.us134, !llvm.loop !182

._crit_edge97.split.us.us.split.us.split.split.us138: ; preds = %bb.an
  %indvars.iv.next210 = add nsw i64 %indvars.iv209, 1 ; 2 uses
  %lftr.wideiv212 = trunc i64 %indvars.iv.next210 to i32
  %exitcond213.not = icmp eq i32 %i.di, %lftr.wideiv212
  br i1 %exitcond213.not, label %._crit_edge118.split, label %.preheader84.us.us, !llvm.loop !183

.preheader84.us:                                  ; preds = %.preheader84.us.preheader, %._crit_edge97.split.us.us.split
  %indvars.iv190 = phi i64 [ %i.ch, %.preheader84.us.preheader ], [ %indvars.iv.next191, %._crit_edge97.split.us.us.split ] ; 4 uses
  %.0117.us = phi i64 [ 0, %.preheader84.us.preheader ], [ %indvars.iv.next182, %._crit_edge97.split.us.us.split ]
  %i.fw = getelementptr inbounds [3200 x i8], ptr %0, i64 %indvars.iv190
  %i.fx = trunc i64 %indvars.iv190 to i16         ; 2 uses
  %i.fy = getelementptr inbounds [800 x i8], ptr %i.by, i64 %indvars.iv190
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %bb.bd, %.preheader84.us
  %indvars.iv183 = phi i64 [ %indvars.iv.next184, %bb.bd ], [ %i.cf, %.preheader84.us ] ; 4 uses
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %bb.bd ], [ %.0117.us, %.preheader84.us ] ; 3 uses
  %i.fz = getelementptr inbounds [16 x i8], ptr %i.fw, i64 %indvars.iv183 ; 3 uses
  %i.ga = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvars.iv181 ; 2 uses
  %i.gb = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4
  %.not.i81.us.us = icmp eq i32 %i.gb, 0          ; 2 uses
  %i.gc = trunc i64 %indvars.iv183 to i16         ; 2 uses
  br i1 %i.cd, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %.preheader.us.us
  %i.gd = load i32, ptr %i.bq, align 4, !tbaa !117
  %or.cond.us.us.peel = icmp slt i32 %i.gd, 1
  br i1 %or.cond.us.us.peel, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.ge = load i32, ptr %i.cj, align 4, !tbaa !118
  %.not78.us101.us.peel = icmp eq i32 %i.ge, 0
  br i1 %.not78.us101.us.peel, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.gf = load i32, ptr %i.ck, align 8, !tbaa !119
  %.not79.us.us.peel = icmp eq i32 %i.gf, 0
  br i1 %.not79.us.us.peel, label %bb.as, label %bb.au

bb.ar:                                            ; preds = %.preheader.us.us
  br i1 %.not80.us.us.peel, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gg = load i16, ptr %i.fz, align 2, !tbaa !35 ; 2 uses
  store i16 %i.gg, ptr %i.ga, align 4, !tbaa !35
  br i1 %.not.i81.us.us, label %stbte__undo_record.exit.us.us.peel, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gh = load i32, ptr %i.bs, align 4, !tbaa !77 ; 5 uses
  %i.gi = load ptr, ptr %i.bt, align 8, !tbaa !40 ; 4 uses
  %i.gj = sext i32 %i.gh to i64
  %i.gk = getelementptr inbounds [2 x i8], ptr %i.gi, i64 %i.gj
  store i16 %i.gg, ptr %i.gk, align 2, !tbaa !35
  %i.gl = add nsw i32 %i.gh, 1
  %i.gm = and i32 %i.gl, 8388607
  %i.gn = load i32, ptr %i.bu, align 8, !tbaa !78 ; 2 uses
  %i.go = icmp slt i32 %i.gn, 8388606
  %i.gp = zext i1 %i.go to i32
  %i.gq = add nsw i32 %i.gn, %i.gp                ; 2 uses
  %i.gr = load i32, ptr %i.bv, align 4, !tbaa !79 ; 2 uses
  %i.gs = icmp sgt i32 %i.gr, 0
  %.neg.i.i.us.us.peel = sext i1 %i.gs to i32
  %i.gt = add i32 %i.gr, %.neg.i.i.us.us.peel     ; 2 uses
  %i.gu = zext nneg i32 %i.gm to i64
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.gu
  store i16 %i.gc, ptr %i.gv, align 2, !tbaa !35
  %i.gw = add i32 %i.gh, 2
  %i.gx = and i32 %i.gw, 8388607
  %i.gy = icmp slt i32 %i.gq, 8388606
  %i.gz = zext i1 %i.gy to i32
  %i.ha = add nsw i32 %i.gq, %i.gz                ; 2 uses
  %i.hb = icmp sgt i32 %i.gt, 0
  %.neg.i7.i.us.us.peel = sext i1 %i.hb to i32
  %i.hc = add i32 %i.gt, %.neg.i7.i.us.us.peel    ; 2 uses
  %i.hd = zext nneg i32 %i.gx to i64
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.hd
  store i16 %i.fx, ptr %i.he, align 2, !tbaa !35
  %i.hf = add i32 %i.gh, 3
  %i.hg = and i32 %i.hf, 8388607
  %i.hh = icmp slt i32 %i.ha, 8388606
  %i.hi = zext i1 %i.hh to i32
  %i.hj = add nsw i32 %i.ha, %i.hi                ; 2 uses
  %i.hk = icmp sgt i32 %i.hc, 0
  %.neg.i8.i.us.us.peel = sext i1 %i.hk to i32
  %i.hl = add i32 %i.hc, %.neg.i8.i.us.us.peel    ; 2 uses
  %i.hm = zext nneg i32 %i.hg to i64
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.hm
  store i16 0, ptr %i.hn, align 2, !tbaa !35
  %i.ho = add i32 %i.gh, 4
  %i.hp = and i32 %i.ho, 8388607
  store i32 %i.hp, ptr %i.bs, align 4, !tbaa !77
  %i.hq = icmp slt i32 %i.hj, 8388606
  %i.hr = zext i1 %i.hq to i32
  %i.hs = add nsw i32 %i.hj, %i.hr
  store i32 %i.hs, ptr %i.bu, align 8, !tbaa !78
  %i.ht = icmp sgt i32 %i.hl, 0
  %.neg.i9.i.us.us.peel = sext i1 %i.ht to i32
  %i.hu = add i32 %i.hl, %.neg.i9.i.us.us.peel
  store i32 %i.hu, ptr %i.bv, align 4, !tbaa !79
  store i8 0, ptr %i.bw, align 4, !tbaa !51
  br label %stbte__undo_record.exit.us.us.peel

stbte__undo_record.exit.us.us.peel:               ; preds = %bb.at, %bb.as
  %i.hv = load i16, ptr %i.bx, align 8, !tbaa !52
  store i16 %i.hv, ptr %i.fz, align 2, !tbaa !35
  br label %bb.au

bb.au:                                            ; preds = %stbte__undo_record.exit.us.us.peel, %bb.ar, %bb.aq, %bb.ap, %bb.ao
  br i1 %exitcond179.peel.not, label %._crit_edge92.split.us102.us, label %.peel.next

.peel.next:                                       ; preds = %bb.au, %bb.bb
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %bb.bb ], [ 1, %bb.au ] ; 7 uses
  br i1 %i.cd, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %.peel.next
  %i.hw = load i32, ptr %i.bq, align 4, !tbaa !117 ; 2 uses
  %i.hx = icmp slt i32 %i.hw, 0
  %i.hy = zext i32 %i.hw to i64
  %.not77.us100.us = icmp eq i64 %indvars.iv175, %i.hy
  %or.cond.us.us = or i1 %i.hx, %.not77.us100.us
  br i1 %or.cond.us.us, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %bb.av
  %i.hz = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %indvars.iv175 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !118
  %.not78.us101.us = icmp eq i32 %i.ib, 0
  br i1 %.not78.us101.us, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !119
  %.not79.us.us = icmp eq i32 %i.id, 0
  br i1 %.not79.us.us, label %bb.az, label %bb.bb

bb.ay:                                            ; preds = %.peel.next
  %.not80.us.us = icmp eq i64 %indvars.iv175, %i.ce
  br i1 %.not80.us.us, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.fz, i64 %indvars.iv175 ; 2 uses
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !35 ; 2 uses
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv175
  store i16 %i.if, ptr %i.ig, align 2, !tbaa !35
  br i1 %.not.i81.us.us, label %stbte__undo_record.exit.us.us, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ih = load i32, ptr %i.bs, align 4, !tbaa !77 ; 5 uses
  %i.ii = load ptr, ptr %i.bt, align 8, !tbaa !40 ; 4 uses
  %i.ij = sext i32 %i.ih to i64
  %i.ik = getelementptr inbounds [2 x i8], ptr %i.ii, i64 %i.ij
  store i16 %i.if, ptr %i.ik, align 2, !tbaa !35
  %i.il = add nsw i32 %i.ih, 1
  %i.im = and i32 %i.il, 8388607
  %i.in = load i32, ptr %i.bu, align 8, !tbaa !78 ; 2 uses
  %i.io = icmp slt i32 %i.in, 8388606
  %i.ip = zext i1 %i.io to i32
  %i.iq = add nsw i32 %i.in, %i.ip                ; 2 uses
  %i.ir = load i32, ptr %i.bv, align 4, !tbaa !79 ; 2 uses
  %i.is = icmp sgt i32 %i.ir, 0
  %.neg.i.i.us.us = sext i1 %i.is to i32
  %i.it = add i32 %i.ir, %.neg.i.i.us.us          ; 2 uses
  %i.iu = zext nneg i32 %i.im to i64
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.ii, i64 %i.iu
  store i16 %i.gc, ptr %i.iv, align 2, !tbaa !35
  %i.iw = add i32 %i.ih, 2
  %i.ix = and i32 %i.iw, 8388607
  %i.iy = icmp slt i32 %i.iq, 8388606
  %i.iz = zext i1 %i.iy to i32
  %i.ja = add nsw i32 %i.iq, %i.iz                ; 2 uses
  %i.jb = icmp sgt i32 %i.it, 0
  %.neg.i7.i.us.us = sext i1 %i.jb to i32
  %i.jc = add i32 %i.it, %.neg.i7.i.us.us         ; 2 uses
  %i.jd = zext nneg i32 %i.ix to i64
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.ii, i64 %i.jd
  store i16 %i.fx, ptr %i.je, align 2, !tbaa !35
  %i.jf = add i32 %i.ih, 3
  %i.jg = and i32 %i.jf, 8388607
  %i.jh = icmp slt i32 %i.ja, 8388606
  %i.ji = zext i1 %i.jh to i32
  %i.jj = add nsw i32 %i.ja, %i.ji                ; 2 uses
  %i.jk = icmp sgt i32 %i.jc, 0
  %.neg.i8.i.us.us = sext i1 %i.jk to i32
  %i.jl = add i32 %i.jc, %.neg.i8.i.us.us         ; 2 uses
  %i.jm = trunc i64 %indvars.iv175 to i16
  %i.jn = zext nneg i32 %i.jg to i64
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.ii, i64 %i.jn
  store i16 %i.jm, ptr %i.jo, align 2, !tbaa !35
  %i.jp = add i32 %i.ih, 4
  %i.jq = and i32 %i.jp, 8388607
  store i32 %i.jq, ptr %i.bs, align 4, !tbaa !77
  %i.jr = icmp slt i32 %i.jj, 8388606
  %i.js = zext i1 %i.jr to i32
  %i.jt = add nsw i32 %i.jj, %i.js
  store i32 %i.jt, ptr %i.bu, align 8, !tbaa !78
  %i.ju = icmp sgt i32 %i.jl, 0
  %.neg.i9.i.us.us = sext i1 %i.ju to i32
  %i.jv = add i32 %i.jl, %.neg.i9.i.us.us
  store i32 %i.jv, ptr %i.bv, align 4, !tbaa !79
  store i8 0, ptr %i.bw, align 4, !tbaa !51
  br label %stbte__undo_record.exit.us.us

stbte__undo_record.exit.us.us:                    ; preds = %bb.az, %bb.ba
  store i16 -1, ptr %i.ie, align 2, !tbaa !35
  br label %bb.bb

bb.bb:                                            ; preds = %stbte__undo_record.exit.us.us, %bb.ay, %bb.ax, %bb.aw, %bb.av
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %exitcond179.not = icmp eq i64 %indvars.iv.next176, %wide.trip.count178
  br i1 %exitcond179.not, label %._crit_edge92.split.us102.us, label %.peel.next, !llvm.loop !184

._crit_edge92.split.us102.us:                     ; preds = %bb.bb, %bb.au
  br i1 %.not76, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge92.split.us102.us
  %i.jw = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1054164), i64 %indvars.iv181
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %indvars.iv183
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !54
  store float %i.jy, ptr %i.jw, align 4, !tbaa !54
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %._crit_edge92.split.us102.us
  %indvars.iv.next182 = add nsw i64 %indvars.iv181, 1 ; 2 uses
  %indvars.iv.next184 = add nsw i64 %indvars.iv183, 1 ; 2 uses
  %lftr.wideiv188 = trunc i64 %indvars.iv.next184 to i32
  %exitcond189.not = icmp eq i32 %i.cg, %lftr.wideiv188
  br i1 %exitcond189.not, label %._crit_edge97.split.us.us.split, label %.preheader.us.us, !llvm.loop !182

._crit_edge97.split.us.us.split:                  ; preds = %bb.bd
  %indvars.iv.next191 = add nsw i64 %indvars.iv190, 1 ; 2 uses
  %lftr.wideiv193 = trunc i64 %indvars.iv.next191 to i32
  %exitcond194.not = icmp eq i32 %i.ci, %lftr.wideiv193
  br i1 %exitcond194.not, label %._crit_edge118.split, label %.preheader84.us, !llvm.loop !183

.preheader84.lr.ph.split.split:                   ; preds = %.preheader84.lr.ph.split
  br i1 %.not76, label %._crit_edge118.split, label %.preheader84.preheader

.preheader84.preheader:                           ; preds = %.preheader84.lr.ph.split.split
  %i.jz = sext i32 %i.u to i64                    ; 5 uses
  %i.ka = add i32 %i.t, 1
  %i.kb = sext i32 %i.y to i64                    ; 2 uses
  %i.kc = add i32 %i.x, 1
  %i.kd = shl nsw i64 %i.jz, 2
  %i.ke = add i64 %i.kd, %i.a
  %i.kf = sub i64 add (i64 ptrtoaddr (ptr @stbte__ui to i64), i64 414164), %i.ke
  %.neg = mul nsw i64 %i.kb, -800
  %i.kg = add i64 %.neg, %i.kf
  %i.kh = add i32 %i.t, 1
  %i.ki = zext i32 %i.v to i64
  %i.kj = add nuw nsw i64 %i.ki, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.v, 7
  %n.vec = and i64 %i.kj, 8589934584              ; 4 uses
  %i.kk = add nsw i64 %n.vec, %i.jz
  %cmp.n = icmp eq i64 %i.kj, %n.vec
  br label %.preheader84

.preheader84:                                     ; preds = %.preheader84.preheader, %._crit_edge97.split.split
  %indvar = phi i64 [ 0, %.preheader84.preheader ], [ %indvar.next, %._crit_edge97.split.split ] ; 2 uses
  %indvars.iv170 = phi i64 [ %i.kb, %.preheader84.preheader ], [ %indvars.iv.next171, %._crit_edge97.split.split ] ; 2 uses
  %.0117 = phi i64 [ 0, %.preheader84.preheader ], [ %indvars.iv.next163.lcssa, %._crit_edge97.split.split ] ; 5 uses
  %i.kl = getelementptr inbounds [800 x i8], ptr %i.by, i64 %indvars.iv170 ; 6 uses
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader84
  %i.km = mul nsw i64 %indvar, -800
  %i.kn = add i64 %i.kg, %i.km
  %i.ko = shl i64 %.0117, 2
  %i.kp = add i64 %i.kn, %i.ko
  %i.kq = add i64 %i.kp, -1
  %diff.check = icmp ult i64 %i.kq, 31
  br i1 %diff.check, label %.preheader.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.kr = add i64 %.0117, %n.vec                  ; 2 uses
  %i.ks = getelementptr [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1054164), i64 %.0117
  %invariant.gep = getelementptr [4 x i8], ptr %i.kl, i64 %i.jz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.kt = getelementptr [4 x i8], ptr %i.ks, i64 %index ; 2 uses
  %gep373 = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %gep373, i64 16
  %wide.load = load <4 x float>, ptr %gep373, align 4, !tbaa !54
  %wide.load327 = load <4 x float>, ptr %i.ku, align 4, !tbaa !54
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  store <4 x float> %wide.load, ptr %i.kt, align 4, !tbaa !54
  store <4 x float> %wide.load327, ptr %i.kv, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kw = icmp eq i64 %index.next, %n.vec
  br i1 %i.kw, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge97.split.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.memcheck, %.preheader84, %middle.block
  %indvars.iv164.ph = phi i64 [ %i.jz, %vector.memcheck ], [ %i.jz, %.preheader84 ], [ %i.kk, %middle.block ] ; 3 uses
  %indvars.iv162.ph = phi i64 [ %.0117, %vector.memcheck ], [ %.0117, %.preheader84 ], [ %i.kr, %middle.block ] ; 2 uses
  %i.kx = trunc i64 %indvars.iv164.ph to i32      ; 2 uses
  %i.ky = sub i32 %i.kh, %i.kx
  %i.kz = sub i32 %i.t, %i.kx
  %xtraiter337 = and i32 %i.ky, 3                 ; 2 uses
  %lcmp.mod338.not = icmp eq i32 %xtraiter337, 0
  br i1 %lcmp.mod338.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %indvars.iv164.prol = phi i64 [ %indvars.iv.next165.prol, %.preheader.prol ], [ %indvars.iv164.ph, %.preheader.preheader ] ; 2 uses
  %indvars.iv162.prol = phi i64 [ %indvars.iv.next163.prol, %.preheader.prol ], [ %indvars.iv162.ph, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.la = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1054164), i64 %indvars.iv162.prol
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %indvars.iv164.prol
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !54
  store float %i.lc, ptr %i.la, align 4, !tbaa !54
  %indvars.iv.next163.prol = add nsw i64 %indvars.iv162.prol, 1 ; 3 uses
  %indvars.iv.next165.prol = add nsw i64 %indvars.iv164.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter337
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !186

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %indvars.iv.next163.lcssa335.unr = phi i64 [ poison, %.preheader.preheader ], [ %indvars.iv.next163.prol, %.preheader.prol ]
  %indvars.iv164.unr = phi i64 [ %indvars.iv164.ph, %.preheader.preheader ], [ %indvars.iv.next165.prol, %.preheader.prol ]
  %indvars.iv162.unr = phi i64 [ %indvars.iv162.ph, %.preheader.preheader ], [ %indvars.iv.next163.prol, %.preheader.prol ]
  %i.ld = icmp ult i32 %i.kz, 3
  br i1 %i.ld, label %._crit_edge97.split.split, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %indvars.iv164 = phi i64 [ %indvars.iv.next165.3, %.preheader ], [ %indvars.iv164.unr, %.preheader.prol.loopexit ] ; 5 uses
  %indvars.iv162 = phi i64 [ %indvars.iv.next163.3, %.preheader ], [ %indvars.iv162.unr, %.preheader.prol.loopexit ] ; 5 uses
  %i.le = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1054164), i64 %indvars.iv162
  %i.lf = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %indvars.iv164
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !54
  store float %i.lg, ptr %i.le, align 4, !tbaa !54
  %i.lh = getelementptr [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1054164), i64 %indvars.iv162
  %i.li = getelementptr i8, ptr %i.lh, i64 4
  %i.lj = getelementptr [4 x i8], ptr %i.kl, i64 %indvars.iv164
  %i.lk = getelementptr i8, ptr %i.lj, i64 4
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !54
  store float %i.ll, ptr %i.li, align 4, !tbaa !54
  %i.lm = getelementptr [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1054164), i64 %indvars.iv162
  %i.ln = getelementptr i8, ptr %i.lm, i64 8
  %i.lo = getelementptr [4 x i8], ptr %i.kl, i64 %indvars.iv164
  %i.lp = getelementptr i8, ptr %i.lo, i64 8
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !54
  store float %i.lq, ptr %i.ln, align 4, !tbaa !54
  %i.lr = getelementptr [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1054164), i64 %indvars.iv162
  %i.ls = getelementptr i8, ptr %i.lr, i64 12
  %i.lt = getelementptr [4 x i8], ptr %i.kl, i64 %indvars.iv164
  %i.lu = getelementptr i8, ptr %i.lt, i64 12
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !54
  store float %i.lv, ptr %i.ls, align 4, !tbaa !54
  %indvars.iv.next163.3 = add nsw i64 %indvars.iv162, 4 ; 2 uses
  %indvars.iv.next165.3 = add nsw i64 %indvars.iv164, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next165.3 to i32
  %exitcond169.not.3 = icmp eq i32 %i.ka, %lftr.wideiv.3
  br i1 %exitcond169.not.3, label %._crit_edge97.split.split, label %.preheader, !llvm.loop !187

._crit_edge97.split.split:                        ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block
  %indvars.iv.next163.lcssa = phi i64 [ %i.kr, %middle.block ], [ %indvars.iv.next163.lcssa335.unr, %.preheader.prol.loopexit ], [ %indvars.iv.next163.3, %.preheader ]
  %indvars.iv.next171 = add nsw i64 %indvars.iv170, 1 ; 2 uses
  %lftr.wideiv173 = trunc i64 %indvars.iv.next171 to i32
  %exitcond174.not = icmp eq i32 %i.kc, %lftr.wideiv173
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond174.not, label %._crit_edge118.split, label %.preheader84, !llvm.loop !183

._crit_edge118.split:                             ; preds = %._crit_edge97.split.split, %._crit_edge97.split.us.us.split, %._crit_edge97.split.us.us.split.us.split.split.us138, %._crit_edge97.split.us.us.split.us.split.split.us.us.us.split, %._crit_edge97.split.us.us.split.us.split.split.us.us.us.split.us.us, %._crit_edge97.split.us.us.split.us.split.us.us.us.split, %._crit_edge97.split.us.us.split.us.split.us.us.us.split.us.us, %.preheader84.lr.ph.split.split, %.preheader84.lr.ph, %bb.j
  %i.lw = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4
  %.not.i82 = icmp eq i32 %i.lw, 0
  %or.cond83 = select i1 %.not73, i1 true, i1 %.not.i82
  br i1 %or.cond83, label %stbte__end_undo.exit, label %bb.be

bb.be:                                            ; preds = %._crit_edge118.split
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 801044 ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !77 ; 2 uses
  %i.lz = add i32 %i.ly, 8388607
  %i.ma = and i32 %i.lz, 8388607                  ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 805160
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !40 ; 2 uses
  %i.md = zext nneg i32 %i.ma to i64
  %i.me = getelementptr inbounds nuw [2 x i8], ptr %i.mc, i64 %i.md
  %i.mf = load i16, ptr %i.me, align 2, !tbaa !35
  %i.mg = icmp eq i16 %i.mf, -2
  br i1 %i.mg, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 %i.ma, ptr %i.lx, align 4, !tbaa !77
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 801048 ; 2 uses
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !78
  %i.mj = add nsw i32 %i.mi, -1
  store i32 %i.mj, ptr %i.mh, align 8, !tbaa !78
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.mk = phi i32 [ %i.ma, %bb.bf ], [ %i.ly, %bb.be ]
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [2 x i8], ptr %i.mc, i64 %i.ml
  store i16 -4, ptr %i.mm, align 2, !tbaa !35
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !80
  br label %stbte__end_undo.exit

stbte__end_undo.exit:                             ; preds = %bb.bg, %._crit_edge118.split
  store i32 %i.w, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316328), align 8, !tbaa !124
  store i32 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316332), align 4, !tbaa !125
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316336), align 8, !tbaa !126
  store i32 %.011.i, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316340), align 4, !tbaa !188
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316320), align 8, !tbaa !189
  store i32 %i.u, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316308), align 4, !tbaa !190
  store i32 %i.y, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316312), align 8, !tbaa !191
  br label %bb.bh

bb.bh:                                            ; preds = %stbte__should_copy_properties.exit, %stbte__end_undo.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @stbte__in_rect(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #11 {
bb.a:
  %.not = icmp sge i32 %0, %2
  %i.a = add nsw i32 %4, %2
  %i.b = icmp slt i32 %0, %i.a
  %or.cond.not17.not19 = select i1 %.not, i1 %i.b, i1 false
  %.not13 = icmp sge i32 %1, %3
  %or.cond15.not = and i1 %.not13, %or.cond.not17.not19
  %i.c = add nsw i32 %5, %3
  %i.d = icmp slt i32 %1, %i.c
  %narrow = select i1 %or.cond15.not, i1 %i.d, i1 false
  %i.e = zext i1 %narrow to i32
  ret i32 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbte__paste(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca [8 x i16], align 16               ; 8 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316328), align 8, !tbaa !124 ; 3 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316332), align 4, !tbaa !125 ; 3 uses
  %i.d = ashr i32 %i.b, 1
  %i.e = sub nsw i32 %1, %i.d                     ; 2 uses
  %i.f = ashr i32 %i.c, 1
  %i.g = sub nsw i32 %2, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 801036
  %i.i = load i32, ptr %i.h, align 4, !tbaa !122
  switch i32 %i.i, label %bb.c [
    i32 1, label %stbte__should_copy_properties.exit
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %stbte__should_copy_properties.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 801040
  %i.k = load i32, ptr %i.j, align 8, !tbaa !116
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %stbte__should_copy_properties.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 800044
  %i.n = load i32, ptr %i.m, align 4, !tbaa !117
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %stbte__should_copy_properties.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 800896
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 800008
  %i.r = load i32, ptr %i.q, align 8, !tbaa !41   ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.preheader.i, label %stbte__should_copy_properties.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.r to i64
  br label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbte__should_copy_properties.exit, label %.lr.ph.i, !llvm.loop !11

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !118
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.f, label %stbte__should_copy_properties.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !119
  %.not13.i = icmp eq i32 %i.x, 0
  br i1 %.not13.i, label %bb.e, label %stbte__should_copy_properties.exit

stbte__should_copy_properties.exit:               ; preds = %bb.e, %.lr.ph.i, %bb.f, %bb.a, %bb.b, %bb.c, %bb.d, %.preheader.i
  %i.y = phi i1 [ false, %bb.d ], [ false, %bb.b ], [ true, %bb.a ], [ false, %bb.c ], [ true, %.preheader.i ], [ true, %bb.e ], [ false, %bb.f ], [ false, %.lr.ph.i ]
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316340), align 4
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = select i1 %i.y, i1 %i.aa, i1 false
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1316336), align 8, !tbaa !126
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.s, label %bb.g

bb.g:                                             ; preds = %stbte__should_copy_properties.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 801052 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 801044 ; 5 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !77 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 805160
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !40 ; 12 uses
  %i.aj = sext i32 %i.ag to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.aj
  store i16 -2, ptr %i.ak, align 2, !tbaa !35
  %i.al = add nsw i32 %i.ag, 1
  %i.am = and i32 %i.al, 8388607                  ; 4 uses
  store i32 %i.am, ptr %i.af, align 4, !tbaa !77
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 801048 ; 5 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !78 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 8388606
  %i.aq = zext i1 %i.ap to i32
  %i.ar = add nsw i32 %i.ao, %i.aq                ; 4 uses
  store i32 %i.ar, ptr %i.an, align 8, !tbaa !78
  store i32 0, ptr %i.ae, align 4, !tbaa !79
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 800876 ; 3 uses
  store i8 0, ptr %i.as, align 4, !tbaa !51
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !80
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5352), align 8, !tbaa !81
  %i.at = icmp sgt i32 %i.c, 0
  br i1 %i.at, label %.preheader.lr.ph, label %._crit_edge114.split

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.au = icmp sgt i32 %i.b, 0
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 800004
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 800000
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 800008
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 640000
  br i1 %i.au, label %.preheader.preheader, label %._crit_edge114.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count129 = zext nneg i32 %i.c to i64
  %wide.trip.count124 = zext nneg i32 %i.b to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge111
  %i.az = phi i32 [ %i.ar, %.preheader.preheader ], [ %i.fn, %._crit_edge111 ]
  %i.ba = phi i32 [ %i.am, %.preheader.preheader ], [ %i.fo, %._crit_edge111 ]
  %indvars.iv126 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next127, %._crit_edge111 ] ; 2 uses
  %.0113 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next118, %._crit_edge111 ]
  %i.bb = trunc nuw nsw i64 %indvars.iv126 to i32
  %i.bc = add nsw i32 %i.g, %i.bb                 ; 5 uses
  %i.bd = icmp sgt i32 %i.bc, -1
  %i.be = zext nneg i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [3200 x i8], ptr %0, i64 %i.be ; 2 uses
  %i.bg = trunc i32 %i.bc to i16                  ; 2 uses
  %i.bh = sext i32 %i.bc to i64
  %i.bi = getelementptr inbounds [800 x i8], ptr %i.ay, i64 %i.bh
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.q
  %i.bj = phi i32 [ %i.az, %.preheader ], [ %i.fn, %bb.q ] ; 6 uses
  %i.bk = phi i32 [ %i.ba, %.preheader ], [ %i.fo, %bb.q ] ; 6 uses
  %indvars.iv119 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next120, %bb.q ] ; 3 uses
  %indvars.iv117 = phi i64 [ %.0113, %.preheader ], [ %indvars.iv.next118, %bb.q ] ; 4 uses
  br i1 %i.bd, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.bl = load i32, ptr %i.av, align 4, !tbaa !43
  %i.bm = icmp slt i32 %i.bc, %i.bl
  br i1 %i.bm, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.bn = trunc nuw nsw i64 %indvars.iv119 to i32
  %i.bo = add nsw i32 %i.e, %i.bn                 ; 5 uses
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bq = load i32, ptr %i.aw, align 8, !tbaa !42
  %i.br = icmp slt i32 %i.bo, %i.bq
  br i1 %i.br, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bs = load i32, ptr %i.ax, align 8, !tbaa !41 ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph106, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l
  %i.bu = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvars.iv117
  call void @stbte__paste_stack(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bu, i32 noundef 0)
  br label %._crit_edge107

.lr.ph106:                                        ; preds = %bb.l
  %i.bv = zext nneg i32 %i.bo to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bv
  %i.bx = shl nuw i32 %i.bs, 1
  %i.by = zext i32 %i.bx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 2 %i.bw, i64 %i.by, i1 false), !tbaa !35
  %i.bz = getelementptr inbounds [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5588), i64 %indvars.iv117
  call void @stbte__paste_stack(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bz, i32 noundef 0)
  %i.ca = zext nneg i32 %i.bo to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.ca
  %i.cc = trunc i32 %i.bo to i16
  %wide.trip.count = zext nneg i32 %i.bs to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph106, %bb.n
  %i.cd = phi i32 [ %i.bj, %.lr.ph106 ], [ %i.dm, %bb.n ] ; 3 uses
  %i.ce = phi i32 [ %i.bk, %.lr.ph106 ], [ %i.dn, %bb.n ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph106 ], [ %indvars.iv.next, %bb.n ] ; 4 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !35 ; 2 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %indvars.iv ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !35 ; 2 uses
  %.not = icmp eq i16 %i.cg, %i.ci
  br i1 %.not, label %bb.n, label %stbte__undo_record.exit

stbte__undo_record.exit:                          ; preds = %bb.m
  %i.cj = zext nneg i32 %i.ce to i64
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.cj
  store i16 %i.ci, ptr %i.ck, align 2, !tbaa !35
  %i.cl = add nuw nsw i32 %i.ce, 1
  %i.cm = and i32 %i.cl, 8388607
  %i.cn = icmp slt i32 %i.cd, 8388606
  %i.co = zext i1 %i.cn to i32
  %i.cp = add nsw i32 %i.cd, %i.co                ; 2 uses
  %i.cq = zext nneg i32 %i.cm to i64
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.cq
  store i16 %i.cc, ptr %i.cr, align 2, !tbaa !35
  %i.cs = add nuw nsw i32 %i.ce, 2
  %i.ct = and i32 %i.cs, 8388607
  %i.cu = icmp slt i32 %i.cp, 8388606
  %i.cv = zext i1 %i.cu to i32
  %i.cw = add nsw i32 %i.cp, %i.cv                ; 2 uses
  %i.cx = zext nneg i32 %i.ct to i64
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.cx
  store i16 %i.bg, ptr %i.cy, align 2, !tbaa !35
  %i.cz = add nuw nsw i32 %i.ce, 3
  %i.da = and i32 %i.cz, 8388607
  %i.db = icmp slt i32 %i.cw, 8388606
  %i.dc = zext i1 %i.db to i32
  %i.dd = add nsw i32 %i.cw, %i.dc                ; 2 uses
  %i.de = trunc i64 %indvars.iv to i16
  %i.df = zext nneg i32 %i.da to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.df
  store i16 %i.de, ptr %i.dg, align 2, !tbaa !35
  %i.dh = add nuw nsw i32 %i.ce, 4
  %i.di = and i32 %i.dh, 8388607                  ; 2 uses
  store i32 %i.di, ptr %i.af, align 4, !tbaa !77
  %i.dj = icmp slt i32 %i.dd, 8388606
  %i.dk = zext i1 %i.dj to i32
  %i.dl = add nsw i32 %i.dd, %i.dk                ; 2 uses
  store i32 %i.dl, ptr %i.an, align 8, !tbaa !78
  store i32 0, ptr %i.ae, align 4, !tbaa !79
  store i8 0, ptr %i.as, align 4, !tbaa !51
  store i16 %i.cg, ptr %i.ch, align 2, !tbaa !35
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %stbte__undo_record.exit
  %i.dm = phi i32 [ %i.cd, %bb.m ], [ %i.dl, %stbte__undo_record.exit ] ; 2 uses
  %i.dn = phi i32 [ %i.ce, %bb.m ], [ %i.di, %stbte__undo_record.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge107, label %bb.m, !llvm.loop !192

._crit_edge107:                                   ; preds = %bb.n, %._crit_edge
  %i.do = phi i32 [ %i.bj, %._crit_edge ], [ %i.dm, %bb.n ]
  %i.dp = phi i32 [ %i.bk, %._crit_edge ], [ %i.dn, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge107, %bb.k, %bb.j, %bb.i, %bb.h
  %i.dq = phi i32 [ %i.do, %._crit_edge107 ], [ %i.bj, %bb.k ], [ %i.bj, %bb.j ], [ %i.bj, %bb.i ], [ %i.bj, %bb.h ] ; 4 uses
  %i.dr = phi i32 [ %i.dp, %._crit_edge107 ], [ %i.bk, %bb.k ], [ %i.bk, %bb.j ], [ %i.bk, %bb.i ], [ %i.bk, %bb.h ] ; 8 uses
  br i1 %i.ab, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ds = trunc nuw nsw i64 %indvars.iv119 to i32
  %i.dt = add nsw i32 %i.e, %i.ds                 ; 2 uses
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.du ; 2 uses
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !54 ; 2 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 1054164), i64 %indvars.iv117
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !54 ; 2 uses
  %i.dz = fcmp une float %i.dw, %i.dy
  br i1 %i.dz, label %stbte__undo_record_prop_float.exit, label %.critedge

stbte__undo_record_prop_float.exit:               ; preds = %bb.p
  %i.ea = bitcast float %i.dw to i32              ; 2 uses
  %.sroa.05.2.extract.shift.i = lshr i32 %i.ea, 16
  %.sroa.05.2.extract.trunc.i = trunc nuw i32 %.sroa.05.2.extract.shift.i to i16
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.ea to i16
  %i.eb = zext nneg i32 %i.dr to i64
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.eb
  store i16 %.sroa.05.2.extract.trunc.i, ptr %i.ec, align 2, !tbaa !35
  %i.ed = add nuw nsw i32 %i.dr, 1
  %i.ee = and i32 %i.ed, 8388607
  %i.ef = icmp slt i32 %i.dq, 8388606
  %i.eg = zext i1 %i.ef to i32
  %i.eh = add nsw i32 %i.dq, %i.eg                ; 2 uses
  %i.ei = zext nneg i32 %i.ee to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ei
  store i16 %.sroa.0.0.extract.trunc.i, ptr %i.ej, align 2, !tbaa !35
  %i.ek = add nuw nsw i32 %i.dr, 2
  %i.el = and i32 %i.ek, 8388607
  %i.em = icmp slt i32 %i.eh, 8388606
  %i.en = zext i1 %i.em to i32
  %i.eo = add nsw i32 %i.eh, %i.en                ; 2 uses
  %i.ep = trunc i32 %i.dt to i16
  %i.eq = zext nneg i32 %i.el to i64
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.eq
  store i16 %i.ep, ptr %i.er, align 2, !tbaa !35
  %i.es = add nuw nsw i32 %i.dr, 3
  %i.et = and i32 %i.es, 8388607
  %i.eu = icmp slt i32 %i.eo, 8388606
  %i.ev = zext i1 %i.eu to i32
  %i.ew = add nsw i32 %i.eo, %i.ev                ; 2 uses
  %i.ex = zext nneg i32 %i.et to i64
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ex
  store i16 %i.bg, ptr %i.ey, align 2, !tbaa !35
  %i.ez = add nuw nsw i32 %i.dr, 4
  %i.fa = and i32 %i.ez, 8388607
  %i.fb = icmp slt i32 %i.ew, 8388606
  %i.fc = zext i1 %i.fb to i32
  %i.fd = add nsw i32 %i.ew, %i.fc                ; 2 uses
  %i.fe = zext nneg i32 %i.fa to i64
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.fe
  store i16 256, ptr %i.ff, align 2, !tbaa !35
  %i.fg = add nuw nsw i32 %i.dr, 5
  %i.fh = and i32 %i.fg, 8388607                  ; 2 uses
  store i32 %i.fh, ptr %i.af, align 4, !tbaa !77
  %i.fi = icmp slt i32 %i.fd, 8388606
  %i.fj = zext i1 %i.fi to i32
  %i.fk = add nsw i32 %i.fd, %i.fj                ; 2 uses
  store i32 %i.fk, ptr %i.an, align 8, !tbaa !78
  store i32 0, ptr %i.ae, align 4, !tbaa !79
  store i8 0, ptr %i.as, align 4, !tbaa !51
  br label %.critedge

.critedge:                                        ; preds = %stbte__undo_record_prop_float.exit, %bb.p
  %i.fl = phi i32 [ %i.fk, %stbte__undo_record_prop_float.exit ], [ %i.dq, %bb.p ]
  %i.fm = phi i32 [ %i.fh, %stbte__undo_record_prop_float.exit ], [ %i.dr, %bb.p ]
  store float %i.dy, ptr %i.dv, align 4, !tbaa !54
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.o
  %i.fn = phi i32 [ %i.fl, %.critedge ], [ %i.dq, %bb.o ] ; 3 uses
  %i.fo = phi i32 [ %i.fm, %.critedge ], [ %i.dr, %bb.o ] ; 3 uses
  %indvars.iv.next118 = add nsw i64 %indvars.iv117, 1 ; 2 uses
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count124
  br i1 %exitcond125.not, label %._crit_edge111, label %bb.h, !llvm.loop !193

._crit_edge111:                                   ; preds = %bb.q
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %._crit_edge114.split, label %.preheader, !llvm.loop !194

._crit_edge114.split:                             ; preds = %._crit_edge111, %.preheader.lr.ph, %bb.g
  %i.fp = phi i32 [ %i.ar, %bb.g ], [ %i.ar, %.preheader.lr.ph ], [ %i.fn, %._crit_edge111 ]
  %i.fq = phi i32 [ %i.am, %bb.g ], [ %i.am, %.preheader.lr.ph ], [ %i.fo, %._crit_edge111 ] ; 2 uses
  %i.fr = add nuw nsw i32 %i.fq, 8388607
  %i.fs = and i32 %i.fr, 8388607                  ; 3 uses
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ft
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !35
  %i.fw = icmp eq i16 %i.fv, -2
  br i1 %i.fw, label %bb.r, label %stbte__end_undo.exit

bb.r:                                             ; preds = %._crit_edge114.split
  store i32 %i.fs, ptr %i.af, align 4, !tbaa !77
  %i.fx = add nsw i32 %i.fp, -1
  store i32 %i.fx, ptr %i.an, align 8, !tbaa !78
  br label %stbte__end_undo.exit

stbte__end_undo.exit:                             ; preds = %._crit_edge114.split, %bb.r
  %i.fy = phi i32 [ %i.fs, %bb.r ], [ %i.fq, %._crit_edge114.split ]
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.fz
  store i16 -4, ptr %i.ga, align 2, !tbaa !35
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5292), align 4, !tbaa !80
  br label %bb.s

bb.s:                                             ; preds = %stbte__should_copy_properties.exit, %stbte__end_undo.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @stbte__drag_update(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca [8 x i16], align 16               ; 18 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5268), align 4, !tbaa !127 ; 2 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5272), align 8, !tbaa !128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 44), align 4, !tbaa !95
  %.not = icmp eq i32 %i.d, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %stbte__clear_stack.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5260), align 4, !tbaa !129
  %i.f = sub nsw i32 %1, %i.e                     ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %stbte__clear_stack.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @stbte__ui, i64 5264), align 8, !tbaa !130
  %i.i = sub nsw i32 %2, %i.h                     ; 2 uses
  %i.j = icmp slt i32 %i.f, %i.b
  %i.k = icmp sgt i32 %i.i, -1
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  %i.l = icmp slt i32 %i.i, %i.c
  %or.cond112 = select i1 %or.cond, i1 %i.l, i1 false
  br i1 %or.cond112, label %.preheader122, label %stbte__clear_stack.exit

.preheader122:                                    ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 800008
  %i.n = load i32, ptr %i.m, align 8, !tbaa !41   ; 5 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %._crit_edge, label %._crit_edge.thread

._crit_edge:                                      ; preds = %.preheader122
  %i.p = sext i32 %2 to i64
  %i.q = getelementptr inbounds [3200 x i8], ptr %0, i64 %i.p
  %i.r = sext i32 %1 to i64
  %i.s = getelementptr inbounds [16 x i8], ptr %i.q, i64 %i.r
  %i.t = shl nuw i32 %i.n, 1
  %i.u = zext i32 %i.t to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 2 %i.s, i64 %i.u, i1 false), !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 800044
  %i.w = load i32, ptr %i.v, align 4, !tbaa !117
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 801040
  %i.y = load i32, ptr %i.x, align 8, !tbaa !116  ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  %spec.select.i = select i1 %i.z, i32 %i.w, i32 %i.y ; 2 uses
  %i.aa = icmp sgt i32 %spec.select.i, -1
  br i1 %i.aa, label %bb.g, label %.lr.ph.i

._crit_edge.thread:                               ; preds = %.preheader122
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 800044
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !117
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 801040
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !116 ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  %spec.select.i151 = select i1 %i.af, i32 %i.ac, i32 %i.ae ; 2 uses
  %i.ag = icmp sgt i32 %spec.select.i151, -1
  br i1 %i.ag, label %bb.g, label %stbte__clear_stack.exit

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 800896 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 801056
  %wide.trip.count.i = zext nneg i32 %i.n to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 800908
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !118
  %.not.peel.i = icmp eq i32 %i.ak, 0
  br i1 %.not.peel.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 800904
  %i.am = load i32, ptr %i.al, align 8, !tbaa !119
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ao = load i16, ptr %i.ai, align 8, !tbaa !52
  store i16 %i.ao, ptr %i.a, align 16, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph.i
  %exitcond.peel.not.i = icmp eq i32 %i.n, 1
  br i1 %exitcond.peel.not.i, label %stbte__clear_stack.exit, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %bb.f
  %i.ap = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %xtraiter = and i64 %i.ap, 1
  %i.aq = icmp eq i32 %i.n, 2
  br i1 %i.aq, label %.peel.next.i.epil.preheader, label %.peel.next.i.preheader.new

.peel.next.i.preheader.new:                       ; preds = %.peel.next.i.preheader
  %unroll_iter = and i64 %i.ap, -2
  br label %.peel.next.i

bb.g:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %spec.select.i152 = phi i32 [ %spec.select.i151, %._crit_edge.thread ], [ %spec.select.i, %._crit_edge ] ; 2 uses
  %i.ar = icmp eq i32 %spec.select.i152, 0
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 801056
  %i.at = load i16, ptr %i.as, align 8, !tbaa !52
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = phi i16 [ %i.at, %bb.h ], [ -1, %bb.g ]
  %i.av = zext nneg i32 %spec.select.i152 to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.av
  store i16 %i.au, ptr %i.aw, align 2, !tbaa !35
  br label %stbte__clear_stack.exit

.peel.next.i:                                     ; preds = %bb.n, %.peel.next.i.preheader.new
  %indvars.iv.i = phi i64 [ 1, %.peel.next.i.preheader.new ], [ %indvars.iv.next.i.1, %bb.n ] ; 4 uses
  %niter = phi i64 [ 0, %.peel.next.i.preheader.new ], [ %niter.next.1, %bb.n ]
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv.i ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !118
  %.not.i = icmp eq i32 %i.az, 0
  br i1 %.not.i, label %bb.j, label %.peel.next.i.1

bb.j:                                             ; preds = %.peel.next.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !119
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.k, label %.peel.next.i.1

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i
  store i16 -1, ptr %i.bd, align 2, !tbaa !35
  br label %.peel.next.i.1

.peel.next.i.1:                                   ; preds = %bb.k, %bb.j, %.peel.next.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv.next.i ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !118
  %.not.i.1 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.1, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.peel.next.i.1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !119
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i
  store i16 -1, ptr %i.bk, align 2, !tbaa !35
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.peel.next.i.1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %stbte__clear_stack.exit.loopexit.unr-lcssa, label %.peel.next.i, !llvm.loop !12

stbte__clear_stack.exit.loopexit.unr-lcssa:       ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %stbte__clear_stack.exit, label %.peel.next.i.epil.preheader

.peel.next.i.epil.preheader:                      ; preds = %stbte__clear_stack.exit.loopexit.unr-lcssa, %.peel.next.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 1, %.peel.next.i.preheader ], [ %indvars.iv.next.i.1, %stbte__clear_stack.exit.loopexit.unr-lcssa ] ; 2 uses
end_hunk_0
