Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/yuv_sse2?download=true
inline.NumInlined: 103
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@YuvToArgbRow_SSE2:bb.a
  %.02350 = phi ptr [ %i.ao, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.02549 = phi ptr [ %i.ar, %.lr.ph ], [ %3, %bb.a ] ; 3 uses
  %.02748 = phi ptr [ %i.aq, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.02947 = phi ptr [ %i.ap, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.023.val = load i64, ptr %.02350, align 1, !tbaa !8
  %.029.val = load i32, ptr %.02947, align 1
  %.027.val = load i32, ptr %.02748, align 1
  %i.d = insertelement <2 x i64> poison, i64 %.023.val, i64 0
  %i.e = bitcast <2 x i64> %i.d to <16 x i8>
  %i.f = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.e, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.g = insertelement <4 x i32> poison, i32 %.029.val, i64 0
  %i.h = bitcast <4 x i32> %i.g to <16 x i8>
  %i.i = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.h, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.j = bitcast <16 x i8> %i.i to <8 x i16>
  %i.k = shufflevector <8 x i16> %i.j, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.l = insertelement <4 x i32> poison, i32 %.027.val, i64 0
  %i.m = bitcast <4 x i32> %i.l to <16 x i8>
  %i.n = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.m, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.o = bitcast <16 x i8> %i.n to <8 x i16>
  %i.p = shufflevector <8 x i16> %i.o, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.q = bitcast <16 x i8> %i.f to <8 x i16>
  %i.r = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.q, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.s = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.p, <8 x i16> splat (i16 26149))
  %i.t = add nsw <8 x i16> %i.r, splat (i16 -14234)
  %i.u = add <8 x i16> %i.t, %i.s
  %i.v = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.k, <8 x i16> splat (i16 6419))
  %i.w = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.p, <8 x i16> splat (i16 13320))
  %.neg42 = add nuw <8 x i16> %i.r, splat (i16 8708)
  %i.x = add nuw nsw <8 x i16> %i.v, %i.w
  %i.y = sub <8 x i16> %.neg42, %i.x
  %i.z = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.k, <8 x i16> splat (i16 -32486))
  %i.aa = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.z, <8 x i16> %i.r)
  %i.ab = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.aa, <8 x i16> splat (i16 17685))
  %i.ac = ashr <8 x i16> %i.u, splat (i16 6)
  %i.ad = ashr <8 x i16> %i.y, splat (i16 6)
  %i.ae = lshr <8 x i16> %i.ab, splat (i16 6)
  %i.af = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> splat (i16 255), <8 x i16> %i.ad) ; 2 uses
  %i.ag = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ac, <8 x i16> %i.ae) ; 2 uses
  %i.ah = shufflevector <16 x i8> %i.af, <16 x i8> %i.ag, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ai = shufflevector <16 x i8> %i.af, <16 x i8> %i.ag, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.aj = bitcast <16 x i8> %i.ah to <8 x i16>    ; 2 uses
  %i.ak = bitcast <16 x i8> %i.ai to <8 x i16>    ; 2 uses
  %i.al = shufflevector <8 x i16> %i.aj, <8 x i16> %i.ak, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.am = shufflevector <8 x i16> %i.aj, <8 x i16> %i.ak, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.al, ptr %.02549, align 1, !tbaa !8, !alias.scope !62
  %i.an = getelementptr inbounds nuw i8, ptr %.02549, i64 16
  store <8 x i16> %i.am, ptr %i.an, align 1, !tbaa !8, !alias.scope !62
  %i.ao = getelementptr inbounds nuw i8, ptr %.02350, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.02947, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02748, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02549, i64 32 ; 2 uses
  %i.as = add nuw nsw i32 %i.c, 8                 ; 2 uses
  %.not = icmp sgt i32 %i.as, %4
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !60

.lr.ph60:                                         ; preds = %.preheader, %.lr.ph60
  %.159 = phi i32 [ %i.cr, %.lr.ph60 ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %.12458 = phi ptr [ %i.cm, %.lr.ph60 ], [ %.023.lcssa, %.preheader ] ; 2 uses
  %.12657 = phi ptr [ %i.cl, %.lr.ph60 ], [ %.025.lcssa, %.preheader ] ; 5 uses
  %.12856 = phi ptr [ %i.cq, %.lr.ph60 ], [ %.027.lcssa, %.preheader ] ; 2 uses
  %.13055 = phi ptr [ %i.cp, %.lr.ph60 ], [ %.029.lcssa, %.preheader ] ; 2 uses
  %i.at = load i8, ptr %.12458, align 1, !tbaa !8
  %i.au = load i8, ptr %.13055, align 1, !tbaa !8
  %i.av = load i8, ptr %.12856, align 1, !tbaa !8
  store i8 -1, ptr %.12657, align 1, !tbaa !8
  %i.aw = zext i8 %i.at to i32
  %i.ax = zext i8 %i.au to i32                    ; 2 uses
  %i.ay = zext i8 %i.av to i32                    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.12657, i64 1
  %i.ba = mul nuw nsw i32 %i.aw, 19077
  %i.bb = lshr i32 %i.ba, 8                       ; 3 uses
  %i.bc = mul nuw nsw i32 %i.ay, 26149
  %i.bd = lshr i32 %i.bc, 8
  %i.be = add nuw nsw i32 %i.bd, %i.bb            ; 2 uses
  %i.bf = add nsw i32 %i.be, -14234               ; 2 uses
  %i.bg = icmp ult i32 %i.bf, 16384
  %i.bh = lshr i32 %i.bf, 6
  %i.bi = icmp samesign ult i32 %i.be, 14234
  %i.bj = select i1 %i.bi, i32 0, i32 255
  %i.bk = select i1 %i.bg, i32 %i.bh, i32 %i.bj
  %i.bl = trunc i32 %i.bk to i8
  store i8 %i.bl, ptr %i.az, align 1, !tbaa !8
  %i.bm = mul nuw nsw i32 %i.ax, 6419
  %i.bn = lshr i32 %i.bm, 8
  %i.bo = mul nuw nsw i32 %i.ay, 13320
  %i.bp = lshr i32 %i.bo, 8
  %i.bq = add nuw nsw i32 %i.bn, %i.bp
  %i.br = sub nsw i32 %i.bb, %i.bq                ; 2 uses
  %i.bs = add nsw i32 %i.br, 8708                 ; 2 uses
  %i.bt = icmp ult i32 %i.bs, 16384
  %i.bu = lshr i32 %i.bs, 6
  %i.bv = icmp slt i32 %i.br, -8708
  %i.bw = select i1 %i.bv, i32 0, i32 255
  %i.bx = select i1 %i.bt, i32 %i.bu, i32 %i.bw
  %i.by = trunc i32 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %.12657, i64 2
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !8
  %i.ca = mul nuw nsw i32 %i.ax, 33050
  %i.cb = lshr i32 %i.ca, 8
  %i.cc = add nuw nsw i32 %i.cb, %i.bb            ; 2 uses
  %i.cd = add nsw i32 %i.cc, -17685               ; 2 uses
  %i.ce = icmp ult i32 %i.cd, 16384
  %i.cf = lshr i32 %i.cd, 6
  %i.cg = icmp samesign ult i32 %i.cc, 17685
  %i.ch = select i1 %i.cg, i32 0, i32 255
  %i.ci = select i1 %i.ce, i32 %i.cf, i32 %i.ch
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %.12657, i64 3
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %.12657, i64 4
  %i.cm = getelementptr inbounds nuw i8, ptr %.12458, i64 1
  %i.cn = and i32 %.159, 1
  %i.co = zext nneg i32 %i.cn to i64              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.13055, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %.12856, i64 %i.co
  %i.cr = add nuw nsw i32 %.159, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cr, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph60, !llvm.loop !61

._crit_edge:                                      ; preds = %.lr.ph60, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @WebPInitConvertARGBToYUVSSE2() local_unnamed_addr #3 {
bb.a:
  store ptr @ConvertARGBToY_SSE2, ptr @WebPConvertARGBToY, align 8, !tbaa !11
  store ptr @ConvertARGBToUV_SSE2, ptr @WebPConvertARGBToUV, align 8, !tbaa !11
  store ptr @ConvertRGB24ToY_SSE2, ptr @WebPConvertRGB24ToY, align 8, !tbaa !11
  store ptr @ConvertBGR24ToY_SSE2, ptr @WebPConvertBGR24ToY, align 8, !tbaa !11
  store ptr @ConvertRGBA32ToUV_SSE2, ptr @WebPConvertRGBA32ToUV, align 8, !tbaa !11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ConvertARGBToY_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 15
  br i1 %i.a, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = and i32 %2, 2147483632
  %i.c = zext nneg i32 %i.b to i64
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.d = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %.preheader.loopexit ] ; 2 uses
  %i.e = icmp slt i32 %.0.lcssa, %2
  br i1 %i.e, label %.lr.ph33.preheader, label %._crit_edge

