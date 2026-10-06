Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@vng_interpolate:bb.a
  %unroll_iter744 = and i64 %i.asz, 9223372036854775800
  br label %.lr.ph406.split

.lr.ph406.split.us.preheader:                     ; preds = %.lr.ph406
  %i.atb = add i64 %i.asw, -4                     ; 2 uses
  %i.atc = lshr exact i64 %i.atb, 2
  %i.atd = add nuw nsw i64 %i.atc, 1              ; 2 uses
  %xtraiter746 = and i64 %i.atd, 3                ; 3 uses
  %i.ate = icmp ult i64 %i.atb, 12
  br i1 %i.ate, label %.lr.ph406.split.us.epil.preheader, label %.lr.ph406.split.us.preheader.new

.lr.ph406.split.us.preheader.new:                 ; preds = %.lr.ph406.split.us.preheader
  %unroll_iter750 = and i64 %i.atd, 9223372036854775804
  br label %.lr.ph406.split.us

.lr.ph406.split.us:                               ; preds = %.lr.ph406.split.us, %.lr.ph406.split.us.preheader.new
  %.0404.us = phi i64 [ 0, %.lr.ph406.split.us.preheader.new ], [ %i.auo, %.lr.ph406.split.us ] ; 5 uses
  %niter751 = phi i64 [ 0, %.lr.ph406.split.us.preheader.new ], [ %niter751.next.3, %.lr.ph406.split.us ]
  %i.atf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404.us ; 4 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atf, i64 4 ; 2 uses
  %i.ath = load float, ptr %i.atg, align 4, !tbaa !12
  %i.ati = getelementptr inbounds nuw i8, ptr %i.atf, i64 12 ; 2 uses
  %i.atj = load float, ptr %i.ati, align 4, !tbaa !12
  %i.atk = fadd reassoc nsz arcp contract afn float %i.atj, %i.ath
  %i.atl = fmul reassoc nsz arcp contract afn float %i.atk, 5.000000e-01
  store float %i.atl, ptr %i.atg, align 4, !tbaa !12
  store float 0.000000e+00, ptr %i.ati, align 4, !tbaa !12
  %.val.i.us = load <4 x float>, ptr %i.atf, align 16, !tbaa !133
  %i.atm = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us, <4 x float> zeroinitializer)
  store <4 x float> %i.atm, ptr %i.atf, align 16, !tbaa !133
  %i.atn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404.us ; 3 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atn, i64 16 ; 2 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %i.atn, i64 20 ; 2 uses
  %i.atq = load float, ptr %i.atp, align 4, !tbaa !12
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atn, i64 28 ; 2 uses
  %i.ats = load float, ptr %i.atr, align 4, !tbaa !12
  %i.att = fadd reassoc nsz arcp contract afn float %i.ats, %i.atq
  %i.atu = fmul reassoc nsz arcp contract afn float %i.att, 5.000000e-01
  store float %i.atu, ptr %i.atp, align 4, !tbaa !12
  store float 0.000000e+00, ptr %i.atr, align 4, !tbaa !12
  %.val.i.us.1 = load <4 x float>, ptr %i.ato, align 16, !tbaa !133
  %i.atv = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.1, <4 x float> zeroinitializer)
  store <4 x float> %i.atv, ptr %i.ato, align 16, !tbaa !133
  %i.atw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404.us ; 3 uses
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atw, i64 32 ; 2 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atw, i64 36 ; 2 uses
  %i.atz = load float, ptr %i.aty, align 4, !tbaa !12
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atw, i64 44 ; 2 uses
  %i.aub = load float, ptr %i.aua, align 4, !tbaa !12
  %i.auc = fadd reassoc nsz arcp contract afn float %i.aub, %i.atz
  %i.aud = fmul reassoc nsz arcp contract afn float %i.auc, 5.000000e-01
  store float %i.aud, ptr %i.aty, align 4, !tbaa !12
  store float 0.000000e+00, ptr %i.aua, align 4, !tbaa !12
  %.val.i.us.2 = load <4 x float>, ptr %i.atx, align 16, !tbaa !133
  %i.aue = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.2, <4 x float> zeroinitializer)
  store <4 x float> %i.aue, ptr %i.atx, align 16, !tbaa !133
  %i.auf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404.us ; 3 uses
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 48 ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %i.auf, i64 52 ; 2 uses
  %i.aui = load float, ptr %i.auh, align 4, !tbaa !12
  %i.auj = getelementptr inbounds nuw i8, ptr %i.auf, i64 60 ; 2 uses
  %i.auk = load float, ptr %i.auj, align 4, !tbaa !12
  %i.aul = fadd reassoc nsz arcp contract afn float %i.auk, %i.aui
  %i.aum = fmul reassoc nsz arcp contract afn float %i.aul, 5.000000e-01
  store float %i.aum, ptr %i.auh, align 4, !tbaa !12
  store float 0.000000e+00, ptr %i.auj, align 4, !tbaa !12
  %.val.i.us.3 = load <4 x float>, ptr %i.aug, align 16, !tbaa !133
  %i.aun = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.3, <4 x float> zeroinitializer)
  store <4 x float> %i.aun, ptr %i.aug, align 16, !tbaa !133
  %i.auo = add nuw i64 %.0404.us, 16              ; 2 uses
  %niter751.next.3 = add nuw i64 %niter751, 4     ; 2 uses
  %niter751.ncmp.3.not = icmp eq i64 %niter751.next.3, %unroll_iter750
  br i1 %niter751.ncmp.3.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph406.split.us

