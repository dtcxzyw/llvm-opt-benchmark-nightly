Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/rescaler_sse2?download=true
inline.NumInlined: 18
inline.NumDeleted: 8
begin_hunk_0_@RescalerImportRowExpand_SSE2:bb.a
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
  tail call void @WebPRescalerImportRowShrink_C(ptr noundef nonnull %0, ptr noundef %1) #7
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
  %i.aq = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %.063.lcssa, <8 x i16> %i.ao)
  %i.ar = shufflevector <8 x i16> %i.ap, <8 x i16> %i.aq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 3 uses
  %i.as = bitcast <8 x i16> %i.ar to <2 x i64>
  %i.at = mul <8 x i16> %.lcssa, %i.e
  %i.au = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %.lcssa, <8 x i16> %i.e)
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
  %i.i = mul i32 %i.h, %i.f                       ; 12 uses
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
  %.0.lcssa = phi i32 [ 0, %.preheader113 ], [ %narrow147, %.preheader.loopexit ] ; 3 uses
  %i.w = icmp slt i32 %.0.lcssa, %i.i
  br i1 %i.w, label %.lr.ph125.preheader, label %.loopexit

.lr.ph125.preheader:                              ; preds = %.preheader
  %i.x = zext i32 %.0.lcssa to i64                ; 8 uses
  %i.y = xor i32 %.0.lcssa, -1
  %i.z = add i32 %i.i, %i.y                       ; 2 uses
  %i.aa = zext i32 %i.z to i64                    ; 3 uses
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check188 = icmp ult i32 %i.z, 15
  br i1 %min.iters.check188, label %.lr.ph125.preheader208, label %vector.memcheck189

vector.memcheck189:                               ; preds = %.lr.ph125.preheader
  %i.ac = getelementptr i8, ptr %i.b, i64 %i.x    ; 2 uses
  %i.ad = getelementptr i8, ptr %i.b, i64 %i.x
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.aa
  %i.af = getelementptr i8, ptr %i.ae, i64 1      ; 2 uses
  %i.ag = shl nuw nsw i64 %i.x, 2
  %i.ah = getelementptr i8, ptr %i.k, i64 %i.ag
  %i.ai = add nuw nsw i64 %i.x, %i.aa
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = getelementptr i8, ptr %i.k, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  %bound0190 = icmp ult ptr %i.ac, %i.al
  %bound0190.a = icmp ult ptr %i.ah, %i.af
  %found.conflict192 = and i1 %bound0190, %bound0190.a
  %1 = getelementptr i8, ptr %0, i64 20
  %bound0193 = icmp ult ptr %i.ac, %1
  %bound1194 = icmp ult ptr %i.l, %i.af
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx196 = or i1 %found.conflict192, %found.conflict195
  br i1 %conflict.rdx196, label %.lr.ph125.preheader208, label %vector.ph197

vector.ph197:                                     ; preds = %vector.memcheck189
  %n.vec198 = and i64 %i.ab, 8589934588           ; 3 uses
  %i.am = add nuw nsw i64 %n.vec198, %i.x
  %i.an = load i32, ptr %i.l, align 8, !tbaa !21, !alias.scope !46
  %broadcast.splatinsert199 = insertelement <4 x i32> poison, i32 %i.an, i64 0
  %broadcast.splat200 = shufflevector <4 x i32> %broadcast.splatinsert199, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ao = zext <4 x i32> %broadcast.splat200 to <4 x i64>
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph197
  %index202 = phi i64 [ 0, %vector.ph197 ], [ %index.next204, %vector.body201 ] ; 2 uses
  %i.ap = add nuw i64 %index202, %i.x             ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ap
  %wide.load203 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !23, !alias.scope !47
  %i.ar = zext <4 x i32> %wide.load203 to <4 x i64>
  %i.as = mul nuw <4 x i64> %i.ao, %i.ar
  %i.at = add nuw <4 x i64> %i.as, splat (i64 2147483648)
  %i.au = lshr <4 x i64> %i.at, splat (i64 32)    ; 2 uses
  %i.av = trunc nuw <4 x i64> %i.au to <4 x i32>
  %i.aw = icmp sgt <4 x i32> %i.av, splat (i32 255)
  %i.ax = trunc <4 x i64> %i.au to <4 x i8>
  %i.ay = select <4 x i1> %i.aw, <4 x i8> splat (i8 -1), <4 x i8> %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ap
  store <4 x i8> %i.ay, ptr %i.az, align 1, !tbaa !16, !alias.scope !48, !noalias !49
  %index.next204 = add nuw i64 %index202, 4       ; 2 uses
  %i.ba = icmp eq i64 %index.next204, %n.vec198
  br i1 %i.ba, label %middle.block205, label %vector.body201, !llvm.loop !35

