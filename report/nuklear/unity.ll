Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@stbtt_PackBegin:bb.a
bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %i.h, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val56 = load ptr, ptr %6, align 8
  %i.j = getelementptr i8, ptr %6, i64 16
  %.val57 = load ptr, ptr %i.j, align 8, !tbaa !278
  tail call void %.val57(ptr %.val56, ptr noundef nonnull %i.f) #50, !inline_history !16
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  store ptr %6, ptr %0, align 8, !tbaa !304
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.k, align 8, !tbaa !869
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %3, ptr %i.l, align 4, !tbaa !870
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.m, align 8, !tbaa !305
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.n, align 8, !tbaa !306
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.f, ptr %i.o, align 8, !tbaa !307
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %5, ptr %i.p, align 4, !tbaa !308
  %.not = icmp eq i32 %4, 0
  %i.q = select i1 %.not, i32 %2, i32 %4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.q, ptr %i.r, align 8, !tbaa !309
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.s, align 4, !tbaa !310
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.t, align 8, !tbaa !311
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.u, align 8, !tbaa !312
  %i.v = sub nsw i32 %3, %5
  %i.w = add i32 %i.c, -1                         ; 2 uses
  %i.x = icmp sgt i32 %i.c, 1
  br i1 %i.x, label %.lr.ph.preheader.i, label %stbrp_init_target.exit

.lr.ph.preheader.i:                               ; preds = %bb.f
  %wide.trip.count.i = zext nneg i32 %i.w to i64  ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.y = add nsw i32 %i.c, -2
  %i.z = icmp ult i32 %i.y, 3
  br i1 %i.z, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.next.i
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !250
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.next.i.1
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.next.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !250
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.next.i.2
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.next.i.1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !250
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 3 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.next.i.3
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.next.i.2
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !250
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %stbrp_init_target.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !14

stbrp_init_target.exit.loopexit.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %stbrp_init_target.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %stbrp_init_target.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %stbrp_init_target.exit.loopexit.unr-lcssa ]
  %lcmp.mod64 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod64)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.next.i.epil
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.i.epil
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !250
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %stbrp_init_target.exit, label %.lr.ph.i.epil, !llvm.loop !868

stbrp_init_target.exit:                           ; preds = %stbrp_init_target.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.f
  %.0.lcssa.i = phi i64 [ 0, %bb.f ], [ %wide.trip.count.i, %.lr.ph.i.epil ], [ %wide.trip.count.i, %stbrp_init_target.exit.loopexit.unr-lcssa ]
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.0.lcssa.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr null, ptr %i.aq, align 8, !tbaa !250
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.ar, align 4, !tbaa !244
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.as, align 8, !tbaa !245
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.f, ptr %i.at, align 8, !tbaa !251
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.au, ptr %i.av, align 8, !tbaa !252
  store i32 %i.c, ptr %i.b, align 8, !tbaa !246
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.v, ptr %i.aw, align 4, !tbaa !253
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.c, ptr %i.ax, align 4, !tbaa !247
  %i.ay = add i32 %i.w, %i.c
  %i.az = sdiv i32 %i.ay, %i.c
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !248
  store i32 0, ptr %i.au, align 8, !tbaa !254
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 0, ptr %i.bb, align 4, !tbaa !255
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !250
  store i32 %i.c, ptr %i.bc, align 8, !tbaa !254
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 1073741824, ptr %i.be, align 4, !tbaa !255
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr null, ptr %i.bf, align 8, !tbaa !250
  %.not50 = icmp eq ptr %1, null
  br i1 %.not50, label %bb.h, label %bb.g

