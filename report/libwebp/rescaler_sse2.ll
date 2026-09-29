Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/rescaler_sse2?download=true
inline.NumInlined: 18
inline.NumDeleted: 8
begin_hunk_0_@RescalerImportRowExpand_SSE2:bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bk = bitcast <16 x i8> %i.bd to <2 x i64>
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i32, ptr %i.bm, align 8, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.p
  %i.bn = phi ptr [ %i.bj, %.lr.ph ], [ %i.cq, %bb.p ] ; 2 uses
  %.0109 = phi i32 [ 7, %.lr.ph ], [ %.3, %bb.p ] ; 2 uses
  %.361108 = phi i32 [ %i.k, %.lr.ph ], [ %.5, %bb.p ]
  %.367107 = phi ptr [ %i.bl, %.lr.ph ], [ %.6, %bb.p ] ; 6 uses
  %.2106 = phi <2 x i64> [ %i.bk, %.lr.ph ], [ %.4, %bb.p ] ; 3 uses
  %i.bo = sub nsw i32 %.361108, %.pre             ; 3 uses
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.bq = add nsw i32 %.0109, -1                  ; 2 uses
  %.not77 = icmp eq i32 %i.bq, 0
  br i1 %.not77, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = bitcast <2 x i64> %.2106 to <16 x i8>
  %i.bs = shufflevector <16 x i8> %i.br, <16 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17>
  %i.bt = bitcast <16 x i8> %i.bs to <2 x i64>
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %.not78 = icmp ugt ptr %.367107, %i.ba
  br i1 %.not78, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.367.val = load i64, ptr %.367107, align 1, !tbaa !16
  %i.bu = insertelement <2 x i64> poison, i64 %.367.val, i64 0
  %i.bv = bitcast <2 x i64> %i.bu to <16 x i8>
  %i.bw = shufflevector <16 x i8> %i.bv, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bx = bitcast <16 x i8> %i.bw to <2 x i64>
  %i.by = getelementptr inbounds nuw i8, ptr %.367107, i64 7
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bz = bitcast <2 x i64> %.2106 to <16 x i8>
  %i.ca = shufflevector <16 x i8> %i.bz, <16 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 poison, i32 poison, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17>
  %i.cb = bitcast <16 x i8> %i.ca to <8 x i16>
  %i.cc = getelementptr inbounds nuw i8, ptr %.367107, i64 1 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !16
  %i.ce = zext i8 %i.cd to i16
  %i.cf = insertelement <8 x i16> %i.cb, i16 %i.ce, i64 1
  %i.cg = bitcast <8 x i16> %i.cf to <2 x i64>
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.k
  %.393 = phi <2 x i64> [ %i.cg, %bb.n ], [ %i.bx, %bb.m ], [ %i.bt, %bb.k ]
  %.468 = phi ptr [ %i.cc, %bb.n ], [ %i.by, %bb.m ], [ %.367107, %bb.k ]
  %.1 = phi i32 [ 1, %bb.n ], [ 7, %bb.m ], [ %i.bq, %bb.k ]
  %i.ch = add nsw i32 %i.bo, %i.k
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.o
  %.4 = phi <2 x i64> [ %.393, %bb.o ], [ %.2106, %bb.i ] ; 2 uses
  %.6 = phi ptr [ %.468, %bb.o ], [ %.367107, %bb.i ]
  %.5 = phi i32 [ %i.ch, %bb.o ], [ %i.bo, %bb.i ] ; 3 uses
  %.3 = phi i32 [ %.1, %bb.o ], [ %.0109, %bb.i ]
  %i.ci = sub nsw i32 %i.k, %.5
  %i.cj = shl i32 %i.ci, 16
  %i.ck = or i32 %i.cj, %.5
  %i.cl = insertelement <4 x i32> poison, i32 %i.ck, i64 0
  %i.cm = bitcast <2 x i64> %.4 to <8 x i16>
  %i.cn = bitcast <4 x i32> %i.cl to <8 x i16>
  %i.co = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.cm, <8 x i16> %i.cn)
  %i.cp = extractelement <4 x i32> %i.co, i64 0
  store i32 %i.cp, ptr %i.bn, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %.not = icmp ult ptr %i.cq, %i.i
  br i1 %.not, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.p, %bb.g, %bb.h, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @RescalerImportRowShrink_SSE2(ptr noalias noundef %0, ptr noalias noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = trunc i32 %i.b to i16
  %i.d = insertelement <8 x i16> poison, i16 %i.c, i64 0
  %i.e = shufflevector <8 x i16> %i.d, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !30
  %i.h = insertelement <4 x i32> poison, i32 %i.g, i64 0
  %i.i = shufflevector <4 x i32> %i.h, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !13   ; 2 uses
  %i.n = shl nsw i32 %i.m, 2
  %i.o = sext i32 %i.n to i64
  %.idx = shl nsw i64 %i.o, 2
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 %.idx
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !14
  %.not = icmp eq i32 %i.r, 4
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.t = load i32, ptr %i.s, align 4, !tbaa !15   ; 2 uses
  %i.u = shl i32 %i.b, 7
  %i.v = icmp sgt i32 %i.t, %i.u
  br i1 %i.v, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.w = icmp sgt i32 %i.m, 0
  br i1 %i.w, label %.lr.ph73, label %.loopexit

.lr.ph73:                                         ; preds = %.preheader
  %i.x = bitcast <4 x i32> %i.i to <2 x i64>
  %i.y = and <2 x i64> %i.x, splat (i64 4294967295) ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @WebPRescalerImportRowShrink_C(ptr noundef nonnull %0, ptr noundef %1) #6
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph73, %._crit_edge
  %.072 = phi ptr [ %1, %.lr.ph73 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.05871 = phi i32 [ 0, %.lr.ph73 ], [ %.159.lcssa, %._crit_edge ]
  %i.z = phi <8 x i16> [ zeroinitializer, %.lr.ph73 ], [ %i.bj, %._crit_edge ] ; 2 uses
  %.06270 = phi ptr [ %i.k, %.lr.ph73 ], [ %i.bk, %._crit_edge ] ; 2 uses
  %i.aa = add nsw i32 %i.t, %.05871               ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.165 = phi ptr [ %i.ae, %.lr.ph ], [ %.072, %bb.d ] ; 2 uses
  %.15964 = phi i32 [ %i.aj, %.lr.ph ], [ %i.aa, %bb.d ]
  %i.ac = phi <8 x i16> [ %i.ai, %.lr.ph ], [ %i.z, %bb.d ]
  %.1.val = load i32, ptr %.165, align 1
  %i.ad = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %.1.val, i64 0
  %i.ae = getelementptr inbounds nuw i8, ptr %.165, i64 4 ; 2 uses
  %i.af = bitcast <4 x i32> %i.ad to <16 x i8>
  %i.ag = shufflevector <16 x i8> %i.af, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ah = bitcast <16 x i8> %i.ag to <8 x i16>    ; 2 uses
  %i.ai = add <8 x i16> %i.ac, %i.ah              ; 2 uses
  %i.aj = sub nsw i32 %.15964, %i.b               ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.063.lcssa = phi <8 x i16> [ zeroinitializer, %bb.d ], [ %i.ah, %.lr.ph ] ; 2 uses
  %.lcssa = phi <8 x i16> [ %i.z, %bb.d ], [ %i.ai, %.lr.ph ] ; 2 uses
  %.159.lcssa = phi i32 [ %i.aa, %bb.d ], [ %i.aj, %.lr.ph ] ; 2 uses
  %.1.lcssa = phi ptr [ %.072, %bb.d ], [ %i.ae, %.lr.ph ]
  %i.al = trunc i32 %.159.lcssa to i16
  %i.am = sub i16 0, %i.al
  %i.an = insertelement <8 x i16> poison, i16 %i.am, i64 0
  %i.ao = shufflevector <8 x i16> %i.an, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ap = mul <8 x i16> %i.ao, %.063.lcssa
  %i.aq = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %.063.lcssa, <8 x i16> %i.ao)
  %i.ar = shufflevector <8 x i16> %i.ap, <8 x i16> %i.aq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 3 uses
  %i.as = bitcast <8 x i16> %i.ar to <2 x i64>
  %i.at = mul <8 x i16> %.lcssa, %i.e
  %i.au = tail call <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16> %.lcssa, <8 x i16> %i.e)
  %i.av = shufflevector <8 x i16> %i.at, <8 x i16> %i.au, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aw = bitcast <8 x i16> %i.av to <4 x i32>
  %i.ax = bitcast <8 x i16> %i.ar to <4 x i32>
  %i.ay = sub <4 x i32> %i.aw, %i.ax
  %i.az = lshr <2 x i64> %i.as, splat (i64 32)
  %i.ba = bitcast <8 x i16> %i.ar to <2 x i64>
  %i.bb = and <2 x i64> %i.ba, splat (i64 4294967295)
  %i.bc = mul nuw <2 x i64> %i.bb, %i.y
  %i.bd = mul nuw <2 x i64> %i.az, %i.y
  %i.be = add nuw <2 x i64> %i.bc, splat (i64 2147483648)
  %i.bf = add nuw <2 x i64> %i.bd, splat (i64 2147483648)
  %i.bg = bitcast <2 x i64> %i.be to <4 x i32>
  %i.bh = bitcast <2 x i64> %i.bf to <4 x i32>
  %i.bi = shufflevector <4 x i32> %i.bg, <4 x i32> %i.bh, <4 x i32> <i32 1, i32 5, i32 3, i32 7>
  %i.bj = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bi, <4 x i32> zeroinitializer)
  store <4 x i32> %i.ay, ptr %.06270, align 1, !tbaa !16
  %i.bk = getelementptr inbounds nuw i8, ptr %.06270, i64 16 ; 2 uses
  %i.bl = icmp ult ptr %i.bk, %i.p
  br i1 %i.bl, label %bb.d, label %.loopexit, !llvm.loop !29

