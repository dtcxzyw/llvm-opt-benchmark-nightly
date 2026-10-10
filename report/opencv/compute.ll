Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/compute?download=true
inline.NumInlined: 33
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@MlasComputeSoftmaxOutputF32Kernel:bb.a
  %i.b = insertelement <4 x float> poison, float %i.a, i64 0
  %i.c = shufflevector <4 x float> %i.b, <4 x float> poison, <4 x i32> zeroinitializer ; 17 uses
  %i.d = icmp ugt i64 %1, 15
  br i1 %i.d, label %.lr.ph.preheader, label %.preheader34

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = add i64 %1, -16                          ; 2 uses
  %i.f = and i64 %i.e, 16
  %lcmp.mod.not.not = icmp eq i64 %i.f, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.g = load <4 x float>, ptr %0, align 1, !tbaa !8
  %i.h = fmul <4 x float> %i.c, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load <4 x float>, ptr %i.i, align 1, !tbaa !8
  %i.k = fmul <4 x float> %i.c, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load <4 x float>, ptr %i.l, align 1, !tbaa !8
  %i.n = fmul <4 x float> %i.c, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = load <4 x float>, ptr %i.o, align 1, !tbaa !8
  %i.q = fmul <4 x float> %i.c, %i.p
  store <4 x float> %i.h, ptr %0, align 1, !tbaa !8
  store <4 x float> %i.k, ptr %i.i, align 1, !tbaa !8
  store <4 x float> %i.n, ptr %i.l, align 1, !tbaa !8
  store <4 x float> %i.q, ptr %i.o, align 1, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.s = add i64 %1, -16                          ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.036.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.r, %.lr.ph.prol ]
  %.03135.unr = phi i64 [ %1, %.lr.ph.preheader ], [ %i.s, %.lr.ph.prol ]
  %.lcssa60.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.r, %.lr.ph.prol ]
  %.lcssa59.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.s, %.lr.ph.prol ]
  %i.t = icmp ult i64 %i.e, 16
  br i1 %i.t, label %.preheader34, label %.lr.ph

.preheader34:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %.031.lcssa = phi i64 [ %1, %bb.a ], [ %.lcssa59.unr, %.lr.ph.prol.loopexit ], [ %i.bb, %.lr.ph ] ; 5 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.lcssa60.unr, %.lr.ph.prol.loopexit ], [ %i.ba, %.lr.ph ] ; 3 uses
  %i.u = icmp samesign ugt i64 %.031.lcssa, 3
  br i1 %i.u, label %.lr.ph40.preheader, label %.preheader

.lr.ph40.preheader:                               ; preds = %.preheader34
  %i.v = add i64 %.031.lcssa, -4                  ; 2 uses
  %i.w = lshr i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 1
  %xtraiter61 = and i64 %i.x, 3                   ; 2 uses
  %lcmp.mod62.not = icmp eq i64 %xtraiter61, 0
  br i1 %lcmp.mod62.not, label %.lr.ph40.prol.loopexit, label %.lr.ph40.prol

.lr.ph40.prol:                                    ; preds = %.lr.ph40.preheader, %.lr.ph40.prol
  %.139.prol = phi ptr [ %i.aa, %.lr.ph40.prol ], [ %.0.lcssa, %.lr.ph40.preheader ] ; 3 uses
  %.13238.prol = phi i64 [ %i.ab, %.lr.ph40.prol ], [ %.031.lcssa, %.lr.ph40.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph40.prol ], [ 0, %.lr.ph40.preheader ]
  %i.y = load <4 x float>, ptr %.139.prol, align 1, !tbaa !8
  %i.z = fmul <4 x float> %i.c, %i.y
  store <4 x float> %i.z, ptr %.139.prol, align 1, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %.139.prol, i64 16 ; 3 uses
  %i.ab = add nsw i64 %.13238.prol, -4            ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter61
  br i1 %prol.iter.cmp.not, label %.lr.ph40.prol.loopexit, label %.lr.ph40.prol, !llvm.loop !67

.lr.ph40.prol.loopexit:                           ; preds = %.lr.ph40.prol, %.lr.ph40.preheader
  %.139.unr = phi ptr [ %.0.lcssa, %.lr.ph40.preheader ], [ %i.aa, %.lr.ph40.prol ]
  %.13238.unr = phi i64 [ %.031.lcssa, %.lr.ph40.preheader ], [ %i.ab, %.lr.ph40.prol ]
  %.lcssa58.unr = phi ptr [ poison, %.lr.ph40.preheader ], [ %i.aa, %.lr.ph40.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph40.preheader ], [ %i.ab, %.lr.ph40.prol ]
  %i.ac = icmp ult i64 %i.v, 12
  br i1 %i.ac, label %.preheader, label %.lr.ph40

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.036 = phi ptr [ %i.ba, %.lr.ph ], [ %.036.unr, %.lr.ph.prol.loopexit ] ; 10 uses
  %.03135 = phi i64 [ %i.bb, %.lr.ph ], [ %.03135.unr, %.lr.ph.prol.loopexit ]
  %i.ad = load <4 x float>, ptr %.036, align 1, !tbaa !8
  %i.ae = fmul <4 x float> %i.c, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.036, i64 16 ; 2 uses
  %i.ag = load <4 x float>, ptr %i.af, align 1, !tbaa !8
  %i.ah = fmul <4 x float> %i.c, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %.036, i64 32 ; 2 uses
  %i.aj = load <4 x float>, ptr %i.ai, align 1, !tbaa !8
  %i.ak = fmul <4 x float> %i.c, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %.036, i64 48 ; 2 uses
  %i.am = load <4 x float>, ptr %i.al, align 1, !tbaa !8
  %i.an = fmul <4 x float> %i.c, %i.am
  store <4 x float> %i.ae, ptr %.036, align 1, !tbaa !8
  store <4 x float> %i.ah, ptr %i.af, align 1, !tbaa !8
  store <4 x float> %i.ak, ptr %i.ai, align 1, !tbaa !8
  store <4 x float> %i.an, ptr %i.al, align 1, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %.036, i64 64 ; 2 uses
  %i.ap = load <4 x float>, ptr %i.ao, align 1, !tbaa !8
  %i.aq = fmul <4 x float> %i.c, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.036, i64 80 ; 2 uses
  %i.as = load <4 x float>, ptr %i.ar, align 1, !tbaa !8
  %i.at = fmul <4 x float> %i.c, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.036, i64 96 ; 2 uses
  %i.av = load <4 x float>, ptr %i.au, align 1, !tbaa !8
  %i.aw = fmul <4 x float> %i.c, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.036, i64 112 ; 2 uses
  %i.ay = load <4 x float>, ptr %i.ax, align 1, !tbaa !8
  %i.az = fmul <4 x float> %i.c, %i.ay
  store <4 x float> %i.aq, ptr %i.ao, align 1, !tbaa !8
  store <4 x float> %i.at, ptr %i.ar, align 1, !tbaa !8
  store <4 x float> %i.aw, ptr %i.au, align 1, !tbaa !8
  store <4 x float> %i.az, ptr %i.ax, align 1, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %.036, i64 128 ; 2 uses
  %i.bb = add i64 %.03135, -32                    ; 3 uses
  %i.bc = icmp ugt i64 %i.bb, 15
  br i1 %i.bc, label %.lr.ph, label %.preheader34, !llvm.loop !68

