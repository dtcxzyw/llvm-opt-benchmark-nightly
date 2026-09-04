Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/distransform?download=true
inline.NumInlined: 181
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK2cv15DTColumnInvokerclERKNS_5RangeE:bb.a
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  %lcmp.mod86 = trunc i32 %i.g to i1
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.us.us
  %indvars.iv76 = phi i64 [ %i.aq, %.lr.ph.us.us.preheader ], [ %indvars.iv.next77, %._crit_edge.us.us ] ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %i.af, i64 %indvars.iv76 ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.us.us
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !24
  %.not.us.us.prol = icmp eq i8 %i.aw, 0
  %i.ax = select i1 %.not.us.us.prol, i32 0, i32 %i.g ; 2 uses
  store i32 %i.ax, ptr %i.as, align 4, !tbaa !31
  %i.ay = getelementptr inbounds i8, ptr %i.av, i64 %i.ak
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.us.us
  %indvars.iv68.unr = phi i64 [ %i.ap, %.lr.ph.us.us ], [ %indvars.iv.next69.prol, %.prol.loopexit.unr-lcssa ]
  %.044.us.us.unr = phi i32 [ %i.y, %.lr.ph.us.us ], [ %i.ax, %.prol.loopexit.unr-lcssa ]
  %.03942.us.us.unr = phi ptr [ %i.av, %.lr.ph.us.us ], [ %i.ay, %.prol.loopexit.unr-lcssa ]
  br i1 %i.at, label %..preheader_crit_edge.us.us.preheader, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.prol.loopexit, %.lr.ph.us.us.new
  %indvars.iv68 = phi i64 [ %indvars.iv.next69.1, %.lr.ph.us.us.new ], [ %indvars.iv68.unr, %.prol.loopexit ] ; 4 uses
  %.044.us.us = phi i32 [ %i.bg, %.lr.ph.us.us.new ], [ %.044.us.us.unr, %.prol.loopexit ]
  %.03942.us.us = phi ptr [ %i.bj, %.lr.ph.us.us.new ], [ %.03942.us.us.unr, %.prol.loopexit ] ; 2 uses
  %i.az = add nsw i32 %.044.us.us, 1
  %i.ba = load i8, ptr %.03942.us.us, align 1, !tbaa !24
  %.not.us.us = icmp eq i8 %i.ba, 0
  %i.bb = select i1 %.not.us.us, i32 0, i32 %i.az ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv68
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !31
  %i.bd = getelementptr inbounds i8, ptr %.03942.us.us, i64 %i.ak ; 2 uses
  %i.be = add nsw i32 %i.bb, 1
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !24
  %.not.us.us.1 = icmp eq i8 %i.bf, 0
  %i.bg = select i1 %.not.us.us.1, i32 0, i32 %i.be ; 2 uses
  %i.bh = getelementptr [4 x i8], ptr %i.v, i64 %indvars.iv68
  %i.bi = getelementptr i8, ptr %i.bh, i64 -4
  store i32 %i.bg, ptr %i.bi, align 4, !tbaa !31
  %indvars.iv.next69.1 = add nsw i64 %indvars.iv68, -2
  %i.bj = getelementptr inbounds i8, ptr %i.bd, i64 %i.ak
  %i.bk = icmp sgt i64 %indvars.iv68, 1
  br i1 %i.bk, label %.lr.ph.us.us.new, label %..preheader_crit_edge.us.us.preheader, !llvm.loop !125

..preheader_crit_edge.us.us.preheader:            ; preds = %.lr.ph.us.us.new, %.prol.loopexit
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %indvars.iv76 ; 2 uses
  br i1 %i.au, label %..preheader_crit_edge.us.us.epil.preheader, label %..preheader_crit_edge.us.us

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader, %..preheader_crit_edge.us.us
  %indvars.iv71 = phi i64 [ %indvars.iv.next72.1, %..preheader_crit_edge.us.us ], [ 0, %..preheader_crit_edge.us.us.preheader ] ; 3 uses
  %.147.us.us = phi i32 [ %i.ch, %..preheader_crit_edge.us.us ], [ %i.y, %..preheader_crit_edge.us.us.preheader ] ; 2 uses
  %.03845.us.us = phi ptr [ %i.cm, %..preheader_crit_edge.us.us ], [ %i.bl, %..preheader_crit_edge.us.us.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %..preheader_crit_edge.us.us ], [ 0, %..preheader_crit_edge.us.us.preheader ]
  %i.bm = add nsw i32 %.147.us.us, 1
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv71 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !31
  %i.bp = sub nsw i32 %.147.us.us, %i.bo
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !31
  %i.bt = sub i32 %i.bm, %i.bs                    ; 4 uses
  store i32 %i.bt, ptr %i.bn, align 4, !tbaa !31
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !31
  %i.bx = uitofp i32 %i.bw to float
  store float %i.bx, ptr %.03845.us.us, align 4, !tbaa !48
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.03845.us.us, i64 %i.n ; 2 uses
  %i.bz = add nsw i32 %i.bt, 1
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv71
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !31
  %i.cd = sub nsw i32 %i.bt, %i.cc
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !31
  %i.ch = sub i32 %i.bz, %i.cg                    ; 4 uses
  store i32 %i.ch, ptr %i.cb, align 4, !tbaa !31
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !31
  %i.cl = uitofp i32 %i.ck to float
  store float %i.cl, ptr %i.by, align 4, !tbaa !48
  %indvars.iv.next72.1 = add nuw nsw i64 %indvars.iv71, 2 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.n ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.unr-lcssa, label %..preheader_crit_edge.us.us, !llvm.loop !126