.lr.ph33.preheader:                               ; preds = %.preheader
  %i.f = zext i32 %.0.lcssa to i64                ; 4 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %i.g = sub nsw i64 %wide.trip.count, %i.f       ; 3 uses
  %min.iters.check = icmp ult i64 %i.g, 4
  br i1 %min.iters.check, label %.lr.ph33.preheader38, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph33.preheader
  %n.vec = and i64 %i.g, -4                       ; 3 uses
  %i.h = add nsw i64 %n.vec, %i.f
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = add nuw i64 %index, %i.f                 ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i
  %wide.load = load <4 x i32>, ptr %i.j, align 4, !tbaa !68 ; 3 uses
  %i.k = lshr <4 x i32> %wide.load, splat (i32 16)
  %i.l = and <4 x i32> %i.k, splat (i32 255)
  %i.m = lshr <4 x i32> %wide.load, splat (i32 8)
  %i.n = and <4 x i32> %i.m, splat (i32 255)
  %i.o = and <4 x i32> %wide.load, splat (i32 255)
  %i.p = mul nuw nsw <4 x i32> %i.l, splat (i32 16839)
  %i.q = mul nuw nsw <4 x i32> %i.n, splat (i32 33059)
  %i.r = mul nuw nsw <4 x i32> %i.o, splat (i32 6420)
  %i.s = add nuw nsw <4 x i32> %i.r, splat (i32 1081344)
  %i.t = add nuw nsw <4 x i32> %i.s, %i.p
  %i.u = add nuw nsw <4 x i32> %i.t, %i.q
  %i.v = lshr <4 x i32> %i.u, splat (i32 16)
  %i.w = trunc nuw <4 x i32> %i.v to <4 x i8>
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  store <4 x i8> %i.w, ptr %i.x, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph33.preheader38

.lr.ph33.preheader38:                             ; preds = %.lr.ph33.preheader, %middle.block
  %indvars.iv35.ph = phi i64 [ %i.f, %.lr.ph33.preheader ], [ %i.h, %middle.block ]
  br label %.lr.ph33

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 4 uses
  %3 = load <16 x i8>, ptr %i.z, align 1, !tbaa !8, !alias.scope !71 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %5 = load <16 x i8>, ptr %4, align 1, !tbaa !8, !alias.scope !71 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %7 = load <16 x i8>, ptr %6, align 1, !tbaa !8, !alias.scope !71 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %8 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !8, !alias.scope !71 ; 2 uses
  %i.ab = shufflevector <16 x i8> %3, <16 x i8> %5, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.ac = bitcast <16 x i8> %i.ab to <2 x i64>    ; 2 uses
  %i.ad = shufflevector <16 x i8> %3, <16 x i8> %5, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ae = bitcast <16 x i8> %i.ad to <2 x i64>
  %i.af = shufflevector <16 x i8> %7, <16 x i8> %8, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.ag = bitcast <16 x i8> %i.af to <2 x i64>    ; 2 uses
  %i.ah = shufflevector <16 x i8> %7, <16 x i8> %8, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ai = bitcast <16 x i8> %i.ah to <2 x i64>
  %i.aj = shufflevector <2 x i64> %i.ae, <2 x i64> %i.ai, <2 x i32> <i32 0, i32 2>
  %i.ak = shufflevector <2 x i64> %i.ac, <2 x i64> %i.ag, <2 x i32> <i32 1, i32 3>
  %i.al = shufflevector <2 x i64> %i.ac, <2 x i64> %i.ag, <2 x i32> <i32 0, i32 2>
  %i.am = bitcast <2 x i64> %i.aj to <16 x i8>    ; 2 uses
  %i.an = shufflevector <16 x i8> %i.am, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ao = shufflevector <16 x i8> %i.am, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ap = bitcast <2 x i64> %i.ak to <16 x i8>    ; 2 uses
  %i.aq = shufflevector <16 x i8> %i.ap, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ar = shufflevector <16 x i8> %i.ap, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.as = bitcast <2 x i64> %i.al to <16 x i8>    ; 2 uses
  %i.at = shufflevector <16 x i8> %i.as, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.au = shufflevector <16 x i8> %i.as, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.av = bitcast <16 x i8> %i.an to <8 x i16>    ; 2 uses
  %i.aw = bitcast <16 x i8> %i.aq to <8 x i16>    ; 4 uses
  %i.ax = shufflevector <8 x i16> %i.av, <8 x i16> %i.aw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ay = shufflevector <8 x i16> %i.av, <8 x i16> %i.aw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.az = bitcast <16 x i8> %i.at to <8 x i16>    ; 2 uses
  %i.ba = shufflevector <8 x i16> %i.aw, <8 x i16> %i.az, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bb = shufflevector <8 x i16> %i.aw, <8 x i16> %i.az, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ax, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.bd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ay, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.be = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ba, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.bf = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bb, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.bg = add <4 x i32> %i.bc, splat (i32 1081344)
  %i.bh = add <4 x i32> %i.bg, %i.be
  %i.bi = add <4 x i32> %i.bd, splat (i32 1081344)
  %i.bj = add <4 x i32> %i.bi, %i.bf
  %i.bk = ashr <4 x i32> %i.bh, splat (i32 16)
  %i.bl = ashr <4 x i32> %i.bj, splat (i32 16)
  %i.bm = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bk, <4 x i32> %i.bl)
  %i.bn = bitcast <16 x i8> %i.ao to <8 x i16>    ; 2 uses
  %i.bo = bitcast <16 x i8> %i.ar to <8 x i16>    ; 4 uses
  %i.bp = shufflevector <8 x i16> %i.bn, <8 x i16> %i.bo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bq = shufflevector <8 x i16> %i.bn, <8 x i16> %i.bo, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.br = bitcast <16 x i8> %i.au to <8 x i16>    ; 2 uses
  %i.bs = shufflevector <8 x i16> %i.bo, <8 x i16> %i.br, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bt = shufflevector <8 x i16> %i.bo, <8 x i16> %i.br, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bu = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bp, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.bv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bq, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.bw = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bs, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.bx = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bt, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.by = add <4 x i32> %i.bu, splat (i32 1081344)
  %i.bz = add <4 x i32> %i.by, %i.bw
  %i.ca = add <4 x i32> %i.bv, splat (i32 1081344)
  %i.cb = add <4 x i32> %i.ca, %i.bx
  %i.cc = ashr <4 x i32> %i.bz, splat (i32 16)
  %i.cd = ashr <4 x i32> %i.cb, splat (i32 16)
  %i.ce = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cc, <4 x i32> %i.cd)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.cg = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bm, <8 x i16> %i.ce)
  store <16 x i8> %i.cg, ptr %i.cf, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 3 uses
  %i.ch = icmp samesign ult i64 %indvars.iv.next, %i.c
  br i1 %i.ch, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !66

