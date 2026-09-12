Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/curve25519?download=true
inline.NumInlined: 534
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZL7ge_maddP7ge_p1p1PK5ge_p3PK10ge_precomp:bb.a
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !13 ; 2 uses
  %i.du = add i64 %i.dt, %i.dh
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !13 ; 2 uses
  %i.dx = add i64 %i.dw, %i.di
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !13
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.do, ptr %i.dy, align 8, !tbaa !13
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.dr, ptr %i.dz, align 8, !tbaa !13
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.du, ptr %i.ea, align 8, !tbaa !13
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.dx, ptr %i.eb, align 8, !tbaa !13
  %i.ec = add nuw nsw i64 %i.dc, 4503599627370458
  %i.ed = sub i64 %i.ec, %i.dk
  %i.ee = add nuw nsw i64 %i.dd, 4503599627370494
  %i.ef = sub i64 %i.ee, %i.dn
  %i.eg = add nuw nsw i64 %i.dg, 4503599627370494
  %i.eh = sub i64 %i.eg, %i.dq
  %i.ei = add nuw nsw i64 %i.dh, 4503599627370494
  %i.ej = sub i64 %i.ei, %i.dt
  %i.ek = add nuw nsw i64 %i.di, 4503599627370494
  %i.el = sub i64 %i.ek, %i.dw
  store i64 %i.ed, ptr %i.am, align 8, !tbaa !13
  store i64 %i.ef, ptr %i.bc, align 8, !tbaa !13
  store i64 %i.eh, ptr %i.bd, align 8, !tbaa !13
  store i64 %i.ej, ptr %i.be, align 8, !tbaa !13
  store i64 %i.el, ptr %i.bf, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @x25519_ge_scalarmult_base(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
.preheader.preheader:
  %2 = alloca %struct.ge_p2, align 8              ; 6 uses
  %i.a = alloca [64 x i8], align 16               ; 11 uses
  %3 = alloca %struct.ge_p1p1, align 8            ; 20 uses
  %4 = alloca %struct.ge_p2, align 8              ; 10 uses
  %5 = alloca %struct.ge_precomp, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.b = load <8 x i8>, ptr %1, align 1, !tbaa !11
  %i.c = shufflevector <8 x i8> %i.b, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7> ; 2 uses
  %i.d = and <16 x i8> %i.c, <i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison>
  %i.e = lshr <16 x i8> %i.c, <i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4>
  %i.f = shufflevector <16 x i8> %i.d, <16 x i8> %i.e, <16 x i32> <i32 0, i32 17, i32 2, i32 19, i32 4, i32 21, i32 6, i32 23, i32 8, i32 25, i32 10, i32 27, i32 12, i32 29, i32 14, i32 31>
  store <16 x i8> %i.f, ptr %i.a, align 16, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load <8 x i8>, ptr %i.g, align 1, !tbaa !11
  %i.j = shufflevector <8 x i8> %i.i, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7> ; 2 uses
  %i.k = and <16 x i8> %i.j, <i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison>
  %i.l = lshr <16 x i8> %i.j, <i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4>
  %i.m = shufflevector <16 x i8> %i.k, <16 x i8> %i.l, <16 x i32> <i32 0, i32 17, i32 2, i32 19, i32 4, i32 21, i32 6, i32 23, i32 8, i32 25, i32 10, i32 27, i32 12, i32 29, i32 14, i32 31>
  store <16 x i8> %i.m, ptr %i.h, align 16, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.p = load <8 x i8>, ptr %i.n, align 1, !tbaa !11
  %i.q = shufflevector <8 x i8> %i.p, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7> ; 2 uses
  %i.r = and <16 x i8> %i.q, <i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison>
  %i.s = lshr <16 x i8> %i.q, <i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4>
  %i.t = shufflevector <16 x i8> %i.r, <16 x i8> %i.s, <16 x i32> <i32 0, i32 17, i32 2, i32 19, i32 4, i32 21, i32 6, i32 23, i32 8, i32 25, i32 10, i32 27, i32 12, i32 29, i32 14, i32 31>
  store <16 x i8> %i.t, ptr %i.o, align 16, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.w = load <8 x i8>, ptr %i.u, align 1, !tbaa !11
  %i.x = shufflevector <8 x i8> %i.w, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7> ; 2 uses
  %i.y = and <16 x i8> %i.x, <i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison>
  %i.z = lshr <16 x i8> %i.x, <i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4>
  %i.aa = shufflevector <16 x i8> %i.y, <16 x i8> %i.z, <16 x i32> <i32 0, i32 17, i32 2, i32 19, i32 4, i32 21, i32 6, i32 23, i32 8, i32 25, i32 10, i32 27, i32 12, i32 29, i32 14, i32 31>
  store <16 x i8> %i.aa, ptr %i.v, align 16, !tbaa !11
  br label %.preheader

.preheader:                                       ; preds = %.preheader.1, %.preheader.preheader
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next.1, %.preheader.1 ] ; 4 uses
  %.03133 = phi i8 [ 0, %.preheader.preheader ], [ %i.an, %.preheader.1 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !11
  %i.ad = add i8 %i.ac, %.03133                   ; 2 uses
  %i.ae = add i8 %i.ad, 8                         ; 2 uses
  %i.af = ashr i8 %i.ae, 4                        ; 2 uses
  %i.ag = and i8 %i.ae, -16
  %i.ah = sub i8 %i.ad, %i.ag
  store i8 %i.ah, ptr %i.ab, align 2, !tbaa !11
  %exitcond.not = icmp eq i64 %indvars.iv, 62
  br i1 %exitcond.not, label %bb.a, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !11
  %i.al = add i8 %i.ak, %i.af                     ; 2 uses
  %i.am = add i8 %i.al, 8                         ; 2 uses
  %i.an = ashr i8 %i.am, 4
  %i.ao = and i8 %i.am, -16
  %i.ap = sub i8 %i.al, %i.ao
  store i8 %i.ap, ptr %i.aj, align 1, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %.preheader

bb.a:                                             ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 63 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !11
  %i.as = add i8 %i.ar, %i.af
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.au, i8 0, i64 32, i1 false)
  store i64 1, ptr %i.at, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i8 0, i64 32, i1 false)
  store i64 1, ptr %i.av, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, i8 0, i64 40, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 12 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 9 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 12 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv38 = phi i64 [ 1, %bb.a ], [ %indvars.iv.next39, %bb.b ] ; 4 uses
  %i.bb = lshr i64 %indvars.iv38, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv38
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !11
  %i.be = trunc nuw nsw i64 %i.bb to i32
  call fastcc void @_ZL12table_selectP10ge_precompia(ptr noundef %5, i32 noundef %i.be, i8 noundef signext %i.bd)
  call fastcc void @_ZL7ge_maddP7ge_p1p1PK5ge_p3PK10ge_precomp(ptr noundef %3, ptr noundef nonnull %0, ptr noundef nonnull %5)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %0, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.ay)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.at, ptr noundef nonnull readonly %i.az, ptr noundef nonnull readonly %i.ba)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.av, ptr noundef nonnull readonly %i.ba, ptr noundef nonnull readonly %i.ay)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.ax, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.az)
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 2
  %i.bf = icmp samesign ult i64 %indvars.iv38, 62
  br i1 %i.bf, label %bb.b, label %bb.c, !llvm.loop !26

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.at, i64 40, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.av, i64 40, i1 false)
  call fastcc void @_ZL9ge_p2_dblP7ge_p1p1PK5ge_p2(ptr noundef nonnull %3, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %4, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.ay)
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.bi, ptr noundef nonnull readonly %i.az, ptr noundef nonnull readonly %i.ba)
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 3 uses
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.bj, ptr noundef nonnull readonly %i.ba, ptr noundef nonnull readonly %i.ay)
  call fastcc void @_ZL9ge_p2_dblP7ge_p1p1PK5ge_p2(ptr noundef %3, ptr noundef nonnull %4)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %4, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.ay)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.bi, ptr noundef nonnull readonly %i.az, ptr noundef nonnull readonly %i.ba)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.bj, ptr noundef nonnull readonly %i.ba, ptr noundef nonnull readonly %i.ay)
  call fastcc void @_ZL9ge_p2_dblP7ge_p1p1PK5ge_p2(ptr noundef %3, ptr noundef nonnull %4)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %4, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.ay)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.bi, ptr noundef nonnull readonly %i.az, ptr noundef nonnull readonly %i.ba)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.bj, ptr noundef nonnull readonly %i.ba, ptr noundef nonnull readonly %i.ay)
  call fastcc void @_ZL9ge_p2_dblP7ge_p1p1PK5ge_p2(ptr noundef %3, ptr noundef nonnull %4)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %0, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.ay)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.at, ptr noundef nonnull readonly %i.az, ptr noundef nonnull readonly %i.ba)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.av, ptr noundef nonnull readonly %i.ba, ptr noundef nonnull readonly %i.ay)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.ax, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.az)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %indvars.iv41 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next42, %bb.d ] ; 4 uses
  %i.bk = lshr exact i64 %indvars.iv41, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv41
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !11
  %i.bn = trunc nuw nsw i64 %i.bk to i32
  call fastcc void @_ZL12table_selectP10ge_precompia(ptr noundef %5, i32 noundef %i.bn, i8 noundef signext %i.bm)
  call fastcc void @_ZL7ge_maddP7ge_p1p1PK5ge_p3PK10ge_precomp(ptr noundef %3, ptr noundef nonnull %0, ptr noundef nonnull %5)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %0, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.ay)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.at, ptr noundef nonnull readonly %i.az, ptr noundef nonnull readonly %i.ba)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.av, ptr noundef nonnull readonly %i.ba, ptr noundef nonnull readonly %i.ay)
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %i.ax, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.az)
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 2
  %i.bo = icmp samesign ult i64 %indvars.iv41, 62
  br i1 %i.bo, label %bb.d, label %bb.e, !llvm.loop !27

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL12table_selectP10ge_precompia(ptr nofree noundef nonnull writeonly captures(none) %0, i32 noundef range(i32 -1073741824, 32) %1, i8 noundef signext %2) unnamed_addr #2 {
vector.ph:
  %i.a = alloca [3 x [32 x i8]], align 16         ; 122 uses
  %.tr = tail call i8 @llvm.smin.i8(i8 %2, i8 0)
  %i.b = shl i8 %.tr, 1
  %i.c = sub i8 %2, %i.b                          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, i8 0, i64 96, i1 false)
  %i.d = icmp eq i8 %2, 0
  %i.e = zext i1 %i.d to i8                       ; 2 uses
  store i8 %i.e, ptr %i.a, align 16, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i8 %i.e, ptr %i.f, align 16, !tbaa !11
  call void asm "", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([3 x [32 x i8]]) %i.a, ptr nonnull elementtype([3 x [32 x i8]]) %i.a) #8, !srcloc !28
  %i.g = sext i32 %1 to i64
  %i.h = getelementptr inbounds [768 x i8], ptr @k25519Precomp, i64 %i.g ; 48 uses
  %i.i = icmp eq i8 %i.c, 1
  %.neg.i.i.i = sext i1 %i.i to i64
  %i.j = call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i) #9, !srcloc !29
  %i.k = trunc i64 %i.j to i8
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <16 x i8>, ptr %i.h, align 16, !tbaa !11
  %wide.load61 = load <16 x i8>, ptr %i.l, align 16, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %wide.load62 = load <16 x i8>, ptr %i.a, align 16, !tbaa !11
  %wide.load63 = load <16 x i8>, ptr %i.m, align 16, !tbaa !11
  %i.n = and <16 x i8> %wide.load, %broadcast.splat
  %i.o = and <16 x i8> %wide.load61, %broadcast.splat
  %i.p = xor <16 x i8> %i.n, %wide.load62
  %i.q = xor <16 x i8> %i.o, %wide.load63
  store <16 x i8> %i.p, ptr %i.a, align 16, !tbaa !11
  store <16 x i8> %i.q, ptr %i.m, align 16, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %wide.load.1 = load <16 x i8>, ptr %i.r, align 16, !tbaa !11
  %wide.load61.1 = load <16 x i8>, ptr %i.s, align 16, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %wide.load62.1 = load <16 x i8>, ptr %i.t, align 16, !tbaa !11
  %wide.load63.1 = load <16 x i8>, ptr %i.u, align 16, !tbaa !11
  %i.v = and <16 x i8> %wide.load.1, %broadcast.splat
  %i.w = and <16 x i8> %wide.load61.1, %broadcast.splat
  %i.x = xor <16 x i8> %i.v, %wide.load62.1
  %i.y = xor <16 x i8> %i.w, %wide.load63.1
  store <16 x i8> %i.x, ptr %i.t, align 16, !tbaa !11
  store <16 x i8> %i.y, ptr %i.u, align 16, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %wide.load.2 = load <16 x i8>, ptr %i.z, align 16, !tbaa !11
  %wide.load61.2 = load <16 x i8>, ptr %i.aa, align 16, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %wide.load62.2 = load <16 x i8>, ptr %i.ab, align 16, !tbaa !11
  %wide.load63.2 = load <16 x i8>, ptr %i.ac, align 16, !tbaa !11
  %i.ad = and <16 x i8> %wide.load.2, %broadcast.splat
  %i.ae = and <16 x i8> %wide.load61.2, %broadcast.splat
  %i.af = xor <16 x i8> %i.ad, %wide.load62.2
  %i.ag = xor <16 x i8> %i.ae, %wide.load63.2
  store <16 x i8> %i.af, ptr %i.ab, align 16, !tbaa !11
  store <16 x i8> %i.ag, ptr %i.ac, align 16, !tbaa !11
  %i.ah = icmp eq i8 %i.c, 2
  %.neg.i.i.i.1 = sext i1 %i.ah to i64
  %i.ai = call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.1) #9, !srcloc !29
  %i.aj = trunc i64 %i.ai to i8
  %broadcast.splatinsert65 = insertelement <16 x i8> poison, i8 %i.aj, i64 0
  %broadcast.splat66 = shufflevector <16 x i8> %broadcast.splatinsert65, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %wide.load69 = load <16 x i8>, ptr %i.ak, align 16, !tbaa !11
  %wide.load70 = load <16 x i8>, ptr %i.al, align 16, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %wide.load71 = load <16 x i8>, ptr %i.a, align 16, !tbaa !11
  %wide.load72 = load <16 x i8>, ptr %i.am, align 16, !tbaa !11
  %i.an = and <16 x i8> %wide.load69, %broadcast.splat66
  %i.ao = and <16 x i8> %wide.load70, %broadcast.splat66
  %i.ap = xor <16 x i8> %i.an, %wide.load71
  %i.aq = xor <16 x i8> %i.ao, %wide.load72
  store <16 x i8> %i.ap, ptr %i.a, align 16, !tbaa !11
  store <16 x i8> %i.aq, ptr %i.am, align 16, !tbaa !11
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %wide.load69.1 = load <16 x i8>, ptr %i.ar, align 16, !tbaa !11
  %wide.load70.1 = load <16 x i8>, ptr %i.as, align 16, !tbaa !11
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %wide.load71.1 = load <16 x i8>, ptr %i.at, align 16, !tbaa !11
  %wide.load72.1 = load <16 x i8>, ptr %i.au, align 16, !tbaa !11
  %i.av = and <16 x i8> %wide.load69.1, %broadcast.splat66
  %i.aw = and <16 x i8> %wide.load70.1, %broadcast.splat66
  %i.ax = xor <16 x i8> %i.av, %wide.load71.1
  %i.ay = xor <16 x i8> %i.aw, %wide.load72.1
  store <16 x i8> %i.ax, ptr %i.at, align 16, !tbaa !11
  store <16 x i8> %i.ay, ptr %i.au, align 16, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %wide.load69.2 = load <16 x i8>, ptr %i.az, align 16, !tbaa !11
  %wide.load70.2 = load <16 x i8>, ptr %i.ba, align 16, !tbaa !11
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %wide.load71.2 = load <16 x i8>, ptr %i.bb, align 16, !tbaa !11
  %wide.load72.2 = load <16 x i8>, ptr %i.bc, align 16, !tbaa !11
  %i.bd = and <16 x i8> %wide.load69.2, %broadcast.splat66
  %i.be = and <16 x i8> %wide.load70.2, %broadcast.splat66
  %i.bf = xor <16 x i8> %i.bd, %wide.load71.2
  %i.bg = xor <16 x i8> %i.be, %wide.load72.2
  store <16 x i8> %i.bf, ptr %i.bb, align 16, !tbaa !11
  store <16 x i8> %i.bg, ptr %i.bc, align 16, !tbaa !11
  %i.bh = icmp eq i8 %i.c, 3
  %.neg.i.i.i.2 = sext i1 %i.bh to i64
  %i.bi = call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.2) #9, !srcloc !29
  %i.bj = trunc i64 %i.bi to i8
  %broadcast.splatinsert76 = insertelement <16 x i8> poison, i8 %i.bj, i64 0
  %broadcast.splat77 = shufflevector <16 x i8> %broadcast.splatinsert76, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  %wide.load80 = load <16 x i8>, ptr %i.bk, align 16, !tbaa !11
  %wide.load81 = load <16 x i8>, ptr %i.bl, align 16, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %wide.load82 = load <16 x i8>, ptr %i.a, align 16, !tbaa !11
  %wide.load83 = load <16 x i8>, ptr %i.bm, align 16, !tbaa !11
  %i.bn = and <16 x i8> %wide.load80, %broadcast.splat77
  %i.bo = and <16 x i8> %wide.load81, %broadcast.splat77
  %i.bp = xor <16 x i8> %i.bn, %wide.load82
  %i.bq = xor <16 x i8> %i.bo, %wide.load83
  store <16 x i8> %i.bp, ptr %i.a, align 16, !tbaa !11
  store <16 x i8> %i.bq, ptr %i.bm, align 16, !tbaa !11
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %wide.load80.1 = load <16 x i8>, ptr %i.br, align 16, !tbaa !11
  %wide.load81.1 = load <16 x i8>, ptr %i.bs, align 16, !tbaa !11
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %wide.load82.1 = load <16 x i8>, ptr %i.bt, align 16, !tbaa !11
  %wide.load83.1 = load <16 x i8>, ptr %i.bu, align 16, !tbaa !11
  %i.bv = and <16 x i8> %wide.load80.1, %broadcast.splat77
  %i.bw = and <16 x i8> %wide.load81.1, %broadcast.splat77
  %i.bx = xor <16 x i8> %i.bv, %wide.load82.1
  %i.by = xor <16 x i8> %i.bw, %wide.load83.1
  store <16 x i8> %i.bx, ptr %i.bt, align 16, !tbaa !11
  store <16 x i8> %i.by, ptr %i.bu, align 16, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  %wide.load80.2 = load <16 x i8>, ptr %i.bz, align 16, !tbaa !11
  %wide.load81.2 = load <16 x i8>, ptr %i.ca, align 16, !tbaa !11
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %wide.load82.2 = load <16 x i8>, ptr %i.cb, align 16, !tbaa !11
  %wide.load83.2 = load <16 x i8>, ptr %i.cc, align 16, !tbaa !11
  %i.cd = and <16 x i8> %wide.load80.2, %broadcast.splat77
  %i.ce = and <16 x i8> %wide.load81.2, %broadcast.splat77
  %i.cf = xor <16 x i8> %i.cd, %wide.load82.2
  %i.cg = xor <16 x i8> %i.ce, %wide.load83.2
  store <16 x i8> %i.cf, ptr %i.cb, align 16, !tbaa !11
  store <16 x i8> %i.cg, ptr %i.cc, align 16, !tbaa !11
  %i.ch = icmp eq i8 %i.c, 4
  %.neg.i.i.i.3 = sext i1 %i.ch to i64
  %i.ci = call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.3) #9, !srcloc !29
  %i.cj = trunc i64 %i.ci to i8
  %broadcast.splatinsert87 = insertelement <16 x i8> poison, i8 %i.cj, i64 0
  %broadcast.splat88 = shufflevector <16 x i8> %broadcast.splatinsert87, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  %wide.load91 = load <16 x i8>, ptr %i.ck, align 16, !tbaa !11
  %wide.load92 = load <16 x i8>, ptr %i.cl, align 16, !tbaa !11
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %wide.load93 = load <16 x i8>, ptr %i.a, align 16, !tbaa !11
  %wide.load94 = load <16 x i8>, ptr %i.cm, align 16, !tbaa !11
  %i.cn = and <16 x i8> %wide.load91, %broadcast.splat88
  %i.co = and <16 x i8> %wide.load92, %broadcast.splat88
  %i.cp = xor <16 x i8> %i.cn, %wide.load93
  %i.cq = xor <16 x i8> %i.co, %wide.load94
  store <16 x i8> %i.cp, ptr %i.a, align 16, !tbaa !11
  store <16 x i8> %i.cq, ptr %i.cm, align 16, !tbaa !11
  %i.cr = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.cs = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  %wide.load91.1 = load <16 x i8>, ptr %i.cr, align 16, !tbaa !11
  %wide.load92.1 = load <16 x i8>, ptr %i.cs, align 16, !tbaa !11
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %wide.load93.1 = load <16 x i8>, ptr %i.ct, align 16, !tbaa !11
  %wide.load94.1 = load <16 x i8>, ptr %i.cu, align 16, !tbaa !11
  %i.cv = and <16 x i8> %wide.load91.1, %broadcast.splat88
  %i.cw = and <16 x i8> %wide.load92.1, %broadcast.splat88
  %i.cx = xor <16 x i8> %i.cv, %wide.load93.1
  %i.cy = xor <16 x i8> %i.cw, %wide.load94.1
  store <16 x i8> %i.cx, ptr %i.ct, align 16, !tbaa !11
  store <16 x i8> %i.cy, ptr %i.cu, align 16, !tbaa !11
  %i.cz = getelementptr inbounds nuw i8, ptr %i.h, i64 352
  %i.da = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  %wide.load91.2 = load <16 x i8>, ptr %i.cz, align 16, !tbaa !11
  %wide.load92.2 = load <16 x i8>, ptr %i.da, align 16, !tbaa !11
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %wide.load93.2 = load <16 x i8>, ptr %i.db, align 16, !tbaa !11
  %wide.load94.2 = load <16 x i8>, ptr %i.dc, align 16, !tbaa !11
  %i.dd = and <16 x i8> %wide.load91.2, %broadcast.splat88
  %i.de = and <16 x i8> %wide.load92.2, %broadcast.splat88
  %i.df = xor <16 x i8> %i.dd, %wide.load93.2
  %i.dg = xor <16 x i8> %i.de, %wide.load94.2
  store <16 x i8> %i.df, ptr %i.db, align 16, !tbaa !11
  store <16 x i8> %i.dg, ptr %i.dc, align 16, !tbaa !11
  %i.dh = icmp eq i8 %i.c, 5
