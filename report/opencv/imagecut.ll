Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/imagecut?download=true
inline.NumInlined: 55
inline.NumDeleted: 40
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5zxing8ImageCut3CutEPhiiiiiiRNS_15_ImageCutResultE:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.o, i8 0, i64 %i.m, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.p, ptr %i.r, align 8, !tbaa !18
  %i.s = load i32, ptr %i.k, align 8, !tbaa !10
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.k, align 8, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21   ; 4 uses
  %.not5.i.i = icmp eq ptr %i.v, null
  br i1 %.not5.i.i, label %_ZN5zxing8ArrayRefIhEaSEPNS_5ArrayIhEE.exit, label %bb.d

bb.d:                                             ; preds = %.noexc58
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !10
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.w, align 8, !tbaa !10
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.e, label %_ZN5zxing8ArrayRefIhEaSEPNS_5ArrayIhEE.exit

bb.e:                                             ; preds = %bb.d
  store i32 -559026175, ptr %i.w, align 8, !tbaa !10
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(12) %i.v) #10, !inline_history !0
  br label %_ZN5zxing8ArrayRefIhEaSEPNS_5ArrayIhEE.exit

_ZN5zxing8ArrayRefIhEaSEPNS_5ArrayIhEE.exit:      ; preds = %.noexc58, %bb.d, %bb.e
  store ptr %i.i, ptr %i.u, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 %i.h, ptr %i.ad, align 4, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %i.f, ptr %i.ae, align 8, !tbaa !28
  %i.af = icmp sgt i32 %2, 0
  %i.ag = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.af, %i.ag
  br i1 %or.cond, label %.lr.ph71.split.us.preheader, label %.loopexit65

.lr.ph71.split.us.preheader:                      ; preds = %_ZN5zxing8ArrayRefIhEaSEPNS_5ArrayIhEE.exit
  %i.ah = zext nneg i32 %3 to i64                 ; 3 uses
  %i.ai = sext i32 %5 to i64                      ; 3 uses
  %i.aj = zext nneg i32 %4 to i64
  %i.ak = sext i32 %6 to i64
  %i.al = zext nneg i32 %1 to i64                 ; 3 uses
  %wide.trip.count77 = zext nneg i32 %2 to i64
  %xtraiter = and i64 %i.al, 1
  %i.am = icmp eq i32 %1, 1
  %unroll_iter = and i64 %i.al, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod86 = trunc i32 %1 to i1
  br label %.lr.ph71.split.us

.lr.ph71.split.us:                                ; preds = %.lr.ph71.split.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv74 = phi i64 [ 0, %.lr.ph71.split.us.preheader ], [ %indvars.iv.next75, %..loopexit_crit_edge.us ] ; 4 uses
  %.04468.us = phi i32 [ 0, %.lr.ph71.split.us.preheader ], [ %.3.us, %..loopexit_crit_edge.us ] ; 3 uses
  %i.an = icmp samesign ult i64 %indvars.iv74, %i.aj
  %i.ao = icmp sgt i64 %indvars.iv74, %i.ak
  %or.cond56.us = or i1 %i.an, %i.ao
  br i1 %or.cond56.us, label %..loopexit_crit_edge.us, label %.preheader.us

