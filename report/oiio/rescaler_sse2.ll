inline.NumInlined: 18
inline.NumDeleted: 8
begin_hunk_0_@RescalerImportRowExpand_SSE2:bb.a
bb.k:                                             ; preds = %bb.j
  %i.br = bitcast <2 x i64> %.292107 to <16 x i8>
  %i.bs = shufflevector <16 x i8> %i.br, <16 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17>
  %i.bt = bitcast <16 x i8> %i.bs to <2 x i64>
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %.not78 = icmp ugt ptr %.3110, %i.ba
  br i1 %.not78, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.3.val = load i64, ptr %.3110, align 1, !tbaa !17
  %i.bu = insertelement <2 x i64> poison, i64 %.3.val, i64 0
  %i.bv = bitcast <2 x i64> %i.bu to <16 x i8>
  %i.bw = shufflevector <16 x i8> %i.bv, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bx = bitcast <16 x i8> %i.bw to <2 x i64>
  %i.by = getelementptr inbounds nuw i8, ptr %.3110, i64 7
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bz = bitcast <2 x i64> %.292107 to <16 x i8>
  %i.ca = shufflevector <16 x i8> %i.bz, <16 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 poison, i32 poison, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17>
  %i.cb = bitcast <16 x i8> %i.ca to <8 x i16>
  %i.cc = getelementptr inbounds nuw i8, ptr %.3110, i64 1 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !17
  %i.ce = zext i8 %i.cd to i16
  %i.cf = insertelement <8 x i16> %i.cb, i16 %i.ce, i64 1
  %i.cg = bitcast <8 x i16> %i.cf to <2 x i64>
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.k
  %.393 = phi <2 x i64> [ %i.cg, %bb.n ], [ %i.bx, %bb.m ], [ %i.bt, %bb.k ]
  %.165 = phi i32 [ 1, %bb.n ], [ 7, %bb.m ], [ %i.bq, %bb.k ]
  %.4 = phi ptr [ %i.cc, %bb.n ], [ %i.by, %bb.m ], [ %.3110, %bb.k ]
  %i.ch = add nsw i32 %i.bo, %i.k
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.o
  %.494 = phi <2 x i64> [ %.393, %bb.o ], [ %.292107, %bb.i ] ; 2 uses
  %.367 = phi i32 [ %.165, %bb.o ], [ %.064108, %bb.i ]
  %.563 = phi i32 [ %i.ch, %bb.o ], [ %i.bo, %bb.i ] ; 3 uses
  %.6 = phi ptr [ %.4, %bb.o ], [ %.3110, %bb.i ]
  %i.ci = sub nsw i32 %i.k, %.563
  %i.cj = shl i32 %i.ci, 16
  %i.ck = or i32 %i.cj, %.563
  %i.cl = insertelement <4 x i32> poison, i32 %i.ck, i64 0
  %i.cm = bitcast <2 x i64> %.494 to <8 x i16>
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.c = trunc i32 %i.b to i16
  %i.d = insertelement <8 x i16> poison, i16 %i.c, i64 0
  %i.e = shufflevector <8 x i16> %i.d, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !19
  %i.h = insertelement <4 x i32> poison, i32 %i.g, i64 0
  %i.i = shufflevector <4 x i32> %i.h, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9    ; 2 uses
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
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !20

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
  store <4 x i32> %i.ay, ptr %.06270, align 1, !tbaa !17
  %i.bk = getelementptr inbounds nuw i8, ptr %.06270, i64 16 ; 2 uses
  %i.bl = icmp ult ptr %i.bk, %i.p
  br i1 %i.bl, label %bb.d, label %.loopexit, !llvm.loop !22

