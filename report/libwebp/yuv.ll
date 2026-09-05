Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/yuv?download=true
inline.NumInlined: 120
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ConvertBGRToY_C:bb.a
  %i.r = lshr i32 %i.q, 16
  %i.s = trunc nuw i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.s, ptr %i.t, align 1, !tbaa !12
  %i.u = getelementptr inbounds i8, ptr %.0910, i64 %i.b ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !12
  %i.x = zext i8 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !12
  %i.aa = zext i8 %i.z to i32
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !12
  %i.ac = zext i8 %i.ab to i32
  %i.ad = mul nuw nsw i32 %i.x, 16839
  %i.ae = mul nuw nsw i32 %i.aa, 33059
  %i.af = mul nuw nsw i32 %i.ac, 6420
  %i.ag = add nuw nsw i32 %i.ad, 1081344
  %i.ah = add nuw nsw i32 %i.ag, %i.ae
  %i.ai = add nuw nsw i32 %i.ah, %i.af
  %i.aj = lshr i32 %i.ai, 16
  %i.ak = trunc nuw i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.u, i64 %i.b ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !53

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.0910.epil.init = phi ptr [ %0, %.lr.ph ], [ %i.an, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod13 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod13)
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.epil.init, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !12
  %i.aq = zext i8 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.epil.init, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !12
  %i.at = zext i8 %i.as to i32
  %i.au = load i8, ptr %.0910.epil.init, align 1, !tbaa !12
  %i.av = zext i8 %i.au to i32
  %i.aw = mul nuw nsw i32 %i.aq, 16839
  %i.ax = mul nuw nsw i32 %i.at, 33059
  %i.ay = mul nuw nsw i32 %i.av, 6420
  %i.az = add nuw nsw i32 %i.aw, 1081344
  %i.ba = add nuw nsw i32 %i.az, %i.ax
  %i.bb = add nuw nsw i32 %i.ba, %i.ay
  %i.bc = lshr i32 %i.bb, 16
  %i.bd = trunc nuw i32 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil.init
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ImportYUVAFromRGBA_C(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16) #0 {
bb.a:
  %i.a = icmp ult ptr %0, %2                      ; 2 uses
  %i.b = add nsw i32 %7, 1
  %i.c = ashr i32 %i.b, 1                         ; 4 uses
  tail call void @WebPInitGammaTables()
  %i.d = ashr i32 %8, 1                           ; 5 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = and i32 %6, 1
  %.not = icmp eq ptr %16, null
  %i.g = sext i32 %5 to i64                       ; 4 uses
  %i.h = sext i32 %10 to i64                      ; 4 uses
  %i.i = shl nsw i32 %10, 1
  %i.j = sext i32 %i.i to i64                     ; 4 uses
  %.not9394 = icmp eq i32 %i.f, 0
  %.not93 = or i1 %.not9394, %.not                ; 2 uses
  %i.k = shl nsw i32 %12, 1
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = sext i32 %7 to i64                       ; 4 uses
  %i.n = sext i32 %12 to i64                      ; 4 uses
  %i.o = sext i32 %11 to i64                      ; 8 uses
  %i.p = shl nsw i32 %5, 1
  %i.q = sext i32 %i.p to i64                     ; 13 uses
  %spec.select.idx = select i1 %.not93, i64 0, i64 %i.q ; 2 uses
  br i1 %.not93, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.a, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %.thread.us.us
  %.081112.us.us = phi i32 [ %i.ae, %.thread.us.us ], [ 0, %.lr.ph.split.us ]
  %.082111.us.us = phi ptr [ %.2101.us.us, %.thread.us.us ], [ %16, %.lr.ph.split.us ] ; 3 uses
  %.083110.us.us = phi ptr [ %i.aa, %.thread.us.us ], [ %15, %.lr.ph.split.us ] ; 2 uses
  %.084109.us.us = phi ptr [ %i.z, %.thread.us.us ], [ %14, %.lr.ph.split.us ] ; 2 uses
  %.085108.us.us = phi ptr [ %i.v, %.thread.us.us ], [ %13, %.lr.ph.split.us ] ; 3 uses
  %.086107.us.us = phi ptr [ %i.ab, %.thread.us.us ], [ %0, %.lr.ph.split.us ] ; 4 uses
  %.087106.us.us = phi ptr [ %i.ad, %.thread.us.us ], [ %1, %.lr.ph.split.us ] ; 2 uses
  %.088105.us.us = phi ptr [ %i.ac, %.thread.us.us ], [ %2, %.lr.ph.split.us ] ; 2 uses
  %i.r = load ptr, ptr @WebPConvertRGBToY, align 8, !tbaa !10
  tail call void %i.r(ptr noundef %.086107.us.us, ptr noundef %.085108.us.us, i32 noundef %7, i32 noundef %4) #9
  %i.s = load ptr, ptr @WebPConvertRGBToY, align 8, !tbaa !10
  %i.t = getelementptr inbounds i8, ptr %.086107.us.us, i64 %i.g
  %i.u = getelementptr inbounds i8, ptr %.085108.us.us, i64 %i.h
  tail call void %i.s(ptr noundef %i.t, ptr noundef %i.u, i32 noundef %7, i32 noundef %4) #9
  %i.v = getelementptr inbounds i8, ptr %.085108.us.us, i64 %i.j
  %.not95.us.us = icmp eq ptr %.082111.us.us, null
  br i1 %.not95.us.us, label %.thread.us.us, label %.preheader.us.us.preheader

