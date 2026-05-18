inline.NumInlined: 52
inline.NumDeleted: 12
begin_hunk_0_@DC8uvNoTop_C:bb.a
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
  %store_forwarded = phi i8 [ %load_initial, %.preheader.ph ], [ %i.dm, %.preheader ]
  %.020 = phi ptr [ %0, %.preheader.ph ], [ %i.dk, %.preheader ] ; 2 uses
  %.01419 = phi ptr [ %1, %.preheader.ph ], [ %i.dj, %.preheader ] ; 5 uses
  %.01518 = phi i32 [ 0, %.preheader.ph ], [ %i.dl, %.preheader ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.01419, i64 2
  %i.cs = getelementptr inbounds nuw i8, ptr %.01419, i64 7
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !12
  %i.cu = load <8 x i8>, ptr %.020, align 1, !tbaa !12
  %i.cv = zext <8 x i8> %i.cu to <8 x i32>
  %i.cw = add nsw <8 x i32> %i.cv, splat (i32 -120)
  %i.cx = ashr <8 x i32> %i.cw, splat (i32 4)
  %3 = zext i8 %i.ct to i32
  %4 = zext i8 %store_forwarded to i32
  %i.cy = load <4 x i8>, ptr %i.cr, align 1, !tbaa !12
  %i.cz = load <2 x i8>, ptr %.01419, align 1, !tbaa !12
  %i.da = zext <2 x i8> %i.cz to <2 x i32>
  %i.db = shufflevector <2 x i32> %i.da, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dc = zext <4 x i8> %i.cy to <4 x i32>
  %i.dd = shufflevector <4 x i32> %i.dc, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.de = shufflevector <8 x i32> %i.db, <8 x i32> %i.dd, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %5 = insertelement <8 x i32> %i.de, i32 %4, i64 6
  %6 = insertelement <8 x i32> %5, i32 %3, i64 7
  %i.df = add nsw <8 x i32> %i.cx, %6
  %i.dg = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.df, <8 x i32> zeroinitializer)
  %i.dh = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.dg, <8 x i32> splat (i32 255))
  %i.di = trunc nuw <8 x i32> %i.dh to <8 x i8>   ; 2 uses
  store <8 x i8> %i.di, ptr %.01419, align 1, !tbaa !12
  %i.dj = getelementptr inbounds nuw i8, ptr %.01419, i64 %i.a
  %i.dk = getelementptr inbounds nuw i8, ptr %.020, i64 8
  %i.dl = add nuw nsw i32 %.01518, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.dl, 8
  %i.dm = extractelement <8 x i8> %i.di, i64 7
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !19

.loopexit:                                        ; preds = %.preheader, %.preheader.lver.orig
  ret void
}

declare void @VP8DspInitSSE2() local_unnamed_addr #2

