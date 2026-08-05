inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_read_pgm:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 %.06491
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !31
  %i.bm = uitofp reassoc nsz arcp contract afn i8 %i.bl to float
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, %i.r
  %i.bo = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bn, i64 0
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.bp, ptr %i.bi, align 4, !tbaa !36
  %i.bq = getelementptr inbounds nuw i8, ptr %.16392, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 %.06491
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 3
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !31
  %i.bu = uitofp reassoc nsz arcp contract afn i8 %i.bt to float
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, %i.s
  %i.bw = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bv, i64 0
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.bx, ptr %i.bq, align 4, !tbaa !36
  %i.by = getelementptr inbounds nuw i8, ptr %.16392, i64 64 ; 2 uses
  %i.bz = add nuw i64 %.06491, 4                  ; 2 uses
  %exitcond117.not.3 = icmp eq i64 %i.bz, %i.v
  br i1 %exitcond117.not.3, label %._crit_edge94, label %.lr.ph93, !llvm.loop !48

bb.e:                                             ; preds = %bb.c
  %i.ca = call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 2) #12 ; 8 uses
  %.not69 = icmp eq ptr %i.ca, null
  br i1 %.not69, label %.sink.split, label %.lr.ph79

.lr.ph79:                                         ; preds = %bb.e
  %i.cb = load i32, ptr %i.j, align 8, !tbaa !28
  %.not112 = icmp eq i32 %i.cb, 0
  br i1 %.not112, label %.sink.split, label %.lr.ph89.preheader

.lr.ph89.preheader:                               ; preds = %.lr.ph79
  %i.cc = uitofp reassoc nsz arcp contract afn nneg i32 %i.d to float ; 2 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.cc, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cd = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.ce = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.cc
  br label %.lr.ph89

.lr.ph89:                                         ; preds = %.lr.ph89.preheader, %._crit_edge
  %i.cf = phi i32 [ %i.ci, %._crit_edge ], [ %i.h, %.lr.ph89.preheader ]
  %.0607688 = phi ptr [ %.161.lcssa, %._crit_edge ], [ %2, %.lr.ph89.preheader ] ; 4 uses
  %.0597787 = phi i64 [ %i.cs, %._crit_edge ], [ 0, %.lr.ph89.preheader ]
  %i.cg = sext i32 %i.cf to i64
  %i.ch = call i64 @fread(ptr noundef nonnull %i.ca, i64 noundef 2, i64 noundef %i.cg, ptr noundef nonnull %1) ; 5 uses
  %i.ci = load i32, ptr %i.g, align 4, !tbaa !12  ; 3 uses
  %i.cj = sext i32 %i.ci to i64
  %.not70 = icmp eq i64 %i.ch, %i.cj
  br i1 %.not70, label %.preheader73, label %.sink.split

.preheader73:                                     ; preds = %.lr.ph89
  %.not113 = icmp eq i32 %i.ci, 0
  br i1 %.not113, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader73
  %min.iters.check = icmp ult i64 %i.ch, 8
  br i1 %min.iters.check, label %.lr.ph.preheader150, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ch, -8                      ; 4 uses
  %i.ck = shl i64 %n.vec, 4
  %i.cl = getelementptr i8, ptr %.0607688, i64 %i.ck ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cm = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %.0607688, i64 %i.cm
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %wide.load = load <8 x i16>, ptr %i.cn, align 2, !tbaa !49
  %i.co = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load)
  %i.cp = uitofp <8 x i16> %i.co to <8 x float>
  %i.cq = fmul reassoc nsz arcp contract afn <8 x float> %i.cp, %i.cd
  %interleaved.vec = shufflevector <8 x float> %i.cq, <8 x float> zeroinitializer, <32 x i32> <i32 0, i32 0, i32 0, i32 8, i32 1, i32 1, i32 1, i32 9, i32 2, i32 2, i32 2, i32 10, i32 3, i32 3, i32 3, i32 11, i32 4, i32 4, i32 4, i32 12, i32 5, i32 5, i32 5, i32 13, i32 6, i32 6, i32 6, i32 14, i32 7, i32 7, i32 7, i32 15>
  store <32 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader150