.lr.ph33:                                         ; preds = %.lr.ph33.preheader38, %.lr.ph33
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %.lr.ph33 ], [ %indvars.iv35.ph, %.lr.ph33.preheader38 ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv35
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !68 ; 3 uses
  %i.ck = lshr i32 %i.cj, 16
  %i.cl = and i32 %i.ck, 255
  %i.cm = lshr i32 %i.cj, 8
  %i.cn = and i32 %i.cm, 255
  %i.co = and i32 %i.cj, 255
  %i.cp = mul nuw nsw i32 %i.cl, 16839
  %i.cq = mul nuw nsw i32 %i.cn, 33059
  %i.cr = mul nuw nsw i32 %i.co, 6420
  %i.cs = add nuw nsw i32 %i.cr, 1081344
  %i.ct = add nuw nsw i32 %i.cs, %i.cp
  %i.cu = add nuw nsw i32 %i.ct, %i.cq
  %i.cv = lshr i32 %i.cu, 16
  %i.cw = trunc nuw i32 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv35
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !8
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph33, !llvm.loop !67

._crit_edge:                                      ; preds = %.lr.ph33, %middle.block, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ConvertARGBToUV_SSE2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i32 noundef %3, i32 noundef %4) #4 {
bb.a:
  %i.a = icmp sgt i32 %3, 31
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = and i32 %3, 2147483616
  %.not = icmp eq i32 %4, 0
  %i.c = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.090 = phi ptr [ %1, %.lr.ph ], [ %i.ef, %bb.d ] ; 3 uses
  %.02589 = phi ptr [ %2, %.lr.ph ], [ %i.eg, %bb.d ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 8 uses
  %5 = load <16 x i8>, ptr %i.d, align 1, !tbaa !8, !alias.scope !77 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %7 = load <16 x i8>, ptr %6, align 1, !tbaa !8, !alias.scope !77 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %9 = load <16 x i8>, ptr %8, align 1, !tbaa !8, !alias.scope !77 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %10 = load <16 x i8>, ptr %i.e, align 1, !tbaa !8, !alias.scope !77 ; 2 uses
  %i.f = shufflevector <16 x i8> %5, <16 x i8> %7, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.g = bitcast <16 x i8> %i.f to <2 x i64>      ; 2 uses
  %i.h = shufflevector <16 x i8> %5, <16 x i8> %7, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.i = bitcast <16 x i8> %i.h to <2 x i64>
  %i.j = shufflevector <16 x i8> %9, <16 x i8> %10, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.k = bitcast <16 x i8> %i.j to <2 x i64>      ; 2 uses
  %i.l = shufflevector <16 x i8> %9, <16 x i8> %10, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.m = bitcast <16 x i8> %i.l to <2 x i64>
  %i.n = shufflevector <2 x i64> %i.i, <2 x i64> %i.m, <2 x i32> <i32 0, i32 2>
  %i.o = shufflevector <2 x i64> %i.g, <2 x i64> %i.k, <2 x i32> <i32 1, i32 3>
  %i.p = shufflevector <2 x i64> %i.g, <2 x i64> %i.k, <2 x i32> <i32 0, i32 2>
  %i.q = bitcast <2 x i64> %i.n to <16 x i8>      ; 2 uses
  %i.r = shufflevector <16 x i8> %i.q, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.s = shufflevector <16 x i8> %i.q, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.t = bitcast <2 x i64> %i.o to <16 x i8>      ; 2 uses
  %i.u = shufflevector <16 x i8> %i.t, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.v = shufflevector <16 x i8> %i.t, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.w = bitcast <2 x i64> %i.p to <16 x i8>      ; 2 uses
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.y = shufflevector <16 x i8> %i.w, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.z = bitcast <16 x i8> %i.r to <8 x i16>
  %i.aa = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.z, <8 x i16> splat (i16 2))
  %i.ab = bitcast <16 x i8> %i.s to <8 x i16>
  %i.ac = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ab, <8 x i16> splat (i16 2))
  %i.ad = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.aa, <4 x i32> %i.ac) ; 2 uses
  %i.ae = bitcast <16 x i8> %i.u to <8 x i16>
  %i.af = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ae, <8 x i16> splat (i16 2))
  %i.ag = bitcast <16 x i8> %i.v to <8 x i16>
  %i.ah = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ag, <8 x i16> splat (i16 2))
  %i.ai = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.af, <4 x i32> %i.ah) ; 4 uses
  %i.aj = bitcast <16 x i8> %i.x to <8 x i16>
  %i.ak = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aj, <8 x i16> splat (i16 2))
  %i.al = bitcast <16 x i8> %i.y to <8 x i16>
  %i.am = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.al, <8 x i16> splat (i16 2))
  %i.an = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ak, <4 x i32> %i.am) ; 2 uses
  %i.ao = shufflevector <8 x i16> %i.ad, <8 x i16> %i.ai, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ap = shufflevector <8 x i16> %i.ad, <8 x i16> %i.ai, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aq = shufflevector <8 x i16> %i.ai, <8 x i16> %i.an, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ar = shufflevector <8 x i16> %i.ai, <8 x i16> %i.an, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.as = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ao, <8 x i16> <i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081>)
  %i.at = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ap, <8 x i16> <i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081>)
  %i.au = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aq, <8 x i16> <i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800>)
  %i.av = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ar, <8 x i16> <i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800>)
  %i.aw = add <4 x i32> %i.as, splat (i32 33685504)
  %i.ax = add <4 x i32> %i.aw, %i.au
  %i.ay = add <4 x i32> %i.at, splat (i32 33685504)
  %i.az = add <4 x i32> %i.ay, %i.av
  %i.ba = ashr <4 x i32> %i.ax, splat (i32 18)
  %i.bb = ashr <4 x i32> %i.az, splat (i32 18)
  %i.bc = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ba, <4 x i32> %i.bb)
  %i.bd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ao, <8 x i16> <i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0>)
  %i.be = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ap, <8 x i16> <i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0>)
  %i.bf = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aq, <8 x i16> <i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684>)
  %i.bg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ar, <8 x i16> <i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684>)
  %i.bh = add <4 x i32> %i.bd, splat (i32 33685504)
  %i.bi = add <4 x i32> %i.bh, %i.bf
  %i.bj = add <4 x i32> %i.be, splat (i32 33685504)
  %i.bk = add <4 x i32> %i.bj, %i.bg
  %i.bl = ashr <4 x i32> %i.bi, splat (i32 18)
  %i.bm = ashr <4 x i32> %i.bk, splat (i32 18)
  %i.bn = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bl, <4 x i32> %i.bm)
  %11 = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %12 = load <16 x i8>, ptr %11, align 1, !tbaa !8, !alias.scope !78 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %14 = load <16 x i8>, ptr %13, align 1, !tbaa !8, !alias.scope !78 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %15 = load <16 x i8>, ptr %i.bo, align 1, !tbaa !8, !alias.scope !78 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %16 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !8, !alias.scope !78 ; 2 uses
  %i.bq = shufflevector <16 x i8> %12, <16 x i8> %14, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.br = bitcast <16 x i8> %i.bq to <2 x i64>    ; 2 uses
  %i.bs = shufflevector <16 x i8> %12, <16 x i8> %14, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bt = bitcast <16 x i8> %i.bs to <2 x i64>
  %i.bu = shufflevector <16 x i8> %15, <16 x i8> %16, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.bv = bitcast <16 x i8> %i.bu to <2 x i64>    ; 2 uses
  %i.bw = shufflevector <16 x i8> %15, <16 x i8> %16, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bx = bitcast <16 x i8> %i.bw to <2 x i64>
  %i.by = shufflevector <2 x i64> %i.bt, <2 x i64> %i.bx, <2 x i32> <i32 0, i32 2>
  %i.bz = shufflevector <2 x i64> %i.br, <2 x i64> %i.bv, <2 x i32> <i32 1, i32 3>
  %i.ca = shufflevector <2 x i64> %i.br, <2 x i64> %i.bv, <2 x i32> <i32 0, i32 2>
  %i.cb = bitcast <2 x i64> %i.by to <16 x i8>    ; 2 uses
  %i.cc = shufflevector <16 x i8> %i.cb, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cd = shufflevector <16 x i8> %i.cb, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ce = bitcast <2 x i64> %i.bz to <16 x i8>    ; 2 uses
  %i.cf = shufflevector <16 x i8> %i.ce, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cg = shufflevector <16 x i8> %i.ce, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ch = bitcast <2 x i64> %i.ca to <16 x i8>    ; 2 uses
  %i.ci = shufflevector <16 x i8> %i.ch, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cj = shufflevector <16 x i8> %i.ch, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ck = bitcast <16 x i8> %i.cc to <8 x i16>
  %i.cl = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ck, <8 x i16> splat (i16 2))
  %i.cm = bitcast <16 x i8> %i.cd to <8 x i16>
  %i.cn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cm, <8 x i16> splat (i16 2))
  %i.co = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cl, <4 x i32> %i.cn) ; 2 uses
  %i.cp = bitcast <16 x i8> %i.cf to <8 x i16>
  %i.cq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cp, <8 x i16> splat (i16 2))
  %i.cr = bitcast <16 x i8> %i.cg to <8 x i16>
  %i.cs = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cr, <8 x i16> splat (i16 2))
  %i.ct = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cq, <4 x i32> %i.cs) ; 4 uses
  %i.cu = bitcast <16 x i8> %i.ci to <8 x i16>
  %i.cv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cu, <8 x i16> splat (i16 2))
  %i.cw = bitcast <16 x i8> %i.cj to <8 x i16>
  %i.cx = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cw, <8 x i16> splat (i16 2))
  %i.cy = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cv, <4 x i32> %i.cx) ; 2 uses
  %i.cz = shufflevector <8 x i16> %i.co, <8 x i16> %i.ct, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.da = shufflevector <8 x i16> %i.co, <8 x i16> %i.ct, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.db = shufflevector <8 x i16> %i.ct, <8 x i16> %i.cy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.dc = shufflevector <8 x i16> %i.ct, <8 x i16> %i.cy, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cz, <8 x i16> <i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081>)
  %i.de = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.da, <8 x i16> <i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081>)
  %i.df = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.db, <8 x i16> <i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800>)
  %i.dg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dc, <8 x i16> <i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800>)
  %i.dh = add <4 x i32> %i.dd, splat (i32 33685504)
  %i.di = add <4 x i32> %i.dh, %i.df
  %i.dj = add <4 x i32> %i.de, splat (i32 33685504)
  %i.dk = add <4 x i32> %i.dj, %i.dg
  %i.dl = ashr <4 x i32> %i.di, splat (i32 18)
  %i.dm = ashr <4 x i32> %i.dk, splat (i32 18)
  %i.dn = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dl, <4 x i32> %i.dm)
  %i.do = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cz, <8 x i16> <i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0>)
  %i.dp = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.da, <8 x i16> <i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0>)
  %i.dq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.db, <8 x i16> <i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684>)
  %i.dr = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dc, <8 x i16> <i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684>)
  %i.ds = add <4 x i32> %i.do, splat (i32 33685504)
  %i.dt = add <4 x i32> %i.ds, %i.dq
  %i.du = add <4 x i32> %i.dp, splat (i32 33685504)
  %i.dv = add <4 x i32> %i.du, %i.dr
  %i.dw = ashr <4 x i32> %i.dt, splat (i32 18)
  %i.dx = ashr <4 x i32> %i.dv, splat (i32 18)
  %i.dy = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dw, <4 x i32> %i.dx)
  %i.dz = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bc, <8 x i16> %i.dn) ; 2 uses
  %i.ea = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bn, <8 x i16> %i.dy) ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.eb = load <16 x i8>, ptr %.090, align 1, !tbaa !8
  %i.ec = load <16 x i8>, ptr %.02589, align 1, !tbaa !8
  %i.ed = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dz, <16 x i8> %i.eb)
  %i.ee = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ea, <16 x i8> %i.ec)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.087.in = phi <16 x i8> [ %i.ed, %bb.c ], [ %i.dz, %bb.b ]
  %.086.in = phi <16 x i8> [ %i.ee, %bb.c ], [ %i.ea, %bb.b ]
  store <16 x i8> %.087.in, ptr %.090, align 1, !tbaa !8
  store <16 x i8> %.086.in, ptr %.02589, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.090, i64 16 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.02589, i64 16 ; 2 uses
  %i.eh = icmp samesign ult i64 %indvars.iv.next, %i.c
  br i1 %i.eh, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !76

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.ei = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.026.lcssa = phi i32 [ 0, %bb.a ], [ %i.ei, %._crit_edge.loopexit ] ; 3 uses
  %.025.lcssa = phi ptr [ %2, %bb.a ], [ %i.eg, %._crit_edge.loopexit ]
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.ef, %._crit_edge.loopexit ]
  %i.ej = icmp slt i32 %.026.lcssa, %3
  br i1 %i.ej, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ek = zext nneg i32 %.026.lcssa to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ek
  %i.em = sub nuw nsw i32 %3, %.026.lcssa
  tail call void @WebPConvertARGBToUV_C(ptr noundef %i.el, ptr noundef %.0.lcssa, ptr noundef %.025.lcssa, i32 noundef %i.em, i32 noundef %4) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @ConvertRGB24ToY_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i32 noundef %2) #5 {
