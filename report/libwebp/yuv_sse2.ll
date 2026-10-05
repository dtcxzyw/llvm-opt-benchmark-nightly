Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/yuv_sse2?download=true
inline.NumInlined: 109
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@YuvToArgbRow_SSE2:bb.a
  %.02350 = phi ptr [ %i.ao, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.02549 = phi ptr [ %i.ar, %.lr.ph ], [ %3, %bb.a ] ; 3 uses
  %.02748 = phi ptr [ %i.aq, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.02947 = phi ptr [ %i.ap, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.023.val = load i64, ptr %.02350, align 1, !tbaa !9
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
  store <8 x i16> %i.al, ptr %.02549, align 1, !tbaa !9, !alias.scope !63
  %i.an = getelementptr inbounds nuw i8, ptr %.02549, i64 16
  store <8 x i16> %i.am, ptr %i.an, align 1, !tbaa !9, !alias.scope !63
  %i.ao = getelementptr inbounds nuw i8, ptr %.02350, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.02947, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.02748, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02549, i64 32 ; 2 uses
  %i.as = add nuw nsw i32 %i.c, 8                 ; 2 uses
  %.not = icmp sgt i32 %i.as, %4
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !61

.lr.ph60:                                         ; preds = %.preheader, %.lr.ph60
  %.159 = phi i32 [ %i.cr, %.lr.ph60 ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %.12458 = phi ptr [ %i.cm, %.lr.ph60 ], [ %.023.lcssa, %.preheader ] ; 2 uses
  %.12657 = phi ptr [ %i.cl, %.lr.ph60 ], [ %.025.lcssa, %.preheader ] ; 5 uses
  %.12856 = phi ptr [ %i.cq, %.lr.ph60 ], [ %.027.lcssa, %.preheader ] ; 2 uses
  %.13055 = phi ptr [ %i.cp, %.lr.ph60 ], [ %.029.lcssa, %.preheader ] ; 2 uses
  %i.at = load i8, ptr %.12458, align 1, !tbaa !9
  %i.au = load i8, ptr %.13055, align 1, !tbaa !9
  %i.av = load i8, ptr %.12856, align 1, !tbaa !9
  store i8 -1, ptr %.12657, align 1, !tbaa !9
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
  store i8 %i.bl, ptr %i.az, align 1, !tbaa !9
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
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !9
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
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !9
  %i.cl = getelementptr inbounds nuw i8, ptr %.12657, i64 4
  %i.cm = getelementptr inbounds nuw i8, ptr %.12458, i64 1
  %i.cn = and i32 %.159, 1
  %i.co = zext nneg i32 %i.cn to i64              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.13055, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %.12856, i64 %i.co
  %i.cr = add nuw nsw i32 %.159, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cr, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph60, !llvm.loop !62

._crit_edge:                                      ; preds = %.lr.ph60, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @WebPInitConvertARGBToYUVSSE2() local_unnamed_addr #3 {
bb.a:
  store ptr @ConvertARGBToY_SSE2, ptr @WebPConvertARGBToY, align 8, !tbaa !12
  store ptr @ConvertARGBToUV_SSE2, ptr @WebPConvertARGBToUV, align 8, !tbaa !12
  store ptr @ConvertRGBToY_SSE2, ptr @WebPConvertRGBToY, align 8, !tbaa !12
  store ptr @ConvertBGRToY_SSE2, ptr @WebPConvertBGRToY, align 8, !tbaa !12
  store ptr @ConvertRGBA32ToUV_SSE2, ptr @WebPConvertRGBA32ToUV, align 8, !tbaa !12
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
  %wide.load = load <4 x i32>, ptr %i.j, align 4, !tbaa !69 ; 3 uses
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
  store <4 x i8> %i.w, ptr %i.x, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph33.preheader38

.lr.ph33.preheader38:                             ; preds = %.lr.ph33.preheader, %middle.block
  %indvars.iv35.ph = phi i64 [ %i.f, %.lr.ph33.preheader ], [ %i.h, %middle.block ]
  br label %.lr.ph33

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 4 uses
  %3 = load <16 x i8>, ptr %i.z, align 1, !tbaa !9, !alias.scope !72 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %5 = load <16 x i8>, ptr %4, align 1, !tbaa !9, !alias.scope !72 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %7 = load <16 x i8>, ptr %6, align 1, !tbaa !9, !alias.scope !72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %8 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !9, !alias.scope !72 ; 2 uses
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
  store <16 x i8> %i.cg, ptr %i.cf, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 3 uses
  %i.ch = icmp samesign ult i64 %indvars.iv.next, %i.c
  br i1 %i.ch, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !67

.lr.ph33:                                         ; preds = %.lr.ph33.preheader38, %.lr.ph33
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %.lr.ph33 ], [ %indvars.iv35.ph, %.lr.ph33.preheader38 ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv35
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !69 ; 3 uses
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
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !9
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph33, !llvm.loop !68

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
  %5 = load <16 x i8>, ptr %i.d, align 1, !tbaa !9, !alias.scope !78 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %7 = load <16 x i8>, ptr %6, align 1, !tbaa !9, !alias.scope !78 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %9 = load <16 x i8>, ptr %8, align 1, !tbaa !9, !alias.scope !78 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %10 = load <16 x i8>, ptr %i.e, align 1, !tbaa !9, !alias.scope !78 ; 2 uses
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
  %12 = load <16 x i8>, ptr %11, align 1, !tbaa !9, !alias.scope !79 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %14 = load <16 x i8>, ptr %13, align 1, !tbaa !9, !alias.scope !79 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %15 = load <16 x i8>, ptr %i.bo, align 1, !tbaa !9, !alias.scope !79 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %16 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !9, !alias.scope !79 ; 2 uses
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
  %i.eb = load <16 x i8>, ptr %.090, align 1, !tbaa !9
  %i.ec = load <16 x i8>, ptr %.02589, align 1, !tbaa !9
  %i.ed = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.dz, <16 x i8> %i.eb)
  %i.ee = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.ea, <16 x i8> %i.ec)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.087.in = phi <16 x i8> [ %i.ed, %bb.c ], [ %i.dz, %bb.b ]
  %.086.in = phi <16 x i8> [ %i.ee, %bb.c ], [ %i.ea, %bb.b ]
  store <16 x i8> %.087.in, ptr %.090, align 1, !tbaa !9
  store <16 x i8> %.086.in, ptr %.02589, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.090, i64 16 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.02589, i64 16 ; 2 uses
  %i.eh = icmp samesign ult i64 %indvars.iv.next, %i.c
  br i1 %i.eh, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !77

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
define internal void @ConvertRGBToY_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = alloca [6 x <2 x i64>], align 16         ; 15 uses
  %i.b = and i32 %2, -32                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.c = icmp eq i32 %3, 3
  %indvars.iv.i.sroa.gep24 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.d = icmp sgt i32 %2, 31                      ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader41

.preheader41:                                     ; preds = %bb.a
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader41
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  br label %bb.d

.preheader:                                       ; preds = %bb.a
  br i1 %i.d, label %.lr.ph48, label %.loopexit

.lr.ph48:                                         ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph48, %ConvertRGBToYHelper_SSE2.exit
  %.047 = phi ptr [ %0, %.lr.ph48 ], [ %i.cz, %ConvertRGBToYHelper_SSE2.exit ] ; 7 uses
  %.03746 = phi i64 [ 0, %.lr.ph48 ], [ %indvars.iv.next42.i, %ConvertRGBToYHelper_SSE2.exit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.m = load <16 x i8>, ptr %.047, align 1, !tbaa !9, !alias.scope !91 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.047, i64 16
  %i.o = load <16 x i8>, ptr %i.n, align 1, !tbaa !9, !alias.scope !91 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.047, i64 32
  %i.q = load <16 x i8>, ptr %i.p, align 1, !tbaa !9, !alias.scope !91 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.047, i64 48
  %i.s = load <16 x i8>, ptr %i.r, align 1, !tbaa !9, !alias.scope !91 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.047, i64 64
  %i.u = load <16 x i8>, ptr %i.t, align 1, !tbaa !9, !alias.scope !91 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.047, i64 80
  %i.w = load <16 x i8>, ptr %i.v, align 1, !tbaa !9, !alias.scope !91 ; 2 uses
  %i.x = shufflevector <16 x i8> %i.m, <16 x i8> %i.s, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.y = shufflevector <16 x i8> %i.m, <16 x i8> %i.s, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.z = shufflevector <16 x i8> %i.o, <16 x i8> %i.u, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.aa = shufflevector <16 x i8> %i.o, <16 x i8> %i.u, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ab = shufflevector <16 x i8> %i.q, <16 x i8> %i.w, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ac = shufflevector <16 x i8> %i.q, <16 x i8> %i.w, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ad = shufflevector <16 x i8> %i.x, <16 x i8> %i.aa, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ae = shufflevector <16 x i8> %i.x, <16 x i8> %i.aa, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.af = shufflevector <16 x i8> %i.y, <16 x i8> %i.ab, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ag = shufflevector <16 x i8> %i.y, <16 x i8> %i.ab, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ah = shufflevector <16 x i8> %i.z, <16 x i8> %i.ac, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ai = shufflevector <16 x i8> %i.z, <16 x i8> %i.ac, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aj = shufflevector <16 x i8> %i.ad, <16 x i8> %i.ag, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ak = shufflevector <16 x i8> %i.ad, <16 x i8> %i.ag, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.al = shufflevector <16 x i8> %i.ae, <16 x i8> %i.ah, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.am = shufflevector <16 x i8> %i.ae, <16 x i8> %i.ah, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.an = shufflevector <16 x i8> %i.af, <16 x i8> %i.ai, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ao = shufflevector <16 x i8> %i.af, <16 x i8> %i.ai, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ap = shufflevector <16 x i8> %i.aj, <16 x i8> %i.am, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.aq = shufflevector <16 x i8> %i.aj, <16 x i8> %i.am, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ar = shufflevector <16 x i8> %i.ak, <16 x i8> %i.an, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.as = shufflevector <16 x i8> %i.ak, <16 x i8> %i.an, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.at = shufflevector <16 x i8> %i.al, <16 x i8> %i.ao, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.au = shufflevector <16 x i8> %i.al, <16 x i8> %i.ao, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.av = shufflevector <16 x i8> %i.ap, <16 x i8> %i.as, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.av, ptr %i.a, align 16, !tbaa !9, !noalias !91
  %i.aw = shufflevector <16 x i8> %i.ap, <16 x i8> %i.as, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.aw, ptr %indvars.iv.i.sroa.gep24, align 16, !tbaa !9, !noalias !91
  %i.ax = shufflevector <16 x i8> %i.aq, <16 x i8> %i.at, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.ax, ptr %i.i, align 16, !tbaa !9, !noalias !91
  %i.ay = shufflevector <16 x i8> %i.aq, <16 x i8> %i.at, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.ay, ptr %i.j, align 16, !tbaa !9, !noalias !91
  %i.az = shufflevector <16 x i8> %i.ar, <16 x i8> %i.au, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.az, ptr %i.k, align 16, !tbaa !9, !noalias !91
  %i.ba = shufflevector <16 x i8> %i.ar, <16 x i8> %i.au, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.ba, ptr %i.l, align 16, !tbaa !9, !noalias !91
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv41.i = phi i64 [ %.03746, %bb.b ], [ %indvars.iv.next42.i, %bb.c ] ; 2 uses
  %i.bb = phi i1 [ true, %bb.b ], [ false, %bb.c ]
  %indvars.iv.i.sroa.phi = phi ptr [ %i.a, %bb.b ], [ %indvars.iv.i.sroa.gep24, %bb.c ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ 1, %bb.c ]
  %i.bc = load <16 x i8>, ptr %indvars.iv.i.sroa.phi, align 16, !tbaa !9, !noalias !92 ; 2 uses
  %i.bd = shufflevector <16 x i8> %i.bc, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.be = getelementptr inbounds nuw i8, ptr %indvars.iv.i.sroa.phi, i64 32
  %i.bf = load <16 x i8>, ptr %i.be, align 16, !tbaa !9, !noalias !92 ; 2 uses
  %i.bg = shufflevector <16 x i8> %i.bf, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %gep47.i = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.bh = load <16 x i8>, ptr %gep47.i, align 16, !tbaa !9, !noalias !92 ; 2 uses
  %i.bi = shufflevector <16 x i8> %i.bh, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bj = bitcast <16 x i8> %i.bd to <8 x i16>    ; 2 uses
  %i.bk = bitcast <16 x i8> %i.bg to <8 x i16>    ; 4 uses
  %i.bl = shufflevector <8 x i16> %i.bj, <8 x i16> %i.bk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bm = shufflevector <8 x i16> %i.bj, <8 x i16> %i.bk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bn = bitcast <16 x i8> %i.bi to <8 x i16>    ; 2 uses
  %i.bo = shufflevector <8 x i16> %i.bk, <8 x i16> %i.bn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bp = shufflevector <8 x i16> %i.bk, <8 x i16> %i.bn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bl, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.br = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bm, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.bs = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bo, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.bt = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bp, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.bu = add <4 x i32> %i.bq, splat (i32 1081344)
  %i.bv = add <4 x i32> %i.bu, %i.bs
  %i.bw = add <4 x i32> %i.br, splat (i32 1081344)
  %i.bx = add <4 x i32> %i.bw, %i.bt
  %i.by = ashr <4 x i32> %i.bv, splat (i32 16)
  %i.bz = ashr <4 x i32> %i.bx, splat (i32 16)
  %i.ca = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.by, <4 x i32> %i.bz)
  %i.cb = shufflevector <16 x i8> %i.bc, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cc = shufflevector <16 x i8> %i.bf, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cd = shufflevector <16 x i8> %i.bh, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ce = bitcast <16 x i8> %i.cb to <8 x i16>    ; 2 uses
  %i.cf = bitcast <16 x i8> %i.cc to <8 x i16>    ; 4 uses
  %i.cg = shufflevector <8 x i16> %i.ce, <8 x i16> %i.cf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ch = shufflevector <8 x i16> %i.ce, <8 x i16> %i.cf, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ci = bitcast <16 x i8> %i.cd to <8 x i16>    ; 2 uses
  %i.cj = shufflevector <8 x i16> %i.cf, <8 x i16> %i.ci, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ck = shufflevector <8 x i16> %i.cf, <8 x i16> %i.ci, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cl = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cg, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.cm = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ch, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.cn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cj, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.co = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ck, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.cp = add <4 x i32> %i.cl, splat (i32 1081344)
  %i.cq = add <4 x i32> %i.cp, %i.cn
  %i.cr = add <4 x i32> %i.cm, splat (i32 1081344)
  %i.cs = add <4 x i32> %i.cr, %i.co
  %i.ct = ashr <4 x i32> %i.cq, splat (i32 16)
  %i.cu = ashr <4 x i32> %i.cs, splat (i32 16)
  %i.cv = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ct, <4 x i32> %i.cu)
  %i.cw = getelementptr inbounds i8, ptr %1, i64 %indvars.iv41.i
  %i.cx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ca, <8 x i16> %i.cv)
  store <16 x i8> %i.cx, ptr %i.cw, align 1, !tbaa !9, !alias.scope !92
  %indvars.iv.next42.i = add nsw i64 %indvars.iv41.i, 16 ; 3 uses
  br i1 %i.bb, label %bb.c, label %ConvertRGBToYHelper_SSE2.exit, !llvm.loop !0

