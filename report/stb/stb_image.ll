Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image?download=true
inline.NumInlined: 718
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 84
begin_hunk_0_@stbi__resample_row_hv_2_simd:bb.a
  %i.dz = lshr i32 %i.dy, 4
  %i.ea = trunc nuw i32 %i.dz to i8
  %i.eb = shl nuw nsw i64 %indvars.iv104, 1
  %i.ec = getelementptr i8, ptr %0, i64 %i.eb     ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 -1
  store i8 %i.ea, ptr %i.ed, align 1, !tbaa !37
  %i.ee = mul nuw nsw i32 %i.dv, 3
  %i.ef = add nuw nsw i32 %.19195, 8
  %i.eg = add nuw nsw i32 %i.ef, %i.ee
  %i.eh = lshr i32 %i.eg, 4
  %i.ei = trunc nuw i32 %i.eh to i8
  store i8 %i.ei, ptr %i.ec, align 1, !tbaa !37
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge99, label %.lr.ph98, !llvm.loop !393

._crit_edge99:                                    ; preds = %.lr.ph98, %middle.block, %._crit_edge
  %.191.lcssa = phi i32 [ %.pre-phi114, %._crit_edge ], [ %vector.recur.extract, %middle.block ], [ %i.dv, %.lr.ph98 ]
  %i.ej = add nuw nsw i32 %.191.lcssa, 2
  %i.ek = lshr i32 %i.ej, 2
  %i.el = trunc nuw i32 %i.ek to i8
  %i.em = shl nsw i32 %3, 1
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
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 5 uses
  %.090103 = phi ptr [ %0, %.lr.ph.preheader ], [ %i.as, %.lr.ph ] ; 3 uses
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
  %i.x = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> splat (i16 5743), <8 x i16> %i.w)
  %i.y = bitcast <16 x i8> %i.t to <8 x i16>      ; 2 uses
  %i.z = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> splat (i16 -1410), <8 x i16> %i.y)
  %i.aa = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.y, <8 x i16> splat (i16 7258))
  %i.ab = tail call <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16> %i.w, <8 x i16> splat (i16 -2925))
  %i.ac = add <8 x i16> %i.v, %i.x
  %i.ad = add <8 x i16> %i.v, %i.z
  %i.ae = add <8 x i16> %i.v, %i.aa
  %i.af = add <8 x i16> %i.ad, %i.ab
  %i.ag = ashr <8 x i16> %i.ac, splat (i16 4)
  %i.ah = ashr <8 x i16> %i.ae, splat (i16 4)
  %i.ai = ashr <8 x i16> %i.af, splat (i16 4)
  %i.aj = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ag, <8 x i16> %i.ah) ; 2 uses
  %i.ak = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ai, <8 x i16> splat (i16 255)) ; 2 uses
  %i.al = shufflevector <16 x i8> %i.aj, <16 x i8> %i.ak, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.am = shufflevector <16 x i8> %i.aj, <16 x i8> %i.ak, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.an = bitcast <16 x i8> %i.al to <8 x i16>    ; 2 uses
  %i.ao = bitcast <16 x i8> %i.am to <8 x i16>    ; 2 uses
  %i.ap = shufflevector <8 x i16> %i.an, <8 x i16> %i.ao, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aq = shufflevector <8 x i16> %i.an, <8 x i16> %i.ao, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.ap, ptr %.090103, align 1, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %.090103, i64 16
  store <8 x i16> %i.aq, ptr %i.ar, align 1, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %.090103, i64 32 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %6 = add nuw nsw i64 %indvars.iv, 15
  %i.at = icmp samesign ult i64 %6, %i.c
  br i1 %i.at, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !403

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.au = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.192 = phi i32 [ 0, %bb.a ], [ %i.au, %.loopexit.loopexit ] ; 2 uses
  %.1 = phi ptr [ %0, %bb.a ], [ %i.as, %.loopexit.loopexit ]
  %i.av = icmp slt i32 %.192, %4
  br i1 %i.av, label %.lr.ph107, label %._crit_edge

.lr.ph107:                                        ; preds = %.loopexit
  %i.aw = sext i32 %5 to i64
  %i.ax = zext nneg i32 %.192 to i64
  %wide.trip.count = zext i32 %4 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph107, %bb.b
  %indvars.iv110 = phi i64 [ %i.ax, %.lr.ph107 ], [ %indvars.iv.next111, %bb.b ] ; 4 uses
  %.2106 = phi ptr [ %.1, %.lr.ph107 ], [ %i.cj, %bb.b ] ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv110
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !37
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 20
  %i.bc = or disjoint i32 %i.bb, 524288           ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv110
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !37
  %i.bf = zext i8 %i.be to i32
  %i.bg = add nsw i32 %i.bf, -128                 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv110
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !37
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add nsw i32 %i.bj, -128                 ; 2 uses
  %i.bl = mul nsw i32 %i.bg, 1470208
  %i.bm = add nsw i32 %i.bl, %i.bc
  %i.bn = mul nsw i32 %i.bg, -748800
  %i.bo = add nsw i32 %i.bn, %i.bc
  %i.bp = mul nsw i32 %i.bk, -360960
  %i.bq = and i32 %i.bp, -65536
  %i.br = add i32 %i.bo, %i.bq
  %i.bs = mul nsw i32 %i.bk, 1858048
  %i.bt = add nsw i32 %i.bs, %i.bc
  %i.bu = ashr i32 %i.bm, 20
  %i.bv = ashr i32 %i.br, 20
  %i.bw = ashr i32 %i.bt, 20
  %i.bx = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 0)
  %i.by = tail call i32 @llvm.umin.i32(i32 %i.bx, i32 255)
  %i.bz = tail call i32 @llvm.smax.i32(i32 %i.bv, i32 0)
  %i.ca = tail call i32 @llvm.umin.i32(i32 %i.bz, i32 255)
  %i.cb = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 0)
  %i.cc = tail call i32 @llvm.umin.i32(i32 %i.cb, i32 255)
  %i.cd = trunc nuw i32 %i.by to i8
  store i8 %i.cd, ptr %.2106, align 1, !tbaa !37
  %i.ce = trunc nuw i32 %i.ca to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %.2106, i64 1
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !37
  %i.cg = trunc nuw i32 %i.cc to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %.2106, i64 2
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !37
  %i.ci = getelementptr inbounds nuw i8, ptr %.2106, i64 3
  store i8 -1, ptr %i.ci, align 1, !tbaa !37
  %i.cj = getelementptr inbounds i8, ptr %.2106, i64 %i.aw
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
  br i1 %i.i, label %.lr.ph.i.i, label %stbi__cleanup_jpeg.exit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %wide.trip.count.i.i = zext nneg i32 %i.h to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.k, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.k ] ; 2 uses
  %i.k = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %indvars.iv.i.i ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !124  ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.m) #37
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !125  ; 2 uses
  %.not28.i.i = icmp eq ptr %i.p, null
  br i1 %.not28.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.p) #37
  store ptr null, ptr %i.o, align 8, !tbaa !125
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store ptr null, ptr %i.q, align 8, !tbaa !120
end_hunk_0