bb.a:
  %i.a = alloca [6 x <2 x i64>], align 16         ; 10 uses
  %i.b = and i32 %2, -32
  %i.c = icmp sgt i32 %2, 31
  %indvars.iv.sroa.gep68 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br i1 %i.c, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  br label %bb.b

.preheader:                                       ; preds = %bb.d, %bb.a
  %.031.lcssa = phi i32 [ 0, %bb.a ], [ %i.ds, %bb.d ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.dt, %bb.d ] ; 5 uses
  %i.i = icmp slt i32 %.031.lcssa, %2
  br i1 %i.i, label %.lr.ph54.preheader, label %._crit_edge

.lr.ph54.preheader:                               ; preds = %.preheader
  %i.j = sext i32 %.031.lcssa to i64              ; 5 uses
  %wide.trip.count = sext i32 %2 to i64           ; 3 uses
  %i.k = sub nsw i64 %wide.trip.count, %i.j
  %xtraiter = and i64 %i.k, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph54.prol.loopexit, label %.lr.ph54.prol

.lr.ph54.prol:                                    ; preds = %.lr.ph54.preheader
  %i.l = load i8, ptr %.0.lcssa, align 1, !tbaa !8
  %i.m = zext i8 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8
  %i.p = zext i8 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8
  %i.s = zext i8 %i.r to i32
  %i.t = mul nuw nsw i32 %i.m, 16839
  %i.u = mul nuw nsw i32 %i.p, 33059
  %i.v = mul nuw nsw i32 %i.s, 6420
  %i.w = add nuw nsw i32 %i.t, 1081344
  %i.x = add nuw nsw i32 %i.w, %i.u
  %i.y = add nuw nsw i32 %i.x, %i.v
  %i.z = lshr i32 %i.y, 16
  %i.aa = trunc nuw i32 %i.z to i8
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.j
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !8
  %indvars.iv.next62.prol = add nsw i64 %i.j, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 3
  br label %.lr.ph54.prol.loopexit