bb.g:                                             ; preds = %stbrp_init_target.exit
  %i.bg = mul nsw i32 %3, %2
  %i.bh = sext i32 %i.bg to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.bh, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %stbrp_init_target.exit, %bb.g, %bb.d, %bb.e
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ 1, %bb.g ], [ 1, %stbrp_init_target.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @stbtt_PackEnd(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !307
  %i.c = load ptr, ptr %0, align 8, !tbaa !304    ; 2 uses
  %.val5 = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %.val6 = load ptr, ptr %i.d, align 8, !tbaa !278
  tail call void %.val6(ptr %.val5, ptr noundef %i.b) #50, !inline_history !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !306
  %i.g = load ptr, ptr %0, align 8, !tbaa !304    ; 2 uses
  %.val = load ptr, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %.val4 = load ptr, ptr %i.h, align 8, !tbaa !278
  tail call void %.val4(ptr %.val, ptr noundef %i.f) #50, !inline_history !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stbtt_PackSetOversampling(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp ult i32 %1, 9
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %1, ptr %i.b, align 4, !tbaa !310
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = icmp ult i32 %2, 9
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %2, ptr %i.d, align 8, !tbaa !311
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stbtt_PackSetSkipMissingCodepoints(ptr nofree noundef writeonly captures(none) initializes((32, 36)) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %1, ptr %i.a, align 8, !tbaa !312
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @stbtt_PackFontRangesGatherRects(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #19 {
bb.a:
  %5 = alloca %struct.stbtt__csctx, align 8       ; 9 uses
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph92, label %._crit_edge93

.lr.ph92:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph92, %._crit_edge
  %indvars.iv100 = phi i64 [ 0, %.lr.ph92 ], [ %indvars.iv.next101, %._crit_edge ] ; 2 uses
  %.090 = phi i32 [ 0, %.lr.ph92 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.05489 = phi i32 [ 0, %.lr.ph92 ], [ %.155.lcssa, %._crit_edge ] ; 2 uses
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv100 ; 6 uses
  %i.r = load float, ptr %i.q, align 8, !tbaa !315 ; 3 uses
  %i.s = fcmp ogt float %i.r, 0.000000e+00
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !264
  %i.u = load i32, ptr %i.d, align 4, !tbaa !282
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.val6.i = load i8, ptr %i.x, align 1, !tbaa !56
  %i.y = getelementptr i8, ptr %i.w, i64 5
  %.val7.i = load i8, ptr %i.y, align 1, !tbaa !56
  %i.z = zext i8 %.val6.i to i16
  %i.aa = shl nuw i16 %i.z, 8
  %i.ab = zext i8 %.val7.i to i16
  %i.ac = or disjoint i16 %i.aa, %i.ab
  %i.ad = sext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 6
  %.val.i = load i8, ptr %i.ae, align 1, !tbaa !56
  %i.af = getelementptr i8, ptr %i.w, i64 7
  %.val5.i = load i8, ptr %i.af, align 1, !tbaa !56
  %i.ag = zext i8 %.val.i to i16
  %i.ah = shl nuw i16 %i.ag, 8
  %i.ai = zext i8 %.val5.i to i16
  %i.aj = or disjoint i16 %i.ah, %i.ai
  %i.ak = sext i16 %i.aj to i32
  %i.al = sub nsw i32 %i.ad, %i.ak
  %i.am = sitofp i32 %i.al to float
  %i.an = fdiv float %i.r, %i.am
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ao = fneg float %i.r
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !264
  %i.aq = load i32, ptr %i.c, align 4, !tbaa !287
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 18
  %.val.i61 = load i8, ptr %i.at, align 1, !tbaa !56
  %i.au = getelementptr i8, ptr %i.as, i64 19
  %.val3.i = load i8, ptr %i.au, align 1, !tbaa !56
  %i.av = zext i8 %.val.i61 to i16
  %i.aw = shl nuw i16 %i.av, 8
  %i.ax = zext i8 %.val3.i to i16
  %i.ay = or disjoint i16 %i.aw, %i.ax
  %i.az = uitofp i16 %i.ay to float
  %i.ba = fdiv float %i.ao, %i.az
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bb = phi float [ %i.an, %bb.c ], [ %i.ba, %bb.d ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.bd = load <2 x i32>, ptr %i.e, align 4, !tbaa !55 ; 5 uses
  %i.be = bitcast <2 x i32> %i.bd to <8 x i8>
  %i.bf = extractelement <8 x i8> %i.be, i64 0
  store i8 %i.bf, ptr %i.bc, align 8, !tbaa !873
  %i.bg = bitcast <2 x i32> %i.bd to <8 x i8>
  %i.bh = extractelement <8 x i8> %i.bg, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 33
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !874
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !316 ; 4 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %6 = sext i32 %.05489 to i64
  %i.bo = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.u
  %.pre104.pre116 = phi i32 [ %i.bk, %.lr.ph ], [ %.pre104.pre117, %bb.u ] ; 5 uses
  %.pre104113 = phi i32 [ %i.bk, %.lr.ph ], [ %.pre104114, %bb.u ] ; 4 uses
  %i.bq = phi i32 [ %i.bk, %.lr.ph ], [ %i.gm, %bb.u ]
  %indvars.iv95 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next96, %bb.u ] ; 3 uses
  %indvars.iv = phi i64 [ %6, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %.186.a = phi i32 [ %.090, %.lr.ph ], [ %.2, %bb.u ] ; 3 uses
  %i.br = phi <2 x i32> [ %i.bd, %.lr.ph ], [ %i.gn, %bb.u ] ; 2 uses
  %i.bs = phi <2 x i32> [ %i.bd, %.lr.ph ], [ %i.go, %bb.u ] ; 5 uses
  %i.bt = phi <2 x i32> [ %i.bd, %.lr.ph ], [ %i.gp, %bb.u ] ; 4 uses
  %i.bu = load ptr, ptr %i.bm, align 8, !tbaa !317 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bw = load i32, ptr %i.bn, align 4, !tbaa !318
  %i.bx = trunc nuw nsw i64 %indvars.iv95 to i32
  %i.by = add nsw i32 %i.bw, %i.bx
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv95
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !55
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cb = phi i32 [ %i.by, %bb.g ], [ %i.ca, %bb.h ]
  %i.cc = call i32 @stbtt_FindGlyphIndex(ptr noundef %1, i32 noundef %i.cb) ; 5 uses
  %i.cd = icmp eq i32 %i.cc, 0                    ; 2 uses
  br i1 %i.cd, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ce = load i32, ptr %i.f, align 8, !tbaa !312
  %i.cf = icmp ne i32 %i.ce, 0
  %i.cg = icmp ne i32 %.186.a, 0
  %or.cond = select i1 %i.cf, i1 true, i1 %i.cg
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ch = getelementptr inbounds [24 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i32 0, ptr %i.ci, align 4, !tbaa !259
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 0, ptr %i.cj, align 4, !tbaa !258
  br label %bb.u

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ck = uitofp <2 x i32> %i.br to <2 x float>
  %i.cl = fmul <2 x float> %i.bp, %i.ck           ; 2 uses
  %i.cm = load i32, ptr %i.g, align 4, !tbaa !266
  %.not.i62 = icmp eq i32 %i.cm, 0
  br i1 %.not.i62, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  store i32 1, ptr %5, align 8
  %i.cn = call fastcc i32 @stbtt__run_charstring(ptr noundef nonnull readonly %1, i32 noundef %i.cc, ptr noundef %5)
  %.not17.i.i = icmp eq i32 %i.cn, 0              ; 4 uses
  %i.co = load i32, ptr %i.h, align 8
  %i.cp = select i1 %.not17.i.i, i32 0, i32 %i.co
  %i.cq = load i32, ptr %i.i, align 8
  %i.cr = select i1 %.not17.i.i, i32 0, i32 %i.cq
  %i.cs = load i32, ptr %i.j, align 4
  %i.ct = select i1 %.not17.i.i, i32 0, i32 %i.cs
  %i.cu = load i32, ptr %i.k, align 4
  %i.cv = select i1 %.not17.i.i, i32 0, i32 %i.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  %i.cw = load <2 x i32>, ptr %i.e, align 4, !tbaa !55
  %.pre104.pre.pre = load i32, ptr %i.bj, align 8, !tbaa !316
  br label %stbtt_GetGlyphBox.exit

bb.n:                                             ; preds = %bb.l
  %i.cx = load i32, ptr %i.l, align 4, !tbaa !267
  %.not.i44.i = icmp slt i32 %i.cc, %i.cx
  br i1 %.not.i44.i, label %bb.o, label %stbtt_GetGlyphBitmapBoxSubpixel.exit

bb.o:                                             ; preds = %bb.n
  %i.cy = load i32, ptr %i.m, align 4, !tbaa !268 ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, 1
  br i1 %i.cz, label %stbtt_GetGlyphBitmapBoxSubpixel.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.da = icmp eq i32 %i.cy, 0
  %i.db = load i32, ptr %i.n, align 8, !tbaa !269
  %i.dc = load ptr, ptr %i.b, align 8, !tbaa !264 ; 2 uses
  %i.dd = load i32, ptr %i.o, align 8, !tbaa !270
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 %i.de ; 2 uses
  br i1 %i.da, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dg = shl nsw i32 %i.cc, 1
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds i8, ptr %i.df, i64 %i.dh ; 4 uses
  %.val28.i.i = load i8, ptr %i.di, align 1, !tbaa !56
  %i.dj = getelementptr i8, ptr %i.di, i64 1
  %.val29.i.i = load i8, ptr %i.dj, align 1, !tbaa !56
  %i.dk = zext i8 %.val28.i.i to i32
  %i.dl = zext i8 %.val29.i.i to i32
  %i.dm = shl nuw nsw i32 %i.dk, 9
  %i.dn = shl nuw nsw i32 %i.dl, 1
  %i.do = or disjoint i32 %i.dn, %i.dm
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  %.val.i.i = load i8, ptr %i.dp, align 1, !tbaa !56
  %i.dq = getelementptr i8, ptr %i.di, i64 3
  %.val27.i.i = load i8, ptr %i.dq, align 1, !tbaa !56
  %i.dr = zext i8 %.val.i.i to i32
  %i.ds = zext i8 %.val27.i.i to i32
  %i.dt = shl nuw nsw i32 %i.dr, 9
  %i.du = shl nuw nsw i32 %i.ds, 1
  %i.dv = or disjoint i32 %i.du, %i.dt
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.dw = shl nsw i32 %i.cc, 2
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %i.df, i64 %i.dx ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 1
  %i.ea = call i32 @llvm.bswap.i32(i32 %i.dz)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ec = load i32, ptr %i.eb, align 1
  %i.ed = call i32 @llvm.bswap.i32(i32 %i.ec)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink.i.i = phi i32 [ %i.ed, %bb.r ], [ %i.dv, %bb.q ]
  %.pn.i.i = phi i32 [ %i.ea, %bb.r ], [ %i.do, %bb.q ] ; 2 uses
  %.023.i.i = add i32 %.pn.i.i, %i.db             ; 2 uses
  %i.ee = icmp eq i32 %.pn.i.i, %.sink.i.i
  %i.ef = icmp slt i32 %.023.i.i, 0
  %or.cond.i = select i1 %i.ee, i1 true, i1 %i.ef
  br i1 %or.cond.i, label %stbtt_GetGlyphBitmapBoxSubpixel.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eg = zext nneg i32 %.023.i.i to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.eg ; 8 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  %.val42.i = load i8, ptr %i.ei, align 1, !tbaa !56
  %i.ej = getelementptr i8, ptr %i.eh, i64 3
  %.val43.i = load i8, ptr %i.ej, align 1, !tbaa !56
  %i.ek = zext i8 %.val42.i to i16
  %i.el = shl nuw i16 %i.ek, 8
  %i.em = zext i8 %.val43.i to i16
  %i.en = or disjoint i16 %i.el, %i.em
  %i.eo = sext i16 %i.en to i32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %.val40.i = load i8, ptr %i.ep, align 1, !tbaa !56
  %i.eq = getelementptr i8, ptr %i.eh, i64 5
  %.val41.i = load i8, ptr %i.eq, align 1, !tbaa !56
  %i.er = zext i8 %.val40.i to i16
  %i.es = shl nuw i16 %i.er, 8
  %i.et = zext i8 %.val41.i to i16
  %i.eu = or disjoint i16 %i.es, %i.et
  %i.ev = sext i16 %i.eu to i32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eh, i64 6
  %.val38.i = load i8, ptr %i.ew, align 1, !tbaa !56
  %i.ex = getelementptr i8, ptr %i.eh, i64 7
  %.val39.i = load i8, ptr %i.ex, align 1, !tbaa !56
  %i.ey = zext i8 %.val38.i to i16
  %i.ez = shl nuw i16 %i.ey, 8
  %i.fa = zext i8 %.val39.i to i16
  %i.fb = or disjoint i16 %i.ez, %i.fa
  %i.fc = sext i16 %i.fb to i32
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %.val.i63 = load i8, ptr %i.fd, align 1, !tbaa !56
  %i.fe = getelementptr i8, ptr %i.eh, i64 9
  %.val37.i = load i8, ptr %i.fe, align 1, !tbaa !56
  %i.ff = zext i8 %.val.i63 to i16
  %i.fg = shl nuw i16 %i.ff, 8
  %i.fh = zext i8 %.val37.i to i16
  %i.fi = or disjoint i16 %i.fg, %i.fh
  %i.fj = sext i16 %i.fi to i32
  br label %stbtt_GetGlyphBox.exit

stbtt_GetGlyphBox.exit:                           ; preds = %bb.t, %bb.m
  %.pre104.pre = phi i32 [ %.pre104.pre116, %bb.t ], [ %.pre104.pre.pre, %bb.m ] ; 2 uses
  %.077 = phi i32 [ %i.eo, %bb.t ], [ %i.cp, %bb.m ]
  %.076 = phi i32 [ %i.ev, %bb.t ], [ %i.cr, %bb.m ]
  %.075 = phi i32 [ %i.fc, %bb.t ], [ %i.ct, %bb.m ]
  %.074 = phi i32 [ %i.fj, %bb.t ], [ %i.cv, %bb.m ]
  %i.fk = phi <2 x i32> [ %i.bs, %bb.t ], [ %i.cw, %bb.m ] ; 2 uses
  %i.fl = sub nsw i32 0, %.074
  %i.fm = sub nsw i32 0, %.076
  %i.fn = insertelement <2 x i32> poison, i32 %.077, i64 0
  %i.fo = insertelement <2 x i32> %i.fn, i32 %i.fl, i64 1
  %i.fp = sitofp <2 x i32> %i.fo to <2 x float>
  %i.fq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fp, <2 x float> %i.cl, <2 x float> zeroinitializer)
  %i.fr = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.fq)
  %i.fs = fptosi <2 x float> %i.fr to <2 x i32>
  %i.ft = insertelement <2 x i32> poison, i32 %.075, i64 0
  %i.fu = insertelement <2 x i32> %i.ft, i32 %i.fm, i64 1
  %i.fv = sitofp <2 x i32> %i.fu to <2 x float>
  %i.fw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> %i.cl, <2 x float> zeroinitializer)
  %i.fx = call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.fw)
  %i.fy = fptosi <2 x float> %i.fx to <2 x i32>
  %i.fz = xor <2 x i32> %i.fs, splat (i32 -1)
  br label %stbtt_GetGlyphBitmapBoxSubpixel.exit

stbtt_GetGlyphBitmapBoxSubpixel.exit:             ; preds = %bb.o, %bb.n, %bb.s, %stbtt_GetGlyphBox.exit
  %.pre104.pre118 = phi i32 [ %.pre104.pre, %stbtt_GetGlyphBox.exit ], [ %.pre104.pre116, %bb.s ], [ %.pre104.pre116, %bb.n ], [ %.pre104.pre116, %bb.o ]
  %.pre104 = phi i32 [ %.pre104.pre, %stbtt_GetGlyphBox.exit ], [ %.pre104113, %bb.s ], [ %.pre104113, %bb.n ], [ %.pre104113, %bb.o ] ; 2 uses
  %i.ga = phi <2 x i32> [ %i.fz, %stbtt_GetGlyphBox.exit ], [ splat (i32 -1), %bb.s ], [ splat (i32 -1), %bb.n ], [ splat (i32 -1), %bb.o ]
  %i.gb = phi <2 x i32> [ %i.fy, %stbtt_GetGlyphBox.exit ], [ zeroinitializer, %bb.s ], [ zeroinitializer, %bb.n ], [ zeroinitializer, %bb.o ]
  %i.gc = phi <2 x i32> [ %i.fk, %stbtt_GetGlyphBox.exit ], [ %i.bt, %bb.s ], [ %i.bt, %bb.n ], [ %i.bt, %bb.o ] ; 3 uses
  %i.gd = phi <2 x i32> [ %i.fk, %stbtt_GetGlyphBox.exit ], [ %i.bs, %bb.s ], [ %i.bs, %bb.n ], [ %i.bs, %bb.o ]
  %i.ge = load i32, ptr %i.p, align 4, !tbaa !308
  %i.gf = getelementptr inbounds [24 x i8], ptr %4, i64 %indvars.iv
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gh = insertelement <2 x i32> poison, i32 %i.ge, i64 0
  %i.gi = shufflevector <2 x i32> %i.gh, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.gj = add <2 x i32> %i.ga, %i.gi
  %i.gk = add <2 x i32> %i.gj, %i.gb
  %i.gl = add <2 x i32> %i.gk, %i.gc
  store <2 x i32> %i.gl, ptr %i.gg, align 4, !tbaa !55
  %spec.select = select i1 %i.cd, i32 1, i32 %.186.a
  br label %bb.u

bb.u:                                             ; preds = %stbtt_GetGlyphBitmapBoxSubpixel.exit, %bb.k
  %.pre104.pre117 = phi i32 [ %.pre104.pre116, %bb.k ], [ %.pre104.pre118, %stbtt_GetGlyphBitmapBoxSubpixel.exit ]
  %.pre104114 = phi i32 [ %.pre104113, %bb.k ], [ %.pre104, %stbtt_GetGlyphBitmapBoxSubpixel.exit ]
  %i.gm = phi i32 [ %i.bq, %bb.k ], [ %.pre104, %stbtt_GetGlyphBitmapBoxSubpixel.exit ] ; 2 uses
  %.2 = phi i32 [ %.186.a, %bb.k ], [ %spec.select, %stbtt_GetGlyphBitmapBoxSubpixel.exit ] ; 2 uses
  %i.gn = phi <2 x i32> [ %i.br, %bb.k ], [ %i.gc, %stbtt_GetGlyphBitmapBoxSubpixel.exit ]
  %i.go = phi <2 x i32> [ %i.bs, %bb.k ], [ %i.gd, %stbtt_GetGlyphBitmapBoxSubpixel.exit ]
  %i.gp = phi <2 x i32> [ %i.bt, %bb.k ], [ %i.gc, %stbtt_GetGlyphBitmapBoxSubpixel.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.gq = sext i32 %i.gm to i64
  %i.gr = icmp slt i64 %indvars.iv.next96, %i.gq
  br i1 %i.gr, label %bb.f, label %._crit_edge.loopexit, !llvm.loop !871

._crit_edge.loopexit:                             ; preds = %bb.u
  %7 = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.155.lcssa = phi i32 [ %.05489, %bb.e ], [ %7, %._crit_edge.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.090, %bb.e ], [ %.2, %._crit_edge.loopexit ]
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge93, label %bb.b, !llvm.loop !872

._crit_edge93:                                    ; preds = %._crit_edge, %bb.a
  %.054.lcssa = phi i32 [ 0, %bb.a ], [ %.155.lcssa, %._crit_edge ]
  ret i32 %.054.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @stbtt__h_prefilter(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 2, 0) %4) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i64 0, ptr %i.a, align 8
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph148, label %._crit_edge149

.lr.ph148:                                        ; preds = %bb.a
  %i.c = sub i32 %1, %4
  %i.d = zext i32 %4 to i64
  %.not113 = icmp slt i32 %i.c, 0                 ; 5 uses
  %i.e = sext i32 %3 to i64
  %i.f = add i32 %1, 1
  %i.g = sub i32 %i.f, %4                         ; 12 uses
  %wide.trip.count = zext i32 %i.g to i64
  %wide.trip.count172 = zext i32 %i.g to i64
  %wide.trip.count182 = zext i32 %i.g to i64      ; 6 uses
  %i.h = add nsw i64 %wide.trip.count182, -1      ; 2 uses
  %xtraiter = and i64 %wide.trip.count182, 1
  %i.i = icmp eq i64 %i.h, 0
  %unroll_iter = and i64 %wide.trip.count182, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod215 = trunc i32 %i.g to i1
  %xtraiter216 = and i64 %wide.trip.count182, 1
  %i.j = icmp eq i64 %i.h, 0
  %unroll_iter220 = and i64 %wide.trip.count182, 4294967294
  %lcmp.mod217.not = icmp eq i64 %xtraiter216, 0
  %lcmp.mod219 = trunc i32 %i.g to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph148, %._crit_edge
  %.095146 = phi i32 [ 0, %.lr.ph148 ], [ %i.fn, %._crit_edge ]
  %.096144 = phi ptr [ %0, %.lr.ph148 ], [ %i.fm, %._crit_edge ] ; 13 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, i8 0, i64 %i.d, i1 false)
  switch i32 %4, label %.preheader [
    i32 2, label %.preheader105
    i32 3, label %.preheader107
    i32 4, label %.preheader109
    i32 5, label %.preheader111
  ]

.preheader111:                                    ; preds = %bb.b
  br i1 %.not113, label %.loopexit, label %.lr.ph

.preheader109:                                    ; preds = %bb.b
  br i1 %.not113, label %.loopexit, label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %.preheader109
  br i1 %i.i, label %.lr.ph120.epil.preheader, label %.lr.ph120

.preheader107:                                    ; preds = %bb.b
  br i1 %.not113, label %.loopexit, label %.lr.ph126

.preheader105:                                    ; preds = %bb.b
  br i1 %.not113, label %.loopexit, label %.lr.ph132.preheader

.lr.ph132.preheader:                              ; preds = %.preheader105
  br i1 %i.j, label %.lr.ph132.epil.preheader, label %.lr.ph132

.preheader:                                       ; preds = %bb.b
  br i1 %.not113, label %.loopexit, label %.lr.ph138

.lr.ph132:                                        ; preds = %.lr.ph132.preheader, %.lr.ph132
  %indvars.iv174 = phi i64 [ %indvars.iv.next175.1, %.lr.ph132 ], [ 0, %.lr.ph132.preheader ] ; 6 uses
  %.0131 = phi i32 [ %i.ag, %.lr.ph132 ], [ 0, %.lr.ph132.preheader ]
  %niter221 = phi i64 [ %niter221.next.1, %.lr.ph132 ], [ 0, %.lr.ph132.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv174 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !56    ; 2 uses
  %i.m = zext i8 %i.l to i32
  %i.n = and i64 %indvars.iv174, 6
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.n
  %i.p = load i8, ptr %i.o, align 2, !tbaa !56
  %i.q = zext i8 %i.p to i32
  %i.r = sub nsw i32 %i.m, %i.q
  %i.s = add i32 %i.r, %.0131                     ; 2 uses
  %i.t = add nuw i64 %indvars.iv174, 2
  %i.u = and i64 %i.t, 6
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.u
  store i8 %i.l, ptr %i.v, align 2, !tbaa !56
  %i.w = lshr i32 %i.s, 1
  %i.x = trunc i32 %i.w to i8
  store i8 %i.x, ptr %i.k, align 1, !tbaa !56
  %indvars.iv.next175 = or disjoint i64 %indvars.iv174, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv.next175 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !56    ; 2 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = and i64 %indvars.iv.next175, 7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !56
  %i.ae = zext i8 %i.ad to i32
  %i.af = sub nsw i32 %i.aa, %i.ae
  %i.ag = add i32 %i.af, %i.s                     ; 4 uses
  %i.ah = add nuw i64 %indvars.iv174, 3
  %i.ai = and i64 %i.ah, 7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ai
  store i8 %i.z, ptr %i.aj, align 1, !tbaa !56
  %i.ak = lshr i32 %i.ag, 1
  %i.al = trunc i32 %i.ak to i8
  store i8 %i.al, ptr %i.y, align 1, !tbaa !56
  %indvars.iv.next175.1 = add nuw nsw i64 %indvars.iv174, 2 ; 2 uses
  %niter221.next.1 = add nuw i64 %niter221, 2     ; 2 uses
  %niter221.ncmp.1 = icmp eq i64 %niter221.next.1, %unroll_iter220
  br i1 %niter221.ncmp.1, label %.loopexit.loopexit206.unr-lcssa, label %.lr.ph132, !llvm.loop !18

.lr.ph126:                                        ; preds = %.preheader107, %.lr.ph126
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %.lr.ph126 ], [ 0, %.preheader107 ] ; 4 uses
  %.1125 = phi i32 [ %i.au, %.lr.ph126 ], [ 0, %.preheader107 ]
  %i.am = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv169 ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !56  ; 2 uses
  %i.ao = zext i8 %i.an to i32
  %i.ap = and i64 %indvars.iv169, 7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !56
  %i.as = zext i8 %i.ar to i32
  %i.at = sub nsw i32 %i.ao, %i.as
  %i.au = add i32 %i.at, %.1125                   ; 3 uses
  %i.av = add nuw i64 %indvars.iv169, 3
  %i.aw = and i64 %i.av, 7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aw
  store i8 %i.an, ptr %i.ax, align 1, !tbaa !56
  %i.ay = udiv i32 %i.au, 3
  %i.az = trunc i32 %i.ay to i8
  store i8 %i.az, ptr %i.am, align 1, !tbaa !56
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next170, %wide.trip.count172
  br i1 %exitcond173.not, label %.loopexit, label %.lr.ph126, !llvm.loop !19

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %.lr.ph120
  %indvars.iv164 = phi i64 [ %indvars.iv.next165.1, %.lr.ph120 ], [ 0, %.lr.ph120.preheader ] ; 5 uses
  %.2119 = phi i32 [ %i.bx, %.lr.ph120 ], [ 0, %.lr.ph120.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph120 ], [ 0, %.lr.ph120.preheader ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv164 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !56  ; 2 uses
  %i.bc = zext i8 %i.bb to i32
  %i.bd = and i64 %indvars.iv164, 6
  %i.be = and i64 %indvars.iv164, 6
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !56
  %i.bh = zext i8 %i.bg to i32
  %i.bi = sub nsw i32 %i.bc, %i.bh
  %i.bj = add i32 %i.bi, %.2119                   ; 2 uses
  %i.bk = xor i64 %i.bd, 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk
  store i8 %i.bb, ptr %i.bl, align 2, !tbaa !56
  %i.bm = lshr i32 %i.bj, 2
  %i.bn = trunc i32 %i.bm to i8
  store i8 %i.bn, ptr %i.ba, align 1, !tbaa !56
  %indvars.iv.next165 = or disjoint i64 %indvars.iv164, 1 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv.next165 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !56  ; 2 uses
  %i.bq = zext i8 %i.bp to i32
  %i.br = and i64 %indvars.iv.next165, 7
  %i.bs = and i64 %indvars.iv.next165, 7
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !56
  %i.bv = zext i8 %i.bu to i32
  %i.bw = sub nsw i32 %i.bq, %i.bv
  %i.bx = add i32 %i.bw, %i.bj                    ; 4 uses
  %i.by = xor i64 %i.br, 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.by
  store i8 %i.bp, ptr %i.bz, align 1, !tbaa !56
  %i.ca = lshr i32 %i.bx, 2
  %i.cb = trunc i32 %i.ca to i8
  store i8 %i.cb, ptr %i.bo, align 1, !tbaa !56
  %indvars.iv.next165.1 = add nuw nsw i64 %indvars.iv164, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit208.unr-lcssa, label %.lr.ph120, !llvm.loop !20

.lr.ph:                                           ; preds = %.preheader111, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader111 ] ; 4 uses
  %.3115 = phi i32 [ %i.ck, %.lr.ph ], [ 0, %.preheader111 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.096144, i64 %indvars.iv ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !56  ; 2 uses
  %i.ce = zext i8 %i.cd to i32
  %i.cf = and i64 %indvars.iv, 7
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !56
  %i.ci = zext i8 %i.ch to i32
  %i.cj = sub nsw i32 %i.ce, %i.ci
  %i.ck = add i32 %i.cj, %.3115                   ; 3 uses
  %i.cl = add nuw i64 %indvars.iv, 5
  %i.cm = and i64 %i.cl, 7
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cm
  store i8 %i.cd, ptr %i.cn, align 1, !tbaa !56
  %i.co = udiv i32 %i.ck, 5
  %i.cp = trunc i32 %i.co to i8
  store i8 %i.cp, ptr %i.cc, align 1, !tbaa !56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@nk_font_atlas_bake:bb.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @nk_font_bake_pack(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef readonly captures(address) %5, i32 noundef %6, ptr noundef nonnull %7) unnamed_addr #17 {
bb.a:
  %8 = alloca %struct.stbrp_rect, align 4         ; 8 uses
  %i.a = icmp ne ptr %5, null
  %i.b = icmp ne i32 %6, 0
  %or.cond7 = and i1 %i.a, %i.b
  br i1 %or.cond7, label %.preheader196, label %.loopexit

.preheader196:                                    ; preds = %bb.a, %bb.c
  %.0156206 = phi i32 [ %i.af, %bb.c ], [ 0, %bb.a ]
  %.0161205 = phi ptr [ %i.ai, %bb.c ], [ %5, %bb.a ] ; 3 uses
  br label %bb.b

.preheader195:                                    ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %.preheader194

bb.b:                                             ; preds = %.preheader196, %nk_range_glyph_count.exit
  %.0158 = phi ptr [ %i.ah, %nk_range_glyph_count.exit ], [ %.0161205, %.preheader196 ] ; 2 uses
  %.1157 = phi i32 [ %i.af, %nk_range_glyph_count.exit ], [ %.0156206, %.preheader196 ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0158, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !337  ; 5 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %nk_range_glyph_count.exit, label %nk_range_count.exit

nk_range_count.exit:                              ; preds = %bb.b
  %wcslen.i = tail call i64 @wcslen(ptr noundef nonnull readonly dereferenceable(4) %i.e)
  %i.f = shl i64 %wcslen.i, 2
  %i.g = add i64 %i.f, 4
  %i.h = ashr exact i64 %i.g, 2
  %i.i = sdiv i64 %i.h, 2                         ; 3 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.preheader.i, label %nk_range_glyph_count.exit

.lr.ph.preheader.i:                               ; preds = %nk_range_count.exit
  %wide.trip.count.i = and i64 %i.i, 2147483647   ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.i, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi273 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %i.l = shl nuw nsw i64 %index, 3
  %i.m = shl i64 %index, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %wide.vec = load <8 x i32>, ptr %i.n, align 4, !tbaa !55 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec274 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec275 = load <8 x i32>, ptr %i.p, align 4, !tbaa !55 ; 2 uses
  %strided.vec276.a = shufflevector <8 x i32> %wide.vec275, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec277 = shufflevector <8 x i32> %wide.vec275, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.q = add <4 x i32> %vec.phi, splat (i32 1)
  %i.r = add <4 x i32> %vec.phi273, splat (i32 1)
  %i.s = sub <4 x i32> %i.q, %strided.vec
  %i.t = sub <4 x i32> %i.r, %strided.vec276.a
  %i.u = add <4 x i32> %i.s, %strided.vec274      ; 2 uses
  %i.v = add <4 x i32> %i.t, %strided.vec277      ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !959

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.v, %i.u
  %i.x = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %nk_range_glyph_count.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.01112.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.x, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01112.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %.01112.i.ph, %.lr.ph.i.preheader ]
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !55
  %i.ac = add i32 %.01112.i, 1
  %i.ad = sub i32 %i.ac, %i.z
  %i.ae = add i32 %i.ad, %i.ab                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %nk_range_glyph_count.exit, label %.lr.ph.i, !llvm.loop !960

nk_range_glyph_count.exit:                        ; preds = %.lr.ph.i, %middle.block, %bb.b, %nk_range_count.exit
  %.011.lcssa.i = phi i32 [ 0, %nk_range_count.exit ], [ 0, %bb.b ], [ %i.x, %middle.block ], [ %i.ae, %.lr.ph.i ]
  %i.af = add nsw i32 %.011.lcssa.i, %.1157       ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0158, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !338 ; 2 uses
  %.not188 = icmp eq ptr %i.ah, %.0161205
  br i1 %.not188, label %bb.c, label %bb.b, !llvm.loop !961

bb.c:                                             ; preds = %nk_range_glyph_count.exit
  %i.ai = load ptr, ptr %.0161205, align 8, !tbaa !356 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %.preheader195, label %.preheader196, !llvm.loop !962

.preheader194:                                    ; preds = %.preheader195, %bb.f
  %.0150209 = phi i64 [ 0, %.preheader195 ], [ %indvars.iv.next, %bb.f ]
  %.1162208 = phi ptr [ %5, %.preheader195 ], [ %i.ar, %bb.f ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader194, %bb.e
  %indvars.iv = phi i64 [ %.0150209, %.preheader194 ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.1159 = phi ptr [ %.1162208, %.preheader194 ], [ %i.aq, %bb.e ] ; 2 uses
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !369
  %i.ak = getelementptr inbounds [184 x i8], ptr %i.aj, i64 %indvars.iv ; 2 uses
  store ptr %7, ptr %i.ak, align 8, !tbaa !271
  %i.al = getelementptr inbounds nuw i8, ptr %.1159, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !352 ; 2 uses
  %i.an = tail call i32 @stbtt_GetFontOffsetForIndex(ptr noundef %i.am, i32 noundef 0)
  %i.ao = tail call i32 @stbtt_InitFont(ptr noundef nonnull %i.ak, ptr noundef %i.am, i32 noundef %i.an)
  %.not186.not = icmp eq i32 %i.ao, 0
  br i1 %.not186.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.1159, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !338 ; 2 uses
  %.not187 = icmp eq ptr %i.aq, %.1162208
  br i1 %.not187, label %bb.f, label %bb.d, !llvm.loop !963

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %.1162208, align 8, !tbaa !356 ; 2 uses
  %.not181 = icmp eq ptr %i.ar, null
  br i1 %.not181, label %.loopexit46.i.i.thread, label %.preheader194, !llvm.loop !964

.loopexit46.i.i.thread:                           ; preds = %bb.f
  store i32 0, ptr %3, align 4, !tbaa !55
  %i.as = icmp sgt i32 %i.af, 1000
  %i.at = select i1 %i.as, i32 1024, i32 512      ; 2 uses
  store i32 %i.at, ptr %2, align 4, !tbaa !55
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = tail call i32 @stbtt_PackBegin(ptr noundef nonnull %i.au, ptr noundef null, i32 noundef %i.at, i32 noundef 32768, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %7) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i64 24, i1 false), !tbaa !55
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !970
  %i.ay = sext i16 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !258
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !971
  %i.bc = sext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !259
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store i32 1, ptr %i.be, align 4, !tbaa !310
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i32 1, ptr %i.bf, align 8, !tbaa !311
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !972
  %i.bi = call i32 @stbrp_pack_rects(ptr noundef %i.bh, ptr noundef nonnull %8, i32 noundef 1) ; 0 uses
  %i.bj = load i32, ptr %3, align 4, !tbaa !55
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !261 ; 2 uses
  %i.bm = load i32, ptr %i.bd, align 4, !tbaa !259 ; 2 uses
  %i.bn = add nsw i32 %i.bm, %i.bl
  %i.bo = call i32 @llvm.smax.i32(i32 %i.bj, i32 %i.bn) ; 2 uses
  store i32 %i.bo, ptr %3, align 4, !tbaa !55
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !260
  %i.br = trunc i32 %i.bq to i16
  store i16 %i.br, ptr %4, align 2, !tbaa !973
  %i.bs = trunc i32 %i.bl to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !974
  %i.bu = load i32, ptr %i.az, align 4, !tbaa !258
  %i.bv = trunc i32 %i.bu to i16
  store i16 %i.bv, ptr %i.aw, align 2, !tbaa !970
  %i.bw = trunc i32 %i.bm to i16
  store i16 %i.bw, ptr %i.ba, align 2, !tbaa !971
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  %i.bx = icmp sgt i32 %6, 0
  br i1 %i.bx, label %.preheader.lr.ph, label %._crit_edge230

.preheader.lr.ph:                                 ; preds = %.loopexit46.i.i.thread
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.s
  %.0142229 = phi i32 [ 0, %.preheader.lr.ph ], [ %.2.lcssa, %bb.s ]
  %.0143228 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.dp, %bb.s ]
  %.0145227 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.cu, %bb.s ]
  %.0147226 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next249, %bb.s ]
  %.2163225 = phi ptr [ %5, %.preheader.lr.ph ], [ %i.fi, %bb.s ] ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %._crit_edge224
  %indvars.iv248 = phi i64 [ %.0147226, %.preheader ], [ %indvars.iv.next249, %._crit_edge224 ] ; 2 uses
  %.2160 = phi ptr [ %.2163225, %.preheader ], [ %i.fh, %._crit_edge224 ] ; 5 uses
  %.1146 = phi i32 [ %.0145227, %.preheader ], [ %i.cu, %._crit_edge224 ] ; 2 uses
  %.1144 = phi i32 [ %.0143228, %.preheader ], [ %i.dp, %._crit_edge224 ] ; 2 uses
  %.1 = phi i32 [ %.0142229, %.preheader ], [ %.2.lcssa, %._crit_edge224 ] ; 2 uses
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !369
  %indvars.iv.next249 = add nsw i64 %indvars.iv248, 1 ; 3 uses
  %i.cc = getelementptr inbounds [184 x i8], ptr %i.cb, i64 %indvars.iv248 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.2160, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !337 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !55 ; 2 uses
  %.not182210 = icmp eq i32 %i.cf, 0
  br i1 %.not182210, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %i.cg = phi i32 [ %i.co, %bb.h ], [ %i.cf, %bb.g ]
  %.0213 = phi ptr [ %i.cn, %bb.h ], [ %i.ce, %bb.g ] ; 2 uses
  %.0141212 = phi i32 [ %i.cl, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %.0153211 = phi i32 [ %i.cm, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0213, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !55 ; 2 uses
  %.not183 = icmp eq i32 %i.ci, 0
  br i1 %.not183, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.cj = add i32 %.0141212, 1
  %i.ck = sub i32 %i.cj, %i.cg
  %i.cl = add i32 %i.ck, %i.ci                    ; 2 uses
  %i.cm = add nuw nsw i32 %.0153211, 1            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0213, i64 8 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !55 ; 2 uses
  %.not182 = icmp eq i32 %i.co, 0
  br i1 %.not182, label %.critedge, label %.lr.ph, !llvm.loop !965

.critedge:                                        ; preds = %.lr.ph, %bb.h, %bb.g
  %.0153.lcssa = phi i32 [ 0, %bb.g ], [ %i.cm, %bb.h ], [ %.0153211, %.lr.ph ] ; 5 uses
  %.0141.lcssa = phi i32 [ 0, %bb.g ], [ %i.cl, %bb.h ], [ %.0141212, %.lr.ph ]
  %i.cp = load ptr, ptr %i.by, align 8, !tbaa !372
  %i.cq = sext i32 %.1146 to i64
  %i.cr = getelementptr inbounds [40 x i8], ptr %i.cp, i64 %i.cq ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 168
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !377
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cc, i64 176
  store i32 %.0153.lcssa, ptr %i.ct, align 8, !tbaa !378
  %i.cu = add nsw i32 %.0153.lcssa, %.1146        ; 2 uses
  %.not231 = icmp eq i32 %.0153.lcssa, 0
  br i1 %.not231, label %._crit_edge, label %.lr.ph220

.lr.ph220:                                        ; preds = %.critedge
  %i.cv = getelementptr inbounds nuw i8, ptr %.2160, i64 32
  %i.cw = load float, ptr %i.cv, align 8, !tbaa !339
  %i.cx = load ptr, ptr %i.ca, align 8, !tbaa !370
  %wide.trip.count = zext i32 %.0153.lcssa to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph220, %bb.i
  %indvars.iv240 = phi i64 [ 0, %.lr.ph220 ], [ %indvars.iv.next241, %bb.i ] ; 3 uses
  %.2219 = phi i32 [ %.1, %.lr.ph220 ], [ %i.dk, %bb.i ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv240, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx ; 2 uses
  %i.cz = getelementptr inbounds nuw [40 x i8], ptr %i.cr, i64 %indvars.iv240 ; 4 uses
  store float %i.cw, ptr %i.cz, align 8, !tbaa !315
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !55 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store i32 %i.da, ptr %i.db, align 4, !tbaa !318
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !55
  %i.de = sub i32 %i.dd, %i.da
  %i.df = add nsw i32 %i.de, 1                    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i32 %i.df, ptr %i.dg, align 8, !tbaa !316
  %i.dh = sext i32 %.2219 to i64
  %i.di = getelementptr inbounds [28 x i8], ptr %i.cx, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !319
  %i.dk = add nsw i32 %i.df, %.2219               ; 2 uses
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next241, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !966

._crit_edge:                                      ; preds = %bb.i, %.critedge
  %.2.lcssa = phi i32 [ %.1, %.critedge ], [ %i.dk, %bb.i ] ; 2 uses
  %i.dl = load ptr, ptr %i.bz, align 8, !tbaa !371
  %i.dm = sext i32 %.1144 to i64
  %i.dn = getelementptr inbounds [24 x i8], ptr %i.dl, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cc, i64 160 ; 3 uses
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !379
  %i.dp = add nsw i32 %.0141.lcssa, %.1144        ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.2160, i64 28
  %i.dr = load i8, ptr %i.dq, align 4, !tbaa !340 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.2160, i64 27
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !341 ; 2 uses
  %i.du = zext nneg i8 %i.dt to i32
  %i.dv = icmp ult i8 %i.dr, 9
  br i1 %i.dv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.dw = zext nneg i8 %i.dr to i32
  store i32 %i.dw, ptr %i.be, align 4, !tbaa !310
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.dx = icmp ult i8 %i.dt, 9
  br i1 %i.dx, label %bb.l, label %stbtt_PackSetOversampling.exit

bb.l:                                             ; preds = %bb.k
  store i32 %i.du, ptr %i.bf, align 8, !tbaa !311
  br label %stbtt_PackSetOversampling.exit

stbtt_PackSetOversampling.exit:                   ; preds = %bb.k, %bb.l
  %i.dy = call i32 @stbtt_PackFontRangesGatherRects(ptr noundef nonnull %i.au, ptr noundef nonnull %i.cc, ptr noundef %i.cr, i32 noundef %.0153.lcssa, ptr noundef %i.dn) ; 5 uses
  %i.dz = load ptr, ptr %i.bg, align 8, !tbaa !972
  %i.ea = load ptr, ptr %i.do, align 8, !tbaa !379
  %i.eb = call i32 @stbrp_pack_rects(ptr noundef %i.dz, ptr noundef %i.ea, i32 noundef %i.dy) ; 0 uses
  %i.ec = icmp sgt i32 %i.dy, 0
  br i1 %i.ec, label %.lr.ph223, label %._crit_edge224

.lr.ph223:                                        ; preds = %stbtt_PackSetOversampling.exit
  %i.ed = load ptr, ptr %i.do, align 8, !tbaa !379 ; 3 uses
  %wide.trip.count246 = zext nneg i32 %i.dy to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count246, 1
  %i.ee = icmp eq i32 %i.dy, 1
  br i1 %i.ee, label %.epil.preheader, label %.lr.ph223.new

.lr.ph223.new:                                    ; preds = %.lr.ph223
  %unroll_iter = and i64 %wide.trip.count246, 2147483646
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %.lr.ph223.new
  %indvars.iv243 = phi i64 [ 0, %.lr.ph223.new ], [ %indvars.iv.next244.1, %bb.q ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph223.new ], [ %niter.next.1, %bb.q ]
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %indvars.iv243 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 20
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !257
  %.not185 = icmp eq i32 %i.eh, 0
  br i1 %.not185, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ei = load i32, ptr %3, align 4, !tbaa !55
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !261
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.em = load i32, ptr %i.el, align 4, !tbaa !259
  %i.en = add nsw i32 %i.em, %i.ek
  %. = call i32 @llvm.smax.i32(i32 %i.ei, i32 %i.en)
  store i32 %., ptr %3, align 4, !tbaa !55
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %indvars.iv243 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 44
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !257
  %.not185.1 = icmp eq i32 %i.eq, 0
  br i1 %.not185.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.er = load i32, ptr %3, align 4, !tbaa !55
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.et = load i32, ptr %i.es, align 4, !tbaa !261
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !259
  %i.ew = add nsw i32 %i.ev, %i.et
  %..1 = call i32 @llvm.smax.i32(i32 %i.er, i32 %i.ew)
  store i32 %..1, ptr %3, align 4, !tbaa !55
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.next244.1 = add nuw nsw i64 %indvars.iv243, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge224.loopexit.unr-lcssa, label %bb.m, !llvm.loop !967

._crit_edge224.loopexit.unr-lcssa:                ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge224, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge224.loopexit.unr-lcssa, %.lr.ph223
  %indvars.iv243.epil.init = phi i64 [ 0, %.lr.ph223 ], [ %indvars.iv.next244.1, %._crit_edge224.loopexit.unr-lcssa ]
  %lcmp.mod284 = trunc i32 %i.dy to i1
  call void @llvm.assume(i1 %lcmp.mod284)
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %indvars.iv243.epil.init ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 20
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !257
  %.not185.epil = icmp eq i32 %i.ez, 0
  br i1 %.not185.epil, label %._crit_edge224, label %bb.r

bb.r:                                             ; preds = %.epil.preheader
  %i.fa = load i32, ptr %3, align 4, !tbaa !55
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !261
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !259
  %i.ff = add nsw i32 %i.fe, %i.fc
  %..epil = call i32 @llvm.smax.i32(i32 %i.fa, i32 %i.ff)
  store i32 %..epil, ptr %3, align 4, !tbaa !55
  br label %._crit_edge224

._crit_edge224:                                   ; preds = %._crit_edge224.loopexit.unr-lcssa, %bb.r, %.epil.preheader, %stbtt_PackSetOversampling.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %.2160, i64 72
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !338 ; 2 uses
  %.not184 = icmp eq ptr %i.fh, %.2163225
  br i1 %.not184, label %bb.s, label %bb.g, !llvm.loop !968

bb.s:                                             ; preds = %._crit_edge224
  %9 = trunc nsw i64 %indvars.iv.next249 to i32
  %i.fi = load ptr, ptr %.2163225, align 8, !tbaa !356 ; 2 uses
  %10 = icmp sgt i32 %6, %9
  %i.fj = icmp ne ptr %i.fi, null
  %i.fk = select i1 %10, i1 %i.fj, i1 false
  br i1 %i.fk, label %.preheader, label %._crit_edge230.loopexit, !llvm.loop !969

._crit_edge230.loopexit:                          ; preds = %bb.s
  %.pre = load i32, ptr %3, align 4, !tbaa !55
  br label %._crit_edge230

._crit_edge230:                                   ; preds = %._crit_edge230.loopexit, %.loopexit46.i.i.thread
  %i.fl = phi i32 [ %.pre, %._crit_edge230.loopexit ], [ %i.bo, %.loopexit46.i.i.thread ]
  %i.fm = add i32 %i.fl, -1                       ; 2 uses
  %i.fn = lshr i32 %i.fm, 1
  %i.fo = or i32 %i.fn, %i.fm                     ; 2 uses
  %i.fp = lshr i32 %i.fo, 2
  %i.fq = or i32 %i.fp, %i.fo                     ; 2 uses
  %i.fr = lshr i32 %i.fq, 4
  %i.fs = or i32 %i.fr, %i.fq                     ; 2 uses
  %i.ft = lshr i32 %i.fs, 8
  %i.fu = or i32 %i.ft, %i.fs                     ; 2 uses
  %i.fv = lshr i32 %i.fu, 16
  %i.fw = or i32 %i.fv, %i.fu
  %i.fx = add i32 %i.fw, 1                        ; 2 uses
  store i32 %i.fx, ptr %3, align 4, !tbaa !55
  %i.fy = load i32, ptr %2, align 4, !tbaa !55
  %i.fz = sext i32 %i.fy to i64
  %i.ga = sext i32 %i.fx to i64
  %i.gb = mul nsw i64 %i.ga, %i.fz
  store i64 %i.gb, ptr %1, align 8, !tbaa !79
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.a, %._crit_edge230
  %.3167 = phi i32 [ 0, %bb.a ], [ 1, %._crit_edge230 ], [ 0, %bb.d ]
  ret i32 %.3167
}

; Function Attrs: nounwind uwtable
define internal fastcc void @nk_font_bake(ptr nofree noundef captures(none) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef %5, ptr nofree noundef readonly captures(address) %6, i32 noundef %7) unnamed_addr #17 {
bb.a:
  %i.a = icmp ne i32 %2, 0
  %i.b = icmp ne i32 %3, 0
  %or.cond3 = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %6, null
  %or.cond5 = and i1 %or.cond3, %i.c
  %i.d = icmp ne i32 %7, 0
  %or.cond7 = and i1 %or.cond5, %i.d
  %i.e = icmp ne ptr %4, null
  %or.cond9 = and i1 %i.e, %or.cond7
  %i.f = icmp ne i32 %5, 0
  %or.cond11 = and i1 %i.f, %or.cond9
  br i1 %or.cond11, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %2 to i64
  %i.h = sext i32 %3 to i64
  %i.i = mul nsw i64 %i.h, %i.g                   ; 4 uses
  %i.j = icmp ult i64 %i.i, 12
  br i1 %i.j, label %.lr.ph.preheader.i.i, label %bb.c

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 range(i64 0, 12) %i.i, i1 false), !tbaa !56
  br label %nk_zero.exit

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64
  %i.l = and i64 %i.k, 3                          ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %.loopexit46.i.i, label %.loopexit46.loopexit.i.i

.loopexit46.loopexit.i.i:                         ; preds = %bb.c
  %i.m = sub nuw nsw i64 4, %i.l                  ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, i8 0, i64 range(i64 0, 4) %i.m, i1 false), !tbaa !56
  %i.n = sub nuw nsw i64 %i.i, %i.m
  %scevgep.i.i = getelementptr i8, ptr %1, i64 %i.m
  br label %.loopexit46.i.i

.loopexit46.i.i:                                  ; preds = %.loopexit46.loopexit.i.i, %bb.c
  %.132.i.i = phi i64 [ %i.i, %bb.c ], [ %i.n, %.loopexit46.loopexit.i.i ] ; 2 uses
  %.230.i.i = phi ptr [ %1, %bb.c ], [ %scevgep.i.i, %.loopexit46.loopexit.i.i ] ; 2 uses
  %i.o = and i64 %.132.i.i, -4                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %.230.i.i, i8 0, i64 %i.o, i1 false), !tbaa !55
  %i.p = and i64 %.132.i.i, 3                     ; 2 uses
  %.not41.i.i = icmp eq i64 %i.p, 0
  br i1 %.not41.i.i, label %nk_zero.exit, label %.preheader44.preheader.i.i