ConvertRGBToYHelper_SSE2.exit:                    ; preds = %bb.c
  %i.cy = trunc nsw i64 %indvars.iv.next42.i to i32 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.047, i64 96 ; 2 uses
  %i.da = icmp sgt i32 %i.b, %i.cy
  br i1 %i.da, label %bb.b, label %.loopexit, !llvm.loop !84

bb.d:                                             ; preds = %.lr.ph, %ConvertRGBToYHelper_SSE2.exit23
  %.144 = phi ptr [ %0, %.lr.ph ], [ %i.fy, %ConvertRGBToYHelper_SSE2.exit23 ] ; 9 uses
  %.13843 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next42.i22, %ConvertRGBToYHelper_SSE2.exit23 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %4 = load <16 x i8>, ptr %.144, align 1, !tbaa !9, !alias.scope !93 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.144, i64 16
  %6 = load <16 x i8>, ptr %5, align 1, !tbaa !9, !alias.scope !93 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.144, i64 32
  %8 = load <16 x i8>, ptr %7, align 1, !tbaa !9, !alias.scope !93 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %.144, i64 48
  %10 = load <16 x i8>, ptr %9, align 1, !tbaa !9, !alias.scope !93 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %.144, i64 64
  %12 = load <16 x i8>, ptr %11, align 1, !tbaa !9, !alias.scope !93 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.144, i64 80
  %13 = load <16 x i8>, ptr %i.db, align 1, !tbaa !9, !alias.scope !93 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.144, i64 96
  %14 = load <16 x i8>, ptr %i.dc, align 1, !tbaa !9, !alias.scope !93 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.144, i64 112
  %15 = load <16 x i8>, ptr %i.dd, align 1, !tbaa !9, !alias.scope !93 ; 2 uses
  %i.de = shufflevector <16 x i8> %4, <16 x i8> %6, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.df = bitcast <16 x i8> %i.de to <2 x i64>    ; 2 uses
  %i.dg = shufflevector <16 x i8> %4, <16 x i8> %6, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dh = bitcast <16 x i8> %i.dg to <2 x i64>
  %i.di = shufflevector <16 x i8> %8, <16 x i8> %10, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.dj = bitcast <16 x i8> %i.di to <2 x i64>    ; 2 uses
  %i.dk = shufflevector <16 x i8> %8, <16 x i8> %10, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dl = bitcast <16 x i8> %i.dk to <2 x i64>
  %i.dm = shufflevector <2 x i64> %i.dh, <2 x i64> %i.dl, <2 x i32> <i32 0, i32 2>
  %i.dn = shufflevector <2 x i64> %i.df, <2 x i64> %i.dj, <2 x i32> <i32 1, i32 3>
  %i.do = shufflevector <2 x i64> %i.df, <2 x i64> %i.dj, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.do, ptr %i.a, align 16, !tbaa !9, !noalias !93
  store <2 x i64> %i.dn, ptr %i.e, align 16, !tbaa !9, !noalias !93
  store <2 x i64> %i.dm, ptr %i.f, align 16, !tbaa !9, !noalias !93
  %i.dp = shufflevector <16 x i8> %12, <16 x i8> %13, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.dq = bitcast <16 x i8> %i.dp to <2 x i64>    ; 2 uses
  %i.dr = shufflevector <16 x i8> %12, <16 x i8> %13, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ds = bitcast <16 x i8> %i.dr to <2 x i64>
  %i.dt = shufflevector <16 x i8> %14, <16 x i8> %15, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.du = bitcast <16 x i8> %i.dt to <2 x i64>    ; 2 uses
  %i.dv = shufflevector <16 x i8> %14, <16 x i8> %15, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dw = bitcast <16 x i8> %i.dv to <2 x i64>
  %i.dx = shufflevector <2 x i64> %i.ds, <2 x i64> %i.dw, <2 x i32> <i32 0, i32 2>
  %i.dy = shufflevector <2 x i64> %i.dq, <2 x i64> %i.du, <2 x i32> <i32 1, i32 3>
  %i.dz = shufflevector <2 x i64> %i.dq, <2 x i64> %i.du, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.dz, ptr %indvars.iv.i.sroa.gep24, align 16, !tbaa !9, !noalias !93
  store <2 x i64> %i.dy, ptr %i.g, align 16, !tbaa !9, !noalias !93
  store <2 x i64> %i.dx, ptr %i.h, align 16, !tbaa !9, !noalias !93
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv41.i18 = phi i64 [ %.13843, %bb.d ], [ %indvars.iv.next42.i22, %bb.e ] ; 2 uses
  %i.ea = phi i1 [ true, %bb.d ], [ false, %bb.e ]
  %indvars.iv.i19.sroa.phi = phi ptr [ %i.a, %bb.d ], [ %indvars.iv.i.sroa.gep24, %bb.e ] ; 2 uses
  %indvars.iv.i19 = phi i64 [ 0, %bb.d ], [ 1, %bb.e ]
  %i.eb = load <16 x i8>, ptr %indvars.iv.i19.sroa.phi, align 16, !tbaa !9, !noalias !94 ; 2 uses
  %i.ec = shufflevector <16 x i8> %i.eb, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ed = getelementptr inbounds nuw i8, ptr %indvars.iv.i19.sroa.phi, i64 32
  %i.ee = load <16 x i8>, ptr %i.ed, align 16, !tbaa !9, !noalias !94 ; 2 uses
  %i.ef = shufflevector <16 x i8> %i.ee, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %gep47.i21 = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.i19
  %i.eg = load <16 x i8>, ptr %gep47.i21, align 16, !tbaa !9, !noalias !94 ; 2 uses
  %i.eh = shufflevector <16 x i8> %i.eg, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ei = bitcast <16 x i8> %i.ec to <8 x i16>    ; 2 uses
  %i.ej = bitcast <16 x i8> %i.ef to <8 x i16>    ; 4 uses
  %i.ek = shufflevector <8 x i16> %i.ei, <8 x i16> %i.ej, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.el = shufflevector <8 x i16> %i.ei, <8 x i16> %i.ej, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.em = bitcast <16 x i8> %i.eh to <8 x i16>    ; 2 uses
  %i.en = shufflevector <8 x i16> %i.ej, <8 x i16> %i.em, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eo = shufflevector <8 x i16> %i.ej, <8 x i16> %i.em, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ep = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ek, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.eq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.el, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.er = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.en, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.es = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.eo, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.et = add <4 x i32> %i.ep, splat (i32 1081344)
  %i.eu = add <4 x i32> %i.et, %i.er
  %i.ev = add <4 x i32> %i.eq, splat (i32 1081344)
  %i.ew = add <4 x i32> %i.ev, %i.es
  %i.ex = ashr <4 x i32> %i.eu, splat (i32 16)
  %i.ey = ashr <4 x i32> %i.ew, splat (i32 16)
  %i.ez = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ex, <4 x i32> %i.ey)
  %i.fa = shufflevector <16 x i8> %i.eb, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.fb = shufflevector <16 x i8> %i.ee, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.fc = shufflevector <16 x i8> %i.eg, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.fd = bitcast <16 x i8> %i.fa to <8 x i16>    ; 2 uses
  %i.fe = bitcast <16 x i8> %i.fb to <8 x i16>    ; 4 uses
  %i.ff = shufflevector <8 x i16> %i.fd, <8 x i16> %i.fe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fg = shufflevector <8 x i16> %i.fd, <8 x i16> %i.fe, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fh = bitcast <16 x i8> %i.fc to <8 x i16>    ; 2 uses
  %i.fi = shufflevector <8 x i16> %i.fe, <8 x i16> %i.fh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fj = shufflevector <8 x i16> %i.fe, <8 x i16> %i.fh, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fk = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ff, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.fl = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fg, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.fm = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fi, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.fn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fj, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.fo = add <4 x i32> %i.fk, splat (i32 1081344)
  %i.fp = add <4 x i32> %i.fo, %i.fm
  %i.fq = add <4 x i32> %i.fl, splat (i32 1081344)
  %i.fr = add <4 x i32> %i.fq, %i.fn
  %i.fs = ashr <4 x i32> %i.fp, splat (i32 16)
  %i.ft = ashr <4 x i32> %i.fr, splat (i32 16)
  %i.fu = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.fs, <4 x i32> %i.ft)
  %i.fv = getelementptr inbounds i8, ptr %1, i64 %indvars.iv41.i18
  %i.fw = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ez, <8 x i16> %i.fu)
  store <16 x i8> %i.fw, ptr %i.fv, align 1, !tbaa !9, !alias.scope !94
  %indvars.iv.next42.i22 = add nsw i64 %indvars.iv41.i18, 16 ; 3 uses
  br i1 %i.ea, label %bb.e, label %ConvertRGBToYHelper_SSE2.exit23, !llvm.loop !0