middle.block205:                                  ; preds = %vector.body201
  %cmp.n206 = icmp eq i64 %i.ab, %n.vec198
  br i1 %cmp.n206, label %.loopexit, label %.lr.ph125.preheader208

.lr.ph125.preheader208:                           ; preds = %vector.memcheck189, %.lr.ph125.preheader, %middle.block205
  %indvars.iv143.ph = phi i64 [ %i.x, %vector.memcheck189 ], [ %i.x, %.lr.ph125.preheader ], [ %i.am, %middle.block205 ]
  br label %.lr.ph125

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %.lr.ph122
  %indvars.iv138 = phi i64 [ 0, %.lr.ph122.preheader ], [ %indvars.iv.next139, %.lr.ph122 ] ; 3 uses
  %indvars.iv136 = phi i64 [ 8, %.lr.ph122.preheader ], [ %indvars.iv.next137, %.lr.ph122 ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv138 ; 2 uses
  %.val76 = load <2 x i64>, ptr %i.bb, align 1, !tbaa !16 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %.val77 = load <2 x i64>, ptr %i.bc, align 1, !tbaa !16 ; 2 uses
  %i.bd = lshr <2 x i64> %.val76, splat (i64 32)
  %i.be = lshr <2 x i64> %.val77, splat (i64 32)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv138
  %i.bg = and <2 x i64> %.val76, splat (i64 4294967295)
  %i.bh = mul nuw <2 x i64> %i.bg, %i.p
  %i.bi = and <2 x i64> %.val77, splat (i64 4294967295)
  %i.bj = mul nuw <2 x i64> %i.bi, %i.p
  %i.bk = mul nuw <2 x i64> %i.bd, %i.p
  %i.bl = mul nuw <2 x i64> %i.be, %i.p
  %i.bm = add nuw <2 x i64> %i.bh, splat (i64 2147483648)
  %i.bn = add nuw <2 x i64> %i.bj, splat (i64 2147483648)
  %i.bo = add nuw <2 x i64> %i.bk, splat (i64 2147483648)
  %i.bp = add nuw <2 x i64> %i.bl, splat (i64 2147483648)
  %i.bq = lshr <2 x i64> %i.bm, splat (i64 32)
  %i.br = lshr <2 x i64> %i.bn, splat (i64 32)
  %i.bs = and <2 x i64> %i.bo, splat (i64 -4294967296)
  %i.bt = and <2 x i64> %i.bp, splat (i64 -4294967296)
  %i.bu = or disjoint <2 x i64> %i.bq, %i.bs
  %i.bv = or disjoint <2 x i64> %i.br, %i.bt
  %i.bw = bitcast <2 x i64> %i.bu to <4 x i32>
  %i.bx = bitcast <2 x i64> %i.bv to <4 x i32>
  %i.by = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bw, <4 x i32> %i.bx)
  %i.bz = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.by, <8 x i16> poison)
  %i.ca = bitcast <16 x i8> %i.bz to <2 x i64>
  %i.cb = extractelement <2 x i64> %i.ca, i64 0
  store i64 %i.cb, ptr %i.bf, align 1, !tbaa !16
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 8 ; 2 uses
  %.not72 = icmp samesign ugt i64 %indvars.iv.next137, %i.t
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 8
  br i1 %.not72, label %.preheader.loopexit, label %.lr.ph122, !llvm.loop !36

