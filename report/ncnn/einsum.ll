Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/einsum?download=true
inline.NumInlined: 330
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK4ncnn6Einsum7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.fx = load i32, ptr %i.dr, align 8, !tbaa !42
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !18  ; 2 uses
  %i.ga = sext i8 %i.fz to i32
  %i.gb = sext i8 %i.fz to i64
  %i.gc = getelementptr [4 x i8], ptr %i.cq, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.gc, i64 -420
  store i32 %i.fx, ptr %i.gd, align 4, !tbaa !33
  %i.ge = add nsw i32 %i.ga, -104
  %.sroa.speculated.peel451647653 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel428623630641, i32 %i.ge)
  %i.gf = load i32, ptr %i.ds, align 4, !tbaa !30
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dv, i64 3
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !18  ; 2 uses
  %i.gi = sext i8 %i.gh to i32
  %i.gj = sext i8 %i.gh to i64
  %i.gk = getelementptr [4 x i8], ptr %i.cq, i64 %i.gj
  %i.gl = getelementptr i8, ptr %i.gk, i64 -420
  store i32 %i.gf, ptr %i.gl, align 4, !tbaa !33
  %i.gm = add nsw i32 %i.gi, -104
  %.sroa.speculated.peel474659 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel451647653, i32 %i.gm)
  br label %._crit_edge

.lr.ph.split.peel.next454:                        ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.do to i64   ; 2 uses
  %i.gn = load i8, ptr %i.dv, align 1, !tbaa !18  ; 2 uses
  %i.go = sext i8 %i.gn to i32
  %i.gp = sext i8 %i.gn to i64
  %i.gq = getelementptr [4 x i8], ptr %i.cq, i64 %i.gp
  %i.gr = getelementptr i8, ptr %i.gq, i64 -420
  store i32 1, ptr %i.gr, align 4, !tbaa !33
  %i.gs = add nsw i32 %i.go, -104
  %.sroa.speculated.peel600 = tail call i32 @llvm.smax.i32(i32 %.0335362, i32 %i.gs)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !18  ; 2 uses
  %i.gv = sext i8 %i.gu to i32
  %i.gw = sext i8 %i.gu to i64
  %i.gx = getelementptr [4 x i8], ptr %i.cq, i64 %i.gw
  %i.gy = getelementptr i8, ptr %i.gx, i64 -420
  store i32 1, ptr %i.gy, align 4, !tbaa !33
  %i.gz = add nsw i32 %i.gv, -104
  %.sroa.speculated.peel428623630 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel600, i32 %i.gz)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !18  ; 2 uses
  %i.hc = sext i8 %i.hb to i32
  %i.hd = sext i8 %i.hb to i64
  %i.he = getelementptr [4 x i8], ptr %i.cq, i64 %i.hd
  %i.hf = getelementptr i8, ptr %i.he, i64 -420
  store i32 1, ptr %i.hf, align 4, !tbaa !33
  %i.hg = add nsw i32 %i.hc, -104
  %.sroa.speculated.peel451647 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel428623630, i32 %i.hg)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.dv, i64 3
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !18  ; 2 uses
  %i.hj = sext i8 %i.hi to i32
  %i.hk = sext i8 %i.hi to i64
  %i.hl = getelementptr [4 x i8], ptr %i.cq, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 -420
  store i32 1, ptr %i.hm, align 4, !tbaa !33
  %i.hn = add nsw i32 %i.hj, -104
  %.sroa.speculated.peel474 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel451647, i32 %i.hn) ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ho = add nsw i32 %i.do, -5
  %i.hp = icmp ult i32 %i.ho, 3
  br i1 %i.hp, label %.epil.preheader, label %.lr.ph.split.peel.next454.new

.lr.ph.split.peel.next454.new:                    ; preds = %.lr.ph.split.peel.next454
  %i.hq = and i64 %wide.trip.count, 2147483644
  %i.hr = add nsw i64 %i.hq, -8
  br label %bb.h

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.3186.us.peel = load i32, ptr %i.ds, align 4, !tbaa !33
  %i.hs = load i8, ptr %i.dv, align 1, !tbaa !18  ; 2 uses
  %i.ht = sext i8 %i.hs to i64
  %i.hu = getelementptr [4 x i8], ptr %i.cq, i64 %i.ht
  %i.hv = getelementptr i8, ptr %i.hu, i64 -420
  store i32 %.3186.us.peel, ptr %i.hv, align 4, !tbaa !33
  %i.hw = sext i8 %i.hs to i32
  %i.hx = add nsw i32 %i.hw, -104
  %.sroa.speculated.us.peel = tail call i32 @llvm.smax.i32(i32 %.0335362, i32 %i.hx)
  br label %._crit_edge