.lr.ph54.prol.loopexit:                           ; preds = %.lr.ph54.prol, %.lr.ph54.preheader
  %indvars.iv61.unr = phi i64 [ %i.j, %.lr.ph54.preheader ], [ %indvars.iv.next62.prol, %.lr.ph54.prol ]
  %.153.unr = phi ptr [ %.0.lcssa, %.lr.ph54.preheader ], [ %i.ac, %.lr.ph54.prol ]
  %i.ad = add nsw i64 %wide.trip.count, -1
  %i.ae = icmp eq i64 %i.ad, %i.j
  br i1 %i.ae, label %._crit_edge, label %.lr.ph54

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.050 = phi ptr [ %0, %.lr.ph ], [ %i.dt, %bb.d ] ; 7 uses
  %.03149 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next57, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.af = load <16 x i8>, ptr %.050, align 1, !tbaa !8, !alias.scope !84 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.050, i64 16
  %i.ah = load <16 x i8>, ptr %i.ag, align 1, !tbaa !8, !alias.scope !84 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.050, i64 32
  %i.aj = load <16 x i8>, ptr %i.ai, align 1, !tbaa !8, !alias.scope !84 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.050, i64 48
  %i.al = load <16 x i8>, ptr %i.ak, align 1, !tbaa !8, !alias.scope !84 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.050, i64 64
  %i.an = load <16 x i8>, ptr %i.am, align 1, !tbaa !8, !alias.scope !84 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.050, i64 80
  %i.ap = load <16 x i8>, ptr %i.ao, align 1, !tbaa !8, !alias.scope !84 ; 2 uses
  %i.aq = shufflevector <16 x i8> %i.af, <16 x i8> %i.al, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ar = shufflevector <16 x i8> %i.af, <16 x i8> %i.al, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.as = shufflevector <16 x i8> %i.ah, <16 x i8> %i.an, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.at = shufflevector <16 x i8> %i.ah, <16 x i8> %i.an, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.au = shufflevector <16 x i8> %i.aj, <16 x i8> %i.ap, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.av = shufflevector <16 x i8> %i.aj, <16 x i8> %i.ap, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aw = shufflevector <16 x i8> %i.aq, <16 x i8> %i.at, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ax = shufflevector <16 x i8> %i.aq, <16 x i8> %i.at, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ay = shufflevector <16 x i8> %i.ar, <16 x i8> %i.au, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.az = shufflevector <16 x i8> %i.ar, <16 x i8> %i.au, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ba = shufflevector <16 x i8> %i.as, <16 x i8> %i.av, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bb = shufflevector <16 x i8> %i.as, <16 x i8> %i.av, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bc = shufflevector <16 x i8> %i.aw, <16 x i8> %i.az, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bd = shufflevector <16 x i8> %i.aw, <16 x i8> %i.az, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.be = shufflevector <16 x i8> %i.ax, <16 x i8> %i.ba, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bf = shufflevector <16 x i8> %i.ax, <16 x i8> %i.ba, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bg = shufflevector <16 x i8> %i.ay, <16 x i8> %i.bb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bh = shufflevector <16 x i8> %i.ay, <16 x i8> %i.bb, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bi = shufflevector <16 x i8> %i.bc, <16 x i8> %i.bf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bj = shufflevector <16 x i8> %i.bc, <16 x i8> %i.bf, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bk = shufflevector <16 x i8> %i.bd, <16 x i8> %i.bg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bl = shufflevector <16 x i8> %i.bd, <16 x i8> %i.bg, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bm = shufflevector <16 x i8> %i.be, <16 x i8> %i.bh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bn = shufflevector <16 x i8> %i.be, <16 x i8> %i.bh, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bo = shufflevector <16 x i8> %i.bi, <16 x i8> %i.bl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
end_hunk_0
begin_hunk_1_@ConvertBGR24ToY_SSE2:bb.a
  %i.u = mul nuw nsw i32 %i.q, 33059
  %i.v = mul nuw nsw i32 %i.s, 6420
  %i.w = add nuw nsw i32 %i.t, 1081344
  %i.x = add nuw nsw i32 %i.w, %i.u
  %i.y = add nuw nsw i32 %i.x, %i.v
  %i.z = lshr i32 %i.y, 16
  %i.aa = trunc nuw i32 %i.z to i8
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.j
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !8
  %indvars.iv.next62.prol = add nsw i64 %i.j, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 3
  br label %.lr.ph54.prol.loopexit

