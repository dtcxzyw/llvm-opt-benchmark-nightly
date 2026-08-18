inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 118
begin_hunk_0_@ImageDrawCircleLines:bb.a
  %.not.not = icmp sgt i32 %.159, %.06062
  br i1 %.not.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawCircleLinesV(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, i32 noundef %2, i32 %3) local_unnamed_addr #38 {
bb.a:
  %.sroa.01.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.a = fptosi float %.sroa.01.0.vec.extract to i32
  %.sroa.01.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.b = fptosi float %.sroa.01.4.vec.extract to i32
  tail call void @ImageDrawCircleLines(ptr noundef %0, i32 noundef %i.a, i32 noundef %i.b, i32 noundef %2, i32 %3)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawRectangleRec(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2, i32 %3) local_unnamed_addr #39 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.039.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.i = fcmp olt float %.sroa.039.0.vec.extract, 0.000000e+00 ; 2 uses
  %foldExtExtBinop = fadd <2 x float> %1, %2
  %.sroa.039.0.vec.insert = insertelement <2 x float> %1, float 0.000000e+00, i64 0
  %.sroa.039.0 = select i1 %i.i, <2 x float> %.sroa.039.0.vec.insert, <2 x float> %1 ; 4 uses
  %sel = select i1 %i.i, <2 x float> %foldExtExtBinop, <2 x float> %2
  %.sroa.17.0 = shufflevector <2 x float> %sel, <2 x float> %2, <2 x i32> <i32 0, i32 3> ; 3 uses
  %.sroa.039.4.vec.extract = extractelement <2 x float> %.sroa.039.0, i64 1 ; 2 uses
  %i.j = fcmp olt float %.sroa.039.4.vec.extract, 0.000000e+00 ; 3 uses
  %foldExtExtBinop111 = fadd <2 x float> %.sroa.039.0, %.sroa.17.0
  %.sroa.17.12.vec.insert = shufflevector <2 x float> %.sroa.17.0, <2 x float> %foldExtExtBinop111, <2 x i32> <i32 0, i32 3>
  %.sroa.039.4.vec.insert = insertelement <2 x float> %.sroa.039.0, float 0.000000e+00, i64 1
  %.sroa.039.4.vec.extract57.pre-phi = select i1 %i.j, float 0.000000e+00, float %.sroa.039.4.vec.extract ; 5 uses
  %.sroa.039.1 = select i1 %i.j, <2 x float> %.sroa.039.4.vec.insert, <2 x float> %.sroa.039.0 ; 3 uses
  %.sroa.17.1 = select i1 %i.j, <2 x float> %.sroa.17.12.vec.insert, <2 x float> %.sroa.17.0 ; 3 uses
  %.sroa.17.8.vec.extract68 = extractelement <2 x float> %.sroa.17.1, i64 0
  %i.k = fcmp olt float %.sroa.17.8.vec.extract68, 0.000000e+00
  %.sroa.17.8.vec.insert70 = insertelement <2 x float> %.sroa.17.1, float 0.000000e+00, i64 0
  %.sroa.17.2 = select i1 %i.k, <2 x float> %.sroa.17.8.vec.insert70, <2 x float> %.sroa.17.1 ; 3 uses
  %.sroa.17.12.vec.extract87 = extractelement <2 x float> %.sroa.17.2, i64 1
  %i.l = fcmp olt float %.sroa.17.12.vec.extract87, 0.000000e+00
  %.sroa.17.12.vec.insert89 = insertelement <2 x float> %.sroa.17.2, float 0.000000e+00, i64 1
  %.sroa.17.3 = select i1 %i.l, <2 x float> %.sroa.17.12.vec.insert89, <2 x float> %.sroa.17.2 ; 3 uses
  %.sroa.039.0.vec.extract44 = extractelement <2 x float> %.sroa.039.1, i64 0 ; 3 uses
  %foldExtExtBinop113 = fadd <2 x float> %.sroa.039.1, %.sroa.17.3
  %i.m = extractelement <2 x float> %foldExtExtBinop113, i64 0
  %i.n = sitofp i32 %i.d to float                 ; 3 uses
  %i.o = fcmp ult float %i.m, %i.n
  %i.p = fsub float %i.n, %.sroa.039.0.vec.extract44
  %.sroa.17.8.vec.insert74 = insertelement <2 x float> %.sroa.17.3, float %i.p, i64 0
  %.sroa.17.4 = select i1 %i.o, <2 x float> %.sroa.17.3, <2 x float> %.sroa.17.8.vec.insert74 ; 3 uses
  %.sroa.17.12.vec.extract91 = extractelement <2 x float> %.sroa.17.4, i64 1
  %i.q = fadd float %.sroa.039.4.vec.extract57.pre-phi, %.sroa.17.12.vec.extract91
  %i.r = sitofp i32 %i.g to float                 ; 3 uses
  %i.s = fcmp ult float %i.q, %i.r
  %i.t = fsub float %i.r, %.sroa.039.4.vec.extract57.pre-phi
  %.sroa.17.12.vec.insert93 = insertelement <2 x float> %.sroa.17.4, float %i.t, i64 1
  %.sroa.17.5 = select i1 %i.s, <2 x float> %.sroa.17.4, <2 x float> %.sroa.17.12.vec.insert93 ; 3 uses
  %i.u = fcmp ult float %.sroa.039.0.vec.extract44, %i.n
  %i.v = fcmp ult float %.sroa.039.4.vec.extract57.pre-phi, %i.r
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %.sroa.17.8.vec.extract76 = extractelement <2 x float> %.sroa.17.5, i64 0
  %foldExtExtBinop115 = fadd <2 x float> %.sroa.039.1, %.sroa.17.5
  %i.w = extractelement <2 x float> %foldExtExtBinop115, i64 0
  %i.x = fcmp ugt float %i.w, 0.000000e+00
  br i1 %i.x, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %.sroa.17.12.vec.extract95 = extractelement <2 x float> %.sroa.17.5, i64 1 ; 2 uses
  %i.y = fadd float %.sroa.039.4.vec.extract57.pre-phi, %.sroa.17.12.vec.extract95
  %i.z = fcmp ugt float %i.y, 0.000000e+00
  br i1 %i.z, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.aa = fptosi float %.sroa.039.4.vec.extract57.pre-phi to i32 ; 2 uses
  %i.ab = fptosi float %.sroa.039.0.vec.extract44 to i32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = tail call i32 @GetPixelDataSize(i32 noundef 1, i32 noundef 1, i32 noundef %i.ad) ; 7 uses
  tail call void @ImageDrawPixel(ptr noundef nonnull %0, i32 noundef %i.ab, i32 noundef %i.aa, i32 %3)
  %i.af = load i32, ptr %i.c, align 8
  %i.ag = mul nsw i32 %i.af, %i.aa
  %i.ah = add nsw i32 %i.ag, %i.ab
  %i.ai = mul nsw i32 %i.ah, %i.ae
  %i.aj = load ptr, ptr %0, align 8
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak ; 8 uses
  %i.am = fptosi float %.sroa.17.8.vec.extract76 to i32 ; 4 uses
  %i.an = icmp sgt i32 %i.am, 1
  br i1 %i.an, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %i.ao = fptosi float %.sroa.17.12.vec.extract95 to i32 ; 3 uses
  %i.ap = icmp sgt i32 %i.ao, 1
  br i1 %i.ap, label %.lr.ph106, label %.loopexit

