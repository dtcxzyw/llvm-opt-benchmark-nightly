inline.NumInlined: 52
inline.NumDeleted: 12
begin_hunk_0_@DC8uvNoTop_C:bb.a
  %i.x = add nuw nsw i16 %i.s, %i.w
  %i.y = getelementptr i8, ptr %0, i64 160
  %i.z = getelementptr i8, ptr %0, i64 159
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !12
  %i.ab = zext i8 %i.aa to i16
  %i.ac = add nuw nsw i16 %i.x, %i.ab
  %i.ad = getelementptr i8, ptr %0, i64 192
  %i.ae = getelementptr i8, ptr %0, i64 191
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !12
  %i.ag = zext i8 %i.af to i16
  %i.ah = add nuw nsw i16 %i.ac, %i.ag
  %i.ai = getelementptr i8, ptr %0, i64 224
  %i.aj = getelementptr i8, ptr %0, i64 223
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !12
  %i.al = zext i8 %i.ak to i16
  %i.am = add nuw nsw i16 %i.ah, %i.al
  %i.an = lshr i16 %i.am, 3
  %i.ao = trunc nuw i16 %i.an to i8               ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %0, i8 %i.ao, i64 8, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.e, i8 %i.ao, i64 8, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.j, i8 %i.ao, i64 8, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.o, i8 %i.ao, i64 8, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.t, i8 %i.ao, i64 8, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.y, i8 %i.ao, i64 8, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.ad, i8 %i.ao, i64 8, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.ai, i8 %i.ao, i64 8, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @DC8uvNoLeft_C(ptr noundef captures(none) initializes((0, 8), (32, 40), (64, 72), (96, 104), (128, 136), (160, 168), (192, 200), (224, 232)) %0) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -32
  %i.b = load <8 x i8>, ptr %i.a, align 1, !tbaa !12
  %i.c = zext <8 x i8> %i.b to <8 x i16>
  %i.d = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.c)
  %op.rdx = add nuw nsw i16 %i.d, 4
  %i.e = lshr i16 %op.rdx, 3
  %i.f = trunc nuw i16 %i.e to i8                 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %0, i8 %i.f, i64 8, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.g, i8 %i.f, i64 8, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.h, i8 %i.f, i64 8, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.i, i8 %i.f, i64 8, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.j, i8 %i.f, i64 8, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.k, i8 %i.f, i64 8, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.l, i8 %i.f, i64 8, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.m, i8 %i.f, i64 8, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @DC8uvNoTopLeft_C(ptr noundef writeonly captures(none) initializes((0, 8), (32, 40), (64, 72), (96, 104), (128, 136), (160, 168), (192, 200), (224, 232)) %0) #6 {
bb.a:
  store i64 -9187201950435737472, ptr %0, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -9187201950435737472, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -9187201950435737472, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 -9187201950435737472, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 -9187201950435737472, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 -9187201950435737472, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 -9187201950435737472, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 -9187201950435737472, ptr %i.g, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @DitherCombine8x8_C(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef captures(none) %1, i32 noundef %2) #7 {
.preheader.lver.check:
  %i.a = sext i32 %2 to i64                       ; 8 uses
  %ident.check.not = icmp eq i32 %2, 1
  br i1 %ident.check.not, label %.preheader.ph, label %.preheader.lver.orig