.lr.ph125:                                        ; preds = %.lr.ph125.preheader208, %.lr.ph125
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %.lr.ph125 ], [ %indvars.iv143.ph, %.lr.ph125.preheader208 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv143
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !23
  %i.ce = zext i32 %i.cd to i64
  %i.cf = load i32, ptr %i.l, align 8, !tbaa !21
  %i.cg = zext i32 %i.cf to i64
  %i.ch = mul nuw i64 %i.cg, %i.ce
  %i.ci = add nuw i64 %i.ch, 2147483648
  %i.cj = lshr i64 %i.ci, 32                      ; 2 uses
  %i.ck = trunc nuw i64 %i.cj to i32
  %i.cl = icmp sgt i32 %i.ck, 255
  %i.cm = trunc i64 %i.cj to i8
  %i.cn = select i1 %i.cl, i8 -1, i8 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv143
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !16
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.cp = trunc nuw i64 %indvars.iv.next144 to i32
  %i.cq = icmp sgt i32 %i.i, %i.cp
  br i1 %i.cq, label %.lr.ph125, label %.loopexit, !llvm.loop !37

bb.b:                                             ; preds = %bb.a
  %i.cr = sub nsw i32 0, %i.r
  %i.cs = sext i32 %i.cr to i64
  %i.ct = shl nsw i64 %i.cs, 32
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !50
  %i.cw = sext i32 %i.cv to i64
  %i.cx = udiv i64 %i.ct, %i.cw                   ; 3 uses
  %i.cy = trunc i64 %i.cx to i32                  ; 3 uses
  %i.cz = and i64 %i.cx, 4294967295               ; 2 uses
  %i.da = sub i32 0, %i.cy                        ; 2 uses
  %i.db = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>, i32 %i.da, i64 0
  %i.dc = insertelement <4 x i32> %i.db, i32 %i.da, i64 2
  %i.dd = bitcast <4 x i32> %i.dc to <2 x i64>    ; 4 uses
  %i.de = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>, i32 %i.cy, i64 0
  %i.df = insertelement <4 x i32> %i.de, i32 %i.cy, i64 2
  %i.dg = bitcast <4 x i32> %i.df to <2 x i64>    ; 4 uses
  %.not116 = icmp slt i32 %i.i, 8
  br i1 %.not116, label %.preheader114, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.dh = zext nneg i32 %i.i to i64
  br label %.lr.ph

.preheader114.loopexit:                           ; preds = %.lr.ph
  %i.di = add nuw i32 %i.i, 2147483640
  %i.dj = and i32 %i.di, 2147483640
  %narrow = add nuw i32 %i.dj, 8
  br label %.preheader114

.preheader114:                                    ; preds = %.preheader114.loopexit, %bb.b
  %.2.lcssa = phi i32 [ 0, %bb.b ], [ %narrow, %.preheader114.loopexit ] ; 3 uses
  %i.dk = icmp slt i32 %.2.lcssa, %i.i
  br i1 %i.dk, label %.lr.ph119, label %.loopexit

.lr.ph119:                                        ; preds = %.preheader114
  %i.dl = sub i64 0, %i.cx
  %i.dm = and i64 %i.dl, 4294967295               ; 2 uses
  %i.dn = zext i32 %.2.lcssa to i64               ; 8 uses
  %i.do = xor i32 %.2.lcssa, -1
  %i.dp = add i32 %i.i, %i.do                     ; 2 uses
  %i.dq = zext i32 %i.dp to i64                   ; 3 uses
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.dp, 79
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph119
  %i.ds = getelementptr i8, ptr %i.b, i64 %i.dn   ; 3 uses
  %i.dt = getelementptr i8, ptr %i.b, i64 %i.dn
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.dq
  %i.dv = getelementptr i8, ptr %i.du, i64 1      ; 3 uses
  %i.dw = shl nuw nsw i64 %i.dn, 2                ; 2 uses
  %i.dx = getelementptr i8, ptr %i.k, i64 %i.dw
  %i.dy = add nuw nsw i64 %i.dn, %i.dq
  %i.dz = shl nuw nsw i64 %i.dy, 2
  %i.ea = add nuw nsw i64 %i.dz, 4                ; 2 uses
  %i.eb = getelementptr i8, ptr %i.k, i64 %i.ea
  %bound0 = icmp ult ptr %i.ds, %i.eb
  %bound1 = icmp ult ptr %i.dx, %i.dv
  %found.conflict = and i1 %bound0, %bound1
  %2 = getelementptr i8, ptr %i.d, i64 %i.dw
  %3 = getelementptr i8, ptr %i.d, i64 %i.ea
  %bound0163 = icmp ult ptr %i.ds, %3
  %bound1164 = icmp ult ptr %2, %i.dv
  %found.conflict165 = and i1 %bound0163, %bound1164
  %conflict.rdx = or i1 %found.conflict, %found.conflict165
  %4 = getelementptr i8, ptr %0, i64 20
  %bound0166 = icmp ult ptr %i.ds, %4
  %bound1167 = icmp ult ptr %i.l, %i.dv
  %found.conflict168 = and i1 %bound0166, %bound1167
  %conflict.rdx169 = or i1 %conflict.rdx, %found.conflict168
  br i1 %conflict.rdx169, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dr, 8589934588              ; 3 uses
  %i.ec = add nuw nsw i64 %n.vec, %i.dn
  %i.ed = load i32, ptr %i.l, align 8, !tbaa !21, !alias.scope !51
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ed, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ee = zext <4 x i32> %broadcast.splat to <4 x i64>
  %broadcast.splatinsert170 = insertelement <4 x i64> poison, i64 %i.dm, i64 0
  %broadcast.splat171 = shufflevector <4 x i64> %broadcast.splatinsert170, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert172 = insertelement <4 x i64> poison, i64 %i.cz, i64 0
  %broadcast.splat173 = shufflevector <4 x i64> %broadcast.splatinsert172, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ef = add nuw i64 %index, %i.dn               ; 3 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ef
  %wide.load = load <4 x i32>, ptr %i.eg, align 4, !tbaa !23, !alias.scope !52
  %i.eh = zext <4 x i32> %wide.load to <4 x i64>
  %i.ei = mul nuw <4 x i64> %broadcast.splat171, %i.eh
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ef
  %wide.load174 = load <4 x i32>, ptr %i.ej, align 4, !tbaa !23, !alias.scope !53
  %i.ek = zext <4 x i32> %wide.load174 to <4 x i64>
  %i.el = mul nuw <4 x i64> %broadcast.splat173, %i.ek
  %i.em = add nuw <4 x i64> %i.ei, splat (i64 2147483648)
  %i.en = add <4 x i64> %i.em, %i.el
  %i.eo = lshr <4 x i64> %i.en, splat (i64 32)
  %i.ep = mul nuw <4 x i64> %i.eo, %i.ee
  %i.eq = add nuw <4 x i64> %i.ep, splat (i64 2147483648)
  %i.er = lshr <4 x i64> %i.eq, splat (i64 32)    ; 2 uses
  %i.es = trunc nuw <4 x i64> %i.er to <4 x i32>
  %i.et = icmp sgt <4 x i32> %i.es, splat (i32 255)
  %i.eu = trunc <4 x i64> %i.er to <4 x i8>
  %i.ev = select <4 x i1> %i.et, <4 x i8> splat (i8 -1), <4 x i8> %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ef
  store <4 x i8> %i.ev, ptr %i.ew, align 1, !tbaa !16, !alias.scope !54, !noalias !55
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ex = icmp eq i64 %index.next, %n.vec
  br i1 %i.ex, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph119, %middle.block
  %indvars.iv133.ph = phi i64 [ %i.dn, %vector.memcheck ], [ %i.dn, %.lr.ph119 ], [ %i.ec, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv128 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next129, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv128 ; 2 uses
  %.val74 = load <2 x i64>, ptr %i.ey, align 1, !tbaa !16 ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 16
  %.val75 = load <2 x i64>, ptr %i.ez, align 1, !tbaa !16 ; 2 uses
  %i.fa = lshr <2 x i64> %.val74, splat (i64 32)
  %i.fb = lshr <2 x i64> %.val75, splat (i64 32)
  %i.fc = and <2 x i64> %.val74, splat (i64 4294967295)
  %i.fd = mul nuw <2 x i64> %i.fc, %i.dd
  %i.fe = and <2 x i64> %.val75, splat (i64 4294967295)
  %i.ff = mul nuw <2 x i64> %i.fe, %i.dd
  %i.fg = mul nuw <2 x i64> %i.fa, %i.dd
  %i.fh = mul nuw <2 x i64> %i.fb, %i.dd
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv128 ; 2 uses
  %.val = load <2 x i64>, ptr %i.fi, align 1, !tbaa !16 ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 16
  %.val73 = load <2 x i64>, ptr %i.fj, align 1, !tbaa !16 ; 2 uses
  %i.fk = lshr <2 x i64> %.val, splat (i64 32)
  %i.fl = lshr <2 x i64> %.val73, splat (i64 32)
  %i.fm = and <2 x i64> %.val, splat (i64 4294967295)
  %i.fn = mul nuw <2 x i64> %i.fm, %i.dg
  %i.fo = and <2 x i64> %.val73, splat (i64 4294967295)
  %i.fp = mul nuw <2 x i64> %i.fo, %i.dg
  %i.fq = mul nuw <2 x i64> %i.fk, %i.dg
  %i.fr = mul nuw <2 x i64> %i.fl, %i.dg
  %i.fs = add <2 x i64> %i.fd, splat (i64 2147483648)
  %i.ft = add <2 x i64> %i.fs, %i.fn
  %i.fu = add <2 x i64> %i.ff, splat (i64 2147483648)
  %i.fv = add <2 x i64> %i.fu, %i.fp
  %i.fw = add <2 x i64> %i.fg, splat (i64 2147483648)
  %i.fx = add <2 x i64> %i.fw, %i.fq
  %i.fy = add <2 x i64> %i.fh, splat (i64 2147483648)
  %i.fz = add <2 x i64> %i.fy, %i.fr
  %i.ga = lshr <2 x i64> %i.ft, splat (i64 32)
  %i.gb = lshr <2 x i64> %i.fv, splat (i64 32)
  %i.gc = lshr <2 x i64> %i.fx, splat (i64 32)
  %i.gd = lshr <2 x i64> %i.fz, splat (i64 32)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv128
  %i.gf = mul nuw <2 x i64> %i.ga, %i.p
  %i.gg = mul nuw <2 x i64> %i.gb, %i.p
  %i.gh = mul nuw <2 x i64> %i.gc, %i.p
  %i.gi = mul nuw <2 x i64> %i.gd, %i.p
  %i.gj = add nuw <2 x i64> %i.gf, splat (i64 2147483648)
  %i.gk = add nuw <2 x i64> %i.gg, splat (i64 2147483648)
  %i.gl = add nuw <2 x i64> %i.gh, splat (i64 2147483648)
  %i.gm = add nuw <2 x i64> %i.gi, splat (i64 2147483648)
  %i.gn = lshr <2 x i64> %i.gj, splat (i64 32)
  %i.go = lshr <2 x i64> %i.gk, splat (i64 32)
  %i.gp = and <2 x i64> %i.gl, splat (i64 -4294967296)
  %i.gq = and <2 x i64> %i.gm, splat (i64 -4294967296)
  %i.gr = or disjoint <2 x i64> %i.gn, %i.gp
  %i.gs = or disjoint <2 x i64> %i.go, %i.gq
  %i.gt = bitcast <2 x i64> %i.gr to <4 x i32>
  %i.gu = bitcast <2 x i64> %i.gs to <4 x i32>
  %i.gv = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.gt, <4 x i32> %i.gu)
  %i.gw = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gv, <8 x i16> poison)
  %i.gx = bitcast <16 x i8> %i.gw to <2 x i64>
  %i.gy = extractelement <2 x i64> %i.gx, i64 0
  store i64 %i.gy, ptr %i.ge, align 1, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.dh
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 8
  br i1 %.not, label %.preheader114.loopexit, label %.lr.ph, !llvm.loop !44

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %scalar.ph ], [ %indvars.iv133.ph, %scalar.ph.preheader ] ; 4 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv133
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !23
  %i.hb = zext i32 %i.ha to i64
  %i.hc = mul nuw i64 %i.dm, %i.hb
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv133
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !23
  %i.hf = zext i32 %i.he to i64
  %i.hg = mul nuw i64 %i.cz, %i.hf
  %i.hh = add nuw i64 %i.hc, 2147483648
  %i.hi = add i64 %i.hh, %i.hg
  %i.hj = lshr i64 %i.hi, 32
  %i.hk = load i32, ptr %i.l, align 8, !tbaa !21
  %i.hl = zext i32 %i.hk to i64
  %i.hm = mul nuw i64 %i.hj, %i.hl
  %i.hn = add nuw i64 %i.hm, 2147483648
  %i.ho = lshr i64 %i.hn, 32                      ; 2 uses
  %i.hp = trunc nuw i64 %i.ho to i32
  %i.hq = icmp sgt i32 %i.hp, 255
  %i.hr = trunc i64 %i.ho to i8
  %i.hs = select i1 %i.hq, i8 -1, i8 %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv133
  store i8 %i.hs, ptr %i.ht, align 1, !tbaa !16
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %i.hu = trunc nuw i64 %indvars.iv.next134 to i32
  %i.hv = icmp sgt i32 %i.i, %i.hu
  br i1 %i.hv, label %scalar.ph, label %.loopexit, !llvm.loop !45