.lr.ph.preheader150:                              ; preds = %.lr.ph.preheader, %middle.block
  %.05875.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.16174.ph = phi ptr [ %.0607688, %.lr.ph.preheader ], [ %i.cl, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader73
  %.161.lcssa = phi ptr [ %.0607688, %.preheader73 ], [ %i.cl, %middle.block ], [ %i.dc, %.lr.ph ]
  %i.cs = add nuw i64 %.0597787, 1                ; 2 uses
  %i.ct = load i32, ptr %i.j, align 8, !tbaa !28
  %i.cu = sext i32 %i.ct to i64
  %i.cv = icmp ult i64 %i.cs, %i.cu
  br i1 %i.cv, label %.lr.ph89, label %.sink.split

.lr.ph:                                           ; preds = %.lr.ph.preheader150, %.lr.ph
  %.05875 = phi i64 [ %i.dd, %.lr.ph ], [ %.05875.ph, %.lr.ph.preheader150 ] ; 2 uses
  %.16174 = phi ptr [ %i.dc, %.lr.ph ], [ %.16174.ph, %.lr.ph.preheader150 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %.05875
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !49
  %rev = call i16 @llvm.bswap.i16(i16 %i.cx)
  %i.cy = uitofp reassoc nsz arcp contract afn i16 %rev to float
  %i.cz = fmul reassoc nsz arcp contract afn float %i.cy, %i.ce
  %i.da = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.cz, i64 0
  %i.db = shufflevector <4 x float> %i.da, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.db, ptr %.16174, align 4, !tbaa !36
  %i.dc = getelementptr inbounds nuw i8, ptr %.16174, i64 16 ; 2 uses
  %i.dd = add nuw i64 %.05875, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.dd, %i.ch
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !51

.sink.split:                                      ; preds = %.lr.ph89, %._crit_edge, %.lr.ph110, %._crit_edge94, %bb.e, %.lr.ph79, %bb.d, %.lr.ph99
  %.sink = phi ptr [ %i.k, %bb.d ], [ %i.ca, %.lr.ph79 ], [ %i.ca, %bb.e ], [ %i.k, %.lr.ph99 ], [ %i.k, %.lr.ph110 ], [ %i.k, %._crit_edge94 ], [ %i.ca, %._crit_edge ], [ %i.ca, %.lr.ph89 ]
  %.0.ph = phi i32 [ 0, %bb.d ], [ 0, %.lr.ph79 ], [ 0, %bb.e ], [ 0, %.lr.ph99 ], [ 6, %.lr.ph110 ], [ 0, %._crit_edge94 ], [ 6, %.lr.ph89 ], [ 0, %._crit_edge ]
  call void @free(ptr noundef %.sink) #10
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ 2, %bb.a ], [ 6, %bb.b ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 7) i32 @_read_ppm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [7 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 7, ptr noundef nonnull %1)
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i64 @strtol(ptr noundef nonnull captures(none) %i.a, ptr noundef null, i32 noundef 10) #10, !inline_history !37
  %i.d = trunc i64 %i.c to i32                    ; 4 uses
  %i.e = add i32 %i.d, -65536
  %or.cond = icmp ult i32 %i.e, -65535
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %i.d, 256
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1380 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !12   ; 3 uses
  %i.i = sext i32 %i.h to i64
  %i.j = mul nsw i64 %i.i, 3                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 4 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 1) #12 ; 16 uses
  %.not75 = icmp eq ptr %i.l, null
  br i1 %.not75, label %.sink.split, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.d
  %i.m = load i32, ptr %i.k, align 8, !tbaa !28
  %.not122 = icmp eq i32 %i.m, 0
  br i1 %.not122, label %.sink.split, label %.lr.ph118.preheader