.lr.ph106:                                        ; preds = %._crit_edge
  %i.aq = mul nsw i32 %i.ae, %i.am
  %i.ar = sext i32 %i.aq to i64                   ; 3 uses
  %i.as = add nsw i32 %i.ao, -1                   ; 3 uses
  %xtraiter = and i32 %i.as, 1
  %i.at = icmp eq i32 %i.ao, 2
  br i1 %i.at, label %.epil.preheader, label %.lr.ph106.new

.lr.ph106.new:                                    ; preds = %.lr.ph106
  %unroll_iter = and i32 %i.as, -2
  br label %bb.h

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.098103 = phi i32 [ %i.ba, %.lr.ph ], [ 1, %bb.g ] ; 4 uses
  %i.au = sub nsw i32 %i.am, %.098103
  %.098. = tail call i32 @llvm.smin.i32(i32 %.098103, i32 %i.au)
  %i.av = mul nsw i32 %.098103, %i.ae
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.al, i64 %i.aw
  %i.ay = mul nsw i32 %.098., %i.ae
  %i.az = sext i32 %i.ay to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.al, i64 %i.az, i1 false)
  %i.ba = shl nsw i32 %.098103, 1                 ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.am
  br i1 %i.bb, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.h, %.lr.ph106.new
  %.0104 = phi i32 [ 1, %.lr.ph106.new ], [ %i.bn, %bb.h ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph106.new ], [ %niter.next.1, %bb.h ]
  %i.bc = load i32, ptr %i.c, align 8
  %i.bd = mul i32 %.0104, %i.ae
  %i.be = mul i32 %i.bd, %i.bc
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %i.al, i64 %i.bf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.al, i64 %i.ar, i1 false)
  %i.bh = add nuw nsw i32 %.0104, 1
  %i.bi = load i32, ptr %i.c, align 8
  %i.bj = mul i32 %i.bh, %i.ae
  %i.bk = mul i32 %i.bj, %i.bi
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %i.al, i64 %i.bl
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %i.al, i64 %i.ar, i1 false)
  %i.bn = add nuw nsw i32 %.0104, 2               ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.h

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.h
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph106
  %.0104.epil.init = phi i32 [ 1, %.lr.ph106 ], [ %i.bn, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod117 = trunc i32 %i.as to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.bo = load i32, ptr %i.c, align 8
  %i.bp = mul i32 %.0104.epil.init, %i.ae
  %i.bq = mul i32 %i.bp, %i.bo
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %i.al, i64 %i.br
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %i.al, i64 %i.ar, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %._crit_edge, %bb.e, %bb.f, %bb.d, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawRectangleV(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2, i32 %3) local_unnamed_addr #39 {
bb.a:
  %i.a = fptosi <2 x float> %1 to <2 x i32>
  %i.b = sitofp <2 x i32> %i.a to <2 x float>
  %i.c = fptosi <2 x float> %2 to <2 x i32>
  %i.d = sitofp <2 x i32> %i.c to <2 x float>
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %i.b, <2 x float> %i.d, i32 %3)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawRectangleLines(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2, i32 noundef %3, i32 %4) local_unnamed_addr #39 {
bb.a:
  %.sroa.016.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.a = fptosi float %.sroa.016.0.vec.extract to i32
  %.sroa.016.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.b = sitofp i32 %i.a to float                 ; 3 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.b, i64 0
  %i.c = shufflevector <2 x float> %1, <2 x float> %2, <2 x i32> <i32 1, i32 2>
  %i.d = fptosi <2 x float> %i.c to <2 x i32>
  %i.e = sitofp <2 x i32> %i.d to <2 x float>     ; 2 uses
  %i.f = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.e, <2 x i32> <i32 0, i32 2>
  %5 = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.g = sitofp i32 %3 to float                   ; 3 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> %5, float %i.g, i64 1 ; 2 uses
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %i.f, <2 x float> %.sroa.3.12.vec.insert.i, i32 %4)
  %.sroa.9.12.vec.extract = extractelement <2 x float> %2, i64 1
  %6 = shl nsw i32 %3, 1
  %7 = sitofp i32 %6 to float
  %8 = fsub float %.sroa.9.12.vec.extract, %7
  %.sroa.3.8.vec.insert.i39 = insertelement <2 x float> poison, float %i.g, i64 0 ; 2 uses
  %9 = fadd float %.sroa.016.4.vec.extract, %i.g
  %i.h = fadd <2 x float> %1, %2
  %i.i = shufflevector <2 x float> %.sroa.3.8.vec.insert.i39, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = fsub <2 x float> %i.h, %i.i              ; 2 uses
  %10 = insertelement <2 x float> %i.j, float %9, i64 1
  %i.k = fptosi <2 x float> %10 to <2 x i32>
  %i.l = sitofp <2 x i32> %i.k to <2 x float>     ; 2 uses
  %11 = insertelement <2 x float> %i.l, float %i.b, i64 0
  %i.m = insertelement <2 x float> %i.j, float %8, i64 0
  %12 = fptosi <2 x float> %i.m to <2 x i32>
  %13 = sitofp <2 x i32> %12 to <2 x float>       ; 2 uses
  %14 = shufflevector <2 x float> %.sroa.3.8.vec.insert.i39, <2 x float> %13, <2 x i32> <i32 0, i32 2> ; 2 uses
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %11, <2 x float> %14, i32 %4)
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %i.l, <2 x float> %14, i32 %4)
  %i.n = insertelement <2 x float> %13, float %i.b, i64 0
  tail call void @ImageDrawRectangleRec(ptr noundef readonly %0, <2 x float> %i.n, <2 x float> %.sroa.3.12.vec.insert.i, i32 %4)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawTriangle(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, i32 %4) local_unnamed_addr #38 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = fcmp ogt <2 x float> %1, %2
  %i.c = select <2 x i1> %i.b, <2 x float> %1, <2 x float> %2 ; 2 uses
  %i.d = fcmp ogt <2 x float> %i.c, %3
  %i.e = select <2 x i1> %i.d, <2 x float> %i.c, <2 x float> %3
  %i.f = fptosi <2 x float> %i.e to <2 x i32>
  %i.g = load <2 x i32>, ptr %i.a, align 8
  %i.h = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.g, <2 x i32> %i.f) ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %2, %3
  %foldExtExtBinop223 = fsub <2 x float> %3, %2
  %foldExtExtBinop225 = fsub <2 x float> %1, %3
  %i.i = shufflevector <2 x float> %foldExtExtBinop225, <2 x float> %foldExtExtBinop223, <2 x i32> <i32 1, i32 3>
  %i.j = fptosi <2 x float> %i.i to <2 x i32>     ; 2 uses
  %i.k = fcmp olt <2 x float> %1, %2
  %i.l = select <2 x i1> %i.k, <2 x float> %1, <2 x float> %2 ; 2 uses
  %i.m = fcmp olt <2 x float> %i.l, %3
  %i.n = select <2 x i1> %i.m, <2 x float> %i.l, <2 x float> %3
  %i.o = fptosi <2 x float> %i.n to <2 x i32>
  %i.p = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.o, <2 x i32> zeroinitializer) ; 4 uses
  %foldExtExtBinop227 = fsub <2 x float> %1, %2
  %i.q = fsub <2 x float> %3, %1                  ; 2 uses
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.s = shufflevector <2 x float> %i.q, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.t = fptosi <2 x float> %i.s to <2 x i32>     ; 2 uses
  %i.u = fsub <2 x float> %2, %1                  ; 2 uses
  %i.v = fmul <2 x float> %i.u, %i.r              ; 2 uses
  %i.w = extractelement <2 x float> %i.v, i64 0
  %i.x = extractelement <2 x float> %i.v, i64 1
  %i.y = fcmp ogt float %i.w, %i.x                ; 3 uses
  %i.z = shufflevector <2 x float> %i.u, <2 x float> %foldExtExtBinop227, <2 x i32> <i32 1, i32 2>
  %i.aa = fptosi <2 x float> %i.z to <2 x i32>    ; 2 uses
  %i.ab = sub nsw <2 x i32> zeroinitializer, %i.j
  %i.ac = sub nsw <2 x i32> zeroinitializer, %i.t
  %i.ad = sub nsw <2 x i32> zeroinitializer, %i.aa
  %i.ae = select i1 %i.y, <2 x i32> %i.ac, <2 x i32> %i.t ; 2 uses
  %i.af = select i1 %i.y, <2 x i32> %i.ab, <2 x i32> %i.j ; 2 uses
  %i.ag = select i1 %i.y, <2 x i32> %i.ad, <2 x i32> %i.aa ; 3 uses
  %i.ah = icmp sgt <2 x i32> %i.p, %i.h           ; 2 uses
  %i.ai = extractelement <2 x i1> %i.ah, i64 0
  %i.aj = extractelement <2 x i1> %i.ah, i64 1
  %or.cond = select i1 %i.aj, i1 true, i1 %i.ai
  br i1 %or.cond, label %._crit_edge210.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.ak = uitofp nneg <2 x i32> %i.p to <2 x float> ; 3 uses
  %i.al = sitofp <2 x i32> %i.ag to <2 x float>
  %i.am = fsub <2 x float> %i.ak, %1
  %i.an = fmul <2 x float> %i.am, %i.al           ; 2 uses
  %shift = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop229 = fadd <2 x float> %i.an, %shift
  %i.ao = extractelement <2 x float> %foldExtExtBinop229, i64 0
  %i.ap = fptosi float %i.ao to i32
  %i.aq = sitofp <2 x i32> %i.af to <2 x float>
  %i.ar = sitofp <2 x i32> %i.ae to <2 x float>
  %i.as = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = shufflevector <2 x float> %3, <2 x float> %2, <2 x i32> <i32 0, i32 2>
  %i.au = fsub <2 x float> %i.as, %i.at
  %i.av = fmul <2 x float> %i.au, %i.aq
  %i.aw = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ax = shufflevector <2 x float> %3, <2 x float> %2, <2 x i32> <i32 1, i32 3>
  %i.ay = fsub <2 x float> %i.aw, %i.ax
  %i.az = fmul <2 x float> %i.ay, %i.ar
  %i.ba = fadd <2 x float> %i.av, %i.az
  %i.bb = fptosi <2 x float> %i.ba to <2 x i32>
  %i.bc = extractelement <2 x i32> %i.p, i64 1
  %i.bd = extractelement <2 x i32> %i.p, i64 0
  %i.be = extractelement <2 x i32> %i.ag, i64 1
  %i.bf = extractelement <2 x i32> %i.h, i64 1
  %i.bg = extractelement <2 x i32> %i.ag, i64 0
  %i.bh = extractelement <2 x i32> %i.h, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0183209 = phi i32 [ %i.bl, %._crit_edge ], [ %i.bc, %.preheader.preheader ] ; 3 uses
  %.0184208 = phi i32 [ %i.bk, %._crit_edge ], [ %i.ap, %.preheader.preheader ] ; 2 uses
  %i.bi = phi <2 x i32> [ %i.bj, %._crit_edge ], [ %i.bb, %.preheader.preheader ] ; 2 uses
  br label %bb.b

