Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegvideoencdsp?download=true
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@shrink44:bb.a
  %i.r = trunc nuw i16 %i.q to i8
  store i8 %i.r, ptr %.051, align 1, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %.04147, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %.04048, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %.03949, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %.03850, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %.051, i64 1
  %i.x = add nsw i32 %.04246, -1
  %i.y = icmp sgt i32 %.04246, 1
  br i1 %i.y, label %bb.b, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.b
  %i.z = getelementptr inbounds i8, ptr %.04552, i64 %i.c
  %i.aa = getelementptr inbounds i8, ptr %.04453, i64 %1
  %i.ab = add nsw i32 %.04354, -1
  %i.ac = icmp sgt i32 %.04354, 1
  br i1 %i.ac, label %.lr.ph, label %._crit_edge57.split, !llvm.loop !32

._crit_edge57.split:                              ; preds = %._crit_edge, %.lr.ph56, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @shrink88(ptr noalias nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.preheader33.lr.ph, label %._crit_edge44.split

.preheader33.lr.ph:                               ; preds = %bb.a
  %i.b = icmp sgt i32 %4, 0
  %i.c = shl i64 %3, 3
  %i.d = shl nsw i32 %4, 3
  %i.e = sext i32 %i.d to i64
  %i.f = sub nsw i64 %i.c, %i.e
  %i.g = sext i32 %4 to i64
  %i.h = sub nsw i64 %1, %i.g
  br i1 %i.b, label %.preheader33, label %._crit_edge44.split

.preheader33:                                     ; preds = %.preheader33.lr.ph, %._crit_edge
  %.02943 = phi i32 [ %i.av, %._crit_edge ], [ %5, %.preheader33.lr.ph ] ; 2 uses
  %.03042 = phi ptr [ %i.au, %._crit_edge ], [ %0, %.preheader33.lr.ph ]
  %.03141 = phi ptr [ %i.at, %._crit_edge ], [ %2, %.preheader33.lr.ph ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader33, %.preheader
  %.02839 = phi i32 [ %4, %.preheader33 ], [ %i.ar, %.preheader ] ; 2 uses
  %.138 = phi ptr [ %.03042, %.preheader33 ], [ %i.ap, %.preheader ] ; 2 uses
  %.13237 = phi ptr [ %.03141, %.preheader33 ], [ %i.aq, %.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.13237, i64 %3 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %3 ; 2 uses
  %i.k = load <8 x i8>, ptr %.13237, align 1, !tbaa !14
  %i.l = load <8 x i8>, ptr %i.i, align 1, !tbaa !14
  %i.m = load <8 x i8>, ptr %i.j, align 1, !tbaa !14
  %i.n = shufflevector <8 x i8> %i.m, <8 x i8> %i.k, <24 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.o = shufflevector <8 x i8> %i.l, <8 x i8> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.p = shufflevector <24 x i8> %i.n, <24 x i8> %i.o, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.q = zext <24 x i8> %i.p to <24 x i16>
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 %3 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %3 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %3 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %3 ; 2 uses
  %i.v = load <8 x i8>, ptr %i.r, align 1, !tbaa !14
  %i.w = load <8 x i8>, ptr %i.s, align 1, !tbaa !14
  %i.x = load <8 x i8>, ptr %i.t, align 1, !tbaa !14
  %i.y = load <8 x i8>, ptr %i.u, align 1, !tbaa !14
  %i.z = shufflevector <8 x i8> %i.v, <8 x i8> %i.w, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aa = shufflevector <8 x i8> %i.x, <8 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ab = shufflevector <32 x i8> %i.z, <32 x i8> %i.aa, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ac = shufflevector <8 x i8> %i.y, <8 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ad = shufflevector <32 x i8> %i.ab, <32 x i8> %i.ac, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39>
  %i.ae = zext <32 x i8> %i.ad to <32 x i16>      ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.u, i64 %3
  %i.ag = load <8 x i8>, ptr %i.af, align 1, !tbaa !14
  %i.ah = zext <8 x i8> %i.ag to <8 x i16>
  %i.ai = shufflevector <32 x i16> %i.ae, <32 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %rdx.op = add nuw nsw <8 x i16> %i.ai, %i.ah
  %i.aj = shufflevector <8 x i16> %rdx.op, <8 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ak = shufflevector <32 x i16> %i.aj, <32 x i16> %i.ae, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.al = tail call i16 @llvm.vector.reduce.add.v32i16(<32 x i16> %i.ak)
  %i.am = tail call i16 @llvm.vector.reduce.add.v24i16(<24 x i16> %i.q)
  %op.rdx75 = add nuw nsw i16 %i.am, 32
  %op.rdx76 = add nuw nsw i16 %op.rdx75, %i.al
  %i.an = lshr i16 %op.rdx76, 6
  %i.ao = trunc nuw i16 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %.138, i64 1 ; 2 uses
  store i8 %i.ao, ptr %.138, align 1, !tbaa !14
  %i.aq = getelementptr i8, ptr %.13237, i64 8    ; 2 uses
  %i.ar = add nsw i32 %.02839, -1
  %i.as = icmp sgt i32 %.02839, 1
  br i1 %i.as, label %.preheader, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %.preheader
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 %i.f
  %i.au = getelementptr inbounds i8, ptr %i.ap, i64 %i.h
  %i.av = add nsw i32 %.02943, -1
  %i.aw = icmp sgt i32 %.02943, 1
  br i1 %i.aw, label %.preheader33, label %._crit_edge44.split, !llvm.loop !34

._crit_edge44.split:                              ; preds = %._crit_edge, %.preheader33.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @pix_sum_c(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #2 {
.preheader:
  %i.a = load <16 x i8>, ptr %0, align 1, !tbaa !14
  %i.b = zext <16 x i8> %i.a to <16 x i32>
  %i.c = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.b)
  %i.d = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.e = load <16 x i8>, ptr %i.d, align 1, !tbaa !14
  %i.f = zext <16 x i8> %i.e to <16 x i32>
  %i.g = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.f)
  %op.rdx.1 = add nuw nsw i32 %i.g, %i.c
  %i.h = getelementptr i8, ptr %i.d, i64 %1       ; 2 uses
  %i.i = load <16 x i8>, ptr %i.h, align 1, !tbaa !14
  %i.j = zext <16 x i8> %i.i to <16 x i32>
  %i.k = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.j)
  %op.rdx.2 = add nuw nsw i32 %i.k, %op.rdx.1
  %i.l = getelementptr i8, ptr %i.h, i64 %1       ; 2 uses
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !14
  %i.n = zext <16 x i8> %i.m to <16 x i32>
  %i.o = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.n)
  %op.rdx.3 = add nuw nsw i32 %i.o, %op.rdx.2
  %i.p = getelementptr i8, ptr %i.l, i64 %1       ; 2 uses
  %i.q = load <16 x i8>, ptr %i.p, align 1, !tbaa !14
  %i.r = zext <16 x i8> %i.q to <16 x i32>
  %i.s = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.r)
  %op.rdx.4 = add nuw nsw i32 %i.s, %op.rdx.3
  %i.t = getelementptr i8, ptr %i.p, i64 %1       ; 2 uses
  %i.u = load <16 x i8>, ptr %i.t, align 1, !tbaa !14
  %i.v = zext <16 x i8> %i.u to <16 x i32>
  %i.w = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.v)
  %op.rdx.5 = add nuw nsw i32 %i.w, %op.rdx.4
  %i.x = getelementptr i8, ptr %i.t, i64 %1       ; 2 uses
  %i.y = load <16 x i8>, ptr %i.x, align 1, !tbaa !14
  %i.z = zext <16 x i8> %i.y to <16 x i32>
  %i.aa = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.z)
  %op.rdx.6 = add i32 %i.aa, %op.rdx.5
  %i.ab = getelementptr i8, ptr %i.x, i64 %1      ; 2 uses
  %i.ac = load <16 x i8>, ptr %i.ab, align 1, !tbaa !14
  %i.ad = zext <16 x i8> %i.ac to <16 x i32>
  %i.ae = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ad)
  %op.rdx.7 = add i32 %i.ae, %op.rdx.6
  %i.af = getelementptr i8, ptr %i.ab, i64 %1     ; 2 uses
  %i.ag = load <16 x i8>, ptr %i.af, align 1, !tbaa !14
  %i.ah = zext <16 x i8> %i.ag to <16 x i32>
  %i.ai = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ah)
  %op.rdx.8 = add i32 %i.ai, %op.rdx.7
  %i.aj = getelementptr i8, ptr %i.af, i64 %1     ; 2 uses
  %i.ak = load <16 x i8>, ptr %i.aj, align 1, !tbaa !14
  %i.al = zext <16 x i8> %i.ak to <16 x i32>
  %i.am = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.al)
  %op.rdx.9 = add i32 %i.am, %op.rdx.8
  %i.an = getelementptr i8, ptr %i.aj, i64 %1     ; 2 uses
  %i.ao = load <16 x i8>, ptr %i.an, align 1, !tbaa !14
  %i.ap = zext <16 x i8> %i.ao to <16 x i32>
  %i.aq = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ap)
  %op.rdx.10 = add i32 %i.aq, %op.rdx.9
  %i.ar = getelementptr i8, ptr %i.an, i64 %1     ; 2 uses
  %i.as = load <16 x i8>, ptr %i.ar, align 1, !tbaa !14
  %i.at = zext <16 x i8> %i.as to <16 x i32>
  %i.au = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.at)
  %op.rdx.11 = add i32 %i.au, %op.rdx.10
  %i.av = getelementptr i8, ptr %i.ar, i64 %1     ; 2 uses
  %i.aw = load <16 x i8>, ptr %i.av, align 1, !tbaa !14
  %i.ax = zext <16 x i8> %i.aw to <16 x i32>
  %i.ay = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ax)
  %op.rdx.12 = add i32 %i.ay, %op.rdx.11
  %i.az = getelementptr i8, ptr %i.av, i64 %1     ; 2 uses
  %i.ba = load <16 x i8>, ptr %i.az, align 1, !tbaa !14
  %i.bb = zext <16 x i8> %i.ba to <16 x i32>
  %i.bc = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.bb)
  %op.rdx.13 = add i32 %i.bc, %op.rdx.12
  %i.bd = getelementptr i8, ptr %i.az, i64 %1     ; 2 uses
  %i.be = load <16 x i8>, ptr %i.bd, align 1, !tbaa !14
  %i.bf = zext <16 x i8> %i.be to <16 x i32>
  %i.bg = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.bf)
  %op.rdx.14 = add i32 %i.bg, %op.rdx.13
  %i.bh = getelementptr i8, ptr %i.bd, i64 %1
  %i.bi = load <16 x i8>, ptr %i.bh, align 1, !tbaa !14
  %i.bj = zext <16 x i8> %i.bi to <16 x i32>
  %i.bk = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.bj)
  %op.rdx.15 = add i32 %i.bk, %op.rdx.14
  ret i32 %op.rdx.15
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i32 @pix_norm1_c(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #2 {
bb.a:
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.042 = phi ptr [ %0, %bb.a ], [ %i.cb, %.preheader ] ; 5 uses
  %.03441 = phi i32 [ 0, %bb.a ], [ %i.cc, %.preheader ]
  %.03540 = phi i32 [ 0, %bb.a ], [ %op.rdx, %.preheader ]
  %i.a = load i32, ptr %.042, align 4, !tbaa !11  ; 4 uses
  %i.b = and i32 %i.a, 255
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11
  %i.f = lshr i32 %i.a, 8
  %i.g = and i32 %i.f, 255
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !11
  %i.k = lshr i32 %i.a, 16
  %i.l = and i32 %i.k, 255
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !11
  %i.p = lshr i32 %i.a, 24
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %.042, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !11   ; 4 uses
  %i.v = and i32 %i.u, 255
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !11
  %i.z = lshr i32 %i.u, 8
  %i.aa = and i32 %i.z, 255
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !11
  %i.ae = lshr i32 %i.u, 16
  %i.af = and i32 %i.ae, 255
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !11
  %i.aj = lshr i32 %i.u, 24
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !11 ; 4 uses
  %i.ap = and i32 %i.ao, 255
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !11
  %i.at = lshr i32 %i.ao, 8
  %i.au = and i32 %i.at, 255
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !11
  %i.ay = lshr i32 %i.ao, 16
  %i.az = and i32 %i.ay, 255
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !11
  %i.bd = lshr i32 %i.ao, 24
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %.042, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !11 ; 4 uses
  %i.bj = and i32 %i.bi, 255
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !11
  %i.bn = lshr i32 %i.bi, 8
  %i.bo = and i32 %i.bn, 255
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !11
  %i.bs = lshr i32 %i.bi, 16
  %i.bt = and i32 %i.bs, 255
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !11
  %i.bx = lshr i32 %i.bi, 24
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_square_tab, i64 1024), i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !11
  %2 = insertelement <16 x i32> poison, i32 %i.e, i64 0
  %3 = insertelement <16 x i32> %2, i32 %i.j, i64 1
  %4 = insertelement <16 x i32> %3, i32 %i.o, i64 2
  %5 = insertelement <16 x i32> %4, i32 %i.s, i64 3
  %6 = insertelement <16 x i32> %5, i32 %i.y, i64 4
  %7 = insertelement <16 x i32> %6, i32 %i.ad, i64 5
  %8 = insertelement <16 x i32> %7, i32 %i.ai, i64 6
  %9 = insertelement <16 x i32> %8, i32 %i.am, i64 7
  %10 = insertelement <16 x i32> %9, i32 %i.as, i64 8
  %11 = insertelement <16 x i32> %10, i32 %i.ax, i64 9
  %12 = insertelement <16 x i32> %11, i32 %i.bc, i64 10
  %13 = insertelement <16 x i32> %12, i32 %i.bg, i64 11
  %14 = insertelement <16 x i32> %13, i32 %i.bm, i64 12
  %15 = insertelement <16 x i32> %14, i32 %i.br, i64 13
  %16 = insertelement <16 x i32> %15, i32 %i.bw, i64 14
  %17 = insertelement <16 x i32> %16, i32 %i.ca, i64 15
  %18 = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %17)
  %op.rdx = add i32 %18, %.03540                  ; 2 uses
  %i.cb = getelementptr i8, ptr %.042, i64 %1
  %i.cc = add nuw nsw i32 %.03441, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cc, 16
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !35

