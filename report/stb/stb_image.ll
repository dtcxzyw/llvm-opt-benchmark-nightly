Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image?download=true
inline.NumInlined: 718
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 84
begin_hunk_0_@stbi__resample_row_hv_2_simd:bb.a
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr i8, ptr %0, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 -1
  store i8 %i.el, ptr %i.ep, align 1, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge99, %bb.b
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @stbi__resample_row_generic(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 noundef %4) #18 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  %i.b = icmp sgt i32 %4, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge16.split

.preheader.preheader:                             ; preds = %bb.a
  %i.c = zext nneg i32 %4 to i64                  ; 7 uses
  %wide.trip.count21 = zext nneg i32 %3 to i64
  %min.iters.check = icmp ult i32 %4, 4
  %min.iters.check24 = icmp ult i32 %4, 32
  %i.d = and i64 %i.c, 28
  %n.vec = and i64 %i.c, 2147483616               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.c
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  %n.vec25 = and i64 %i.c, 2147483644             ; 3 uses
  %cmp.n30 = icmp eq i64 %n.vec25, %i.c
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv18 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next19, %._crit_edge ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv18
  %i.f = mul nuw nsw i64 %indvars.iv18, %i.c
  %.pre = load i8, ptr %i.e, align 1, !tbaa !37   ; 3 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %0, i64 %i.f ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <16 x i8> %broadcast.splat, ptr %i.g, align 1, !tbaa !37
  store <16 x i8> %broadcast.splat, ptr %i.h, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !398

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !72

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert26 = insertelement <4 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat27 = shufflevector <4 x i8> %broadcast.splatinsert26, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index28
  store <4 x i8> %broadcast.splat27, ptr %i.j, align 1, !tbaa !37
  %index.next29 = add nuw i64 %index28, 4         ; 2 uses
  %i.k = icmp eq i64 %index.next29, %n.vec25
  br i1 %i.k, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !399

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n30, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec25, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  store i8 %.pre, ptr %gep, align 1, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !400

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %exitcond22.not = icmp eq i64 %indvars.iv.next19, %wide.trip.count21
  br i1 %exitcond22.not, label %._crit_edge16.split, label %iter.check, !llvm.loop !401