.lr.ph118.preheader:                              ; preds = %.lr.ph107
  %i.n = uitofp reassoc nsz arcp contract afn nneg i32 %i.d to float ; 10 uses
  %scevgep = getelementptr i8, ptr %i.l, i64 1    ; 2 uses
  %scevgep149 = getelementptr i8, ptr %i.l, i64 2 ; 2 uses
  %broadcast.splatinsert160 = insertelement <8 x float> poison, float %i.n, i64 0
  %broadcast.splat161 = shufflevector <8 x float> %broadcast.splatinsert160, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.o = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat161
  %i.p = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat161
  %i.q = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat161
  %i.r = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.n
  %i.s = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.n
  %i.t = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.n
  %i.u = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.n
  %i.v = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.n
  %i.w = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.n
  %i.x = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.n
  %i.y = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.n
  %i.z = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.n
  br label %.lr.ph118

.lr.ph118:                                        ; preds = %.lr.ph118.preheader, %._crit_edge102
  %i.aa = phi i32 [ %i.ad, %._crit_edge102 ], [ %i.h, %.lr.ph118.preheader ]
  %.069104117 = phi i64 [ %i.di, %._crit_edge102 ], [ 0, %.lr.ph118.preheader ]
  %.064105116 = phi ptr [ %.165.lcssa, %._crit_edge102 ], [ %2, %.lr.ph118.preheader ] ; 8 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = call i64 @fread(ptr noundef nonnull %i.l, i64 noundef 3, i64 noundef %i.ab, ptr noundef nonnull %1) ; 10 uses
  %i.ad = load i32, ptr %i.g, align 4, !tbaa !12  ; 3 uses
  %i.ae = sext i32 %i.ad to i64
  %.not76 = icmp eq i64 %i.ac, %i.ae
  br i1 %.not76, label %.preheader77, label %.sink.split

.preheader77:                                     ; preds = %.lr.ph118
  %.not123 = icmp eq i32 %i.ad, 0
  br i1 %.not123, label %._crit_edge102, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader77
  %min.iters.check156 = icmp ult i64 %i.ac, 16
  br i1 %min.iters.check156, label %.preheader.preheader175, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.preheader
  %i.af = add i64 %i.ac, -1                       ; 3 uses
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.af, i64 3) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.ag = getelementptr i8, ptr %i.l, i64 %mul.result
  %i.ah = icmp ult ptr %i.ag, %i.l
  %3 = or i1 %i.ah, %mul.overflow
  %mul146 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.af, i64 3) ; 2 uses
  %mul.result147 = extractvalue { i64, i1 } %mul146, 0
  %mul.overflow148 = extractvalue { i64, i1 } %mul146, 1
  %i.ai = getelementptr i8, ptr %scevgep, i64 %mul.result147
  %i.aj = icmp ult ptr %i.ai, %scevgep
  %4 = or i1 %i.aj, %mul.overflow148
  %mul150 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.af, i64 3) ; 2 uses
  %mul.result151 = extractvalue { i64, i1 } %mul150, 0
  %mul.overflow152 = extractvalue { i64, i1 } %mul150, 1
  %i.ak = getelementptr i8, ptr %scevgep149, i64 %mul.result151
  %i.al = icmp ult ptr %i.ak, %scevgep149
  %i.am = or i1 %i.al, %mul.overflow152
  %i.an = or i1 %3, %4
  %i.ao = or i1 %i.an, %i.am
  br i1 %i.ao, label %.preheader.preheader175, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ap = shl i64 %i.ac, 4
  %scevgep153 = getelementptr i8, ptr %.064105116, i64 %i.ap
  %i.aq = mul i64 %i.ac, 3
  %scevgep154 = getelementptr i8, ptr %i.l, i64 %i.aq
  %bound0 = icmp ult ptr %.064105116, %scevgep154
  %bound1 = icmp ult ptr %i.l, %scevgep153
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.preheader175, label %vector.ph157