.loopexit:                                        ; preds = %._crit_edge, %.preheader, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @RescalerExportRowExpand_SSE2(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !14
  %i.i = mul i32 %i.h, %i.f                       ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9    ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %i.n = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>, i32 %i.m, i64 0
  %i.o = insertelement <4 x i32> %i.n, i32 %i.m, i64 2
  %i.p = bitcast <4 x i32> %i.o to <2 x i64>      ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !26   ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.preheader113, label %bb.b

.preheader113:                                    ; preds = %bb.a
  %.not72120 = icmp slt i32 %i.i, 8
  br i1 %.not72120, label %.preheader, label %.lr.ph122.preheader

.lr.ph122.preheader:                              ; preds = %.preheader113
  %i.t = zext nneg i32 %i.i to i64
  br label %.lr.ph122

.preheader.loopexit:                              ; preds = %.lr.ph122
  %1 = add nuw i32 %i.i, 2147483640
  %i.u = and i32 %1, 2147483640
  %narrow147 = add nuw i32 %i.u, 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader113
  %.0.lcssa = phi i32 [ 0, %.preheader113 ], [ %narrow147, %.preheader.loopexit ] ; 4 uses
  %i.v = icmp slt i32 %.0.lcssa, %i.i
  br i1 %i.v, label %.lr.ph125.preheader, label %.loopexit

.lr.ph125.preheader:                              ; preds = %.preheader
  %i.w = zext i32 %.0.lcssa to i64                ; 8 uses
  %i.x = xor i32 %.0.lcssa, -1
  %i.y = add i32 %i.i, %i.x                       ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check181 = icmp ult i32 %i.y, 15
  br i1 %min.iters.check181, label %.lr.ph125.preheader194, label %vector.memcheck167

vector.memcheck167:                               ; preds = %.lr.ph125.preheader
  %scevgep168 = getelementptr i8, ptr %i.b, i64 %i.w ; 2 uses
  %i.ab = xor i32 %.0.lcssa, -1
  %i.ac = add i32 %i.i, %i.ab
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.b, i64 %i.w
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ad
  %scevgep169 = getelementptr i8, ptr %i.af, i64 1 ; 2 uses
  %i.ag = shl nuw nsw i64 %i.w, 2
  %scevgep170 = getelementptr i8, ptr %i.k, i64 %i.ag
  %i.ah = add nuw nsw i64 %i.w, %i.ad
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = getelementptr i8, ptr %i.k, i64 %i.ai
  %scevgep171 = getelementptr i8, ptr %i.aj, i64 4
  %scevgep172 = getelementptr i8, ptr %0, i64 20
  %bound0173 = icmp ult ptr %scevgep168, %scevgep171
  %bound1174 = icmp ult ptr %scevgep170, %scevgep169
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0176 = icmp ult ptr %scevgep168, %scevgep172
  %bound1177 = icmp ult ptr %i.l, %scevgep169
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx179 = or i1 %found.conflict175, %found.conflict178
  br i1 %conflict.rdx179, label %.lr.ph125.preheader194, label %vector.ph182

vector.ph182:                                     ; preds = %vector.memcheck167
  %n.vec184 = and i64 %i.aa, 8589934588           ; 3 uses
  %i.ak = add nuw nsw i64 %n.vec184, %i.w
  %i.al = load i32, ptr %i.l, align 8, !tbaa !25, !alias.scope !27
  %broadcast.splatinsert185 = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat186 = shufflevector <4 x i32> %broadcast.splatinsert185, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.am = zext <4 x i32> %broadcast.splat186 to <4 x i64>
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph182
  %index188 = phi i64 [ 0, %vector.ph182 ], [ %index.next190, %vector.body187 ] ; 2 uses
  %i.an = add nuw i64 %index188, %i.w             ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.an
  %wide.load189 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !3, !alias.scope !30
  %i.ap = zext <4 x i32> %wide.load189 to <4 x i64>
  %i.aq = mul nuw <4 x i64> %i.am, %i.ap
  %i.ar = add nuw <4 x i64> %i.aq, splat (i64 2147483648)
  %i.as = lshr <4 x i64> %i.ar, splat (i64 32)    ; 2 uses
  %i.at = trunc nuw <4 x i64> %i.as to <4 x i32>
  %i.au = icmp sgt <4 x i32> %i.at, splat (i32 255)
  %i.av = trunc <4 x i64> %i.as to <4 x i8>
  %i.aw = select <4 x i1> %i.au, <4 x i8> splat (i8 -1), <4 x i8> %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.an
  store <4 x i8> %i.aw, ptr %i.ax, align 1, !tbaa !17, !alias.scope !32, !noalias !34
  %index.next190 = add nuw i64 %index188, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next190, %n.vec184
  br i1 %i.ay, label %middle.block191, label %vector.body187, !llvm.loop !35

middle.block191:                                  ; preds = %vector.body187
  %cmp.n192 = icmp eq i64 %i.aa, %n.vec184
  br i1 %cmp.n192, label %.loopexit, label %.lr.ph125.preheader194

.lr.ph125.preheader194:                           ; preds = %vector.memcheck167, %.lr.ph125.preheader, %middle.block191
  %indvars.iv143.ph = phi i64 [ %i.w, %vector.memcheck167 ], [ %i.w, %.lr.ph125.preheader ], [ %i.ak, %middle.block191 ]
  br label %.lr.ph125

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %.lr.ph122
  %indvars.iv138 = phi i64 [ 0, %.lr.ph122.preheader ], [ %indvars.iv.next139, %.lr.ph122 ] ; 3 uses
  %indvars.iv136 = phi i64 [ 8, %.lr.ph122.preheader ], [ %indvars.iv.next137, %.lr.ph122 ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv138 ; 2 uses
  %.val76 = load <2 x i64>, ptr %i.az, align 1, !tbaa !17 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %.val77 = load <2 x i64>, ptr %i.ba, align 1, !tbaa !17 ; 2 uses
  %i.bb = lshr <2 x i64> %.val76, splat (i64 32)
  %i.bc = lshr <2 x i64> %.val77, splat (i64 32)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv138
  %i.be = and <2 x i64> %.val76, splat (i64 4294967295)
  %i.bf = mul nuw <2 x i64> %i.be, %i.p
  %i.bg = and <2 x i64> %.val77, splat (i64 4294967295)
  %i.bh = mul nuw <2 x i64> %i.bg, %i.p
  %i.bi = mul nuw <2 x i64> %i.bb, %i.p
  %i.bj = mul nuw <2 x i64> %i.bc, %i.p
  %i.bk = add nuw <2 x i64> %i.bf, splat (i64 2147483648)
  %i.bl = add nuw <2 x i64> %i.bh, splat (i64 2147483648)
  %i.bm = add nuw <2 x i64> %i.bi, splat (i64 2147483648)
  %i.bn = add nuw <2 x i64> %i.bj, splat (i64 2147483648)
  %i.bo = lshr <2 x i64> %i.bk, splat (i64 32)
  %i.bp = lshr <2 x i64> %i.bl, splat (i64 32)
  %i.bq = and <2 x i64> %i.bm, splat (i64 -4294967296)
  %i.br = and <2 x i64> %i.bn, splat (i64 -4294967296)
  %i.bs = or disjoint <2 x i64> %i.bo, %i.bq
  %i.bt = or disjoint <2 x i64> %i.bp, %i.br
  %i.bu = bitcast <2 x i64> %i.bs to <4 x i32>
  %i.bv = bitcast <2 x i64> %i.bt to <4 x i32>
  %i.bw = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bu, <4 x i32> %i.bv)
  %i.bx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bw, <8 x i16> poison)
  %i.by = bitcast <16 x i8> %i.bx to <2 x i64>
  %i.bz = extractelement <2 x i64> %i.by, i64 0
  store i64 %i.bz, ptr %i.bd, align 1, !tbaa !17
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 8 ; 2 uses
  %.not72 = icmp samesign ugt i64 %indvars.iv.next137, %i.t
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 8
  br i1 %.not72, label %.preheader.loopexit, label %.lr.ph122, !llvm.loop !38