.loopexit:                                        ; preds = %scalar.ph, %.lr.ph125, %middle.block, %middle.block205, %.preheader114, %.preheader
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
  %i.i = mul i32 %i.h, %i.f                       ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !22
  %i.p = mul i32 %i.o, %i.m                       ; 2 uses
  %i.q = sub i32 0, %i.p                          ; 4 uses
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
  %.0.lcssa = phi i32 [ 0, %bb.b ], [ %narrow, %.preheader123.loopexit ] ; 3 uses
  %i.ac = icmp slt i32 %.0.lcssa, %i.i
  br i1 %i.ac, label %.lr.ph128.preheader, label %.loopexit

.lr.ph128.preheader:                              ; preds = %.preheader123
  %i.ad = zext i32 %.0.lcssa to i64               ; 8 uses
  %i.ae = xor i32 %.0.lcssa, -1
  %i.af = add i32 %i.i, %i.ae                     ; 2 uses
  %i.ag = zext i32 %i.af to i64                   ; 3 uses
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.af, 15
  br i1 %min.iters.check, label %.lr.ph128.preheader221, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph128.preheader
  %i.ai = getelementptr i8, ptr %i.b, i64 %i.ad   ; 3 uses
  %i.aj = getelementptr i8, ptr %i.b, i64 %i.ad
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.ag
  %i.al = getelementptr i8, ptr %i.ak, i64 1      ; 3 uses
  %i.am = shl nuw nsw i64 %i.ad, 2                ; 2 uses
  %i.an = getelementptr i8, ptr %i.d, i64 %i.am   ; 3 uses
  %i.ao = add nuw nsw i64 %i.ad, %i.ag
  %i.ap = shl nuw nsw i64 %i.ao, 2
  %i.aq = add nuw nsw i64 %i.ap, 4                ; 2 uses
  %i.ar = getelementptr i8, ptr %i.d, i64 %i.aq   ; 3 uses
  %bound0 = icmp ult ptr %i.ai, %i.ar
  %bound1 = icmp ult ptr %i.an, %i.al
  %found.conflict = and i1 %bound0, %bound1
  %1 = getelementptr i8, ptr %i.k, i64 %i.am      ; 2 uses
  %2 = getelementptr i8, ptr %i.k, i64 %i.aq      ; 2 uses
  %bound0179 = icmp ult ptr %i.ai, %2
  %bound1180 = icmp ult ptr %1, %i.al
  %found.conflict181 = and i1 %bound0179, %bound1180
  %conflict.rdx = or i1 %found.conflict, %found.conflict181
  %3 = getelementptr i8, ptr %0, i64 24           ; 2 uses
  %bound0182 = icmp ult ptr %i.ai, %3
  %bound1183 = icmp ult ptr %i.r, %i.al
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx185 = or i1 %conflict.rdx, %found.conflict184
  %bound0186 = icmp ult ptr %i.an, %2
  %bound1187 = icmp ult ptr %1, %i.ar
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx189 = or i1 %conflict.rdx185, %found.conflict188
  %bound0190 = icmp ult ptr %i.an, %3
  %bound1191 = icmp ult ptr %i.r, %i.ar
  %found.conflict192 = and i1 %bound0190, %bound1191
  %conflict.rdx193 = or i1 %conflict.rdx189, %found.conflict192
  br i1 %conflict.rdx193, label %.lr.ph128.preheader221, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 8589934588              ; 3 uses
  %i.as = add nuw nsw i64 %n.vec, %i.ad
  %i.at = load i32, ptr %i.r, align 4, !tbaa !70, !alias.scope !71
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.au = zext <4 x i32> %broadcast.splat to <4 x i64>
  %broadcast.splatinsert194 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat195 = shufflevector <4 x i32> %broadcast.splatinsert194, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = add nuw i64 %index, %i.ad               ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.av
  %wide.load = load <4 x i32>, ptr %i.aw, align 4, !tbaa !23, !alias.scope !72
  %i.ax = tail call <4 x i32> @llvm.umulh.v4i32(<4 x i32> %wide.load, <4 x i32> %broadcast.splat195) ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.av ; 2 uses
  %wide.load196 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !23, !alias.scope !73, !noalias !74
  %i.az = sub <4 x i32> %wide.load196, %i.ax
  %i.ba = zext <4 x i32> %i.az to <4 x i64>
  %i.bb = mul nuw <4 x i64> %i.ba, %i.au
  %i.bc = add nuw <4 x i64> %i.bb, splat (i64 2147483648)
  %i.bd = lshr <4 x i64> %i.bc, splat (i64 32)    ; 2 uses
  %i.be = trunc nuw <4 x i64> %i.bd to <4 x i32>
  %i.bf = icmp sgt <4 x i32> %i.be, splat (i32 255)
  %i.bg = trunc <4 x i64> %i.bd to <4 x i8>
  %i.bh = select <4 x i1> %i.bf, <4 x i8> splat (i8 -1), <4 x i8> %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.av
  store <4 x i8> %i.bh, ptr %i.bi, align 1, !tbaa !16, !alias.scope !75, !noalias !76
  store <4 x i32> %i.ax, ptr %i.ay, align 4, !tbaa !23, !alias.scope !73, !noalias !74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph128.preheader221