vector.ph157:                                     ; preds = %vector.memcheck
  %n.vec159 = and i64 %i.ac, -8                   ; 4 uses
  %i.ar = shl i64 %n.vec159, 4
  %i.as = getelementptr i8, ptr %.064105116, i64 %i.ar ; 2 uses
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph157
  %index163 = phi i64 [ 0, %vector.ph157 ], [ %index.next170, %vector.body162 ] ; 3 uses
  %i.at = shl i64 %index163, 4
  %next.gep164 = getelementptr i8, ptr %.064105116, i64 %i.at
  %i.au = mul i64 %index163, 3
  %i.av = getelementptr i8, ptr %i.l, i64 %i.au
  %wide.vec165 = load <24 x i8>, ptr %i.av, align 1, !tbaa !31, !alias.scope !52 ; 3 uses
  %strided.vec166 = shufflevector <24 x i8> %wide.vec165, <24 x i8> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec167 = shufflevector <24 x i8> %wide.vec165, <24 x i8> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec168 = shufflevector <24 x i8> %wide.vec165, <24 x i8> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.aw = uitofp <8 x i8> %strided.vec166 to <8 x float>
  %i.ax = fmul reassoc nsz arcp contract afn <8 x float> %i.aw, %i.o
  %i.ay = uitofp <8 x i8> %strided.vec167 to <8 x float>
  %i.az = fmul reassoc nsz arcp contract afn <8 x float> %i.ay, %i.p
  %i.ba = uitofp <8 x i8> %strided.vec168 to <8 x float>
  %i.bb = fmul reassoc nsz arcp contract afn <8 x float> %i.ba, %i.q
  %i.bc = shufflevector <8 x float> %i.ax, <8 x float> %i.az, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bd = shufflevector <8 x float> %i.bb, <8 x float> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec169 = shufflevector <16 x float> %i.bc, <16 x float> %i.bd, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec169, ptr %next.gep164, align 4, !tbaa !36, !alias.scope !55, !noalias !52
  %index.next170 = add nuw i64 %index163, 8       ; 2 uses
  %i.be = icmp eq i64 %index.next170, %n.vec159
  br i1 %i.be, label %middle.block171, label %vector.body162, !llvm.loop !57

middle.block171:                                  ; preds = %vector.body162
  %cmp.n172 = icmp eq i64 %i.ac, %n.vec159
  br i1 %cmp.n172, label %._crit_edge102, label %.preheader.preheader175