end_hunk_0
begin_hunk_1_@_ZL12table_selectP10ge_precompia:vector.ph
  %i.ly = zext i8 %i.lx to i64
  %i.lz = shl nuw nsw i64 %i.ly, 18
  %i.ma = getelementptr inbounds nuw i8, ptr %i.a, i64 46
  %i.mb = load i8, ptr %i.ma, align 2, !tbaa !11
  %i.mc = zext i8 %i.mb to i64
  %i.md = shl nuw nsw i64 %i.mc, 10
  %i.me = getelementptr inbounds nuw i8, ptr %i.a, i64 45
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !11
  %i.mg = zext i8 %i.mf to i64
  %i.mh = shl nuw nsw i64 %i.mg, 2
  %i.mi = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.mj = load i8, ptr %i.mi, align 4, !tbaa !11
  %i.mk = zext i8 %i.mj to i64                    ; 2 uses
  %i.ml = shl nuw nsw i64 %i.mk, 45
  %i.mm = getelementptr inbounds nuw i8, ptr %i.a, i64 43
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !11
  %i.mo = zext i8 %i.mn to i64
  %i.mp = shl nuw nsw i64 %i.mo, 37
  %i.mq = getelementptr inbounds nuw i8, ptr %i.a, i64 42
  %i.mr = load i8, ptr %i.mq, align 2, !tbaa !11
  %i.ms = zext i8 %i.mr to i64
  %i.mt = shl nuw nsw i64 %i.ms, 29
  %i.mu = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !11
  %i.mw = zext i8 %i.mv to i64
  %i.mx = shl nuw nsw i64 %i.mw, 21
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.mz = load i8, ptr %i.my, align 8, !tbaa !11
  %i.na = zext i8 %i.mz to i64
  %i.nb = shl nuw nsw i64 %i.na, 13
  %i.nc = getelementptr inbounds nuw i8, ptr %i.a, i64 39
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !11
  %i.ne = zext i8 %i.nd to i64
  %i.nf = shl nuw nsw i64 %i.ne, 5
  %i.ng = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  %i.nh = load i8, ptr %i.ng, align 2, !tbaa !11
  %i.ni = zext i8 %i.nh to i64                    ; 2 uses
  %i.nj = shl nuw nsw i64 %i.ni, 48
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 37
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !11
  %i.nm = zext i8 %i.nl to i64
  %i.nn = shl nuw nsw i64 %i.nm, 40
  %i.no = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.np = load i8, ptr %i.no, align 4, !tbaa !11
  %i.nq = zext i8 %i.np to i64
  %i.nr = shl nuw nsw i64 %i.nq, 32
  %i.ns = load i32, ptr %i.f, align 16
  %i.nt = zext i32 %i.ns to i64
  %.masked.i.i17 = and i64 %i.nj, 1970324836974592
  %i.nu = or disjoint i64 %.masked.i.i17, %i.nn
  %i.nv = or disjoint i64 %i.nu, %i.nt
  %i.nw = or disjoint i64 %i.nv, %i.nr            ; 2 uses
  %i.nx = lshr i64 %i.ni, 3
  %.masked116.i.i18 = and i64 %i.ml, 2216615441596416
  %.masked115.i.i19 = or disjoint i64 %i.mp, %.masked116.i.i18
  %.masked114.i.i20 = or disjoint i64 %.masked115.i.i19, %i.mt
  %.masked113.i.i21 = or disjoint i64 %.masked114.i.i20, %i.mx
  %.masked112.i.i22 = or disjoint i64 %.masked113.i.i21, %i.nb
  %.masked111.i.i23 = or disjoint i64 %.masked112.i.i22, %i.nf
  %i.ny = or disjoint i64 %.masked111.i.i23, %i.nx ; 2 uses
  %i.nz = lshr i64 %i.mk, 6
  %.masked5.i24 = and i64 %i.lv, 2251799746576384
  %.masked4.i25 = or disjoint i64 %i.lz, %.masked5.i24
  %.masked3.i26 = or disjoint i64 %.masked4.i25, %i.md
  %.masked.i27 = or disjoint i64 %.masked3.i26, %i.mh
  %i.oa = or disjoint i64 %.masked.i27, %i.nz     ; 2 uses
  %i.ob = lshr i64 %i.lu, 25
  %.masked8.i28 = and i64 %i.lj, 2251799805296640
  %.masked7.i29 = or disjoint i64 %i.ln, %.masked8.i28
  %.masked6.i30 = or disjoint i64 %.masked7.i29, %i.lr
  %i.oc = or disjoint i64 %i.ob, %.masked6.i30    ; 2 uses
  %i.od = lshr i64 %i.li, 28
  %i.oe = or disjoint i64 %i.lb, %i.kx
  %i.of = or disjoint i64 %i.oe, %i.lf
  %i.og = or disjoint i64 %i.of, %i.od            ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.oi = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.oj = load i32, ptr %i.oi, align 4
  %i.ok = zext i32 %i.oj to i64
  %i.ol = shl nuw nsw i64 %i.ok, 20
  %i.om = getelementptr inbounds nuw i8, ptr %i.a, i64 91
  %i.on = load i8, ptr %i.om, align 1, !tbaa !11
  %i.oo = zext i8 %i.on to i64
  %i.op = shl nuw nsw i64 %i.oo, 12
  %i.oq = getelementptr inbounds nuw i8, ptr %i.a, i64 90
  %i.or = load i8, ptr %i.oq, align 2, !tbaa !11
  %i.os = zext i8 %i.or to i64
  %i.ot = shl nuw nsw i64 %i.os, 4
  %i.ou = getelementptr inbounds nuw i8, ptr %i.a, i64 86
  %i.ov = load i32, ptr %i.ou, align 2
  %i.ow = zext i32 %i.ov to i64                   ; 2 uses
  %i.ox = shl nuw nsw i64 %i.ow, 23
  %i.oy = getelementptr inbounds nuw i8, ptr %i.a, i64 85
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !11
  %i.pa = zext i8 %i.oz to i64
  %i.pb = shl nuw nsw i64 %i.pa, 15
  %i.pc = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.pd = load i8, ptr %i.pc, align 4, !tbaa !11
  %i.pe = zext i8 %i.pd to i64
  %i.pf = shl nuw nsw i64 %i.pe, 7
  %i.pg = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ph = load i32, ptr %i.pg, align 16
  %i.pi = zext i32 %i.ph to i64                   ; 2 uses
  %i.pj = shl nuw nsw i64 %i.pi, 26
  %i.pk = getelementptr inbounds nuw i8, ptr %i.a, i64 79
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !11
  %i.pm = zext i8 %i.pl to i64
  %i.pn = shl nuw nsw i64 %i.pm, 18
  %i.po = getelementptr inbounds nuw i8, ptr %i.a, i64 78
  %i.pp = load i8, ptr %i.po, align 2, !tbaa !11
  %i.pq = zext i8 %i.pp to i64
  %i.pr = shl nuw nsw i64 %i.pq, 10
  %i.ps = getelementptr inbounds nuw i8, ptr %i.a, i64 77
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !11
  %i.pu = zext i8 %i.pt to i64
  %i.pv = shl nuw nsw i64 %i.pu, 2
  %i.pw = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.px = load i8, ptr %i.pw, align 4, !tbaa !11
  %i.py = zext i8 %i.px to i64                    ; 2 uses
  %i.pz = shl nuw nsw i64 %i.py, 45
  %i.qa = getelementptr inbounds nuw i8, ptr %i.a, i64 75
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !11
  %i.qc = zext i8 %i.qb to i64
  %i.qd = shl nuw nsw i64 %i.qc, 37
  %i.qe = getelementptr inbounds nuw i8, ptr %i.a, i64 74
  %i.qf = load i8, ptr %i.qe, align 2, !tbaa !11
  %i.qg = zext i8 %i.qf to i64
  %i.qh = shl nuw nsw i64 %i.qg, 29
  %i.qi = getelementptr inbounds nuw i8, ptr %i.a, i64 73
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !11
  %i.qk = zext i8 %i.qj to i64
  %i.ql = shl nuw nsw i64 %i.qk, 21
  %i.qm = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.qn = load i8, ptr %i.qm, align 8, !tbaa !11
  %i.qo = zext i8 %i.qn to i64
  %i.qp = shl nuw nsw i64 %i.qo, 13
  %i.qq = getelementptr inbounds nuw i8, ptr %i.a, i64 71
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !11
  %i.qs = zext i8 %i.qr to i64
  %i.qt = shl nuw nsw i64 %i.qs, 5
  %i.qu = getelementptr inbounds nuw i8, ptr %i.a, i64 70
  %i.qv = load i8, ptr %i.qu, align 2, !tbaa !11
  %i.qw = zext i8 %i.qv to i64                    ; 2 uses
  %i.qx = shl nuw nsw i64 %i.qw, 48
  %i.qy = getelementptr inbounds nuw i8, ptr %i.a, i64 69
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !11
  %i.ra = zext i8 %i.qz to i64
  %i.rb = shl nuw nsw i64 %i.ra, 40
  %i.rc = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.rd = load i8, ptr %i.rc, align 4, !tbaa !11
  %i.re = zext i8 %i.rd to i64
  %i.rf = shl nuw nsw i64 %i.re, 32
  %i.rg = load i32, ptr %i.oh, align 16
  %i.rh = zext i32 %i.rg to i64
  %.masked.i.i31 = and i64 %i.qx, 1970324836974592
  %i.ri = or disjoint i64 %.masked.i.i31, %i.rb
  %i.rj = or disjoint i64 %i.ri, %i.rh
  %i.rk = or disjoint i64 %i.rj, %i.rf            ; 3 uses
  %i.rl = lshr i64 %i.qw, 3
  %.masked116.i.i32 = and i64 %i.pz, 2216615441596416
  %.masked115.i.i33 = or disjoint i64 %i.qd, %.masked116.i.i32
  %.masked114.i.i34 = or disjoint i64 %.masked115.i.i33, %i.qh
  %.masked113.i.i35 = or disjoint i64 %.masked114.i.i34, %i.ql
  %.masked112.i.i36 = or disjoint i64 %.masked113.i.i35, %i.qp
  %.masked111.i.i37 = or disjoint i64 %.masked112.i.i36, %i.qt
  %i.rm = or disjoint i64 %.masked111.i.i37, %i.rl ; 3 uses
  %i.rn = lshr i64 %i.py, 6
  %.masked5.i38 = and i64 %i.pj, 2251799746576384
  %.masked4.i39 = or disjoint i64 %i.pn, %.masked5.i38
  %.masked3.i40 = or disjoint i64 %.masked4.i39, %i.pr
  %.masked.i41 = or disjoint i64 %.masked3.i40, %i.pv
  %i.ro = or disjoint i64 %.masked.i41, %i.rn     ; 3 uses
  %i.rp = lshr i64 %i.pi, 25
  %.masked8.i42 = and i64 %i.ox, 2251799805296640
  %.masked7.i43 = or disjoint i64 %i.pb, %.masked8.i42
  %.masked6.i44 = or disjoint i64 %.masked7.i43, %i.pf
  %i.rq = or disjoint i64 %i.rp, %.masked6.i44    ; 3 uses
  %i.rr = lshr i64 %i.ow, 28
  %i.rs = or disjoint i64 %i.op, %i.ol
  %i.rt = or disjoint i64 %i.rs, %i.ot
  %i.ru = or disjoint i64 %i.rt, %i.rr            ; 3 uses
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.957.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.1158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.952.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.1153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.747.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.1148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.rx = sub nuw nsw i64 4503599627370458, %i.rk
  %i.ry = sub nuw nsw i64 4503599627370494, %i.rm
  %i.rz = sub nuw nsw i64 4503599627370494, %i.ro
  %i.sa = sub nuw nsw i64 4503599627370494, %i.rq
  %i.sb = sub nsw i64 4503599627370494, %i.ru
  %3 = ashr i8 %2, 7
  %i.sc = sext i8 %3 to i64                       ; 10 uses
  %i.sd = xor i64 %i.nw, %i.kj
  %i.se = and i64 %i.sd, %i.sc                    ; 2 uses
  %i.sf = xor i64 %i.se, %i.kj
  store i64 %i.sf, ptr %0, align 8, !tbaa !13
  %i.sg = xor i64 %i.ny, %i.kl
  %i.sh = and i64 %i.sg, %i.sc                    ; 2 uses
  %i.si = xor i64 %i.sh, %i.kl
  store i64 %i.si, ptr %.sroa.555.0..sroa_idx, align 8, !tbaa !13
  %i.sj = xor i64 %i.oa, %i.kn
  %i.sk = and i64 %i.sj, %i.sc                    ; 2 uses
  %i.sl = xor i64 %i.sk, %i.kn
  store i64 %i.sl, ptr %.sroa.756.0..sroa_idx, align 8, !tbaa !13
  %i.sm = xor i64 %i.oc, %i.kp
  %i.sn = and i64 %i.sm, %i.sc                    ; 2 uses
  %i.so = xor i64 %i.sn, %i.kp
  store i64 %i.so, ptr %.sroa.957.0..sroa_idx, align 8, !tbaa !13
  %i.sp = xor i64 %i.og, %i.kt
  %i.sq = and i64 %i.sp, %i.sc                    ; 2 uses
  %i.sr = xor i64 %i.sq, %i.kt
  store i64 %i.sr, ptr %.sroa.1158.0..sroa_idx, align 8, !tbaa !13
  %i.ss = xor i64 %i.se, %i.nw
  store i64 %i.ss, ptr %i.rv, align 8, !tbaa !13
  %i.st = xor i64 %i.sh, %i.ny
  store i64 %i.st, ptr %.sroa.550.0..sroa_idx, align 8, !tbaa !13
  %i.su = xor i64 %i.sk, %i.oa
  store i64 %i.su, ptr %.sroa.751.0..sroa_idx, align 8, !tbaa !13
  %i.sv = xor i64 %i.sn, %i.oc
  store i64 %i.sv, ptr %.sroa.952.0..sroa_idx, align 8, !tbaa !13
  %i.sw = xor i64 %i.sq, %i.og
  store i64 %i.sw, ptr %.sroa.1153.0..sroa_idx, align 8, !tbaa !13
  %i.sx = xor i64 %i.rx, %i.rk
  %i.sy = and i64 %i.sx, %i.sc
  %i.sz = xor i64 %i.sy, %i.rk
  store i64 %i.sz, ptr %i.rw, align 8, !tbaa !13
  %i.ta = xor i64 %i.rm, %i.ry
  %i.tb = and i64 %i.ta, %i.sc
  %i.tc = xor i64 %i.tb, %i.rm
  store i64 %i.tc, ptr %.sroa.546.0..sroa_idx, align 8, !tbaa !13
  %i.td = xor i64 %i.ro, %i.rz
  %i.te = and i64 %i.td, %i.sc
  %i.tf = xor i64 %i.te, %i.ro
  store i64 %i.tf, ptr %.sroa.747.0..sroa_idx, align 8, !tbaa !13
  %i.tg = xor i64 %i.rq, %i.sa
  %i.th = and i64 %i.tg, %i.sc
  %i.ti = xor i64 %i.th, %i.rq
  store i64 %i.ti, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !13
  %i.tj = xor i64 %i.ru, %i.sb
  %i.tk = and i64 %i.tj, %i.sc
  %i.tl = xor i64 %i.tk, %i.ru
  store i64 %i.tl, ptr %.sroa.1148.0..sroa_idx, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL9ge_p2_dblP7ge_p1p1PK5ge_p2(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 160)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 5 uses
  %i.c = mul i64 %i.b, 19
  %i.d = mul i64 %i.b, 38
  %i.e = shl i64 %i.b, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13   ; 5 uses
  %i.h = mul i64 %i.g, 19
  %i.i = mul i64 %i.g, 38
  %i.j = shl i64 %i.g, 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13   ; 3 uses
  %i.m = shl i64 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13   ; 3 uses
  %i.p = shl i64 %i.o, 1
  %i.q = zext i64 %i.b to i128
  %i.r = zext i64 %i.c to i128
  %i.s = mul nuw i128 %i.r, %i.q
  %i.t = zext i64 %i.g to i128                    ; 2 uses
  %i.u = zext i64 %i.d to i128                    ; 3 uses
  %i.v = mul nuw i128 %i.t, %i.u
  %i.w = zext i64 %i.h to i128
  %i.x = mul nuw i128 %i.w, %i.t
  %i.y = zext i64 %i.l to i128                    ; 4 uses
  %i.z = mul nuw i128 %i.y, %i.u
  %i.aa = zext i64 %i.i to i128
  %i.ab = mul nuw i128 %i.y, %i.aa
  %i.ac = mul nuw i128 %i.y, %i.y
  %i.ad = zext i64 %i.o to i128                   ; 5 uses
  %i.ae = mul nuw i128 %i.ad, %i.u
  %i.af = zext i64 %i.j to i128                   ; 2 uses
  %i.ag = mul nuw i128 %i.ad, %i.af
  %i.ah = zext i64 %i.m to i128                   ; 2 uses
  %i.ai = mul nuw i128 %i.ad, %i.ah
  %i.aj = mul nuw i128 %i.ad, %i.ad
  %i.ak = load i64, ptr %1, align 8, !tbaa !13    ; 2 uses
  %i.al = zext i64 %i.ak to i128                  ; 6 uses
  %i.am = zext i64 %i.e to i128
  %i.an = mul nuw i128 %i.al, %i.am
  %i.ao = mul nuw i128 %i.al, %i.af
  %i.ap = mul nuw i128 %i.al, %i.ah
  %i.aq = zext i64 %i.p to i128
  %i.ar = mul nuw i128 %i.al, %i.aq
  %i.as = mul nuw i128 %i.al, %i.al
  %i.at = add i128 %i.ae, %i.ab
  %i.au = add i128 %i.at, %i.as                   ; 2 uses
  %i.av = lshr i128 %i.au, 51
  %i.aw = trunc i128 %i.au to i64
  %i.ax = and i64 %i.aw, 2251799813685247
  %i.ay = add i128 %i.ag, %i.ac
  %i.az = add i128 %i.ay, %i.an
  %i.ba = add i128 %i.ai, %i.s
  %i.bb = add i128 %i.ba, %i.ao
  %i.bc = add i128 %i.aj, %i.v
  %i.bd = add i128 %i.bc, %i.ap
  %i.be = add i128 %i.z, %i.x
  %i.bf = add i128 %i.be, %i.ar
  %i.bg = and i128 %i.av, 18446744073709551615
  %i.bh = add i128 %i.bf, %i.bg                   ; 2 uses
  %i.bi = lshr i128 %i.bh, 51
  %i.bj = trunc i128 %i.bh to i64
  %i.bk = and i64 %i.bj, 2251799813685247
  %i.bl = and i128 %i.bi, 18446744073709551615
  %i.bm = add i128 %i.bd, %i.bl                   ; 2 uses
  %i.bn = lshr i128 %i.bm, 51
  %i.bo = trunc i128 %i.bm to i64
  %i.bp = and i64 %i.bo, 2251799813685247
  %i.bq = and i128 %i.bn, 18446744073709551615
  %i.br = add i128 %i.bb, %i.bq                   ; 2 uses
  %i.bs = lshr i128 %i.br, 51
  %i.bt = trunc i128 %i.br to i64
  %i.bu = and i64 %i.bt, 2251799813685247         ; 2 uses
  %i.bv = and i128 %i.bs, 18446744073709551615
  %i.bw = add i128 %i.az, %i.bv                   ; 2 uses
  %i.bx = lshr i128 %i.bw, 51
  %i.by = trunc i128 %i.bx to i64
  %i.bz = trunc i128 %i.bw to i64
  %i.ca = and i64 %i.bz, 2251799813685247         ; 2 uses
  %i.cb = mul i64 %i.by, 19
  %i.cc = add i64 %i.cb, %i.ax                    ; 2 uses
  %i.cd = lshr i64 %i.cc, 51
  %i.ce = and i64 %i.cc, 2251799813685247         ; 2 uses
  %i.cf = add nuw nsw i64 %i.cd, %i.bk            ; 2 uses
  %i.cg = lshr i64 %i.cf, 51
  %i.ch = and i64 %i.cf, 2251799813685247         ; 2 uses
  %i.ci = add nuw nsw i64 %i.cg, %i.bp            ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !13 ; 5 uses
  %i.cm = mul i64 %i.cl, 19
  %i.cn = mul i64 %i.cl, 38
  %i.co = shl i64 %i.cl, 1
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !13 ; 5 uses
  %i.cr = mul i64 %i.cq, 19
  %i.cs = mul i64 %i.cq, 38
  %i.ct = shl i64 %i.cq, 1
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !13 ; 3 uses
  %i.cw = shl i64 %i.cv, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !13 ; 3 uses
  %i.cz = shl i64 %i.cy, 1
  %i.da = zext i64 %i.cl to i128
  %i.db = zext i64 %i.cm to i128
  %i.dc = mul nuw i128 %i.db, %i.da
  %i.dd = zext i64 %i.cq to i128                  ; 2 uses
  %i.de = zext i64 %i.cn to i128                  ; 3 uses
  %i.df = mul nuw i128 %i.dd, %i.de
  %i.dg = zext i64 %i.cr to i128
  %i.dh = mul nuw i128 %i.dg, %i.dd
  %i.di = zext i64 %i.cv to i128                  ; 4 uses
  %i.dj = mul nuw i128 %i.di, %i.de
  %i.dk = zext i64 %i.cs to i128
  %i.dl = mul nuw i128 %i.di, %i.dk
  %i.dm = mul nuw i128 %i.di, %i.di
  %i.dn = zext i64 %i.cy to i128                  ; 5 uses
  %i.do = mul nuw i128 %i.dn, %i.de
  %i.dp = zext i64 %i.ct to i128                  ; 2 uses
  %i.dq = mul nuw i128 %i.dn, %i.dp
  %i.dr = zext i64 %i.cw to i128                  ; 2 uses
  %i.ds = mul nuw i128 %i.dn, %i.dr
  %i.dt = mul nuw i128 %i.dn, %i.dn
  %i.du = load i64, ptr %i.cj, align 8, !tbaa !13 ; 2 uses
  %i.dv = zext i64 %i.du to i128                  ; 6 uses
  %i.dw = zext i64 %i.co to i128
  %i.dx = mul nuw i128 %i.dv, %i.dw
  %i.dy = mul nuw i128 %i.dv, %i.dp
  %i.dz = mul nuw i128 %i.dv, %i.dr
  %i.ea = zext i64 %i.cz to i128
  %i.eb = mul nuw i128 %i.dv, %i.ea
  %i.ec = mul nuw i128 %i.dv, %i.dv
  %i.ed = add i128 %i.do, %i.dl
  %i.ee = add i128 %i.ed, %i.ec                   ; 2 uses
  %i.ef = lshr i128 %i.ee, 51
  %i.eg = trunc i128 %i.ee to i64
  %i.eh = and i64 %i.eg, 2251799813685247
  %i.ei = add i128 %i.dq, %i.dm
  %i.ej = add i128 %i.ei, %i.dx
  %i.ek = add i128 %i.ds, %i.dc
  %i.el = add i128 %i.ek, %i.dy