.loopexit:                                        ; preds = %._crit_edge, %.preheader, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @RescalerExportRowExpand_SSE2(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !14
  %i.i = mul i32 %i.h, %i.f                       ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %i.n = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>, i32 %i.m, i64 0
  %i.o = insertelement <4 x i32> %i.n, i32 %i.m, i64 2
  %i.p = bitcast <4 x i32> %i.o to <2 x i64>      ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !22   ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.preheader113, label %bb.b

.preheader113:                                    ; preds = %bb.a
  %.not72120 = icmp slt i32 %i.i, 8
  br i1 %.not72120, label %.preheader, label %.lr.ph122.preheader

.lr.ph122.preheader:                              ; preds = %.preheader113
  %i.t = zext nneg i32 %i.i to i64
  br label %.lr.ph122

.preheader.loopexit:                              ; preds = %.lr.ph122
  %i.u = add nuw i32 %i.i, 2147483640
  %i.v = and i32 %i.u, 2147483640
  %narrow147 = add nuw i32 %i.v, 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader113
  %.0.lcssa = phi i32 [ 0, %.preheader113 ], [ %narrow147, %.preheader.loopexit ] ; 4 uses
  %i.w = icmp slt i32 %.0.lcssa, %i.i
  br i1 %i.w, label %.lr.ph125.preheader, label %.loopexit

.lr.ph125.preheader:                              ; preds = %.preheader
  %i.x = zext i32 %.0.lcssa to i64                ; 8 uses
  %i.y = xor i32 %.0.lcssa, -1
  %i.z = add i32 %i.i, %i.y                       ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check182 = icmp ult i32 %i.z, 15
  br i1 %min.iters.check182, label %.lr.ph125.preheader194, label %vector.memcheck168

vector.memcheck168:                               ; preds = %.lr.ph125.preheader
  %scevgep169 = getelementptr i8, ptr %i.b, i64 %i.x ; 2 uses
  %1 = xor i32 %.0.lcssa, -1
  %2 = add i32 %i.i, %1
  %3 = zext i32 %2 to i64                         ; 2 uses
  %i.ac = getelementptr i8, ptr %i.b, i64 %i.x
  %i.ad = getelementptr i8, ptr %i.ac, i64 %3
  %scevgep170 = getelementptr i8, ptr %i.ad, i64 1 ; 2 uses
  %i.ae = shl nuw nsw i64 %i.x, 2
  %scevgep171 = getelementptr i8, ptr %i.k, i64 %i.ae
  %i.af = add nuw nsw i64 %i.x, %3
  %i.ag = shl nuw nsw i64 %i.af, 2
  %i.ah = getelementptr i8, ptr %i.k, i64 %i.ag
  %scevgep172 = getelementptr i8, ptr %i.ah, i64 4
  %scevgep173 = getelementptr i8, ptr %0, i64 20
  %bound0174 = icmp ult ptr %scevgep169, %scevgep172
  %bound1175 = icmp ult ptr %scevgep171, %scevgep170
  %found.conflict176 = and i1 %bound0174, %bound1175
  %bound0177 = icmp ult ptr %scevgep169, %scevgep173
  %bound1178 = icmp ult ptr %i.l, %scevgep170
  %found.conflict179 = and i1 %bound0177, %bound1178
  %conflict.rdx180 = or i1 %found.conflict176, %found.conflict179
  br i1 %conflict.rdx180, label %.lr.ph125.preheader194, label %vector.ph183

vector.ph183:                                     ; preds = %vector.memcheck168
  %n.vec184 = and i64 %i.ab, 8589934588           ; 3 uses
  %i.ai = add nuw nsw i64 %n.vec184, %i.x
  %i.aj = load i32, ptr %i.l, align 8, !tbaa !21, !alias.scope !46
  %broadcast.splatinsert185 = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %broadcast.splat186 = shufflevector <4 x i32> %broadcast.splatinsert185, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ak = zext <4 x i32> %broadcast.splat186 to <4 x i64>
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph183
  %index188 = phi i64 [ 0, %vector.ph183 ], [ %index.next190, %vector.body187 ] ; 2 uses
  %i.al = add nuw i64 %index188, %i.x             ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.al
  %wide.load189 = load <4 x i32>, ptr %i.am, align 4, !tbaa !23, !alias.scope !47
  %i.an = zext <4 x i32> %wide.load189 to <4 x i64>
  %i.ao = mul nuw <4 x i64> %i.ak, %i.an
  %i.ap = add nuw <4 x i64> %i.ao, splat (i64 2147483648)
  %i.aq = lshr <4 x i64> %i.ap, splat (i64 32)    ; 2 uses
  %i.ar = trunc nuw <4 x i64> %i.aq to <4 x i32>
  %i.as = icmp sgt <4 x i32> %i.ar, splat (i32 255)
  %i.at = trunc <4 x i64> %i.aq to <4 x i8>
  %i.au = select <4 x i1> %i.as, <4 x i8> splat (i8 -1), <4 x i8> %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.al
  store <4 x i8> %i.au, ptr %i.av, align 1, !tbaa !16, !alias.scope !48, !noalias !49
  %index.next190 = add nuw i64 %index188, 4       ; 2 uses
  %i.aw = icmp eq i64 %index.next190, %n.vec184
  br i1 %i.aw, label %middle.block191, label %vector.body187, !llvm.loop !35

middle.block191:                                  ; preds = %vector.body187
  %cmp.n192 = icmp eq i64 %i.ab, %n.vec184
  br i1 %cmp.n192, label %.loopexit, label %.lr.ph125.preheader194

.lr.ph125.preheader194:                           ; preds = %vector.memcheck168, %.lr.ph125.preheader, %middle.block191
  %indvars.iv143.ph = phi i64 [ %i.x, %vector.memcheck168 ], [ %i.x, %.lr.ph125.preheader ], [ %i.ai, %middle.block191 ]
  br label %.lr.ph125

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %.lr.ph122
  %indvars.iv138 = phi i64 [ 0, %.lr.ph122.preheader ], [ %indvars.iv.next139, %.lr.ph122 ] ; 3 uses
  %indvars.iv136 = phi i64 [ 8, %.lr.ph122.preheader ], [ %indvars.iv.next137, %.lr.ph122 ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv138 ; 2 uses
  %.val76 = load <2 x i64>, ptr %i.ax, align 1, !tbaa !16 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %.val77 = load <2 x i64>, ptr %i.ay, align 1, !tbaa !16 ; 2 uses
  %i.az = lshr <2 x i64> %.val76, splat (i64 32)
  %i.ba = lshr <2 x i64> %.val77, splat (i64 32)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv138
  %i.bc = and <2 x i64> %.val76, splat (i64 4294967295)
  %i.bd = mul nuw <2 x i64> %i.bc, %i.p
  %i.be = and <2 x i64> %.val77, splat (i64 4294967295)
  %i.bf = mul nuw <2 x i64> %i.be, %i.p
  %i.bg = mul nuw <2 x i64> %i.az, %i.p
  %i.bh = mul nuw <2 x i64> %i.ba, %i.p
  %i.bi = add nuw <2 x i64> %i.bd, splat (i64 2147483648)
  %i.bj = add nuw <2 x i64> %i.bf, splat (i64 2147483648)
  %i.bk = add nuw <2 x i64> %i.bg, splat (i64 2147483648)
  %i.bl = add nuw <2 x i64> %i.bh, splat (i64 2147483648)
  %i.bm = lshr <2 x i64> %i.bi, splat (i64 32)
  %i.bn = lshr <2 x i64> %i.bj, splat (i64 32)
  %i.bo = and <2 x i64> %i.bk, splat (i64 -4294967296)
  %i.bp = and <2 x i64> %i.bl, splat (i64 -4294967296)
  %i.bq = or disjoint <2 x i64> %i.bm, %i.bo
  %i.br = or disjoint <2 x i64> %i.bn, %i.bp
  %i.bs = bitcast <2 x i64> %i.bq to <4 x i32>
  %i.bt = bitcast <2 x i64> %i.br to <4 x i32>
  %i.bu = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bs, <4 x i32> %i.bt)
  %i.bv = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bu, <8 x i16> poison)
  %i.bw = bitcast <16 x i8> %i.bv to <2 x i64>
  %i.bx = extractelement <2 x i64> %i.bw, i64 0
  store i64 %i.bx, ptr %i.bb, align 1, !tbaa !16
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 8 ; 2 uses
  %.not72 = icmp samesign ugt i64 %indvars.iv.next137, %i.t
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 8
  br i1 %.not72, label %.preheader.loopexit, label %.lr.ph122, !llvm.loop !36