declare void @VP8DspInitSSE41() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @TransformOne_C(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef captures(none) %1) unnamed_addr #3 {
.preheader.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.g = load i16, ptr %i.f, align 2, !tbaa !10
  %i.h = sext i16 %i.g to i32                     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.j = mul nsw i32 %i.h, 20091
  %i.k = ashr i32 %i.j, 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i16, ptr %i.n, align 2, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.t = load i16, ptr %i.s, align 2, !tbaa !10
  %i.u = sext i16 %i.t to i32                     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.w = mul nsw i32 %i.u, 20091
  %i.x = ashr i32 %i.w, 16
  %i.y = load i16, ptr %i.b, align 2, !tbaa !10
  %i.z = sext i16 %i.o to i32                     ; 3 uses
  %i.aa = sext i16 %i.y to i32                    ; 3 uses
  %i.ab = mul nsw i32 %i.aa, 20091
  %i.ac = ashr i32 %i.ab, 16
  %i.ad = mul nsw i32 %i.z, 20091
  %i.ae = ashr i32 %i.ad, 16
  %i.af = add nsw i32 %i.ae, %i.z
  %i.ag = load <4 x i8>, ptr %1, align 1, !tbaa !12
  %i.ah = zext <4 x i8> %i.ag to <4 x i32>
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aj = load i16, ptr %i.c, align 2, !tbaa !10
  %i.ak = load i16, ptr %i.p, align 2, !tbaa !10
  %i.al = load i16, ptr %i.v, align 2, !tbaa !10
  %i.am = load i16, ptr %i.i, align 2, !tbaa !10
  %i.an = sext i16 %i.aj to i32                   ; 3 uses
  %i.ao = sext i16 %i.ak to i32                   ; 3 uses
  %i.ap = sext i16 %i.al to i32                   ; 3 uses
  %i.aq = sext i16 %i.am to i32                   ; 3 uses
  %i.ar = mul nsw i32 %i.an, 20091
  %i.as = mul nsw i32 %i.aq, 20091
  %i.at = mul nsw i32 %i.aq, 35468
  %i.au = ashr i32 %i.at, 16
  %i.av = mul nsw i32 %i.ao, 20091
  %i.aw = mul nsw i32 %i.ao, 35468
  %i.ax = mul nsw i32 %i.ap, 20091
  %i.ay = ashr i32 %i.ar, 16
  %i.az = ashr i32 %i.av, 16
  %i.ba = ashr i32 %i.ax, 16
  %i.bb = ashr i32 %i.as, 16
  %i.bc = add nsw i32 %i.ay, %i.an
  %i.bd = add nsw i32 %i.az, %i.ao
  %i.be = add nsw i32 %i.ba, %i.ap
  %i.bf = add nsw i32 %i.bb, %i.aq
  %i.bg = mul nsw i32 %i.ap, 35468
  %i.bh = ashr i32 %i.bg, 16
  %i.bi = mul nsw i32 %i.aa, 35468
  %i.bj = mul nsw i32 %i.z, 35468
  %i.bk = mul nsw i32 %i.u, 35468
  %i.bl = mul nsw i32 %i.h, 35468
  %i.bm = ashr i32 %i.bi, 16
  %i.bn = ashr i32 %i.bj, 16
  %i.bo = ashr i32 %i.bk, 16
  %i.bp = ashr i32 %i.bl, 16
  %i.bq = sub nsw i32 %i.bm, %i.bc                ; 2 uses
  %i.br = sub nsw i32 %i.bn, %i.bd                ; 2 uses
  %i.bs = sub nsw i32 %i.bo, %i.be                ; 2 uses
  %i.bt = sub nsw i32 %i.bp, %i.bf                ; 2 uses
  %i.bu = ashr i32 %i.aw, 16
  %i.bv = mul nsw i32 %i.an, 35468
  %i.bw = ashr i32 %i.bv, 16
  %i.bx = add nsw i32 %i.af, %i.bu                ; 2 uses
  %i.by = load <4 x i8>, ptr %i.ai, align 1, !tbaa !12
  %i.bz = zext <4 x i8> %i.by to <4 x i32>
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.cb = load <4 x i8>, ptr %i.ca, align 1, !tbaa !12
  %i.cc = zext <4 x i8> %i.cb to <4 x i32>
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ce = load i16, ptr %i.a, align 2, !tbaa !10
  %i.cf = load i16, ptr %i.m, align 2, !tbaa !10
  %i.cg = load i16, ptr %i.r, align 2, !tbaa !10
  %i.ch = load i16, ptr %i.e, align 2, !tbaa !10
  %i.ci = sext i16 %i.ce to i32                   ; 2 uses
  %i.cj = sext i16 %i.cf to i32                   ; 2 uses
  %i.ck = sext i16 %i.cg to i32                   ; 2 uses
  %i.cl = sext i16 %i.ch to i32                   ; 2 uses
  %i.cm = load i16, ptr %0, align 2, !tbaa !10
  %i.cn = load i16, ptr %i.l, align 2, !tbaa !10
  %i.co = load i16, ptr %i.q, align 2, !tbaa !10
  %i.cp = load i16, ptr %i.d, align 2, !tbaa !10
  %i.cq = add nsw i32 %i.ac, %i.aa
  %i.cr = add nsw i32 %i.x, %i.u
  %i.cs = add nsw i32 %i.k, %i.h
  %i.ct = sext i16 %i.cm to i32                   ; 2 uses
  %i.cu = sext i16 %i.cn to i32                   ; 2 uses
  %i.cv = sext i16 %i.co to i32                   ; 2 uses
  %i.cw = sext i16 %i.cp to i32                   ; 2 uses
  %i.cx = sub nsw i32 %i.cv, %i.ck                ; 2 uses
  %i.cy = sub nsw i32 %i.cw, %i.cl                ; 2 uses
  %i.cz = add nsw i32 %i.cq, %i.bw                ; 2 uses
  %i.da = add nsw i32 %i.cr, %i.bh                ; 2 uses
  %i.db = add nsw i32 %i.cs, %i.au                ; 2 uses
  %i.dc = add nsw i32 %i.ci, %i.ct                ; 2 uses
  %i.dd = add nsw i32 %i.cj, %i.cu                ; 2 uses
  %i.de = add nsw i32 %i.ck, %i.cv                ; 2 uses
  %i.df = add nsw i32 %i.cl, %i.cw                ; 2 uses
  %i.dg = add nsw i32 %i.da, %i.de                ; 3 uses
  %i.dh = add nsw i32 %i.db, %i.df                ; 3 uses
  %i.di = add nsw i32 %i.cz, %i.dc
  %i.dj = mul nsw i32 %i.dh, 35468
  %i.dk = mul nsw i32 %i.dg, 35468
  %i.dl = add nsw i32 %i.bs, %i.cx                ; 3 uses
  %i.dm = add nsw i32 %i.bt, %i.cy                ; 3 uses
  %i.dn = mul nsw i32 %i.dg, 20091
  %i.do = ashr i32 %i.dn, 16
  %i.dp = mul nsw i32 %i.dh, 20091
  %i.dq = ashr i32 %i.dp, 16
  %i.dr = add nsw i32 %i.dg, %i.do
  %i.ds = add nsw i32 %i.dq, %i.dh
  %i.dt = add nsw i32 %i.di, 4                    ; 2 uses
  %i.du = ashr i32 %i.dj, 16
  %i.dv = ashr i32 %i.dk, 16
  %i.dw = sub nsw i32 %i.du, %i.dr                ; 2 uses
  %i.dx = add nsw i32 %i.ds, %i.dv                ; 2 uses
  %i.dy = mul nsw i32 %i.dm, 35468
  %i.dz = mul nsw i32 %i.dl, 20091
  %i.ea = ashr i32 %i.dz, 16
  %i.eb = mul nsw i32 %i.dm, 20091
  %i.ec = ashr i32 %i.eb, 16
  %i.ed = add nsw i32 %i.dl, %i.ea
  %i.ee = add nsw i32 %i.ec, %i.dm
  %i.ef = mul nsw i32 %i.dl, 35468
  %i.eg = ashr i32 %i.dy, 16
  %i.eh = ashr i32 %i.ef, 16
  %i.ei = sub nsw i32 %i.eg, %i.ed                ; 2 uses
  %i.ej = add nsw i32 %i.ee, %i.eh                ; 2 uses
  %i.ek = sub nsw i32 %i.dc, %i.cz
  %i.el = sub nsw i32 %i.de, %i.da                ; 3 uses
  %i.em = sub nsw i32 %i.df, %i.db                ; 3 uses
  %i.en = sub nsw i32 %i.ct, %i.ci                ; 2 uses
  %i.eo = sub nsw i32 %i.cy, %i.bt                ; 3 uses
  %i.ep = sub nsw i32 %i.cx, %i.bs                ; 3 uses
  %i.eq = add nsw i32 %i.bq, %i.en
  %i.er = add nsw i32 %i.bx, %i.dd                ; 2 uses
  %i.es = add nsw i32 %i.dt, %i.er                ; 2 uses
  %i.et = sub nsw i32 %i.dt, %i.er                ; 2 uses
  %i.eu = sub nsw i32 %i.es, %i.dx
  %i.ev = sub nsw i32 %i.et, %i.dw
  %i.ew = add nsw i32 %i.dw, %i.et
  %i.ex = add nsw i32 %i.dx, %i.es
  %i.ey = insertelement <4 x i32> poison, i32 %i.ex, i64 0
  %i.ez = insertelement <4 x i32> %i.ey, i32 %i.ew, i64 1
  %i.fa = insertelement <4 x i32> %i.ez, i32 %i.ev, i64 2
  %i.fb = insertelement <4 x i32> %i.fa, i32 %i.eu, i64 3
  %i.fc = ashr <4 x i32> %i.fb, splat (i32 3)
  %i.fd = add nsw <4 x i32> %i.fc, %i.ah
  %i.fe = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fd, <4 x i32> zeroinitializer)
  %i.ff = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fe, <4 x i32> splat (i32 255))
  %i.fg = trunc nuw <4 x i32> %i.ff to <4 x i8>
  store <4 x i8> %i.fg, ptr %1, align 1, !tbaa !12
  %i.fh = sub nsw i32 %i.cu, %i.cj                ; 2 uses
  %i.fi = sub nsw i32 %i.en, %i.bq
  %i.fj = mul nsw i32 %i.eo, 35468
  %i.fk = mul nsw i32 %i.ep, 35468
  %i.fl = add nsw i32 %i.br, %i.fh                ; 2 uses
  %i.fm = add nsw i32 %i.eq, 4                    ; 2 uses
  %i.fn = add nsw i32 %i.fm, %i.fl                ; 2 uses
  %i.fo = sub nsw i32 %i.fm, %i.fl                ; 2 uses
  %i.fp = sub nsw i32 %i.fn, %i.ej
  %i.fq = sub nsw i32 %i.fo, %i.ei
  %i.fr = add nsw i32 %i.ei, %i.fo
  %i.fs = add nsw i32 %i.ej, %i.fn
  %i.ft = insertelement <4 x i32> poison, i32 %i.fs, i64 0
  %i.fu = insertelement <4 x i32> %i.ft, i32 %i.fr, i64 1
end_hunk_0