end_hunk_1
begin_hunk_2_@_ZL15fe_loose_invertP2fePK8fe_loose:bb.a
  %i.bif = mul nuw nsw i128 %i.bid, %i.bie
  %i.big = mul nuw nsw i128 %i.bid, %i.bhy
  %i.bih = mul nuw nsw i128 %i.bid, %i.bia
  %i.bii = zext nneg i64 %i.bhi to i128
  %i.bij = mul nuw nsw i128 %i.bid, %i.bii
  %i.bik = mul nuw nsw i128 %i.bid, %i.bid
  %i.bil = add nuw nsw i128 %i.bhx, %i.bhu
  %i.bim = add nuw nsw i128 %i.bil, %i.bik        ; 2 uses
  %i.bin = lshr i128 %i.bim, 51
  %i.bio = trunc i128 %i.bim to i64
  %i.bip = and i64 %i.bio, 2251799813685247
  %i.biq = add nuw nsw i128 %i.bhz, %i.bhv
  %i.bir = add nuw nsw i128 %i.biq, %i.bif
  %i.bis = add nuw nsw i128 %i.bib, %i.bhl
  %i.bit = add nuw nsw i128 %i.bis, %i.big
  %i.biu = add nuw nsw i128 %i.bic, %i.bho
  %i.biv = add nuw nsw i128 %i.biu, %i.bih
  %i.biw = add nuw nsw i128 %i.bhs, %i.bhq
  %i.bix = add nuw nsw i128 %i.biw, %i.bij
  %i.biy = add nuw nsw i128 %i.bix, %i.bin        ; 2 uses
  %i.biz = lshr i128 %i.biy, 51
  %i.bja = trunc i128 %i.biy to i64
  %i.bjb = and i64 %i.bja, 2251799813685247
  %i.bjc = add nuw nsw i128 %i.biv, %i.biz        ; 2 uses
  %i.bjd = lshr i128 %i.bjc, 51
  %i.bje = trunc i128 %i.bjc to i64
  %i.bjf = and i64 %i.bje, 2251799813685247
  %i.bjg = add nuw nsw i128 %i.bit, %i.bjd        ; 2 uses
  %i.bjh = lshr i128 %i.bjg, 51
  %i.bji = trunc i128 %i.bjg to i64
  %i.bjj = and i64 %i.bji, 2251799813685247       ; 2 uses
  %i.bjk = add nuw nsw i128 %i.bir, %i.bjh        ; 2 uses
  %i.bjl = lshr i128 %i.bjk, 51
  %i.bjm = trunc nuw nsw i128 %i.bjl to i64
  %i.bjn = trunc i128 %i.bjk to i64
  %i.bjo = and i64 %i.bjn, 2251799813685247       ; 2 uses
  %i.bjp = mul nuw nsw i64 %i.bjm, 19
  %i.bjq = add nuw nsw i64 %i.bjp, %i.bip         ; 2 uses
  %i.bjr = lshr i64 %i.bjq, 51
  %i.bjs = and i64 %i.bjq, 2251799813685247       ; 2 uses
  %i.bjt = add nuw nsw i64 %i.bjr, %i.bjb         ; 2 uses
  %i.bju = lshr i64 %i.bjt, 51
  %i.bjv = and i64 %i.bjt, 2251799813685247       ; 2 uses
  %i.bjw = add nuw nsw i64 %i.bju, %i.bjf         ; 2 uses
  %i.bjx = add nuw nsw i32 %.8105, 1              ; 2 uses
  %exitcond151.not = icmp eq i32 %i.bjx, 5
  br i1 %exitcond151.not, label %bb.q, label %bb.p, !llvm.loop !50