.lr.ph406.split:                                  ; preds = %.lr.ph406.split, %.lr.ph406.split.preheader.new
  %.0404 = phi i64 [ 0, %.lr.ph406.split.preheader.new ], [ %i.avm, %.lr.ph406.split ] ; 9 uses
  %niter745 = phi i64 [ 0, %.lr.ph406.split.preheader.new ], [ %niter745.next.7, %.lr.ph406.split ]
  %i.aup = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404 ; 2 uses
  %.val.i = load <4 x float>, ptr %i.aup, align 16, !tbaa !133
  %i.auq = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i, <4 x float> zeroinitializer)
  store <4 x float> %i.auq, ptr %i.aup, align 16, !tbaa !133
  %i.aur = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aur, i64 16 ; 2 uses
  %.val.i.1 = load <4 x float>, ptr %i.aus, align 16, !tbaa !133
  %i.aut = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.1, <4 x float> zeroinitializer)
  store <4 x float> %i.aut, ptr %i.aus, align 16, !tbaa !133
  %i.auu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auu, i64 32 ; 2 uses
  %.val.i.2 = load <4 x float>, ptr %i.auv, align 16, !tbaa !133
  %i.auw = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.2, <4 x float> zeroinitializer)
  store <4 x float> %i.auw, ptr %i.auv, align 16, !tbaa !133
  %i.aux = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aux, i64 48 ; 2 uses
  %.val.i.3 = load <4 x float>, ptr %i.auy, align 16, !tbaa !133
  %i.auz = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.3, <4 x float> zeroinitializer)
  store <4 x float> %i.auz, ptr %i.auy, align 16, !tbaa !133
  %i.ava = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404
  %i.avb = getelementptr inbounds nuw i8, ptr %i.ava, i64 64 ; 2 uses
  %.val.i.4 = load <4 x float>, ptr %i.avb, align 16, !tbaa !133
  %i.avc = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.4, <4 x float> zeroinitializer)
  store <4 x float> %i.avc, ptr %i.avb, align 16, !tbaa !133
  %i.avd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avd, i64 80 ; 2 uses
  %.val.i.5 = load <4 x float>, ptr %i.ave, align 16, !tbaa !133
  %i.avf = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.5, <4 x float> zeroinitializer)
  store <4 x float> %i.avf, ptr %i.ave, align 16, !tbaa !133
  %i.avg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avg, i64 96 ; 2 uses
  %.val.i.6 = load <4 x float>, ptr %i.avh, align 16, !tbaa !133
  %i.avi = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.6, <4 x float> zeroinitializer)
  store <4 x float> %i.avi, ptr %i.avh, align 16, !tbaa !133
  %i.avj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avj, i64 112 ; 2 uses
  %.val.i.7 = load <4 x float>, ptr %i.avk, align 16, !tbaa !133
  %i.avl = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.7, <4 x float> zeroinitializer)
  store <4 x float> %i.avl, ptr %i.avk, align 16, !tbaa !133
  %i.avm = add nuw i64 %.0404, 32                 ; 2 uses
  %niter745.next.7 = add i64 %niter745, 8         ; 2 uses
  %niter745.ncmp.7.not = icmp eq i64 %niter745.next.7, %unroll_iter744
  br i1 %niter745.ncmp.7.not, label %.loopexit.loopexit639.unr-lcssa, label %.lr.ph406.split

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph406.split.us
  %lcmp.mod748.not = icmp eq i64 %xtraiter746, 0
  br i1 %lcmp.mod748.not, label %.loopexit, label %.lr.ph406.split.us.epil.preheader

.lr.ph406.split.us.epil.preheader:                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph406.split.us.preheader
  %.0404.us.epil.init = phi i64 [ 0, %.lr.ph406.split.us.preheader ], [ %i.auo, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod749 = icmp ne i64 %xtraiter746, 0
  tail call void @llvm.assume(i1 %lcmp.mod749)
  br label %.lr.ph406.split.us.epil

.lr.ph406.split.us.epil:                          ; preds = %.lr.ph406.split.us.epil, %.lr.ph406.split.us.epil.preheader
  %.0404.us.epil = phi i64 [ %i.avv, %.lr.ph406.split.us.epil ], [ %.0404.us.epil.init, %.lr.ph406.split.us.epil.preheader ] ; 2 uses
  %epil.iter747 = phi i64 [ %epil.iter747.next, %.lr.ph406.split.us.epil ], [ 0, %.lr.ph406.split.us.epil.preheader ]
  %i.avn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404.us.epil ; 4 uses
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avn, i64 4 ; 2 uses
  %i.avp = load float, ptr %i.avo, align 4, !tbaa !12
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avn, i64 12 ; 2 uses
  %i.avr = load float, ptr %i.avq, align 4, !tbaa !12
  %i.avs = fadd reassoc nsz arcp contract afn float %i.avr, %i.avp
  %i.avt = fmul reassoc nsz arcp contract afn float %i.avs, 5.000000e-01
  store float %i.avt, ptr %i.avo, align 4, !tbaa !12
  store float 0.000000e+00, ptr %i.avq, align 4, !tbaa !12
  %.val.i.us.epil = load <4 x float>, ptr %i.avn, align 16, !tbaa !133
  %i.avu = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.epil, <4 x float> zeroinitializer)
  store <4 x float> %i.avu, ptr %i.avn, align 16, !tbaa !133
  %i.avv = add nuw i64 %.0404.us.epil, 4
  %epil.iter747.next = add i64 %epil.iter747, 1   ; 2 uses
  %epil.iter747.cmp.not = icmp eq i64 %epil.iter747.next, %xtraiter746
  br i1 %epil.iter747.cmp.not, label %.loopexit, label %.lr.ph406.split.us.epil, !llvm.loop !623