.preheader.us.us.preheader:                       ; preds = %.lr.ph.split.us.split.us
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.082111.us.us, i8 -1, i64 %i.m, i1 false)
  %i.w = getelementptr inbounds i8, ptr %.082111.us.us, i64 %i.n ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.w, i8 -1, i64 %i.m, i1 false)
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.n
  br label %.thread.us.us

.thread.us.us:                                    ; preds = %.preheader.us.us.preheader, %.lr.ph.split.us.split.us
  %.2101.us.us = phi ptr [ null, %.lr.ph.split.us.split.us ], [ %i.x, %.preheader.us.us.preheader ]
  tail call void @WebPAccumulateRGB(ptr noundef %.086107.us.us, ptr noundef %.087106.us.us, ptr noundef %.088105.us.us, i32 noundef %4, i32 noundef %5, ptr noundef %9, i32 noundef %7)
  %i.y = load ptr, ptr @WebPConvertRGBA32ToUV, align 8, !tbaa !10
  tail call void %i.y(ptr noundef %9, ptr noundef %.084109.us.us, ptr noundef %.083110.us.us, i32 noundef %i.c) #9
  %i.z = getelementptr inbounds i8, ptr %.084109.us.us, i64 %i.o
  %i.aa = getelementptr inbounds i8, ptr %.083110.us.us, i64 %i.o
  %i.ab = getelementptr inbounds i8, ptr %.086107.us.us, i64 %i.q
  %i.ac = getelementptr inbounds i8, ptr %.088105.us.us, i64 %i.q
  %i.ad = getelementptr inbounds i8, ptr %.087106.us.us, i64 %i.q
  %i.ae = add nuw nsw i32 %.081112.us.us, 1       ; 2 uses
  %exitcond130.not = icmp eq i32 %i.ae, %i.d
  br i1 %exitcond130.not, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !54

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %.thread.us
  %.081112.us = phi i32 [ %i.as, %.thread.us ], [ 0, %.lr.ph.split.us ]
  %.082111.us = phi ptr [ %.2101.us, %.thread.us ], [ %16, %.lr.ph.split.us ] ; 3 uses
  %.083110.us = phi ptr [ %i.ao, %.thread.us ], [ %15, %.lr.ph.split.us ] ; 2 uses
  %.084109.us = phi ptr [ %i.an, %.thread.us ], [ %14, %.lr.ph.split.us ] ; 2 uses
  %.085108.us = phi ptr [ %i.aj, %.thread.us ], [ %13, %.lr.ph.split.us ] ; 3 uses
  %.086107.us = phi ptr [ %i.ap, %.thread.us ], [ %0, %.lr.ph.split.us ] ; 2 uses
  %.087106.us = phi ptr [ %i.ar, %.thread.us ], [ %1, %.lr.ph.split.us ] ; 2 uses
  %.088105.us = phi ptr [ %i.aq, %.thread.us ], [ %2, %.lr.ph.split.us ] ; 4 uses
  %i.af = load ptr, ptr @WebPConvertBGRToY, align 8, !tbaa !10
  tail call void %i.af(ptr noundef %.088105.us, ptr noundef %.085108.us, i32 noundef %7, i32 noundef %4) #9
  %i.ag = load ptr, ptr @WebPConvertBGRToY, align 8, !tbaa !10
  %i.ah = getelementptr inbounds i8, ptr %.088105.us, i64 %i.g
  %i.ai = getelementptr inbounds i8, ptr %.085108.us, i64 %i.h
  tail call void %i.ag(ptr noundef %i.ah, ptr noundef %i.ai, i32 noundef %7, i32 noundef %4) #9
  %i.aj = getelementptr inbounds i8, ptr %.085108.us, i64 %i.j
  %.not95.us = icmp eq ptr %.082111.us, null
  br i1 %.not95.us, label %.thread.us, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.lr.ph.split.us.split
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.082111.us, i8 -1, i64 %i.m, i1 false)
  %i.ak = getelementptr inbounds i8, ptr %.082111.us, i64 %i.n ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ak, i8 -1, i64 %i.m, i1 false)
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.n
  br label %.thread.us