.lr.ph54.prol.loopexit:                           ; preds = %.lr.ph54.prol, %.lr.ph54.preheader
  %indvars.iv61.unr = phi i64 [ %i.j, %.lr.ph54.preheader ], [ %indvars.iv.next62.prol, %.lr.ph54.prol ]
  %.153.unr = phi ptr [ %.0.lcssa, %.lr.ph54.preheader ], [ %i.ac, %.lr.ph54.prol ]
  %i.ad = add nsw i64 %wide.trip.count, -1
  %i.ae = icmp eq i64 %i.ad, %i.j
  br i1 %i.ae, label %._crit_edge, label %.lr.ph54

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.050 = phi ptr [ %0, %.lr.ph ], [ %i.dt, %bb.d ] ; 7 uses
  %.03149 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next57, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.af = load <16 x i8>, ptr %.050, align 1, !tbaa !8, !alias.scope !90 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.050, i64 16
  %i.ah = load <16 x i8>, ptr %i.ag, align 1, !tbaa !8, !alias.scope !90 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.050, i64 32
  %i.aj = load <16 x i8>, ptr %i.ai, align 1, !tbaa !8, !alias.scope !90 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.050, i64 48
  %i.al = load <16 x i8>, ptr %i.ak, align 1, !tbaa !8, !alias.scope !90 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.050, i64 64
  %i.an = load <16 x i8>, ptr %i.am, align 1, !tbaa !8, !alias.scope !90 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.050, i64 80
  %i.ap = load <16 x i8>, ptr %i.ao, align 1, !tbaa !8, !alias.scope !90 ; 2 uses
  %i.aq = shufflevector <16 x i8> %i.af, <16 x i8> %i.al, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ar = shufflevector <16 x i8> %i.af, <16 x i8> %i.al, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.as = shufflevector <16 x i8> %i.ah, <16 x i8> %i.an, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.at = shufflevector <16 x i8> %i.ah, <16 x i8> %i.an, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.au = shufflevector <16 x i8> %i.aj, <16 x i8> %i.ap, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.av = shufflevector <16 x i8> %i.aj, <16 x i8> %i.ap, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aw = shufflevector <16 x i8> %i.aq, <16 x i8> %i.at, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ax = shufflevector <16 x i8> %i.aq, <16 x i8> %i.at, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ay = shufflevector <16 x i8> %i.ar, <16 x i8> %i.au, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.az = shufflevector <16 x i8> %i.ar, <16 x i8> %i.au, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ba = shufflevector <16 x i8> %i.as, <16 x i8> %i.av, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bb = shufflevector <16 x i8> %i.as, <16 x i8> %i.av, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bc = shufflevector <16 x i8> %i.aw, <16 x i8> %i.az, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bd = shufflevector <16 x i8> %i.aw, <16 x i8> %i.az, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.be = shufflevector <16 x i8> %i.ax, <16 x i8> %i.ba, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bf = shufflevector <16 x i8> %i.ax, <16 x i8> %i.ba, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bg = shufflevector <16 x i8> %i.ay, <16 x i8> %i.bb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bh = shufflevector <16 x i8> %i.ay, <16 x i8> %i.bb, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bi = shufflevector <16 x i8> %i.bc, <16 x i8> %i.bf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bj = shufflevector <16 x i8> %i.bc, <16 x i8> %i.bf, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bk = shufflevector <16 x i8> %i.bd, <16 x i8> %i.bg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bl = shufflevector <16 x i8> %i.bd, <16 x i8> %i.bg, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bm = shufflevector <16 x i8> %i.be, <16 x i8> %i.bh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bn = shufflevector <16 x i8> %i.be, <16 x i8> %i.bh, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bo = shufflevector <16 x i8> %i.bi, <16 x i8> %i.bl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.bo, ptr %i.a, align 16, !tbaa !8, !noalias !90
  %i.bp = shufflevector <16 x i8> %i.bi, <16 x i8> %i.bl, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.bp, ptr %i.d, align 16, !tbaa !8, !noalias !90
  %i.bq = shufflevector <16 x i8> %i.bj, <16 x i8> %i.bm, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.bq, ptr %i.e, align 16, !tbaa !8, !noalias !90
  %i.br = shufflevector <16 x i8> %i.bj, <16 x i8> %i.bm, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.br, ptr %i.f, align 16, !tbaa !8, !noalias !90
  %i.bs = shufflevector <16 x i8> %i.bk, <16 x i8> %i.bn, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.bs, ptr %i.g, align 16, !tbaa !8, !noalias !90
  %i.bt = shufflevector <16 x i8> %i.bk, <16 x i8> %i.bn, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.bt, ptr %i.h, align 16, !tbaa !8, !noalias !90
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv56 = phi i64 [ %.03149, %bb.b ], [ %indvars.iv.next57, %bb.c ] ; 2 uses
  %i.bu = phi i1 [ true, %bb.b ], [ false, %bb.c ]
  %indvars.iv.sroa.phi = phi ptr [ %i.a, %bb.b ], [ %indvars.iv.sroa.gep68, %bb.c ] ; 3 uses
  %i.bv = load <16 x i8>, ptr %indvars.iv.sroa.phi, align 16, !tbaa !8 ; 2 uses
  %i.bw = shufflevector <16 x i8> %i.bv, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bx = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi, i64 32
  %i.by = load <16 x i8>, ptr %i.bx, align 16, !tbaa !8 ; 2 uses
  %i.bz = shufflevector <16 x i8> %i.by, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ca = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi, i64 64
  %i.cb = load <16 x i8>, ptr %i.ca, align 16, !tbaa !8 ; 2 uses
  %i.cc = shufflevector <16 x i8> %i.cb, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cd = bitcast <16 x i8> %i.cc to <8 x i16>    ; 2 uses
  %i.ce = bitcast <16 x i8> %i.bz to <8 x i16>    ; 4 uses
  %i.cf = shufflevector <8 x i16> %i.cd, <8 x i16> %i.ce, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cg = shufflevector <8 x i16> %i.cd, <8 x i16> %i.ce, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ch = bitcast <16 x i8> %i.bw to <8 x i16>    ; 2 uses
  %i.ci = shufflevector <8 x i16> %i.ce, <8 x i16> %i.ch, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cj = shufflevector <8 x i16> %i.ce, <8 x i16> %i.ch, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ck = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cf, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.cl = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cg, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.cm = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ci, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.cn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cj, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.co = add <4 x i32> %i.ck, splat (i32 1081344)
  %i.cp = add <4 x i32> %i.co, %i.cm
  %i.cq = add <4 x i32> %i.cl, splat (i32 1081344)
  %i.cr = add <4 x i32> %i.cq, %i.cn
  %i.cs = ashr <4 x i32> %i.cp, splat (i32 16)
  %i.ct = ashr <4 x i32> %i.cr, splat (i32 16)
  %i.cu = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cs, <4 x i32> %i.ct)
  %i.cv = shufflevector <16 x i8> %i.bv, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cw = shufflevector <16 x i8> %i.by, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cx = shufflevector <16 x i8> %i.cb, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cy = bitcast <16 x i8> %i.cx to <8 x i16>    ; 2 uses
  %i.cz = bitcast <16 x i8> %i.cw to <8 x i16>    ; 4 uses
  %i.da = shufflevector <8 x i16> %i.cy, <8 x i16> %i.cz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.db = shufflevector <8 x i16> %i.cy, <8 x i16> %i.cz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dc = bitcast <16 x i8> %i.cv to <8 x i16>    ; 2 uses
  %i.dd = shufflevector <8 x i16> %i.cz, <8 x i16> %i.dc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.de = shufflevector <8 x i16> %i.cz, <8 x i16> %i.dc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.df = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.da, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.dg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.db, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.dh = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.dd, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.di = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.de, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.dj = add <4 x i32> %i.df, splat (i32 1081344)
  %i.dk = add <4 x i32> %i.dj, %i.dh
  %i.dl = add <4 x i32> %i.dg, splat (i32 1081344)
  %i.dm = add <4 x i32> %i.dl, %i.di
  %i.dn = ashr <4 x i32> %i.dk, splat (i32 16)
  %i.do = ashr <4 x i32> %i.dm, splat (i32 16)
  %i.dp = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dn, <4 x i32> %i.do)
  %i.dq = getelementptr inbounds i8, ptr %1, i64 %indvars.iv56
  %i.dr = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cu, <8 x i16> %i.dp)
  store <16 x i8> %i.dr, ptr %i.dq, align 1, !tbaa !8
  %indvars.iv.next57 = add nsw i64 %indvars.iv56, 16 ; 3 uses
  br i1 %i.bu, label %bb.c, label %bb.d, !llvm.loop !87

bb.d:                                             ; preds = %bb.c
  %i.ds = trunc nsw i64 %indvars.iv.next57 to i32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.dt = getelementptr inbounds nuw i8, ptr %.050, i64 96 ; 2 uses
  %i.du = icmp sgt i32 %i.b, %i.ds
  br i1 %i.du, label %bb.b, label %.preheader, !llvm.loop !88

.lr.ph54:                                         ; preds = %.lr.ph54.prol.loopexit, %.lr.ph54
  %indvars.iv61 = phi i64 [ %indvars.iv.next62.1, %.lr.ph54 ], [ %indvars.iv61.unr, %.lr.ph54.prol.loopexit ] ; 3 uses
  %.153 = phi ptr [ %i.ff, %.lr.ph54 ], [ %.153.unr, %.lr.ph54.prol.loopexit ] ; 7 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.153, i64 2
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !8
  %i.dx = zext i8 %i.dw to i32
  %i.dy = getelementptr inbounds nuw i8, ptr %.153, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !8
  %i.ea = zext i8 %i.dz to i32
  %i.eb = load i8, ptr %.153, align 1, !tbaa !8
  %i.ec = zext i8 %i.eb to i32
  %i.ed = mul nuw nsw i32 %i.dx, 16839
  %i.ee = mul nuw nsw i32 %i.ea, 33059
  %i.ef = mul nuw nsw i32 %i.ec, 6420
  %i.eg = add nuw nsw i32 %i.ed, 1081344
  %i.eh = add nuw nsw i32 %i.eg, %i.ee
  %i.ei = add nuw nsw i32 %i.eh, %i.ef
  %i.ej = lshr i32 %i.ei, 16
  %i.ek = trunc nuw i32 %i.ej to i8
  %i.el = getelementptr inbounds i8, ptr %1, i64 %indvars.iv61
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !8
  %i.em = getelementptr inbounds nuw i8, ptr %.153, i64 3
  %i.en = getelementptr inbounds nuw i8, ptr %.153, i64 5
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !8
  %i.ep = zext i8 %i.eo to i32
  %i.eq = getelementptr inbounds nuw i8, ptr %.153, i64 4
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !8
  %i.es = zext i8 %i.er to i32
  %i.et = load i8, ptr %i.em, align 1, !tbaa !8
  %i.eu = zext i8 %i.et to i32
  %i.ev = mul nuw nsw i32 %i.ep, 16839
  %i.ew = mul nuw nsw i32 %i.es, 33059
  %i.ex = mul nuw nsw i32 %i.eu, 6420
  %i.ey = add nuw nsw i32 %i.ev, 1081344
  %i.ez = add nuw nsw i32 %i.ey, %i.ew
  %i.fa = add nuw nsw i32 %i.ez, %i.ex
  %i.fb = lshr i32 %i.fa, 16
  %i.fc = trunc nuw i32 %i.fb to i8
  %i.fd = getelementptr i8, ptr %1, i64 %indvars.iv61
  %i.fe = getelementptr i8, ptr %i.fd, i64 1
  store i8 %i.fc, ptr %i.fe, align 1, !tbaa !8
  %indvars.iv.next62.1 = add nsw i64 %indvars.iv61, 2 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.153, i64 6
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next62.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph54, !llvm.loop !89