bb.b:                                             ; preds = %.preheader
  ret i32 %op.rdx
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @draw_edges_8_c(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #1 {
bb.a:
  %i.a = icmp sgt i32 %3, 0                       ; 3 uses
  switch i32 %4, label %.preheader51 [
    i32 16, label %.preheader52
    i32 8, label %.preheader54
  ]

.preheader54:                                     ; preds = %bb.a
  br i1 %i.a, label %.lr.ph, label %draw_edges_lr.exit48

.lr.ph:                                           ; preds = %.preheader54
  %i.b = sext i32 %2 to i64                       ; 5 uses
  %xtraiter = and i32 %3, 3                       ; 3 uses
  %i.c = icmp ult i32 %3, 4
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %3, 2147483644
  br label %bb.c

.preheader52:                                     ; preds = %bb.a
  br i1 %i.a, label %.lr.ph60, label %draw_edges_lr.exit48

.lr.ph60:                                         ; preds = %.preheader52
  %i.d = sext i32 %2 to i64                       ; 5 uses
  %xtraiter90 = and i32 %3, 3                     ; 3 uses
  %i.e = icmp ult i32 %3, 4
  br i1 %i.e, label %.epil.preheader89, label %.lr.ph60.new

.lr.ph60.new:                                     ; preds = %.lr.ph60
  %unroll_iter94 = and i32 %3, 2147483644
  br label %bb.b

.preheader51:                                     ; preds = %bb.a
  br i1 %i.a, label %.lr.ph63, label %draw_edges_lr.exit48

.lr.ph63:                                         ; preds = %.preheader51
  %i.f = sext i32 %2 to i64                       ; 5 uses
  %xtraiter97 = and i32 %3, 3                     ; 3 uses
  %i.g = icmp ult i32 %3, 4
  br i1 %i.g, label %.epil.preheader96, label %.lr.ph63.new

.lr.ph63.new:                                     ; preds = %.lr.ph63
  %unroll_iter101 = and i32 %3, 2147483644
  br label %bb.d

bb.b:                                             ; preds = %bb.b, %.lr.ph60.new
  %.013.i4658 = phi ptr [ %0, %.lr.ph60.new ], [ %i.ae, %bb.b ] ; 4 uses
  %niter95 = phi i32 [ 0, %.lr.ph60.new ], [ %niter95.next.3, %bb.b ]
  %i.h = getelementptr inbounds i8, ptr %.013.i4658, i64 -16
  %i.i = load i8, ptr %.013.i4658, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.h, i8 %i.i, i64 16, i1 false)
  %i.j = getelementptr inbounds i8, ptr %.013.i4658, i64 %i.d ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.j, i8 %i.l, i64 16, i1 false)
  %i.m = getelementptr inbounds i8, ptr %.013.i4658, i64 %1 ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -16
  %i.o = load i8, ptr %i.m, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 %i.o, i64 16, i1 false)
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.d ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 %i.r, i64 16, i1 false)
  %i.s = getelementptr inbounds i8, ptr %i.m, i64 %1 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  %i.u = load i8, ptr %i.s, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.t, i8 %i.u, i64 16, i1 false)
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %i.d ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.v, i8 %i.x, i64 16, i1 false)
  %i.y = getelementptr inbounds i8, ptr %i.s, i64 %1 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -16
  %i.aa = load i8, ptr %i.y, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.z, i8 %i.aa, i64 16, i1 false)
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 %i.d ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ab, i8 %i.ad, i64 16, i1 false)
  %i.ae = getelementptr inbounds i8, ptr %i.y, i64 %1 ; 2 uses
  %niter95.next.3 = add nuw nsw i32 %niter95, 4   ; 2 uses
  %niter95.ncmp.3 = icmp eq i32 %niter95.next.3, %unroll_iter94
  br i1 %niter95.ncmp.3, label %draw_edges_lr.exit48.loopexit86.unr-lcssa, label %bb.b, !llvm.loop !36

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %.013.i4356 = phi ptr [ %0, %.lr.ph.new ], [ %i.bc, %bb.c ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.af = getelementptr inbounds i8, ptr %.013.i4356, i64 -8
  %i.ag = load i8, ptr %.013.i4356, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.af, i8 %i.ag, i64 8, i1 false)
  %i.ah = getelementptr inbounds i8, ptr %.013.i4356, i64 %i.b ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 -1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.ah, i8 %i.aj, i64 8, i1 false)
  %i.ak = getelementptr inbounds i8, ptr %.013.i4356, i64 %1 ; 4 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.al, i8 %i.am, i64 8, i1 false)
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 %i.b ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 -1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.an, i8 %i.ap, i64 8, i1 false)
  %i.aq = getelementptr inbounds i8, ptr %i.ak, i64 %1 ; 4 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %i.as = load i8, ptr %i.aq, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.ar, i8 %i.as, i64 8, i1 false)
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 %i.b ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.at, i8 %i.av, i64 8, i1 false)
  %i.aw = getelementptr inbounds i8, ptr %i.aq, i64 %1 ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -8
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.ax, i8 %i.ay, i64 8, i1 false)
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 %i.b ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 -1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.az, i8 %i.bb, i64 8, i1 false)
  %i.bc = getelementptr inbounds i8, ptr %i.aw, i64 %1 ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %draw_edges_lr.exit48.loopexit87.unr-lcssa, label %bb.c, !llvm.loop !36