ConvertRGBToYHelper_SSE2.exit23:                  ; preds = %bb.e
  %i.fx = trunc nsw i64 %indvars.iv.next42.i22 to i32 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.144, i64 128 ; 2 uses
  %i.fz = icmp sgt i32 %i.b, %i.fx
  br i1 %i.fz, label %bb.d, label %.loopexit, !llvm.loop !89

.loopexit:                                        ; preds = %ConvertRGBToYHelper_SSE2.exit23, %ConvertRGBToYHelper_SSE2.exit, %.preheader41, %.preheader
  %.239 = phi i32 [ %i.cy, %ConvertRGBToYHelper_SSE2.exit ], [ 0, %.preheader ], [ 0, %.preheader41 ], [ %i.fx, %ConvertRGBToYHelper_SSE2.exit23 ] ; 2 uses
  %.2 = phi ptr [ %i.cz, %ConvertRGBToYHelper_SSE2.exit ], [ %0, %.preheader ], [ %0, %.preheader41 ], [ %i.fy, %ConvertRGBToYHelper_SSE2.exit23 ] ; 5 uses
  %i.ga = icmp slt i32 %.239, %2
  br i1 %i.ga, label %.lr.ph53, label %._crit_edge

.lr.ph53:                                         ; preds = %.loopexit
  %i.gb = sext i32 %3 to i64                      ; 3 uses
  %i.gc = sext i32 %.239 to i64                   ; 5 uses
  %wide.trip.count = sext i32 %2 to i64           ; 3 uses
  %i.gd = sub nsw i64 %wide.trip.count, %i.gc
  %xtraiter = and i64 %i.gd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph53
  %i.ge = load i8, ptr %.2, align 1, !tbaa !9
  %i.gf = zext i8 %i.ge to i32
  %i.gg = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !9
  %i.gi = zext i8 %i.gh to i32
  %i.gj = getelementptr inbounds nuw i8, ptr %.2, i64 2
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !9
  %i.gl = zext i8 %i.gk to i32
  %i.gm = mul nuw nsw i32 %i.gf, 16839
  %i.gn = mul nuw nsw i32 %i.gi, 33059
  %i.go = mul nuw nsw i32 %i.gl, 6420
  %i.gp = add nuw nsw i32 %i.gm, 1081344
  %i.gq = add nuw nsw i32 %i.gp, %i.gn
  %i.gr = add nuw nsw i32 %i.gq, %i.go
  %i.gs = lshr i32 %i.gr, 16
  %i.gt = trunc nuw i32 %i.gs to i8
  %i.gu = getelementptr inbounds i8, ptr %1, i64 %i.gc
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !9
  %indvars.iv.next.prol = add nsw i64 %i.gc, 1
  %i.gv = getelementptr inbounds i8, ptr %.2, i64 %i.gb
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph53
  %indvars.iv.unr = phi i64 [ %i.gc, %.lr.ph53 ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %.352.unr = phi ptr [ %.2, %.lr.ph53 ], [ %i.gv, %.prol.loopexit.unr-lcssa ]
  %i.gw = add nsw i64 %wide.trip.count, -1
  %i.gx = icmp eq i64 %i.gw, %i.gc
  br i1 %i.gx, label %._crit_edge, label %.lr.ph53.new

.lr.ph53.new:                                     ; preds = %.prol.loopexit, %.lr.ph53.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph53.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %.352 = phi ptr [ %i.ii, %.lr.ph53.new ], [ %.352.unr, %.prol.loopexit ] ; 4 uses
  %i.gy = load i8, ptr %.352, align 1, !tbaa !9
  %i.gz = zext i8 %i.gy to i32
  %i.ha = getelementptr inbounds nuw i8, ptr %.352, i64 1
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !9
  %i.hc = zext i8 %i.hb to i32
  %i.hd = getelementptr inbounds nuw i8, ptr %.352, i64 2
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !9
  %i.hf = zext i8 %i.he to i32
  %i.hg = mul nuw nsw i32 %i.gz, 16839
  %i.hh = mul nuw nsw i32 %i.hc, 33059
  %i.hi = mul nuw nsw i32 %i.hf, 6420
  %i.hj = add nuw nsw i32 %i.hg, 1081344
  %i.hk = add nuw nsw i32 %i.hj, %i.hh
  %i.hl = add nuw nsw i32 %i.hk, %i.hi
  %i.hm = lshr i32 %i.hl, 16
  %i.hn = trunc nuw i32 %i.hm to i8
  %i.ho = getelementptr inbounds i8, ptr %1, i64 %indvars.iv
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !9
  %i.hp = getelementptr inbounds i8, ptr %.352, i64 %i.gb ; 4 uses
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !9
  %i.hr = zext i8 %i.hq to i32
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 1
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !9
  %i.hu = zext i8 %i.ht to i32
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 2
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !9
  %i.hx = zext i8 %i.hw to i32
  %i.hy = mul nuw nsw i32 %i.hr, 16839
  %i.hz = mul nuw nsw i32 %i.hu, 33059
  %i.ia = mul nuw nsw i32 %i.hx, 6420
  %i.ib = add nuw nsw i32 %i.hy, 1081344
  %i.ic = add nuw nsw i32 %i.ib, %i.hz
  %i.id = add nuw nsw i32 %i.ic, %i.ia
  %i.ie = lshr i32 %i.id, 16
  %i.if = trunc nuw i32 %i.ie to i8
  %i.ig = getelementptr i8, ptr %1, i64 %indvars.iv
  %i.ih = getelementptr i8, ptr %i.ig, i64 1
  store i8 %i.if, ptr %i.ih, align 1, !tbaa !9
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ii = getelementptr inbounds i8, ptr %i.hp, i64 %i.gb
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph53.new, !llvm.loop !90

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph53.new, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @ConvertBGRToY_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = alloca [6 x <2 x i64>], align 16         ; 15 uses
  %i.b = and i32 %2, -32                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.c = icmp eq i32 %3, 3
  %indvars.iv.i.sroa.gep24 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.d = icmp sgt i32 %2, 31                      ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader41

.preheader41:                                     ; preds = %bb.a
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader41
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  br label %bb.d

.preheader:                                       ; preds = %bb.a
  br i1 %i.d, label %.lr.ph48, label %.loopexit

.lr.ph48:                                         ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph48, %ConvertRGBToYHelper_SSE2.exit
  %.047 = phi ptr [ %0, %.lr.ph48 ], [ %i.cz, %ConvertRGBToYHelper_SSE2.exit ] ; 7 uses
  %.03746 = phi i64 [ 0, %.lr.ph48 ], [ %indvars.iv.next42.i, %ConvertRGBToYHelper_SSE2.exit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.m = load <16 x i8>, ptr %.047, align 1, !tbaa !9, !alias.scope !106 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.047, i64 16
  %i.o = load <16 x i8>, ptr %i.n, align 1, !tbaa !9, !alias.scope !106 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.047, i64 32
  %i.q = load <16 x i8>, ptr %i.p, align 1, !tbaa !9, !alias.scope !106 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.047, i64 48
  %i.s = load <16 x i8>, ptr %i.r, align 1, !tbaa !9, !alias.scope !106 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.047, i64 64
  %i.u = load <16 x i8>, ptr %i.t, align 1, !tbaa !9, !alias.scope !106 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.047, i64 80
  %i.w = load <16 x i8>, ptr %i.v, align 1, !tbaa !9, !alias.scope !106 ; 2 uses
  %i.x = shufflevector <16 x i8> %i.m, <16 x i8> %i.s, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.y = shufflevector <16 x i8> %i.m, <16 x i8> %i.s, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.z = shufflevector <16 x i8> %i.o, <16 x i8> %i.u, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.aa = shufflevector <16 x i8> %i.o, <16 x i8> %i.u, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ab = shufflevector <16 x i8> %i.q, <16 x i8> %i.w, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ac = shufflevector <16 x i8> %i.q, <16 x i8> %i.w, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ad = shufflevector <16 x i8> %i.x, <16 x i8> %i.aa, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ae = shufflevector <16 x i8> %i.x, <16 x i8> %i.aa, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.af = shufflevector <16 x i8> %i.y, <16 x i8> %i.ab, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ag = shufflevector <16 x i8> %i.y, <16 x i8> %i.ab, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ah = shufflevector <16 x i8> %i.z, <16 x i8> %i.ac, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ai = shufflevector <16 x i8> %i.z, <16 x i8> %i.ac, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.aj = shufflevector <16 x i8> %i.ad, <16 x i8> %i.ag, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ak = shufflevector <16 x i8> %i.ad, <16 x i8> %i.ag, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.al = shufflevector <16 x i8> %i.ae, <16 x i8> %i.ah, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.am = shufflevector <16 x i8> %i.ae, <16 x i8> %i.ah, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.an = shufflevector <16 x i8> %i.af, <16 x i8> %i.ai, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ao = shufflevector <16 x i8> %i.af, <16 x i8> %i.ai, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ap = shufflevector <16 x i8> %i.aj, <16 x i8> %i.am, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.aq = shufflevector <16 x i8> %i.aj, <16 x i8> %i.am, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ar = shufflevector <16 x i8> %i.ak, <16 x i8> %i.an, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.as = shufflevector <16 x i8> %i.ak, <16 x i8> %i.an, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.at = shufflevector <16 x i8> %i.al, <16 x i8> %i.ao, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.au = shufflevector <16 x i8> %i.al, <16 x i8> %i.ao, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.av = shufflevector <16 x i8> %i.ap, <16 x i8> %i.as, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.av, ptr %i.a, align 16, !tbaa !9, !noalias !106
  %i.aw = shufflevector <16 x i8> %i.ap, <16 x i8> %i.as, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.aw, ptr %indvars.iv.i.sroa.gep24, align 16, !tbaa !9, !noalias !106
  %i.ax = shufflevector <16 x i8> %i.aq, <16 x i8> %i.at, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.ax, ptr %i.i, align 16, !tbaa !9, !noalias !106
  %i.ay = shufflevector <16 x i8> %i.aq, <16 x i8> %i.at, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.ay, ptr %i.j, align 16, !tbaa !9, !noalias !106
  %i.az = shufflevector <16 x i8> %i.ar, <16 x i8> %i.au, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.az, ptr %i.k, align 16, !tbaa !9, !noalias !106
  %i.ba = shufflevector <16 x i8> %i.ar, <16 x i8> %i.au, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.ba, ptr %i.l, align 16, !tbaa !9, !noalias !106
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv41.i = phi i64 [ %.03746, %bb.b ], [ %indvars.iv.next42.i, %bb.c ] ; 2 uses
  %i.bb = phi i1 [ true, %bb.b ], [ false, %bb.c ]
  %indvars.iv.i.sroa.phi = phi ptr [ %i.a, %bb.b ], [ %indvars.iv.i.sroa.gep24, %bb.c ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ 1, %bb.c ]
  %gep.i = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.bc = load <16 x i8>, ptr %gep.i, align 16, !tbaa !9, !noalias !107 ; 2 uses
  %i.bd = shufflevector <16 x i8> %i.bc, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.be = getelementptr inbounds nuw i8, ptr %indvars.iv.i.sroa.phi, i64 32
  %i.bf = load <16 x i8>, ptr %i.be, align 16, !tbaa !9, !noalias !107 ; 2 uses
  %i.bg = shufflevector <16 x i8> %i.bf, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bh = load <16 x i8>, ptr %indvars.iv.i.sroa.phi, align 16, !tbaa !9, !noalias !107 ; 2 uses
  %i.bi = shufflevector <16 x i8> %i.bh, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bj = bitcast <16 x i8> %i.bd to <8 x i16>    ; 2 uses
  %i.bk = bitcast <16 x i8> %i.bg to <8 x i16>    ; 4 uses
  %i.bl = shufflevector <8 x i16> %i.bj, <8 x i16> %i.bk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bm = shufflevector <8 x i16> %i.bj, <8 x i16> %i.bk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bn = bitcast <16 x i8> %i.bi to <8 x i16>    ; 2 uses
  %i.bo = shufflevector <8 x i16> %i.bk, <8 x i16> %i.bn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bp = shufflevector <8 x i16> %i.bk, <8 x i16> %i.bn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bl, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.br = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bm, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.bs = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bo, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.bt = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bp, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.bu = add <4 x i32> %i.bq, splat (i32 1081344)
  %i.bv = add <4 x i32> %i.bu, %i.bs
  %i.bw = add <4 x i32> %i.br, splat (i32 1081344)
  %i.bx = add <4 x i32> %i.bw, %i.bt
  %i.by = ashr <4 x i32> %i.bv, splat (i32 16)
  %i.bz = ashr <4 x i32> %i.bx, splat (i32 16)
  %i.ca = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.by, <4 x i32> %i.bz)
  %i.cb = shufflevector <16 x i8> %i.bc, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cc = shufflevector <16 x i8> %i.bf, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cd = shufflevector <16 x i8> %i.bh, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ce = bitcast <16 x i8> %i.cb to <8 x i16>    ; 2 uses
  %i.cf = bitcast <16 x i8> %i.cc to <8 x i16>    ; 4 uses
  %i.cg = shufflevector <8 x i16> %i.ce, <8 x i16> %i.cf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ch = shufflevector <8 x i16> %i.ce, <8 x i16> %i.cf, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ci = bitcast <16 x i8> %i.cd to <8 x i16>    ; 2 uses
  %i.cj = shufflevector <8 x i16> %i.cf, <8 x i16> %i.ci, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ck = shufflevector <8 x i16> %i.cf, <8 x i16> %i.ci, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cl = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cg, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.cm = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ch, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.cn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cj, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.co = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ck, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.cp = add <4 x i32> %i.cl, splat (i32 1081344)
  %i.cq = add <4 x i32> %i.cp, %i.cn
  %i.cr = add <4 x i32> %i.cm, splat (i32 1081344)
  %i.cs = add <4 x i32> %i.cr, %i.co
  %i.ct = ashr <4 x i32> %i.cq, splat (i32 16)
  %i.cu = ashr <4 x i32> %i.cs, splat (i32 16)
  %i.cv = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ct, <4 x i32> %i.cu)
  %i.cw = getelementptr inbounds i8, ptr %1, i64 %indvars.iv41.i
  %i.cx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ca, <8 x i16> %i.cv)
  store <16 x i8> %i.cx, ptr %i.cw, align 1, !tbaa !9, !alias.scope !107
  %indvars.iv.next42.i = add nsw i64 %indvars.iv41.i, 16 ; 3 uses
  br i1 %i.bb, label %bb.c, label %ConvertRGBToYHelper_SSE2.exit, !llvm.loop !0