.thread.us:                                       ; preds = %.preheader.us.preheader, %.lr.ph.split.us.split
  %.2101.us = phi ptr [ null, %.lr.ph.split.us.split ], [ %i.al, %.preheader.us.preheader ]
  tail call void @WebPAccumulateRGB(ptr noundef %.086107.us, ptr noundef %.087106.us, ptr noundef %.088105.us, i32 noundef %4, i32 noundef %5, ptr noundef %9, i32 noundef %7)
  %i.am = load ptr, ptr @WebPConvertRGBA32ToUV, align 8, !tbaa !10
  tail call void %i.am(ptr noundef %9, ptr noundef %.084109.us, ptr noundef %.083110.us, i32 noundef %i.c) #9
  %i.an = getelementptr inbounds i8, ptr %.084109.us, i64 %i.o
  %i.ao = getelementptr inbounds i8, ptr %.083110.us, i64 %i.o
  %i.ap = getelementptr inbounds i8, ptr %.086107.us, i64 %i.q
  %i.aq = getelementptr inbounds i8, ptr %.088105.us, i64 %i.q
  %i.ar = getelementptr inbounds i8, ptr %.087106.us, i64 %i.q
  %i.as = add nuw nsw i32 %.081112.us, 1          ; 2 uses
  %exitcond129.not = icmp eq i32 %i.as, %i.d
  br i1 %exitcond129.not, label %._crit_edge, label %.lr.ph.split.us.split, !llvm.loop !54

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.a, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.c
  %.081112.us113 = phi i32 [ %i.bh, %bb.c ], [ 0, %.lr.ph.split ]
  %.082111.us114 = phi ptr [ %i.ba, %bb.c ], [ %16, %.lr.ph.split ] ; 2 uses
  %.083110.us115 = phi ptr [ %i.bd, %bb.c ], [ %15, %.lr.ph.split ] ; 2 uses
  %.084109.us116 = phi ptr [ %i.bc, %bb.c ], [ %14, %.lr.ph.split ] ; 2 uses
  %.085108.us117 = phi ptr [ %i.ax, %bb.c ], [ %13, %.lr.ph.split ] ; 3 uses
  %.086107.us118 = phi ptr [ %i.be, %bb.c ], [ %0, %.lr.ph.split ] ; 5 uses
  %.087106.us119 = phi ptr [ %i.bg, %bb.c ], [ %1, %.lr.ph.split ] ; 3 uses
  %.088105.us120 = phi ptr [ %i.bf, %bb.c ], [ %2, %.lr.ph.split ] ; 3 uses
  %.089104.us121 = phi ptr [ %spec.select.us123, %bb.c ], [ %3, %.lr.ph.split ] ; 3 uses
  %i.at = load ptr, ptr @WebPConvertRGBToY, align 8, !tbaa !10
  tail call void %i.at(ptr noundef %.086107.us118, ptr noundef %.085108.us117, i32 noundef %7, i32 noundef %4) #9
  %i.au = load ptr, ptr @WebPConvertRGBToY, align 8, !tbaa !10
  %i.av = getelementptr inbounds i8, ptr %.086107.us118, i64 %i.g
  %i.aw = getelementptr inbounds i8, ptr %.085108.us117, i64 %i.h
  tail call void %i.au(ptr noundef %i.av, ptr noundef %i.aw, i32 noundef %7, i32 noundef %4) #9
  %i.ax = getelementptr inbounds i8, ptr %.085108.us117, i64 %i.j
  %i.ay = load ptr, ptr @WebPExtractAlpha, align 8, !tbaa !10
  %i.az = tail call i32 %i.ay(ptr noundef %.089104.us121, i32 noundef %5, i32 noundef %7, i32 noundef 2, ptr noundef %.082111.us114, i32 noundef %12) #9
  %.not96.not.us = icmp eq i32 %i.az, 0
  %i.ba = getelementptr inbounds i8, ptr %.082111.us114, i64 %i.l
  br i1 %.not96.not.us, label %.thread.us122, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.split.us
  tail call void @WebPAccumulateRGB(ptr noundef %.086107.us118, ptr noundef %.087106.us119, ptr noundef %.088105.us120, i32 noundef %4, i32 noundef %5, ptr noundef %9, i32 noundef %7)
  br label %bb.c