._crit_edge.us.us.unr-lcssa:                      ; preds = %..preheader_crit_edge.us.us
  br i1 %lcmp.mod85.not, label %._crit_edge.us.us, label %..preheader_crit_edge.us.us.epil.preheader

..preheader_crit_edge.us.us.epil.preheader:       ; preds = %._crit_edge.us.us.unr-lcssa, %..preheader_crit_edge.us.us.preheader
  %indvars.iv71.epil.init = phi i64 [ 0, %..preheader_crit_edge.us.us.preheader ], [ %indvars.iv.next72.1, %._crit_edge.us.us.unr-lcssa ]
  %.147.us.us.epil.init = phi i32 [ %i.y, %..preheader_crit_edge.us.us.preheader ], [ %i.ch, %._crit_edge.us.us.unr-lcssa ] ; 2 uses
  %.03845.us.us.epil.init = phi ptr [ %i.bl, %..preheader_crit_edge.us.us.preheader ], [ %i.cm, %._crit_edge.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod86)
  %i.cn = add nsw i32 %.147.us.us.epil.init, 1
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv71.epil.init ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !31
  %i.cq = sub nsw i32 %.147.us.us.epil.init, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !31
  %i.cu = sub i32 %i.cn, %i.ct                    ; 2 uses
  store i32 %i.cu, ptr %i.co, align 4, !tbaa !31
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !31
  %i.cy = uitofp i32 %i.cx to float
  store float %i.cy, ptr %.03845.us.us.epil.init, align 4, !tbaa !48
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.unr-lcssa, %..preheader_crit_edge.us.us.epil.preheader
  %indvars.iv.next77 = add nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %._crit_edge51, label %.lr.ph.us.us, !llvm.loop !127

._crit_edge51:                                    ; preds = %._crit_edge.us.us, %.lr.ph50, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %.not.i.i41 = icmp eq ptr %i.v, %i.p
  br i1 %.not.i.i41, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge51
  call void @_ZdaPv(ptr noundef nonnull %i.v) #20
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit

_ZN2cv10AutoBufferIiLm264EED2Ev.exit:             ; preds = %._crit_edge51, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv12DTRowInvokerD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv12DTRowInvokerclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::AutoBuffer", align 8    ; 6 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !37     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !38   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !27   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.h = add nsw i32 %i.g, 2                      ; 2 uses
  %i.i = shl nsw i32 %i.h, 1
  %i.j = sext i32 %i.i to i64
  %i.k = sext i32 %i.h to i64
  %i.l = add nsw i64 %i.j, %i.k
  %i.m = shl nsw i64 %i.l, 2                      ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i.i = icmp ugt i64 %i.m, 1032
  store i64 %i.m, ptr %i.o, align 8, !tbaa !30
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.p = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #21 ; 2 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !29
  br label %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit

_ZN2cv10AutoBufferIhLm1032EEC2Em.exit:            ; preds = %bb.a, %bb.b
  %i.q = phi ptr [ %i.n, %bb.a ], [ %i.p, %bb.b ] ; 7 uses
  %i.r = sext i32 %i.g to i64                     ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.r ; 9 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = add i64 %i.v, 3
  %i.x = and i64 %i.w, -4
  %i.y = inttoptr i64 %i.x to ptr                 ; 6 uses
  %i.z = icmp slt i32 %i.a, %i.c
  br i1 %i.z, label %.lr.ph128, label %._crit_edge129