.lr.ph128.preheader221:                           ; preds = %vector.memcheck, %.lr.ph128.preheader, %middle.block
  %indvars.iv142.ph = phi i64 [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph128.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph128

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

.lr.ph128:                                        ; preds = %.lr.ph128.preheader221, %.lr.ph128
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %.lr.ph128 ], [ %indvars.iv142.ph, %.lr.ph128.preheader221 ] ; 4 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv142
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !23
  %i.dl = tail call i32 @llvm.umulh.i32(i32 %i.dk, i32 %i.q) ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv142 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !23
  %i.do = sub i32 %i.dn, %i.dl
  %i.dp = zext i32 %i.do to i64
  %i.dq = load i32, ptr %i.r, align 4, !tbaa !70
  %i.dr = zext i32 %i.dq to i64
  %i.ds = mul nuw i64 %i.dp, %i.dr
  %i.dt = add nuw i64 %i.ds, 2147483648
  %i.du = lshr i64 %i.dt, 32                      ; 2 uses
  %i.dv = trunc nuw i64 %i.du to i32
  %i.dw = icmp sgt i32 %i.dv, 255
  %i.dx = trunc i64 %i.du to i8
  %i.dy = select i1 %i.dw, i8 -1, i8 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv142
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !16
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !23
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.ea = trunc nuw i64 %indvars.iv.next143 to i32
  %i.eb = icmp sgt i32 %i.i, %i.ea
  br i1 %i.eb, label %.lr.ph128, label %.loopexit, !llvm.loop !63