.lr.ph125:                                        ; preds = %.lr.ph125.preheader194, %.lr.ph125
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %.lr.ph125 ], [ %indvars.iv143.ph, %.lr.ph125.preheader194 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv143
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = zext i32 %i.cb to i64
  %i.cd = load i32, ptr %i.l, align 8, !tbaa !25
  %i.ce = zext i32 %i.cd to i64
  %i.cf = mul nuw i64 %i.ce, %i.cc
  %i.cg = add nuw i64 %i.cf, 2147483648
  %i.ch = lshr i64 %i.cg, 32                      ; 2 uses
  %i.ci = trunc nuw i64 %i.ch to i32
  %i.cj = icmp sgt i32 %i.ci, 255
  %i.ck = trunc i64 %i.ch to i8
  %i.cl = select i1 %i.cj, i8 -1, i8 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv143
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !17
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.cn = trunc nuw i64 %indvars.iv.next144 to i32
  %i.co = icmp sgt i32 %i.i, %i.cn
  br i1 %i.co, label %.lr.ph125, label %.loopexit, !llvm.loop !39

bb.b:                                             ; preds = %bb.a
  %i.cp = sub nsw i32 0, %i.r
  %i.cq = sext i32 %i.cp to i64
  %i.cr = shl nsw i64 %i.cq, 32
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !40
  %i.cu = sext i32 %i.ct to i64
  %i.cv = udiv i64 %i.cr, %i.cu                   ; 3 uses
  %i.cw = trunc i64 %i.cv to i32                  ; 3 uses
  %i.cx = and i64 %i.cv, 4294967295               ; 2 uses
  %i.cy = sub i32 0, %i.cw                        ; 2 uses
  %i.cz = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>, i32 %i.cy, i64 0
  %i.da = insertelement <4 x i32> %i.cz, i32 %i.cy, i64 2
  %i.db = bitcast <4 x i32> %i.da to <2 x i64>    ; 4 uses
  %i.dc = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>, i32 %i.cw, i64 0
  %i.dd = insertelement <4 x i32> %i.dc, i32 %i.cw, i64 2
  %i.de = bitcast <4 x i32> %i.dd to <2 x i64>    ; 4 uses
  %.not116 = icmp slt i32 %i.i, 8
  br i1 %.not116, label %.preheader114, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.df = zext nneg i32 %i.i to i64
  br label %.lr.ph

.preheader114.loopexit:                           ; preds = %.lr.ph
  %2 = add nuw i32 %i.i, 2147483640
  %i.dg = and i32 %2, 2147483640
  %narrow = add nuw i32 %i.dg, 8
  br label %.preheader114

.preheader114:                                    ; preds = %.preheader114.loopexit, %bb.b
  %.2.lcssa = phi i32 [ 0, %bb.b ], [ %narrow, %.preheader114.loopexit ] ; 4 uses
  %i.dh = icmp slt i32 %.2.lcssa, %i.i
  br i1 %i.dh, label %.lr.ph119, label %.loopexit

.lr.ph119:                                        ; preds = %.preheader114
  %i.di = sub i64 0, %i.cv
  %i.dj = and i64 %i.di, 4294967295               ; 2 uses
  %i.dk = zext i32 %.2.lcssa to i64               ; 8 uses
  %i.dl = xor i32 %.2.lcssa, -1
  %i.dm = add i32 %i.i, %i.dl                     ; 2 uses
  %i.dn = zext i32 %i.dm to i64
  %i.do = add nuw nsw i64 %i.dn, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.dm, 79
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph119
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.dk ; 3 uses
  %i.dp = xor i32 %.2.lcssa, -1
  %i.dq = add i32 %i.i, %i.dp
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %i.ds = getelementptr i8, ptr %i.b, i64 %i.dk
  %i.dt = getelementptr i8, ptr %i.ds, i64 %i.dr
  %scevgep149 = getelementptr i8, ptr %i.dt, i64 1 ; 3 uses
  %i.du = shl nuw nsw i64 %i.dk, 2                ; 2 uses
  %scevgep150 = getelementptr i8, ptr %i.k, i64 %i.du
  %i.dv = add nuw nsw i64 %i.dk, %i.dr
  %i.dw = shl nuw nsw i64 %i.dv, 2
  %i.dx = add nuw nsw i64 %i.dw, 4                ; 2 uses
  %scevgep151 = getelementptr i8, ptr %i.k, i64 %i.dx
  %scevgep152 = getelementptr i8, ptr %i.d, i64 %i.du
  %scevgep153 = getelementptr i8, ptr %i.d, i64 %i.dx
  %scevgep154 = getelementptr i8, ptr %0, i64 20
  %bound0 = icmp ult ptr %scevgep, %scevgep151
  %bound1 = icmp ult ptr %scevgep150, %scevgep149
  %found.conflict = and i1 %bound0, %bound1
  %bound0155 = icmp ult ptr %scevgep, %scevgep153
  %bound1156 = icmp ult ptr %scevgep152, %scevgep149
  %found.conflict157 = and i1 %bound0155, %bound1156
  %conflict.rdx = or i1 %found.conflict, %found.conflict157
  %bound0158 = icmp ult ptr %scevgep, %scevgep154
  %bound1159 = icmp ult ptr %i.l, %scevgep149
  %found.conflict160 = and i1 %bound0158, %bound1159
  %conflict.rdx161 = or i1 %conflict.rdx, %found.conflict160
  br i1 %conflict.rdx161, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.do, 8589934588              ; 3 uses
  %i.dy = add nuw nsw i64 %n.vec, %i.dk
  %i.dz = load i32, ptr %i.l, align 8, !tbaa !25, !alias.scope !41
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dz, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ea = zext <4 x i32> %broadcast.splat to <4 x i64>
  %broadcast.splatinsert162 = insertelement <4 x i64> poison, i64 %i.dj, i64 0
  %broadcast.splat163 = shufflevector <4 x i64> %broadcast.splatinsert162, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert164 = insertelement <4 x i64> poison, i64 %i.cx, i64 0
  %broadcast.splat165 = shufflevector <4 x i64> %broadcast.splatinsert164, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eb = add nuw i64 %index, %i.dk               ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.eb
  %wide.load = load <4 x i32>, ptr %i.ec, align 4, !tbaa !3, !alias.scope !44
  %i.ed = zext <4 x i32> %wide.load to <4 x i64>
  %i.ee = mul nuw <4 x i64> %broadcast.splat163, %i.ed
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.eb
  %wide.load166 = load <4 x i32>, ptr %i.ef, align 4, !tbaa !3, !alias.scope !46
  %i.eg = zext <4 x i32> %wide.load166 to <4 x i64>
  %i.eh = mul nuw <4 x i64> %broadcast.splat165, %i.eg
  %i.ei = add nuw <4 x i64> %i.ee, splat (i64 2147483648)
  %i.ej = add <4 x i64> %i.ei, %i.eh
  %i.ek = lshr <4 x i64> %i.ej, splat (i64 32)
  %i.el = mul nuw <4 x i64> %i.ek, %i.ea
  %i.em = add nuw <4 x i64> %i.el, splat (i64 2147483648)
  %i.en = lshr <4 x i64> %i.em, splat (i64 32)    ; 2 uses
  %i.eo = trunc nuw <4 x i64> %i.en to <4 x i32>
  %i.ep = icmp sgt <4 x i32> %i.eo, splat (i32 255)
  %i.eq = trunc <4 x i64> %i.en to <4 x i8>
  %i.er = select <4 x i1> %i.ep, <4 x i8> splat (i8 -1), <4 x i8> %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.eb
  store <4 x i8> %i.er, ptr %i.es, align 1, !tbaa !17, !alias.scope !48, !noalias !50
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.do, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph119, %middle.block
  %indvars.iv133.ph = phi i64 [ %i.dk, %vector.memcheck ], [ %i.dk, %.lr.ph119 ], [ %i.dy, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv128 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next129, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv128 ; 2 uses
  %.val74 = load <2 x i64>, ptr %i.eu, align 1, !tbaa !17 ; 2 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 16
  %.val75 = load <2 x i64>, ptr %i.ev, align 1, !tbaa !17 ; 2 uses
  %i.ew = lshr <2 x i64> %.val74, splat (i64 32)
  %i.ex = lshr <2 x i64> %.val75, splat (i64 32)
  %i.ey = and <2 x i64> %.val74, splat (i64 4294967295)
  %i.ez = mul nuw <2 x i64> %i.ey, %i.db
  %i.fa = and <2 x i64> %.val75, splat (i64 4294967295)
  %i.fb = mul nuw <2 x i64> %i.fa, %i.db
  %i.fc = mul nuw <2 x i64> %i.ew, %i.db
  %i.fd = mul nuw <2 x i64> %i.ex, %i.db
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv128 ; 2 uses
  %.val = load <2 x i64>, ptr %i.fe, align 1, !tbaa !17 ; 2 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 16
  %.val73 = load <2 x i64>, ptr %i.ff, align 1, !tbaa !17 ; 2 uses
  %i.fg = lshr <2 x i64> %.val, splat (i64 32)
  %i.fh = lshr <2 x i64> %.val73, splat (i64 32)
  %i.fi = and <2 x i64> %.val, splat (i64 4294967295)
  %i.fj = mul nuw <2 x i64> %i.fi, %i.de
  %i.fk = and <2 x i64> %.val73, splat (i64 4294967295)
  %i.fl = mul nuw <2 x i64> %i.fk, %i.de
  %i.fm = mul nuw <2 x i64> %i.fg, %i.de
  %i.fn = mul nuw <2 x i64> %i.fh, %i.de
  %i.fo = add <2 x i64> %i.ez, splat (i64 2147483648)
  %i.fp = add <2 x i64> %i.fo, %i.fj
  %i.fq = add <2 x i64> %i.fb, splat (i64 2147483648)
  %i.fr = add <2 x i64> %i.fq, %i.fl
  %i.fs = add <2 x i64> %i.fc, splat (i64 2147483648)
  %i.ft = add <2 x i64> %i.fs, %i.fm
  %i.fu = add <2 x i64> %i.fd, splat (i64 2147483648)
  %i.fv = add <2 x i64> %i.fu, %i.fn
  %i.fw = lshr <2 x i64> %i.fp, splat (i64 32)
  %i.fx = lshr <2 x i64> %i.fr, splat (i64 32)
  %i.fy = lshr <2 x i64> %i.ft, splat (i64 32)
  %i.fz = lshr <2 x i64> %i.fv, splat (i64 32)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv128
  %i.gb = mul nuw <2 x i64> %i.fw, %i.p
  %i.gc = mul nuw <2 x i64> %i.fx, %i.p
  %i.gd = mul nuw <2 x i64> %i.fy, %i.p
  %i.ge = mul nuw <2 x i64> %i.fz, %i.p
  %i.gf = add nuw <2 x i64> %i.gb, splat (i64 2147483648)
  %i.gg = add nuw <2 x i64> %i.gc, splat (i64 2147483648)
  %i.gh = add nuw <2 x i64> %i.gd, splat (i64 2147483648)
  %i.gi = add nuw <2 x i64> %i.ge, splat (i64 2147483648)
  %i.gj = lshr <2 x i64> %i.gf, splat (i64 32)
  %i.gk = lshr <2 x i64> %i.gg, splat (i64 32)
  %i.gl = and <2 x i64> %i.gh, splat (i64 -4294967296)
  %i.gm = and <2 x i64> %i.gi, splat (i64 -4294967296)
  %i.gn = or disjoint <2 x i64> %i.gj, %i.gl
  %i.go = or disjoint <2 x i64> %i.gk, %i.gm
  %i.gp = bitcast <2 x i64> %i.gn to <4 x i32>
  %i.gq = bitcast <2 x i64> %i.go to <4 x i32>
  %i.gr = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.gp, <4 x i32> %i.gq)
  %i.gs = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gr, <8 x i16> poison)
  %i.gt = bitcast <16 x i8> %i.gs to <2 x i64>
  %i.gu = extractelement <2 x i64> %i.gt, i64 0
  store i64 %i.gu, ptr %i.ga, align 1, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.df
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 8
  br i1 %.not, label %.preheader114.loopexit, label %.lr.ph, !llvm.loop !52

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %scalar.ph ], [ %indvars.iv133.ph, %scalar.ph.preheader ] ; 4 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv133
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !3
  %i.gx = zext i32 %i.gw to i64
  %i.gy = mul nuw i64 %i.dj, %i.gx
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv133
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !3
  %i.hb = zext i32 %i.ha to i64
  %i.hc = mul nuw i64 %i.cx, %i.hb
  %i.hd = add nuw i64 %i.gy, 2147483648
  %i.he = add i64 %i.hd, %i.hc
  %i.hf = lshr i64 %i.he, 32
  %i.hg = load i32, ptr %i.l, align 8, !tbaa !25
  %i.hh = zext i32 %i.hg to i64
  %i.hi = mul nuw i64 %i.hf, %i.hh
  %i.hj = add nuw i64 %i.hi, 2147483648
  %i.hk = lshr i64 %i.hj, 32                      ; 2 uses
  %i.hl = trunc nuw i64 %i.hk to i32
  %i.hm = icmp sgt i32 %i.hl, 255
  %i.hn = trunc i64 %i.hk to i8
  %i.ho = select i1 %i.hm, i8 -1, i8 %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv133
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !17
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %i.hq = trunc nuw i64 %indvars.iv.next134 to i32
  %i.hr = icmp sgt i32 %i.i, %i.hq
  br i1 %i.hr, label %scalar.ph, label %.loopexit, !llvm.loop !53