bb.d:                                             ; preds = %bb.d, %.lr.ph63.new
  %.013.i61 = phi ptr [ %0, %.lr.ph63.new ], [ %i.ca, %bb.d ] ; 4 uses
  %niter102 = phi i32 [ 0, %.lr.ph63.new ], [ %niter102.next.3, %bb.d ]
  %i.bd = getelementptr inbounds i8, ptr %.013.i61, i64 -4
  %i.be = load i8, ptr %.013.i61, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.bd, i8 %i.be, i64 4, i1 false)
  %i.bf = getelementptr inbounds i8, ptr %.013.i61, i64 %i.f ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 -1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.bf, i8 %i.bh, i64 4, i1 false)
  %i.bi = getelementptr inbounds i8, ptr %.013.i61, i64 %1 ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -4
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.bj, i8 %i.bk, i64 4, i1 false)
  %i.bl = getelementptr inbounds i8, ptr %i.bi, i64 %i.f ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 -1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.bl, i8 %i.bn, i64 4, i1 false)
  %i.bo = getelementptr inbounds i8, ptr %i.bi, i64 %1 ; 4 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.bp, i8 %i.bq, i64 4, i1 false)
  %i.br = getelementptr inbounds i8, ptr %i.bo, i64 %i.f ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 -1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.br, i8 %i.bt, i64 4, i1 false)
  %i.bu = getelementptr inbounds i8, ptr %i.bo, i64 %1 ; 4 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bw = load i8, ptr %i.bu, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.bv, i8 %i.bw, i64 4, i1 false)
  %i.bx = getelementptr inbounds i8, ptr %i.bu, i64 %i.f ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 -1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.bx, i8 %i.bz, i64 4, i1 false)
  %i.ca = getelementptr inbounds i8, ptr %i.bu, i64 %1 ; 2 uses
  %niter102.next.3 = add nuw nsw i32 %niter102, 4 ; 2 uses
  %niter102.ncmp.3 = icmp eq i32 %niter102.next.3, %unroll_iter101
  br i1 %niter102.ncmp.3, label %draw_edges_lr.exit48.loopexit.unr-lcssa, label %bb.d, !llvm.loop !36