.preheader:                                       ; preds = %.lr.ph40.prol.loopexit, %.lr.ph40, %.preheader34
  %.132.lcssa = phi i64 [ %.031.lcssa, %.preheader34 ], [ %.lcssa.unr, %.lr.ph40.prol.loopexit ], [ %i.bu, %.lr.ph40 ] ; 5 uses
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader34 ], [ %.lcssa58.unr, %.lr.ph40.prol.loopexit ], [ %i.bt, %.lr.ph40 ] ; 2 uses
  %.not43 = icmp eq i64 %.132.lcssa, 0
  br i1 %.not43, label %._crit_edge, label %.lr.ph46.preheader

.lr.ph46.preheader:                               ; preds = %.preheader
  %xtraiter63 = and i64 %.132.lcssa, 3            ; 2 uses
  %lcmp.mod64.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod64.not, label %.lr.ph46.prol.loopexit, label %.lr.ph46.prol

.lr.ph46.prol:                                    ; preds = %.lr.ph46.preheader, %.lr.ph46.prol
  %.245.prol = phi ptr [ %i.bf, %.lr.ph46.prol ], [ %.1.lcssa, %.lr.ph46.preheader ] ; 3 uses
  %.23344.prol = phi i64 [ %i.bg, %.lr.ph46.prol ], [ %.132.lcssa, %.lr.ph46.preheader ]
  %prol.iter65 = phi i64 [ %prol.iter65.next, %.lr.ph46.prol ], [ 0, %.lr.ph46.preheader ]
  %i.bd = load float, ptr %.245.prol, align 4, !tbaa !28
  %i.be = fmul float %i.a, %i.bd
  store float %i.be, ptr %.245.prol, align 4, !tbaa !28
  %i.bf = getelementptr inbounds nuw i8, ptr %.245.prol, i64 4 ; 2 uses
  %i.bg = add nsw i64 %.23344.prol, -1            ; 2 uses
  %prol.iter65.next = add i64 %prol.iter65, 1     ; 2 uses
  %prol.iter65.cmp.not = icmp eq i64 %prol.iter65.next, %xtraiter63
  br i1 %prol.iter65.cmp.not, label %.lr.ph46.prol.loopexit, label %.lr.ph46.prol, !llvm.loop !69

.lr.ph46.prol.loopexit:                           ; preds = %.lr.ph46.prol, %.lr.ph46.preheader
  %.245.unr = phi ptr [ %.1.lcssa, %.lr.ph46.preheader ], [ %i.bf, %.lr.ph46.prol ]
  %.23344.unr = phi i64 [ %.132.lcssa, %.lr.ph46.preheader ], [ %i.bg, %.lr.ph46.prol ]
  %i.bh = icmp ult i64 %.132.lcssa, 4
  br i1 %i.bh, label %._crit_edge, label %.lr.ph46

.lr.ph40:                                         ; preds = %.lr.ph40.prol.loopexit, %.lr.ph40
  %.139 = phi ptr [ %i.bt, %.lr.ph40 ], [ %.139.unr, %.lr.ph40.prol.loopexit ] ; 6 uses
  %.13238 = phi i64 [ %i.bu, %.lr.ph40 ], [ %.13238.unr, %.lr.ph40.prol.loopexit ]
  %i.bi = load <4 x float>, ptr %.139, align 1, !tbaa !8
  %i.bj = fmul <4 x float> %i.c, %i.bi
  store <4 x float> %i.bj, ptr %.139, align 1, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %.139, i64 16 ; 2 uses
  %i.bl = load <4 x float>, ptr %i.bk, align 1, !tbaa !8
  %i.bm = fmul <4 x float> %i.c, %i.bl
  store <4 x float> %i.bm, ptr %i.bk, align 1, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %.139, i64 32 ; 2 uses
  %i.bo = load <4 x float>, ptr %i.bn, align 1, !tbaa !8
  %i.bp = fmul <4 x float> %i.c, %i.bo
  store <4 x float> %i.bp, ptr %i.bn, align 1, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %.139, i64 48 ; 2 uses
  %i.br = load <4 x float>, ptr %i.bq, align 1, !tbaa !8
  %i.bs = fmul <4 x float> %i.c, %i.br
  store <4 x float> %i.bs, ptr %i.bq, align 1, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %.139, i64 64 ; 2 uses
  %i.bu = add nsw i64 %.13238, -16                ; 3 uses
  %i.bv = icmp ugt i64 %i.bu, 3
  br i1 %i.bv, label %.lr.ph40, label %.preheader, !llvm.loop !70

.lr.ph46:                                         ; preds = %.lr.ph46.prol.loopexit, %.lr.ph46
  %.245 = phi ptr [ %i.ch, %.lr.ph46 ], [ %.245.unr, %.lr.ph46.prol.loopexit ] ; 6 uses
  %.23344 = phi i64 [ %i.ci, %.lr.ph46 ], [ %.23344.unr, %.lr.ph46.prol.loopexit ]
  %i.bw = load float, ptr %.245, align 4, !tbaa !28
  %i.bx = fmul float %i.a, %i.bw
  store float %i.bx, ptr %.245, align 4, !tbaa !28
  %i.by = getelementptr inbounds nuw i8, ptr %.245, i64 4 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !28
  %i.ca = fmul float %i.a, %i.bz
  store float %i.ca, ptr %i.by, align 4, !tbaa !28
  %i.cb = getelementptr inbounds nuw i8, ptr %.245, i64 8 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !28
  %i.cd = fmul float %i.a, %i.cc
  store float %i.cd, ptr %i.cb, align 4, !tbaa !28
  %i.ce = getelementptr inbounds nuw i8, ptr %.245, i64 12 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !28
  %i.cg = fmul float %i.a, %i.cf
  store float %i.cg, ptr %i.ce, align 4, !tbaa !28
  %i.ch = getelementptr inbounds nuw i8, ptr %.245, i64 16
  %i.ci = add nsw i64 %.23344, -4                 ; 2 uses
  %.not.3 = icmp eq i64 %i.ci, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph46, !llvm.loop !71