.lr.ph125:                                        ; preds = %.lr.ph125.preheader194, %.lr.ph125
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %.lr.ph125 ], [ %indvars.iv143.ph, %.lr.ph125.preheader194 ] ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv143
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !23
  %i.ca = zext i32 %i.bz to i64
  %i.cb = load i32, ptr %i.l, align 8, !tbaa !21
  %i.cc = zext i32 %i.cb to i64
  %i.cd = mul nuw i64 %i.cc, %i.ca
  %i.ce = add nuw i64 %i.cd, 2147483648
  %i.cf = lshr i64 %i.ce, 32                      ; 2 uses
  %i.cg = trunc nuw i64 %i.cf to i32
  %i.ch = icmp sgt i32 %i.cg, 255
  %i.ci = trunc i64 %i.cf to i8
  %i.cj = select i1 %i.ch, i8 -1, i8 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv143
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !16
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.cl = trunc nuw i64 %indvars.iv.next144 to i32
  %i.cm = icmp sgt i32 %i.i, %i.cl
  br i1 %i.cm, label %.lr.ph125, label %.loopexit, !llvm.loop !37

bb.b:                                             ; preds = %bb.a
  %i.cn = sub nsw i32 0, %i.r
  %i.co = sext i32 %i.cn to i64
  %i.cp = shl nsw i64 %i.co, 32
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !50
  %i.cs = sext i32 %i.cr to i64
  %i.ct = udiv i64 %i.cp, %i.cs                   ; 3 uses
  %i.cu = trunc i64 %i.ct to i32                  ; 3 uses
  %i.cv = and i64 %i.ct, 4294967295               ; 2 uses
  %i.cw = sub i32 0, %i.cu                        ; 2 uses
  %i.cx = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>, i32 %i.cw, i64 0
  %i.cy = insertelement <4 x i32> %i.cx, i32 %i.cw, i64 2
  %i.cz = bitcast <4 x i32> %i.cy to <2 x i64>    ; 4 uses
  %i.da = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>, i32 %i.cu, i64 0
  %i.db = insertelement <4 x i32> %i.da, i32 %i.cu, i64 2
  %i.dc = bitcast <4 x i32> %i.db to <2 x i64>    ; 4 uses
  %.not116 = icmp slt i32 %i.i, 8
  br i1 %.not116, label %.preheader114, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.dd = zext nneg i32 %i.i to i64
  br label %.lr.ph