.loopexit.loopexit639.unr-lcssa:                  ; preds = %.lr.ph406.split
  %lcmp.mod742.not = icmp eq i64 %xtraiter740, 0
  br i1 %lcmp.mod742.not, label %.loopexit, label %.lr.ph406.split.epil.preheader

.lr.ph406.split.epil.preheader:                   ; preds = %.loopexit.loopexit639.unr-lcssa, %.lr.ph406.split.preheader
  %.0404.epil.init = phi i64 [ 0, %.lr.ph406.split.preheader ], [ %i.avm, %.loopexit.loopexit639.unr-lcssa ]
  %lcmp.mod743 = icmp ne i64 %xtraiter740, 0
  tail call void @llvm.assume(i1 %lcmp.mod743)
  br label %.lr.ph406.split.epil

.lr.ph406.split.epil:                             ; preds = %.lr.ph406.split.epil, %.lr.ph406.split.epil.preheader
  %.0404.epil = phi i64 [ %i.avy, %.lr.ph406.split.epil ], [ %.0404.epil.init, %.lr.ph406.split.epil.preheader ] ; 2 uses
  %epil.iter741 = phi i64 [ %epil.iter741.next, %.lr.ph406.split.epil ], [ 0, %.lr.ph406.split.epil.preheader ]
  %i.avw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0404.epil ; 2 uses
  %.val.i.epil = load <4 x float>, ptr %i.avw, align 16, !tbaa !133
  %i.avx = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.epil, <4 x float> zeroinitializer)
  store <4 x float> %i.avx, ptr %i.avw, align 16, !tbaa !133
  %i.avy = add nuw i64 %.0404.epil, 4
  %epil.iter741.next = add i64 %epil.iter741, 1   ; 2 uses
  %epil.iter741.cmp.not = icmp eq i64 %epil.iter741.next, %xtraiter740
  br i1 %epil.iter741.cmp.not, label %.loopexit, label %.lr.ph406.split.epil, !llvm.loop !624

.loopexit:                                        ; preds = %.loopexit.loopexit639.unr-lcssa, %.lr.ph406.split.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph406.split.us.epil, %._crit_edge471, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

declare void @dt_colorspaces_cygm_to_rgb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @demosaic_ppg(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 10, 9) %4, float noundef %5, i32 noundef range(i32 4, 100001) %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [9 x float], align 16             ; 20 uses
  %i.b = alloca [8 x float], align 16             ; 18 uses
  %i.c = alloca [4 x float], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.d = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.d, label %.preheader402.lr.ph, label %._crit_edge411.split

.preheader402.lr.ph:                              ; preds = %bb.a
  %i.e = icmp sgt i32 %2, 0
  %i.f = add nsw i32 %2, -3
  %i.g = sext i32 %2 to i64                       ; 9 uses
  %i.h = zext i32 %2 to i64
  br i1 %i.e, label %.preheader402.preheader, label %._crit_edge411.split

.preheader402.preheader:                          ; preds = %.preheader402.lr.ph
  %i.i = add nsw i32 %3, -3
  %i.j = sext i32 %i.i to i64
  %i.k = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %.preheader402