.preheader44.preheader.i.i:                       ; preds = %.loopexit46.i.i
  %scevgep53.i.i = getelementptr i8, ptr %.230.i.i, i64 %i.o
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep53.i.i, i8 0, i64 range(i64 0, 4) %i.p, i1 false), !tbaa !56
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.lr.ph.preheader.i.i, %.loopexit46.i.i, %.preheader44.preheader.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.r, align 8, !tbaa !982
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %3, ptr %i.s, align 4, !tbaa !983
  %i.t = icmp sgt i32 %7, 0                       ; 2 uses
  br i1 %i.t, label %.preheader160.lr.ph, label %._crit_edge

.preheader160.lr.ph:                              ; preds = %nk_zero.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %.preheader160

.preheader160:                                    ; preds = %.preheader160.lr.ph, %bb.h
  %.0133164 = phi i64 [ 0, %.preheader160.lr.ph ], [ %indvars.iv.next, %bb.h ]
  %.0139163 = phi ptr [ %6, %.preheader160.lr.ph ], [ %i.aq, %bb.h ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader160, %stbtt_PackSetOversampling.exit
  %indvars.iv = phi i64 [ %.0133164, %.preheader160 ], [ %indvars.iv.next, %stbtt_PackSetOversampling.exit ] ; 2 uses
  %.0137 = phi ptr [ %.0139163, %.preheader160 ], [ %i.ap, %stbtt_PackSetOversampling.exit ] ; 3 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !369
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.y = getelementptr inbounds [184 x i8], ptr %i.x, i64 %indvars.iv ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0137, i64 28
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !340  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0137, i64 27
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !341 ; 2 uses
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = icmp ult i8 %i.aa, 9
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = zext nneg i8 %i.aa to i32
  store i32 %i.af, ptr %i.v, align 4, !tbaa !310
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = icmp ult i8 %i.ac, 9
  br i1 %i.ag, label %bb.g, label %stbtt_PackSetOversampling.exit

bb.g:                                             ; preds = %bb.f
  store i32 %i.ad, ptr %i.w, align 8, !tbaa !311
  br label %stbtt_PackSetOversampling.exit

stbtt_PackSetOversampling.exit:                   ; preds = %bb.f, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 168
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !377
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 176
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !378
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 160
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !379
  %i.an = tail call i32 @stbtt_PackFontRangesRenderIntoRects(ptr noundef nonnull %i.q, ptr noundef %i.y, ptr noundef %i.ai, i32 noundef %i.ak, ptr noundef %i.am) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0137, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !338 ; 2 uses
  %.not146 = icmp eq ptr %i.ap, %.0139163
  br i1 %.not146, label %bb.h, label %bb.d, !llvm.loop !975

bb.h:                                             ; preds = %stbtt_PackSetOversampling.exit
  %8 = trunc nsw i64 %indvars.iv.next to i32
  %i.aq = load ptr, ptr %.0139163, align 8, !tbaa !356 ; 2 uses
  %9 = icmp sgt i32 %7, %8
  %i.ar = icmp ne ptr %i.aq, null
  %i.as = select i1 %9, i1 %i.ar, i1 false
  br i1 %i.as, label %.preheader160, label %._crit_edge, !llvm.loop !976

._crit_edge:                                      ; preds = %bb.h, %nk_zero.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !307
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !304 ; 2 uses
  %.val5.i = load ptr, ptr %i.av, align 8
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %.val6.i = load ptr, ptr %i.aw, align 8, !tbaa !278
  tail call void %.val6.i(ptr %.val5.i, ptr noundef %i.au) #50, !inline_history !977
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !306
  %i.az = load ptr, ptr %i.q, align 8, !tbaa !304 ; 2 uses
  %.val.i = load ptr, ptr %i.az, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %.val4.i = load ptr, ptr %i.ba, align 8, !tbaa !278
  tail call void %.val4.i(ptr %.val.i, ptr noundef %i.ay) #50, !inline_history !977
  br i1 %i.t, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !369
  %i.bd = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.be = insertelement <2 x i32> %i.bd, i32 %3, i64 1
  %i.bf = sitofp <2 x i32> %i.be to <2 x float>   ; 2 uses
  %i.bg = fdiv nnan <2 x float> splat (float 1.000000e+00), %i.bf
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bi = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.n
  %.2177 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next188, %bb.n ]
  %.0135176 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.fn, %bb.n ]
  %.1140175 = phi ptr [ %6, %.preheader.lr.ph ], [ %i.fq, %bb.n ] ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %._crit_edge173
  %indvars.iv187 = phi i64 [ %.2177, %.preheader ], [ %indvars.iv.next188, %._crit_edge173 ] ; 2 uses
  %.1138 = phi ptr [ %.1140175, %.preheader ], [ %i.fp, %._crit_edge173 ] ; 8 uses
  %.1136.a = phi i32 [ %.0135176, %.preheader ], [ %i.fn, %._crit_edge173 ] ; 2 uses
  %indvars.iv.next188 = add nsw i64 %indvars.iv187, 1 ; 3 uses
  %i.bj = getelementptr inbounds [184 x i8], ptr %i.bc, i64 %indvars.iv187 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.1138, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !359 ; 9 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1138, i64 25
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !354
  %.not = icmp eq i8 %i.bn, 0
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.1138, i64 32
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !339 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !264
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !282
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %i.br, i64 %i.bu ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bx = getelementptr i8, ptr %i.bv, i64 5
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 6
  %i.bz = getelementptr i8, ptr %i.bv, i64 7
  %i.ca = getelementptr inbounds nuw i8, ptr %.1138, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !337
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %.val6.i147 = load i8, ptr %i.bw, align 1, !tbaa !56
  %i.ce = zext i8 %.val6.i147 to i16
  %i.cf = shl nuw i16 %i.ce, 8
  %.val7.i = load i8, ptr %i.bx, align 1, !tbaa !56
  %i.cg = zext i8 %.val7.i to i16
  %i.ch = or disjoint i16 %i.cf, %i.cg            ; 2 uses
  %i.ci = sext i16 %i.ch to i32
  %.val.i148 = load i8, ptr %i.by, align 1, !tbaa !56
  %i.cj = zext i8 %.val.i148 to i16
  %i.ck = shl nuw i16 %i.cj, 8
  %.val5.i149 = load i8, ptr %i.bz, align 1, !tbaa !56
  %i.cl = zext i8 %.val5.i149 to i16
  %i.cm = or disjoint i16 %i.ck, %i.cl            ; 2 uses
  %i.cn = sext i16 %i.cm to i32
  %i.co = sub nsw i32 %i.ci, %i.cn
  %i.cp = sitofp i32 %i.co to float
  %i.cq = fdiv float %i.bp, %i.cp
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !984
  store float %i.bp, ptr %i.bl, align 8, !tbaa !985
  %i.cr = insertelement <2 x i16> poison, i16 %i.ch, i64 0
  %i.cs = insertelement <2 x i16> %i.cr, i16 %i.cm, i64 1
  %i.ct = sitofp <2 x i16> %i.cs to <2 x float>
  %i.cu = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = fmul <2 x float> %i.cv, %i.ct
  store <2 x float> %i.cw, ptr %i.cd, align 4, !tbaa !54
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 %.1136.a, ptr %i.cx, align 4, !tbaa !375
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i32 0, ptr %i.cy, align 8, !tbaa !986
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bj, i64 176
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !378 ; 2 uses
  %i.db = zext i32 %i.da to i64
  %.not178 = icmp eq i32 %i.da, 0
  br i1 %.not178, label %._crit_edge173, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.k
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bj, i64 168
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !377
  %i.de = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.df = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %.1138, i64 36
  %i.di = getelementptr inbounds nuw i8, ptr %.1138, i64 40
  %i.dj = getelementptr inbounds nuw i8, ptr %.1138, i64 26
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph172, %._crit_edge168
  %.0170 = phi i32 [ 0, %.lr.ph172 ], [ %.1.lcssa, %._crit_edge168 ] ; 2 uses
  %.0132169 = phi i64 [ 0, %.lr.ph172 ], [ %i.fj, %._crit_edge168 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [40 x i8], ptr %i.dd, i64 %.0132169 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !316 ; 2 uses
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %.lr.ph, label %._crit_edge168

.lr.ph:                                           ; preds = %bb.l
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !319
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !318
  %i.ds = load i32, ptr %i.de, align 4, !tbaa !375
  %i.dt = load i32, ptr %i.df, align 8, !tbaa !986
  %invariant.op = add i32 %i.ds, %i.dt
  %i.du = load float, ptr %i.dg, align 4, !tbaa !987
  %i.dv = fadd float %i.du, 5.000000e-01
  %i.dw = load i32, ptr %i.dh, align 4, !tbaa !342
  %i.dx = icmp eq i32 %i.dw, 1
  %i.dy = load float, ptr %i.di, align 8, !tbaa !988
  %i.dz = load i8, ptr %i.dj, align 2, !tbaa !989
  %.not145 = icmp eq i8 %i.dz, 0
  %wide.trip.count = zext nneg i32 %i.dm to i64
  %i.ea = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float poison>, float %i.dv, i64 1
  %i.eb = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv183 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next184, %bb.m ] ; 3 uses
  %.1166 = phi i32 [ %.0170, %.lr.ph ], [ %i.fi, %bb.m ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [28 x i8], ptr %i.dp, i64 %indvars.iv183 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 20
  %i.ef = load <4 x i16>, ptr %i.ec, align 4, !tbaa !106
  %i.eg = uitofp <4 x i16> %i.ef to <4 x float>
  %i.eh = fmul <4 x float> %i.bh, %i.eg           ; 2 uses
  %.reass = add i32 %.1166, %invariant.op
  %i.ei = zext i32 %.reass to i64
  %i.ej = getelementptr inbounds nuw [48 x i8], ptr %4, i64 %i.ei ; 5 uses
  %i.ek = trunc i64 %indvars.iv183 to i32
  %i.el = add i32 %i.dr, %i.ek
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !990
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.en = load <2 x float>, ptr %i.ed, align 4, !tbaa !54
  %i.eo = load <2 x float>, ptr %i.ee, align 4, !tbaa !54
  %i.ep = shufflevector <2 x float> %i.en, <2 x float> %i.eo, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eq = fadd <4 x float> %i.ep, <float -0.000000e+00, float 0.000000e+00, float -0.000000e+00, float 0.000000e+00>
  %i.er = fadd <4 x float> %i.eq, %i.eb           ; 3 uses
  store <4 x float> %i.er, ptr %i.em, align 4, !tbaa !54
  %i.es = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.et = shufflevector <4 x float> %i.er, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.eu = shufflevector <4 x float> %i.er, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ev = fsub <2 x float> %i.et, %i.eu           ; 2 uses
  %i.ew = fadd <2 x float> %i.ev, <float 5.000000e-01, float poison>
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> %i.ev, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ex, ptr %i.es, align 4, !tbaa !54
  %i.ey = fmul <4 x float> %i.eh, %i.bi
  %i.ez = select i1 %i.dx, <4 x float> %i.ey, <4 x float> %i.eh
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  store <4 x float> %i.ez, ptr %i.fa, align 4, !tbaa !54
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !326
  %i.fd = fadd float %i.fc, %i.dy                 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.ff = fadd float %i.fd, 5.000000e-01
  %i.fg = fptosi float %i.ff to i32
  %i.fh = sitofp i32 %i.fg to float
  %storemerge = select i1 %.not145, float %i.fd, float %i.fh
  store float %storemerge, ptr %i.fe, align 4, !tbaa !381
  %i.fi = add i32 %.1166, 1                       ; 2 uses
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next184, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge168, label %bb.m, !llvm.loop !978

._crit_edge168:                                   ; preds = %bb.m, %bb.l
  %.1.lcssa = phi i32 [ %.0170, %bb.l ], [ %i.fi, %bb.m ] ; 2 uses
  %i.fj = add nuw nsw i64 %.0132169, 1            ; 2 uses
  %exitcond186.not = icmp eq i64 %i.fj, %i.db
  br i1 %exitcond186.not, label %._crit_edge173, label %bb.l, !llvm.loop !979

._crit_edge173:                                   ; preds = %._crit_edge168, %bb.k
  %.0.lcssa = phi i32 [ 0, %bb.k ], [ %.1.lcssa, %._crit_edge168 ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !986
  %i.fm = add i32 %i.fl, %.0.lcssa
  store i32 %i.fm, ptr %i.fk, align 8, !tbaa !986
  %i.fn = add i32 %.0.lcssa, %.1136.a             ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.1138, i64 72
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !338 ; 2 uses
  %.not144 = icmp eq ptr %i.fp, %.1140175
  br i1 %.not144, label %bb.n, label %bb.i, !llvm.loop !980

bb.n:                                             ; preds = %._crit_edge173
  %10 = trunc nsw i64 %indvars.iv.next188 to i32
  %i.fq = load ptr, ptr %.1140175, align 8, !tbaa !356 ; 2 uses
  %11 = icmp sgt i32 %7, %10
  %i.fr = icmp ne ptr %i.fq, null
  %i.fs = select i1 %11, i1 %i.fr, i1 false
  br i1 %i.fs, label %.preheader, label %.loopexit, !llvm.loop !981

.loopexit:                                        ; preds = %bb.n, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @nk_font_bake_custom_data(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i64 %3) unnamed_addr #13 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne i32 %2, 0
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %.preheader1, label %.loopexit

.preheader1:                                      ; preds = %bb.a
  %.sroa.2.0.extract.shift = lshr i64 %3, 16
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.extract.shift to i16
  %.sroa.0.0.extract.trunc = trunc i64 %3 to i16
  %i.d = sext i16 %.sroa.0.0.extract.trunc to i32
  %i.e = sext i16 %.sroa.2.0.extract.trunc to i32
  br label %iter.check

iter.check:                                       ; preds = %.preheader1, %.loopexit6
  %.05 = phi i32 [ 0, %.preheader1 ], [ %i.dx, %.loopexit6 ] ; 2 uses
  %.0314 = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next.1, %.loopexit6 ] ; 8 uses
  %i.f = add nsw i32 %.05, %i.e
  %i.g = mul nsw i32 %i.f, %1
  %i.h = add i32 %i.g, %i.d                       ; 9 uses
  %i.i = icmp sgt i32 %i.h, 2147483558
  br i1 %i.i, label %vec.epilog.scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %iter.check
  %i.j = getelementptr i8, ptr @nk_custom_cursor_data, i64 %.0314 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %wide.load = load <8 x i8>, ptr %i.j, align 1, !tbaa !56 ; 2 uses
  %wide.load1 = load <8 x i8>, ptr %i.k, align 1, !tbaa !56 ; 2 uses
  %i.l = icmp eq <8 x i8> %wide.load, splat (i8 46)
  %i.m = icmp eq <8 x i8> %wide.load1, splat (i8 46)
  %i.n = sext <8 x i1> %i.l to <8 x i8>
  %i.o = sext <8 x i1> %i.m to <8 x i8>
  %i.p = sext i32 %i.h to i64
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store <8 x i8> %i.n, ptr %i.q, align 1, !tbaa !56
  store <8 x i8> %i.o, ptr %i.r, align 1, !tbaa !56
  %i.s = icmp eq <8 x i8> %wide.load, splat (i8 88)
  %i.t = icmp eq <8 x i8> %wide.load1, splat (i8 88)
  %i.u = sext <8 x i1> %i.s to <8 x i8>
  %i.v = sext <8 x i1> %i.t to <8 x i8>
  %i.w = getelementptr i8, ptr %i.q, i64 91
  %i.x = getelementptr i8, ptr %i.q, i64 99
  store <8 x i8> %i.u, ptr %i.w, align 1, !tbaa !56
  store <8 x i8> %i.v, ptr %i.x, align 1, !tbaa !56
  %i.y = add i32 %i.h, 16
  %i.z = getelementptr i8, ptr @nk_custom_cursor_data, i64 %.0314 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %i.ab = getelementptr i8, ptr %i.z, i64 24
  %wide.load.1 = load <8 x i8>, ptr %i.aa, align 1, !tbaa !56 ; 2 uses
  %wide.load1.1 = load <8 x i8>, ptr %i.ab, align 1, !tbaa !56 ; 2 uses
  %i.ac = icmp eq <8 x i8> %wide.load.1, splat (i8 46)
  %i.ad = icmp eq <8 x i8> %wide.load1.1, splat (i8 46)
  %i.ae = sext <8 x i1> %i.ac to <8 x i8>
  %i.af = sext <8 x i1> %i.ad to <8 x i8>
  %i.ag = sext i32 %i.y to i64
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %i.ag ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store <8 x i8> %i.ae, ptr %i.ah, align 1, !tbaa !56
  store <8 x i8> %i.af, ptr %i.ai, align 1, !tbaa !56
  %i.aj = icmp eq <8 x i8> %wide.load.1, splat (i8 88)
  %i.ak = icmp eq <8 x i8> %wide.load1.1, splat (i8 88)
  %i.al = sext <8 x i1> %i.aj to <8 x i8>
  %i.am = sext <8 x i1> %i.ak to <8 x i8>
  %i.an = getelementptr i8, ptr %i.ah, i64 91
  %i.ao = getelementptr i8, ptr %i.ah, i64 99
  store <8 x i8> %i.al, ptr %i.an, align 1, !tbaa !56
  store <8 x i8> %i.am, ptr %i.ao, align 1, !tbaa !56
  %i.ap = add i32 %i.h, 32
  %i.aq = getelementptr i8, ptr @nk_custom_cursor_data, i64 %.0314 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 32
  %i.as = getelementptr i8, ptr %i.aq, i64 40
  %wide.load.2 = load <8 x i8>, ptr %i.ar, align 1, !tbaa !56 ; 2 uses
  %wide.load1.2 = load <8 x i8>, ptr %i.as, align 1, !tbaa !56 ; 2 uses
  %i.at = icmp eq <8 x i8> %wide.load.2, splat (i8 46)
  %i.au = icmp eq <8 x i8> %wide.load1.2, splat (i8 46)
  %i.av = sext <8 x i1> %i.at to <8 x i8>
  %i.aw = sext <8 x i1> %i.au to <8 x i8>
  %i.ax = sext i32 %i.ap to i64
  %i.ay = getelementptr inbounds i8, ptr %0, i64 %i.ax ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store <8 x i8> %i.av, ptr %i.ay, align 1, !tbaa !56
  store <8 x i8> %i.aw, ptr %i.az, align 1, !tbaa !56
  %i.ba = icmp eq <8 x i8> %wide.load.2, splat (i8 88)
  %i.bb = icmp eq <8 x i8> %wide.load1.2, splat (i8 88)
  %i.bc = sext <8 x i1> %i.ba to <8 x i8>
  %i.bd = sext <8 x i1> %i.bb to <8 x i8>
  %i.be = getelementptr i8, ptr %i.ay, i64 91
  %i.bf = getelementptr i8, ptr %i.ay, i64 99
  store <8 x i8> %i.bc, ptr %i.be, align 1, !tbaa !56
  store <8 x i8> %i.bd, ptr %i.bf, align 1, !tbaa !56
  %i.bg = add i32 %i.h, 48
  %i.bh = getelementptr i8, ptr @nk_custom_cursor_data, i64 %.0314 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 48
  %i.bj = getelementptr i8, ptr %i.bh, i64 56
  %wide.load.3 = load <8 x i8>, ptr %i.bi, align 1, !tbaa !56 ; 2 uses
  %wide.load1.3 = load <8 x i8>, ptr %i.bj, align 1, !tbaa !56 ; 2 uses
  %i.bk = icmp eq <8 x i8> %wide.load.3, splat (i8 46)
  %i.bl = icmp eq <8 x i8> %wide.load1.3, splat (i8 46)
  %i.bm = sext <8 x i1> %i.bk to <8 x i8>
  %i.bn = sext <8 x i1> %i.bl to <8 x i8>
  %i.bo = sext i32 %i.bg to i64
  %i.bp = getelementptr inbounds i8, ptr %0, i64 %i.bo ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store <8 x i8> %i.bm, ptr %i.bp, align 1, !tbaa !56
  store <8 x i8> %i.bn, ptr %i.bq, align 1, !tbaa !56
  %i.br = icmp eq <8 x i8> %wide.load.3, splat (i8 88)
  %i.bs = icmp eq <8 x i8> %wide.load1.3, splat (i8 88)
  %i.bt = sext <8 x i1> %i.br to <8 x i8>
  %i.bu = sext <8 x i1> %i.bs to <8 x i8>
  %i.bv = getelementptr i8, ptr %i.bp, i64 91
  %i.bw = getelementptr i8, ptr %i.bp, i64 99
  store <8 x i8> %i.bt, ptr %i.bv, align 1, !tbaa !56
  store <8 x i8> %i.bu, ptr %i.bw, align 1, !tbaa !56
  %i.bx = add i32 %i.h, 64
  %i.by = getelementptr i8, ptr @nk_custom_cursor_data, i64 %.0314 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 64
  %i.ca = getelementptr i8, ptr %i.by, i64 72
  %wide.load.4 = load <8 x i8>, ptr %i.bz, align 1, !tbaa !56 ; 2 uses
  %wide.load1.4 = load <8 x i8>, ptr %i.ca, align 1, !tbaa !56 ; 2 uses
  %i.cb = icmp eq <8 x i8> %wide.load.4, splat (i8 46)
  %i.cc = icmp eq <8 x i8> %wide.load1.4, splat (i8 46)
  %i.cd = sext <8 x i1> %i.cb to <8 x i8>
  %i.ce = sext <8 x i1> %i.cc to <8 x i8>
  %i.cf = sext i32 %i.bx to i64
  %i.cg = getelementptr inbounds i8, ptr %0, i64 %i.cf ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store <8 x i8> %i.cd, ptr %i.cg, align 1, !tbaa !56
  store <8 x i8> %i.ce, ptr %i.ch, align 1, !tbaa !56
  %i.ci = icmp eq <8 x i8> %wide.load.4, splat (i8 88)
  %i.cj = icmp eq <8 x i8> %wide.load1.4, splat (i8 88)
  %i.ck = sext <8 x i1> %i.ci to <8 x i8>
  %i.cl = sext <8 x i1> %i.cj to <8 x i8>
  %i.cm = getelementptr i8, ptr %i.cg, i64 91
  %i.cn = getelementptr i8, ptr %i.cg, i64 99
  store <8 x i8> %i.ck, ptr %i.cm, align 1, !tbaa !56
  store <8 x i8> %i.cl, ptr %i.cn, align 1, !tbaa !56
  %i.co = add i64 %.0314, 88
  %i.cp = add i32 %i.h, 80
  %i.cq = getelementptr i8, ptr @nk_custom_cursor_data, i64 %.0314
  %i.cr = getelementptr i8, ptr %i.cq, i64 80
  %wide.load3 = load <8 x i8>, ptr %i.cr, align 1, !tbaa !56 ; 2 uses
  %i.cs = icmp eq <8 x i8> %wide.load3, splat (i8 46)
  %i.ct = sext <8 x i1> %i.cs to <8 x i8>
  %i.cu = sext i32 %i.cp to i64
  %i.cv = getelementptr inbounds i8, ptr %0, i64 %i.cu ; 2 uses
  store <8 x i8> %i.ct, ptr %i.cv, align 1, !tbaa !56
  %i.cw = icmp eq <8 x i8> %wide.load3, splat (i8 88)
  %i.cx = sext <8 x i1> %i.cw to <8 x i8>
  %i.cy = getelementptr i8, ptr %i.cv, i64 91
  store <8 x i8> %i.cx, ptr %i.cy, align 1, !tbaa !56
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.body, %iter.check
  %indvars.iv6.ph = phi i64 [ 0, %iter.check ], [ 88, %vector.body ]
  %indvars.iv.ph = phi i64 [ %.0314, %iter.check ], [ %i.co, %vector.body ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %indvars.iv6 = phi i64 [ %indvars.iv6.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next7.1, %vec.epilog.scalar.ph ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.1, %vec.epilog.scalar.ph ] ; 3 uses
  %i.cz = trunc nuw nsw i64 %indvars.iv6 to i32
  %i.da = add i32 %i.h, %i.cz
  %i.db = getelementptr inbounds i8, ptr @nk_custom_cursor_data, i64 %indvars.iv
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !56  ; 2 uses
  %i.dd = icmp eq i8 %i.dc, 46
  %i.de = sext i1 %i.dd to i8
  %i.df = sext i32 %i.da to i64
  %i.dg = getelementptr inbounds i8, ptr %0, i64 %i.df ; 2 uses
  store i8 %i.de, ptr %i.dg, align 1, !tbaa !56
  %i.dh = icmp eq i8 %i.dc, 88
  %i.di = sext i1 %i.dh to i8
  %i.dj = getelementptr i8, ptr %i.dg, i64 91
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !56
  %i.dk = trunc i64 %indvars.iv6 to i32
  %i.dl = or disjoint i32 %i.dk, 1
  %i.dm = add i32 %i.h, %i.dl
  %i.dn = getelementptr i8, ptr @nk_custom_cursor_data, i64 %indvars.iv
  %i.do = getelementptr i8, ptr %i.dn, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !56  ; 2 uses
  %i.dq = icmp eq i8 %i.dp, 46
  %i.dr = sext i1 %i.dq to i8
  %i.ds = sext i32 %i.dm to i64
  %i.dt = getelementptr inbounds i8, ptr %0, i64 %i.ds ; 2 uses
  store i8 %i.dr, ptr %i.dt, align 1, !tbaa !56
  %i.du = icmp eq i8 %i.dp, 88
  %i.dv = sext i1 %i.du to i8
  %i.dw = getelementptr i8, ptr %i.dt, i64 91
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !56
  %indvars.iv.next7.1 = add nuw nsw i64 %indvars.iv6, 2 ; 2 uses
end_hunk_1