.preheader114.loopexit:                           ; preds = %.lr.ph
  %i.de = add nuw i32 %i.i, 2147483640
  %i.df = and i32 %i.de, 2147483640
  %narrow = add nuw i32 %i.df, 8
  br label %.preheader114

.preheader114:                                    ; preds = %.preheader114.loopexit, %bb.b
  %.2.lcssa = phi i32 [ 0, %bb.b ], [ %narrow, %.preheader114.loopexit ] ; 4 uses
  %i.dg = icmp slt i32 %.2.lcssa, %i.i
  br i1 %i.dg, label %.lr.ph119, label %.loopexit

.lr.ph119:                                        ; preds = %.preheader114
  %i.dh = sub i64 0, %i.ct
  %i.di = and i64 %i.dh, 4294967295               ; 2 uses
  %i.dj = zext i32 %.2.lcssa to i64               ; 8 uses
  %i.dk = xor i32 %.2.lcssa, -1
  %i.dl = add i32 %i.i, %i.dk                     ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.dl, 79
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph119
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.dj ; 3 uses
  %4 = xor i32 %.2.lcssa, -1
  %5 = add i32 %i.i, %4
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.do = getelementptr i8, ptr %i.b, i64 %i.dj
  %i.dp = getelementptr i8, ptr %i.do, i64 %6
  %scevgep150 = getelementptr i8, ptr %i.dp, i64 1 ; 3 uses
  %i.dq = shl nuw nsw i64 %i.dj, 2                ; 2 uses
  %scevgep151 = getelementptr i8, ptr %i.k, i64 %i.dq
  %i.dr = add nuw nsw i64 %i.dj, %6
  %i.ds = shl nuw nsw i64 %i.dr, 2
  %i.dt = add nuw nsw i64 %i.ds, 4                ; 2 uses
  %scevgep152 = getelementptr i8, ptr %i.k, i64 %i.dt
  %scevgep153 = getelementptr i8, ptr %i.d, i64 %i.dq
  %scevgep154 = getelementptr i8, ptr %i.d, i64 %i.dt
  %scevgep155 = getelementptr i8, ptr %0, i64 20
  %bound0 = icmp ult ptr %scevgep, %scevgep152
  %bound1 = icmp ult ptr %scevgep151, %scevgep150
  %found.conflict = and i1 %bound0, %bound1
  %bound0156 = icmp ult ptr %scevgep, %scevgep154
  %bound1157 = icmp ult ptr %scevgep153, %scevgep150
  %found.conflict158 = and i1 %bound0156, %bound1157
  %conflict.rdx = or i1 %found.conflict, %found.conflict158
  %bound0159 = icmp ult ptr %scevgep, %scevgep155
  %bound1160 = icmp ult ptr %i.l, %scevgep150
  %found.conflict161 = and i1 %bound0159, %bound1160
  %conflict.rdx162 = or i1 %conflict.rdx, %found.conflict161
  br i1 %conflict.rdx162, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dn, 8589934588              ; 3 uses
  %i.du = add nuw nsw i64 %n.vec, %i.dj
  %i.dv = load i32, ptr %i.l, align 8, !tbaa !21, !alias.scope !51
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dv, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dw = zext <4 x i32> %broadcast.splat to <4 x i64>
  %broadcast.splatinsert163 = insertelement <4 x i64> poison, i64 %i.di, i64 0
  %broadcast.splat164 = shufflevector <4 x i64> %broadcast.splatinsert163, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert165 = insertelement <4 x i64> poison, i64 %i.cv, i64 0
  %broadcast.splat166 = shufflevector <4 x i64> %broadcast.splatinsert165, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dx = add nuw i64 %index, %i.dj               ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.dx
  %wide.load = load <4 x i32>, ptr %i.dy, align 4, !tbaa !23, !alias.scope !52
  %i.dz = zext <4 x i32> %wide.load to <4 x i64>
  %i.ea = mul nuw <4 x i64> %broadcast.splat164, %i.dz
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.dx
  %wide.load167 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !23, !alias.scope !53
  %i.ec = zext <4 x i32> %wide.load167 to <4 x i64>
  %i.ed = mul nuw <4 x i64> %broadcast.splat166, %i.ec
  %i.ee = add nuw <4 x i64> %i.ea, splat (i64 2147483648)
  %i.ef = add <4 x i64> %i.ee, %i.ed
  %i.eg = lshr <4 x i64> %i.ef, splat (i64 32)
  %i.eh = mul nuw <4 x i64> %i.eg, %i.dw
  %i.ei = add nuw <4 x i64> %i.eh, splat (i64 2147483648)
  %i.ej = lshr <4 x i64> %i.ei, splat (i64 32)    ; 2 uses
  %i.ek = trunc nuw <4 x i64> %i.ej to <4 x i32>
  %i.el = icmp sgt <4 x i32> %i.ek, splat (i32 255)
  %i.em = trunc <4 x i64> %i.ej to <4 x i8>
  %i.en = select <4 x i1> %i.el, <4 x i8> splat (i8 -1), <4 x i8> %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dx
  store <4 x i8> %i.en, ptr %i.eo, align 1, !tbaa !16, !alias.scope !54, !noalias !55
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ep = icmp eq i64 %index.next, %n.vec
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph119, %middle.block
  %indvars.iv133.ph = phi i64 [ %i.dj, %vector.memcheck ], [ %i.dj, %.lr.ph119 ], [ %i.du, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv128 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next129, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv128 ; 2 uses
  %.val74 = load <2 x i64>, ptr %i.eq, align 1, !tbaa !16 ; 2 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 16
  %.val75 = load <2 x i64>, ptr %i.er, align 1, !tbaa !16 ; 2 uses
  %i.es = lshr <2 x i64> %.val74, splat (i64 32)
  %i.et = lshr <2 x i64> %.val75, splat (i64 32)
  %i.eu = and <2 x i64> %.val74, splat (i64 4294967295)
  %i.ev = mul nuw <2 x i64> %i.eu, %i.cz
  %i.ew = and <2 x i64> %.val75, splat (i64 4294967295)
  %i.ex = mul nuw <2 x i64> %i.ew, %i.cz
  %i.ey = mul nuw <2 x i64> %i.es, %i.cz
  %i.ez = mul nuw <2 x i64> %i.et, %i.cz
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv128 ; 2 uses
  %.val = load <2 x i64>, ptr %i.fa, align 1, !tbaa !16 ; 2 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 16
  %.val73 = load <2 x i64>, ptr %i.fb, align 1, !tbaa !16 ; 2 uses
  %i.fc = lshr <2 x i64> %.val, splat (i64 32)
  %i.fd = lshr <2 x i64> %.val73, splat (i64 32)
  %i.fe = and <2 x i64> %.val, splat (i64 4294967295)
  %i.ff = mul nuw <2 x i64> %i.fe, %i.dc
  %i.fg = and <2 x i64> %.val73, splat (i64 4294967295)
  %i.fh = mul nuw <2 x i64> %i.fg, %i.dc
  %i.fi = mul nuw <2 x i64> %i.fc, %i.dc
  %i.fj = mul nuw <2 x i64> %i.fd, %i.dc
  %i.fk = add <2 x i64> %i.ev, splat (i64 2147483648)
  %i.fl = add <2 x i64> %i.fk, %i.ff
  %i.fm = add <2 x i64> %i.ex, splat (i64 2147483648)
  %i.fn = add <2 x i64> %i.fm, %i.fh
  %i.fo = add <2 x i64> %i.ey, splat (i64 2147483648)
  %i.fp = add <2 x i64> %i.fo, %i.fi
  %i.fq = add <2 x i64> %i.ez, splat (i64 2147483648)
  %i.fr = add <2 x i64> %i.fq, %i.fj
  %i.fs = lshr <2 x i64> %i.fl, splat (i64 32)
  %i.ft = lshr <2 x i64> %i.fn, splat (i64 32)
  %i.fu = lshr <2 x i64> %i.fp, splat (i64 32)
  %i.fv = lshr <2 x i64> %i.fr, splat (i64 32)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv128
  %i.fx = mul nuw <2 x i64> %i.fs, %i.p
  %i.fy = mul nuw <2 x i64> %i.ft, %i.p
  %i.fz = mul nuw <2 x i64> %i.fu, %i.p
  %i.ga = mul nuw <2 x i64> %i.fv, %i.p
  %i.gb = add nuw <2 x i64> %i.fx, splat (i64 2147483648)
  %i.gc = add nuw <2 x i64> %i.fy, splat (i64 2147483648)
  %i.gd = add nuw <2 x i64> %i.fz, splat (i64 2147483648)
  %i.ge = add nuw <2 x i64> %i.ga, splat (i64 2147483648)
  %i.gf = lshr <2 x i64> %i.gb, splat (i64 32)
  %i.gg = lshr <2 x i64> %i.gc, splat (i64 32)
  %i.gh = and <2 x i64> %i.gd, splat (i64 -4294967296)
  %i.gi = and <2 x i64> %i.ge, splat (i64 -4294967296)
  %i.gj = or disjoint <2 x i64> %i.gf, %i.gh
  %i.gk = or disjoint <2 x i64> %i.gg, %i.gi
  %i.gl = bitcast <2 x i64> %i.gj to <4 x i32>
  %i.gm = bitcast <2 x i64> %i.gk to <4 x i32>
  %i.gn = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.gl, <4 x i32> %i.gm)
  %i.go = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gn, <8 x i16> poison)
  %i.gp = bitcast <16 x i8> %i.go to <2 x i64>
  %i.gq = extractelement <2 x i64> %i.gp, i64 0
  store i64 %i.gq, ptr %i.fw, align 1, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.dd
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 8
  br i1 %.not, label %.preheader114.loopexit, label %.lr.ph, !llvm.loop !44

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %scalar.ph ], [ %indvars.iv133.ph, %scalar.ph.preheader ] ; 4 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv133
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !23
  %i.gt = zext i32 %i.gs to i64
  %i.gu = mul nuw i64 %i.di, %i.gt
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv133
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !23
  %i.gx = zext i32 %i.gw to i64
  %i.gy = mul nuw i64 %i.cv, %i.gx
  %i.gz = add nuw i64 %i.gu, 2147483648
  %i.ha = add i64 %i.gz, %i.gy
  %i.hb = lshr i64 %i.ha, 32
  %i.hc = load i32, ptr %i.l, align 8, !tbaa !21
  %i.hd = zext i32 %i.hc to i64
  %i.he = mul nuw i64 %i.hb, %i.hd
  %i.hf = add nuw i64 %i.he, 2147483648
  %i.hg = lshr i64 %i.hf, 32                      ; 2 uses
  %i.hh = trunc nuw i64 %i.hg to i32
  %i.hi = icmp sgt i32 %i.hh, 255
  %i.hj = trunc i64 %i.hg to i8
  %i.hk = select i1 %i.hi, i8 -1, i8 %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv133
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !16
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %i.hm = trunc nuw i64 %indvars.iv.next134 to i32
  %i.hn = icmp sgt i32 %i.i, %i.hm
  br i1 %i.hn, label %scalar.ph, label %.loopexit, !llvm.loop !45