.preheader.us.new:                                ; preds = %.preheader.us, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.i ], [ 0, %.preheader.us ] ; 6 uses
  %.166.us = phi i32 [ %.2.us.1, %bb.i ], [ %.04468.us, %.preheader.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.i ], [ 0, %.preheader.us ]
  %i.ap = icmp samesign ult i64 %indvars.iv, %i.ah
  %i.aq = icmp sgt i64 %indvars.iv, %i.ai
  %or.cond57.us = or i1 %i.ap, %i.aq
  br i1 %or.cond57.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader.us.new
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  %i.ar = load i8, ptr %gep, align 1, !tbaa !22
  %i.as = add nsw i32 %.166.us, 1
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = sext i32 %.166.us to i64
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 %i.ar, ptr %i.ax, align 1, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader.us.new
  %.2.us = phi i32 [ %.166.us, %.preheader.us.new ], [ %i.as, %bb.f ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ay = icmp samesign ult i64 %indvars.iv.next, %i.ah
  %i.az = icmp sge i64 %indvars.iv, %i.ai
  %or.cond57.us.1 = or i1 %i.ay, %i.az
  br i1 %or.cond57.us.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.ba = load i8, ptr %gep.1, align 1, !tbaa !22
  %i.bb = add nsw i32 %.2.us, 1
  %i.bc = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = sext i32 %.2.us to i64
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  store i8 %i.ba, ptr %i.bg, align 1, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2.us.1 = phi i32 [ %.2.us, %bb.g ], [ %i.bb, %bb.h ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.us.loopexit.unr-lcssa, label %.preheader.us.new, !llvm.loop !24

..loopexit_crit_edge.us.loopexit.unr-lcssa:       ; preds = %bb.i
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.us.loopexit.unr-lcssa, %.preheader.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next.1, %..loopexit_crit_edge.us.loopexit.unr-lcssa ] ; 3 uses
  %.166.us.epil.init = phi i32 [ %.04468.us, %.preheader.us ], [ %.2.us.1, %..loopexit_crit_edge.us.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.bh = icmp samesign ult i64 %indvars.iv.epil.init, %i.ah
  %i.bi = icmp sgt i64 %indvars.iv.epil.init, %i.ai
  %or.cond57.us.epil = or i1 %i.bh, %i.bi
  br i1 %or.cond57.us.epil, label %..loopexit_crit_edge.us, label %bb.j

bb.j:                                             ; preds = %.epil.preheader
  %gep.epil = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.bj = load i8, ptr %gep.epil, align 1, !tbaa !22
  %i.bk = add nsw i32 %.166.us.epil.init, 1
  %i.bl = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = sext i32 %.166.us.epil.init to i64
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store i8 %i.bj, ptr %i.bp, align 1, !tbaa !22
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %..loopexit_crit_edge.us.loopexit.unr-lcssa, %bb.j, %.epil.preheader, %.lr.ph71.split.us
  %.3.us = phi i32 [ %.04468.us, %.lr.ph71.split.us ], [ %.2.us.1, %..loopexit_crit_edge.us.loopexit.unr-lcssa ], [ %.166.us.epil.init, %.epil.preheader ], [ %i.bk, %bb.j ]
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %.loopexit65, label %.lr.ph71.split.us, !llvm.loop !25

.preheader.us:                                    ; preds = %.lr.ph71.split.us
  %i.bq = mul nuw nsw i64 %indvars.iv74, %i.al
  %invariant.gep = getelementptr inbounds nuw i8, ptr %0, i64 %i.bq ; 3 uses
  br i1 %i.am, label %.epil.preheader, label %.preheader.us.new

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i, %.noexc.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 40) #11
  resume { ptr, i32 } %i.br

.loopexit65:                                      ; preds = %..loopexit_crit_edge.us, %_ZN5zxing8ArrayRefIhEaSEPNS_5ArrayIhEE.exit, %bb.b, %bb.a
  %.045 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ 0, %_ZN5zxing8ArrayRefIhEaSEPNS_5ArrayIhEE.exit ], [ 0, %..loopexit_crit_edge.us ]
  ret i32 %.045
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -1, 1) i32 @_ZN5zxing8ImageCut3CutENS_3RefINS_10ByteMatrixEEEfRNS_15_ImageCutResultE(ptr nofree noundef readonly align 8 captures(none) %0, float noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.c = load <2 x i32>, ptr %i.b, align 8, !tbaa !34
  %i.d = load i32, ptr %i.b, align 8, !tbaa !37
  %i.e = fsub float 1.000000e+00, %1
  %i.f = sitofp <2 x i32> %i.c to <2 x float>     ; 2 uses
  %i.g = insertelement <2 x float> poison, float %i.e, i64 0
  %i.h = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> zeroinitializer
  %i.i = fmul <2 x float> %i.h, %i.f
  %i.j = fmul <2 x float> %i.i, splat (float 5.000000e-01)
  %i.k = fptosi <2 x float> %i.j to <2 x i32>     ; 3 uses
  %i.l = fadd float %1, 1.000000e+00
  %i.m = insertelement <2 x float> poison, float %i.l, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x float> %i.n, %i.f
  %i.p = fmul <2 x float> %i.o, splat (float 5.000000e-01)
  %i.q = fadd <2 x float> %i.p, splat (float -1.000000e+00)
  %i.r = fptosi <2 x float> %i.q to <2 x i32>     ; 2 uses
  %i.s = extractelement <2 x i32> %i.k, i64 1     ; 3 uses
  %i.t = icmp sgt i32 %i.s, -1
  %i.u = extractelement <2 x i32> %i.r, i64 0     ; 4 uses
  %i.v = icmp sle i32 %i.s, %i.u
  %or.cond.not56 = select i1 %i.t, i1 %i.v, i1 false
  %.not = icmp sgt i32 %i.d, %i.u
  %or.cond51 = select i1 %or.cond.not56, i1 %.not, i1 false
  br i1 %or.cond51, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.w = extractelement <2 x i32> %i.k, i64 0     ; 4 uses
  %i.x = icmp slt i32 %i.w, 0
  %i.y = icmp sgt i32 %i.w, %i.u
  %or.cond52 = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond52, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = sub <2 x i32> %i.r, %i.k
  %.fr = freeze <2 x i32> %i.z                    ; 2 uses
  %i.aa = add <2 x i32> %.fr, splat (i32 1)       ; 3 uses
  %i.ab = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #8 ; 7 uses
  %i.ac = extractelement <2 x i32> %i.aa, i64 0
  %i.ad = extractelement <2 x i32> %i.aa, i64 1   ; 3 uses
  %i.ae = mul nsw i32 %i.ad, %i.ac                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  store i32 0, ptr %i.af, align 8, !tbaa !10
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing5ArrayIhEE, i64 16), ptr %i.ab, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ah = sext i32 %i.ae to i64                   ; 3 uses
  %i.ai = icmp slt i32 %i.ae, 0
  br i1 %i.ai, label %.noexc.i, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #9
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %.noexc3.i