._crit_edge210.split:                             ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.d
  %i.bj = add nsw <2 x i32> %i.bi, %i.ae
  %i.bk = add nsw i32 %.0184208, %i.be
  %i.bl = add nuw i32 %.0183209, 1
  %exitcond211.not = icmp eq i32 %.0183209, %i.bf
  br i1 %exitcond211.not, label %._crit_edge210.split, label %.preheader

bb.b:                                             ; preds = %.preheader, %bb.d
  %.0204 = phi i32 [ %i.bd, %.preheader ], [ %i.bs, %bb.d ] ; 3 uses
  %.0180203 = phi i32 [ %.0184208, %.preheader ], [ %i.br, %bb.d ] ; 2 uses
  %i.bm = phi <2 x i32> [ %i.bi, %.preheader ], [ %i.bq, %bb.d ] ; 3 uses
  %shift231 = shufflevector <2 x i32> %i.bm, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop232 = or <2 x i32> %i.bm, %shift231
  %i.bn = extractelement <2 x i32> %foldExtExtBinop232, i64 0
  %i.bo = or i32 %i.bn, %.0180203
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ImageDrawPixel(ptr noundef %0, i32 noundef %.0204, i32 noundef %.0183209, i32 %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bq = add nsw <2 x i32> %i.bm, %i.af
  %i.br = add nsw i32 %.0180203, %i.bg
  %i.bs = add nuw i32 %.0204, 1
  %exitcond.not = icmp eq i32 %.0204, %i.bh
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ImageDrawTriangleEx(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, i32 %4, i32 %5, i32 %6) local_unnamed_addr #38 {
bb.a:
  %i.a = fcmp olt <2 x float> %1, %2
  %i.b = select <2 x i1> %i.a, <2 x float> %1, <2 x float> %2 ; 2 uses
  %i.c = fcmp olt <2 x float> %i.b, %3
  %i.d = select <2 x i1> %i.c, <2 x float> %i.b, <2 x float> %3
  %i.e = fptosi <2 x float> %i.d to <2 x i32>
  %i.f = fcmp ogt <2 x float> %1, %2
  %i.g = select <2 x i1> %i.f, <2 x float> %1, <2 x float> %2 ; 2 uses
  %i.h = fcmp ogt <2 x float> %i.g, %3
  %i.i = select <2 x i1> %i.h, <2 x float> %i.g, <2 x float> %3 ; 2 uses
  %i.j = extractelement <2 x float> %i.i, i64 0
  %i.k = fptosi float %i.j to i32
  %i.l = extractelement <2 x float> %i.i, i64 1
  %i.m = fptosi float %i.l to i32
  %i.n = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.e, <2 x i32> zeroinitializer) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.p, i32 %i.k) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = load i32, ptr %i.q, align 4
  %.0210 = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %i.m) ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %2, %1
  %foldExtExtBinop253 = fsub <2 x float> %3, %1
  %shift = shufflevector <2 x float> %foldExtExtBinop253, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop255 = fmul <2 x float> %foldExtExtBinop, %shift
  %i.s = extractelement <2 x float> %foldExtExtBinop255, i64 0
  %i.t = insertelement <4 x i32> poison, i32 %5, i64 0
  %i.u = insertelement <4 x i32> %i.t, i32 %4, i64 1
  %i.v = shufflevector <4 x i32> %i.u, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.w = lshr <4 x i32> %i.v, <i32 8, i32 16, i32 24, i32 0>
  %i.x = insertelement <4 x i32> poison, i32 %4, i64 0
  %i.y = insertelement <4 x i32> %i.x, i32 %5, i64 1
  %i.z = shufflevector <4 x i32> %i.y, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aa = lshr <4 x i32> %i.z, <i32 8, i32 16, i32 24, i32 0>
  %i.ab = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.ac = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ad = lshr <4 x i32> %i.ac, <i32 8, i32 16, i32 24, i32 0>
  %i.ae = shufflevector <2 x float> %2, <2 x float> %3, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.af = shufflevector <2 x float> %3, <2 x float> %1, <2 x i32> <i32 0, i32 2>
  %i.ag = fsub <2 x float> %i.ae, %i.af           ; 2 uses
  %i.ah = shufflevector <2 x float> %3, <2 x float> %1, <2 x i32> <i32 1, i32 3>
  %i.ai = shufflevector <2 x float> %2, <2 x float> %3, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.aj = fsub <2 x float> %i.ah, %i.ai
  %i.ak = fptosi <2 x float> %i.aj to <2 x i32>   ; 2 uses
  %i.al = fptosi <2 x float> %i.ag to <2 x i32>   ; 2 uses
  %foldExtExtBinop257 = fsub <2 x float> %1, %2
  %foldExtExtBinop259 = fsub <2 x float> %2, %1   ; 2 uses
  %foldExtExtBinop261 = fmul <2 x float> %foldExtExtBinop259, %i.ag
  %i.am = extractelement <2 x float> %foldExtExtBinop261, i64 1
  %i.an = fcmp ogt float %i.s, %i.am              ; 3 uses
  %i.ao = shufflevector <2 x float> %foldExtExtBinop259, <2 x float> %foldExtExtBinop257, <2 x i32> <i32 1, i32 2>
  %i.ap = fptosi <2 x float> %i.ao to <2 x i32>   ; 2 uses
  %i.aq = sub nsw <2 x i32> zeroinitializer, %i.ak
  %i.ar = sub nsw <2 x i32> zeroinitializer, %i.al
  %i.as = sub nsw <2 x i32> zeroinitializer, %i.ap
  %i.at = select i1 %i.an, <2 x i32> %i.ar, <2 x i32> %i.al ; 2 uses
  %i.au = select i1 %i.an, <2 x i32> %i.aq, <2 x i32> %i.ak ; 2 uses
  %i.av = select i1 %i.an, <2 x i32> %i.as, <2 x i32> %i.ap ; 3 uses
  %i.aw = uitofp nneg <2 x i32> %i.n to <2 x float> ; 3 uses
  %i.ax = sitofp <2 x i32> %i.au to <2 x float>
  %i.ay = sitofp <2 x i32> %i.at to <2 x float>
  %i.az = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fsub <2 x float> %i.az, %i.ae
  %i.bb = fmul <2 x float> %i.ba, %i.ax
  %i.bc = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bd = fsub <2 x float> %i.bc, %i.ai
  %i.be = fmul <2 x float> %i.bd, %i.ay
  %i.bf = fadd <2 x float> %i.be, %i.bb
  %i.bg = fptosi <2 x float> %i.bf to <2 x i32>   ; 3 uses
  %i.bh = sitofp <2 x i32> %i.av to <2 x float>
  %i.bi = fsub <2 x float> %i.aw, %1
  %i.bj = fmul <2 x float> %i.bi, %i.bh           ; 2 uses
  %shift263 = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop264 = fadd <2 x float> %i.bj, %shift263
  %i.bk = extractelement <2 x float> %foldExtExtBinop264, i64 0
  %i.bl = fptosi float %i.bk to i32               ; 2 uses
  %i.bm = extractelement <2 x i32> %i.bg, i64 1
  %i.bn = add i32 %i.bm, %i.bl
  %i.bo = extractelement <2 x i32> %i.bg, i64 0
  %i.bp = add i32 %i.bn, %i.bo
end_hunk_0