.loopexit:                                        ; preds = %scalar.ph, %.lr.ph125, %middle.block, %middle.block191, %.preheader114, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @RescalerExportRowShrink_SSE2(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !14
  %i.i = mul i32 %i.h, %i.f                       ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !22
  %i.p = mul i32 %i.o, %i.m                       ; 2 uses
  %i.q = sub i32 0, %i.p                          ; 3 uses
  %.not = icmp eq i32 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !70   ; 3 uses
  %i.t = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>, i32 %i.s, i64 0
  %i.u = insertelement <4 x i32> %i.t, i32 %i.s, i64 2
  %i.v = bitcast <4 x i32> %i.u to <2 x i64>      ; 8 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>, i32 %i.q, i64 0
  %i.x = insertelement <4 x i32> %i.w, i32 %i.q, i64 2
  %i.y = bitcast <4 x i32> %i.x to <2 x i64>      ; 4 uses
  %.not86125 = icmp slt i32 %i.i, 8
  br i1 %.not86125, label %.preheader123, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.z = zext nneg i32 %i.i to i64
  br label %.lr.ph

.preheader123.loopexit:                           ; preds = %.lr.ph
  %i.aa = add nuw i32 %i.i, 2147483640
  %i.ab = and i32 %i.aa, 2147483640
  %narrow = add nuw i32 %i.ab, 8
  br label %.preheader123

.preheader123:                                    ; preds = %.preheader123.loopexit, %bb.b
  %.0.lcssa = phi i32 [ 0, %bb.b ], [ %narrow, %.preheader123.loopexit ] ; 4 uses
  %i.ac = icmp slt i32 %.0.lcssa, %i.i
  br i1 %i.ac, label %.lr.ph128, label %.loopexit

.lr.ph128:                                        ; preds = %.preheader123
  %i.ad = zext i32 %i.q to i64                    ; 2 uses
  %i.ae = zext i32 %.0.lcssa to i64               ; 8 uses
  %i.af = xor i32 %.0.lcssa, -1
  %i.ag = add i32 %i.i, %i.af                     ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ag, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph128
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.ae ; 3 uses
  %1 = xor i32 %.0.lcssa, -1
  %2 = add i32 %i.i, %1
  %3 = zext i32 %2 to i64                         ; 2 uses
  %i.aj = getelementptr i8, ptr %i.b, i64 %i.ae
  %i.ak = getelementptr i8, ptr %i.aj, i64 %3
  %scevgep158 = getelementptr i8, ptr %i.ak, i64 1 ; 3 uses
  %i.al = shl nuw nsw i64 %i.ae, 2                ; 2 uses
  %scevgep159 = getelementptr i8, ptr %i.d, i64 %i.al ; 3 uses
  %i.am = add nuw nsw i64 %i.ae, %3
  %i.an = shl nuw nsw i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 4                ; 2 uses
  %scevgep160 = getelementptr i8, ptr %i.d, i64 %i.ao ; 3 uses
  %scevgep161 = getelementptr i8, ptr %i.k, i64 %i.al ; 2 uses
  %scevgep162 = getelementptr i8, ptr %i.k, i64 %i.ao ; 2 uses
  %scevgep163 = getelementptr i8, ptr %0, i64 24  ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep160
  %bound1 = icmp ult ptr %scevgep159, %scevgep158
  %found.conflict = and i1 %bound0, %bound1
  %bound0164 = icmp ult ptr %scevgep, %scevgep162
  %bound1165 = icmp ult ptr %scevgep161, %scevgep158
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx = or i1 %found.conflict, %found.conflict166
  %bound0167 = icmp ult ptr %scevgep, %scevgep163
  %bound1168 = icmp ult ptr %i.r, %scevgep158
  %found.conflict169 = and i1 %bound0167, %bound1168
  %conflict.rdx170 = or i1 %conflict.rdx, %found.conflict169
  %bound0171 = icmp ult ptr %scevgep159, %scevgep162
  %bound1172 = icmp ult ptr %scevgep161, %scevgep160
  %found.conflict173 = and i1 %bound0171, %bound1172
  %conflict.rdx174 = or i1 %conflict.rdx170, %found.conflict173
  %bound0175 = icmp ult ptr %scevgep159, %scevgep163
  %bound1176 = icmp ult ptr %i.r, %scevgep160
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx178 = or i1 %conflict.rdx174, %found.conflict177
  br i1 %conflict.rdx178, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, 8589934588              ; 3 uses
  %i.ap = add nuw nsw i64 %n.vec, %i.ae
  %i.aq = load i32, ptr %i.r, align 4, !tbaa !70, !alias.scope !71
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aq, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ar = zext <4 x i32> %broadcast.splat to <4 x i64>
  %broadcast.splatinsert179 = insertelement <4 x i64> poison, i64 %i.ad, i64 0
  %broadcast.splat180 = shufflevector <4 x i64> %broadcast.splatinsert179, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = add nuw i64 %index, %i.ae               ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.as
  %wide.load = load <4 x i32>, ptr %i.at, align 4, !tbaa !23, !alias.scope !72
  %i.au = zext <4 x i32> %wide.load to <4 x i64>
  %i.av = mul nuw <4 x i64> %broadcast.splat180, %i.au
  %i.aw = lshr <4 x i64> %i.av, splat (i64 32)
  %i.ax = trunc nuw <4 x i64> %i.aw to <4 x i32>  ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.as ; 2 uses
  %wide.load181 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !23, !alias.scope !73, !noalias !74
  %i.az = sub <4 x i32> %wide.load181, %i.ax
  %i.ba = zext <4 x i32> %i.az to <4 x i64>
  %i.bb = mul nuw <4 x i64> %i.ba, %i.ar
  %i.bc = add nuw <4 x i64> %i.bb, splat (i64 2147483648)
  %i.bd = lshr <4 x i64> %i.bc, splat (i64 32)    ; 2 uses
  %i.be = trunc nuw <4 x i64> %i.bd to <4 x i32>
  %i.bf = icmp sgt <4 x i32> %i.be, splat (i32 255)
  %i.bg = trunc <4 x i64> %i.bd to <4 x i8>
  %i.bh = select <4 x i1> %i.bf, <4 x i8> splat (i8 -1), <4 x i8> %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.as
  store <4 x i8> %i.bh, ptr %i.bi, align 1, !tbaa !16, !alias.scope !75, !noalias !76
  store <4 x i32> %i.ax, ptr %i.ay, align 4, !tbaa !23, !alias.scope !73, !noalias !74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph128, %middle.block
  %indvars.iv142.ph = phi i64 [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph128 ], [ %i.ap, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv137 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next138, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv137 ; 3 uses
  %.val90 = load <2 x i64>, ptr %i.bk, align 1, !tbaa !16 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 16     ; 2 uses
  %.val91 = load <2 x i64>, ptr %i.bl, align 1, !tbaa !16 ; 2 uses
  %i.bm = lshr <2 x i64> %.val90, splat (i64 32)
  %i.bn = lshr <2 x i64> %.val91, splat (i64 32)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv137 ; 2 uses
  %.val88 = load <2 x i64>, ptr %i.bo, align 1, !tbaa !16 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  %.val89 = load <2 x i64>, ptr %i.bp, align 1, !tbaa !16 ; 2 uses
  %i.bq = lshr <2 x i64> %.val88, splat (i64 32)
  %i.br = lshr <2 x i64> %.val89, splat (i64 32)
  %i.bs = and <2 x i64> %.val88, splat (i64 4294967295)
  %i.bt = mul nuw <2 x i64> %i.bs, %i.y
  %i.bu = and <2 x i64> %.val89, splat (i64 4294967295)
  %i.bv = mul nuw <2 x i64> %i.bu, %i.y
  %i.bw = mul nuw <2 x i64> %i.bq, %i.y           ; 2 uses
  %i.bx = mul nuw <2 x i64> %i.br, %i.y           ; 2 uses
  %i.by = lshr <2 x i64> %i.bt, splat (i64 32)    ; 2 uses
  %i.bz = lshr <2 x i64> %i.bv, splat (i64 32)    ; 2 uses
  %i.ca = lshr <2 x i64> %i.bw, splat (i64 32)
  %i.cb = lshr <2 x i64> %i.bx, splat (i64 32)
  %i.cc = sub <2 x i64> %.val90, %i.by
  %i.cd = sub <2 x i64> %.val91, %i.bz
  %i.ce = sub nsw <2 x i64> %i.bm, %i.ca
  %i.cf = sub nsw <2 x i64> %i.bn, %i.cb
  %i.cg = and <2 x i64> %i.bw, splat (i64 -4294967296)
  %i.ch = and <2 x i64> %i.bx, splat (i64 -4294967296)
  %i.ci = or disjoint <2 x i64> %i.by, %i.cg
  %i.cj = or disjoint <2 x i64> %i.bz, %i.ch
  store <2 x i64> %i.ci, ptr %i.bk, align 1, !tbaa !16
  store <2 x i64> %i.cj, ptr %i.bl, align 1, !tbaa !16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv137
  %i.cl = and <2 x i64> %i.cc, splat (i64 4294967295)
  %i.cm = mul nuw <2 x i64> %i.cl, %i.v
  %i.cn = and <2 x i64> %i.cd, splat (i64 4294967295)
  %i.co = mul nuw <2 x i64> %i.cn, %i.v
  %i.cp = and <2 x i64> %i.ce, splat (i64 4294967295)
  %i.cq = mul nuw <2 x i64> %i.cp, %i.v
  %i.cr = and <2 x i64> %i.cf, splat (i64 4294967295)
  %i.cs = mul nuw <2 x i64> %i.cr, %i.v
  %i.ct = add nuw <2 x i64> %i.cm, splat (i64 2147483648)
  %i.cu = add nuw <2 x i64> %i.co, splat (i64 2147483648)
  %i.cv = add nuw <2 x i64> %i.cq, splat (i64 2147483648)
  %i.cw = add nuw <2 x i64> %i.cs, splat (i64 2147483648)
  %i.cx = lshr <2 x i64> %i.ct, splat (i64 32)
  %i.cy = lshr <2 x i64> %i.cu, splat (i64 32)
  %i.cz = and <2 x i64> %i.cv, splat (i64 -4294967296)
  %i.da = and <2 x i64> %i.cw, splat (i64 -4294967296)
  %i.db = or disjoint <2 x i64> %i.cx, %i.cz
  %i.dc = or disjoint <2 x i64> %i.cy, %i.da
  %i.dd = bitcast <2 x i64> %i.db to <4 x i32>
  %i.de = bitcast <2 x i64> %i.dc to <4 x i32>
  %i.df = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dd, <4 x i32> %i.de)
  %i.dg = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.df, <8 x i16> poison)
  %i.dh = bitcast <16 x i8> %i.dg to <2 x i64>
  %i.di = extractelement <2 x i64> %i.dh, i64 0
  store i64 %i.di, ptr %i.ck, align 1, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not86 = icmp samesign ugt i64 %indvars.iv.next, %i.z
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 8
  br i1 %.not86, label %.preheader123.loopexit, label %.lr.ph, !llvm.loop !62

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %scalar.ph ], [ %indvars.iv142.ph, %scalar.ph.preheader ] ; 4 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv142
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !23
  %i.dl = zext i32 %i.dk to i64
  %i.dm = mul nuw i64 %i.dl, %i.ad
  %i.dn = lshr i64 %i.dm, 32
  %i.do = trunc nuw i64 %i.dn to i32              ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv142 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !23
  %i.dr = sub i32 %i.dq, %i.do
  %i.ds = zext i32 %i.dr to i64
  %i.dt = load i32, ptr %i.r, align 4, !tbaa !70
  %i.du = zext i32 %i.dt to i64
  %i.dv = mul nuw i64 %i.ds, %i.du
  %i.dw = add nuw i64 %i.dv, 2147483648
  %i.dx = lshr i64 %i.dw, 32                      ; 2 uses
  %i.dy = trunc nuw i64 %i.dx to i32
  %i.dz = icmp sgt i32 %i.dy, 255
  %i.ea = trunc i64 %i.dx to i8
  %i.eb = select i1 %i.dz, i8 -1, i8 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv142
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !16
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !23
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.ed = trunc nuw i64 %indvars.iv.next143 to i32
  %i.ee = icmp sgt i32 %i.i, %i.ed
  br i1 %i.ee, label %scalar.ph, label %.loopexit, !llvm.loop !63