.lr.ph128:                                        ; preds = %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !51  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !55
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.g, i32 65536) ; 2 uses
  %i.af = icmp sgt i32 %i.g, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ai = icmp sgt i32 %i.g, 0
  %i.aj = sext i32 %i.a to i64
  %wide.trip.count158 = sext i32 %i.c to i64
  %wide.trip.count.a = zext nneg i32 %.sroa.speculated to i64
  %wide.trip.count145 = zext i32 %i.g to i64
  %wide.trip.count153 = zext nneg i32 %i.g to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph128, %._crit_edge
  %indvars.iv155 = phi i64 [ %i.aj, %.lr.ph128 ], [ %indvars.iv.next156, %._crit_edge ] ; 2 uses
  %i.ak = mul i64 %i.ae, %indvars.iv155
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ak ; 6 uses
  store i32 0, ptr %i.y, align 4, !tbaa !31
  store <2 x float> <float f0xD8635FA9, float f0x58635FA9>, ptr %i.s, align 4, !tbaa !48
  %i.am = load float, ptr %i.al, align 4, !tbaa !48
  store float %i.am, ptr %i.q, align 4, !tbaa !48
  br i1 %i.af, label %.lr.ph, label %.preheader114

.lr.ph:                                           ; preds = %bb.c
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !52 ; 2 uses
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !53
  br label %bb.d

.preheader114:                                    ; preds = %bb.f, %bb.c
  %.092.lcssa = phi i32 [ 1, %bb.c ], [ %.sroa.speculated, %bb.f ] ; 2 uses
  %.090.lcssa = phi i32 [ 0, %bb.c ], [ %i.bs, %bb.f ]
  %3 = icmp slt i32 %.092.lcssa, %i.g
  br i1 %3, label %.lr.ph124, label %.preheader113

.lr.ph124:                                        ; preds = %.preheader114
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !53
  %4 = zext nneg i32 %.092.lcssa to i64
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv136 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next137, %bb.f ] ; 5 uses
  %.090120 = phi i32 [ 0, %.lr.ph ], [ %i.bs, %bb.f ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv136
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !48 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv136
  store float %i.ar, ptr %i.as, align 4, !tbaa !48
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv136
  %i.au = load i32, ptr %i.at, align 4, !tbaa !31
  %i.av = sext i32 %.090120 to i64
  %i.aw = trunc nuw nsw i64 %indvars.iv136 to i32 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ %i.av, %bb.d ] ; 5 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.y, i64 %indvars.iv
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !31 ; 2 uses
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !48
  %i.bc = fsub float %i.ar, %i.bb
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.az
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !31
  %i.bf = sub i32 %i.au, %i.be
  %i.bg = uitofp i32 %i.bf to float
  %i.bh = fadd float %i.bc, %i.bg
  %i.bi = sub nsw i32 %i.aw, %i.ay
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.bj
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !48
  %i.bm = fmul float %i.bl, %i.bh                 ; 2 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !48
  %i.bp = fcmp ogt float %i.bm, %i.bo
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %i.bp, label %bb.f, label %bb.e, !llvm.loop !131

bb.f:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.br = trunc nsw i64 %indvars.iv to i32
  %i.bs = add nsw i32 %i.br, 1                    ; 3 uses
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.bt
  store i32 %i.aw, ptr %i.bu, align 4, !tbaa !31
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bt
  store float %i.bm, ptr %i.bv, align 4, !tbaa !48
  %i.bw = getelementptr i8, ptr %i.bq, i64 8
  store float f0x58635FA9, ptr %i.bw, align 4, !tbaa !48
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count.a
  br i1 %exitcond.not, label %.preheader114, label %bb.d, !llvm.loop !132

.preheader113:                                    ; preds = %bb.i, %.preheader114
  br i1 %i.ai, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %.preheader113
  %i.bx = load ptr, ptr %i.ag, align 8, !tbaa !52
  br label %.preheader

bb.g:                                             ; preds = %.lr.ph124, %bb.i
  %indvars.iv142 = phi i64 [ %4, %.lr.ph124 ], [ %indvars.iv.next143, %bb.i ] ; 4 uses
  %.3123 = phi i32 [ %.090.lcssa, %.lr.ph124 ], [ %i.cx, %bb.i ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv142
  %i.bz = load float, ptr %i.by, align 4, !tbaa !48 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv142
  store float %i.bz, ptr %i.ca, align 4, !tbaa !48
  %i.cb = sext i32 %.3123 to i64
  %i.cc = trunc nuw nsw i64 %indvars.iv142 to i32 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %bb.h ], [ %i.cb, %bb.g ] ; 5 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.y, i64 %indvars.iv139
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !31 ; 3 uses
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.cf
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !48
  %i.ci = fsub float %i.bz, %i.ch
  %i.cj = add nsw i32 %i.ce, %i.cc
  %i.ck = sitofp i32 %i.cj to float
  %i.cl = sub nsw i32 %i.cc, %i.ce                ; 2 uses
  %i.cm = sitofp i32 %i.cl to float
  %i.cn = call float @llvm.fmuladd.f32(float %i.ck, float %i.cm, float %i.ci)
  %i.co = sext i32 %i.cl to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.co
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !48
  %i.cr = fmul float %i.cn, %i.cq                 ; 2 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv139
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !48
  %i.cu = fcmp ogt float %i.cr, %i.ct
  %indvars.iv.next140 = add nsw i64 %indvars.iv139, -1
  br i1 %i.cu, label %bb.i, label %bb.h, !llvm.loop !133