.preheader402:                                    ; preds = %.preheader402.preheader, %._crit_edge
  %indvars.iv452 = phi i64 [ 0, %.preheader402.preheader ], [ %indvars.iv.next453.pre-phi, %._crit_edge ] ; 9 uses
  %i.q = icmp samesign ugt i64 %indvars.iv452, 2
  %i.r = icmp slt i64 %indvars.iv452, %i.j
  %spec.select = select i1 %i.r, i32 %i.f, i32 3
  %i.s = add nsw i64 %indvars.iv452, -1           ; 2 uses
  %indvars.iv452.tr = trunc nuw i64 %indvars.iv452 to i32
  %i.t = shl nuw i32 %indvars.iv452.tr, 1
  %i.u = and i32 %i.t, 14                         ; 4 uses
  %i.v = mul nuw nsw i64 %indvars.iv452, %i.h
  %i.w = mul nuw nsw i64 %indvars.iv452, %i.g     ; 2 uses
  %i.x = trunc nsw i64 %i.s to i32                ; 4 uses
  %i.y = shl i32 %i.x, 1
  %i.z = and i32 %i.y, 14                         ; 3 uses
  %i.aa = mul nuw nsw i64 %i.s, %i.g
  %i.ab = getelementptr [4 x i8], ptr %1, i64 %i.aa ; 3 uses
  %i.ac = getelementptr [4 x i8], ptr %1, i64 %i.w ; 3 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv452 to i32 ; 3 uses
  %i.ae = add nuw nsw i64 %indvars.iv452, 1       ; 5 uses
  %i.af = icmp slt i64 %i.ae, %i.k
  %.tr = trunc nuw i64 %i.ae to i32
  %i.ag = shl nuw i32 %.tr, 1
  %i.ah = and i32 %i.ag, 14                       ; 3 uses
  %i.ai = mul nuw nsw i64 %i.ae, %i.g
  %i.aj = getelementptr [4 x i8], ptr %1, i64 %i.ai ; 3 uses
  %i.ak = trunc nuw nsw i64 %i.ae to i32          ; 3 uses
  br label %bb.b

._crit_edge411.split:                             ; preds = %._crit_edge, %.preheader402.lr.ph, %bb.a
  %i.al = fcmp reassoc nsz arcp contract afn ogt float %5, 0.000000e+00 ; 2 uses
  br i1 %i.al, label %bb.x, label %pre_median.exit

bb.b:                                             ; preds = %.preheader402, %bb.w
  %.0322408 = phi i32 [ 0, %.preheader402 ], [ %i.hi, %bb.w ] ; 2 uses
  %i.am = icmp eq i32 %.0322408, 3
  %or.cond = select i1 %i.am, i1 %i.q, i1 false
  %.1323 = select i1 %or.cond, i32 %spec.select, i32 %.0322408 ; 5 uses
  %i.an = icmp eq i32 %.1323, %2
  br i1 %i.an, label %.._crit_edge_crit_edge, label %.split.preheader

.._crit_edge_crit_edge:                           ; preds = %bb.b
  %.pre = add nuw nsw i64 %indvars.iv452, 1
  br label %._crit_edge

.split.preheader:                                 ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %7 = add i32 %.1323, -1                         ; 10 uses
  %8 = sext i32 %7 to i64                         ; 9 uses
  %i.ao = or i32 %7, %i.x
  %or.cond3 = icmp sgt i32 %i.ao, -1
  %i.ap = icmp slt i32 %7, %2
  %or.cond354 = and i1 %i.ap, %or.cond3
  br i1 %or.cond354, label %bb.i, label %.split.1

.split.preheader.1:                               ; preds = %bb.k, %.split.2
  %i.aq = or i32 %7, %i.ad
  %or.cond3.1440 = icmp sgt i32 %i.aq, -1
  %i.ar = icmp slt i32 %7, %2
  %or.cond354.1441 = and i1 %i.ar, %or.cond3.1440
  br i1 %or.cond354.1441, label %bb.c, label %.split.1.1

bb.c:                                             ; preds = %.split.preheader.1
  %i.as = and i32 %7, 1
  %.tr.i365.1443 = or disjoint i32 %i.as, %i.u
  %i.at = shl nuw nsw i32 %.tr.i365.1443, 1
  %i.au = lshr i32 %4, %i.at
  %i.av = and i32 %i.au, 3
  %i.aw = getelementptr [4 x i8], ptr %i.ac, i64 %8
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !12
  %i.ay = zext nneg i32 %i.av to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ay ; 3 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !12
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ba, %i.ax
  store float %i.bb, ptr %i.az, align 4, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !12
  %i.be = fadd reassoc nsz arcp contract afn float %i.bd, 1.000000e+00
  store float %i.be, ptr %i.bc, align 4, !tbaa !12
  br label %.split.1.1

.split.1.1:                                       ; preds = %bb.c, %.split.preheader.1
  %indvars.iv.next.1444 = add nsw i64 %8, 1       ; 3 uses
  %i.bf = trunc nsw i64 %indvars.iv.next.1444 to i32 ; 2 uses
  %i.bg = or i32 %i.bf, %i.ad
  %or.cond3.1.1 = icmp sgt i32 %i.bg, -1
  %i.bh = icmp slt i64 %indvars.iv.next.1444, %i.g
  %or.cond354.1.1 = and i1 %i.bh, %or.cond3.1.1
  br i1 %or.cond354.1.1, label %bb.d, label %.split.2.1

bb.d:                                             ; preds = %.split.1.1
  %i.bi = and i32 %i.bf, 1
  %.tr.i365.1.1 = or disjoint i32 %i.bi, %i.u
  %i.bj = shl nuw nsw i32 %.tr.i365.1.1, 1
  %i.bk = lshr i32 %4, %i.bj
  %i.bl = and i32 %i.bk, 3
  %i.bm = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv.next.1444
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !12
  %i.bo = zext nneg i32 %i.bl to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bo ; 3 uses
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !12
  %i.br = fadd reassoc nsz arcp contract afn float %i.bq, %i.bn
  store float %i.br, ptr %i.bp, align 4, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !12
  %i.bu = fadd reassoc nsz arcp contract afn float %i.bt, 1.000000e+00
  store float %i.bu, ptr %i.bs, align 4, !tbaa !12
  br label %.split.2.1