ConvertRGBToYHelper_SSE2.exit:                    ; preds = %bb.c
  %i.cy = trunc nsw i64 %indvars.iv.next42.i to i32 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.047, i64 96 ; 2 uses
  %i.da = icmp sgt i32 %i.b, %i.cy
  br i1 %i.da, label %bb.b, label %.loopexit, !llvm.loop !99

bb.d:                                             ; preds = %.lr.ph, %ConvertRGBToYHelper_SSE2.exit23
  %.144 = phi ptr [ %0, %.lr.ph ], [ %i.fy, %ConvertRGBToYHelper_SSE2.exit23 ] ; 9 uses
  %.13843 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next42.i22, %ConvertRGBToYHelper_SSE2.exit23 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %4 = load <16 x i8>, ptr %.144, align 1, !tbaa !9, !alias.scope !108 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.144, i64 16
  %6 = load <16 x i8>, ptr %5, align 1, !tbaa !9, !alias.scope !108 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.144, i64 32
  %8 = load <16 x i8>, ptr %7, align 1, !tbaa !9, !alias.scope !108 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %.144, i64 48
  %10 = load <16 x i8>, ptr %9, align 1, !tbaa !9, !alias.scope !108 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %.144, i64 64
  %12 = load <16 x i8>, ptr %11, align 1, !tbaa !9, !alias.scope !108 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.144, i64 80
  %13 = load <16 x i8>, ptr %i.db, align 1, !tbaa !9, !alias.scope !108 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.144, i64 96
  %14 = load <16 x i8>, ptr %i.dc, align 1, !tbaa !9, !alias.scope !108 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.144, i64 112
  %15 = load <16 x i8>, ptr %i.dd, align 1, !tbaa !9, !alias.scope !108 ; 2 uses
  %i.de = shufflevector <16 x i8> %4, <16 x i8> %6, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.df = bitcast <16 x i8> %i.de to <2 x i64>    ; 2 uses
  %i.dg = shufflevector <16 x i8> %4, <16 x i8> %6, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dh = bitcast <16 x i8> %i.dg to <2 x i64>
  %i.di = shufflevector <16 x i8> %8, <16 x i8> %10, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.dj = bitcast <16 x i8> %i.di to <2 x i64>    ; 2 uses
  %i.dk = shufflevector <16 x i8> %8, <16 x i8> %10, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dl = bitcast <16 x i8> %i.dk to <2 x i64>
  %i.dm = shufflevector <2 x i64> %i.dh, <2 x i64> %i.dl, <2 x i32> <i32 0, i32 2>
  %i.dn = shufflevector <2 x i64> %i.df, <2 x i64> %i.dj, <2 x i32> <i32 1, i32 3>
  %i.do = shufflevector <2 x i64> %i.df, <2 x i64> %i.dj, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.do, ptr %i.a, align 16, !tbaa !9, !noalias !108
  store <2 x i64> %i.dn, ptr %i.e, align 16, !tbaa !9, !noalias !108
  store <2 x i64> %i.dm, ptr %i.f, align 16, !tbaa !9, !noalias !108
  %i.dp = shufflevector <16 x i8> %12, <16 x i8> %13, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.dq = bitcast <16 x i8> %i.dp to <2 x i64>    ; 2 uses
  %i.dr = shufflevector <16 x i8> %12, <16 x i8> %13, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ds = bitcast <16 x i8> %i.dr to <2 x i64>
  %i.dt = shufflevector <16 x i8> %14, <16 x i8> %15, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.du = bitcast <16 x i8> %i.dt to <2 x i64>    ; 2 uses
  %i.dv = shufflevector <16 x i8> %14, <16 x i8> %15, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dw = bitcast <16 x i8> %i.dv to <2 x i64>
  %i.dx = shufflevector <2 x i64> %i.ds, <2 x i64> %i.dw, <2 x i32> <i32 0, i32 2>
  %i.dy = shufflevector <2 x i64> %i.dq, <2 x i64> %i.du, <2 x i32> <i32 1, i32 3>
  %i.dz = shufflevector <2 x i64> %i.dq, <2 x i64> %i.du, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.dz, ptr %indvars.iv.i.sroa.gep24, align 16, !tbaa !9, !noalias !108
  store <2 x i64> %i.dy, ptr %i.g, align 16, !tbaa !9, !noalias !108
  store <2 x i64> %i.dx, ptr %i.h, align 16, !tbaa !9, !noalias !108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv41.i18 = phi i64 [ %.13843, %bb.d ], [ %indvars.iv.next42.i22, %bb.e ] ; 2 uses
  %i.ea = phi i1 [ true, %bb.d ], [ false, %bb.e ]
  %indvars.iv.i19.sroa.phi = phi ptr [ %i.a, %bb.d ], [ %indvars.iv.i.sroa.gep24, %bb.e ] ; 2 uses
  %indvars.iv.i19 = phi i64 [ 0, %bb.d ], [ 1, %bb.e ]
  %gep.i20 = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv.i19
  %i.eb = load <16 x i8>, ptr %gep.i20, align 16, !tbaa !9, !noalias !109 ; 2 uses
  %i.ec = shufflevector <16 x i8> %i.eb, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ed = getelementptr inbounds nuw i8, ptr %indvars.iv.i19.sroa.phi, i64 32
  %i.ee = load <16 x i8>, ptr %i.ed, align 16, !tbaa !9, !noalias !109 ; 2 uses
  %i.ef = shufflevector <16 x i8> %i.ee, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.eg = load <16 x i8>, ptr %indvars.iv.i19.sroa.phi, align 16, !tbaa !9, !noalias !109 ; 2 uses
  %i.eh = shufflevector <16 x i8> %i.eg, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ei = bitcast <16 x i8> %i.ec to <8 x i16>    ; 2 uses
  %i.ej = bitcast <16 x i8> %i.ef to <8 x i16>    ; 4 uses
  %i.ek = shufflevector <8 x i16> %i.ei, <8 x i16> %i.ej, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.el = shufflevector <8 x i16> %i.ei, <8 x i16> %i.ej, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.em = bitcast <16 x i8> %i.eh to <8 x i16>    ; 2 uses
  %i.en = shufflevector <8 x i16> %i.ej, <8 x i16> %i.em, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eo = shufflevector <8 x i16> %i.ej, <8 x i16> %i.em, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ep = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ek, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.eq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.el, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.er = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.en, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.es = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.eo, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.et = add <4 x i32> %i.ep, splat (i32 1081344)
  %i.eu = add <4 x i32> %i.et, %i.er
  %i.ev = add <4 x i32> %i.eq, splat (i32 1081344)
  %i.ew = add <4 x i32> %i.ev, %i.es
  %i.ex = ashr <4 x i32> %i.eu, splat (i32 16)
  %i.ey = ashr <4 x i32> %i.ew, splat (i32 16)
  %i.ez = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ex, <4 x i32> %i.ey)
  %i.fa = shufflevector <16 x i8> %i.eb, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.fb = shufflevector <16 x i8> %i.ee, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.fc = shufflevector <16 x i8> %i.eg, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.fd = bitcast <16 x i8> %i.fa to <8 x i16>    ; 2 uses
  %i.fe = bitcast <16 x i8> %i.fb to <8 x i16>    ; 4 uses
  %i.ff = shufflevector <8 x i16> %i.fd, <8 x i16> %i.fe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fg = shufflevector <8 x i16> %i.fd, <8 x i16> %i.fe, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fh = bitcast <16 x i8> %i.fc to <8 x i16>    ; 2 uses
  %i.fi = shufflevector <8 x i16> %i.fe, <8 x i16> %i.fh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fj = shufflevector <8 x i16> %i.fe, <8 x i16> %i.fh, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.fk = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ff, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.fl = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fg, <8 x i16> <i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675, i16 16839, i16 16675>)
  %i.fm = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fi, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.fn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fj, <8 x i16> <i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420, i16 16384, i16 6420>)
  %i.fo = add <4 x i32> %i.fk, splat (i32 1081344)
  %i.fp = add <4 x i32> %i.fo, %i.fm
  %i.fq = add <4 x i32> %i.fl, splat (i32 1081344)
  %i.fr = add <4 x i32> %i.fq, %i.fn
  %i.fs = ashr <4 x i32> %i.fp, splat (i32 16)
  %i.ft = ashr <4 x i32> %i.fr, splat (i32 16)
  %i.fu = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.fs, <4 x i32> %i.ft)
  %i.fv = getelementptr inbounds i8, ptr %1, i64 %indvars.iv41.i18
  %i.fw = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ez, <8 x i16> %i.fu)
  store <16 x i8> %i.fw, ptr %i.fv, align 1, !tbaa !9, !alias.scope !109
  %indvars.iv.next42.i22 = add nsw i64 %indvars.iv41.i18, 16 ; 3 uses
  br i1 %i.ea, label %bb.e, label %ConvertRGBToYHelper_SSE2.exit23, !llvm.loop !0