._crit_edge.loopexit690.unr-lcssa:                ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit690.unr-lcssa, %.lr.ph.split.peel.next454
  %indvars.iv.epil.init = phi i64 [ 4, %.lr.ph.split.peel.next454 ], [ %indvars.iv.next.3, %._crit_edge.loopexit690.unr-lcssa ]
  %.1360.epil.init = phi i32 [ %.sroa.speculated.peel474, %.lr.ph.split.peel.next454 ], [ %.sroa.speculated.3, %._crit_edge.loopexit690.unr-lcssa ]
  %lcmp.mod692 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod692)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.g ] ; 2 uses
  %.1360.epil = phi i32 [ %.1360.epil.init, %.epil.preheader ], [ %.sroa.speculated.epil, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.hy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv.epil
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !18  ; 2 uses
  %i.ia = sext i8 %i.hz to i32
  %i.ib = sext i8 %i.hz to i64
  %i.ic = getelementptr [4 x i8], ptr %i.cq, i64 %i.ib
  %i.id = getelementptr i8, ptr %i.ic, i64 -420
  store i32 1, ptr %i.id, align 4, !tbaa !33
  %i.ie = add nsw i32 %i.ia, -104
  %.sroa.speculated.epil = tail call i32 @llvm.smax.i32(i32 %.1360.epil, i32 %i.ie) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.g, !llvm.loop !71

._crit_edge:                                      ; preds = %._crit_edge.loopexit690.unr-lcssa, %bb.g, %bb.e, %bb.f, %.thread656, %._crit_edge.loopexit, %bb.d
  %.1.lcssa = phi i32 [ %.0335362, %bb.d ], [ %.sroa.speculated.us.peel, %._crit_edge.loopexit ], [ %.sroa.speculated.peel474659, %.thread656 ], [ %.sroa.speculated.peel451, %bb.f ], [ %.sroa.speculated.peel428, %bb.e ], [ %.sroa.speculated.3, %._crit_edge.loopexit690.unr-lcssa ], [ %.sroa.speculated.epil, %bb.g ] ; 5 uses
  %i.if = add nuw i64 %.0194363, 1                ; 2 uses
  %exitcond541.not = icmp eq i64 %i.if, %i.dd
  br i1 %exitcond541.not, label %._crit_edge366, label %bb.d, !llvm.loop !72

bb.h:                                             ; preds = %bb.h, %.lr.ph.split.peel.next454.new
  %indvars.iv = phi i64 [ 4, %.lr.ph.split.peel.next454.new ], [ %indvars.iv.next.3, %bb.h ] ; 5 uses
  %.1360 = phi i32 [ %.sroa.speculated.peel474, %.lr.ph.split.peel.next454.new ], [ %.sroa.speculated.3, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.split.peel.next454.new ], [ %niter.next.3, %bb.h ] ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !18  ; 2 uses
  %i.ii = sext i8 %i.ih to i32
  %i.ij = sext i8 %i.ih to i64
  %i.ik = getelementptr [4 x i8], ptr %i.cq, i64 %i.ij
  %i.il = getelementptr i8, ptr %i.ik, i64 -420
  store i32 1, ptr %i.il, align 4, !tbaa !33
  %i.im = add nsw i32 %i.ii, -104
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.1360, i32 %i.im)
  %i.in = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 1
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !18  ; 2 uses
  %i.iq = sext i8 %i.ip to i32
  %i.ir = sext i8 %i.ip to i64
  %i.is = getelementptr [4 x i8], ptr %i.cq, i64 %i.ir
  %i.it = getelementptr i8, ptr %i.is, i64 -420
  store i32 1, ptr %i.it, align 4, !tbaa !33
  %i.iu = add nsw i32 %i.iq, -104
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 %i.iu)
  %i.iv = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 2
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !18  ; 2 uses
  %i.iy = sext i8 %i.ix to i32
  %i.iz = sext i8 %i.ix to i64
  %i.ja = getelementptr [4 x i8], ptr %i.cq, i64 %i.iz
  %i.jb = getelementptr i8, ptr %i.ja, i64 -420
  store i32 1, ptr %i.jb, align 4, !tbaa !33
  %i.jc = add nsw i32 %i.iy, -104
  %.sroa.speculated.2 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.1, i32 %i.jc)
  %i.jd = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 3
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !18  ; 2 uses
  %i.jg = sext i8 %i.jf to i32
  %i.jh = sext i8 %i.jf to i64
  %i.ji = getelementptr [4 x i8], ptr %i.cq, i64 %i.jh
  %i.jj = getelementptr i8, ptr %i.ji, i64 -420
  store i32 1, ptr %i.jj, align 4, !tbaa !33
  %i.jk = add nsw i32 %i.jg, -104
  %.sroa.speculated.3 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.2, i32 %i.jk) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter, %i.hr
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit690.unr-lcssa, label %bb.h, !llvm.loop !73

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc284
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.dh, ptr noundef nonnull align 4 dereferenceable(64) %i.cq, i64 64, i1 false)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef 64) #20
  store ptr %i.dh, ptr %4, align 8, !tbaa !46
  %i.jl = getelementptr [4 x i8], ptr %i.dh, i64 %i.df
  store ptr %i.jl, ptr %i.ct, align 8, !tbaa !47
  %i.jm = getelementptr inbounds nuw i8, ptr %i.dh, i64 128 ; 2 uses
  store ptr %i.jm, ptr %i.cs, align 8, !tbaa !92
  br label %.sink.split

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.c
  %.idx = shl nuw nsw i64 %i.df, 2
  %i.jn = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx
  store ptr %i.jn, ptr %i.ct, align 8, !tbaa !47
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.jq = trunc i64 %i.jp to i32                  ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.1.lcssa, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i, label %bb.i

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread667, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.jr = phi i32 [ %i.cz, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread667 ], [ %i.jq, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %bb.j

.sink.split:                                      ; preds = %bb.c, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
  %i.js = phi ptr [ %i.jm, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread ], [ %i.cr, %bb.c ]
  %.ph680 = phi ptr [ %i.dh, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread ], [ %i.cq, %bb.c ]
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.jv = trunc i64 %i.ju to i32
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %6 = phi ptr [ %i.cr, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.js, %.sink.split ] ; 3 uses
  %7 = phi i32 [ %i.jq, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.jv, %.sink.split ] ; 2 uses
  %i.jw = phi ptr [ %i.cq, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %.ph680, %.sink.split ] ; 3 uses
  %i.jx = shl nuw nsw i64 %i.df, 2
  %i.jy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jx) #25
          to label %.noexc275 unwind label %bb.n  ; 6 uses