.preheader.lver.orig:                             ; preds = %.preheader.lver.check
  %i.b = load <8 x i8>, ptr %0, align 1, !tbaa !12
  %i.c = zext <8 x i8> %i.b to <8 x i32>
  %i.d = add nsw <8 x i32> %i.c, splat (i32 -120)
  %i.e = ashr <8 x i32> %i.d, splat (i32 4)
  %i.f = load <8 x i8>, ptr %1, align 1, !tbaa !12
  %i.g = zext <8 x i8> %i.f to <8 x i32>
  %i.h = add nsw <8 x i32> %i.e, %i.g
  %i.i = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.h, <8 x i32> zeroinitializer)
  %i.j = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.i, <8 x i32> splat (i32 255))
  %i.k = trunc nuw <8 x i32> %i.j to <8 x i8>
  store <8 x i8> %i.k, ptr %1, align 1, !tbaa !12
  %i.l = getelementptr inbounds i8, ptr %1, i64 %i.a ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load <8 x i8>, ptr %i.m, align 1, !tbaa !12
  %i.o = zext <8 x i8> %i.n to <8 x i32>
  %i.p = add nsw <8 x i32> %i.o, splat (i32 -120)
  %i.q = ashr <8 x i32> %i.p, splat (i32 4)
  %i.r = load <8 x i8>, ptr %i.l, align 1, !tbaa !12
  %i.s = zext <8 x i8> %i.r to <8 x i32>
  %i.t = add nsw <8 x i32> %i.q, %i.s
  %i.u = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.t, <8 x i32> zeroinitializer)
  %i.v = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.u, <8 x i32> splat (i32 255))
  %i.w = trunc nuw <8 x i32> %i.v to <8 x i8>
  store <8 x i8> %i.w, ptr %i.l, align 1, !tbaa !12
  %i.x = getelementptr inbounds i8, ptr %i.l, i64 %i.a ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load <8 x i8>, ptr %i.y, align 1, !tbaa !12
  %i.aa = zext <8 x i8> %i.z to <8 x i32>
  %i.ab = add nsw <8 x i32> %i.aa, splat (i32 -120)
  %i.ac = ashr <8 x i32> %i.ab, splat (i32 4)
  %i.ad = load <8 x i8>, ptr %i.x, align 1, !tbaa !12
  %i.ae = zext <8 x i8> %i.ad to <8 x i32>
  %i.af = add nsw <8 x i32> %i.ac, %i.ae
  %i.ag = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.af, <8 x i32> zeroinitializer)
  %i.ah = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ag, <8 x i32> splat (i32 255))
  %i.ai = trunc nuw <8 x i32> %i.ah to <8 x i8>
  store <8 x i8> %i.ai, ptr %i.x, align 1, !tbaa !12
  %i.aj = getelementptr inbounds i8, ptr %i.x, i64 %i.a ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load <8 x i8>, ptr %i.ak, align 1, !tbaa !12
  %i.am = zext <8 x i8> %i.al to <8 x i32>
  %i.an = add nsw <8 x i32> %i.am, splat (i32 -120)
  %i.ao = ashr <8 x i32> %i.an, splat (i32 4)
  %i.ap = load <8 x i8>, ptr %i.aj, align 1, !tbaa !12
  %i.aq = zext <8 x i8> %i.ap to <8 x i32>
  %i.ar = add nsw <8 x i32> %i.ao, %i.aq
  %i.as = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ar, <8 x i32> zeroinitializer)
  %i.at = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.as, <8 x i32> splat (i32 255))
  %i.au = trunc nuw <8 x i32> %i.at to <8 x i8>
  store <8 x i8> %i.au, ptr %i.aj, align 1, !tbaa !12
  %i.av = getelementptr inbounds i8, ptr %i.aj, i64 %i.a ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ax = load <8 x i8>, ptr %i.aw, align 1, !tbaa !12
  %i.ay = zext <8 x i8> %i.ax to <8 x i32>
  %i.az = add nsw <8 x i32> %i.ay, splat (i32 -120)
  %i.ba = ashr <8 x i32> %i.az, splat (i32 4)
  %i.bb = load <8 x i8>, ptr %i.av, align 1, !tbaa !12
  %i.bc = zext <8 x i8> %i.bb to <8 x i32>
  %i.bd = add nsw <8 x i32> %i.ba, %i.bc
  %i.be = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bd, <8 x i32> zeroinitializer)
  %i.bf = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.be, <8 x i32> splat (i32 255))
  %i.bg = trunc nuw <8 x i32> %i.bf to <8 x i8>
  store <8 x i8> %i.bg, ptr %i.av, align 1, !tbaa !12
  %i.bh = getelementptr inbounds i8, ptr %i.av, i64 %i.a ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load <8 x i8>, ptr %i.bi, align 1, !tbaa !12
  %i.bk = zext <8 x i8> %i.bj to <8 x i32>
  %i.bl = add nsw <8 x i32> %i.bk, splat (i32 -120)
  %i.bm = ashr <8 x i32> %i.bl, splat (i32 4)
  %i.bn = load <8 x i8>, ptr %i.bh, align 1, !tbaa !12
  %i.bo = zext <8 x i8> %i.bn to <8 x i32>
  %i.bp = add nsw <8 x i32> %i.bm, %i.bo
  %i.bq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bp, <8 x i32> zeroinitializer)
  %i.br = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.bq, <8 x i32> splat (i32 255))
  %i.bs = trunc nuw <8 x i32> %i.br to <8 x i8>
  store <8 x i8> %i.bs, ptr %i.bh, align 1, !tbaa !12
  %i.bt = getelementptr inbounds i8, ptr %i.bh, i64 %i.a ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bv = load <8 x i8>, ptr %i.bu, align 1, !tbaa !12
  %i.bw = zext <8 x i8> %i.bv to <8 x i32>
  %i.bx = add nsw <8 x i32> %i.bw, splat (i32 -120)
  %i.by = ashr <8 x i32> %i.bx, splat (i32 4)
  %i.bz = load <8 x i8>, ptr %i.bt, align 1, !tbaa !12
  %i.ca = zext <8 x i8> %i.bz to <8 x i32>
  %i.cb = add nsw <8 x i32> %i.by, %i.ca
  %i.cc = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cb, <8 x i32> zeroinitializer)
  %i.cd = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.cc, <8 x i32> splat (i32 255))
  %i.ce = trunc nuw <8 x i32> %i.cd to <8 x i8>
  store <8 x i8> %i.ce, ptr %i.bt, align 1, !tbaa !12
  %i.cf = getelementptr inbounds i8, ptr %i.bt, i64 %i.a ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ch = load <8 x i8>, ptr %i.cg, align 1, !tbaa !12
  %i.ci = zext <8 x i8> %i.ch to <8 x i32>
  %i.cj = add nsw <8 x i32> %i.ci, splat (i32 -120)
  %i.ck = ashr <8 x i32> %i.cj, splat (i32 4)
  %i.cl = load <8 x i8>, ptr %i.cf, align 1, !tbaa !12
  %i.cm = zext <8 x i8> %i.cl to <8 x i32>
  %i.cn = add nsw <8 x i32> %i.ck, %i.cm
  %i.co = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cn, <8 x i32> zeroinitializer)
  %i.cp = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.co, <8 x i32> splat (i32 255))
  %i.cq = trunc nuw <8 x i32> %i.cp to <8 x i8>
  store <8 x i8> %i.cq, ptr %i.cf, align 1, !tbaa !12
  br label %.loopexit