bb.c:                                             ; preds = %bb.a
  %.not85129 = icmp slt i32 %i.i, 8
  br i1 %.not85129, label %.preheader, label %.lr.ph131.preheader

.lr.ph131.preheader:                              ; preds = %bb.c
  %i.ec = zext nneg i32 %i.i to i64
  br label %.lr.ph131

.preheader.loopexit:                              ; preds = %.lr.ph131
  %i.ed = add nuw i32 %i.i, 2147483640
  %i.ee = and i32 %i.ed, 2147483640
  %narrow155 = add nuw i32 %i.ee, 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.c
  %.2.lcssa = phi i32 [ 0, %bb.c ], [ %narrow155, %.preheader.loopexit ] ; 3 uses
  %i.ef = icmp slt i32 %.2.lcssa, %i.i
  br i1 %i.ef, label %.lr.ph134, label %.loopexit

.lr.ph134:                                        ; preds = %.preheader
  %i.eg = zext i32 %i.s to i64                    ; 2 uses
  %i.eh = zext i32 %.2.lcssa to i64               ; 8 uses
  %i.ei = xor i32 %.2.lcssa, -1
  %i.ej = add i32 %i.i, %i.ei                     ; 2 uses
  %i.ek = zext i32 %i.ej to i64                   ; 3 uses
  %i.el = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %min.iters.check205 = icmp ult i32 %i.ej, 11
  br i1 %min.iters.check205, label %scalar.ph204.preheader, label %vector.memcheck206