.preheader.preheader175:                          ; preds = %vector.memcheck, %vector.scevcheck, %.preheader.preheader, %middle.block171
  %.165101.ph = phi ptr [ %.064105116, %vector.memcheck ], [ %.064105116, %vector.scevcheck ], [ %.064105116, %.preheader.preheader ], [ %i.as, %middle.block171 ] ; 6 uses
  %.068100.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.preheader.preheader ], [ %n.vec159, %middle.block171 ] ; 4 uses
  %.neg = or disjoint i64 %.068100.ph, 1
  %xtraiter = and i64 %i.ac, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader175
  %i.bf = mul i64 %.068100.ph, 3
  %i.bg = getelementptr i8, ptr %i.l, i64 %i.bf   ; 3 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !31
  %i.bi = uitofp reassoc nsz arcp contract afn i8 %i.bh to float
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bi, %i.r
  %i.bk = getelementptr inbounds nuw i8, ptr %.165101.ph, i64 4
  store float %i.bj, ptr %.165101.ph, align 4, !tbaa !36
  %i.bl = getelementptr i8, ptr %i.bg, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !31
  %i.bn = uitofp reassoc nsz arcp contract afn i8 %i.bm to float
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %i.s
  %i.bp = getelementptr inbounds nuw i8, ptr %.165101.ph, i64 8
  store float %i.bo, ptr %i.bk, align 4, !tbaa !36
  %i.bq = getelementptr i8, ptr %i.bg, i64 2
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !31
  %i.bs = uitofp reassoc nsz arcp contract afn i8 %i.br to float
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, %i.t
  %i.bu = getelementptr inbounds nuw i8, ptr %.165101.ph, i64 12
  store float %i.bt, ptr %i.bp, align 4, !tbaa !36
  %i.bv = getelementptr inbounds nuw i8, ptr %.165101.ph, i64 16 ; 2 uses
  store float 0.000000e+00, ptr %i.bu, align 4, !tbaa !36
  %i.bw = or disjoint i64 %.068100.ph, 1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader175
  %.lcssa.unr = phi ptr [ poison, %.preheader.preheader175 ], [ %i.bv, %.preheader.prol ]
  %.165101.unr = phi ptr [ %.165101.ph, %.preheader.preheader175 ], [ %i.bv, %.preheader.prol ]
  %.068100.unr = phi i64 [ %.068100.ph, %.preheader.preheader175 ], [ %i.bw, %.preheader.prol ]
  %i.bx = icmp eq i64 %i.ac, %.neg
  br i1 %i.bx, label %._crit_edge102, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.165101 = phi ptr [ %i.dg, %.preheader ], [ %.165101.unr, %.preheader.prol.loopexit ] ; 9 uses
  %.068100 = phi i64 [ %i.dh, %.preheader ], [ %.068100.unr, %.preheader.prol.loopexit ] ; 3 uses
  %i.by = mul i64 %.068100, 3
  %i.bz = getelementptr i8, ptr %i.l, i64 %i.by   ; 3 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !31
  %i.cb = uitofp reassoc nsz arcp contract afn i8 %i.ca to float
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, %i.u
  %i.cd = getelementptr inbounds nuw i8, ptr %.165101, i64 4
  store float %i.cc, ptr %.165101, align 4, !tbaa !36
  %i.ce = getelementptr i8, ptr %i.bz, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !31
  %i.cg = uitofp reassoc nsz arcp contract afn i8 %i.cf to float
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, %i.v
  %i.ci = getelementptr inbounds nuw i8, ptr %.165101, i64 8
  store float %i.ch, ptr %i.cd, align 4, !tbaa !36
  %i.cj = getelementptr i8, ptr %i.bz, i64 2
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !31
  %i.cl = uitofp reassoc nsz arcp contract afn i8 %i.ck to float
  %i.cm = fmul reassoc nsz arcp contract afn float %i.cl, %i.w
  %i.cn = getelementptr inbounds nuw i8, ptr %.165101, i64 12
  store float %i.cm, ptr %i.ci, align 4, !tbaa !36
  %i.co = getelementptr inbounds nuw i8, ptr %.165101, i64 16
  store float 0.000000e+00, ptr %i.cn, align 4, !tbaa !36
  %i.cp = mul i64 %.068100, 3
  %i.cq = getelementptr i8, ptr %i.l, i64 %i.cp   ; 3 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 3
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !31
  %i.ct = uitofp reassoc nsz arcp contract afn i8 %i.cs to float
  %i.cu = fmul reassoc nsz arcp contract afn float %i.ct, %i.x
  %i.cv = getelementptr inbounds nuw i8, ptr %.165101, i64 20
  store float %i.cu, ptr %i.co, align 4, !tbaa !36
  %i.cw = getelementptr i8, ptr %i.cq, i64 4
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !31
  %i.cy = uitofp reassoc nsz arcp contract afn i8 %i.cx to float
  %i.cz = fmul reassoc nsz arcp contract afn float %i.cy, %i.y
  %i.da = getelementptr inbounds nuw i8, ptr %.165101, i64 24
  store float %i.cz, ptr %i.cv, align 4, !tbaa !36
  %i.db = getelementptr i8, ptr %i.cq, i64 5
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !31
  %i.dd = uitofp reassoc nsz arcp contract afn i8 %i.dc to float
  %i.de = fmul reassoc nsz arcp contract afn float %i.dd, %i.z
  %i.df = getelementptr inbounds nuw i8, ptr %.165101, i64 28
  store float %i.de, ptr %i.da, align 4, !tbaa !36
  %i.dg = getelementptr inbounds nuw i8, ptr %.165101, i64 32 ; 2 uses
  store float 0.000000e+00, ptr %i.df, align 4, !tbaa !36
  %i.dh = add nuw i64 %.068100, 2                 ; 2 uses
  %exitcond130.not.1 = icmp eq i64 %i.dh, %i.ac
  br i1 %exitcond130.not.1, label %._crit_edge102, label %.preheader, !llvm.loop !58

