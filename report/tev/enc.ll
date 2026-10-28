Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc?download=true
inline.NumInlined: 51
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 66
loop-unroll.NumUnrolled: 66
begin_hunk_0_@SSE16x16_C:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.024.i, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %.01821.i, i64 32
  %i.j = add nuw nsw i32 %.01623.i, 1             ; 2 uses
  %exitcond26.not.i = icmp eq i32 %i.j, 16
  br i1 %exitcond26.not.i, label %GetSSE.exit, label %.preheader.i, !llvm.loop !0

GetSSE.exit:                                      ; preds = %.preheader.i
  ret i32 %op.rdx
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: read) uwtable
define internal i32 @SSE16x8_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1) #7 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %bb.a
  %.024.i = phi ptr [ %0, %bb.a ], [ %i.h, %.preheader.i ] ; 2 uses
  %.01623.i = phi i32 [ 0, %bb.a ], [ %i.j, %.preheader.i ]
  %.01722.i = phi i32 [ 0, %bb.a ], [ %op.rdx, %.preheader.i ]
  %.01821.i = phi ptr [ %1, %bb.a ], [ %i.i, %.preheader.i ] ; 2 uses
  %i.a = load <16 x i8>, ptr %.024.i, align 1, !tbaa !12, !alias.scope !49
  %i.b = zext <16 x i8> %i.a to <16 x i32>
  %i.c = load <16 x i8>, ptr %.01821.i, align 1, !tbaa !12, !alias.scope !50
  %i.d = zext <16 x i8> %i.c to <16 x i32>
  %i.e = sub nsw <16 x i32> %i.b, %i.d            ; 2 uses
  %i.f = mul nsw <16 x i32> %i.e, %i.e
  %i.g = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.f)
  %op.rdx = add i32 %i.g, %.01722.i               ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.024.i, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %.01821.i, i64 32
  %i.j = add nuw nsw i32 %.01623.i, 1             ; 2 uses
  %exitcond26.not.i = icmp eq i32 %i.j, 8
  br i1 %exitcond26.not.i, label %GetSSE.exit, label %.preheader.i, !llvm.loop !0