.thread.us122:                                    ; preds = %.lr.ph.split.split.us
  tail call void @WebPAccumulateRGBA(ptr noundef %.086107.us118, ptr noundef %.087106.us119, ptr noundef %.088105.us120, ptr noundef %.089104.us121, i32 noundef %5, ptr noundef %9, i32 noundef %7)
  br label %bb.c

bb.c:                                             ; preds = %.thread.us122, %bb.b
  %i.bb = load ptr, ptr @WebPConvertRGBA32ToUV, align 8, !tbaa !10
  tail call void %i.bb(ptr noundef %9, ptr noundef %.084109.us116, ptr noundef %.083110.us115, i32 noundef %i.c) #9
  %i.bc = getelementptr inbounds i8, ptr %.084109.us116, i64 %i.o
  %i.bd = getelementptr inbounds i8, ptr %.083110.us115, i64 %i.o
  %i.be = getelementptr inbounds i8, ptr %.086107.us118, i64 %i.q
  %i.bf = getelementptr inbounds i8, ptr %.088105.us120, i64 %i.q
  %i.bg = getelementptr inbounds i8, ptr %.087106.us119, i64 %i.q
  %spec.select.us123 = getelementptr inbounds i8, ptr %.089104.us121, i64 %spec.select.idx
  %i.bh = add nuw nsw i32 %.081112.us113, 1       ; 2 uses
  %exitcond128.not = icmp eq i32 %i.bh, %i.d
  br i1 %exitcond128.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !54

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.e
  %.081112 = phi i32 [ %i.bw, %bb.e ], [ 0, %.lr.ph.split ]
  %.082111 = phi ptr [ %i.bp, %bb.e ], [ %16, %.lr.ph.split ] ; 2 uses
  %.083110 = phi ptr [ %i.bs, %bb.e ], [ %15, %.lr.ph.split ] ; 2 uses
  %.084109 = phi ptr [ %i.br, %bb.e ], [ %14, %.lr.ph.split ] ; 2 uses
  %.085108 = phi ptr [ %i.bm, %bb.e ], [ %13, %.lr.ph.split ] ; 3 uses
  %.086107 = phi ptr [ %i.bt, %bb.e ], [ %0, %.lr.ph.split ] ; 3 uses
  %.087106 = phi ptr [ %i.bv, %bb.e ], [ %1, %.lr.ph.split ] ; 3 uses
  %.088105 = phi ptr [ %i.bu, %bb.e ], [ %2, %.lr.ph.split ] ; 5 uses
  %.089104 = phi ptr [ %spec.select, %bb.e ], [ %3, %.lr.ph.split ] ; 3 uses
  %i.bi = load ptr, ptr @WebPConvertBGRToY, align 8, !tbaa !10
  tail call void %i.bi(ptr noundef %.088105, ptr noundef %.085108, i32 noundef %7, i32 noundef %4) #9
  %i.bj = load ptr, ptr @WebPConvertBGRToY, align 8, !tbaa !10
  %i.bk = getelementptr inbounds i8, ptr %.088105, i64 %i.g
  %i.bl = getelementptr inbounds i8, ptr %.085108, i64 %i.h
  tail call void %i.bj(ptr noundef %i.bk, ptr noundef %i.bl, i32 noundef %7, i32 noundef %4) #9
  %i.bm = getelementptr inbounds i8, ptr %.085108, i64 %i.j
  %i.bn = load ptr, ptr @WebPExtractAlpha, align 8, !tbaa !10
  %i.bo = tail call i32 %i.bn(ptr noundef %.089104, i32 noundef %5, i32 noundef %7, i32 noundef 2, ptr noundef %.082111, i32 noundef %12) #9
  %.not96.not = icmp eq i32 %i.bo, 0
  %i.bp = getelementptr inbounds i8, ptr %.082111, i64 %i.l
  br i1 %.not96.not, label %bb.d, label %.thread