._crit_edge16.split:                              ; preds = %._crit_edge, %bb.a
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbi__YCbCr_to_RGB_row(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = sext i32 %5 to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %.03644 = phi ptr [ %0, %.lr.ph ], [ %i.an, %bb.b ] ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.d = load i8, ptr %i.c, align 1, !tbaa !37
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 20
  %i.g = or disjoint i32 %i.f, 524288             ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1, !tbaa !37
  %i.j = zext i8 %i.i to i32
  %i.k = add nsw i32 %i.j, -128                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !tbaa !37
  %i.n = zext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -128                   ; 2 uses
  %i.p = mul nsw i32 %i.k, 1470208
  %i.q = add nsw i32 %i.p, %i.g
  %i.r = mul nsw i32 %i.k, -748800
  %i.s = add nsw i32 %i.r, %i.g
  %i.t = mul nsw i32 %i.o, -360960
  %i.u = and i32 %i.t, -65536
  %i.v = add i32 %i.s, %i.u
  %i.w = mul nsw i32 %i.o, 1858048
  %i.x = add nsw i32 %i.w, %i.g
  %i.y = ashr i32 %i.q, 20
  %i.z = ashr i32 %i.v, 20
  %i.aa = ashr i32 %i.x, 20
  %i.ab = tail call i32 @llvm.smax.i32(i32 %i.y, i32 0)
  %i.ac = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 255)
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.z, i32 0)
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 255)
  %i.af = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 0)
  %i.ag = tail call i32 @llvm.umin.i32(i32 %i.af, i32 255)
  %i.ah = trunc nuw i32 %i.ac to i8
  store i8 %i.ah, ptr %.03644, align 1, !tbaa !37
  %i.ai = trunc nuw i32 %i.ae to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %.03644, i64 1
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !37
  %i.ak = trunc nuw i32 %i.ag to i8
  %i.al = getelementptr inbounds nuw i8, ptr %.03644, i64 2
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !37
  %i.am = getelementptr inbounds nuw i8, ptr %.03644, i64 3
  store i8 -1, ptr %i.am, align 1, !tbaa !37
  %i.an = getelementptr inbounds i8, ptr %.03644, i64 %i.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !402

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbi__YCbCr_to_RGB_simd(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) #24 {
bb.a:
  %i.a = icmp eq i32 %5, 4
  %i.b = icmp sgt i32 %4, 7
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = zext nneg i32 %4 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %.090103 = phi ptr [ %0, %.lr.ph.preheader ], [ %i.ao, %.lr.ph ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.e = load i64, ptr %i.d, align 1, !tbaa !37
  %i.f = insertelement <2 x i64> poison, i64 %i.e, i64 0
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.h = load i64, ptr %i.g, align 1, !tbaa !37
  %i.i = insertelement <2 x i64> poison, i64 %i.h, i64 0
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.k = load i64, ptr %i.j, align 1, !tbaa !37
  %i.l = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %i.m = bitcast <2 x i64> %i.f to <16 x i8>
  %i.n = shufflevector <16 x i8> <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.m, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.o = bitcast <2 x i64> %i.i to <16 x i8>
  %i.p = xor <16 x i8> %i.o, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.q = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.p, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.r = bitcast <2 x i64> %i.l to <16 x i8>
  %i.s = xor <16 x i8> %i.r, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.t = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.s, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.u = bitcast <16 x i8> %i.n to <8 x i16>
  %i.v = lshr exact <8 x i16> %i.u, splat (i16 4) ; 3 uses
  %i.w = bitcast <16 x i8> %i.q to <8 x i16>      ; 2 uses
  %6 = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> splat (i16 5743), <8 x i16> %i.w)
  %i.x = bitcast <16 x i8> %i.t to <8 x i16>      ; 2 uses
  %7 = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> splat (i16 -1410), <8 x i16> %i.x)
  %8 = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.x, <8 x i16> splat (i16 7258))
  %9 = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.w, <8 x i16> splat (i16 -2925))
  %i.y = add <8 x i16> %i.v, %6
  %i.z = add <8 x i16> %i.v, %7
  %i.aa = add <8 x i16> %i.v, %8
  %i.ab = add <8 x i16> %i.z, %9
  %i.ac = ashr <8 x i16> %i.y, splat (i16 4)
  %i.ad = ashr <8 x i16> %i.aa, splat (i16 4)
  %i.ae = ashr <8 x i16> %i.ab, splat (i16 4)
  %i.af = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ac, <8 x i16> %i.ad) ; 2 uses
  %i.ag = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ae, <8 x i16> splat (i16 255)) ; 2 uses
  %i.ah = shufflevector <16 x i8> %i.af, <16 x i8> %i.ag, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ai = shufflevector <16 x i8> %i.af, <16 x i8> %i.ag, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.aj = bitcast <16 x i8> %i.ah to <8 x i16>    ; 2 uses
  %i.ak = bitcast <16 x i8> %i.ai to <8 x i16>    ; 2 uses
  %i.al = shufflevector <8 x i16> %i.aj, <8 x i16> %i.ak, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.am = shufflevector <8 x i16> %i.aj, <8 x i16> %i.ak, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.al, ptr %.090103, align 1, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %.090103, i64 16
  store <8 x i16> %i.am, ptr %i.an, align 1, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %.090103, i64 32 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.ap = or disjoint i64 %indvars.iv.next, 7
  %i.aq = icmp samesign ult i64 %i.ap, %i.c
  br i1 %i.aq, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !403

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.ar = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.192 = phi i32 [ 0, %bb.a ], [ %i.ar, %.loopexit.loopexit ] ; 2 uses
  %.1 = phi ptr [ %0, %bb.a ], [ %i.ao, %.loopexit.loopexit ]
  %i.as = icmp slt i32 %.192, %4
  br i1 %i.as, label %.lr.ph107, label %._crit_edge