bb.c:                                             ; preds = %bb.a
  %.not85129 = icmp slt i32 %i.i, 8
  br i1 %.not85129, label %.preheader, label %.lr.ph131.preheader

.lr.ph131.preheader:                              ; preds = %bb.c
  %i.ef = zext nneg i32 %i.i to i64
  br label %.lr.ph131

.preheader.loopexit:                              ; preds = %.lr.ph131
  %i.eg = add nuw i32 %i.i, 2147483640
  %i.eh = and i32 %i.eg, 2147483640
  %narrow155 = add nuw i32 %i.eh, 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.c
  %.2.lcssa = phi i32 [ 0, %bb.c ], [ %narrow155, %.preheader.loopexit ] ; 4 uses
  %i.ei = icmp slt i32 %.2.lcssa, %i.i
  br i1 %i.ei, label %.lr.ph134, label %.loopexit

.lr.ph134:                                        ; preds = %.preheader
  %i.ej = zext i32 %i.s to i64                    ; 2 uses
  %i.ek = zext i32 %.2.lcssa to i64               ; 8 uses
  %i.el = xor i32 %.2.lcssa, -1
  %i.em = add i32 %i.i, %i.el                     ; 2 uses
  %i.en = zext i32 %i.em to i64
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
  %min.iters.check191 = icmp ult i32 %i.em, 11
  br i1 %min.iters.check191, label %scalar.ph190.preheader, label %vector.memcheck182