._crit_edge:                                      ; preds = %.lr.ph54.prol.loopexit, %.lr.ph54, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ConvertRGBA32ToUV_SSE2(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, i32 noundef %3) #4 {
bb.a:
  %i.a = and i32 %3, -16                          ; 2 uses
  %i.b = shl nsw i32 %i.a, 2
  %i.c = sext i32 %i.b to i64
  %.idx = shl nsw i64 %i.c, 1
  %i.d = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.e = icmp sgt i32 %3, 15
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.042 = phi ptr [ %i.co, %.lr.ph ], [ %0, %bb.a ] ; 9 uses
  %.01841 = phi ptr [ %i.cn, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.01940 = phi ptr [ %i.cm, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %4 = load <8 x i16>, ptr %.042, align 1, !tbaa !8, !alias.scope !96 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.042, i64 16
  %6 = load <8 x i16>, ptr %5, align 1, !tbaa !8, !alias.scope !96 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.042, i64 32
  %8 = load <8 x i16>, ptr %7, align 1, !tbaa !8, !alias.scope !96 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.042, i64 48
  %9 = load <8 x i16>, ptr %i.f, align 1, !tbaa !8, !alias.scope !96 ; 2 uses
  %i.g = shufflevector <8 x i16> %4, <8 x i16> %6, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.h = bitcast <8 x i16> %i.g to <2 x i64>      ; 2 uses
  %i.i = shufflevector <8 x i16> %4, <8 x i16> %6, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.j = bitcast <8 x i16> %i.i to <2 x i64>
  %i.k = shufflevector <8 x i16> %8, <8 x i16> %9, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.l = bitcast <8 x i16> %i.k to <2 x i64>      ; 2 uses
  %i.m = shufflevector <8 x i16> %8, <8 x i16> %9, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.n = bitcast <8 x i16> %i.m to <2 x i64>
  %i.o = shufflevector <2 x i64> %i.h, <2 x i64> %i.l, <2 x i32> <i32 0, i32 2>
  %i.p = shufflevector <2 x i64> %i.h, <2 x i64> %i.l, <2 x i32> <i32 1, i32 3>
  %i.q = shufflevector <2 x i64> %i.j, <2 x i64> %i.n, <2 x i32> <i32 0, i32 2>
  %i.r = bitcast <2 x i64> %i.o to <8 x i16>      ; 2 uses
  %i.s = bitcast <2 x i64> %i.p to <8 x i16>      ; 4 uses
  %i.t = shufflevector <8 x i16> %i.r, <8 x i16> %i.s, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.u = shufflevector <8 x i16> %i.r, <8 x i16> %i.s, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.v = bitcast <2 x i64> %i.q to <8 x i16>      ; 2 uses
  %i.w = shufflevector <8 x i16> %i.s, <8 x i16> %i.v, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.x = shufflevector <8 x i16> %i.s, <8 x i16> %i.v, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.y = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.t, <8 x i16> <i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081>)
  %i.z = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.u, <8 x i16> <i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081>)
  %i.aa = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.w, <8 x i16> <i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800>)
  %i.ab = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.x, <8 x i16> <i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800>)
  %i.ac = add <4 x i32> %i.y, splat (i32 33685504)
  %i.ad = add <4 x i32> %i.ac, %i.aa
  %i.ae = add <4 x i32> %i.z, splat (i32 33685504)
  %i.af = add <4 x i32> %i.ae, %i.ab
  %i.ag = ashr <4 x i32> %i.ad, splat (i32 18)
  %i.ah = ashr <4 x i32> %i.af, splat (i32 18)
  %i.ai = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ag, <4 x i32> %i.ah)
  %i.aj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.t, <8 x i16> <i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0>)
  %i.ak = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.u, <8 x i16> <i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0>)
  %i.al = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.w, <8 x i16> <i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684>)
  %i.am = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.x, <8 x i16> <i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684>)
  %i.an = add <4 x i32> %i.aj, splat (i32 33685504)
  %i.ao = add <4 x i32> %i.an, %i.al
  %i.ap = add <4 x i32> %i.ak, splat (i32 33685504)
  %i.aq = add <4 x i32> %i.ap, %i.am
  %i.ar = ashr <4 x i32> %i.ao, splat (i32 18)
  %i.as = ashr <4 x i32> %i.aq, splat (i32 18)
  %i.at = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ar, <4 x i32> %i.as)
  %10 = getelementptr inbounds nuw i8, ptr %.042, i64 64
  %11 = load <8 x i16>, ptr %10, align 1, !tbaa !8, !alias.scope !97 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %.042, i64 80
  %13 = load <8 x i16>, ptr %12, align 1, !tbaa !8, !alias.scope !97 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.042, i64 96
  %14 = load <8 x i16>, ptr %i.au, align 1, !tbaa !8, !alias.scope !97 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.042, i64 112
  %15 = load <8 x i16>, ptr %i.av, align 1, !tbaa !8, !alias.scope !97 ; 2 uses
  %i.aw = shufflevector <8 x i16> %11, <8 x i16> %13, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.ax = bitcast <8 x i16> %i.aw to <2 x i64>    ; 2 uses
  %i.ay = shufflevector <8 x i16> %11, <8 x i16> %13, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.az = bitcast <8 x i16> %i.ay to <2 x i64>
  %i.ba = shufflevector <8 x i16> %14, <8 x i16> %15, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.bb = bitcast <8 x i16> %i.ba to <2 x i64>    ; 2 uses
  %i.bc = shufflevector <8 x i16> %14, <8 x i16> %15, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bd = bitcast <8 x i16> %i.bc to <2 x i64>
  %i.be = shufflevector <2 x i64> %i.ax, <2 x i64> %i.bb, <2 x i32> <i32 0, i32 2>
  %i.bf = shufflevector <2 x i64> %i.ax, <2 x i64> %i.bb, <2 x i32> <i32 1, i32 3>
  %i.bg = shufflevector <2 x i64> %i.az, <2 x i64> %i.bd, <2 x i32> <i32 0, i32 2>
  %i.bh = bitcast <2 x i64> %i.be to <8 x i16>    ; 2 uses
  %i.bi = bitcast <2 x i64> %i.bf to <8 x i16>    ; 4 uses
  %i.bj = shufflevector <8 x i16> %i.bh, <8 x i16> %i.bi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.bk = shufflevector <8 x i16> %i.bh, <8 x i16> %i.bi, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.bl = bitcast <2 x i64> %i.bg to <8 x i16>    ; 2 uses
  %i.bm = shufflevector <8 x i16> %i.bi, <8 x i16> %i.bl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.bn = shufflevector <8 x i16> %i.bi, <8 x i16> %i.bl, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.bo = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bj, <8 x i16> <i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081>)
  %i.bp = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bk, <8 x i16> <i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081, i16 -9719, i16 -19081>)
  %i.bq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bm, <8 x i16> <i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800>)
  %i.br = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bn, <8 x i16> <i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800>)
  %i.bs = add <4 x i32> %i.bo, splat (i32 33685504)
  %i.bt = add <4 x i32> %i.bs, %i.bq
  %i.bu = add <4 x i32> %i.bp, splat (i32 33685504)
  %i.bv = add <4 x i32> %i.bu, %i.br
  %i.bw = ashr <4 x i32> %i.bt, splat (i32 18)
  %i.bx = ashr <4 x i32> %i.bv, splat (i32 18)
  %i.by = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bw, <4 x i32> %i.bx)
  %i.bz = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bj, <8 x i16> <i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0>)
  %i.ca = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bk, <8 x i16> <i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0, i16 28800, i16 0>)
  %i.cb = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bm, <8 x i16> <i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684>)
  %i.cc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bn, <8 x i16> <i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684, i16 -24116, i16 -4684>)
  %i.cd = add <4 x i32> %i.bz, splat (i32 33685504)
  %i.ce = add <4 x i32> %i.cd, %i.cb
  %i.cf = add <4 x i32> %i.ca, splat (i32 33685504)
  %i.cg = add <4 x i32> %i.cf, %i.cc
  %i.ch = ashr <4 x i32> %i.ce, splat (i32 18)
  %i.ci = ashr <4 x i32> %i.cg, splat (i32 18)
  %i.cj = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ch, <4 x i32> %i.ci)
  %i.ck = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ai, <8 x i16> %i.by)
  store <16 x i8> %i.ck, ptr %.01940, align 1, !tbaa !8
  %i.cl = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.at, <8 x i16> %i.cj)
  store <16 x i8> %i.cl, ptr %.01841, align 1, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %.01940, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.01841, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.042, i64 128 ; 3 uses
  %i.cp = icmp ult ptr %i.co, %i.d
  br i1 %i.cp, label %.lr.ph, label %._crit_edge, !llvm.loop !95

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.019.lcssa = phi ptr [ %1, %bb.a ], [ %i.cm, %.lr.ph ]
  %.018.lcssa = phi ptr [ %2, %bb.a ], [ %i.cn, %.lr.ph ]
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.co, %.lr.ph ]
  %.not = icmp eq i32 %i.a, %3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.cq = and i32 %3, 15
  tail call void @WebPConvertRGBA32ToUV_C(ptr noundef %.0.lcssa, ptr noundef %.019.lcssa, ptr noundef %.018.lcssa, i32 noundef %i.cq) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16>, <8 x i16>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.usub.sat.v8i16(<8 x i16>, <8 x i16>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #7

declare void @WebPConvertARGBToUV_C(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8>, <16 x i8>) #7

declare void @WebPConvertRGBA32ToUV_C(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umulh.v8i16(<8 x i16>, <8 x i16>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = distinct !{!12, i1 false, !"PackAndStore4_SSE2"}
!13 = distinct !{!13, !12, !"PackAndStore4_SSE2: argument 0"}
!14 = distinct !{!14, !9}
!15 = !{!13}
!16 = distinct !{!16, i1 false, !"PackAndStore4_SSE2"}
!17 = distinct !{!17, !16, !"PackAndStore4_SSE2: argument 0"}
!18 = distinct !{!18, !9}
!19 = !{!17}
!20 = distinct !{!20, i1 false, !"PackAndStore4_SSE2"}
!21 = distinct !{!21, !20, !"PackAndStore4_SSE2: argument 0"}
!22 = distinct !{!22, !9}
!23 = !{!21}
!24 = distinct !{!24, i1 false, !"PackAndStore4444_SSE2"}
!25 = distinct !{!25, !24, !"PackAndStore4444_SSE2: argument 0"}
!26 = distinct !{!26, !9}
!27 = !{!25}
!28 = distinct !{!28, i1 false, !"PackAndStore565_SSE2"}
!29 = distinct !{!29, !28, !"PackAndStore565_SSE2: argument 0"}
!30 = distinct !{!30, !9}
!31 = !{!29}
!32 = distinct !{!32, i1 false, !"PlanarTo24b_SSE2"}
!33 = distinct !{!33, !32, !"PlanarTo24b_SSE2: argument 0"}
!34 = !{!33}
!35 = distinct !{!35, i1 false, !"PlanarTo24b_SSE2"}
!36 = distinct !{!36, !35, !"PlanarTo24b_SSE2: argument 0"}
!37 = !{!36}
!38 = distinct !{!38, i1 false, !"PlanarTo24b_SSE2"}
!39 = distinct !{!39, !38, !"PlanarTo24b_SSE2: argument 0"}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = !{!39}
!43 = distinct !{!43, i1 false, !"PackAndStore4_SSE2"}
!44 = distinct !{!44, !43, !"PackAndStore4_SSE2: argument 0"}
!45 = distinct !{!45, !9}
!46 = distinct !{!46, !9}
!47 = !{!44}
!48 = distinct !{!48, i1 false, !"PlanarTo24b_SSE2"}
!49 = distinct !{!49, !48, !"PlanarTo24b_SSE2: argument 0"}
!50 = distinct !{!50, !9}
!51 = distinct !{!51, !9}
!52 = !{!49}
!53 = distinct !{!53, i1 false, !"PackAndStore4_SSE2"}
!54 = distinct !{!54, !53, !"PackAndStore4_SSE2: argument 0"}
!55 = distinct !{!55, !9}
!56 = distinct !{!56, !9}
!57 = !{!54}
!58 = distinct !{!58, i1 false, !"PackAndStore4_SSE2"}
!59 = distinct !{!59, !58, !"PackAndStore4_SSE2: argument 0"}
!60 = distinct !{!60, !9}
!61 = distinct !{!61, !9}
!62 = !{!59}
!63 = distinct !{!63, !9, !69, !70}
!64 = distinct !{!64, i1 false, !"RGB32PackedToPlanar_SSE2"}
!65 = distinct !{!65, !64, !"RGB32PackedToPlanar_SSE2: argument 0"}
!66 = distinct !{!66, !9}
!67 = distinct !{!67, !9, !70, !69}
!68 = !{!5, !5, i64 0}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!65}
!72 = distinct !{!72, i1 false, !"RGB32PackedToPlanar_SSE2"}
!73 = distinct !{!73, !72, !"RGB32PackedToPlanar_SSE2: argument 0"}
!74 = distinct !{!74, i1 false, !"RGB32PackedToPlanar_SSE2"}
!75 = distinct !{!75, !74, !"RGB32PackedToPlanar_SSE2: argument 0"}
!76 = distinct !{!76, !9}
!77 = !{!73}
!78 = !{!75}
!79 = distinct !{!79, i1 false, !"RGB24PackedToPlanar_SSE2"}
!80 = distinct !{!80, !79, !"RGB24PackedToPlanar_SSE2: argument 0"}
!81 = distinct !{!81, !9}
!82 = distinct !{!82, !9}
!83 = distinct !{!83, !9}
!84 = !{!80}
!85 = distinct !{!85, i1 false, !"RGB24PackedToPlanar_SSE2"}
!86 = distinct !{!86, !85, !"RGB24PackedToPlanar_SSE2: argument 0"}
!87 = distinct !{!87, !9}
!88 = distinct !{!88, !9}
!89 = distinct !{!89, !9}
!90 = !{!86}
!91 = distinct !{!91, i1 false, !"RGBA32PackedToPlanar_16b_SSE2"}
!92 = distinct !{!92, !91, !"RGBA32PackedToPlanar_16b_SSE2: argument 0"}
!93 = distinct !{!93, i1 false, !"RGBA32PackedToPlanar_16b_SSE2"}
!94 = distinct !{!94, !93, !"RGBA32PackedToPlanar_16b_SSE2: argument 0"}
!95 = distinct !{!95, !9}
!96 = !{!92}
end_hunk_1