.preheader.ph:                                    ; preds = %.preheader.lver.check
  %scevgep = getelementptr i8, ptr %1, i64 6
  %load_initial = load i8, ptr %scevgep, align 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.ph, %.preheader
  %store_forwarded = phi i8 [ %load_initial, %.preheader.ph ], [ %i.dg, %.preheader ]
  %.020 = phi ptr [ %0, %.preheader.ph ], [ %i.de, %.preheader ] ; 2 uses
  %.01419 = phi ptr [ %1, %.preheader.ph ], [ %i.dd, %.preheader ] ; 5 uses
  %.01518 = phi i32 [ 0, %.preheader.ph ], [ %i.df, %.preheader ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.01419, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %.01419, i64 7
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !12
  %i.cu = load <8 x i8>, ptr %.020, align 1, !tbaa !12
  %i.cv = zext <8 x i8> %i.cu to <8 x i32>
  %i.cw = add nsw <8 x i32> %i.cv, splat (i32 -120)
  %i.cx = ashr <8 x i32> %i.cw, splat (i32 4)
  %i.cy = load <2 x i8>, ptr %i.cr, align 1, !tbaa !12
  %3 = shufflevector <2 x i8> %i.cy, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %4 = insertelement <4 x i8> %3, i8 %store_forwarded, i64 2
  %5 = insertelement <4 x i8> %4, i8 %i.ct, i64 3
  %6 = load <4 x i8>, ptr %.01419, align 1, !tbaa !12
  %7 = zext <4 x i8> %6 to <4 x i32>
  %8 = zext <4 x i8> %5 to <4 x i32>
  %9 = shufflevector <4 x i32> %7, <4 x i32> %8, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cz = add nsw <8 x i32> %i.cx, %9
  %i.da = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cz, <8 x i32> zeroinitializer)
  %i.db = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.da, <8 x i32> splat (i32 255))
  %i.dc = trunc nuw <8 x i32> %i.db to <8 x i8>   ; 2 uses
  store <8 x i8> %i.dc, ptr %.01419, align 1, !tbaa !12
  %i.dd = getelementptr inbounds nuw i8, ptr %.01419, i64 %i.a
  %i.de = getelementptr inbounds nuw i8, ptr %.020, i64 8
  %i.df = add nuw nsw i32 %.01518, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.df, 8
  %i.dg = extractelement <8 x i8> %i.dc, i64 7
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !19