._crit_edge:                                      ; preds = %.lr.ph46.prol.loopexit, %.lr.ph46, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @MlasComputeLogSoftmaxOutputF32Kernel(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load float, ptr %3, align 4, !tbaa !28   ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !28 ; 6 uses
  %i.d = insertelement <4 x float> poison, float %i.a, i64 0
  %i.e = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.f = insertelement <4 x float> poison, float %i.c, i64 0
  %i.g = shufflevector <4 x float> %i.f, <4 x float> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.h = icmp ugt i64 %2, 15
  br i1 %i.h, label %.lr.ph, label %.preheader60

.preheader60:                                     ; preds = %.lr.ph, %bb.a
  %.057.lcssa = phi i64 [ %2, %bb.a ], [ %i.ad, %.lr.ph ] ; 5 uses
  %.054.lcssa = phi ptr [ %1, %bb.a ], [ %i.ac, %.lr.ph ] ; 5 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.ab, %.lr.ph ] ; 5 uses
  %i.i = icmp samesign ugt i64 %.057.lcssa, 3
  br i1 %i.i, label %.lr.ph69, label %.preheader

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.063 = phi ptr [ %i.ab, %.lr.ph ], [ %0, %bb.a ] ; 5 uses
  %.05462 = phi ptr [ %i.ac, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %.05761 = phi i64 [ %i.ad, %.lr.ph ], [ %2, %bb.a ]
  %i.j = load <4 x float>, ptr %.063, align 1, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %.063, i64 16
  %i.l = load <4 x float>, ptr %i.k, align 1, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %.063, i64 32
  %i.n = load <4 x float>, ptr %i.m, align 1, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %.063, i64 48
  %i.p = load <4 x float>, ptr %i.o, align 1, !tbaa !8
  %i.q = fadd <4 x float> %i.e, %i.j
  %i.r = fadd <4 x float> %i.e, %i.l
  %i.s = fadd <4 x float> %i.e, %i.n
  %i.t = fadd <4 x float> %i.e, %i.p
  %i.u = fsub <4 x float> %i.q, %i.g
  %i.v = fsub <4 x float> %i.r, %i.g
  %i.w = fsub <4 x float> %i.s, %i.g
  %i.x = fsub <4 x float> %i.t, %i.g
  store <4 x float> %i.u, ptr %.05462, align 1, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %.05462, i64 16
  store <4 x float> %i.v, ptr %i.y, align 1, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %.05462, i64 32
  store <4 x float> %i.w, ptr %i.z, align 1, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %.05462, i64 48
  store <4 x float> %i.x, ptr %i.aa, align 1, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %.063, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05462, i64 64 ; 2 uses
  %i.ad = add i64 %.05761, -16                    ; 3 uses
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %.lr.ph, label %.preheader60, !llvm.loop !72

.preheader:                                       ; preds = %.lr.ph69, %.lr.ph69.a, %.lr.ph69.2, %.preheader60
  %.158.lcssa = phi i64 [ %.057.lcssa, %.preheader60 ], [ %9, %.lr.ph69 ], [ %i.ar, %.lr.ph69.a ], [ %16, %.lr.ph69.2 ] ; 5 uses
  %.155.lcssa = phi ptr [ %.054.lcssa, %.preheader60 ], [ %8, %.lr.ph69 ], [ %i.aq, %.lr.ph69.a ], [ %15, %.lr.ph69.2 ] ; 2 uses
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader60 ], [ %7, %.lr.ph69 ], [ %i.ap, %.lr.ph69.a ], [ %14, %.lr.ph69.2 ] ; 2 uses
  %.not73 = icmp eq i64 %.158.lcssa, 0
  br i1 %.not73, label %._crit_edge, label %.lr.ph77.preheader

.lr.ph77.preheader:                               ; preds = %.preheader
  %xtraiter100 = and i64 %.158.lcssa, 3           ; 2 uses
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.lr.ph77.prol.loopexit, label %.lr.ph77.prol

.lr.ph77.prol:                                    ; preds = %.lr.ph77.preheader, %.lr.ph77.prol
  %.276.prol = phi ptr [ %i.ai, %.lr.ph77.prol ], [ %.1.lcssa, %.lr.ph77.preheader ] ; 2 uses
  %.25675.prol = phi ptr [ %i.aj, %.lr.ph77.prol ], [ %.155.lcssa, %.lr.ph77.preheader ] ; 2 uses
  %.25974.prol = phi i64 [ %i.ak, %.lr.ph77.prol ], [ %.158.lcssa, %.lr.ph77.preheader ]
  %prol.iter102 = phi i64 [ %prol.iter102.next, %.lr.ph77.prol ], [ 0, %.lr.ph77.preheader ]
  %i.af = load float, ptr %.276.prol, align 4, !tbaa !28
  %i.ag = fadd float %i.a, %i.af
  %i.ah = fsub float %i.ag, %i.c
  store float %i.ah, ptr %.25675.prol, align 4, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %.276.prol, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.25675.prol, i64 4 ; 2 uses
  %i.ak = add nsw i64 %.25974.prol, -1            ; 2 uses
  %prol.iter102.next = add i64 %prol.iter102, 1   ; 2 uses
  %prol.iter102.cmp.not = icmp eq i64 %prol.iter102.next, %xtraiter100
  br i1 %prol.iter102.cmp.not, label %.lr.ph77.prol.loopexit, label %.lr.ph77.prol, !llvm.loop !73

.lr.ph77.prol.loopexit:                           ; preds = %.lr.ph77.prol, %.lr.ph77.preheader
  %.276.unr = phi ptr [ %.1.lcssa, %.lr.ph77.preheader ], [ %i.ai, %.lr.ph77.prol ]
  %.25675.unr = phi ptr [ %.155.lcssa, %.lr.ph77.preheader ], [ %i.aj, %.lr.ph77.prol ]
  %.25974.unr = phi i64 [ %.158.lcssa, %.lr.ph77.preheader ], [ %i.ak, %.lr.ph77.prol ]
  %i.al = icmp ult i64 %.158.lcssa, 4
  br i1 %i.al, label %._crit_edge, label %.lr.ph77

.lr.ph69:                                         ; preds = %.preheader60
  %4 = load <4 x float>, ptr %.0.lcssa, align 1, !tbaa !8
  %5 = fadd <4 x float> %i.e, %4
  %6 = fsub <4 x float> %5, %i.g
  store <4 x float> %6, ptr %.054.lcssa, align 1, !tbaa !8
  %7 = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 16 ; 2 uses
  %9 = add nsw i64 %.057.lcssa, -4                ; 2 uses
  %10 = icmp ugt i64 %9, 3
  br i1 %10, label %.lr.ph69.a, label %.preheader

.lr.ph69.a:                                       ; preds = %.lr.ph69
  %i.am = load <4 x float>, ptr %7, align 1, !tbaa !8
  %i.an = fadd <4 x float> %i.e, %i.am
  %i.ao = fsub <4 x float> %i.an, %i.g
  store <4 x float> %i.ao, ptr %8, align 1, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 32 ; 2 uses
  %i.ar = add nsw i64 %.057.lcssa, -8             ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 3
  br i1 %i.as, label %.lr.ph69.2, label %.preheader