vector.memcheck182:                               ; preds = %.lr.ph134
  %scevgep183 = getelementptr i8, ptr %i.b, i64 %i.ek
  %4 = xor i32 %.2.lcssa, -1
  %5 = add i32 %i.i, %4
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.ep = getelementptr i8, ptr %i.b, i64 %i.ek
  %i.eq = getelementptr i8, ptr %i.ep, i64 %6
  %scevgep184 = getelementptr i8, ptr %i.eq, i64 1
  %i.er = shl nuw nsw i64 %i.ek, 2
  %scevgep185 = getelementptr i8, ptr %i.d, i64 %i.er
  %i.es = add nuw nsw i64 %i.ek, %6
  %i.et = shl nuw nsw i64 %i.es, 2
  %i.eu = getelementptr i8, ptr %i.d, i64 %i.et
  %scevgep186 = getelementptr i8, ptr %i.eu, i64 4
  %bound0187 = icmp ult ptr %scevgep183, %scevgep186
  %bound1188 = icmp ult ptr %scevgep185, %scevgep184
  %found.conflict189 = and i1 %bound0187, %bound1188
  br i1 %found.conflict189, label %scalar.ph190.preheader, label %vector.ph192

vector.ph192:                                     ; preds = %vector.memcheck182
  %n.vec193 = and i64 %i.eo, 8589934588           ; 3 uses
  %i.ev = add nuw nsw i64 %n.vec193, %i.ek
  %broadcast.splatinsert194 = insertelement <4 x i64> poison, i64 %i.ej, i64 0
  %broadcast.splat195 = shufflevector <4 x i64> %broadcast.splatinsert194, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph192
  %index197 = phi i64 [ 0, %vector.ph192 ], [ %index.next199, %vector.body196 ] ; 2 uses
  %i.ew = add nuw i64 %index197, %i.ek            ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ew ; 2 uses
  %wide.load198 = load <4 x i32>, ptr %i.ex, align 4, !tbaa !23, !alias.scope !77
  %i.ey = zext <4 x i32> %wide.load198 to <4 x i64>
  %i.ez = mul nuw <4 x i64> %broadcast.splat195, %i.ey
  %i.fa = add nuw <4 x i64> %i.ez, splat (i64 2147483648)
  %i.fb = lshr <4 x i64> %i.fa, splat (i64 32)    ; 2 uses
  %i.fc = trunc nuw <4 x i64> %i.fb to <4 x i32>
  %i.fd = icmp sgt <4 x i32> %i.fc, splat (i32 255)
  %i.fe = trunc <4 x i64> %i.fb to <4 x i8>
  %i.ff = select <4 x i1> %i.fd, <4 x i8> splat (i8 -1), <4 x i8> %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ew
  store <4 x i8> %i.ff, ptr %i.fg, align 1, !tbaa !16, !alias.scope !78, !noalias !77
  store <4 x i32> zeroinitializer, ptr %i.ex, align 4, !tbaa !23, !alias.scope !77
  %index.next199 = add nuw i64 %index197, 4       ; 2 uses
  %i.fh = icmp eq i64 %index.next199, %n.vec193
  br i1 %i.fh, label %middle.block200, label %vector.body196, !llvm.loop !67