.thread:                                          ; preds = %.lr.ph.split.split
  tail call void @WebPAccumulateRGB(ptr noundef %.086107, ptr noundef %.087106, ptr noundef %.088105, i32 noundef %4, i32 noundef %5, ptr noundef %9, i32 noundef %7)
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.split.split
  tail call void @WebPAccumulateRGBA(ptr noundef %.086107, ptr noundef %.087106, ptr noundef %.088105, ptr noundef %.089104, i32 noundef %5, ptr noundef %9, i32 noundef %7)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %i.bq = load ptr, ptr @WebPConvertRGBA32ToUV, align 8, !tbaa !10
  tail call void %i.bq(ptr noundef %9, ptr noundef %.084109, ptr noundef %.083110, i32 noundef %i.c) #9
  %i.br = getelementptr inbounds i8, ptr %.084109, i64 %i.o
  %i.bs = getelementptr inbounds i8, ptr %.083110, i64 %i.o
  %i.bt = getelementptr inbounds i8, ptr %.086107, i64 %i.q
  %i.bu = getelementptr inbounds i8, ptr %.088105, i64 %i.q
  %i.bv = getelementptr inbounds i8, ptr %.087106, i64 %i.q
  %spec.select = getelementptr inbounds i8, ptr %.089104, i64 %spec.select.idx
  %i.bw = add nuw nsw i32 %.081112, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.bw, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.e, %bb.c, %.thread.us, %.thread.us.us, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ImportYUVAFromRGBALastLine_C(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #0 {
bb.a:
  %i.a = icmp ult ptr %0, %2                      ; 2 uses
  %i.b = icmp ne i32 %5, 0
  %i.c = icmp ne ptr %11, null                    ; 2 uses
  %i.d = and i1 %i.b, %i.c
  %. = select i1 %i.a, ptr %0, ptr %2
  %WebPConvertRGBToY.val = load ptr, ptr @WebPConvertRGBToY, align 8
  %WebPConvertBGRToY.val = load ptr, ptr @WebPConvertBGRToY, align 8
  %i.e = select i1 %i.a, ptr %WebPConvertRGBToY.val, ptr %WebPConvertBGRToY.val
  tail call void %i.e(ptr noundef %., ptr noundef %8, i32 noundef %6, i32 noundef %4) #9
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = sext i32 %6 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %11, i8 -1, i64 %i.f, i1 false)
  br label %.thread

bb.d:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @WebPExtractAlpha, align 8, !tbaa !10
  %i.h = tail call i32 %i.g(ptr noundef %3, i32 noundef 0, i32 noundef %6, i32 noundef 1, ptr noundef nonnull %11, i32 noundef 0) #9
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  tail call void @WebPAccumulateRGB(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %4, i32 noundef 0, ptr noundef %7, i32 noundef %6)
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @WebPAccumulateRGBA(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, ptr noundef %7, i32 noundef %6)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %i.i = add nsw i32 %6, 1
  %i.j = ashr i32 %i.i, 1
  %i.k = load ptr, ptr @WebPConvertRGBA32ToUV, align 8, !tbaa !10
  tail call void %i.k(ptr noundef %7, ptr noundef %9, ptr noundef %10, i32 noundef %i.j) #9
  ret void
}

declare void @WebPInitConvertARGBToYUVSSE2() local_unnamed_addr #4

declare void @WebPInitConvertARGBToYUVSSE41() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!4, !4, i64 0}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!"short", !4, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"branch_weights", i32 4, i32 12}
!18 = distinct !{!18, !8}
!19 = distinct !{null}
!20 = distinct !{!20, !8, !13, !14}
!21 = distinct !{!21, !8, !13, !14}
!22 = distinct !{!22, !8, !14, !13}
!23 = distinct !{!23, !8, !14, !13}
!24 = distinct !{!24, !8, !13, !14}
!25 = distinct !{!25, !8, !14, !13}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{null}
!30 = distinct !{!30, !8, !13, !14}
!31 = distinct !{!31, !8, !13, !14}
!32 = distinct !{!32, !8, !14, !13}
!33 = distinct !{!33, !8, !13, !14}
!34 = distinct !{!34, !8, !13, !14}
!35 = distinct !{!35, !8, !14, !13}
!36 = distinct !{!36, !8, !13, !14}
!37 = distinct !{!37, !8, !13, !14}
!38 = distinct !{!38, !8, !14, !13}
!39 = distinct !{!39, !8, !13, !14}
!40 = distinct !{!40, !8, !13, !14}
!41 = distinct !{!41, !8, !14, !13}
!42 = distinct !{!42, !8, !13, !14}
!43 = distinct !{!43, !8, !14, !13}
!44 = distinct !{!44, !8, !13, !14}
!45 = distinct !{!45, !8, !13, !14}
!46 = distinct !{!46, !8, !14, !13}
!47 = distinct !{!47, !8, !13, !14}
!48 = distinct !{!48, !8, !13, !14}
!49 = distinct !{!49, !8, !14, !13}
!50 = distinct !{!50, !8, !13, !14}
!51 = distinct !{!51, !8, !14, !13}
!52 = distinct !{!52, !8}
!53 = distinct !{!53, !8}
!54 = distinct !{!54, !8}
end_hunk_0