.lr.ph69.2:                                       ; preds = %.lr.ph69.a
  %11 = load <4 x float>, ptr %i.ap, align 1, !tbaa !8
  %12 = fadd <4 x float> %i.e, %11
  %13 = fsub <4 x float> %12, %i.g
  store <4 x float> %13, ptr %i.aq, align 1, !tbaa !8
  %14 = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 48
  %15 = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 48
  %16 = add nsw i64 %.057.lcssa, -12
  br label %.preheader

.lr.ph77:                                         ; preds = %.lr.ph77.prol.loopexit, %.lr.ph77
  %.276 = phi ptr [ %i.bl, %.lr.ph77 ], [ %.276.unr, %.lr.ph77.prol.loopexit ] ; 5 uses
  %.25675 = phi ptr [ %i.bm, %.lr.ph77 ], [ %.25675.unr, %.lr.ph77.prol.loopexit ] ; 5 uses
  %.25974 = phi i64 [ %i.bn, %.lr.ph77 ], [ %.25974.unr, %.lr.ph77.prol.loopexit ]
  %i.at = load float, ptr %.276, align 4, !tbaa !28
  %i.au = fadd float %i.a, %i.at
  %i.av = fsub float %i.au, %i.c
  store float %i.av, ptr %.25675, align 4, !tbaa !28
  %i.aw = getelementptr inbounds nuw i8, ptr %.276, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.25675, i64 4
  %i.ay = load float, ptr %i.aw, align 4, !tbaa !28
  %i.az = fadd float %i.a, %i.ay
  %i.ba = fsub float %i.az, %i.c
  store float %i.ba, ptr %i.ax, align 4, !tbaa !28
  %i.bb = getelementptr inbounds nuw i8, ptr %.276, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.25675, i64 8
  %i.bd = load float, ptr %i.bb, align 4, !tbaa !28
  %i.be = fadd float %i.a, %i.bd
  %i.bf = fsub float %i.be, %i.c
  store float %i.bf, ptr %i.bc, align 4, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %.276, i64 12
  %i.bh = getelementptr inbounds nuw i8, ptr %.25675, i64 12
  %i.bi = load float, ptr %i.bg, align 4, !tbaa !28
  %i.bj = fadd float %i.a, %i.bi
  %i.bk = fsub float %i.bj, %i.c
  store float %i.bk, ptr %i.bh, align 4, !tbaa !28
  %i.bl = getelementptr inbounds nuw i8, ptr %.276, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %.25675, i64 16
  %i.bn = add nsw i64 %.25974, -4                 ; 2 uses
  %.not.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph77, !llvm.loop !74