.split.2.1:                                       ; preds = %bb.d, %.split.1.1
  %indvars.iv.next.1.1 = add nsw i64 %8, 2        ; 3 uses
  %i.bv = trunc nsw i64 %indvars.iv.next.1.1 to i32 ; 2 uses
  %i.bw = or i32 %i.bv, %i.ad
  %or.cond3.2.1 = icmp sgt i32 %i.bw, -1
  %i.bx = icmp slt i64 %indvars.iv.next.1.1, %i.g
  %or.cond354.2.1 = and i1 %i.bx, %or.cond3.2.1
  br i1 %or.cond354.2.1, label %bb.e, label %.split405.us.1

bb.e:                                             ; preds = %.split.2.1
  %i.by = and i32 %i.bv, 1
  %.tr.i365.2.1 = or disjoint i32 %i.by, %i.u
  %i.bz = shl nuw nsw i32 %.tr.i365.2.1, 1
  %i.ca = lshr i32 %4, %i.bz
  %i.cb = and i32 %i.ca, 3
  %i.cc = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv.next.1.1
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !12
  %i.ce = zext nneg i32 %i.cb to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ce ; 3 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !12
  %i.ch = fadd reassoc nsz arcp contract afn float %i.cg, %i.cd
  store float %i.ch, ptr %i.cf, align 4, !tbaa !12
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !12
  %i.ck = fadd reassoc nsz arcp contract afn float %i.cj, 1.000000e+00
  store float %i.ck, ptr %i.ci, align 4, !tbaa !12
  br label %.split405.us.1

.split405.us.1:                                   ; preds = %.split.2.1, %bb.e
  br i1 %i.af, label %.split.preheader.2, label %.split405.us.2

.split.preheader.2:                               ; preds = %.split405.us.1
  %i.cl = or i32 %7, %i.ak
  %or.cond3.2445 = icmp sgt i32 %i.cl, -1
  %i.cm = icmp slt i32 %7, %2
  %or.cond354.2446 = and i1 %i.cm, %or.cond3.2445
  br i1 %or.cond354.2446, label %bb.f, label %.split.1.2

bb.f:                                             ; preds = %.split.preheader.2
  %i.cn = and i32 %7, 1
  %.tr.i365.2448 = or disjoint i32 %i.cn, %i.ah
  %i.co = shl nuw nsw i32 %.tr.i365.2448, 1
  %i.cp = lshr i32 %4, %i.co
  %i.cq = and i32 %i.cp, 3
  %i.cr = getelementptr [4 x i8], ptr %i.aj, i64 %8
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !12
  %i.ct = zext nneg i32 %i.cq to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ct ; 3 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !12
  %i.cw = fadd reassoc nsz arcp contract afn float %i.cv, %i.cs
  store float %i.cw, ptr %i.cu, align 4, !tbaa !12
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !12
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cy, 1.000000e+00
  store float %i.cz, ptr %i.cx, align 4, !tbaa !12
  br label %.split.1.2

.split.1.2:                                       ; preds = %bb.f, %.split.preheader.2
  %indvars.iv.next.2 = add nsw i64 %8, 1          ; 3 uses
  %i.da = trunc nsw i64 %indvars.iv.next.2 to i32 ; 2 uses
  %i.db = or i32 %i.da, %i.ak
  %or.cond3.1.2 = icmp sgt i32 %i.db, -1
  %i.dc = icmp slt i64 %indvars.iv.next.2, %i.g
  %or.cond354.1.2 = and i1 %i.dc, %or.cond3.1.2
  br i1 %or.cond354.1.2, label %bb.g, label %.split.2.2

bb.g:                                             ; preds = %.split.1.2
  %i.dd = and i32 %i.da, 1
  %.tr.i365.1.2 = or disjoint i32 %i.dd, %i.ah
  %i.de = shl nuw nsw i32 %.tr.i365.1.2, 1
  %i.df = lshr i32 %4, %i.de
  %i.dg = and i32 %i.df, 3
  %i.dh = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv.next.2
  %i.di = load float, ptr %i.dh, align 4, !tbaa !12
  %i.dj = zext nneg i32 %i.dg to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dj ; 3 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !12
  %i.dm = fadd reassoc nsz arcp contract afn float %i.dl, %i.di
  store float %i.dm, ptr %i.dk, align 4, !tbaa !12
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !12
  %i.dp = fadd reassoc nsz arcp contract afn float %i.do, 1.000000e+00
  store float %i.dp, ptr %i.dn, align 4, !tbaa !12
  br label %.split.2.2