middle.block200:                                  ; preds = %vector.body196
  %cmp.n201 = icmp eq i64 %i.eo, %n.vec193
  br i1 %cmp.n201, label %.loopexit, label %scalar.ph190.preheader

scalar.ph190.preheader:                           ; preds = %vector.memcheck182, %.lr.ph134, %middle.block200
  %indvars.iv152.ph = phi i64 [ %i.ek, %vector.memcheck182 ], [ %i.ek, %.lr.ph134 ], [ %i.ev, %middle.block200 ]
  br label %scalar.ph190

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %.lr.ph131
  %indvars.iv147 = phi i64 [ 0, %.lr.ph131.preheader ], [ %indvars.iv.next148, %.lr.ph131 ] ; 3 uses
  %indvars.iv145 = phi i64 [ 8, %.lr.ph131.preheader ], [ %indvars.iv.next146, %.lr.ph131 ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv147 ; 3 uses
  %.val = load <2 x i64>, ptr %i.fi, align 1, !tbaa !16 ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 16
  %.val87 = load <2 x i64>, ptr %i.fj, align 1, !tbaa !16 ; 2 uses
  %i.fk = lshr <2 x i64> %.val, splat (i64 32)
  %i.fl = lshr <2 x i64> %.val87, splat (i64 32)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv147
  %i.fn = and <2 x i64> %.val, splat (i64 4294967295)
  %i.fo = mul nuw <2 x i64> %i.fn, %i.v
  %i.fp = and <2 x i64> %.val87, splat (i64 4294967295)
  %i.fq = mul nuw <2 x i64> %i.fp, %i.v
  %i.fr = mul nuw <2 x i64> %i.fk, %i.v
  %i.fs = mul nuw <2 x i64> %i.fl, %i.v
  %i.ft = add nuw <2 x i64> %i.fo, splat (i64 2147483648)
  %i.fu = add nuw <2 x i64> %i.fq, splat (i64 2147483648)
  %i.fv = add nuw <2 x i64> %i.fr, splat (i64 2147483648)
  %i.fw = add nuw <2 x i64> %i.fs, splat (i64 2147483648)
  %i.fx = lshr <2 x i64> %i.ft, splat (i64 32)
  %i.fy = lshr <2 x i64> %i.fu, splat (i64 32)
  %i.fz = and <2 x i64> %i.fv, splat (i64 -4294967296)
  %i.ga = and <2 x i64> %i.fw, splat (i64 -4294967296)
  %i.gb = or disjoint <2 x i64> %i.fx, %i.fz
  %i.gc = or disjoint <2 x i64> %i.fy, %i.ga
  %i.gd = bitcast <2 x i64> %i.gb to <4 x i32>
  %i.ge = bitcast <2 x i64> %i.gc to <4 x i32>
  %i.gf = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.gd, <4 x i32> %i.ge)
  %i.gg = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gf, <8 x i16> poison)
  %i.gh = bitcast <16 x i8> %i.gg to <2 x i64>
  %i.gi = extractelement <2 x i64> %i.gh, i64 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fi, i8 0, i64 32, i1 false)
  store i64 %i.gi, ptr %i.fm, align 1, !tbaa !16
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 8 ; 2 uses
  %.not85 = icmp samesign ugt i64 %indvars.iv.next146, %i.ef
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 8
  br i1 %.not85, label %.preheader.loopexit, label %.lr.ph131, !llvm.loop !68

scalar.ph190:                                     ; preds = %scalar.ph190.preheader, %scalar.ph190
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %scalar.ph190 ], [ %indvars.iv152.ph, %scalar.ph190.preheader ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv152 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !23
  %i.gl = zext i32 %i.gk to i64
  %i.gm = mul nuw i64 %i.gl, %i.ej
  %i.gn = add nuw i64 %i.gm, 2147483648
  %i.go = lshr i64 %i.gn, 32                      ; 2 uses
  %i.gp = trunc nuw i64 %i.go to i32
  %i.gq = icmp sgt i32 %i.gp, 255
  %i.gr = trunc i64 %i.go to i8
  %i.gs = select i1 %i.gq, i8 -1, i8 %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv152
  store i8 %i.gs, ptr %i.gt, align 1, !tbaa !16
  store i32 0, ptr %i.gj, align 4, !tbaa !23
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %i.gu = trunc nuw i64 %indvars.iv.next153 to i32
  %i.gv = icmp sgt i32 %i.i, %i.gu
  br i1 %i.gv, label %scalar.ph190, label %.loopexit, !llvm.loop !69

.loopexit:                                        ; preds = %scalar.ph, %scalar.ph190, %middle.block, %middle.block200, %.preheader123, %.preheader
  ret void
}

declare void @WebPRescalerImportRowExpand_C(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #4

declare void @WebPRescalerImportRowShrink_C(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

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
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"p1 int", !8, i64 0}
!11 = !{!"WebPRescaler", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !9, i64 72, !5, i64 80, !10, i64 88, !10, i64 96}
!12 = !{!11, !10, i64 96}
!13 = !{!11, !5, i64 52}
!14 = !{!11, !5, i64 8}
!15 = !{!11, !5, i64 36}
!16 = !{!4, !4, i64 0}
!17 = !{!11, !5, i64 40}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!11, !9, i64 72}
!20 = !{!11, !10, i64 88}
!21 = !{!11, !5, i64 16}
!22 = !{!11, !5, i64 24}
!23 = !{!5, !5, i64 0}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!8, !8, i64 0}
!27 = !{!11, !5, i64 44}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !18}
!30 = !{!11, !5, i64 12}
!31 = distinct !{!31, !"LVerDomain"}
!32 = distinct !{!32, !31}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !31}
!35 = distinct !{!35, !18, !24, !25}
!36 = distinct !{!36, !18}
!37 = distinct !{!37, !18, !24}
!38 = distinct !{!38, !"LVerDomain"}
!39 = distinct !{!39, !38}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !38}
!42 = distinct !{!42, !38}
!43 = distinct !{!43, !18, !24, !25}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18, !24}
!46 = !{!32}
!47 = !{!33}
!48 = !{!34}
!49 = !{!33, !32}
!50 = !{!11, !5, i64 32}
!51 = !{!39}
!52 = !{!40}
!53 = !{!41}
!54 = !{!42}
!55 = !{!40, !41, !39}
!56 = distinct !{!56, !"LVerDomain"}
!57 = distinct !{!57, !56}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !56}
!60 = distinct !{!60, !56}
!61 = distinct !{!61, !18, !24, !25}
!62 = distinct !{!62, !18}
end_hunk_0