.loopexit:                                        ; preds = %scalar.ph, %.lr.ph125, %middle.block, %middle.block191, %.preheader114, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @RescalerExportRowShrink_SSE2(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !14
  %i.i = mul i32 %i.h, %i.f                       ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9    ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !26
  %i.p = mul i32 %i.o, %i.m                       ; 2 uses
  %i.q = sub i32 0, %i.p                          ; 3 uses
  %.not = icmp eq i32 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !54   ; 3 uses
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
  %1 = add nuw i32 %i.i, 2147483640
  %i.aa = and i32 %1, 2147483640
  %narrow = add nuw i32 %i.aa, 8
  br label %.preheader123

.preheader123:                                    ; preds = %.preheader123.loopexit, %bb.b
  %.0.lcssa = phi i32 [ 0, %bb.b ], [ %narrow, %.preheader123.loopexit ] ; 4 uses
  %i.ab = icmp slt i32 %.0.lcssa, %i.i
  br i1 %i.ab, label %.lr.ph128, label %.loopexit

.lr.ph128:                                        ; preds = %.preheader123
  %i.ac = zext i32 %i.q to i64                    ; 2 uses
  %i.ad = zext i32 %.0.lcssa to i64               ; 8 uses
  %i.ae = xor i32 %.0.lcssa, -1
  %i.af = add i32 %i.i, %i.ae                     ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.af, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph128
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.ad ; 3 uses
  %i.ai = xor i32 %.0.lcssa, -1
  %i.aj = add i32 %i.i, %i.ai
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = getelementptr i8, ptr %i.b, i64 %i.ad
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ak
  %scevgep157 = getelementptr i8, ptr %i.am, i64 1 ; 3 uses
  %i.an = shl nuw nsw i64 %i.ad, 2                ; 2 uses
  %scevgep158 = getelementptr i8, ptr %i.d, i64 %i.an ; 3 uses
  %i.ao = add nuw nsw i64 %i.ad, %i.ak
  %i.ap = shl nuw nsw i64 %i.ao, 2
  %i.aq = add nuw nsw i64 %i.ap, 4                ; 2 uses
  %scevgep159 = getelementptr i8, ptr %i.d, i64 %i.aq ; 3 uses
  %scevgep160 = getelementptr i8, ptr %i.k, i64 %i.an ; 2 uses
  %scevgep161 = getelementptr i8, ptr %i.k, i64 %i.aq ; 2 uses
  %scevgep162 = getelementptr i8, ptr %0, i64 24  ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep159
  %bound1 = icmp ult ptr %scevgep158, %scevgep157
  %found.conflict = and i1 %bound0, %bound1
  %bound0163 = icmp ult ptr %scevgep, %scevgep161
  %bound1164 = icmp ult ptr %scevgep160, %scevgep157
  %found.conflict165 = and i1 %bound0163, %bound1164
  %conflict.rdx = or i1 %found.conflict, %found.conflict165
  %bound0166 = icmp ult ptr %scevgep, %scevgep162
  %bound1167 = icmp ult ptr %i.r, %scevgep157
  %found.conflict168 = and i1 %bound0166, %bound1167
  %conflict.rdx169 = or i1 %conflict.rdx, %found.conflict168
  %bound0170 = icmp ult ptr %scevgep158, %scevgep161
  %bound1171 = icmp ult ptr %scevgep160, %scevgep159
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx173 = or i1 %conflict.rdx169, %found.conflict172
  %bound0174 = icmp ult ptr %scevgep158, %scevgep162
  %bound1175 = icmp ult ptr %i.r, %scevgep159
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx177 = or i1 %conflict.rdx173, %found.conflict176
  br i1 %conflict.rdx177, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 8589934588              ; 3 uses
  %i.ar = add nuw nsw i64 %n.vec, %i.ad
  %i.as = load i32, ptr %i.r, align 4, !tbaa !54, !alias.scope !55
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.as, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.at = zext <4 x i32> %broadcast.splat to <4 x i64>
  %broadcast.splatinsert178 = insertelement <4 x i64> poison, i64 %i.ac, i64 0
  %broadcast.splat179 = shufflevector <4 x i64> %broadcast.splatinsert178, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = add nuw i64 %index, %i.ad               ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.au
  %wide.load = load <4 x i32>, ptr %i.av, align 4, !tbaa !3, !alias.scope !58
  %i.aw = zext <4 x i32> %wide.load to <4 x i64>
  %i.ax = mul nuw <4 x i64> %broadcast.splat179, %i.aw
  %i.ay = lshr <4 x i64> %i.ax, splat (i64 32)
  %i.az = trunc nuw <4 x i64> %i.ay to <4 x i32>  ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.au ; 2 uses
  %wide.load180 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !3, !alias.scope !60, !noalias !62
  %i.bb = sub <4 x i32> %wide.load180, %i.az
  %i.bc = zext <4 x i32> %i.bb to <4 x i64>
  %i.bd = mul nuw <4 x i64> %i.bc, %i.at
  %i.be = add nuw <4 x i64> %i.bd, splat (i64 2147483648)
  %i.bf = lshr <4 x i64> %i.be, splat (i64 32)    ; 2 uses
  %i.bg = trunc nuw <4 x i64> %i.bf to <4 x i32>
  %i.bh = icmp sgt <4 x i32> %i.bg, splat (i32 255)
  %i.bi = trunc <4 x i64> %i.bf to <4 x i8>
  %i.bj = select <4 x i1> %i.bh, <4 x i8> splat (i8 -1), <4 x i8> %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.au
  store <4 x i8> %i.bj, ptr %i.bk, align 1, !tbaa !17, !alias.scope !63, !noalias !65
  store <4 x i32> %i.az, ptr %i.ba, align 4, !tbaa !3, !alias.scope !60, !noalias !62
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph128, %middle.block
  %indvars.iv142.ph = phi i64 [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph128 ], [ %i.ar, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv137 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next138, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv137 ; 3 uses
  %.val90 = load <2 x i64>, ptr %i.bm, align 1, !tbaa !17 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 16     ; 2 uses
  %.val91 = load <2 x i64>, ptr %i.bn, align 1, !tbaa !17 ; 2 uses
  %i.bo = lshr <2 x i64> %.val90, splat (i64 32)
  %i.bp = lshr <2 x i64> %.val91, splat (i64 32)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv137 ; 2 uses
  %.val88 = load <2 x i64>, ptr %i.bq, align 1, !tbaa !17 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  %.val89 = load <2 x i64>, ptr %i.br, align 1, !tbaa !17 ; 2 uses
  %i.bs = lshr <2 x i64> %.val88, splat (i64 32)
  %i.bt = lshr <2 x i64> %.val89, splat (i64 32)
  %i.bu = and <2 x i64> %.val88, splat (i64 4294967295)
  %i.bv = mul nuw <2 x i64> %i.bu, %i.y
  %i.bw = and <2 x i64> %.val89, splat (i64 4294967295)
  %i.bx = mul nuw <2 x i64> %i.bw, %i.y
  %i.by = mul nuw <2 x i64> %i.bs, %i.y           ; 2 uses
  %i.bz = mul nuw <2 x i64> %i.bt, %i.y           ; 2 uses
  %i.ca = lshr <2 x i64> %i.bv, splat (i64 32)    ; 2 uses
  %i.cb = lshr <2 x i64> %i.bx, splat (i64 32)    ; 2 uses
  %i.cc = lshr <2 x i64> %i.by, splat (i64 32)
  %i.cd = lshr <2 x i64> %i.bz, splat (i64 32)
  %i.ce = sub <2 x i64> %.val90, %i.ca
  %i.cf = sub <2 x i64> %.val91, %i.cb
  %i.cg = sub nsw <2 x i64> %i.bo, %i.cc
  %i.ch = sub nsw <2 x i64> %i.bp, %i.cd
  %i.ci = and <2 x i64> %i.by, splat (i64 -4294967296)
  %i.cj = and <2 x i64> %i.bz, splat (i64 -4294967296)
  %i.ck = or disjoint <2 x i64> %i.ca, %i.ci
  %i.cl = or disjoint <2 x i64> %i.cb, %i.cj
  store <2 x i64> %i.ck, ptr %i.bm, align 1, !tbaa !17
  store <2 x i64> %i.cl, ptr %i.bn, align 1, !tbaa !17
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv137
  %i.cn = and <2 x i64> %i.ce, splat (i64 4294967295)
  %i.co = mul nuw <2 x i64> %i.cn, %i.v
  %i.cp = and <2 x i64> %i.cf, splat (i64 4294967295)
  %i.cq = mul nuw <2 x i64> %i.cp, %i.v
  %i.cr = and <2 x i64> %i.cg, splat (i64 4294967295)
  %i.cs = mul nuw <2 x i64> %i.cr, %i.v
  %i.ct = and <2 x i64> %i.ch, splat (i64 4294967295)
  %i.cu = mul nuw <2 x i64> %i.ct, %i.v
  %i.cv = add nuw <2 x i64> %i.co, splat (i64 2147483648)
  %i.cw = add nuw <2 x i64> %i.cq, splat (i64 2147483648)
  %i.cx = add nuw <2 x i64> %i.cs, splat (i64 2147483648)
  %i.cy = add nuw <2 x i64> %i.cu, splat (i64 2147483648)
  %i.cz = lshr <2 x i64> %i.cv, splat (i64 32)
  %i.da = lshr <2 x i64> %i.cw, splat (i64 32)
  %i.db = and <2 x i64> %i.cx, splat (i64 -4294967296)
  %i.dc = and <2 x i64> %i.cy, splat (i64 -4294967296)
  %i.dd = or disjoint <2 x i64> %i.cz, %i.db
  %i.de = or disjoint <2 x i64> %i.da, %i.dc
  %i.df = bitcast <2 x i64> %i.dd to <4 x i32>
  %i.dg = bitcast <2 x i64> %i.de to <4 x i32>
  %i.dh = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.df, <4 x i32> %i.dg)
  %i.di = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dh, <8 x i16> poison)
  %i.dj = bitcast <16 x i8> %i.di to <2 x i64>
  %i.dk = extractelement <2 x i64> %i.dj, i64 0
  store i64 %i.dk, ptr %i.cm, align 1, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not86 = icmp samesign ugt i64 %indvars.iv.next, %i.z
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 8
  br i1 %.not86, label %.preheader123.loopexit, label %.lr.ph, !llvm.loop !67

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %scalar.ph ], [ %indvars.iv142.ph, %scalar.ph.preheader ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv142
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3
  %i.dn = zext i32 %i.dm to i64
  %i.do = mul nuw i64 %i.dn, %i.ac
  %i.dp = lshr i64 %i.do, 32
  %i.dq = trunc nuw i64 %i.dp to i32              ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv142 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3
  %i.dt = sub i32 %i.ds, %i.dq
  %i.du = zext i32 %i.dt to i64
  %i.dv = load i32, ptr %i.r, align 4, !tbaa !54
  %i.dw = zext i32 %i.dv to i64
  %i.dx = mul nuw i64 %i.du, %i.dw
  %i.dy = add nuw i64 %i.dx, 2147483648
  %i.dz = lshr i64 %i.dy, 32                      ; 2 uses
  %i.ea = trunc nuw i64 %i.dz to i32
  %i.eb = icmp sgt i32 %i.ea, 255
  %i.ec = trunc i64 %i.dz to i8
  %i.ed = select i1 %i.eb, i8 -1, i8 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv142
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !17
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !3
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.ef = trunc nuw i64 %indvars.iv.next143 to i32
  %i.eg = icmp sgt i32 %i.i, %i.ef
  br i1 %i.eg, label %scalar.ph, label %.loopexit, !llvm.loop !68

bb.c:                                             ; preds = %bb.a
  %.not85129 = icmp slt i32 %i.i, 8
  br i1 %.not85129, label %.preheader, label %.lr.ph131.preheader

.lr.ph131.preheader:                              ; preds = %bb.c
  %i.eh = zext nneg i32 %i.i to i64
  br label %.lr.ph131

.preheader.loopexit:                              ; preds = %.lr.ph131
  %2 = add nuw i32 %i.i, 2147483640
  %i.ei = and i32 %2, 2147483640
  %narrow155 = add nuw i32 %i.ei, 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.c
  %.2.lcssa = phi i32 [ 0, %bb.c ], [ %narrow155, %.preheader.loopexit ] ; 4 uses
  %i.ej = icmp slt i32 %.2.lcssa, %i.i
  br i1 %i.ej, label %.lr.ph134, label %.loopexit

.lr.ph134:                                        ; preds = %.preheader
  %i.ek = zext i32 %i.s to i64                    ; 2 uses
  %i.el = zext i32 %.2.lcssa to i64               ; 8 uses
  %i.em = xor i32 %.2.lcssa, -1
  %i.en = add i32 %i.i, %i.em                     ; 2 uses
  %i.eo = zext i32 %i.en to i64
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %min.iters.check190 = icmp ult i32 %i.en, 11
  br i1 %min.iters.check190, label %scalar.ph189.preheader, label %vector.memcheck181

vector.memcheck181:                               ; preds = %.lr.ph134
  %scevgep182 = getelementptr i8, ptr %i.b, i64 %i.el
  %i.eq = xor i32 %.2.lcssa, -1
  %i.er = add i32 %i.i, %i.eq
  %i.es = zext i32 %i.er to i64                   ; 2 uses
  %i.et = getelementptr i8, ptr %i.b, i64 %i.el
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.es
  %scevgep183 = getelementptr i8, ptr %i.eu, i64 1
  %i.ev = shl nuw nsw i64 %i.el, 2
  %scevgep184 = getelementptr i8, ptr %i.d, i64 %i.ev
  %i.ew = add nuw nsw i64 %i.el, %i.es
  %i.ex = shl nuw nsw i64 %i.ew, 2
  %i.ey = getelementptr i8, ptr %i.d, i64 %i.ex
  %scevgep185 = getelementptr i8, ptr %i.ey, i64 4
  %bound0186 = icmp ult ptr %scevgep182, %scevgep185
  %bound1187 = icmp ult ptr %scevgep184, %scevgep183
  %found.conflict188 = and i1 %bound0186, %bound1187
  br i1 %found.conflict188, label %scalar.ph189.preheader, label %vector.ph191

vector.ph191:                                     ; preds = %vector.memcheck181
  %n.vec193 = and i64 %i.ep, 8589934588           ; 3 uses
  %i.ez = add nuw nsw i64 %n.vec193, %i.el
  %broadcast.splatinsert194 = insertelement <4 x i64> poison, i64 %i.ek, i64 0
  %broadcast.splat195 = shufflevector <4 x i64> %broadcast.splatinsert194, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph191
  %index197 = phi i64 [ 0, %vector.ph191 ], [ %index.next199, %vector.body196 ] ; 2 uses
  %i.fa = add nuw i64 %index197, %i.el            ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.fa ; 2 uses
  %wide.load198 = load <4 x i32>, ptr %i.fb, align 4, !tbaa !3, !alias.scope !69
  %i.fc = zext <4 x i32> %wide.load198 to <4 x i64>
  %i.fd = mul nuw <4 x i64> %broadcast.splat195, %i.fc
  %i.fe = add nuw <4 x i64> %i.fd, splat (i64 2147483648)
  %i.ff = lshr <4 x i64> %i.fe, splat (i64 32)    ; 2 uses
  %i.fg = trunc nuw <4 x i64> %i.ff to <4 x i32>
  %i.fh = icmp sgt <4 x i32> %i.fg, splat (i32 255)
  %i.fi = trunc <4 x i64> %i.ff to <4 x i8>
  %i.fj = select <4 x i1> %i.fh, <4 x i8> splat (i8 -1), <4 x i8> %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fa
  store <4 x i8> %i.fj, ptr %i.fk, align 1, !tbaa !17, !alias.scope !72, !noalias !69
  store <4 x i32> zeroinitializer, ptr %i.fb, align 4, !tbaa !3, !alias.scope !69
  %index.next199 = add nuw i64 %index197, 4       ; 2 uses
  %i.fl = icmp eq i64 %index.next199, %n.vec193
  br i1 %i.fl, label %middle.block200, label %vector.body196, !llvm.loop !74

middle.block200:                                  ; preds = %vector.body196
  %cmp.n201 = icmp eq i64 %i.ep, %n.vec193
  br i1 %cmp.n201, label %.loopexit, label %scalar.ph189.preheader

scalar.ph189.preheader:                           ; preds = %vector.memcheck181, %.lr.ph134, %middle.block200
  %indvars.iv152.ph = phi i64 [ %i.el, %vector.memcheck181 ], [ %i.el, %.lr.ph134 ], [ %i.ez, %middle.block200 ]
  br label %scalar.ph189

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %.lr.ph131
  %indvars.iv147 = phi i64 [ 0, %.lr.ph131.preheader ], [ %indvars.iv.next148, %.lr.ph131 ] ; 3 uses
  %indvars.iv145 = phi i64 [ 8, %.lr.ph131.preheader ], [ %indvars.iv.next146, %.lr.ph131 ]
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv147 ; 3 uses
  %.val = load <2 x i64>, ptr %i.fm, align 1, !tbaa !17 ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 16
  %.val87 = load <2 x i64>, ptr %i.fn, align 1, !tbaa !17 ; 2 uses
  %i.fo = lshr <2 x i64> %.val, splat (i64 32)
  %i.fp = lshr <2 x i64> %.val87, splat (i64 32)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv147
  %i.fr = and <2 x i64> %.val, splat (i64 4294967295)
  %i.fs = mul nuw <2 x i64> %i.fr, %i.v
  %i.ft = and <2 x i64> %.val87, splat (i64 4294967295)
  %i.fu = mul nuw <2 x i64> %i.ft, %i.v
  %i.fv = mul nuw <2 x i64> %i.fo, %i.v
  %i.fw = mul nuw <2 x i64> %i.fp, %i.v
  %i.fx = add nuw <2 x i64> %i.fs, splat (i64 2147483648)
  %i.fy = add nuw <2 x i64> %i.fu, splat (i64 2147483648)
  %i.fz = add nuw <2 x i64> %i.fv, splat (i64 2147483648)
  %i.ga = add nuw <2 x i64> %i.fw, splat (i64 2147483648)
  %i.gb = lshr <2 x i64> %i.fx, splat (i64 32)
  %i.gc = lshr <2 x i64> %i.fy, splat (i64 32)
  %i.gd = and <2 x i64> %i.fz, splat (i64 -4294967296)
  %i.ge = and <2 x i64> %i.ga, splat (i64 -4294967296)
  %i.gf = or disjoint <2 x i64> %i.gb, %i.gd
  %i.gg = or disjoint <2 x i64> %i.gc, %i.ge
  %i.gh = bitcast <2 x i64> %i.gf to <4 x i32>
  %i.gi = bitcast <2 x i64> %i.gg to <4 x i32>
  %i.gj = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.gh, <4 x i32> %i.gi)
  %i.gk = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gj, <8 x i16> poison)
  %i.gl = bitcast <16 x i8> %i.gk to <2 x i64>
  %i.gm = extractelement <2 x i64> %i.gl, i64 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fm, i8 0, i64 32, i1 false)
  store i64 %i.gm, ptr %i.fq, align 1, !tbaa !17
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 8 ; 2 uses
  %.not85 = icmp samesign ugt i64 %indvars.iv.next146, %i.eh
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 8
  br i1 %.not85, label %.preheader.loopexit, label %.lr.ph131, !llvm.loop !75