.split.2.2:                                       ; preds = %bb.g, %.split.1.2
  %indvars.iv.next.1.2 = add nsw i64 %8, 2        ; 3 uses
  %i.dq = trunc nsw i64 %indvars.iv.next.1.2 to i32 ; 2 uses
  %i.dr = or i32 %i.dq, %i.ak
  %or.cond3.2.2 = icmp sgt i32 %i.dr, -1
  %i.ds = icmp slt i64 %indvars.iv.next.1.2, %i.g
  %or.cond354.2.2 = and i1 %i.ds, %or.cond3.2.2
  br i1 %or.cond354.2.2, label %bb.h, label %.split405.us.2

bb.h:                                             ; preds = %.split.2.2
  %i.dt = and i32 %i.dq, 1
  %.tr.i365.2.2 = or disjoint i32 %i.dt, %i.ah
  %i.du = shl nuw nsw i32 %.tr.i365.2.2, 1
  %i.dv = lshr i32 %4, %i.du
  %i.dw = and i32 %i.dv, 3
  %i.dx = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv.next.1.2
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !12
  %i.dz = zext nneg i32 %i.dw to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dz ; 3 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !12
  %i.ec = fadd reassoc nsz arcp contract afn float %i.eb, %i.dy
  store float %i.ec, ptr %i.ea, align 4, !tbaa !12
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !12
  %i.ef = fadd reassoc nsz arcp contract afn float %i.ee, 1.000000e+00
  store float %i.ef, ptr %i.ed, align 4, !tbaa !12
  br label %.split405.us.2

.split405.us.2:                                   ; preds = %.split.2.2, %bb.h, %.split405.us.1
  %i.eg = sext i32 %.1323 to i64                  ; 2 uses
  %i.eh = and i32 %.1323, 1
  %.tr.i = or disjoint i32 %i.eh, %i.u
  %i.ei = shl nuw nsw i32 %.tr.i, 1
  %i.ej = lshr i32 %4, %i.ei
  %i.ek = and i32 %i.ej, 3                        ; 3 uses
  %i.el = add nsw i64 %i.v, %i.eg
  %.idx351 = shl i64 %i.el, 4                     ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 %.idx351
  %i.en = add nsw i64 %i.w, %i.eg                 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.en ; 3 uses
  %.idx350 = shl i64 %i.en, 4                     ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 %.idx350
  %.not349 = icmp eq i32 %i.ek, 0
  br i1 %.not349, label %bb.n, label %bb.l

bb.i:                                             ; preds = %.split.preheader
  %i.eq = and i32 %7, 1
  %.tr.i365 = or disjoint i32 %i.eq, %i.z
  %i.er = shl nuw nsw i32 %.tr.i365, 1
  %i.es = lshr i32 %4, %i.er
  %i.et = and i32 %i.es, 3
  %i.eu = getelementptr [4 x i8], ptr %i.ab, i64 %8
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !12
  %i.ew = zext nneg i32 %i.et to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ew ; 3 uses
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !12
  %i.ez = fadd reassoc nsz arcp contract afn float %i.ey, %i.ev
  store float %i.ez, ptr %i.ex, align 4, !tbaa !12
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !12
  %i.fc = fadd reassoc nsz arcp contract afn float %i.fb, 1.000000e+00
  store float %i.fc, ptr %i.fa, align 4, !tbaa !12
  br label %.split.1

.split.1:                                         ; preds = %.split.preheader, %bb.i
  %indvars.iv.next = add nsw i64 %8, 1            ; 3 uses
  %i.fd = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  %i.fe = or i32 %i.fd, %i.x
  %or.cond3.1 = icmp sgt i32 %i.fe, -1
  %i.ff = icmp slt i64 %indvars.iv.next, %i.g
  %or.cond354.1 = and i1 %i.ff, %or.cond3.1
  br i1 %or.cond354.1, label %bb.j, label %.split.2

bb.j:                                             ; preds = %.split.1
  %i.fg = and i32 %i.fd, 1
  %.tr.i365.1 = or disjoint i32 %i.fg, %i.z
  %i.fh = shl nuw nsw i32 %.tr.i365.1, 1
  %i.fi = lshr i32 %4, %i.fh
  %i.fj = and i32 %i.fi, 3
  %i.fk = getelementptr [4 x i8], ptr %i.ab, i64 %indvars.iv.next
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !12
  %i.fm = zext nneg i32 %i.fj to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fm ; 3 uses
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !12
  %i.fp = fadd reassoc nsz arcp contract afn float %i.fo, %i.fl
  store float %i.fp, ptr %i.fn, align 4, !tbaa !12
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !12
  %i.fs = fadd reassoc nsz arcp contract afn float %i.fr, 1.000000e+00
  store float %i.fs, ptr %i.fq, align 4, !tbaa !12
  br label %.split.2

.split.2:                                         ; preds = %bb.j, %.split.1
  %indvars.iv.next.1 = add nsw i64 %8, 2          ; 3 uses
  %i.ft = trunc nsw i64 %indvars.iv.next.1 to i32 ; 2 uses
  %i.fu = or i32 %i.ft, %i.x
  %or.cond3.2 = icmp sgt i32 %i.fu, -1
  %i.fv = icmp slt i64 %indvars.iv.next.1, %i.g
  %or.cond354.2 = and i1 %i.fv, %or.cond3.2
  br i1 %or.cond354.2, label %bb.k, label %.split.preheader.1