._crit_edge:                                      ; preds = %.lr.ph77.prol.loopexit, %.lr.ph77, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z26MlasComputeSoftmaxThreadedIfEvPvl(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = alloca [2 x float], align 4              ; 5 uses
  %i.c = alloca [1 x float], align 4              ; 4 uses
  %i.d = load i64, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.g = udiv i64 %i.f, %i.d                      ; 3 uses
  %i.h = urem i64 %i.f, %i.d                      ; 2 uses
  %i.i = icmp ult i64 %1, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.g, 1                          ; 2 uses
  %i.k = mul i64 %i.j, %1
  br label %_Z17MlasPartitionWorkllmPmS_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = mul i64 %i.g, %1
  %i.m = add i64 %i.l, %i.h
  br label %_Z17MlasPartitionWorkllmPmS_.exit

_Z17MlasPartitionWorkllmPmS_.exit:                ; preds = %bb.b, %bb.c
  %storemerge17.i = phi i64 [ %i.m, %bb.c ], [ %i.k, %bb.b ]
  %storemerge.i = phi i64 [ %i.g, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !35   ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !36, !range !37, !noundef !38
  %i.r = trunc nuw i8 %i.q to i1                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !39, !range !37, !noundef !38
  %i.u = trunc nuw i8 %i.t to i1                  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = load float, ptr %i.v, align 4, !tbaa !40 ; 3 uses
  %.not61 = icmp eq i64 %storemerge.i, 0
  br i1 %.not61, label %._crit_edge65, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_Z17MlasPartitionWorkllmPmS_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.z = mul i64 %i.o, %storemerge17.i            ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.z
  %.not66 = icmp eq i64 %i.o, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.y
  %.04664 = phi ptr [ %i.aa, %.preheader.lr.ph ], [ %i.bs, %bb.y ] ; 4 uses
  %.04763 = phi ptr [ %i.ad, %.preheader.lr.ph ], [ %i.br, %bb.y ] ; 5 uses
  %.05962 = phi i64 [ %storemerge.i, %.preheader.lr.ph ], [ %i.bt, %bb.y ]
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.04763, i64 %i.o
  br label %bb.l

._crit_edge:                                      ; preds = %bb.l, %.preheader
  %i.ag = load atomic i8, ptr @_ZGVZ15GetMlasPlatformvE12MlasPlatform acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %_Z15GetMlasPlatformv.exit, !prof !10

bb.d:                                             ; preds = %._crit_edge
  %i.ai = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #14
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %_Z15GetMlasPlatformv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN13MLAS_PLATFORMC1Ev(ptr noundef nonnull align 8 dereferenceable(584) @_ZZ15GetMlasPlatformvE12MlasPlatform)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @__cxa_guard_release(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #14
  br label %_Z15GetMlasPlatformv.exit

common.resume:                                    ; preds = %bb.x, %bb.s, %bb.k, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %bb.g ], [ %i.as, %bb.k ], [ %i.bj, %bb.s ], [ %i.bp, %bb.x ]
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #14
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_Z15GetMlasPlatformv.exit:                        ; preds = %._crit_edge, %bb.d, %bb.f
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 184), align 8, !tbaa !77
  %i.al = call noundef float %i.ak(ptr noundef %.04763, i64 noundef %i.o) ; 2 uses
  %i.am = fcmp ogt float %i.w, %i.al
  %or.cond = select i1 %i.u, i1 %i.am, i1 false
  %.044 = select i1 %or.cond, float %i.w, float %i.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.an = fneg float %.044
  store float %i.an, ptr %i.a, align 4, !tbaa !28
  %i.ao = select i1 %i.r, ptr null, ptr %.04664
  %i.ap = load atomic i8, ptr @_ZGVZ15GetMlasPlatformvE12MlasPlatform acquire, align 8
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.h, label %_Z15GetMlasPlatformv.exit52, !prof !10

bb.h:                                             ; preds = %_Z15GetMlasPlatformv.exit
  %i.ar = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #14
  %.not.i51 = icmp eq i32 %i.ar, 0
  br i1 %.not.i51, label %_Z15GetMlasPlatformv.exit52, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN13MLAS_PLATFORMC1Ev(ptr noundef nonnull align 8 dereferenceable(584) @_ZZ15GetMlasPlatformvE12MlasPlatform)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @__cxa_guard_release(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #14
  br label %_Z15GetMlasPlatformv.exit52

bb.k:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_Z15GetMlasPlatformv.exit52:                      ; preds = %_Z15GetMlasPlatformv.exit, %bb.h, %bb.j
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 192), align 8, !tbaa !78
  %i.au = call noundef float %i.at(ptr noundef %.04763, ptr noundef %i.ao, i64 noundef %i.o, ptr noundef nonnull %i.a) ; 2 uses
  br i1 %i.u, label %bb.m, label %bb.n

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %.04560 = phi i64 [ 0, %.lr.ph ], [ %i.ax, %bb.l ] ; 2 uses
  %i.av = shl i64 %.04560, 6
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.av
  call void @llvm.prefetch.p0(ptr nonnull %i.aw, i32 0, i32 3, i32 1)
  %i.ax = add i64 %.04560, 1                      ; 2 uses
  %i.ay = shl i64 %i.ax, 4
  %i.az = icmp ult i64 %i.ay, %i.o
  br i1 %i.az, label %bb.l, label %._crit_edge, !llvm.loop !75

bb.m:                                             ; preds = %_Z15GetMlasPlatformv.exit52
  %i.ba = load float, ptr %i.a, align 4, !tbaa !28
  %i.bb = fadd float %i.w, %i.ba
  %i.bc = call float @expf(float noundef %i.bb) #14
  %i.bd = fadd float %i.au, %i.bc
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_Z15GetMlasPlatformv.exit52
  %.0 = phi float [ %i.bd, %bb.m ], [ %i.au, %_Z15GetMlasPlatformv.exit52 ] ; 2 uses
  br i1 %i.r, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.be = load float, ptr %i.a, align 4, !tbaa !28
  store float %i.be, ptr %i.b, align 4, !tbaa !28
  %i.bf = call noundef float @logf(float noundef %.0) #14
  store float %i.bf, ptr %i.ae, align 4, !tbaa !28
  %i.bg = load atomic i8, ptr @_ZGVZ15GetMlasPlatformvE12MlasPlatform acquire, align 8
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.p, label %_Z15GetMlasPlatformv.exit54, !prof !10

bb.p:                                             ; preds = %bb.o
  %i.bi = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #14
  %.not.i53 = icmp eq i32 %i.bi, 0
  br i1 %.not.i53, label %_Z15GetMlasPlatformv.exit54, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN13MLAS_PLATFORMC1Ev(ptr noundef nonnull align 8 dereferenceable(584) @_ZZ15GetMlasPlatformvE12MlasPlatform)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @__cxa_guard_release(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #14
  br label %_Z15GetMlasPlatformv.exit54

bb.s:                                             ; preds = %bb.q
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_Z15GetMlasPlatformv.exit54:                      ; preds = %bb.o, %bb.p, %bb.r
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 200), align 8, !tbaa !79
  call void %i.bk(ptr noundef %.04763, ptr noundef %.04664, i64 noundef %i.o, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.y

bb.t:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.bl = fdiv float 1.000000e+00, %.0
  store float %i.bl, ptr %i.c, align 4, !tbaa !28
  %i.bm = load atomic i8, ptr @_ZGVZ15GetMlasPlatformvE12MlasPlatform acquire, align 8
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.u, label %_Z15GetMlasPlatformv.exit56, !prof !10

bb.u:                                             ; preds = %bb.t
  %i.bo = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #14
  %.not.i55 = icmp eq i32 %i.bo, 0
  br i1 %.not.i55, label %_Z15GetMlasPlatformv.exit56, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN13MLAS_PLATFORMC1Ev(ptr noundef nonnull align 8 dereferenceable(584) @_ZZ15GetMlasPlatformvE12MlasPlatform)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @__cxa_guard_release(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #14
  br label %_Z15GetMlasPlatformv.exit56

bb.x:                                             ; preds = %bb.v
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_Z15GetMlasPlatformv.exit56:                      ; preds = %bb.t, %bb.u, %bb.w
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 208), align 8, !tbaa !80
  call void %i.bq(ptr noundef %.04664, i64 noundef %i.o, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %bb.y

bb.y:                                             ; preds = %_Z15GetMlasPlatformv.exit56, %_Z15GetMlasPlatformv.exit54
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.04763, i64 %i.o
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.04664, i64 %i.o
  %i.bt = add i64 %.05962, -1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.not = icmp eq i64 %i.bt, 0
  br i1 %.not, label %._crit_edge65, label %.preheader, !llvm.loop !76

._crit_edge65:                                    ; preds = %bb.y, %_Z17MlasPartitionWorkllmPmS_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @expf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden void @_Z26MlasComputeSoftmaxThreadedIN11onnxruntime9MLFloat16EEvPvl(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.d = udiv i64 %i.c, %i.a                      ; 3 uses
  %i.e = urem i64 %i.c, %i.a                      ; 2 uses
  %i.f = icmp ult i64 %1, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.d, 1                          ; 2 uses
  %i.h = mul i64 %i.g, %1
  br label %_Z17MlasPartitionWorkllmPmS_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = mul i64 %i.d, %1
  %i.j = add i64 %i.i, %i.e
  br label %_Z17MlasPartitionWorkllmPmS_.exit

_Z17MlasPartitionWorkllmPmS_.exit:                ; preds = %bb.b, %bb.c
  %storemerge17.i = phi i64 [ %i.j, %bb.c ], [ %i.h, %bb.b ]
  %storemerge.i = phi i64 [ %i.d, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !47   ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i8, ptr %i.m, align 8, !tbaa !48, !range !37, !noundef !38
  %i.o = trunc nuw i8 %i.n to i1                  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.q = load i8, ptr %i.p, align 1, !tbaa !49, !range !37, !noundef !38
  %i.r = trunc nuw i8 %i.q to i1                  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.u = mul i64 %i.l, %storemerge17.i            ; 2 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !51
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.u
  %i.z = load atomic i8, ptr @_ZGVZ15GetMlasPlatformvE12MlasPlatform acquire, align 8
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.d, label %_Z15GetMlasPlatformv.exit, !prof !10

bb.d:                                             ; preds = %_Z17MlasPartitionWorkllmPmS_.exit
  %i.ab = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #14
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %_Z15GetMlasPlatformv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN13MLAS_PLATFORMC1Ev(ptr noundef nonnull align 8 dereferenceable(584) @_ZZ15GetMlasPlatformvE12MlasPlatform)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #14
  br label %_Z15GetMlasPlatformv.exit

common.resume:                                    ; preds = %bb.n, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ac, %bb.g ], [ %i.as, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #14
  br label %common.resume

_Z15GetMlasPlatformv.exit:                        ; preds = %_Z17MlasPartitionWorkllmPmS_.exit, %bb.d, %bb.f
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 568), align 8, !tbaa !25 ; 7 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_Z15GetMlasPlatformv.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !52
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !53
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.o, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !82
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.l, label %bb.o

.critedge:                                        ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !54
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.critedge, %bb.k, %bb.i, %bb.h, %_Z15GetMlasPlatformv.exit
  %i.ar = tail call ptr @__cxa_allocate_exception(i64 16) #14 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull @.str.1)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #15
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ar) #14
  br label %common.resume

bb.o:                                             ; preds = %bb.k, %.critedge
  %.not68 = icmp eq i64 %storemerge.i, 0
  br i1 %.not68, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.ai
  %.04871 = phi ptr [ %i.v, %.lr.ph ], [ %i.dx, %bb.ai ] ; 4 uses
  %.04970 = phi ptr [ %i.y, %.lr.ph ], [ %i.dy, %bb.ai ] ; 5 uses
  %.06569 = phi i64 [ %storemerge.i, %.lr.ph ], [ %i.dz, %bb.ai ]
  %i.av = load ptr, ptr %i.af, align 8, !tbaa !52
  %i.aw = tail call i16 %i.av(ptr noundef %.04871, i64 noundef %i.l) ; 3 uses
  %i.ax = and i16 %i.aw, 32767
  %i.ay = icmp samesign ugt i16 %i.ax, 31744
  %i.az = xor i16 %i.aw, -32768
  %spec.select.i = select i1 %i.ay, i16 %i.aw, i16 %i.az ; 2 uses
  %i.ba = icmp sgt i16 %spec.select.i, -1
  %or.cond.not = select i1 %i.r, i1 %i.ba, i1 false
  %.sroa.058.0 = select i1 %or.cond.not, i16 0, i16 %spec.select.i ; 4 uses
  %i.bb = select i1 %i.o, ptr null, ptr %.04970
  %i.bc = load ptr, ptr %i.ai, align 8, !tbaa !53
  %i.bd = tail call i16 %i.bc(ptr noundef %.04871, ptr noundef %i.bb, i64 noundef %i.l, i16 %.sroa.058.0) ; 2 uses
  %i.be = zext i16 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 13               ; 4 uses
  %i.bg = and i32 %i.bf, 260046848                ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 260046848
  br i1 %i.bh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bi = or i32 %i.bf, 1879048192
  br label %_ZNK11onnxruntime9MLFloat167ToFloatEv.exit

bb.r:                                             ; preds = %bb.p
  %i.bj = and i32 %i.bf, 268427264
  %i.bk = add nuw nsw i32 %i.bj, 939524096
  %i.bl = icmp eq i32 %i.bg, 0
  br i1 %i.bl, label %bb.s, label %_ZNK11onnxruntime9MLFloat167ToFloatEv.exit

bb.s:                                             ; preds = %bb.r
  %i.bm = or i32 %i.bf, 947912704
  %i.bn = bitcast i32 %i.bm to float
  %i.bo = fadd float %i.bn, f0xB8800000
  %i.bp = bitcast float %i.bo to i32
  br label %_ZNK11onnxruntime9MLFloat167ToFloatEv.exit

_ZNK11onnxruntime9MLFloat167ToFloatEv.exit:       ; preds = %bb.q, %bb.r, %bb.s
  %.sroa.0.0.i.i = phi i32 [ %i.bi, %bb.q ], [ %i.bp, %bb.s ], [ %i.bk, %bb.r ]
  %.signext.i.i = sext i16 %i.bd to i32
  %i.bq = and i32 %.signext.i.i, -2147483648
  %i.br = or i32 %.sroa.0.0.i.i, %i.bq
  %i.bs = bitcast i32 %i.br to float              ; 2 uses
  br i1 %i.r, label %bb.t, label %bb.x

bb.t:                                             ; preds = %_ZNK11onnxruntime9MLFloat167ToFloatEv.exit
  %i.bt = zext i16 %.sroa.058.0 to i32
  %i.bu = shl nuw nsw i32 %i.bt, 13               ; 4 uses
  %i.bv = and i32 %i.bu, 260046848                ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 260046848
  br i1 %i.bw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bx = or i32 %i.bu, 1879048192
  br label %_ZNK11onnxruntime9MLFloat167ToFloatEv.exit53

bb.v:                                             ; preds = %bb.t
  %i.by = and i32 %i.bu, 268427264
  %i.bz = add nuw nsw i32 %i.by, 939524096
  %i.ca = icmp eq i32 %i.bv, 0
  br i1 %i.ca, label %bb.w, label %_ZNK11onnxruntime9MLFloat167ToFloatEv.exit53

bb.w:                                             ; preds = %bb.v
  %i.cb = or i32 %i.bu, 947912704
  %i.cc = bitcast i32 %i.cb to float
  %i.cd = fadd float %i.cc, f0xB8800000
  %i.ce = bitcast float %i.cd to i32
  br label %_ZNK11onnxruntime9MLFloat167ToFloatEv.exit53

_ZNK11onnxruntime9MLFloat167ToFloatEv.exit53:     ; preds = %bb.u, %bb.v, %bb.w
  %.sroa.0.0.i.i51 = phi i32 [ %i.bx, %bb.u ], [ %i.ce, %bb.w ], [ %i.bz, %bb.v ]
  %.signext.i.i52 = sext i16 %.sroa.058.0 to i32
  %i.cf = and i32 %.signext.i.i52, -2147483648
  %i.cg = or i32 %.sroa.0.0.i.i51, %i.cf
  %i.ch = bitcast i32 %i.cg to float
  %i.ci = tail call float @expf(float noundef %i.ch) #14
  %i.cj = fadd float %i.ci, %i.bs
  br label %bb.x

bb.x:                                             ; preds = %_ZNK11onnxruntime9MLFloat167ToFloatEv.exit53, %_ZNK11onnxruntime9MLFloat167ToFloatEv.exit
  %.0 = phi float [ %i.cj, %_ZNK11onnxruntime9MLFloat167ToFloatEv.exit53 ], [ %i.bs, %_ZNK11onnxruntime9MLFloat167ToFloatEv.exit ] ; 3 uses
  br i1 %i.o, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.ck = load ptr, ptr %i.au, align 8, !tbaa !82
  %i.cl = tail call noundef float @logf(float noundef %.0) #14 ; 2 uses
  %i.cm = tail call float @llvm.fabs.f32(float %i.cl) ; 2 uses
  %i.cn = bitcast float %i.cm to i32              ; 5 uses
  %i.co = icmp samesign ugt i32 %i.cn, 1199570943
  br i1 %i.co, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cp = icmp samesign ugt i32 %i.cn, 2139095040
  %i.cq = select i1 %i.cp, i32 32256, i32 31744
  br label %_ZN11onnxruntime9MLFloat16C2Ef.exit

bb.aa:                                            ; preds = %bb.y
  %i.cr = icmp samesign ult i32 %i.cn, 947912704
  br i1 %i.cr, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cs = fadd float %i.cm, 5.000000e-01
  %i.ct = bitcast float %i.cs to i32
  br label %_ZN11onnxruntime9MLFloat16C2Ef.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cu = lshr i32 %i.cn, 13
  %i.cv = and i32 %i.cu, 1
  %i.cw = add nuw nsw i32 %i.cn, 134221823
  %i.cx = add nuw nsw i32 %i.cw, %i.cv
  %i.cy = lshr i32 %i.cx, 13
  br label %_ZN11onnxruntime9MLFloat16C2Ef.exit

_ZN11onnxruntime9MLFloat16C2Ef.exit:              ; preds = %bb.z, %bb.ab, %bb.ac
  %.0.i.i = phi i32 [ %i.cq, %bb.z ], [ %i.ct, %bb.ab ], [ %i.cy, %bb.ac ]
  %i.cz = bitcast float %i.cl to i32
  %i.da = lshr i32 %i.cz, 16
  %i.db = and i32 %i.da, 32768
  %i.dc = or i32 %.0.i.i, %i.db
  %i.dd = trunc i32 %i.dc to i16
  tail call void %i.ck(ptr noundef %.04871, ptr noundef %.04970, i64 noundef %i.l, i16 %.sroa.058.0, i16 %i.dd)
  br label %bb.ai

bb.ad:                                            ; preds = %bb.x
  %i.de = load ptr, ptr %i.at, align 8, !tbaa !54
  %i.df = tail call float @llvm.fabs.f32(float %.0) ; 2 uses
  %i.dg = bitcast float %i.df to i32              ; 5 uses
  %i.dh = icmp samesign ugt i32 %i.dg, 1199570943
  br i1 %i.dh, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.di = icmp samesign ugt i32 %i.dg, 2139095040
  %i.dj = select i1 %i.di, i32 32256, i32 31744
  br label %_ZN11onnxruntime9MLFloat16C2Ef.exit55

bb.af:                                            ; preds = %bb.ad
  %i.dk = icmp samesign ult i32 %i.dg, 947912704
  br i1 %i.dk, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dl = fadd float %i.df, 5.000000e-01
  %i.dm = bitcast float %i.dl to i32
  br label %_ZN11onnxruntime9MLFloat16C2Ef.exit55

bb.ah:                                            ; preds = %bb.af
  %i.dn = lshr i32 %i.dg, 13
  %i.do = and i32 %i.dn, 1
  %i.dp = add nuw nsw i32 %i.dg, 134221823
  %i.dq = add nuw nsw i32 %i.dp, %i.do
  %i.dr = lshr i32 %i.dq, 13
  br label %_ZN11onnxruntime9MLFloat16C2Ef.exit55

_ZN11onnxruntime9MLFloat16C2Ef.exit55:            ; preds = %bb.ae, %bb.ag, %bb.ah
  %.0.i.i54 = phi i32 [ %i.dj, %bb.ae ], [ %i.dm, %bb.ag ], [ %i.dr, %bb.ah ]
  %i.ds = bitcast float %.0 to i32
  %i.dt = lshr i32 %i.ds, 16
  %i.du = and i32 %i.dt, 32768
  %i.dv = or i32 %.0.i.i54, %i.du
  %i.dw = trunc i32 %i.dv to i16
  tail call void %i.de(ptr noundef %.04970, ptr noundef %.04970, i64 noundef %i.l, i16 %i.dw)
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN11onnxruntime9MLFloat16C2Ef.exit55, %_ZN11onnxruntime9MLFloat16C2Ef.exit
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %.04871, i64 %i.l
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %.04970, i64 %i.l
  %i.dz = add i64 %.06569, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dz, 0
  br i1 %.not, label %._crit_edge, label %bb.p, !llvm.loop !81

._crit_edge:                                      ; preds = %bb.ai, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_Z18MlasComputeSoftmaxIfEvPKT_PS0_mmbbfPN11onnxruntime11concurrency10ThreadPoolE(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, float noundef %6, ptr noundef %7) local_unnamed_addr #2 comdat {
bb.a:
  %8 = alloca %struct.MLAS_SOFTMAX_WORK_BLOCK, align 8 ; 11 uses
  %i.a = zext i1 %4 to i8
  %i.b = zext i1 %5 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 %i.a, ptr %i.c, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 9
  store i8 %i.b, ptr %i.d, align 1, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %0, ptr %i.e, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %1, ptr %i.f, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %2, ptr %i.g, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 %3, ptr %i.h, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 12
  store float %6, ptr %i.i, align 4, !tbaa !40
  %i.j = tail call i32 @opencv_dnn_mlas_max_threads()
  %i.k = sext i32 %i.j to i64
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.k)
  %i.l = mul i64 %3, %2
  %i.m = lshr i64 %i.l, 14
  %i.n = add nuw nsw i64 %i.m, 1
  %.1 = tail call i64 @llvm.umin.i64(i64 %spec.select, i64 %i.n) ; 2 uses
  store i64 %.1, ptr %8, align 8, !tbaa !33
  call void @_Z19MlasExecuteThreadedPFvPvlES_lPN11onnxruntime11concurrency10ThreadPoolE(ptr noundef nonnull @_Z26MlasComputeSoftmaxThreadedIfEvPvl, ptr noundef nonnull %8, i64 noundef %.1, ptr noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret void
}

declare void @_Z19MlasExecuteThreadedPFvPvlES_lPN11onnxruntime11concurrency10ThreadPoolE(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_Z18MlasComputeSoftmaxIN11onnxruntime9MLFloat16EEvPKT_PS2_mmbbfPNS0_11concurrency10ThreadPoolE(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, float noundef %6, ptr noundef %7) local_unnamed_addr #2 comdat {
bb.a:
  %8 = alloca %struct.MLAS_SOFTMAX_WORK_BLOCK.0, align 8 ; 11 uses
  %i.a = zext i1 %4 to i8
  %i.b = zext i1 %5 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 %i.a, ptr %i.c, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 9
  store i8 %i.b, ptr %i.d, align 1, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %0, ptr %i.e, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %1, ptr %i.f, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %2, ptr %i.g, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 %3, ptr %i.h, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 12
  store float %6, ptr %i.i, align 4, !tbaa !83
  %i.j = tail call i32 @opencv_dnn_mlas_max_threads()
  %i.k = sext i32 %i.j to i64
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.k)
  %i.l = mul i64 %3, %2
  %i.m = lshr i64 %i.l, 14
  %i.n = add nuw nsw i64 %i.m, 1
  %.1 = tail call i64 @llvm.umin.i64(i64 %spec.select, i64 %i.n) ; 2 uses
  store i64 %.1, ptr %8, align 8, !tbaa !45
  call void @_Z19MlasExecuteThreadedPFvPvlES_lPN11onnxruntime11concurrency10ThreadPoolE(ptr noundef nonnull @_Z26MlasComputeSoftmaxThreadedIN11onnxruntime9MLFloat16EEvPvl, ptr noundef nonnull %8, i64 noundef %.1, ptr noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_Z16MlasGQASupportedIN11onnxruntime9MLFloat16EEb15CBLAS_TRANSPOSES2_(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_Z18MlasHGemmSupported15CBLAS_TRANSPOSES_(i32 noundef %0, i32 noundef %1)
  br i1 %i.a, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i8, ptr @_ZGVZ15GetMlasPlatformvE12MlasPlatform acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %_Z15GetMlasPlatformv.exit, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #14
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_Z15GetMlasPlatformv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN13MLAS_PLATFORMC1Ev(ptr noundef nonnull align 8 dereferenceable(584) @_ZZ15GetMlasPlatformvE12MlasPlatform)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #14
  br label %_Z15GetMlasPlatformv.exit

bb.f:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #14
  resume { ptr, i32 } %i.e

_Z15GetMlasPlatformv.exit:                        ; preds = %bb.b, %bb.c, %bb.e
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 568), align 8, !tbaa !25 ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_Z15GetMlasPlatformv.exit
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !85
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.u = icmp ne ptr %i.t, null
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %_Z15GetMlasPlatformv.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %_Z15GetMlasPlatformv.exit ], [ %i.u, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ]
  ret i1 %.1
}

declare noundef zeroext i1 @_Z18MlasHGemmSupported15CBLAS_TRANSPOSES_(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_Z16MlasGQASupportedIfEb15CBLAS_TRANSPOSES0_(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  ret i1 true
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smin.v8i16(<8 x i16>, <8 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smax.v8i16(<8 x i16>, <8 x i16>) #11

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #12

declare void @_ZN13MLAS_PLATFORMC1Ev(ptr noundef nonnull align 8 dereferenceable(584)) unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @logf(float noundef) local_unnamed_addr #9

declare i32 @opencv_dnn_mlas_max_threads() local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"branch_weights", i32 1, i32 1048575}
!11 = !{!"bool", !4, i64 0}
!12 = !{!"any pointer", !4, i64 0}
!13 = !{!"p1 _ZTS24MLAS_GEMM_QUANT_DISPATCH", !12, i64 0}
!14 = !{!"p1 _ZTS24MLAS_SYMM_QGEMM_DISPATCH", !12, i64 0}
!15 = !{!"p1 _ZTS22MLAS_CONV_SYM_DISPATCH", !12, i64 0}
!16 = !{!"p1 _ZTS22MLAS_FPQ4GEMM_DISPATCH", !12, i64 0}
!17 = !{!"p1 _ZTS22MLAS_Q8Q4GEMM_DISPATCH", !12, i64 0}
!18 = !{!"p1 _ZTS24MLAS_QNBIT_GEMM_DISPATCH", !12, i64 0}
!19 = !{!"p1 _ZTS28MLAS_QNBIT_LUT_GEMM_DISPATCH", !12, i64 0}
!20 = !{!"p1 _ZTS18MLAS_ROPE_DISPATCH", !12, i64 0}
!21 = !{!"p1 _ZTS19MLAS_HGEMM_DISPATCH", !12, i64 0}
!22 = !{!"p1 _ZTS21MLAS_SOFTMAX_DISPATCH", !12, i64 0}
!23 = !{!"p1 _ZTS21MLAS_ELTWISE_DISPATCH", !12, i64 0}
!24 = !{!"_ZTS13MLAS_PLATFORM", !11, i64 0, !11, i64 1, !11, i64 2, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !14, i64 112, !15, i64 120, !15, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !12, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !4, i64 360, !12, i64 384, !12, i64 392, !12, i64 400, !12, i64 408, !12, i64 416, !12, i64 424, !12, i64 432, !12, i64 440, !12, i64 448, !12, i64 456, !12, i64 464, !12, i64 472, !12, i64 480, !5, i64 488, !5, i64 492, !5, i64 496, !16, i64 504, !17, i64 512, !18, i64 520, !19, i64 528, !12, i64 536, !12, i64 544, !20, i64 552, !21, i64 560, !22, i64 568, !23, i64 576}
!25 = !{!24, !22, i64 568}
!26 = !{!"_ZTS21MLAS_SOFTMAX_DISPATCH", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48}
!27 = !{!"float", !4, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = !{!"long", !4, i64 0}
!31 = !{!"p1 float", !12, i64 0}
!32 = !{!"_ZTS23MLAS_SOFTMAX_WORK_BLOCKIfE", !30, i64 0, !11, i64 8, !11, i64 9, !27, i64 12, !31, i64 16, !31, i64 24, !30, i64 32, !30, i64 40}
!33 = !{!32, !30, i64 0}
!34 = !{!32, !30, i64 32}
!35 = !{!32, !30, i64 40}
!36 = !{!32, !11, i64 8}
!37 = !{i8 0, i8 2}
!38 = !{}
!39 = !{!32, !11, i64 9}
!40 = !{!32, !27, i64 12}
!41 = !{!32, !31, i64 24}
!42 = !{!32, !31, i64 16}
!43 = !{!"p1 _ZTSN11onnxruntime9MLFloat16E", !12, i64 0}
!44 = !{!"_ZTS23MLAS_SOFTMAX_WORK_BLOCKIN11onnxruntime9MLFloat16EE", !30, i64 0, !11, i64 8, !11, i64 9, !27, i64 12, !43, i64 16, !43, i64 24, !30, i64 32, !30, i64 40}
!45 = !{!44, !30, i64 0}
!46 = !{!44, !30, i64 32}
!47 = !{!44, !30, i64 40}
!48 = !{!44, !11, i64 8}
!49 = !{!44, !11, i64 9}
!50 = !{!44, !43, i64 16}
!51 = !{!44, !43, i64 24}
!52 = !{!26, !12, i64 24}
!53 = !{!26, !12, i64 32}
!54 = !{!26, !12, i64 40}
!55 = distinct !{!55, !9}
!56 = !{!24, !12, i64 400}
!57 = !{!26, !12, i64 16}
!58 = distinct !{!58, !9}
!59 = distinct !{!59, !9}
!60 = distinct !{!60, !9}
!61 = distinct !{!61, !9}
!62 = distinct !{!62, !29}
!63 = distinct !{!63, !9}
!64 = distinct !{!64, !9}
!65 = distinct !{!65, !9}
!66 = distinct !{!66, !9}
!67 = distinct !{!67, !29}
!68 = distinct !{!68, !9}
!69 = distinct !{!69, !29}
!70 = distinct !{!70, !9}
!71 = distinct !{!71, !9}
!72 = distinct !{!72, !9}
!73 = distinct !{!73, !29}
!74 = distinct !{!74, !9}
!75 = distinct !{!75, !9}
!76 = distinct !{!76, !9}
!77 = !{!24, !12, i64 184}
!78 = !{!24, !12, i64 192}
!79 = !{!24, !12, i64 200}
!80 = !{!24, !12, i64 208}
!81 = distinct !{!81, !9}
!82 = !{!26, !12, i64 48}
!83 = !{!44, !27, i64 12}
!84 = !{!26, !12, i64 0}
!85 = !{!26, !12, i64 8}
end_hunk_0