scalar.ph189:                                     ; preds = %scalar.ph189.preheader, %scalar.ph189
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %scalar.ph189 ], [ %indvars.iv152.ph, %scalar.ph189.preheader ] ; 3 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv152 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !3
  %i.gp = zext i32 %i.go to i64
  %i.gq = mul nuw i64 %i.gp, %i.ek
  %i.gr = add nuw i64 %i.gq, 2147483648
  %i.gs = lshr i64 %i.gr, 32                      ; 2 uses
  %i.gt = trunc nuw i64 %i.gs to i32
  %i.gu = icmp sgt i32 %i.gt, 255
  %i.gv = trunc i64 %i.gs to i8
  %i.gw = select i1 %i.gu, i8 -1, i8 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv152
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !17
  store i32 0, ptr %i.gn, align 4, !tbaa !3
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %i.gy = trunc nuw i64 %indvars.iv.next153 to i32
  %i.gz = icmp sgt i32 %i.i, %i.gy
  br i1 %i.gz, label %scalar.ph189, label %.loopexit, !llvm.loop !76

.loopexit:                                        ; preds = %scalar.ph, %scalar.ph189, %middle.block, %middle.block200, %.preheader123, %.preheader
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
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !12, i64 96}
!10 = !{!"WebPRescaler", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !11, i64 72, !4, i64 80, !12, i64 88, !12, i64 96}
!11 = !{!"p1 omnipotent char", !8, i64 0}
!12 = !{!"p1 int", !8, i64 0}
!13 = !{!10, !4, i64 52}
!14 = !{!10, !4, i64 8}
!15 = !{!10, !4, i64 36}
!16 = !{!10, !4, i64 44}
!17 = !{!5, !5, i64 0}
!18 = !{!10, !4, i64 40}
!19 = !{!10, !4, i64 12}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = !{!10, !11, i64 72}
!24 = !{!10, !12, i64 88}
!25 = !{!10, !4, i64 16}
!26 = !{!10, !4, i64 24}
!27 = !{!28}
!28 = distinct !{!28, !29}
!29 = distinct !{!29, !"LVerDomain"}
!30 = !{!31}
!31 = distinct !{!31, !29}
!32 = !{!33}
!33 = distinct !{!33, !29}
!34 = !{!31, !28}
!35 = distinct !{!35, !21, !36, !37}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = distinct !{!38, !21}
!39 = distinct !{!39, !21, !36}
!40 = !{!10, !4, i64 32}
!41 = !{!42}
!42 = distinct !{!42, !43}
!43 = distinct !{!43, !"LVerDomain"}
!44 = !{!45}
end_hunk_0