bb.k:                                             ; preds = %.split.2
  %i.fw = and i32 %i.ft, 1
  %.tr.i365.2 = or disjoint i32 %i.fw, %i.z
  %i.fx = shl nuw nsw i32 %.tr.i365.2, 1
  %i.fy = lshr i32 %4, %i.fx
  %i.fz = and i32 %i.fy, 3
  %i.ga = getelementptr [4 x i8], ptr %i.ab, i64 %indvars.iv.next.1
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !12
  %i.gc = zext nneg i32 %i.fz to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gc ; 3 uses
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !12
  %i.gf = fadd reassoc nsz arcp contract afn float %i.ge, %i.gb
  store float %i.gf, ptr %i.gd, align 4, !tbaa !12
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 16 ; 2 uses
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !12
  %i.gi = fadd reassoc nsz arcp contract afn float %i.gh, 1.000000e+00
  store float %i.gi, ptr %i.gg, align 4, !tbaa !12
  br label %.split.preheader.1

bb.l:                                             ; preds = %.split405.us.2
  %i.gj = load float, ptr %i.l, align 16, !tbaa !12 ; 2 uses
  %i.gk = fcmp reassoc nsz arcp contract afn ogt float %i.gj, 0.000000e+00
  br i1 %i.gk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.gl = load float, ptr %i.b, align 16, !tbaa !12
  %i.gm = fdiv reassoc nsz arcp contract afn float %i.gl, %i.gj
  %i.gn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.gm, float 0.000000e+00)
  store float %i.gn, ptr %i.em, align 4, !tbaa !12
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %.split405.us.2
  %i.go = load float, ptr %i.eo, align 4, !tbaa !12
  %i.gp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.go, float 0.000000e+00)
  store float %i.gp, ptr %i.ep, align 4, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.not349.1 = icmp eq i32 %i.ek, 1
  br i1 %.not349.1, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gq = load float, ptr %i.m, align 4, !tbaa !12 ; 2 uses
  %i.gr = fcmp reassoc nsz arcp contract afn ogt float %i.gq, 0.000000e+00
  br i1 %i.gr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gs = load float, ptr %i.n, align 4, !tbaa !12
  %i.gt = fdiv reassoc nsz arcp contract afn float %i.gs, %i.gq
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.gu = load float, ptr %i.eo, align 4, !tbaa !12
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink557 = phi float [ %i.gu, %bb.r ], [ %i.gt, %bb.q ]
  %i.gv = phi i64 [ %.idx350, %bb.r ], [ %.idx351, %bb.q ]
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 %i.gv
  %i.gx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink557, float 0.000000e+00)
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  store float %i.gx, ptr %i.gy, align 4, !tbaa !12
  %.not349.2 = icmp eq i32 %i.ek, 2
  br i1 %.not349.2, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gz = load float, ptr %i.o, align 8, !tbaa !12 ; 2 uses
  %i.ha = fcmp reassoc nsz arcp contract afn ogt float %i.gz, 0.000000e+00
  br i1 %i.ha, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hb = load float, ptr %i.p, align 8, !tbaa !12
  %i.hc = fdiv reassoc nsz arcp contract afn float %i.hb, %i.gz
  br label %bb.w

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.hd = load float, ptr %i.eo, align 4, !tbaa !12
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink560 = phi float [ %i.hd, %bb.v ], [ %i.hc, %bb.u ]
  %i.he = phi i64 [ %.idx350, %bb.v ], [ %.idx351, %bb.u ]
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 %i.he
  %i.hg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink560, float 0.000000e+00)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store float %i.hg, ptr %i.hh, align 4, !tbaa !12
  %i.hi = add nsw i32 %.1323, 1                   ; 2 uses
  %i.hj = icmp slt i32 %i.hi, %2
  br i1 %i.hj, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.w, %.._crit_edge_crit_edge
  %indvars.iv.next453.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.ae, %bb.w ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next453.pre-phi, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge411.split, label %.preheader402

bb.x:                                             ; preds = %._crit_edge411.split
  %i.hk = sext i32 %3 to i64
  %i.hl = sext i32 %2 to i64                      ; 7 uses
  %i.hm = mul nsw i64 %i.hk, %i.hl                ; 2 uses
  %i.hn = shl i64 %i.hm, 2
  %i.ho = tail call ptr @dt_alloc_aligned(i64 noundef %i.hn) #27 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ho, i64 64) ]
  tail call void @dt_iop_image_copy(ptr noundef %i.ho, ptr noundef %1, i64 noundef %i.hm) #27
  %i.hp = icmp sgt i32 %3, 6
  %i.hq = add nsw i32 %2, -3                      ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 8 uses
  br i1 %i.hp, label %.preheader86.preheader.i.i, label %.preheader