vector.memcheck206:                               ; preds = %.lr.ph134
  %i.em = getelementptr i8, ptr %i.b, i64 %i.eh
  %i.en = getelementptr i8, ptr %i.b, i64 %i.eh
  %i.eo = getelementptr i8, ptr %i.en, i64 %i.ek
  %i.ep = getelementptr i8, ptr %i.eo, i64 1
  %i.eq = shl nuw nsw i64 %i.eh, 2
  %i.er = getelementptr i8, ptr %i.d, i64 %i.eq
  %i.es = add nuw nsw i64 %i.eh, %i.ek
  %i.et = shl nuw nsw i64 %i.es, 2
  %i.eu = getelementptr i8, ptr %i.d, i64 %i.et
  %i.ev = getelementptr i8, ptr %i.eu, i64 4
  %bound0207 = icmp ult ptr %i.em, %i.ev
  %bound1208 = icmp ult ptr %i.er, %i.ep
  %found.conflict209 = and i1 %bound0207, %bound1208
  br i1 %found.conflict209, label %scalar.ph204.preheader, label %vector.ph210

vector.ph210:                                     ; preds = %vector.memcheck206
  %n.vec211 = and i64 %i.el, 8589934588           ; 3 uses
  %i.ew = add nuw nsw i64 %n.vec211, %i.eh
  %broadcast.splatinsert212 = insertelement <4 x i64> poison, i64 %i.eg, i64 0
  %broadcast.splat213 = shufflevector <4 x i64> %broadcast.splatinsert212, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph210
  %index215 = phi i64 [ 0, %vector.ph210 ], [ %index.next217, %vector.body214 ] ; 2 uses
  %i.ex = add nuw i64 %index215, %i.eh            ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ex ; 2 uses
  %wide.load216 = load <4 x i32>, ptr %i.ey, align 4, !tbaa !23, !alias.scope !77
  %i.ez = zext <4 x i32> %wide.load216 to <4 x i64>
  %i.fa = mul nuw <4 x i64> %broadcast.splat213, %i.ez
  %i.fb = add nuw <4 x i64> %i.fa, splat (i64 2147483648)
  %i.fc = lshr <4 x i64> %i.fb, splat (i64 32)    ; 2 uses
end_hunk_0