.noexc275:                                        ; preds = %bb.i
  store ptr %i.jy, ptr %5, align 8, !tbaa !46
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.df ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.jz, ptr %i.ka, align 8, !tbaa !92
  store i32 0, ptr %i.jy, align 4, !tbaa !33
  %i.kb = getelementptr i8, ptr %i.jy, i64 4      ; 3 uses
  %i.kc = add nsw i64 %i.df, -1                   ; 2 uses
  %i.kd = icmp eq i64 %i.kc, 0
  br i1 %i.kd, label %bb.j, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc275
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.kc, 2  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kb, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !33
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.j

bb.j:                                             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc275, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i
  %8 = phi ptr [ %i.cr, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %6, %.noexc275 ], [ %6, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 3 uses
  %9 = phi i32 [ %i.jr, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %7, %.noexc275 ], [ %7, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 3 uses
  %i.kf = phi ptr [ %i.cq, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.jw, %.noexc275 ], [ %i.jw, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 14 uses
  %i.kg = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.jz, %.noexc275 ], [ %i.jz, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.kh = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.jy, %.noexc275 ], [ %i.jy, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 16 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.kb, %.noexc275 ], [ %i.ke, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.ki = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.ki, align 8, !tbaa !47
  switch i32 %9, label %.critedge [
    i32 1, label %bb.k
    i32 2, label %bb.o
    i32 3, label %bb.r
    i32 4, label %bb.u
  ]

bb.k:                                             ; preds = %bb.j
  %i.kj = load ptr, ptr %2, align 8, !tbaa !39    ; 6 uses
  %i.kk = load i32, ptr %i.kf, align 4, !tbaa !33
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !90
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.kj, i32 noundef %i.kk, i64 noundef %i.c, ptr noundef %i.km)
          to label %bb.l unwind label %bb.x

bb.l:                                             ; preds = %bb.k
  %i.kn = load ptr, ptr %i.kj, align 8, !tbaa !29
  %i.ko = icmp eq ptr %i.kn, null
  br i1 %i.ko, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit267

_ZNK4ncnn3Mat5emptyEv.exit267:                    ; preds = %bb.l
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kj, i64 64
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !28
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kj, i64 56
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !91
  %i.kt = sext i32 %i.ks to i64
  %i.ku = mul i64 %i.kq, %i.kt
  %i.kv = icmp eq i64 %i.ku, 0
  br i1 %i.kv, label %.critedge, label %.preheader359

.preheader359:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit267
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kj, i64 44 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !30
  %i.ky = icmp sgt i32 %i.kx, 0
  br i1 %i.ky, label %.lr.ph369, label %.critedge

bb.m:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %10

bb.n:                                             ; preds = %bb.i
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit279

.lr.ph369:                                        ; preds = %.preheader359, %.lr.ph369
  %indvars.iv542 = phi i64 [ %indvars.iv.next543, %.lr.ph369 ], [ 0, %.preheader359 ] ; 3 uses
  %i.lb = trunc nuw nsw i64 %indvars.iv542 to i32
  store i32 %i.lb, ptr %i.kh, align 4, !tbaa !33
  %i.lc = call fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL7sum_dimERKSt6vectorIiSaIiEEiRKS0_INS_3MatESaIS5_EERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERS2_(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.ld = load ptr, ptr %i.kj, align 8, !tbaa !29
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv542
  store float %i.lc, ptr %i.le, align 4, !tbaa !44
  %indvars.iv.next543 = add nuw nsw i64 %indvars.iv542, 1 ; 2 uses
  %i.lf = load i32, ptr %i.kw, align 4, !tbaa !30
  %i.lg = sext i32 %i.lf to i64
  %i.lh = icmp slt i64 %indvars.iv.next543, %i.lg
  br i1 %i.lh, label %.lr.ph369, label %.critedge.thread, !llvm.loop !74

bb.o:                                             ; preds = %bb.j
  %i.li = load ptr, ptr %2, align 8, !tbaa !39    ; 8 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !33
  %i.ll = load i32, ptr %i.kf, align 4, !tbaa !33
  %i.lm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !90
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.li, i32 noundef %i.lk, i32 noundef %i.ll, i64 noundef %i.c, ptr noundef %i.ln)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.lo = load ptr, ptr %i.li, align 8, !tbaa !29
  %i.lp = icmp eq ptr %i.lo, null
  br i1 %i.lp, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit266

_ZNK4ncnn3Mat5emptyEv.exit266:                    ; preds = %bb.p
  %i.lq = getelementptr inbounds nuw i8, ptr %i.li, i64 64
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !28
  %i.ls = getelementptr inbounds nuw i8, ptr %i.li, i64 56
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !91
  %i.lu = sext i32 %i.lt to i64
  %i.lv = mul i64 %i.lr, %i.lu
  %i.lw = icmp eq i64 %i.lv, 0
  br i1 %i.lw, label %.critedge, label %.preheader358

.preheader358:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit266
  %i.lx = getelementptr inbounds nuw i8, ptr %i.li, i64 48 ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 8, !tbaa !42
  %i.lz = icmp sgt i32 %i.ly, 0
  br i1 %i.lz, label %.lr.ph376, label %.critedge

.lr.ph376:                                        ; preds = %.preheader358
  %i.ma = getelementptr inbounds nuw i8, ptr %i.li, i64 44 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.mc = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph376, %._crit_edge374
  %indvars.iv548 = phi i64 [ 0, %.lr.ph376 ], [ %indvars.iv.next549, %._crit_edge374 ] ; 3 uses
  %i.md = trunc nuw nsw i64 %indvars.iv548 to i32
  store i32 %i.md, ptr %i.kh, align 4, !tbaa !33
  %i.me = load i32, ptr %i.ma, align 4, !tbaa !30
  %i.mf = icmp sgt i32 %i.me, 0
  br i1 %i.mf, label %.lr.ph373, label %._crit_edge374

._crit_edge374:                                   ; preds = %.lr.ph373, %bb.q
  %indvars.iv.next549 = add nuw nsw i64 %indvars.iv548, 1 ; 2 uses
  %i.mg = load i32, ptr %i.lx, align 8, !tbaa !42
  %i.mh = sext i32 %i.mg to i64
  %i.mi = icmp slt i64 %indvars.iv.next549, %i.mh
  br i1 %i.mi, label %bb.q, label %._crit_edge377, !llvm.loop !75

.lr.ph373:                                        ; preds = %bb.q, %.lr.ph373
  %indvars.iv545 = phi i64 [ %indvars.iv.next546, %.lr.ph373 ], [ 0, %bb.q ] ; 3 uses
  %i.mj = trunc nuw nsw i64 %indvars.iv545 to i32
  store i32 %i.mj, ptr %i.mb, align 4, !tbaa !33
  %i.mk = call fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL7sum_dimERKSt6vectorIiSaIiEEiRKS0_INS_3MatESaIS5_EERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERS2_(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.ml = load ptr, ptr %i.li, align 8, !tbaa !29
  %i.mm = load i32, ptr %i.ma, align 4, !tbaa !30
  %i.mn = sext i32 %i.mm to i64                   ; 2 uses
  %i.mo = mul nsw i64 %indvars.iv548, %i.mn
  %i.mp = load i64, ptr %i.mc, align 8, !tbaa !40
  %i.mq = mul i64 %i.mo, %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.mq
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %indvars.iv545
  store float %i.mk, ptr %i.ms, align 4, !tbaa !44
  %indvars.iv.next546 = add nuw nsw i64 %indvars.iv545, 1 ; 2 uses
  %i.mt = icmp slt i64 %indvars.iv.next546, %i.mn
  br i1 %i.mt, label %.lr.ph373, label %._crit_edge374, !llvm.loop !76

._crit_edge377:                                   ; preds = %._crit_edge374
  switch i32 %9, label %.critedge.thread [
    i32 3, label %bb.r
    i32 4, label %bb.u
  ]

bb.r:                                             ; preds = %bb.j, %._crit_edge377
  %i.mu = load ptr, ptr %2, align 8, !tbaa !39    ; 8 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !33
  %i.mx = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !33
  %i.mz = load i32, ptr %i.kf, align 4, !tbaa !33
  %i.na = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !90
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.mu, i32 noundef %i.mw, i32 noundef %i.my, i32 noundef %i.mz, i64 noundef %i.c, ptr noundef %i.nb)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.nc = load ptr, ptr %i.mu, align 8, !tbaa !29
  %i.nd = icmp eq ptr %i.nc, null
  br i1 %i.nd, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit265

_ZNK4ncnn3Mat5emptyEv.exit265:                    ; preds = %bb.s
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mu, i64 64 ; 2 uses
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !28
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mu, i64 56 ; 2 uses
  %i.nh = load i32, ptr %i.ng, align 8, !tbaa !91 ; 2 uses
  %i.ni = sext i32 %i.nh to i64
  %i.nj = mul i64 %i.nf, %i.ni
  %i.nk = icmp eq i64 %i.nj, 0
  br i1 %i.nk, label %.critedge, label %.preheader357

.preheader357:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit265
  %i.nl = icmp sgt i32 %i.nh, 0
  br i1 %i.nl, label %.lr.ph385, label %.critedge

.lr.ph385:                                        ; preds = %.preheader357
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mu, i64 48 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.no = getelementptr inbounds nuw i8, ptr %i.mu, i64 44 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph385, %._crit_edge383
  %indvars.iv557 = phi i64 [ 0, %.lr.ph385 ], [ %indvars.iv.next558, %._crit_edge383 ] ; 3 uses
  %i.nr = trunc nuw nsw i64 %indvars.iv557 to i32
  store i32 %i.nr, ptr %i.kh, align 4, !tbaa !33
  %i.ns = load i32, ptr %i.nm, align 8, !tbaa !42
  %i.nt = icmp sgt i32 %i.ns, 0
  br i1 %i.nt, label %.lr.ph382, label %._crit_edge383

._crit_edge383:                                   ; preds = %._crit_edge379, %bb.t
  %indvars.iv.next558 = add nuw nsw i64 %indvars.iv557, 1 ; 2 uses
  %i.nu = load i32, ptr %i.ng, align 8, !tbaa !91
  %i.nv = sext i32 %i.nu to i64
  %i.nw = icmp slt i64 %indvars.iv.next558, %i.nv
  br i1 %i.nw, label %bb.t, label %._crit_edge386, !llvm.loop !77

.lr.ph382:                                        ; preds = %bb.t, %._crit_edge379
  %indvars.iv554 = phi i64 [ %indvars.iv.next555, %._crit_edge379 ], [ 0, %bb.t ] ; 3 uses
  %i.nx = trunc nuw nsw i64 %indvars.iv554 to i32
  store i32 %i.nx, ptr %i.nn, align 4, !tbaa !33
  %i.ny = load i32, ptr %i.no, align 4, !tbaa !30
  %i.nz = icmp sgt i32 %i.ny, 0
  br i1 %i.nz, label %.noexc270, label %._crit_edge379

._crit_edge379:                                   ; preds = %.noexc270, %.lr.ph382
  %indvars.iv.next555 = add nuw nsw i64 %indvars.iv554, 1 ; 2 uses
  %i.oa = load i32, ptr %i.nm, align 8, !tbaa !42
  %i.ob = sext i32 %i.oa to i64
  %i.oc = icmp slt i64 %indvars.iv.next555, %i.ob
  br i1 %i.oc, label %.lr.ph382, label %._crit_edge383, !llvm.loop !78

.noexc270:                                        ; preds = %.lr.ph382, %.noexc270
  %indvars.iv551 = phi i64 [ %indvars.iv.next552, %.noexc270 ], [ 0, %.lr.ph382 ] ; 3 uses
  %i.od = trunc nuw nsw i64 %indvars.iv551 to i32
  store i32 %i.od, ptr %i.np, align 4, !tbaa !33
  %i.oe = call fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL7sum_dimERKSt6vectorIiSaIiEEiRKS0_INS_3MatESaIS5_EERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERS2_(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.of = load i32, ptr %i.no, align 4, !tbaa !30, !noalias !95
  %i.og = load ptr, ptr %i.mu, align 8, !tbaa !29, !noalias !95
  %i.oh = load i64, ptr %i.ne, align 8, !tbaa !28, !noalias !95
  %i.oi = mul i64 %i.oh, %indvars.iv557
  %i.oj = load i64, ptr %i.nq, align 8, !tbaa !40, !noalias !95 ; 2 uses
  %i.ok = mul i64 %i.oi, %i.oj
  %i.ol = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.ok
  %i.om = sext i32 %i.of to i64                   ; 2 uses
  %i.on = mul nsw i64 %indvars.iv554, %i.om
  %i.oo = mul i64 %i.on, %i.oj
  %i.op = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.oo
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv551
  store float %i.oe, ptr %i.oq, align 4, !tbaa !44
  %indvars.iv.next552 = add nuw nsw i64 %indvars.iv551, 1 ; 2 uses
  %i.or = icmp slt i64 %indvars.iv.next552, %i.om
  br i1 %i.or, label %.noexc270, label %._crit_edge379, !llvm.loop !81

._crit_edge386:                                   ; preds = %._crit_edge383
  %i.os = icmp eq i32 %9, 4
  br i1 %i.os, label %bb.u, label %.critedge.thread

bb.u:                                             ; preds = %bb.j, %._crit_edge377, %._crit_edge386
  %i.ot = load ptr, ptr %2, align 8, !tbaa !39    ; 9 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.kf, i64 12
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !33
  %i.ow = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !33
  %i.oy = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !33
  %i.pa = load i32, ptr %i.kf, align 4, !tbaa !33
  %i.pb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !90
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ot, i32 noundef %i.ov, i32 noundef %i.ox, i32 noundef %i.oz, i32 noundef %i.pa, i64 noundef %i.c, ptr noundef %i.pc)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.pd = load ptr, ptr %i.ot, align 8, !tbaa !29
  %i.pe = icmp eq ptr %i.pd, null
  br i1 %i.pe, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.v
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ot, i64 64 ; 2 uses
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !28
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ot, i64 56 ; 2 uses
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !91 ; 2 uses
  %i.pj = sext i32 %i.pi to i64
  %i.pk = mul i64 %i.pg, %i.pj
  %i.pl = icmp eq i64 %i.pk, 0
  br i1 %i.pl, label %.critedge, label %.preheader

.preheader:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.pm = icmp sgt i32 %i.pi, 0
  br i1 %i.pm, label %.lr.ph398, label %.critedge

.lr.ph398:                                        ; preds = %.preheader
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ot, i64 52 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ot, i64 48 ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ot, i64 44 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.kh, i64 12
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ot, i64 16
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph398, %._crit_edge396
  %indvars.iv569 = phi i64 [ 0, %.lr.ph398 ], [ %indvars.iv.next570, %._crit_edge396 ] ; 3 uses
  %i.pu = trunc nuw nsw i64 %indvars.iv569 to i32
  store i32 %i.pu, ptr %i.kh, align 4, !tbaa !33
  %i.pv = load i32, ptr %i.pn, align 4, !tbaa !93
  %i.pw = icmp sgt i32 %i.pv, 0
  br i1 %i.pw, label %.lr.ph395, label %._crit_edge396

._crit_edge396:                                   ; preds = %._crit_edge392, %bb.w
  %indvars.iv.next570 = add nuw nsw i64 %indvars.iv569, 1 ; 2 uses
  %i.px = load i32, ptr %i.ph, align 8, !tbaa !91
  %i.py = sext i32 %i.px to i64
  %i.pz = icmp slt i64 %indvars.iv.next570, %i.py
  br i1 %i.pz, label %bb.w, label %.critedge.thread, !llvm.loop !82

.lr.ph395:                                        ; preds = %bb.w, %._crit_edge392
  %indvars.iv566 = phi i64 [ %indvars.iv.next567, %._crit_edge392 ], [ 0, %bb.w ] ; 3 uses
  %i.qa = trunc nuw nsw i64 %indvars.iv566 to i32
  store i32 %i.qa, ptr %i.po, align 4, !tbaa !33
  %i.qb = load i32, ptr %i.pp, align 8, !tbaa !42
  %i.qc = icmp sgt i32 %i.qb, 0
  br i1 %i.qc, label %.lr.ph391, label %._crit_edge392

._crit_edge392:                                   ; preds = %._crit_edge388, %.lr.ph395
  %indvars.iv.next567 = add nuw nsw i64 %indvars.iv566, 1 ; 2 uses
  %i.qd = load i32, ptr %i.pn, align 4, !tbaa !93
  %i.qe = sext i32 %i.qd to i64
  %i.qf = icmp slt i64 %indvars.iv.next567, %i.qe
  br i1 %i.qf, label %.lr.ph395, label %._crit_edge396, !llvm.loop !83

.lr.ph391:                                        ; preds = %.lr.ph395, %._crit_edge388
  %indvars.iv563 = phi i64 [ %indvars.iv.next564, %._crit_edge388 ], [ 0, %.lr.ph395 ] ; 3 uses
  %i.qg = trunc nuw nsw i64 %indvars.iv563 to i32
  store i32 %i.qg, ptr %i.pq, align 4, !tbaa !33
  %i.qh = load i32, ptr %i.pr, align 4, !tbaa !30
  %i.qi = icmp sgt i32 %i.qh, 0
  br i1 %i.qi, label %.noexc269, label %.._crit_edge388_crit_edge

.._crit_edge388_crit_edge:                        ; preds = %.lr.ph391
  %.pre = load i32, ptr %i.pp, align 8, !tbaa !42
  %.pre579 = sext i32 %.pre to i64
  br label %._crit_edge388

._crit_edge388:                                   ; preds = %.noexc269, %.._crit_edge388_crit_edge
  %.pre-phi = phi i64 [ %.pre579, %.._crit_edge388_crit_edge ], [ %i.qv, %.noexc269 ]
  %indvars.iv.next564 = add nuw nsw i64 %indvars.iv563, 1 ; 2 uses
  %i.qj = icmp slt i64 %indvars.iv.next564, %.pre-phi
  br i1 %i.qj, label %.lr.ph391, label %._crit_edge392, !llvm.loop !84

.noexc269:                                        ; preds = %.lr.ph391, %.noexc269
  %indvars.iv560 = phi i64 [ %indvars.iv.next561, %.noexc269 ], [ 0, %.lr.ph391 ] ; 3 uses
  %i.qk = trunc nuw nsw i64 %indvars.iv560 to i32
  store i32 %i.qk, ptr %i.ps, align 4, !tbaa !33
  %i.ql = call fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL7sum_dimERKSt6vectorIiSaIiEEiRKS0_INS_3MatESaIS5_EERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERS2_(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.qm = load i32, ptr %i.pr, align 4, !tbaa !30, !noalias !96
  %i.qn = load i32, ptr %i.pp, align 8, !tbaa !42, !noalias !96
  %i.qo = load ptr, ptr %i.ot, align 8, !tbaa !29, !noalias !96
  %i.qp = load i64, ptr %i.pf, align 8, !tbaa !28, !noalias !96
  %i.qq = mul i64 %i.qp, %indvars.iv569
  %i.qr = load i64, ptr %i.pt, align 8, !tbaa !40, !noalias !96 ; 2 uses
  %i.qs = mul i64 %i.qq, %i.qr
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qo, i64 %i.qs
  %i.qu = sext i32 %i.qm to i64                   ; 2 uses
  %i.qv = sext i32 %i.qn to i64                   ; 2 uses
  %i.qw = mul i64 %i.qr, %i.qu                    ; 2 uses
  %i.qx = mul i64 %i.qw, %indvars.iv566
  %i.qy = mul i64 %i.qx, %i.qv
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.qy
  %i.ra = mul i64 %i.qw, %indvars.iv563
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.ra
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %indvars.iv560
  store float %i.ql, ptr %i.rc, align 4, !tbaa !44
  %indvars.iv.next561 = add nuw nsw i64 %indvars.iv560, 1 ; 2 uses
  %i.rd = icmp slt i64 %indvars.iv.next561, %i.qu
  br i1 %i.rd, label %.noexc269, label %._crit_edge388, !llvm.loop !87

bb.x:                                             ; preds = %bb.u, %bb.k, %bb.o, %bb.r
  %i.re = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i278 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i278, label %_ZNSt6vectorIiSaIiEED2Ev.exit279, label %bb.y

.critedge:                                        ; preds = %.preheader357, %.preheader358, %.preheader359, %.preheader, %bb.j, %bb.v, %bb.s, %bb.p, %bb.l, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit265, %_ZNK4ncnn3Mat5emptyEv.exit266, %_ZNK4ncnn3Mat5emptyEv.exit267
  %.8 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %bb.v ], [ -100, %bb.p ], [ -100, %bb.l ], [ -100, %bb.s ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit265 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit267 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit266 ], [ 0, %.preheader ], [ 0, %bb.j ], [ 0, %.preheader358 ], [ 0, %.preheader359 ], [ 0, %.preheader357 ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.critedge.thread

.critedge.thread:                                 ; preds = %._crit_edge396, %.lr.ph369, %._crit_edge377, %._crit_edge386, %.critedge
  %.8673 = phi i32 [ %.8, %.critedge ], [ 0, %.lr.ph369 ], [ 0, %._crit_edge377 ], [ 0, %._crit_edge386 ], [ 0, %._crit_edge396 ]
  %i.rf = ptrtoint ptr %i.kg to i64
  %i.rg = ptrtoint ptr %i.kh to i64
  %i.rh = sub i64 %i.rf, %i.rg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef %i.rh) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.critedge, %.critedge.thread
  %.8674 = phi i32 [ %.8, %.critedge ], [ %.8673, %.critedge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ri = ptrtoint ptr %8 to i64
  %i.rj = ptrtoint ptr %i.kf to i64
  %i.rk = sub i64 %i.ri, %i.rj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kf, i64 noundef %i.rk) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNK4ncnn3Mat5emptyEv.exit268.thread

bb.y:                                             ; preds = %bb.x
  %i.rl = ptrtoint ptr %i.kg to i64
  %i.rm = ptrtoint ptr %i.kh to i64
  %i.rn = sub i64 %i.rl, %i.rm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef %i.rn) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit279

_ZNSt6vectorIiSaIiEED2Ev.exit279:                 ; preds = %bb.y, %bb.x, %bb.n
  %i.ro = phi ptr [ %6, %bb.n ], [ %8, %bb.x ], [ %8, %bb.y ]
  %i.rp = phi ptr [ %i.jw, %bb.n ], [ %i.kf, %bb.x ], [ %i.kf, %bb.y ]
  %.pn229.pn.pn.pn.pn = phi { ptr, i32 } [ %i.la, %bb.n ], [ %i.re, %bb.x ], [ %i.re, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %10

10:                                               ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit279, %bb.m
  %11 = phi ptr [ %i.ro, %_ZNSt6vectorIiSaIiEED2Ev.exit279 ], [ %i.cr, %bb.m ]
  %12 = phi ptr [ %i.rp, %_ZNSt6vectorIiSaIiEED2Ev.exit279 ], [ %i.cq, %bb.m ] ; 3 uses
  %.pn229.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn229.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit279 ], [ %i.kz, %bb.m ]
  %.not.i.i.i280 = icmp eq ptr %12, null
  br i1 %.not.i.i.i280, label %_ZNSt6vectorIiSaIiEED2Ev.exit281, label %bb.z

bb.z:                                             ; preds = %10
  %i.rq = ptrtoint ptr %11 to i64
  %i.rr = ptrtoint ptr %12 to i64
  %i.rs = sub i64 %i.rq, %i.rr
  tail call void @_ZdlPvm(ptr noundef nonnull %12, i64 noundef %i.rs) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit281

_ZNSt6vectorIiSaIiEED2Ev.exit281:                 ; preds = %bb.z, %10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn229.pn.pn.pn.pn.pn

_ZNK4ncnn3Mat5emptyEv.exit268.thread:             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %._crit_edge403, %_ZNK4ncnn3Mat5emptyEv.exit268, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.9 = phi i32 [ %.8674, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ 0, %._crit_edge403 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit268 ], [ -100, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  ret i32 %.9
}

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn6EinsumC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn6EinsumE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %i.d, align 8, !tbaa !32
  store i8 0, ptr %i.c, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.e, align 8, !tbaa !104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.f, align 1, !tbaa !105
  ret void
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare void @_ZNK4ncnn9ParamDict3getEiRKNS_3MatE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !21     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #26
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !31
  %i.s = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !17
  %i.z = load i64, ptr %i.t, align 8, !tbaa !18
  store i64 %i.z, ptr %i.r, align 8, !tbaa !18
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !32
  store ptr %i.t, ptr %2, align 8, !tbaa !17
  store i64 0, ptr %i.ab, align 8, !tbaa !32
  store i8 0, ptr %i.t, align 8, !tbaa !18
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !31, !alias.scope !113
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !17, !alias.scope !114 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !32, !alias.scope !114 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !115
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !17, !alias.scope !113
  %i.al = load i64, ptr %i.af, align 8, !tbaa !18, !alias.scope !114
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !18, !alias.scope !113
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !32, !alias.scope !114
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !32, !alias.scope !113
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !17, !alias.scope !114
  store i64 0, ptr %i.an, align 8, !tbaa !32, !alias.scope !114
  store i8 0, ptr %i.af, align 8, !tbaa !18, !alias.scope !114
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !109

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !31, !alias.scope !116
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !17, !alias.scope !117 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
end_hunk_0