.noexc3.i:                                        ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #8
          to label %.noexc53 unwind label %bb.g   ; 3 uses

.noexc53:                                         ; preds = %.noexc3.i
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aj, i8 0, i64 %i.ah, i1 false)
  %.pre = load i32, ptr %i.af, align 8, !tbaa !10
  %i.am = add i32 %.pre, 1
  br label %bb.d

bb.d:                                             ; preds = %.noexc53, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.an = phi i32 [ %i.am, %.noexc53 ], [ 1, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.noexc53 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %.0.i.i.i.i.i.i.i.i, ptr %i.ao, align 8, !tbaa !18
  store i32 %i.an, ptr %i.af, align 8, !tbaa !10
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21 ; 4 uses
  %.not5.i.i = icmp eq ptr %i.aq, null
  br i1 %.not5.i.i, label %_ZN5zxing8ArrayRefIhEaSEPNS_5ArrayIhEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !10
  %i.at = add i32 %i.as, -1                       ; 2 uses
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !10
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.f, label %_ZN5zxing8ArrayRefIhEaSEPNS_5ArrayIhEE.exit

bb.f:                                             ; preds = %bb.e
  store i32 -559026175, ptr %i.ar, align 8, !tbaa !10
  %i.av = load ptr, ptr %i.aq, align 8, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(12) %i.aq) #10, !inline_history !0
  br label %_ZN5zxing8ArrayRefIhEaSEPNS_5ArrayIhEE.exit