GetSSE.exit:                                      ; preds = %.preheader.i
  ret i32 %op.rdx
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read, inaccessiblemem: read) uwtable
define internal i32 @SSE8x8_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1) #7 {
.preheader.i:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.a = load <8 x i8>, ptr %0, align 1, !tbaa !12, !alias.scope !54
  %i.b = zext <8 x i8> %i.a to <8 x i32>
  %i.c = load <8 x i8>, ptr %1, align 1, !tbaa !12, !alias.scope !55
  %i.d = zext <8 x i8> %i.c to <8 x i32>
  %i.e = sub nsw <8 x i32> %i.b, %i.d             ; 2 uses
  %i.f = mul nsw <8 x i32> %i.e, %i.e
  %i.g = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load <8 x i8>, ptr %i.h, align 1, !tbaa !12, !alias.scope !54
  %i.k = zext <8 x i8> %i.j to <8 x i32>
  %i.l = load <8 x i8>, ptr %i.i, align 1, !tbaa !12, !alias.scope !55
  %i.m = zext <8 x i8> %i.l to <8 x i32>
  %i.n = sub nsw <8 x i32> %i.k, %i.m             ; 2 uses
  %i.o = mul nsw <8 x i32> %i.n, %i.n
  %i.p = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.o)
  %op.rdx.1 = add i32 %i.p, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load <8 x i8>, ptr %i.q, align 1, !tbaa !12, !alias.scope !54
  %i.t = zext <8 x i8> %i.s to <8 x i32>
  %i.u = load <8 x i8>, ptr %i.r, align 1, !tbaa !12, !alias.scope !55
  %i.v = zext <8 x i8> %i.u to <8 x i32>
  %i.w = sub nsw <8 x i32> %i.t, %i.v             ; 2 uses
  %i.x = mul nsw <8 x i32> %i.w, %i.w
  %i.y = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.x)
  %op.rdx.2 = add i32 %i.y, %op.rdx.1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ab = load <8 x i8>, ptr %i.z, align 1, !tbaa !12, !alias.scope !54
  %i.ac = zext <8 x i8> %i.ab to <8 x i32>
  %i.ad = load <8 x i8>, ptr %i.aa, align 1, !tbaa !12, !alias.scope !55
  %i.ae = zext <8 x i8> %i.ad to <8 x i32>
  %i.af = sub nsw <8 x i32> %i.ac, %i.ae          ; 2 uses
  %i.ag = mul nsw <8 x i32> %i.af, %i.af
  %i.ah = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ag)
  %op.rdx.3 = add i32 %i.ah, %op.rdx.2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ak = load <8 x i8>, ptr %i.ai, align 1, !tbaa !12, !alias.scope !54
  %i.al = zext <8 x i8> %i.ak to <8 x i32>
  %i.am = load <8 x i8>, ptr %i.aj, align 1, !tbaa !12, !alias.scope !55
  %i.an = zext <8 x i8> %i.am to <8 x i32>
  %i.ao = sub nsw <8 x i32> %i.al, %i.an          ; 2 uses
  %i.ap = mul nsw <8 x i32> %i.ao, %i.ao
  %i.aq = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ap)
  %op.rdx.4 = add i32 %i.aq, %op.rdx.3
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.at = load <8 x i8>, ptr %i.ar, align 1, !tbaa !12, !alias.scope !54
  %i.au = zext <8 x i8> %i.at to <8 x i32>
  %i.av = load <8 x i8>, ptr %i.as, align 1, !tbaa !12, !alias.scope !55
  %i.aw = zext <8 x i8> %i.av to <8 x i32>
  %i.ax = sub nsw <8 x i32> %i.au, %i.aw          ; 2 uses
  %i.ay = mul nsw <8 x i32> %i.ax, %i.ax
  %i.az = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ay)
  %op.rdx.5 = add i32 %i.az, %op.rdx.4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bc = load <8 x i8>, ptr %i.ba, align 1, !tbaa !12, !alias.scope !54
  %i.bd = zext <8 x i8> %i.bc to <8 x i32>
  %i.be = load <8 x i8>, ptr %i.bb, align 1, !tbaa !12, !alias.scope !55
  %i.bf = zext <8 x i8> %i.be to <8 x i32>
  %i.bg = sub nsw <8 x i32> %i.bd, %i.bf          ; 2 uses
  %i.bh = mul nsw <8 x i32> %i.bg, %i.bg
  %i.bi = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bh)
  %op.rdx.6 = add i32 %i.bi, %op.rdx.5
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bl = load <8 x i8>, ptr %i.bj, align 1, !tbaa !12, !alias.scope !54
  %i.bm = zext <8 x i8> %i.bl to <8 x i32>
  %i.bn = load <8 x i8>, ptr %i.bk, align 1, !tbaa !12, !alias.scope !55
  %i.bo = zext <8 x i8> %i.bn to <8 x i32>
  %i.bp = sub nsw <8 x i32> %i.bm, %i.bo          ; 2 uses
  %i.bq = mul nsw <8 x i32> %i.bp, %i.bp
  %i.br = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bq)
  %op.rdx.7 = add i32 %i.br, %op.rdx.6
  ret i32 %op.rdx.7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal range(i32 -1040400, 1040401) i32 @SSE4x4_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1) #8 {