bb.q:                                             ; preds = %bb.p
  store i64 %i.bjo, ptr %i.fl, align 8, !tbaa !13
  store i64 %i.bjj, ptr %i.fk, align 8, !tbaa !13
  store i64 %i.bjw, ptr %i.fj, align 8, !tbaa !13
  store i64 %i.bjv, ptr %i.fi, align 8, !tbaa !13
  store i64 %i.bjs, ptr %3, align 8, !tbaa !13
  call fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr noundef nonnull %0, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL11fe_mul_implPmPKmS1_(ptr nofree noundef writeonly captures(none) initializes((0, 40)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #3 {
.preheader.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = zext i64 %i.b to i128                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.f = mul i64 %i.e, 19
  %i.g = zext i64 %i.f to i128                    ; 4 uses
  %i.h = mul nuw i128 %i.g, %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !13   ; 2 uses
  %i.k = mul i64 %i.j, 19
  %i.l = zext i64 %i.k to i128                    ; 3 uses
  %i.m = mul nuw i128 %i.l, %i.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13   ; 2 uses
  %i.p = mul i64 %i.o, 19
  %i.q = zext i64 %i.p to i128                    ; 2 uses
  %i.r = mul nuw i128 %i.q, %i.c
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !13   ; 2 uses
  %i.u = mul i64 %i.t, 19
  %i.v = zext i64 %i.u to i128
  %i.w = mul nuw i128 %i.v, %i.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !13
  %i.z = zext i64 %i.y to i128                    ; 5 uses
  %i.aa = mul nuw i128 %i.z, %i.g
  %i.ab = mul nuw i128 %i.z, %i.l
  %i.ac = mul nuw i128 %i.z, %i.q
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !13
  %i.af = zext i64 %i.ae to i128                  ; 5 uses
  %i.ag = mul nuw i128 %i.af, %i.g
  %i.ah = mul nuw i128 %i.af, %i.l
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !13
  %i.ak = zext i64 %i.aj to i128                  ; 5 uses
  %i.al = mul nuw i128 %i.ak, %i.g
  %i.am = load i64, ptr %2, align 8, !tbaa !13
  %i.an = zext i64 %i.am to i128                  ; 5 uses
  %i.ao = mul nuw i128 %i.an, %i.c
  %i.ap = zext i64 %i.t to i128                   ; 4 uses
  %i.aq = mul nuw i128 %i.z, %i.ap
  %i.ar = mul nuw i128 %i.an, %i.z
  %i.as = zext i64 %i.o to i128                   ; 3 uses
  %i.at = mul nuw i128 %i.af, %i.as
  %i.au = mul nuw i128 %i.af, %i.ap
  %i.av = mul nuw i128 %i.an, %i.af
  %i.aw = zext i64 %i.j to i128                   ; 2 uses
  %i.ax = mul nuw i128 %i.ak, %i.aw
  %i.ay = mul nuw i128 %i.ak, %i.as
  %i.az = mul nuw i128 %i.ak, %i.ap
  %i.ba = mul nuw i128 %i.an, %i.ak
  %i.bb = load i64, ptr %1, align 8, !tbaa !13
  %i.bc = zext i64 %i.bb to i128                  ; 5 uses
  %i.bd = zext i64 %i.e to i128
  %i.be = mul nuw i128 %i.bc, %i.bd
  %i.bf = mul nuw i128 %i.bc, %i.aw
  %i.bg = mul nuw i128 %i.bc, %i.as
  %i.bh = mul nuw i128 %i.bc, %i.ap
  %i.bi = mul nuw i128 %i.bc, %i.an
  %i.bj = add i128 %i.ac, %i.w
  %i.bk = add i128 %i.bj, %i.ah
  %i.bl = add i128 %i.bk, %i.al
  %i.bm = add i128 %i.bl, %i.bi                   ; 2 uses
  %i.bn = lshr i128 %i.bm, 51
  %i.bo = trunc i128 %i.bm to i64
  %i.bp = and i64 %i.bo, 2251799813685247
  %i.bq = add i128 %i.aa, %i.m
  %i.br = add i128 %i.ab, %i.r
  %i.bs = add i128 %i.br, %i.ag
  %i.bt = add i128 %i.bs, %i.ba
  %i.bu = add i128 %i.bt, %i.bh
  %i.bv = and i128 %i.bn, 18446744073709551615
  %i.bw = add i128 %i.bu, %i.bv                   ; 2 uses
  %i.bx = lshr i128 %i.bw, 51
  %i.by = trunc i128 %i.bw to i64
  %i.bz = and i64 %i.by, 2251799813685247
  %i.ca = and i128 %i.bx, 18446744073709551615
  %i.cb = add i128 %i.bq, %i.az
  %i.cc = add i128 %i.cb, %i.av
  %i.cd = add i128 %i.cc, %i.bg
  %i.ce = add i128 %i.cd, %i.ca                   ; 2 uses
  %i.cf = lshr i128 %i.ce, 51
  %i.cg = trunc i128 %i.ce to i64
  %i.ch = and i64 %i.cg, 2251799813685247
  %i.ci = and i128 %i.cf, 18446744073709551615
  %i.cj = add i128 %i.au, %i.h
  %i.ck = add i128 %i.cj, %i.ay
  %i.cl = add i128 %i.ck, %i.ar
  %i.cm = add i128 %i.cl, %i.bf
  %i.cn = add i128 %i.cm, %i.ci                   ; 2 uses
  %i.co = lshr i128 %i.cn, 51
  %i.cp = trunc i128 %i.cn to i64
  %i.cq = and i64 %i.cp, 2251799813685247
  %i.cr = and i128 %i.co, 18446744073709551615
  %i.cs = add i128 %i.at, %i.aq
  %i.ct = add i128 %i.cs, %i.ax
  %i.cu = add i128 %i.ct, %i.ao
  %i.cv = add i128 %i.cu, %i.be
  %i.cw = add i128 %i.cv, %i.cr                   ; 2 uses
  %i.cx = lshr i128 %i.cw, 51
  %i.cy = trunc i128 %i.cx to i64
  %i.cz = trunc i128 %i.cw to i64
  %i.da = and i64 %i.cz, 2251799813685247
  %i.db = mul i64 %i.cy, 19
  %i.dc = add i64 %i.db, %i.bp                    ; 2 uses
  %i.dd = lshr i64 %i.dc, 51
  %i.de = and i64 %i.dc, 2251799813685247
  %i.df = add nuw nsw i64 %i.dd, %i.bz            ; 2 uses
  %i.dg = lshr i64 %i.df, 51
  %i.dh = and i64 %i.df, 2251799813685247
  %i.di = add nuw nsw i64 %i.dg, %i.ch
  store i64 %i.de, ptr %0, align 8, !tbaa !13
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dh, ptr %i.dj, align 8, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.di, ptr %i.dk, align 8, !tbaa !13
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cq, ptr %i.dl, align 8, !tbaa !13
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.da, ptr %i.dm, align 8, !tbaa !13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { mustprogress nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{i64 2357989}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = !{i64 19644}
!29 = !{i64 1946554}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14, !39, !40}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14, !39, !40}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = distinct !{!41, !14}
!42 = !{i64 1946794}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !14}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !14}
!48 = distinct !{!48, !14}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
end_hunk_2