ConvertRGBToYHelper_SSE2.exit23:                  ; preds = %bb.e
  %i.fx = trunc nsw i64 %indvars.iv.next42.i22 to i32 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.144, i64 128 ; 2 uses
  %i.fz = icmp sgt i32 %i.b, %i.fx
  br i1 %i.fz, label %bb.d, label %.loopexit, !llvm.loop !104

.loopexit:                                        ; preds = %ConvertRGBToYHelper_SSE2.exit23, %ConvertRGBToYHelper_SSE2.exit, %.preheader41, %.preheader
  %.239 = phi i32 [ %i.cy, %ConvertRGBToYHelper_SSE2.exit ], [ 0, %.preheader ], [ 0, %.preheader41 ], [ %i.fx, %ConvertRGBToYHelper_SSE2.exit23 ] ; 2 uses
  %.2 = phi ptr [ %i.cz, %ConvertRGBToYHelper_SSE2.exit ], [ %0, %.preheader ], [ %0, %.preheader41 ], [ %i.fy, %ConvertRGBToYHelper_SSE2.exit23 ] ; 5 uses
  %i.ga = icmp slt i32 %.239, %2
  br i1 %i.ga, label %.lr.ph53, label %._crit_edge

.lr.ph53:                                         ; preds = %.loopexit
  %i.gb = sext i32 %3 to i64                      ; 3 uses
  %i.gc = sext i32 %.239 to i64                   ; 5 uses
  %wide.trip.count = sext i32 %2 to i64           ; 3 uses
  %i.gd = sub nsw i64 %wide.trip.count, %i.gc
  %xtraiter = and i64 %i.gd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph53
  %i.ge = getelementptr inbounds nuw i8, ptr %.2, i64 2
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !9
  %i.gg = zext i8 %i.gf to i32
  %i.gh = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !9
  %i.gj = zext i8 %i.gi to i32
  %i.gk = load i8, ptr %.2, align 1, !tbaa !9
  %i.gl = zext i8 %i.gk to i32
  %i.gm = mul nuw nsw i32 %i.gg, 16839
  %i.gn = mul nuw nsw i32 %i.gj, 33059
  %i.go = mul nuw nsw i32 %i.gl, 6420
  %i.gp = add nuw nsw i32 %i.gm, 1081344
  %i.gq = add nuw nsw i32 %i.gp, %i.gn
  %i.gr = add nuw nsw i32 %i.gq, %i.go
  %i.gs = lshr i32 %i.gr, 16
  %i.gt = trunc nuw i32 %i.gs to i8
  %i.gu = getelementptr inbounds i8, ptr %1, i64 %i.gc
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !9
  %indvars.iv.next.prol = add nsw i64 %i.gc, 1
  %i.gv = getelementptr inbounds i8, ptr %.2, i64 %i.gb
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph53
  %indvars.iv.unr = phi i64 [ %i.gc, %.lr.ph53 ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %.352.unr = phi ptr [ %.2, %.lr.ph53 ], [ %i.gv, %.prol.loopexit.unr-lcssa ]
  %i.gw = add nsw i64 %wide.trip.count, -1
  %i.gx = icmp eq i64 %i.gw, %i.gc
  br i1 %i.gx, label %._crit_edge, label %.lr.ph53.new

.lr.ph53.new:                                     ; preds = %.prol.loopexit, %.lr.ph53.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph53.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %.352 = phi ptr [ %i.ii, %.lr.ph53.new ], [ %.352.unr, %.prol.loopexit ] ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.352, i64 2
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !9
  %i.ha = zext i8 %i.gz to i32
  %i.hb = getelementptr inbounds nuw i8, ptr %.352, i64 1
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !9
  %i.hd = zext i8 %i.hc to i32
  %i.he = load i8, ptr %.352, align 1, !tbaa !9
  %i.hf = zext i8 %i.he to i32
  %i.hg = mul nuw nsw i32 %i.ha, 16839
  %i.hh = mul nuw nsw i32 %i.hd, 33059
  %i.hi = mul nuw nsw i32 %i.hf, 6420
  %i.hj = add nuw nsw i32 %i.hg, 1081344
  %i.hk = add nuw nsw i32 %i.hj, %i.hh
  %i.hl = add nuw nsw i32 %i.hk, %i.hi
  %i.hm = lshr i32 %i.hl, 16
  %i.hn = trunc nuw i32 %i.hm to i8
  %i.ho = getelementptr inbounds i8, ptr %1, i64 %indvars.iv
  store i8 %i.hn, ptr %i.ho, align 1, !tbaa !9
  %i.hp = getelementptr inbounds i8, ptr %.352, i64 %i.gb ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 2
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !9
  %i.hs = zext i8 %i.hr to i32
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 1
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !9
  %i.hv = zext i8 %i.hu to i32
  %i.hw = load i8, ptr %i.hp, align 1, !tbaa !9
  %i.hx = zext i8 %i.hw to i32
  %i.hy = mul nuw nsw i32 %i.hs, 16839
  %i.hz = mul nuw nsw i32 %i.hv, 33059
  %i.ia = mul nuw nsw i32 %i.hx, 6420
  %i.ib = add nuw nsw i32 %i.hy, 1081344
  %i.ic = add nuw nsw i32 %i.ib, %i.hz
  %i.id = add nuw nsw i32 %i.ic, %i.ia
  %i.ie = lshr i32 %i.id, 16
  %i.if = trunc nuw i32 %i.ie to i8
  %i.ig = getelementptr i8, ptr %1, i64 %indvars.iv
  %i.ih = getelementptr i8, ptr %i.ig, i64 1
  store i8 %i.if, ptr %i.ih, align 1, !tbaa !9
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ii = getelementptr inbounds i8, ptr %i.hp, i64 %i.gb
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph53.new, !llvm.loop !105

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph53.new, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
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
  %4 = load <8 x i16>, ptr %.042, align 1, !tbaa !9, !alias.scope !115 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.042, i64 16
  %6 = load <8 x i16>, ptr %5, align 1, !tbaa !9, !alias.scope !115 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.042, i64 32
  %8 = load <8 x i16>, ptr %7, align 1, !tbaa !9, !alias.scope !115 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.042, i64 48
  %9 = load <8 x i16>, ptr %i.f, align 1, !tbaa !9, !alias.scope !115 ; 2 uses
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
  %11 = load <8 x i16>, ptr %10, align 1, !tbaa !9, !alias.scope !116 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %.042, i64 80
  %13 = load <8 x i16>, ptr %12, align 1, !tbaa !9, !alias.scope !116 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.042, i64 96
  %14 = load <8 x i16>, ptr %i.au, align 1, !tbaa !9, !alias.scope !116 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.042, i64 112
  %15 = load <8 x i16>, ptr %i.av, align 1, !tbaa !9, !alias.scope !116 ; 2 uses
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
  store <16 x i8> %i.ck, ptr %.01940, align 1, !tbaa !9
  %i.cl = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.at, <8 x i16> %i.cj)
  store <16 x i8> %i.cl, ptr %.01841, align 1, !tbaa !9
  %i.cm = getelementptr inbounds nuw i8, ptr %.01940, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.01841, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.042, i64 128 ; 3 uses
  %i.cp = icmp ult ptr %i.co, %i.d
  br i1 %i.cp, label %.lr.ph, label %._crit_edge, !llvm.loop !114

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

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !10}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = distinct !{!13, i1 false, !"PackAndStore4_SSE2"}
!14 = distinct !{!14, !13, !"PackAndStore4_SSE2: argument 0"}
!15 = distinct !{!15, !10}
!16 = !{!14}
!17 = distinct !{!17, i1 false, !"PackAndStore4_SSE2"}
!18 = distinct !{!18, !17, !"PackAndStore4_SSE2: argument 0"}
!19 = distinct !{!19, !10}
!20 = !{!18}
!21 = distinct !{!21, i1 false, !"PackAndStore4_SSE2"}
!22 = distinct !{!22, !21, !"PackAndStore4_SSE2: argument 0"}
!23 = distinct !{!23, !10}
!24 = !{!22}
!25 = distinct !{!25, i1 false, !"PackAndStore4444_SSE2"}
!26 = distinct !{!26, !25, !"PackAndStore4444_SSE2: argument 0"}
!27 = distinct !{!27, !10}
!28 = !{!26}
!29 = distinct !{!29, i1 false, !"PackAndStore565_SSE2"}
!30 = distinct !{!30, !29, !"PackAndStore565_SSE2: argument 0"}
!31 = distinct !{!31, !10}
!32 = !{!30}
!33 = distinct !{!33, i1 false, !"PlanarTo24b_SSE2"}
!34 = distinct !{!34, !33, !"PlanarTo24b_SSE2: argument 0"}
!35 = !{!34}
!36 = distinct !{!36, i1 false, !"PlanarTo24b_SSE2"}
!37 = distinct !{!37, !36, !"PlanarTo24b_SSE2: argument 0"}
!38 = !{!37}
!39 = distinct !{!39, i1 false, !"PlanarTo24b_SSE2"}
!40 = distinct !{!40, !39, !"PlanarTo24b_SSE2: argument 0"}
!41 = distinct !{!41, !10}
!42 = distinct !{!42, !10}
!43 = !{!40}
!44 = distinct !{!44, i1 false, !"PackAndStore4_SSE2"}
!45 = distinct !{!45, !44, !"PackAndStore4_SSE2: argument 0"}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, !10}
!48 = !{!45}
!49 = distinct !{!49, i1 false, !"PlanarTo24b_SSE2"}
!50 = distinct !{!50, !49, !"PlanarTo24b_SSE2: argument 0"}
!51 = distinct !{!51, !10}
!52 = distinct !{!52, !10}
!53 = !{!50}
!54 = distinct !{!54, i1 false, !"PackAndStore4_SSE2"}
!55 = distinct !{!55, !54, !"PackAndStore4_SSE2: argument 0"}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !10}
!58 = !{!55}
!59 = distinct !{!59, i1 false, !"PackAndStore4_SSE2"}
!60 = distinct !{!60, !59, !"PackAndStore4_SSE2: argument 0"}
!61 = distinct !{!61, !10}
!62 = distinct !{!62, !10}
!63 = !{!60}
!64 = distinct !{!64, !10, !70, !71}
!65 = distinct !{!65, i1 false, !"RGB32PackedToPlanar16_SSE2"}
!66 = distinct !{!66, !65, !"RGB32PackedToPlanar16_SSE2: argument 0"}
!67 = distinct !{!67, !10}
!68 = distinct !{!68, !10, !71, !70}
!69 = !{!6, !6, i64 0}
!70 = !{!"llvm.loop.isvectorized", i32 1}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!66}
!73 = distinct !{!73, i1 false, !"RGB32PackedToPlanar16_SSE2"}
!74 = distinct !{!74, !73, !"RGB32PackedToPlanar16_SSE2: argument 0"}
!75 = distinct !{!75, i1 false, !"RGB32PackedToPlanar16_SSE2"}
!76 = distinct !{!76, !75, !"RGB32PackedToPlanar16_SSE2: argument 0"}
!77 = distinct !{!77, !10}
!78 = !{!74}
!79 = !{!76}
!80 = distinct !{!80, i1 false, !"RGBPackedToPlanar_SSE2"}
!81 = distinct !{!81, !80, !"RGBPackedToPlanar_SSE2: argument 0"}
!82 = distinct !{!82, i1 false, !"ConvertRGBToYHelper_SSE2"}
!83 = distinct !{!83, !82, !"ConvertRGBToYHelper_SSE2: argument 0"}
!84 = distinct !{!84, !10}
!85 = distinct !{!85, i1 false, !"RGBAPackedToRGBPlanar_SSE2"}
!86 = distinct !{!86, !85, !"RGBAPackedToRGBPlanar_SSE2: argument 0"}
!87 = distinct !{!87, i1 false, !"ConvertRGBToYHelper_SSE2"}
!88 = distinct !{!88, !87, !"ConvertRGBToYHelper_SSE2: argument 0"}
!89 = distinct !{!89, !10}
!90 = distinct !{!90, !10}
!91 = !{!81}
!92 = !{!83}
!93 = !{!86}
!94 = !{!88}
!95 = distinct !{!95, i1 false, !"RGBPackedToPlanar_SSE2"}
!96 = distinct !{!96, !95, !"RGBPackedToPlanar_SSE2: argument 0"}
end_hunk_0