.preheader86.preheader.i.i:                       ; preds = %bb.x
  %i.hs = add nsw i32 %3, -3
  %wide.trip.count.i.i = zext nneg i32 %i.hs to i64
  %.idx.i.i = mul nsw i64 %i.hl, -8
  %i.ht = xor i64 %i.hl, -1
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 8 uses
  %i.hv = sub nsw i64 1, %i.hl
  %i.hw = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 8 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 8 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 8 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 8 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 8 uses
  %.idx231.i.i = shl nsw i64 %i.hl, 3
  %i.ib = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 9 uses
  %i.ic = insertelement <8 x float> poison, float %5, i64 0
  %i.id = shufflevector <8 x float> %i.ic, <8 x float> poison, <8 x i32> zeroinitializer
  br label %.preheader86.i.i

.preheader86.i.i:                                 ; preds = %._crit_edge103.i.i, %.preheader86.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 3, %.preheader86.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge103.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.ie = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.if = shl i32 %i.ie, 2
  %i.ig = and i32 %i.if, 28
  %i.ih = shl nuw nsw i32 4, %i.ig
  %i.ii = and i32 %i.ih, %4
  %.not.i.i = icmp eq i32 %i.ii, 0
  %.077.i.i = select i1 %.not.i.i, i32 4, i32 3   ; 3 uses
  %i.ij = icmp slt i32 %.077.i.i, %i.hq
  br i1 %i.ij, label %.preheader85.preheader.i.i, label %._crit_edge103.i.i

.preheader85.preheader.i.i:                       ; preds = %.preheader86.i.i
  %i.ik = mul nsw i64 %indvars.iv.i.i, %i.hl      ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ik
  %i.im = zext nneg i32 %.077.i.i to i64          ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.im
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.ik
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.im
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cm, %.preheader85.preheader.i.i
  %.075102.i.i = phi ptr [ %i.iy, %bb.cm ], [ %i.in, %.preheader85.preheader.i.i ] ; 8 uses
  %.076101.i.i = phi ptr [ %i.nv, %bb.cm ], [ %i.ip, %.preheader85.preheader.i.i ] ; 2 uses
  %.178100.i.i = phi i32 [ %i.nw, %bb.cm ], [ %.077.i.i, %.preheader85.preheader.i.i ]
  %i.iq = getelementptr inbounds i8, ptr %.075102.i.i, i64 %.idx.i.i
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !12
  %i.is = getelementptr inbounds [4 x i8], ptr %.075102.i.i, i64 %i.ht
  %i.it = load float, ptr %i.is, align 4, !tbaa !12
  %i.iu = getelementptr inbounds [4 x i8], ptr %.075102.i.i, i64 %i.hv
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !12
  %i.iw = getelementptr inbounds i8, ptr %.075102.i.i, i64 -8
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !12
  %i.iy = getelementptr inbounds nuw i8, ptr %.075102.i.i, i64 8 ; 2 uses
  %i.iz = getelementptr [4 x i8], ptr %.075102.i.i, i64 %i.hl
  %i.ja = getelementptr i8, ptr %i.iz, <2 x i64> <i64 -4, i64 4>
  %i.jb = insertelement <4 x ptr> poison, ptr %.075102.i.i, i64 0
  %i.jc = insertelement <4 x ptr> %i.jb, ptr %i.iy, i64 1
  %i.jd = shufflevector <2 x ptr> %i.ja, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.je = shufflevector <4 x ptr> %i.jc, <4 x ptr> %i.jd, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jf = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %i.je, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !12 ; 3 uses
  %i.jg = insertelement <8 x float> poison, float %i.ir, i64 0
  %i.jh = insertelement <8 x float> %i.jg, float %i.it, i64 1
  %i.ji = insertelement <8 x float> %i.jh, float %i.iv, i64 2
  %i.jj = insertelement <8 x float> %i.ji, float %i.ix, i64 3
  %i.jk = shufflevector <4 x float> %i.jf, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jl = shufflevector <8 x float> %i.jj, <8 x float> %i.jk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 3 uses
  %i.jm = shufflevector <4 x float> %i.jf, <4 x float> poison, <8 x i32> zeroinitializer
  %i.jn = fsub reassoc nsz arcp contract afn <8 x float> %i.jl, %i.jm
  %i.jo = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.jn)
  %i.jp = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.jo, %i.id ; 9 uses
  %i.jq = extractelement <8 x i1> %i.jp, i64 0    ; 2 uses
  %spec.select263.i.i = zext i1 %i.jq to i32
  %i.jr = select i1 %i.jq, i32 2, i32 1
  %i.js = extractelement <8 x i1> %i.jp, i64 1
  %.274.1.i.i = select i1 %i.js, i32 %i.jr, i32 %spec.select263.i.i
  %i.jt = extractelement <8 x i1> %i.jp, i64 2
  %i.ju = zext i1 %i.jt to i32
  %i.jv = extractelement <8 x i1> %i.jp, i64 3
  %i.jw = zext i1 %i.jv to i32
  %i.jx = extractelement <8 x i1> %i.jp, i64 4
  %i.jy = zext i1 %i.jx to i32
  %i.jz = extractelement <8 x i1> %i.jp, i64 5
  %i.ka = zext i1 %i.jz to i32
  %i.kb = extractelement <8 x i1> %i.jp, i64 6
  %i.kc = zext i1 %i.kb to i32
end_hunk_0
