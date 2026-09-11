Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/einsum?download=true
inline.NumInlined: 330
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK4ncnn6Einsum7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !18  ; 2 uses
  %i.fs = sext i8 %i.fr to i32
  %i.ft = sext i8 %i.fr to i64
  %i.fu = getelementptr [4 x i8], ptr %i.cq, i64 %i.ft
  %i.fv = getelementptr i8, ptr %i.fu, i64 -420
  store i32 %i.fp, ptr %i.fv, align 4, !tbaa !33
  %i.fw = add nsw i32 %i.fs, -104
  %.sroa.speculated.peel433628635646 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel605623, i32 %i.fw)
  %i.fx = load i32, ptr %i.dr, align 8, !tbaa !42
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !18  ; 2 uses
  %i.ga = sext i8 %i.fz to i32
  %i.gb = sext i8 %i.fz to i64
  %i.gc = getelementptr [4 x i8], ptr %i.cq, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.gc, i64 -420
  store i32 %i.fx, ptr %i.gd, align 4, !tbaa !33
  %i.ge = add nsw i32 %i.ga, -104
  %.sroa.speculated.peel456652658 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel433628635646, i32 %i.ge)
  %i.gf = load i32, ptr %i.ds, align 4, !tbaa !30
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dv, i64 3
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !18  ; 2 uses
  %i.gi = sext i8 %i.gh to i32
  %i.gj = sext i8 %i.gh to i64
  %i.gk = getelementptr [4 x i8], ptr %i.cq, i64 %i.gj
  %i.gl = getelementptr i8, ptr %i.gk, i64 -420
  store i32 %i.gf, ptr %i.gl, align 4, !tbaa !33
  %i.gm = add nsw i32 %i.gi, -104
  %.sroa.speculated.peel479664 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel456652658, i32 %i.gm)
  br label %._crit_edge

.lr.ph.split.peel.next459:                        ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.do to i64   ; 2 uses
  %i.gn = load i8, ptr %i.dv, align 1, !tbaa !18  ; 2 uses
  %i.go = sext i8 %i.gn to i32
  %i.gp = sext i8 %i.gn to i64
  %i.gq = getelementptr [4 x i8], ptr %i.cq, i64 %i.gp
  %i.gr = getelementptr i8, ptr %i.gq, i64 -420
  store i32 1, ptr %i.gr, align 4, !tbaa !33
  %i.gs = add nsw i32 %i.go, -104
  %.sroa.speculated.peel605 = tail call i32 @llvm.smax.i32(i32 %.0335367, i32 %i.gs)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !18  ; 2 uses
  %i.gv = sext i8 %i.gu to i32
  %i.gw = sext i8 %i.gu to i64
  %i.gx = getelementptr [4 x i8], ptr %i.cq, i64 %i.gw
  %i.gy = getelementptr i8, ptr %i.gx, i64 -420
  store i32 1, ptr %i.gy, align 4, !tbaa !33
  %i.gz = add nsw i32 %i.gv, -104
  %.sroa.speculated.peel433628635 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel605, i32 %i.gz)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !18  ; 2 uses
  %i.hc = sext i8 %i.hb to i32
  %i.hd = sext i8 %i.hb to i64
  %i.he = getelementptr [4 x i8], ptr %i.cq, i64 %i.hd
  %i.hf = getelementptr i8, ptr %i.he, i64 -420
  store i32 1, ptr %i.hf, align 4, !tbaa !33
  %i.hg = add nsw i32 %i.hc, -104
  %.sroa.speculated.peel456652 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel433628635, i32 %i.hg)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.dv, i64 3
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !18  ; 2 uses
  %i.hj = sext i8 %i.hi to i32
  %i.hk = sext i8 %i.hi to i64
  %i.hl = getelementptr [4 x i8], ptr %i.cq, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 -420
  store i32 1, ptr %i.hm, align 4, !tbaa !33
  %i.hn = add nsw i32 %i.hj, -104
  %.sroa.speculated.peel479 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel456652, i32 %i.hn) ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ho = add nsw i32 %i.do, -5
  %i.hp = icmp ult i32 %i.ho, 3
  br i1 %i.hp, label %.epil.preheader, label %.lr.ph.split.peel.next459.new