draw_edges_lr.exit48.loopexit.unr-lcssa:          ; preds = %bb.d
  %lcmp.mod99.not = icmp eq i32 %xtraiter97, 0
  br i1 %lcmp.mod99.not, label %draw_edges_lr.exit48, label %.epil.preheader96

.epil.preheader96:                                ; preds = %draw_edges_lr.exit48.loopexit.unr-lcssa, %.lr.ph63
  %.013.i61.epil.init = phi ptr [ %0, %.lr.ph63 ], [ %i.ca, %draw_edges_lr.exit48.loopexit.unr-lcssa ]
  %lcmp.mod100 = icmp ne i32 %xtraiter97, 0
  tail call void @llvm.assume(i1 %lcmp.mod100)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader96
  %.013.i61.epil = phi ptr [ %.013.i61.epil.init, %.epil.preheader96 ], [ %i.cg, %bb.e ] ; 4 uses
  %epil.iter98 = phi i32 [ 0, %.epil.preheader96 ], [ %epil.iter98.next, %bb.e ]
  %i.cb = getelementptr inbounds i8, ptr %.013.i61.epil, i64 -4
  %i.cc = load i8, ptr %.013.i61.epil, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.cb, i8 %i.cc, i64 4, i1 false)
  %i.cd = getelementptr inbounds i8, ptr %.013.i61.epil, i64 %i.f ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 -1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.cd, i8 %i.cf, i64 4, i1 false)
  %i.cg = getelementptr inbounds i8, ptr %.013.i61.epil, i64 %1
  %epil.iter98.next = add i32 %epil.iter98, 1     ; 2 uses
  %epil.iter98.cmp.not = icmp eq i32 %epil.iter98.next, %xtraiter97
  br i1 %epil.iter98.cmp.not, label %draw_edges_lr.exit48, label %bb.e, !llvm.loop !37

draw_edges_lr.exit48.loopexit86.unr-lcssa:        ; preds = %bb.b
end_hunk_0