.preheader.i:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load <4 x i8>, ptr %0, align 1, !tbaa !12, !alias.scope !59
  %i.d = load <4 x i8>, ptr %1, align 1, !tbaa !12, !alias.scope !60
  %i.e = load <4 x i8>, ptr %i.a, align 1, !tbaa !12, !alias.scope !59
  %i.f = shufflevector <4 x i8> %i.c, <4 x i8> %i.e, <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.g = zext <8 x i8> %i.f to <8 x i32>
  %i.h = load <4 x i8>, ptr %i.b, align 1, !tbaa !12, !alias.scope !60
  %i.i = shufflevector <4 x i8> %i.d, <4 x i8> %i.h, <8 x i32> <i32 1, i32 0, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.j = zext <8 x i8> %i.i to <8 x i32>
  %i.k = sub nsw <8 x i32> %i.g, %i.j             ; 2 uses
  %i.l = mul nsw <8 x i32> %i.k, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.q = load <4 x i8>, ptr %i.m, align 1, !tbaa !12, !alias.scope !59
  %i.r = load <4 x i8>, ptr %i.n, align 1, !tbaa !12, !alias.scope !60
  %i.s = load <4 x i8>, ptr %i.o, align 1, !tbaa !12, !alias.scope !59
  %i.t = shufflevector <4 x i8> %i.q, <4 x i8> %i.s, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.u = zext <8 x i8> %i.t to <8 x i32>
  %i.v = load <4 x i8>, ptr %i.p, align 1, !tbaa !12, !alias.scope !60
  %i.w = shufflevector <4 x i8> %i.r, <4 x i8> %i.v, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.x = zext <8 x i8> %i.w to <8 x i32>
  %i.y = sub nsw <8 x i32> %i.u, %i.x             ; 2 uses
  %i.z = mul nsw <8 x i32> %i.y, %i.y
  %rdx.op = add nuw nsw <8 x i32> %i.l, %i.z
  %i.aa = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %rdx.op)
  ret i32 %i.aa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @QuantizeBlock_C(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %.04145 = phi i32 [ -1, %bb.a ], [ %.2, %bb.e ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr @kZigzag, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !12
  %i.g = zext i8 %i.f to i64                      ; 6 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.g ; 3 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !15   ; 2 uses
  %i.j = tail call i16 @llvm.abs.i16(i16 %i.i, i1 false)
  %i.k = zext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.g
  %i.m = load i16, ptr %i.l, align 2, !tbaa !15
  %i.n = zext i16 %i.m to i32
  %i.o = add nuw nsw i32 %i.k, %i.n               ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.g
  %i.q = load i32, ptr %i.p, align 4, !tbaa !9
  %i.r = icmp ugt i32 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = icmp slt i16 %i.i, 0
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.g
  %i.u = load i16, ptr %i.t, align 2, !tbaa !15
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.g
  %i.w = load i16, ptr %i.v, align 2, !tbaa !15
  %i.x = zext i16 %i.w to i32
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %i.z = load i32, ptr %i.y, align 4, !tbaa !9
  %i.aa = mul i32 %i.o, %i.x
  %i.ab = add i32 %i.aa, %i.z
  %i.ac = lshr i32 %i.ab, 17                      ; 2 uses
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 2047) ; 2 uses
  %i.ad = sub nsw i32 0, %spec.store.select
  %spec.select = select i1 %i.s, i32 %i.ad, i32 %spec.store.select
  %i.ae = trunc nsw i32 %spec.select to i16       ; 2 uses
  %i.af = mul i16 %i.u, %i.ae
  store i16 %i.af, ptr %i.h, align 2, !tbaa !15
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.ae, ptr %i.ag, align 2, !tbaa !15
  %.not = icmp eq i32 %i.ac, 0
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32
  %.1 = select i1 %.not, i32 %.04145, i32 %i.ah
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 0, ptr %i.ai, align 2, !tbaa !15
  store i16 0, ptr %i.h, align 2, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.2 = phi i32 [ %.1, %bb.c ], [ %.04145, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !61

bb.f:                                             ; preds = %bb.e
  %i.aj = icmp sgt i32 %.2, -1
  %i.ak = zext i1 %i.aj to i32
  ret i32 %i.ak
}

; Function Attrs: nounwind uwtable
define internal i32 @Quantize2Blocks_C(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2) #2 {
bb.a:
  %i.a = load ptr, ptr @VP8EncQuantizeBlock, align 8, !tbaa !11
  %i.b = tail call i32 %i.a(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  %i.c = load ptr, ptr @VP8EncQuantizeBlock, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = tail call i32 %i.c(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %2) #17
  %i.g = shl i32 %i.f, 1
  %i.h = or i32 %i.g, %i.b
  ret i32 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal void @Intra4Preds_C(ptr noalias nofree noundef writeonly initializes((1536, 1672), (1696, 1704), (1728, 1736), (1760, 1768)) %0, ptr noalias nofree noundef readonly captures(none) %1) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1536
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.b = load i8, ptr %1, align 1, !tbaa !12, !alias.scope !87 ; 3 uses
  %i.c = zext i8 %i.b to i16
  %i.d = getelementptr i8, ptr %1, i64 -5
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12, !alias.scope !87 ; 6 uses
  %i.f = zext i8 %i.e to i16
  %i.g = add nuw nsw i16 %i.c, 4
  %i.h = add nuw nsw i16 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !12, !alias.scope !87 ; 3 uses
  %i.k = zext i8 %i.j to i16
  %i.l = getelementptr i8, ptr %1, i64 -4
  %i.m = load i8, ptr %i.l, align 1, !tbaa !12, !alias.scope !87 ; 3 uses
  %i.n = zext i8 %i.m to i16
  %i.o = add nuw nsw i16 %i.h, %i.k
  %i.p = add nuw nsw i16 %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !12, !alias.scope !87 ; 3 uses
  %i.s = zext i8 %i.r to i16
  %i.t = getelementptr i8, ptr %1, i64 -3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !12, !alias.scope !87 ; 3 uses
  %i.v = zext i8 %i.u to i16
  %i.w = add nuw nsw i16 %i.p, %i.s
  %i.x = add nuw nsw i16 %i.w, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !12, !alias.scope !87 ; 3 uses
  %i.aa = zext i8 %i.z to i16
  %i.ab = getelementptr i8, ptr %1, i64 -2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !12, !alias.scope !87 ; 3 uses
  %i.ad = zext i8 %i.ac to i16
  %i.ae = add nuw nsw i16 %i.x, %i.aa
  %i.af = add nuw nsw i16 %i.ae, %i.ad
  %i.ag = lshr i16 %i.af, 3
  %i.ah = trunc nuw i16 %i.ag to i8               ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.a, i8 %i.ah, i64 4, i1 false), !alias.scope !86
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.ai, i8 %i.ah, i64 4, i1 false), !alias.scope !86
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1600
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.aj, i8 %i.ah, i64 4, i1 false), !alias.scope !86
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1632
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.ak, i8 %i.ah, i64 4, i1 false), !alias.scope !86
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1540
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.am = getelementptr inbounds i8, ptr %1, i64 -1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !12, !alias.scope !89 ; 2 uses
  %i.ao = zext i8 %i.an to i64
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @clip1, i64 255), i64 %i.ap ; 4 uses
  %i.ar = zext i8 %i.ac to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar ; 4 uses
  %i.at = zext i8 %i.b to i64                     ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !12, !noalias !90
  store i8 %i.av, ptr %i.al, align 1, !tbaa !12, !alias.scope !88
  %i.aw = zext i8 %i.j to i64                     ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !12, !noalias !90
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1541
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !12, !alias.scope !88
  %i.ba = zext i8 %i.r to i64                     ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !12, !noalias !90
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1542
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !12, !alias.scope !88
  %i.be = zext i8 %i.z to i64                     ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !12, !noalias !90
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1543
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !12, !alias.scope !88
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1572
  %i.bj = zext i8 %i.u to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bj ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.at
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !12, !noalias !90
  store i8 %i.bm, ptr %i.bi, align 1, !tbaa !12, !alias.scope !88
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.aw
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !12, !noalias !90
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1573
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !12, !alias.scope !88
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ba
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !12, !noalias !90
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1574
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !12, !alias.scope !88
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.be
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !12, !noalias !90
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1575
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !12, !alias.scope !88
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1604
  %i.bx = zext i8 %i.m to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bx ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.at
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !12, !noalias !90
  store i8 %i.ca, ptr %i.bw, align 1, !tbaa !12, !alias.scope !88
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.aw
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !12, !noalias !90
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1605
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !12, !alias.scope !88
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ba
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !12, !noalias !90
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1606
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !12, !alias.scope !88
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.be
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !12, !noalias !90
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1607
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !12, !alias.scope !88
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1636
  %i.cl = zext i8 %i.e to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.cl ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.at
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !12, !noalias !90
  store i8 %i.co, ptr %i.ck, align 1, !tbaa !12, !alias.scope !88
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.aw
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !12, !noalias !90
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1637
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !12, !alias.scope !88
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ba
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !12, !noalias !90
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1638
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !12, !alias.scope !88
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.be
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !12, !noalias !90
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1639
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !12, !alias.scope !88
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1544
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.cz = zext i8 %i.an to i32                    ; 6 uses
  %i.da = zext i8 %i.b to i32                     ; 6 uses
  %i.db = shl nuw nsw i32 %i.da, 1                ; 2 uses
  %i.dc = zext i8 %i.j to i32                     ; 6 uses
  %i.dd = add nuw nsw i32 %i.dc, 2                ; 2 uses
  %i.de = add nuw nsw i32 %i.dd, %i.db
  %i.df = add nuw nsw i32 %i.de, %i.cz
  %i.dg = lshr i32 %i.df, 2
  %i.dh = trunc nuw i32 %i.dg to i8               ; 4 uses
  %i.di = shl nuw nsw i32 %i.dc, 1                ; 2 uses
  %i.dj = zext i8 %i.r to i32                     ; 5 uses
  %i.dk = add nuw nsw i32 %i.dj, 2                ; 2 uses
  %i.dl = add nuw nsw i32 %i.di, %i.da
  %i.dm = add nuw nsw i32 %i.dl, %i.dk
  %i.dn = lshr i32 %i.dm, 2
  %i.do = trunc nuw i32 %i.dn to i8               ; 6 uses
  %i.dp = shl nuw nsw i32 %i.dj, 1                ; 2 uses
  %i.dq = zext i8 %i.z to i32                     ; 4 uses
  %i.dr = add nuw nsw i32 %i.dp, %i.dd
  %i.ds = add nuw nsw i32 %i.dr, %i.dq
  %i.dt = lshr i32 %i.ds, 2
  %i.du = trunc nuw i32 %i.dt to i8               ; 6 uses
  %i.dv = shl nuw nsw i32 %i.dq, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !12, !alias.scope !92
  %i.dy = zext i8 %i.dx to i32                    ; 4 uses
  %i.dz = add nuw nsw i32 %i.dv, %i.dk
  %i.ea = add nuw nsw i32 %i.dz, %i.dy
  %i.eb = lshr i32 %i.ea, 2
  %i.ec = trunc nuw i32 %i.eb to i8               ; 9 uses
  store i8 %i.dh, ptr %i.cy, align 1, !alias.scope !91
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1545
end_hunk_0