.lr.ph.split.peel.next459.new:                    ; preds = %.lr.ph.split.peel.next459
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
  %.sroa.speculated.us.peel = tail call i32 @llvm.smax.i32(i32 %.0335367, i32 %i.hx)
  br label %._crit_edge

._crit_edge.loopexit695.unr-lcssa:                ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit695.unr-lcssa, %.lr.ph.split.peel.next459
  %indvars.iv.epil.init = phi i64 [ 4, %.lr.ph.split.peel.next459 ], [ %indvars.iv.next.3, %._crit_edge.loopexit695.unr-lcssa ]
  %.1365.epil.init = phi i32 [ %.sroa.speculated.peel479, %.lr.ph.split.peel.next459 ], [ %.sroa.speculated.3, %._crit_edge.loopexit695.unr-lcssa ]
  %lcmp.mod697 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod697)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.g ] ; 2 uses
  %.1365.epil = phi i32 [ %.1365.epil.init, %.epil.preheader ], [ %.sroa.speculated.epil, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.hy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv.epil
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !18  ; 2 uses
  %i.ia = sext i8 %i.hz to i32
  %i.ib = sext i8 %i.hz to i64
  %i.ic = getelementptr [4 x i8], ptr %i.cq, i64 %i.ib
  %i.id = getelementptr i8, ptr %i.ic, i64 -420
  store i32 1, ptr %i.id, align 4, !tbaa !33
  %i.ie = add nsw i32 %i.ia, -104
  %.sroa.speculated.epil = tail call i32 @llvm.smax.i32(i32 %.1365.epil, i32 %i.ie) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.g, !llvm.loop !71

._crit_edge:                                      ; preds = %._crit_edge.loopexit695.unr-lcssa, %bb.g, %bb.e, %bb.f, %.thread661, %._crit_edge.loopexit, %bb.d
  %.1.lcssa = phi i32 [ %.0335367, %bb.d ], [ %.sroa.speculated.us.peel, %._crit_edge.loopexit ], [ %.sroa.speculated.peel479664, %.thread661 ], [ %.sroa.speculated.peel456, %bb.f ], [ %.sroa.speculated.peel433, %bb.e ], [ %.sroa.speculated.3, %._crit_edge.loopexit695.unr-lcssa ], [ %.sroa.speculated.epil, %bb.g ] ; 5 uses
  %i.if = add nuw i64 %.0194368, 1                ; 2 uses
  %exitcond546.not = icmp eq i64 %i.if, %i.dd
  br i1 %exitcond546.not, label %._crit_edge371, label %bb.d, !llvm.loop !72

bb.h:                                             ; preds = %bb.h, %.lr.ph.split.peel.next459.new
  %indvars.iv = phi i64 [ 4, %.lr.ph.split.peel.next459.new ], [ %indvars.iv.next.3, %bb.h ] ; 5 uses
  %.1365 = phi i32 [ %.sroa.speculated.peel479, %.lr.ph.split.peel.next459.new ], [ %.sroa.speculated.3, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.split.peel.next459.new ], [ %niter.next.3, %bb.h ] ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !18  ; 2 uses
  %i.ii = sext i8 %i.ih to i32
  %i.ij = sext i8 %i.ih to i64
  %i.ik = getelementptr [4 x i8], ptr %i.cq, i64 %i.ij
  %i.il = getelementptr i8, ptr %i.ik, i64 -420
  store i32 1, ptr %i.il, align 4, !tbaa !33
  %i.im = add nsw i32 %i.ii, -104
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.1365, i32 %i.im)
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
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit695.unr-lcssa, label %bb.h, !llvm.loop !73

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

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread672, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.jr = phi i32 [ %i.cz, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread672 ], [ %i.jq, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %bb.j

.sink.split:                                      ; preds = %bb.c, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
  %i.js = phi ptr [ %i.dh, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread ], [ %i.cq, %bb.c ]
  %.ph685 = phi ptr [ %i.jm, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread ], [ %i.cr, %bb.c ]
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.jv = trunc i64 %i.ju to i32
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %6 = phi i32 [ %i.jq, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.jv, %.sink.split ] ; 2 uses
  %7 = phi ptr [ %i.cq, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.js, %.sink.split ] ; 3 uses
  %i.jw = phi ptr [ %i.cr, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %.ph685, %.sink.split ] ; 3 uses
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
  %8 = phi i32 [ %i.jr, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %6, %.noexc275 ], [ %6, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 3 uses
  %9 = phi ptr [ %i.cq, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %7, %.noexc275 ], [ %7, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 14 uses
  %i.kf = phi ptr [ %i.cr, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.jw, %.noexc275 ], [ %i.jw, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 3 uses
  %i.kg = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.jz, %.noexc275 ], [ %i.jz, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.kh = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.jy, %.noexc275 ], [ %i.jy, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 16 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.kb, %.noexc275 ], [ %i.ke, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.ki = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.ki, align 8, !tbaa !47
  switch i32 %8, label %.critedge [
    i32 1, label %bb.k
    i32 2, label %bb.p
    i32 3, label %bb.t
    i32 4, label %bb.x
  ]

bb.k:                                             ; preds = %bb.j
  %i.kj = load ptr, ptr %2, align 8, !tbaa !39    ; 6 uses
  %i.kk = load i32, ptr %9, align 4, !tbaa !33
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !90
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.kj, i32 noundef %i.kk, i64 noundef %i.c, ptr noundef %i.km)
          to label %bb.l unwind label %bb.o

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
  br i1 %i.kv, label %.critedge, label %.preheader364

.preheader364:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit267
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kj, i64 44 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !30
  %i.ky = icmp sgt i32 %i.kx, 0
  br i1 %i.ky, label %.lr.ph374, label %.critedge

bb.m:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.n:                                             ; preds = %bb.i
  %i.la = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit279

bb.o:                                             ; preds = %bb.k
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.lr.ph374:                                        ; preds = %.preheader364, %.lr.ph374
  %indvars.iv547 = phi i64 [ %indvars.iv.next548, %.lr.ph374 ], [ 0, %.preheader364 ] ; 3 uses
  %i.lc = trunc nuw nsw i64 %indvars.iv547 to i32
  store i32 %i.lc, ptr %i.kh, align 4, !tbaa !33
  %i.ld = call fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL7sum_dimERKSt6vectorIiSaIiEEiRKS0_INS_3MatESaIS5_EERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERS2_(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.le = load ptr, ptr %i.kj, align 8, !tbaa !29
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv547
  store float %i.ld, ptr %i.lf, align 4, !tbaa !44
  %indvars.iv.next548 = add nuw nsw i64 %indvars.iv547, 1 ; 2 uses
  %i.lg = load i32, ptr %i.kw, align 4, !tbaa !30
  %i.lh = sext i32 %i.lg to i64
  %i.li = icmp slt i64 %indvars.iv.next548, %i.lh
  br i1 %i.li, label %.lr.ph374, label %.critedge.thread, !llvm.loop !74

bb.p:                                             ; preds = %bb.j
  %i.lj = load ptr, ptr %2, align 8, !tbaa !39    ; 8 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !33
  %i.lm = load i32, ptr %9, align 4, !tbaa !33
  %i.ln = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !90
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.lj, i32 noundef %i.ll, i32 noundef %i.lm, i64 noundef %i.c, ptr noundef %i.lo)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.lp = load ptr, ptr %i.lj, align 8, !tbaa !29
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit266

_ZNK4ncnn3Mat5emptyEv.exit266:                    ; preds = %bb.q
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lj, i64 64
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !28
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lj, i64 56
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !91
  %i.lv = sext i32 %i.lu to i64
  %i.lw = mul i64 %i.ls, %i.lv
  %i.lx = icmp eq i64 %i.lw, 0
  br i1 %i.lx, label %.critedge, label %.preheader363

.preheader363:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit266
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lj, i64 48 ; 2 uses
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !42
  %i.ma = icmp sgt i32 %i.lz, 0
  br i1 %i.ma, label %.lr.ph381, label %.critedge

.lr.ph381:                                        ; preds = %.preheader363
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lj, i64 44 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.md = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.me = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.s:                                             ; preds = %.lr.ph381, %._crit_edge379
  %indvars.iv553 = phi i64 [ 0, %.lr.ph381 ], [ %indvars.iv.next554, %._crit_edge379 ] ; 3 uses
  %i.mf = trunc nuw nsw i64 %indvars.iv553 to i32
  store i32 %i.mf, ptr %i.kh, align 4, !tbaa !33
  %i.mg = load i32, ptr %i.mb, align 4, !tbaa !30
  %i.mh = icmp sgt i32 %i.mg, 0
  br i1 %i.mh, label %.lr.ph378, label %._crit_edge379

._crit_edge379:                                   ; preds = %.lr.ph378, %bb.s
  %indvars.iv.next554 = add nuw nsw i64 %indvars.iv553, 1 ; 2 uses
  %i.mi = load i32, ptr %i.ly, align 8, !tbaa !42
  %i.mj = sext i32 %i.mi to i64
  %i.mk = icmp slt i64 %indvars.iv.next554, %i.mj
  br i1 %i.mk, label %bb.s, label %._crit_edge382, !llvm.loop !75

.lr.ph378:                                        ; preds = %bb.s, %.lr.ph378
  %indvars.iv550 = phi i64 [ %indvars.iv.next551, %.lr.ph378 ], [ 0, %bb.s ] ; 3 uses
  %i.ml = trunc nuw nsw i64 %indvars.iv550 to i32
  store i32 %i.ml, ptr %i.mc, align 4, !tbaa !33
  %i.mm = call fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL7sum_dimERKSt6vectorIiSaIiEEiRKS0_INS_3MatESaIS5_EERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERS2_(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.mn = load ptr, ptr %i.lj, align 8, !tbaa !29
  %i.mo = load i32, ptr %i.mb, align 4, !tbaa !30
  %i.mp = sext i32 %i.mo to i64                   ; 2 uses
  %i.mq = mul nsw i64 %indvars.iv553, %i.mp
  %i.mr = load i64, ptr %i.md, align 8, !tbaa !40
  %i.ms = mul i64 %i.mq, %i.mr
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.ms
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv550
  store float %i.mm, ptr %i.mu, align 4, !tbaa !44
  %indvars.iv.next551 = add nuw nsw i64 %indvars.iv550, 1 ; 2 uses
  %i.mv = icmp slt i64 %indvars.iv.next551, %i.mp
  br i1 %i.mv, label %.lr.ph378, label %._crit_edge379, !llvm.loop !76

._crit_edge382:                                   ; preds = %._crit_edge379
  switch i32 %8, label %.critedge.thread [
    i32 3, label %bb.t
    i32 4, label %bb.x
  ]

bb.t:                                             ; preds = %bb.j, %._crit_edge382
  %i.mw = load ptr, ptr %2, align 8, !tbaa !39    ; 8 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !33
  %i.mz = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !33
  %i.nb = load i32, ptr %9, align 4, !tbaa !33
  %i.nc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !90
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.mw, i32 noundef %i.my, i32 noundef %i.na, i32 noundef %i.nb, i64 noundef %i.c, ptr noundef %i.nd)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ne = load ptr, ptr %i.mw, align 8, !tbaa !29
  %i.nf = icmp eq ptr %i.ne, null
  br i1 %i.nf, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit265

_ZNK4ncnn3Mat5emptyEv.exit265:                    ; preds = %bb.u
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mw, i64 64 ; 2 uses
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !28
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mw, i64 56 ; 2 uses
  %i.nj = load i32, ptr %i.ni, align 8, !tbaa !91 ; 2 uses
  %i.nk = sext i32 %i.nj to i64
  %i.nl = mul i64 %i.nh, %i.nk
  %i.nm = icmp eq i64 %i.nl, 0
  br i1 %i.nm, label %.critedge, label %.preheader362

.preheader362:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit265
  %i.nn = icmp sgt i32 %i.nj, 0
  br i1 %i.nn, label %.lr.ph390, label %.critedge

.lr.ph390:                                        ; preds = %.preheader362
  %i.no = getelementptr inbounds nuw i8, ptr %i.mw, i64 48 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mw, i64 44 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.w:                                             ; preds = %.lr.ph390, %._crit_edge388
  %indvars.iv562 = phi i64 [ 0, %.lr.ph390 ], [ %indvars.iv.next563, %._crit_edge388 ] ; 3 uses
  %i.nu = trunc nuw nsw i64 %indvars.iv562 to i32
  store i32 %i.nu, ptr %i.kh, align 4, !tbaa !33
  %i.nv = load i32, ptr %i.no, align 8, !tbaa !42
  %i.nw = icmp sgt i32 %i.nv, 0
  br i1 %i.nw, label %.lr.ph387, label %._crit_edge388

._crit_edge388:                                   ; preds = %._crit_edge384, %bb.w
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, 1 ; 2 uses
  %i.nx = load i32, ptr %i.ni, align 8, !tbaa !91
  %i.ny = sext i32 %i.nx to i64
  %i.nz = icmp slt i64 %indvars.iv.next563, %i.ny
  br i1 %i.nz, label %bb.w, label %._crit_edge391, !llvm.loop !77

.lr.ph387:                                        ; preds = %bb.w, %._crit_edge384
  %indvars.iv559 = phi i64 [ %indvars.iv.next560, %._crit_edge384 ], [ 0, %bb.w ] ; 3 uses
  %i.oa = trunc nuw nsw i64 %indvars.iv559 to i32
  store i32 %i.oa, ptr %i.np, align 4, !tbaa !33
  %i.ob = load i32, ptr %i.nq, align 4, !tbaa !30
  %i.oc = icmp sgt i32 %i.ob, 0
  br i1 %i.oc, label %.noexc270, label %._crit_edge384

._crit_edge384:                                   ; preds = %.noexc270, %.lr.ph387
  %indvars.iv.next560 = add nuw nsw i64 %indvars.iv559, 1 ; 2 uses
  %i.od = load i32, ptr %i.no, align 8, !tbaa !42
  %i.oe = sext i32 %i.od to i64
  %i.of = icmp slt i64 %indvars.iv.next560, %i.oe
  br i1 %i.of, label %.lr.ph387, label %._crit_edge388, !llvm.loop !78

.noexc270:                                        ; preds = %.lr.ph387, %.noexc270
  %indvars.iv556 = phi i64 [ %indvars.iv.next557, %.noexc270 ], [ 0, %.lr.ph387 ] ; 3 uses
  %i.og = trunc nuw nsw i64 %indvars.iv556 to i32
  store i32 %i.og, ptr %i.nr, align 4, !tbaa !33
  %i.oh = call fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL7sum_dimERKSt6vectorIiSaIiEEiRKS0_INS_3MatESaIS5_EERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERS2_(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.oi = load i32, ptr %i.nq, align 4, !tbaa !30, !noalias !95
  %i.oj = load ptr, ptr %i.mw, align 8, !tbaa !29, !noalias !95
  %i.ok = load i64, ptr %i.ng, align 8, !tbaa !28, !noalias !95
  %i.ol = mul i64 %i.ok, %indvars.iv562
  %i.om = load i64, ptr %i.ns, align 8, !tbaa !40, !noalias !95 ; 2 uses
  %i.on = mul i64 %i.ol, %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.on
  %i.op = sext i32 %i.oi to i64                   ; 2 uses
  %i.oq = mul nsw i64 %indvars.iv559, %i.op
  %i.or = mul i64 %i.oq, %i.om
  %i.os = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.or
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv556
  store float %i.oh, ptr %i.ot, align 4, !tbaa !44
  %indvars.iv.next557 = add nuw nsw i64 %indvars.iv556, 1 ; 2 uses
  %i.ou = icmp slt i64 %indvars.iv.next557, %i.op
  br i1 %i.ou, label %.noexc270, label %._crit_edge384, !llvm.loop !81

._crit_edge391:                                   ; preds = %._crit_edge388
  %i.ov = icmp eq i32 %8, 4
  br i1 %i.ov, label %bb.x, label %.critedge.thread

bb.x:                                             ; preds = %bb.j, %._crit_edge382, %._crit_edge391
  %i.ow = load ptr, ptr %2, align 8, !tbaa !39    ; 9 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !33
  %i.oz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !33
  %i.pb = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !33
  %i.pd = load i32, ptr %9, align 4, !tbaa !33
  %i.pe = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !90
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ow, i32 noundef %i.oy, i32 noundef %i.pa, i32 noundef %i.pc, i32 noundef %i.pd, i64 noundef %i.c, ptr noundef %i.pf)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.pg = load ptr, ptr %i.ow, align 8, !tbaa !29
  %i.ph = icmp eq ptr %i.pg, null
  br i1 %i.ph, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.y
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ow, i64 64 ; 2 uses
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !28
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ow, i64 56 ; 2 uses
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !91 ; 2 uses
  %i.pm = sext i32 %i.pl to i64
  %i.pn = mul i64 %i.pj, %i.pm
  %i.po = icmp eq i64 %i.pn, 0
  br i1 %i.po, label %.critedge, label %.preheader

.preheader:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.pp = icmp sgt i32 %i.pl, 0
  br i1 %i.pp, label %.lr.ph403, label %.critedge

.lr.ph403:                                        ; preds = %.preheader
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ow, i64 52 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ow, i64 48 ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ow, i64 44 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.kh, i64 12
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph403, %._crit_edge401
  %indvars.iv574 = phi i64 [ 0, %.lr.ph403 ], [ %indvars.iv.next575, %._crit_edge401 ] ; 3 uses
  %i.py = trunc nuw nsw i64 %indvars.iv574 to i32
  store i32 %i.py, ptr %i.kh, align 4, !tbaa !33
  %i.pz = load i32, ptr %i.pq, align 4, !tbaa !93
  %i.qa = icmp sgt i32 %i.pz, 0
  br i1 %i.qa, label %.lr.ph400, label %._crit_edge401

._crit_edge401:                                   ; preds = %._crit_edge397, %bb.aa
  %indvars.iv.next575 = add nuw nsw i64 %indvars.iv574, 1 ; 2 uses
  %i.qb = load i32, ptr %i.pk, align 8, !tbaa !91
  %i.qc = sext i32 %i.qb to i64
  %i.qd = icmp slt i64 %indvars.iv.next575, %i.qc
  br i1 %i.qd, label %bb.aa, label %.critedge.thread, !llvm.loop !82

.lr.ph400:                                        ; preds = %bb.aa, %._crit_edge397
  %indvars.iv571 = phi i64 [ %indvars.iv.next572, %._crit_edge397 ], [ 0, %bb.aa ] ; 3 uses
  %i.qe = trunc nuw nsw i64 %indvars.iv571 to i32
  store i32 %i.qe, ptr %i.pr, align 4, !tbaa !33
  %i.qf = load i32, ptr %i.ps, align 8, !tbaa !42
  %i.qg = icmp sgt i32 %i.qf, 0
  br i1 %i.qg, label %.lr.ph396, label %._crit_edge397

._crit_edge397:                                   ; preds = %._crit_edge393, %.lr.ph400
  %indvars.iv.next572 = add nuw nsw i64 %indvars.iv571, 1 ; 2 uses
  %i.qh = load i32, ptr %i.pq, align 4, !tbaa !93
  %i.qi = sext i32 %i.qh to i64
  %i.qj = icmp slt i64 %indvars.iv.next572, %i.qi
  br i1 %i.qj, label %.lr.ph400, label %._crit_edge401, !llvm.loop !83

.lr.ph396:                                        ; preds = %.lr.ph400, %._crit_edge393
  %indvars.iv568 = phi i64 [ %indvars.iv.next569, %._crit_edge393 ], [ 0, %.lr.ph400 ] ; 3 uses
  %i.qk = trunc nuw nsw i64 %indvars.iv568 to i32
  store i32 %i.qk, ptr %i.pt, align 4, !tbaa !33
  %i.ql = load i32, ptr %i.pu, align 4, !tbaa !30
  %i.qm = icmp sgt i32 %i.ql, 0
  br i1 %i.qm, label %.noexc269, label %.._crit_edge393_crit_edge

.._crit_edge393_crit_edge:                        ; preds = %.lr.ph396
  %.pre = load i32, ptr %i.ps, align 8, !tbaa !42
  %.pre584 = sext i32 %.pre to i64
  br label %._crit_edge393

._crit_edge393:                                   ; preds = %.noexc269, %.._crit_edge393_crit_edge
  %.pre-phi = phi i64 [ %.pre584, %.._crit_edge393_crit_edge ], [ %i.qz, %.noexc269 ]
  %indvars.iv.next569 = add nuw nsw i64 %indvars.iv568, 1 ; 2 uses
  %i.qn = icmp slt i64 %indvars.iv.next569, %.pre-phi
  br i1 %i.qn, label %.lr.ph396, label %._crit_edge397, !llvm.loop !84

.noexc269:                                        ; preds = %.lr.ph396, %.noexc269
  %indvars.iv565 = phi i64 [ %indvars.iv.next566, %.noexc269 ], [ 0, %.lr.ph396 ] ; 3 uses
  %i.qo = trunc nuw nsw i64 %indvars.iv565 to i32
  store i32 %i.qo, ptr %i.pv, align 4, !tbaa !33
  %i.qp = call fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL7sum_dimERKSt6vectorIiSaIiEEiRKS0_INS_3MatESaIS5_EERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERS2_(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.qq = load i32, ptr %i.pu, align 4, !tbaa !30, !noalias !96
  %i.qr = load i32, ptr %i.ps, align 8, !tbaa !42, !noalias !96
  %i.qs = load ptr, ptr %i.ow, align 8, !tbaa !29, !noalias !96
  %i.qt = load i64, ptr %i.pi, align 8, !tbaa !28, !noalias !96
  %i.qu = mul i64 %i.qt, %indvars.iv574
  %i.qv = load i64, ptr %i.pw, align 8, !tbaa !40, !noalias !96 ; 2 uses
  %i.qw = mul i64 %i.qu, %i.qv
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qs, i64 %i.qw
  %i.qy = sext i32 %i.qq to i64                   ; 2 uses
  %i.qz = sext i32 %i.qr to i64                   ; 2 uses
  %i.ra = mul i64 %i.qv, %i.qy                    ; 2 uses
  %i.rb = mul i64 %i.ra, %indvars.iv571
  %i.rc = mul i64 %i.rb, %i.qz
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qx, i64 %i.rc
  %i.re = mul i64 %i.ra, %indvars.iv568
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.re
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %indvars.iv565
  store float %i.qp, ptr %i.rg, align 4, !tbaa !44
  %indvars.iv.next566 = add nuw nsw i64 %indvars.iv565, 1 ; 2 uses
  %i.rh = icmp slt i64 %indvars.iv.next566, %i.qy
  br i1 %i.rh, label %.noexc269, label %._crit_edge393, !llvm.loop !87

.critedge:                                        ; preds = %.preheader362, %.preheader363, %.preheader364, %.preheader, %bb.j, %bb.y, %bb.u, %bb.q, %bb.l, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit265, %_ZNK4ncnn3Mat5emptyEv.exit266, %_ZNK4ncnn3Mat5emptyEv.exit267
  %.8 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %bb.y ], [ -100, %bb.q ], [ -100, %bb.l ], [ -100, %bb.u ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit265 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit267 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit266 ], [ 0, %.preheader ], [ 0, %bb.j ], [ 0, %.preheader363 ], [ 0, %.preheader364 ], [ 0, %.preheader362 ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.critedge.thread

.critedge.thread:                                 ; preds = %._crit_edge401, %.lr.ph374, %._crit_edge382, %._crit_edge391, %.critedge
  %.8678 = phi i32 [ %.8, %.critedge ], [ 0, %.lr.ph374 ], [ 0, %._crit_edge382 ], [ 0, %._crit_edge391 ], [ 0, %._crit_edge401 ]
  %i.ri = ptrtoint ptr %i.kg to i64
  %i.rj = ptrtoint ptr %i.kh to i64
  %i.rk = sub i64 %i.ri, %i.rj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef %i.rk) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.critedge, %.critedge.thread
  %.8679 = phi i32 [ %.8, %.critedge ], [ %.8678, %.critedge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.rl = ptrtoint ptr %i.kf to i64
  %i.rm = ptrtoint ptr %9 to i64
  %i.rn = sub i64 %i.rl, %i.rm
  tail call void @_ZdlPvm(ptr noundef nonnull %9, i64 noundef %i.rn) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNK4ncnn3Mat5emptyEv.exit268.thread

bb.ab:                                            ; preds = %bb.z, %bb.v, %bb.r, %bb.o
  %.pn229.pn.pn.pn.ph = phi { ptr, i32 } [ %i.me, %bb.r ], [ %i.nt, %bb.v ], [ %i.px, %bb.z ], [ %i.lb, %bb.o ] ; 2 uses
  %.not.i.i.i278 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i278, label %_ZNSt6vectorIiSaIiEED2Ev.exit279, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ro = ptrtoint ptr %i.kg to i64
  %i.rp = ptrtoint ptr %i.kh to i64
  %i.rq = sub i64 %i.ro, %i.rp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef %i.rq) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit279

_ZNSt6vectorIiSaIiEED2Ev.exit279:                 ; preds = %bb.ac, %bb.ab, %bb.n
  %i.rr = phi ptr [ %7, %bb.n ], [ %9, %bb.ab ], [ %9, %bb.ac ]
  %i.rs = phi ptr [ %i.jw, %bb.n ], [ %i.kf, %bb.ab ], [ %i.kf, %bb.ac ]
  %.pn229.pn.pn.pn.pn = phi { ptr, i32 } [ %i.la, %bb.n ], [ %.pn229.pn.pn.pn.ph, %bb.ab ], [ %.pn229.pn.pn.pn.ph, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit279, %bb.m
  %10 = phi ptr [ %i.rs, %_ZNSt6vectorIiSaIiEED2Ev.exit279 ], [ %i.cr, %bb.m ]
  %11 = phi ptr [ %i.rr, %_ZNSt6vectorIiSaIiEED2Ev.exit279 ], [ %i.cq, %bb.m ] ; 2 uses
  %.pn229.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn229.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit279 ], [ %i.kz, %bb.m ]
  %i.rt = ptrtoint ptr %10 to i64
  %i.ru = ptrtoint ptr %11 to i64
  %i.rv = sub i64 %i.rt, %i.ru
  tail call void @_ZdlPvm(ptr noundef nonnull %11, i64 noundef %i.rv) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn229.pn.pn.pn.pn.pn

_ZNK4ncnn3Mat5emptyEv.exit268.thread:             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %._crit_edge408, %_ZNK4ncnn3Mat5emptyEv.exit268, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.9 = phi i32 [ %.8679, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ 0, %._crit_edge408 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit268 ], [ -100, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
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
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !31, !alias.scope !113, !noalias !114
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !17, !alias.scope !114, !noalias !113 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !32, !alias.scope !114, !noalias !113 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !115
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !17, !alias.scope !113, !noalias !114
  %i.al = load i64, ptr %i.af, align 8, !tbaa !18, !alias.scope !114, !noalias !113
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !18, !alias.scope !113, !noalias !114
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !32, !alias.scope !114, !noalias !113
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !32, !alias.scope !113, !noalias !114
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !17, !alias.scope !114, !noalias !113
  store i64 0, ptr %i.an, align 8, !tbaa !32, !alias.scope !114, !noalias !113
  store i8 0, ptr %i.af, align 8, !tbaa !18, !alias.scope !114, !noalias !113
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
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !31, !alias.scope !116, !noalias !117
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !17, !alias.scope !117, !noalias !116 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
end_hunk_0