.lr.ph107:                                        ; preds = %.loopexit
  %i.at = sext i32 %5 to i64
  %i.au = zext nneg i32 %.192 to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph107, %bb.b
  %indvars.iv110 = phi i64 [ %i.au, %.lr.ph107 ], [ %indvars.iv.next111, %bb.b ] ; 4 uses
  %.2106 = phi ptr [ %.1, %.lr.ph107 ], [ %i.cg, %bb.b ] ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv110
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !37
  %i.ax = zext i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 20
  %i.az = or disjoint i32 %i.ay, 524288           ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv110
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !37
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add nsw i32 %i.bc, -128                 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv110
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !37
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, -128                 ; 2 uses
  %i.bi = mul nsw i32 %i.bd, 1470208
  %i.bj = add nsw i32 %i.bi, %i.az
  %i.bk = mul nsw i32 %i.bd, -748800
  %i.bl = add nsw i32 %i.bk, %i.az
  %i.bm = mul nsw i32 %i.bh, -360960
  %i.bn = and i32 %i.bm, -65536
  %i.bo = add i32 %i.bl, %i.bn
  %i.bp = mul nsw i32 %i.bh, 1858048
  %i.bq = add nsw i32 %i.bp, %i.az
  %i.br = ashr i32 %i.bj, 20
  %i.bs = ashr i32 %i.bo, 20
  %i.bt = ashr i32 %i.bq, 20
  %i.bu = tail call i32 @llvm.smax.i32(i32 %i.br, i32 0)
  %i.bv = tail call i32 @llvm.umin.i32(i32 %i.bu, i32 255)
  %i.bw = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 0)
  %i.bx = tail call i32 @llvm.umin.i32(i32 %i.bw, i32 255)
  %i.by = tail call i32 @llvm.smax.i32(i32 %i.bt, i32 0)
  %i.bz = tail call i32 @llvm.umin.i32(i32 %i.by, i32 255)
  %i.ca = trunc nuw i32 %i.bv to i8
  store i8 %i.ca, ptr %.2106, align 1, !tbaa !37
  %i.cb = trunc nuw i32 %i.bx to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %.2106, i64 1
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !37
  %i.cd = trunc nuw i32 %i.bz to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %.2106, i64 2
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !37
  %i.cf = getelementptr inbounds nuw i8, ptr %.2106, i64 3
  store i8 -1, ptr %i.cf, align 1, !tbaa !37
  %i.cg = getelementptr inbounds i8, ptr %.2106, i64 %i.at
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !404

._crit_edge:                                      ; preds = %bb.b, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stbi__setup_jpeg(ptr nofree noundef writeonly captures(none) initializes((18544, 18568)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18544
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18552
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18560
  store ptr @stbi__idct_simd, ptr %i.a, align 8, !tbaa !79
  store ptr @stbi__YCbCr_to_RGB_simd, ptr %i.b, align 8, !tbaa !80
  store ptr @stbi__resample_row_hv_2_simd, ptr %i.c, align 8, !tbaa !81
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @stbi__cleanup_jpeg(ptr nofree noundef captures(none) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !78
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %stbi__free_jpeg_components.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %wide.trip.count.i = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %i.f = getelementptr inbounds nuw [96 x i8], ptr %i.e, i64 %indvars.iv.i ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.h) #37
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !125  ; 2 uses
  %.not28.i = icmp eq ptr %i.k, null
  br i1 %.not28.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.k) #37
  store ptr null, ptr %i.j, align 8, !tbaa !125
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store ptr null, ptr %i.l, align 8, !tbaa !120
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !126  ; 2 uses
  %.not29.i = icmp eq ptr %i.n, null
  br i1 %.not29.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.n) #37
  store ptr null, ptr %i.m, align 8, !tbaa !126
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbi__free_jpeg_components.exit, label %bb.b, !llvm.loop !9

stbi__free_jpeg_components.exit:                  ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i8 @stbi__blinn_8x8(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i8 %0 to i32
  %i.b = zext i8 %1 to i32
  %i.c = mul nuw nsw i32 %i.b, %i.a
  %i.d = add nuw nsw i32 %i.c, 128                ; 2 uses
  %i.e = lshr i32 %i.d, 8
  %i.f = add nuw nsw i32 %i.e, %i.d
  %i.g = lshr i32 %i.f, 8
  %i.h = trunc nuw i32 %i.g to i8
  ret i8 %i.h
}

; Function Attrs: nounwind uwtable
define noundef ptr @load_jpeg_image(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 13 uses
  %5 = alloca [4 x %struct.stbi__resample], align 16 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !64
  %or.cond = icmp ugt i32 %4, 4
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.37, ptr %i.d, align 8, !tbaa !39
  br label %stbi__cleanup_jpeg.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 @stbi__decode_jpeg_image(ptr noundef nonnull %0)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %._crit_edge452

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
end_hunk_0
begin_hunk_1_@stbi_info_from_callbacks:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !29
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.j = call i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128) #37, !inline_history !38 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !27
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !27
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !37
  br label %stbi__start_callbacks.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %stbi__start_callbacks.exit