bb.i:                                             ; preds = %bb.h
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv139
  %i.cw = trunc nsw i64 %indvars.iv139 to i32
  %i.cx = add nsw i32 %i.cw, 1                    ; 2 uses
  %i.cy = sext i32 %i.cx to i64                   ; 2 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.cy
  store i32 %i.cc, ptr %i.cz, align 4, !tbaa !31
  %i.da = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.cy
  store float %i.cr, ptr %i.da, align 4, !tbaa !48
  %i.db = getelementptr i8, ptr %i.cv, i64 8
  store float f0x58635FA9, ptr %i.db, align 4, !tbaa !48
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count145
  br i1 %exitcond146.not, label %.preheader113, label %bb.g, !llvm.loop !134

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.k
  %indvars.iv150 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next151, %bb.k ] ; 3 uses
  %.6126 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv147, %bb.k ]
  %i.dc = trunc nuw nsw i64 %indvars.iv150 to i32 ; 2 uses
  %i.dd = uitofp nneg i32 %i.dc to float
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.j
  %indvars.iv147 = phi i64 [ %.6126, %.preheader ], [ %indvars.iv.next148, %bb.j ] ; 3 uses
  %indvars.iv.next148 = add nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv.next148
  %i.df = load float, ptr %i.de, align 4, !tbaa !48
  %i.dg = fcmp olt float %i.df, %i.dd
  br i1 %i.dg, label %bb.j, label %bb.k, !llvm.loop !135

bb.k:                                             ; preds = %bb.j
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.y, i64 %indvars.iv147
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !31 ; 2 uses
  %i.dj = sub nsw i32 %i.dc, %i.di
  %i.dk = call i32 @llvm.abs.i32(i32 %i.dj, i1 true)
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !31
  %i.do = uitofp i32 %i.dn to float
  %i.dp = sext i32 %i.di to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.dp
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !48
  %i.ds = fadd float %i.dr, %i.do
  %i.dt = call noundef float @sqrtf(float noundef %i.ds) #18
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv150
  store float %i.dt, ptr %i.du, align 4, !tbaa !48
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge, label %.preheader, !llvm.loop !136

._crit_edge:                                      ; preds = %bb.k, %.preheader113
  %indvars.iv.next156 = add nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count158
  br i1 %exitcond159.not, label %._crit_edge129, label %bb.c, !llvm.loop !137

._crit_edge129:                                   ; preds = %._crit_edge, %_ZN2cv10AutoBufferIhLm1032EEC2Em.exit
  %.not.i.i98 = icmp eq ptr %i.q, %i.n
  br i1 %.not.i.i98, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge129
  call void @_ZdaPv(ptr noundef nonnull %i.q) #20
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit:            ; preds = %._crit_edge129, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cvL13initTopBottomERNS_3MatEij(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, i32 noundef range(i32 1, 3) %1, i32 noundef %2) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 6 uses
  %i.c = icmp slt i32 %i.b, 3
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.8, i32 noundef 109) #19
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %3, align 8, !tbaa !23     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !24
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %i.b, 0
  br i1 %i.j, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e
  %i.k = icmp eq i32 %i.b, 0
  %i.l = zext i1 %i.k to i32
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.n = icmp eq i32 %i.b, 2
  %i.o = zext i1 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !31   ; 2 uses
  %.not.i = icmp eq i32 %i.b, 1
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.m, align 4, !tbaa !31
  br label %_ZNK2cv8MatShapeclEv.exit

bb.h:                                             ; preds = %bb.f, %.thread.i
  %i.s = phi i32 [ %i.l, %.thread.i ], [ %i.q, %bb.f ]
  %i.t = icmp sgt i32 %i.b, -1
  %i.u = zext i1 %i.t to i32
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.g, %bb.h
  %i.v = phi i32 [ %i.q, %bb.g ], [ %i.s, %bb.h ] ; 5 uses
  %i.w = phi i32 [ %i.r, %bb.g ], [ %i.u, %bb.h ]
  %i.x = icmp sgt i32 %i.v, 0
  %i.y = sext i32 %i.v to i64                     ; 2 uses
  %i.z = sub nsw i64 0, %i.y
  br i1 %i.x, label %.preheader.preheader, label %.split

.preheader.preheader:                             ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !54 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !55
  %i.ae = add i32 %i.w, -1
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %i.ad, %i.af
  %i.ah = getelementptr i8, ptr %i.ab, i64 %i.ag  ; 6 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ai = icmp ult i32 %i.v, 4
  br i1 %i.ai, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.l
end_hunk_0