_ZN5zxing8ArrayRefIhEaSEPNS_5ArrayIhEE.exit:      ; preds = %bb.d, %bb.e, %bb.f
  store ptr %i.ab, ptr %i.ap, align 8, !tbaa !21
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 24
  store <2 x i32> %i.aa, ptr %i.ay, align 8, !tbaa !34
  %i.az = icmp slt <2 x i32> %.fr, zeroinitializer
  %3 = bitcast <2 x i1> %i.az to i2
  %or.cond.not = icmp eq i2 %3, 0
  br i1 %or.cond.not, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %_ZN5zxing8ArrayRefIhEaSEPNS_5ArrayIhEE.exit
  %i.ba = add nsw i32 %i.u, 1
  %i.bb = sub i32 %i.ba, %i.w
  %i.bc = zext nneg i32 %i.s to i64
  %wide.trip.count = zext i32 %i.ad to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv64 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next65, %._crit_edge ] ; 2 uses
  %.04461 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge ]
  br label %bb.h

bb.g:                                             ; preds = %.noexc3.i, %.noexc.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 40) #11
  resume { ptr, i32 } %i.bd

._crit_edge:                                      ; preds = %bb.h
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count
  br i1 %exitcond67.not, label %.loopexit, label %.preheader, !llvm.loop !29

bb.h:                                             ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ %.04461, %.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.059 = phi i32 [ 0, %.preheader ], [ %i.bv, %bb.h ] ; 2 uses
  %i.be = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.bf = add nuw nsw i32 %.059, %i.w
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !38
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bc
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !34
  %i.bl = add nsw i32 %i.bf, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !39
  %i.bo = sext i32 %i.bl to i64
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !22
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.br = load ptr, ptr %i.ap, align 8, !tbaa !21
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv
  store i8 %i.bq, ptr %i.bu, align 1, !tbaa !22
  %i.bv = add nuw i32 %.059, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bv, %i.bb
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !30

.loopexit:                                        ; preds = %._crit_edge, %_ZN5zxing8ArrayRefIhEaSEPNS_5ArrayIhEE.exit, %bb.b, %bb.a
  %.045 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ 0, %_ZN5zxing8ArrayRefIhEaSEPNS_5ArrayIhEE.exit ], [ 0, %._crit_edge ]
  ret i32 %.045
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5zxing5ArrayIhED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing5ArrayIhEE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #11
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5zxing5ArrayIhED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing5ArrayIhEE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5zxing5ArrayIhED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #11, !inline_history !40
  br label %_ZN5zxing5ArrayIhED2Ev.exit

_ZN5zxing5ArrayIhED2Ev.exit:                      ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #11
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { builtin allocsize(0) }
attributes #9 = { noreturn }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null, null, null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_ZTSN5zxing7CountedE", !6, i64 8}
!10 = !{!9, !6, i64 8}
!11 = !{!"vtable pointer", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!15, !14, i64 0}
!17 = !{!15, !14, i64 16}
!18 = !{!15, !14, i64 8}
!19 = !{!"p1 _ZTSN5zxing5ArrayIhEE", !13, i64 0}
!20 = !{!"_ZTSN5zxing8ArrayRefIhEE", !9, i64 0, !19, i64 16}
!21 = !{!20, !19, i64 16}
!22 = !{!5, !5, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
!26 = !{!"_ZTSN5zxing15_ImageCutResultE", !20, i64 0, !6, i64 24, !6, i64 28}
!27 = !{!26, !6, i64 28}
!28 = !{!26, !6, i64 24}
!29 = distinct !{!29, !23}
!30 = distinct !{!30, !23}
!31 = !{!"p1 _ZTSN5zxing10ByteMatrixE", !13, i64 0}
!32 = !{!"_ZTSN5zxing3RefINS_10ByteMatrixEEE", !31, i64 0}
!33 = !{!32, !31, i64 0}
!34 = !{!6, !6, i64 0}
!35 = !{!"p1 int", !13, i64 0}
!36 = !{!"_ZTSN5zxing10ByteMatrixE", !9, i64 0, !14, i64 16, !6, i64 24, !6, i64 28, !35, i64 32}
!37 = !{!36, !6, i64 24}
!38 = !{!36, !35, i64 32}
!39 = !{!36, !14, i64 16}
!40 = !{ptr @_ZN5zxing5ArrayIhED2Ev}
end_hunk_0