.loopexit:                                        ; preds = %.preheader, %.preheader.lver.orig
  ret void
}

declare void @VP8DspInitSSE2() local_unnamed_addr #2

declare void @VP8DspInitSSE41() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @TransformOne_C(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef captures(none) %1) unnamed_addr #3 {
.preheader.preheader:
  %i.a = load i16, ptr %0, align 2, !tbaa !10
  %i.b = sext i16 %i.a to i32                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i16, ptr %i.c, align 2, !tbaa !10
  %i.e = sext i16 %i.d to i32                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i16, ptr %i.g, align 2, !tbaa !10
  %i.i = sext i16 %i.h to i32                     ; 3 uses
  %i.j = mul nsw i32 %i.i, 20091
  %i.k = ashr i32 %i.j, 16
  %i.l = add nsw i32 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.p = load i16, ptr %i.o, align 2, !tbaa !10
  %i.q = sext i16 %i.p to i32                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.s = load i16, ptr %i.r, align 2, !tbaa !10
  %i.t = sext i16 %i.s to i32                     ; 3 uses
  %i.u = mul nsw i32 %i.t, 35468
  %i.v = ashr i32 %i.u, 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.x = load i16, ptr %i.w, align 2, !tbaa !10
  %i.y = sext i16 %i.x to i32                     ; 3 uses
  %i.z = mul nsw i32 %i.y, 20091
  %i.aa = ashr i32 %i.z, 16
  %i.ab = add nsw i32 %i.aa, %i.y
  %i.ac = sub nsw i32 %i.v, %i.ab                 ; 2 uses
  %i.ad = mul nsw i32 %i.t, 20091
  %i.ae = ashr i32 %i.ad, 16
  %i.af = mul nsw i32 %i.y, 35468
  %i.ag = ashr i32 %i.af, 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !10
  %i.al = sext i16 %i.ak to i32                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.an = load i16, ptr %i.am, align 2, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !10
  %i.aq = sext i16 %i.ap to i32                   ; 3 uses
  %i.ar = mul nsw i32 %i.aq, 20091
  %i.as = ashr i32 %i.ar, 16
  %i.at = add nsw i32 %i.as, %i.aq
  %i.au = mul nsw i32 %i.aq, 35468
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !10
  %i.ay = sext i16 %i.ax to i32                   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !10
  %i.bb = sext i16 %i.ba to i32                   ; 3 uses
  %i.bc = mul nsw i32 %i.bb, 35468
  %i.bd = ashr i32 %i.bc, 16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !10
  %i.bg = sext i16 %i.bf to i32                   ; 3 uses
  %i.bh = mul nsw i32 %i.bg, 20091
  %i.bi = ashr i32 %i.bh, 16
  %i.bj = add nsw i32 %i.bi, %i.bg
  %i.bk = sub nsw i32 %i.bd, %i.bj                ; 2 uses
  %i.bl = mul nsw i32 %i.bb, 20091
  %i.bm = ashr i32 %i.bl, 16
  %i.bn = mul nsw i32 %i.bg, 35468
  %i.bo = ashr i32 %i.bn, 16
  %i.bp = load i16, ptr %i.f, align 2, !tbaa !10
  %i.bq = load i16, ptr %i.av, align 2, !tbaa !10
  %i.br = sext i16 %i.an to i32                   ; 3 uses
  %i.bs = sext i16 %i.bp to i32                   ; 3 uses
  %i.bt = sext i16 %i.n to i32                    ; 2 uses
  %i.bu = sext i16 %i.bq to i32                   ; 2 uses
  %i.bv = mul nsw i32 %i.bs, 20091
  %i.bw = ashr i32 %i.bv, 16
  %i.bx = ashr i32 %i.au, 16
  %i.by = mul nsw i32 %i.br, 20091
  %i.bz = mul nsw i32 %i.i, 35468
  %i.ca = add nsw i32 %i.ae, %i.t
  %i.cb = add nsw i32 %i.bm, %i.bb
  %i.cc = ashr i32 %i.by, 16
  %i.cd = ashr i32 %i.bz, 16
  %i.ce = add nsw i32 %i.ay, %i.bu                ; 2 uses
  %i.cf = add nsw i32 %i.q, %i.bt                 ; 2 uses
  %i.cg = add nsw i32 %i.cb, %i.bo                ; 2 uses
  %i.ch = add nsw i32 %i.ca, %i.ag                ; 2 uses
  %i.ci = add nsw i32 %i.cc, %i.br
  %i.cj = add nsw i32 %i.cg, %i.ce                ; 3 uses
  %i.ck = add nsw i32 %i.ch, %i.cf                ; 3 uses
  %i.cl = add nsw i32 %i.ci, %i.bx                ; 2 uses
  %i.cm = mul nsw i32 %i.ck, 35468
  %i.cn = mul nsw i32 %i.cj, 35468
  %i.co = mul nsw i32 %i.cj, 20091
  %i.cp = ashr i32 %i.co, 16
  %i.cq = mul nsw i32 %i.ck, 20091
  %i.cr = ashr i32 %i.cq, 16
  %i.cs = add nsw i32 %i.cj, %i.cp
  %i.ct = add nsw i32 %i.cr, %i.ck
  %i.cu = ashr i32 %i.cm, 16
  %i.cv = ashr i32 %i.cn, 16
  %i.cw = sub nsw i32 %i.cu, %i.cs                ; 2 uses
  %i.cx = add nsw i32 %i.ct, %i.cv                ; 2 uses
  %i.cy = load <4 x i8>, ptr %1, align 1, !tbaa !12
  %i.cz = zext <4 x i8> %i.cy to <4 x i32>
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.db = mul nsw i32 %i.br, 35468
  %i.dc = mul nsw i32 %i.bs, 35468
  %i.dd = sub nsw i32 %i.bt, %i.q                 ; 2 uses
  %i.de = sub nsw i32 %i.bu, %i.ay                ; 2 uses
  %i.df = ashr i32 %i.db, 16
  %i.dg = ashr i32 %i.dc, 16
  %i.dh = add nsw i32 %i.ac, %i.dd                ; 3 uses
  %i.di = add nsw i32 %i.bk, %i.de                ; 3 uses
  %i.dj = sub nsw i32 %i.df, %i.at                ; 2 uses
  %i.dk = sub nsw i32 %i.dg, %i.l                 ; 2 uses
  %i.dl = mul nsw i32 %i.dh, 35468
  %i.dm = mul nsw i32 %i.di, 35468
  %i.dn = mul nsw i32 %i.di, 20091
  %i.do = ashr i32 %i.dn, 16
  %i.dp = mul nsw i32 %i.dh, 20091
  %i.dq = ashr i32 %i.dp, 16
  %i.dr = add nsw i32 %i.di, %i.do
  %i.ds = add nsw i32 %i.dq, %i.dh
  %i.dt = ashr i32 %i.dl, 16
  %i.du = ashr i32 %i.dm, 16
  %i.dv = sub nsw i32 %i.dt, %i.dr                ; 2 uses
  %i.dw = add nsw i32 %i.ds, %i.du                ; 2 uses
  %i.dx = load <4 x i8>, ptr %i.da, align 1, !tbaa !12
  %i.dy = zext <4 x i8> %i.dx to <4 x i32>
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ea = sext i16 %i.ai to i32                   ; 2 uses
  %i.eb = sub nsw i32 %i.b, %i.e                  ; 2 uses
  %i.ec = sub nsw i32 %i.dd, %i.ac                ; 3 uses
  %i.ed = sub nsw i32 %i.de, %i.bk                ; 3 uses
  %i.ee = add nsw i32 %i.dk, %i.eb
  %i.ef = sub nsw i32 %i.ea, %i.al                ; 2 uses
  %i.eg = sub nsw i32 %i.eb, %i.dk
  %i.eh = mul nsw i32 %i.ec, 35468
  %i.ei = mul nsw i32 %i.ed, 35468
  %i.ej = add nsw i32 %i.dj, %i.ef                ; 2 uses
  %i.ek = add nsw i32 %i.ee, 4                    ; 2 uses
  %i.el = add nsw i32 %i.ek, %i.ej                ; 2 uses
  %i.em = sub nsw i32 %i.ek, %i.ej                ; 2 uses
  %i.en = sub nsw i32 %i.el, %i.dw
  %i.eo = sub nsw i32 %i.em, %i.dv
  %i.ep = add nsw i32 %i.dv, %i.em
  %i.eq = add nsw i32 %i.dw, %i.el
  %i.er = insertelement <4 x i32> poison, i32 %i.eq, i64 0
  %i.es = insertelement <4 x i32> %i.er, i32 %i.ep, i64 1
  %i.et = insertelement <4 x i32> %i.es, i32 %i.eo, i64 2
  %i.eu = insertelement <4 x i32> %i.et, i32 %i.en, i64 3
  %i.ev = ashr <4 x i32> %i.eu, splat (i32 3)
  %i.ew = add nsw <4 x i32> %i.ev, %i.dy
  %i.ex = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ew, <4 x i32> zeroinitializer)
  %i.ey = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ex, <4 x i32> splat (i32 255))
  %i.ez = trunc nuw <4 x i32> %i.ey to <4 x i8>
  store <4 x i8> %i.ez, ptr %i.da, align 1, !tbaa !12
  %i.fa = mul nsw i32 %i.ed, 20091
  %i.fb = ashr i32 %i.fa, 16
  %i.fc = mul nsw i32 %i.ec, 20091
  %i.fd = ashr i32 %i.fc, 16
  %i.fe = sub nsw i32 %i.ef, %i.dj                ; 2 uses
  %i.ff = ashr i32 %i.eh, 16
  %i.fg = ashr i32 %i.ei, 16
  %i.fh = add nsw i32 %i.eg, 4                    ; 2 uses
  %i.fi = add nsw i32 %i.ed, %i.fb
  %i.fj = add nsw i32 %i.fd, %i.ec
  %i.fk = add nsw i32 %i.fh, %i.fe                ; 2 uses
  %i.fl = sub nsw i32 %i.fh, %i.fe                ; 2 uses
  %i.fm = sub nsw i32 %i.ff, %i.fi                ; 2 uses
  %i.fn = add nsw i32 %i.fj, %i.fg                ; 2 uses
  %i.fo = load <4 x i8>, ptr %i.dz, align 1, !tbaa !12
  %i.fp = zext <4 x i8> %i.fo to <4 x i32>
  %i.fq = sub nsw i32 %i.fk, %i.fn
  %i.fr = sub nsw i32 %i.fl, %i.fm
  %i.fs = add nsw i32 %i.fm, %i.fl
  %i.ft = add nsw i32 %i.fn, %i.fk
  %i.fu = insertelement <4 x i32> poison, i32 %i.ft, i64 0
end_hunk_0