stbi__start_callbacks.exit:                       ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !30
  %i.y = call i32 @stbi__info_main(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret i32 %i.y
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi_is_16_bit_from_memory(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.stbi__png, align 8          ; 7 uses
  %3 = alloca %struct.stbi__context, align 8      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 208
  store ptr %0, ptr %i.d, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %0, ptr %i.e, align 8, !tbaa !29
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 216
  store ptr %i.g, ptr %i.h, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.g, ptr %i.i, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store ptr %3, ptr %2, align 8, !tbaa !44
  %i.j = call i32 @stbi__parse_png_file(ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0)
  %.not.i.i.i = icmp ne i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load i32, ptr %i.k, align 8
  %.not1.i.i = icmp eq i32 %i.l, 16
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %.not1.i.i, i1 false
  br i1 %or.cond.i.i, label %stbi__png_is16.exit.i, label %bb.b

stbi__png_is16.exit.i:                            ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %stbi__is_16_main.exit

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.p = load <2 x ptr>, ptr %i.n, align 8, !tbaa !39
  store <2 x ptr> %i.p, ptr %i.o, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.q = call i32 @stbi__psd_is16(ptr noundef nonnull %3)
  %.not3.i = icmp eq i32 %i.q, 0
  br i1 %.not3.i, label %bb.c, label %stbi__is_16_main.exit

bb.c:                                             ; preds = %bb.b
  %i.r = call i32 @stbi__pnm_info(ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null)
  %.not.i = icmp eq i32 %i.r, 16
  %..i = zext i1 %.not.i to i32
  br label %stbi__is_16_main.exit

stbi__is_16_main.exit:                            ; preds = %stbi__png_is16.exit.i, %bb.b, %bb.c
  %.0.i = phi i32 [ 1, %bb.b ], [ 1, %stbi__png_is16.exit.i ], [ %..i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi_is_16_bit_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.stbi__png, align 8          ; 7 uses
  %3 = alloca %struct.stbi__context, align 8      ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !33
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !29
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.j = call i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128) #37, !inline_history !38 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !27
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !27
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !37
  br label %stbi__start_callbacks.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %stbi__start_callbacks.exit

stbi__start_callbacks.exit:                       ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store ptr %3, ptr %2, align 8, !tbaa !44
  %i.y = call i32 @stbi__parse_png_file(ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0)
  %.not.i.i.i = icmp ne i32 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = load i32, ptr %i.z, align 8
  %.not1.i.i = icmp eq i32 %i.aa, 16
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %.not1.i.i, i1 false
  br i1 %or.cond.i.i, label %stbi__png_is16.exit.i, label %bb.d

stbi__png_is16.exit.i:                            ; preds = %stbi__start_callbacks.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %stbi__is_16_main.exit

bb.d:                                             ; preds = %stbi__start_callbacks.exit
  %i.ab = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 208
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  %i.ae = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !39
  store <2 x ptr> %i.ae, ptr %i.ad, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.af = call i32 @stbi__psd_is16(ptr noundef nonnull %3)
  %.not3.i = icmp eq i32 %i.af, 0
  br i1 %.not3.i, label %bb.e, label %stbi__is_16_main.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = call i32 @stbi__pnm_info(ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null)
  %.not.i = icmp eq i32 %i.ag, 16
  %..i = zext i1 %.not.i to i32
  br label %stbi__is_16_main.exit

stbi__is_16_main.exit:                            ; preds = %stbi__png_is16.exit.i, %bb.d, %bb.e
  %.0.i = phi i32 [ 1, %bb.d ], [ 1, %stbi__png_is16.exit.i ], [ %..i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret i32 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umax.v16i32(<16 x i32>, <16 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.smulh.v8i16(<8 x i16>, <8 x i16>) #21

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #35 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #37 = { nounwind }
attributes #38 = { nounwind allocsize(0) }
attributes #39 = { nounwind allocsize(1) }

!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!20}

!0 = distinct !{!0, !66}
!1 = distinct !{!1, !66}
!2 = distinct !{!2, !66}
!3 = distinct !{!3, !66}
!4 = distinct !{!4, !66}
!5 = distinct !{!5, !66}
!6 = distinct !{!6, !66}
!7 = distinct !{!7, !66}
!8 = distinct !{!8, !66}
!9 = distinct !{!9, !66}
!10 = distinct !{!10, !66}
!11 = distinct !{!11, !66}
!12 = distinct !{!12, !66}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!16 = !{!"Simple C/C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!"__libc_errno", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"any pointer", !17, i64 0}
!22 = !{!"", !21, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!"p1 omnipotent char", !21, i64 0}
!24 = !{!"", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !22, i64 16, !21, i64 40, !18, i64 48, !18, i64 52, !17, i64 56, !18, i64 184, !23, i64 192, !23, i64 200, !23, i64 208, !23, i64 216}
!25 = !{!24, !21, i64 16}
!26 = !{!24, !18, i64 48}
!27 = !{!24, !18, i64 184}
!28 = !{!24, !23, i64 208}
!29 = !{!24, !23, i64 192}
!30 = !{!24, !23, i64 216}
!31 = !{!24, !23, i64 200}
!32 = !{!21, !21, i64 0}
!33 = !{i64 0, i64 8, !32, i64 8, i64 8, !32, i64 16, i64 8, !32}
!34 = !{!24, !21, i64 40}
!35 = !{!24, !18, i64 52}
!36 = !{ptr @stbi__refill_buffer}
!37 = !{!17, !17, i64 0}
!38 = !{ptr @stbi__start_callbacks, ptr @stbi__refill_buffer}
!39 = !{!23, !23, i64 0}
!40 = !{!18, !18, i64 0}
!41 = !{!"", !18, i64 0, !18, i64 4, !18, i64 8}
!42 = !{!41, !18, i64 0}
!43 = !{!"", !21, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !18, i64 32}
!44 = !{!43, !21, i64 0}
!45 = !{!"", !18, i64 0, !18, i64 4, !23, i64 8, !23, i64 16, !23, i64 24, !18, i64 32, !18, i64 36, !18, i64 40, !18, i64 44, !18, i64 48, !17, i64 52, !17, i64 1076, !17, i64 2100, !23, i64 34872, !18, i64 34880, !18, i64 34884, !18, i64 34888, !18, i64 34892, !18, i64 34896, !18, i64 34900, !18, i64 34904, !18, i64 34908, !18, i64 34912, !18, i64 34916, !18, i64 34920}
!46 = !{!45, !18, i64 0}
!47 = !{!45, !18, i64 4}
!48 = !{!45, !23, i64 8}
!49 = !{!45, !23, i64 24}
!50 = !{!45, !23, i64 16}
!51 = !{ptr @stbi__check_png_header, ptr @stbi__get8, ptr @stbi__refill_buffer}
!52 = !{!"", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !18, i64 24, !18, i64 28, !18, i64 32}
!53 = !{!52, !18, i64 28}
!54 = !{!24, !18, i64 4}
!55 = !{!24, !18, i64 0}
!56 = !{!52, !18, i64 12}
!57 = !{!52, !18, i64 16}
!58 = !{!52, !18, i64 20}
!59 = !{!52, !18, i64 24}
!60 = !{!52, !18, i64 8}
!61 = !{!52, !18, i64 0}
!62 = !{!52, !18, i64 4}
!63 = !{!52, !18, i64 32}
!64 = !{!24, !18, i64 8}
!65 = !{ptr @stbi__get8, ptr @stbi__refill_buffer}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!24, !21, i64 24}
!68 = !{ptr @stbi__skip}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = !{!"llvm.loop.isvectorized", i32 1}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!"branch_weights", i32 4, i32 28}
!73 = !{!"short", !17, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!24, !21, i64 32}
!76 = !{ptr @stbi__at_eof}
!77 = !{!"", !21, i64 0, !17, i64 8, !17, i64 6728, !17, i64 13448, !17, i64 13960, !18, i64 18056, !18, i64 18060, !18, i64 18064, !18, i64 18068, !18, i64 18072, !18, i64 18076, !17, i64 18080, !18, i64 18464, !18, i64 18468, !17, i64 18472, !18, i64 18476, !18, i64 18480, !18, i64 18484, !18, i64 18488, !18, i64 18492, !18, i64 18496, !18, i64 18500, !18, i64 18504, !18, i64 18508, !18, i64 18512, !18, i64 18516, !17, i64 18520, !18, i64 18536, !18, i64 18540, !21, i64 18544, !21, i64 18552, !21, i64 18560}
!78 = !{!77, !21, i64 0}
!79 = !{!77, !21, i64 18544}
!80 = !{!77, !21, i64 18552}
!81 = !{!77, !21, i64 18560}
!82 = !{!77, !18, i64 18508}
!83 = !{!77, !17, i64 18472}
!84 = !{ptr @stbi__getn}
!85 = !{!"float", !17, i64 0}
!86 = !{!85, !85, i64 0}
!87 = !{!"llvm.loop.unswitch.partial.disable"}
!88 = !{!"branch_weights", i32 4, i32 12}
!89 = !{ptr @stbi__start_file, ptr @stbi__start_callbacks, ptr @stbi__refill_buffer}
!90 = !{!"p1 int", !21, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!45, !18, i64 34920}
!93 = !{!"llvm.loop.peeled.count", i32 1}
!94 = !{!77, !18, i64 18476}
!95 = !{!77, !18, i64 18468}
!96 = !{!77, !18, i64 18464}
!97 = !{!"p1 short", !21, i64 0}
!98 = !{!"", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !18, i64 24, !18, i64 28, !18, i64 32, !18, i64 36, !18, i64 40, !23, i64 48, !21, i64 56, !21, i64 64, !23, i64 72, !97, i64 80, !18, i64 88, !18, i64 92}
!99 = !{!98, !18, i64 24}
!100 = !{!77, !18, i64 18488}
!101 = !{!77, !18, i64 18492}
!102 = !{!77, !18, i64 18496}
!103 = !{!77, !18, i64 18484}
!104 = !{!77, !18, i64 18500}
!105 = !{!77, !18, i64 18536}
!106 = !{!77, !18, i64 18540}
!107 = !{!77, !18, i64 18480}
!108 = !{!77, !18, i64 18516}
!109 = !{!98, !18, i64 28}
!110 = !{!98, !18, i64 32}
!111 = !{!98, !18, i64 20}
!112 = !{!98, !18, i64 16}
!113 = !{!98, !18, i64 12}
!114 = !{!98, !23, i64 48}
!115 = !{!98, !18, i64 36}
!116 = !{!77, !18, i64 18068}
!117 = !{!77, !18, i64 18064}
!118 = !{!98, !18, i64 8}
!119 = !{!98, !18, i64 4}
!120 = !{!98, !97, i64 80}
!121 = !{!98, !18, i64 88}
!122 = !{!77, !18, i64 18504}
!123 = !{!98, !18, i64 0}
!124 = !{!98, !21, i64 56}
!125 = !{!98, !21, i64 64}
!126 = !{!98, !23, i64 72}
!127 = !{!77, !18, i64 18512}
!128 = !{!"", !17, i64 0, !17, i64 1024, !17, i64 1056, !17, i64 1124, !17, i64 1156, !17, i64 1444}
!129 = !{!"", !23, i64 0, !23, i64 8, !18, i64 16, !18, i64 20, !18, i64 24, !23, i64 32, !23, i64 40, !23, i64 48, !18, i64 56, !128, i64 60, !128, i64 2080}
!130 = !{!129, !23, i64 0}
!131 = !{!129, !23, i64 8}
!132 = !{!129, !18, i64 24}
!133 = !{!129, !18, i64 16}
!134 = !{!129, !18, i64 20}
!135 = !{!129, !23, i64 32}
!136 = !{!129, !18, i64 56}
!137 = !{!129, !23, i64 40}
!138 = !{!129, !23, i64 48}
!139 = !{!43, !23, i64 24}
!140 = !{!24, !18, i64 12}
!141 = !{!43, !18, i64 32}
!142 = !{!43, !23, i64 8}
!143 = !{!43, !23, i64 16}
!144 = !{!45, !18, i64 32}
!145 = !{!45, !18, i64 36}
!146 = !{!45, !18, i64 44}
!147 = !{!"", !73, i64 0, !17, i64 2, !17, i64 3}
!148 = !{!147, !73, i64 0}
!149 = !{!45, !18, i64 34904}
!150 = !{!45, !18, i64 34908}
!151 = !{!45, !23, i64 34872}
!152 = !{!147, !17, i64 3}
!153 = !{!45, !18, i64 34900}
!154 = !{!45, !18, i64 34892}
end_hunk_1