._crit_edge102:                                   ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block171, %.preheader77
  %.165.lcssa = phi ptr [ %.064105116, %.preheader77 ], [ %i.as, %middle.block171 ], [ %.lcssa.unr, %.preheader.prol.loopexit ], [ %i.dg, %.preheader ]
  %i.di = add nuw i64 %.069104117, 1              ; 2 uses
  %i.dj = load i32, ptr %i.k, align 8, !tbaa !28
  %i.dk = sext i32 %i.dj to i64
  %i.dl = icmp ult i64 %i.di, %i.dk
  br i1 %i.dl, label %.lr.ph118, label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.dm = call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 2) #12 ; 8 uses
  %.not73 = icmp eq ptr %i.dm, null
  br i1 %.not73, label %.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.dn = load i32, ptr %i.k, align 8, !tbaa !28
  %.not120 = icmp eq i32 %i.dn, 0
  br i1 %.not120, label %.sink.split, label %.lr.ph96.preheader

.lr.ph96.preheader:                               ; preds = %.lr.ph
  %i.do = uitofp reassoc nsz arcp contract afn nneg i32 %i.d to float ; 2 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.do, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.dp = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.dq = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.dr = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.ds = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.do, i64 0
  %i.dt = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.du = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.dt
  br label %.lr.ph96

.lr.ph96:                                         ; preds = %.lr.ph96.preheader, %._crit_edge
  %i.dv = phi i32 [ %i.dy, %._crit_edge ], [ %i.h, %.lr.ph96.preheader ]
  %.0618495 = phi ptr [ %.162.lcssa, %._crit_edge ], [ %2, %.lr.ph96.preheader ] ; 4 uses
  %.0608594 = phi i64 [ %i.fh, %._crit_edge ], [ 0, %.lr.ph96.preheader ]
  %i.dw = sext i32 %i.dv to i64
  %i.dx = call i64 @fread(ptr noundef nonnull %i.dm, i64 noundef 6, i64 noundef %i.dw, ptr noundef nonnull %1) ; 5 uses
  %i.dy = load i32, ptr %i.g, align 4, !tbaa !12  ; 3 uses
  %i.dz = sext i32 %i.dy to i64
  %.not74 = icmp eq i64 %i.dx, %i.dz
  br i1 %.not74, label %.preheader79, label %.sink.split

.preheader79:                                     ; preds = %.lr.ph96
  %.not121 = icmp eq i32 %i.dy, 0
  br i1 %.not121, label %._crit_edge, label %.preheader78.preheader

.preheader78.preheader:                           ; preds = %.preheader79
  %min.iters.check = icmp ult i64 %i.dx, 8
  br i1 %min.iters.check, label %.preheader78.preheader176, label %vector.ph

vector.ph:                                        ; preds = %.preheader78.preheader
  %n.vec = and i64 %i.dx, -8                      ; 4 uses
  %i.ea = shl i64 %n.vec, 4
  %i.eb = getelementptr i8, ptr %.0618495, i64 %i.ea ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ec = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %.0618495, i64 %i.ec
  %i.ed = mul i64 %index, 6
  %i.ee = getelementptr i8, ptr %i.dm, i64 %i.ed
  %wide.vec = load <24 x i16>, ptr %i.ee, align 2, !tbaa !49 ; 3 uses
  %i.ef = call <24 x i16> @llvm.bswap.v24i16(<24 x i16> %wide.vec)
end_hunk_0
