inline.NumInlined: 105
inline.NumDeleted: 33
begin_hunk_0_@LzmaEnc_RestoreState:.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 213904
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 252688
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 32, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 214384
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 253168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 32, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 213936
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 252720
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 32, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 214416
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 253200
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i64 32, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 214448
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 253232
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.bd, ptr noundef nonnull align 8 dereferenceable(512) %i.be, i64 512, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 252360
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 213968
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 252752
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 213992
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 252776
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 214016
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 252800
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 214040
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 252824
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 214960
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 253744
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(228) %i.bo, ptr noundef nonnull align 8 dereferenceable(228) %i.bp, i64 228, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 215188
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 253972
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bq, ptr noundef nonnull align 4 dereferenceable(32) %i.br, i64 32, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 210392
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 291012
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 4 dereferenceable(16) %i.bt, i64 16, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 213576
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !48
  %i.bw = load ptr, ptr %i.bf, align 8, !tbaa !47
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 252228
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !49
  %i.bz = shl i32 768, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = shl nsw i64 %i.ca, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bv, ptr align 2 %i.bw, i64 %i.cb, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 6) i32 @LzmaEnc_SetProps(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %1, align 4, !tbaa !4 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !4 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !4 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !4 ; 2 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.16.0.copyload = load i32, ptr %.sroa.16.0..sroa_idx, align 4, !tbaa !4 ; 2 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.20.0.copyload = load i32, ptr %.sroa.20.0..sroa_idx, align 4, !tbaa !4 ; 2 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.23.0.copyload = load i32, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !4 ; 2 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.26.0.copyload = load i32, ptr %.sroa.26.0..sroa_idx, align 4, !tbaa !4 ; 2 uses
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.29.0.copyload = load i32, ptr %.sroa.29.0..sroa_idx, align 4, !tbaa !4 ; 2 uses
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.32.0.copyload = load i32, ptr %.sroa.32.0..sroa_idx, align 4, !tbaa !4 ; 2 uses
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.36.0.copyload = load i32, ptr %.sroa.36.0..sroa_idx, align 4, !tbaa !4
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.37.0.copyload = load i32, ptr %.sroa.37.0..sroa_idx, align 4, !tbaa !4 ; 2 uses
  %i.a = icmp slt i32 %.sroa.0.0.copyload, 0
  %spec.store.select.i = select i1 %i.a, i32 5, i32 %.sroa.0.0.copyload ; 5 uses
  %i.b = icmp eq i32 %.sroa.5.0.copyload, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %spec.store.select.i, 6
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = shl nsw i32 %spec.store.select.i, 1
  %i.e = add nsw i32 %i.d, 14
  %i.f = shl nuw nsw i32 1, %i.e
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %spec.store.select.i, 6
  %i.h = select i1 %i.g, i32 33554432, i32 67108864
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.sroa.5.0 = phi i32 [ %.sroa.5.0.copyload, %bb.a ], [ %i.f, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.i = icmp slt i32 %.sroa.8.0.copyload, 0
  %spec.select47 = select i1 %i.i, i32 3, i32 %.sroa.8.0.copyload ; 2 uses
  %.sroa.12.0 = tail call i32 @llvm.smax.i32(i32 %.sroa.12.0.copyload, i32 0)
  %i.j = icmp slt i32 %.sroa.16.0.copyload, 0
  %.sroa.16.0 = select i1 %i.j, i32 2, i32 %.sroa.16.0.copyload ; 2 uses
  %i.k = icmp slt i32 %.sroa.20.0.copyload, 0
  %i.l = icmp sgt i32 %spec.store.select.i, 4
  %i.m = zext i1 %i.l to i32
  %.sroa.20.0 = select i1 %i.k, i32 %i.m, i32 %.sroa.20.0.copyload ; 2 uses
  %i.n = icmp slt i32 %.sroa.23.0.copyload, 0
  %i.o = icmp slt i32 %spec.store.select.i, 7
  %i.p = select i1 %i.o, i32 32, i32 64
  %.sroa.23.0 = select i1 %i.n, i32 %i.p, i32 %.sroa.23.0.copyload ; 2 uses
  %i.q = icmp slt i32 %.sroa.26.0.copyload, 0
  %i.r = icmp ne i32 %.sroa.20.0, 0
  %i.s = zext i1 %i.r to i32
  %.sroa.26.0 = select i1 %i.q, i32 %i.s, i32 %.sroa.26.0.copyload ; 3 uses
  %i.t = icmp slt i32 %.sroa.29.0.copyload, 0
  %.sroa.29.0 = select i1 %i.t, i32 4, i32 %.sroa.29.0.copyload ; 2 uses
  %i.u = icmp eq i32 %.sroa.32.0.copyload, 0
  br i1 %i.u, label %bb.f, label %LzmaEncProps_Normalize.exit

bb.f:                                             ; preds = %bb.e
  %i.v = lshr i32 %.sroa.23.0, 1
  %i.w = add nuw nsw i32 %i.v, 16
  %.not.i = icmp eq i32 %.sroa.26.0, 0
  %i.x = zext i1 %.not.i to i32
  %i.y = lshr i32 %i.w, %i.x
  br label %LzmaEncProps_Normalize.exit

LzmaEncProps_Normalize.exit:                      ; preds = %bb.f, %bb.e
  %.sroa.32.0 = phi i32 [ %i.y, %bb.f ], [ %.sroa.32.0.copyload, %bb.e ] ; 2 uses
  %i.z = icmp slt i32 %.sroa.37.0.copyload, 0
  %.not33.i = icmp eq i32 %.sroa.26.0, 0          ; 2 uses
  %.not34.i = icmp eq i32 %.sroa.20.0, 0          ; 2 uses
  %i.aa = select i1 %.not33.i, i1 true, i1 %.not34.i
  %i.ab = select i1 %i.aa, i32 0, i32 2
  %.sroa.37.0 = select i1 %i.z, i32 %i.ab, i32 %.sroa.37.0.copyload
  %i.ac = icmp samesign ugt i32 %spec.select47, 8
  %i.ad = icmp sgt i32 %.sroa.12.0.copyload, 4
  %or.cond = select i1 %i.ac, i1 true, i1 %i.ad
  %i.ae = icmp samesign ugt i32 %.sroa.16.0, 4
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.ae
  %i.af = icmp ugt i32 %.sroa.5.0, 1073741824
  %or.cond11 = select i1 %or.cond5, i1 true, i1 %i.af
  br i1 %or.cond11, label %bb.k, label %bb.g

bb.g:                                             ; preds = %LzmaEncProps_Normalize.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 252344
  store i32 %.sroa.5.0, ptr %i.ag, align 8, !tbaa !50
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 252348
  store i32 %.sroa.32.0, ptr %i.ah, align 4, !tbaa !51
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %.sroa.23.0, i32 5)
  %spec.store.select12 = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 273)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 210384
  store i32 %spec.store.select12, ptr %i.ai, align 8, !tbaa !52
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 213556
  store i32 %spec.select47, ptr %i.aj, align 4, !tbaa !53
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 213560
  store i32 %.sroa.12.0, ptr %i.ak, align 8, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 213564
  store i32 %.sroa.16.0, ptr %i.al, align 4, !tbaa !55
  %i.am = zext i1 %.not34.i to i32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 252232
  store i32 %i.am, ptr %i.an, align 8, !tbaa !56
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1672
  store i32 %.sroa.26.0, ptr %i.ao, align 8, !tbaa !57
  br i1 %.not33.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = icmp samesign ult i32 %.sroa.29.0, 2
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %spec.select = tail call i32 @llvm.umin.i32(i32 %.sroa.29.0, i32 4)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.0 = phi i32 [ 4, %bb.g ], [ 2, %bb.h ], [ %spec.select, %bb.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1656
  store i32 %.0, ptr %i.aq, align 8, !tbaa !58
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1620
  store i32 %.sroa.32.0, ptr %i.ar, align 4, !tbaa !59
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 252312
  store i32 %.sroa.36.0.copyload, ptr %i.as, align 8, !tbaa !60
  %i.at = icmp samesign ugt i32 %.sroa.37.0, 1
  %i.au = zext i1 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 252336
  store i32 %i.au, ptr %i.av, align 8, !tbaa !61
  br label %bb.k

bb.k:                                             ; preds = %LzmaEncProps_Normalize.exit, %bb.j
  %.030 = phi i32 [ 0, %bb.j ], [ 5, %LzmaEncProps_Normalize.exit ]
  ret i32 %.030
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @LzmaEnc_InitPriceTables(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %._crit_edge.3
  %indvars.iv = phi i64 [ 8, %bb.a ], [ %indvars.iv.next, %._crit_edge.3 ] ; 6 uses
  %i.a = mul nuw nsw i64 %indvars.iv, %indvars.iv
  %i.b = icmp samesign ugt i64 %indvars.iv, 255
  %i.c = trunc nuw nsw i64 %i.a to i32            ; 2 uses
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.118 = phi i32 [ %i.e, %.lr.ph ], [ 0, %.preheader ]
  %.11517 = phi i32 [ %i.d, %.lr.ph ], [ %i.c, %.preheader ] ; 2 uses
  %i.d = lshr i32 %.11517, 1                      ; 2 uses
  %i.e = add nuw nsw i32 %.118, 1                 ; 2 uses
  %i.f = icmp ugt i32 %.11517, 131071
  br i1 %i.f, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !62

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.g = shl nuw i32 %i.e, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.115.lcssa = phi i32 [ %i.c, %.preheader ], [ %i.d, %._crit_edge.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ 0, %.preheader ], [ %i.g, %._crit_edge.loopexit ] ; 2 uses
  %i.h = mul nuw i32 %.115.lcssa, %.115.lcssa     ; 2 uses
  %i.i = icmp samesign ugt i32 %.115.lcssa, 255
  br i1 %i.i, label %.lr.ph.1, label %._crit_edge.1

.lr.ph.1:                                         ; preds = %._crit_edge, %.lr.ph.1
  %.118.1 = phi i32 [ %i.k, %.lr.ph.1 ], [ %.1.lcssa, %._crit_edge ]
  %.11517.1 = phi i32 [ %i.j, %.lr.ph.1 ], [ %i.h, %._crit_edge ] ; 2 uses
  %i.j = lshr i32 %.11517.1, 1                    ; 2 uses
  %i.k = add nuw nsw i32 %.118.1, 1               ; 2 uses
  %i.l = icmp ugt i32 %.11517.1, 131071
  br i1 %i.l, label %.lr.ph.1, label %._crit_edge.1, !llvm.loop !62

._crit_edge.1:                                    ; preds = %.lr.ph.1, %._crit_edge
  %.115.lcssa.1 = phi i32 [ %i.h, %._crit_edge ], [ %i.j, %.lr.ph.1 ] ; 3 uses
  %.1.lcssa.1 = phi i32 [ %.1.lcssa, %._crit_edge ], [ %i.k, %.lr.ph.1 ]
  %i.m = mul nuw i32 %.115.lcssa.1, %.115.lcssa.1 ; 2 uses
  %i.n = shl i32 %.1.lcssa.1, 1                   ; 2 uses
  %i.o = icmp ugt i32 %.115.lcssa.1, 255
  br i1 %i.o, label %.lr.ph.2, label %._crit_edge.2

.lr.ph.2:                                         ; preds = %._crit_edge.1, %.lr.ph.2
  %.118.2 = phi i32 [ %i.q, %.lr.ph.2 ], [ %i.n, %._crit_edge.1 ]
  %.11517.2 = phi i32 [ %i.p, %.lr.ph.2 ], [ %i.m, %._crit_edge.1 ] ; 2 uses
  %i.p = lshr i32 %.11517.2, 1                    ; 2 uses
  %i.q = add nuw nsw i32 %.118.2, 1               ; 2 uses
  %i.r = icmp ugt i32 %.11517.2, 131071
  br i1 %i.r, label %.lr.ph.2, label %._crit_edge.2, !llvm.loop !62

._crit_edge.2:                                    ; preds = %.lr.ph.2, %._crit_edge.1
  %.115.lcssa.2 = phi i32 [ %i.m, %._crit_edge.1 ], [ %i.p, %.lr.ph.2 ] ; 3 uses
  %.1.lcssa.2 = phi i32 [ %i.n, %._crit_edge.1 ], [ %i.q, %.lr.ph.2 ]
  %i.s = shl i32 %.1.lcssa.2, 1                   ; 2 uses
  %i.t = icmp ugt i32 %.115.lcssa.2, 255
  br i1 %i.t, label %.lr.ph.preheader.3, label %._crit_edge.3

.lr.ph.preheader.3:                               ; preds = %._crit_edge.2
  %1 = mul nuw i32 %.115.lcssa.2, %.115.lcssa.2
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.3, %.lr.ph.preheader.3
  %.118.3 = phi i32 [ %i.v, %.lr.ph.3 ], [ %i.s, %.lr.ph.preheader.3 ]
  %.11517.3 = phi i32 [ %i.u, %.lr.ph.3 ], [ %1, %.lr.ph.preheader.3 ] ; 2 uses
  %i.u = lshr i32 %.11517.3, 1
  %i.v = add nuw nsw i32 %.118.3, 1               ; 2 uses
  %i.w = icmp ugt i32 %.11517.3, 131071
  br i1 %i.w, label %.lr.ph.3, label %._crit_edge.3, !llvm.loop !62

._crit_edge.3:                                    ; preds = %.lr.ph.3, %._crit_edge.2
  %.1.lcssa.3 = phi i32 [ %i.s, %._crit_edge.2 ], [ %i.v, %.lr.ph.3 ]
  %i.x = sub i32 161, %.1.lcssa.3
  %i.y = lshr i64 %indvars.iv, 4
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.y
  store i32 %i.x, ptr %i.z, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16
  %i.aa = icmp samesign ult i64 %indvars.iv, 2032
  br i1 %i.aa, label %.preheader, label %bb.b, !llvm.loop !64

bb.b:                                             ; preds = %._crit_edge.3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @LzmaEnc_Construct(ptr noundef initializes((252280, 252296)) %0) local_unnamed_addr #6 {
bb.a:
  %1 = alloca %struct._CLzmaEncProps, align 4     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 252280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1560 ; 2 uses
  tail call void @MatchFinder_Construct(ptr noundef nonnull %i.b) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @MatchFinderMt_Construct(ptr noundef nonnull %i.c) #14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1552
  store ptr %i.b, ptr %i.d, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  store i32 5, ptr %1, align 4, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 0, ptr %i.e, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 -1, ptr %i.g, align 4, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.h, i8 -1, i64 28, i1 false)
  store i32 0, ptr %i.i, align 4, !tbaa !13
  %i.j = call i32 @LzmaEnc_SetProps(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 199484
  tail call void @LzmaEnc_FastPosInit(ptr noundef nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 207676
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.3.i, %bb.a
  %indvars.iv.i = phi i64 [ 8, %bb.a ], [ %indvars.iv.next.i, %._crit_edge.3.i ] ; 6 uses
  %i.m = mul nuw nsw i64 %indvars.iv.i, %indvars.iv.i
  %i.n = icmp samesign ugt i64 %indvars.iv.i, 255
  %i.o = trunc nuw nsw i64 %i.m to i32            ; 2 uses
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.118.i = phi i32 [ %i.q, %.lr.ph.i ], [ 0, %.preheader.i ]
  %.11517.i = phi i32 [ %i.p, %.lr.ph.i ], [ %i.o, %.preheader.i ] ; 2 uses
  %i.p = lshr i32 %.11517.i, 1                    ; 2 uses
  %i.q = add nuw nsw i32 %.118.i, 1               ; 2 uses
  %i.r = icmp ugt i32 %.11517.i, 131071
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !62

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.s = shl nuw i32 %i.q, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.115.lcssa.i = phi i32 [ %i.o, %.preheader.i ], [ %i.p, %._crit_edge.loopexit.i ] ; 3 uses
  %.1.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.s, %._crit_edge.loopexit.i ] ; 2 uses
  %i.t = mul nuw i32 %.115.lcssa.i, %.115.lcssa.i ; 2 uses
  %i.u = icmp samesign ugt i32 %.115.lcssa.i, 255
  br i1 %i.u, label %.lr.ph.1.i, label %._crit_edge.1.i

.lr.ph.1.i:                                       ; preds = %._crit_edge.i, %.lr.ph.1.i
  %.118.1.i = phi i32 [ %i.w, %.lr.ph.1.i ], [ %.1.lcssa.i, %._crit_edge.i ]
  %.11517.1.i = phi i32 [ %i.v, %.lr.ph.1.i ], [ %i.t, %._crit_edge.i ] ; 2 uses
  %i.v = lshr i32 %.11517.1.i, 1                  ; 2 uses
  %i.w = add nuw nsw i32 %.118.1.i, 1             ; 2 uses
  %i.x = icmp ugt i32 %.11517.1.i, 131071
  br i1 %i.x, label %.lr.ph.1.i, label %._crit_edge.1.i, !llvm.loop !62

._crit_edge.1.i:                                  ; preds = %.lr.ph.1.i, %._crit_edge.i
  %.115.lcssa.1.i = phi i32 [ %i.t, %._crit_edge.i ], [ %i.v, %.lr.ph.1.i ] ; 3 uses
  %.1.lcssa.1.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ %i.w, %.lr.ph.1.i ]
  %i.y = mul nuw i32 %.115.lcssa.1.i, %.115.lcssa.1.i ; 2 uses
  %i.z = shl i32 %.1.lcssa.1.i, 1                 ; 2 uses
  %i.aa = icmp ugt i32 %.115.lcssa.1.i, 255
  br i1 %i.aa, label %.lr.ph.2.i, label %._crit_edge.2.i

.lr.ph.2.i:                                       ; preds = %._crit_edge.1.i, %.lr.ph.2.i
  %.118.2.i = phi i32 [ %i.ac, %.lr.ph.2.i ], [ %i.z, %._crit_edge.1.i ]
  %.11517.2.i = phi i32 [ %i.ab, %.lr.ph.2.i ], [ %i.y, %._crit_edge.1.i ] ; 2 uses
  %i.ab = lshr i32 %.11517.2.i, 1                 ; 2 uses
  %i.ac = add nuw nsw i32 %.118.2.i, 1            ; 2 uses
  %i.ad = icmp ugt i32 %.11517.2.i, 131071
  br i1 %i.ad, label %.lr.ph.2.i, label %._crit_edge.2.i, !llvm.loop !62

._crit_edge.2.i:                                  ; preds = %.lr.ph.2.i, %._crit_edge.1.i
  %.115.lcssa.2.i = phi i32 [ %i.y, %._crit_edge.1.i ], [ %i.ab, %.lr.ph.2.i ] ; 3 uses
  %.1.lcssa.2.i = phi i32 [ %i.z, %._crit_edge.1.i ], [ %i.ac, %.lr.ph.2.i ]
  %i.ae = shl i32 %.1.lcssa.2.i, 1                ; 2 uses
  %i.af = icmp ugt i32 %.115.lcssa.2.i, 255
  br i1 %i.af, label %.lr.ph.preheader.3.i, label %._crit_edge.3.i

.lr.ph.preheader.3.i:                             ; preds = %._crit_edge.2.i
  %2 = mul nuw i32 %.115.lcssa.2.i, %.115.lcssa.2.i
  br label %.lr.ph.3.i

.lr.ph.3.i:                                       ; preds = %.lr.ph.3.i, %.lr.ph.preheader.3.i
  %.118.3.i = phi i32 [ %i.ah, %.lr.ph.3.i ], [ %i.ae, %.lr.ph.preheader.3.i ]
  %.11517.3.i = phi i32 [ %i.ag, %.lr.ph.3.i ], [ %2, %.lr.ph.preheader.3.i ] ; 2 uses
  %i.ag = lshr i32 %.11517.3.i, 1
  %i.ah = add nuw nsw i32 %.118.3.i, 1            ; 2 uses
  %i.ai = icmp ugt i32 %.11517.3.i, 131071
  br i1 %i.ai, label %.lr.ph.3.i, label %._crit_edge.3.i, !llvm.loop !62

._crit_edge.3.i:                                  ; preds = %.lr.ph.3.i, %._crit_edge.2.i
  %.1.lcssa.3.i = phi i32 [ %i.ae, %._crit_edge.2.i ], [ %i.ah, %.lr.ph.3.i ]
  %i.aj = sub i32 161, %.1.lcssa.3.i
  %i.ak = lshr i64 %indvars.iv.i, 4
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ak
  store i32 %i.aj, ptr %i.al, align 4, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 16
  %i.am = icmp samesign ult i64 %indvars.iv.i, 2032
  br i1 %i.am, label %.preheader.i, label %LzmaEnc_InitPriceTables.exit, !llvm.loop !64

LzmaEnc_InitPriceTables.exit:                     ; preds = %._crit_edge.3.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 213576
  store ptr null, ptr %i.an, align 8, !tbaa !48
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 252360
  store ptr null, ptr %i.ao, align 8, !tbaa !66
  ret void
}

declare void @MatchFinder_Construct(ptr noundef) local_unnamed_addr #7

declare void @MatchFinderMt_Construct(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @LzmaEnc_Create(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67
  %i.b = tail call ptr %i.a(ptr noundef nonnull %0, i64 noundef 291032) #14 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @LzmaEnc_Construct(ptr noundef nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local void @LzmaEnc_FreeLits(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 213576 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  tail call void %i.b(ptr noundef %1, ptr noundef %i.d) #14
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 252360 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !66
  tail call void %i.e(ptr noundef %1, ptr noundef %i.g) #14
  store ptr null, ptr %i.c, align 8, !tbaa !48
  store ptr null, ptr %i.f, align 8, !tbaa !66
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @LzmaEnc_Destruct(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @MatchFinderMt_Destruct(ptr noundef nonnull %i.a, ptr noundef %2) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1560
  tail call void @MatchFinder_Free(ptr noundef nonnull %i.b, ptr noundef %2) #14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 213576 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  tail call void %i.d(ptr noundef %1, ptr noundef %i.f) #14, !inline_history !70
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 252360 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66
  tail call void %i.g(ptr noundef %1, ptr noundef %i.i) #14, !inline_history !70
  store ptr null, ptr %i.e, align 8, !tbaa !48
  store ptr null, ptr %i.h, align 8, !tbaa !66
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 252280 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !71
  tail call void %i.j(ptr noundef %1, ptr noundef %i.l) #14, !inline_history !72
  store ptr null, ptr %i.k, align 8, !tbaa !71
  ret void
}

declare void @MatchFinderMt_Destruct(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @MatchFinder_Free(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @LzmaEnc_Destroy(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @MatchFinderMt_Destruct(ptr noundef nonnull %i.a, ptr noundef %2) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1560
  tail call void @MatchFinder_Free(ptr noundef nonnull %i.b, ptr noundef %2) #14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 213576 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48
  tail call void %i.d(ptr noundef %1, ptr noundef %i.f) #14, !inline_history !73
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 252360 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66
  tail call void %i.g(ptr noundef %1, ptr noundef %i.i) #14, !inline_history !73
  store ptr null, ptr %i.e, align 8, !tbaa !48
  store ptr null, ptr %i.h, align 8, !tbaa !66
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 252280 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !71
  tail call void %i.j(ptr noundef %1, ptr noundef %i.l) #14, !inline_history !74
  store ptr null, ptr %i.k, align 8, !tbaa !71
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !69
  tail call void %i.m(ptr noundef %1, ptr noundef %0) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @LzmaEnc_Init(ptr nofree noundef captures(none) initializes((210392, 210412), (252240, 252245), (252248, 252272), (252296, 252308)) %0) local_unnamed_addr #8 {
.preheader71:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 210392
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 252240
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 252248
  store i64 0, ptr %i.c, align 8, !tbaa !75
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  store i32 -1, ptr %i.b, align 8, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 252256
  store i64 1, ptr %i.d, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 252244
  store i8 0, ptr %i.e, align 4, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 252280
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 252264
  store ptr %i.g, ptr %i.h, align 8, !tbaa !79
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 252296
  store i64 0, ptr %i.i, align 8, !tbaa !80
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 252304
  store i32 0, ptr %i.j, align 8, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 214040
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 214016
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 213992
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 213968
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 214064
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 213584
  store <8 x i16> splat (i16 1024), ptr %i.p, align 8, !tbaa !23
  store <8 x i16> splat (i16 1024), ptr %i.o, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 213600
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 214080
  store <8 x i16> splat (i16 1024), ptr %i.q, align 8, !tbaa !23
  store <8 x i16> splat (i16 1024), ptr %i.r, align 8, !tbaa !23
  store i16 1024, ptr %i.n, align 8, !tbaa !23
  store i16 1024, ptr %i.m, align 8, !tbaa !23
  store i16 1024, ptr %i.l, align 8, !tbaa !23
  store i16 1024, ptr %i.k, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 213616
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 214096
  store <8 x i16> splat (i16 1024), ptr %i.s, align 8, !tbaa !23
  store <8 x i16> splat (i16 1024), ptr %i.t, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 213632
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 214112
  store <8 x i16> splat (i16 1024), ptr %i.u, align 8, !tbaa !23
  store <8 x i16> splat (i16 1024), ptr %i.v, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 213970
  store i16 1024, ptr %i.w, align 2, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 213994
  store i16 1024, ptr %i.x, align 2, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 214018
  store i16 1024, ptr %i.y, align 2, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 214042
  store i16 1024, ptr %i.z, align 2, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 213648
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 214128
  store <8 x i16> splat (i16 1024), ptr %i.aa, align 8, !tbaa !23
  store <8 x i16> splat (i16 1024), ptr %i.ab, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 213664
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 214144
  store <8 x i16> splat (i16 1024), ptr %i.ac, align 8, !tbaa !23
  store <8 x i16> splat (i16 1024), ptr %i.ad, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 213972
  store i16 1024, ptr %i.ae, align 4, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 213996
  store i16 1024, ptr %i.af, align 4, !tbaa !23
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 214020
  store i16 1024, ptr %i.ag, align 4, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 214044
  store i16 1024, ptr %i.ah, align 4, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 213680
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 214160
  store <8 x i16> splat (i16 1024), ptr %i.ai, align 8, !tbaa !23
  store <8 x i16> splat (i16 1024), ptr %i.aj, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 213696
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 214176
  store <8 x i16> splat (i16 1024), ptr %i.ak, align 8, !tbaa !23
  store <8 x i16> splat (i16 1024), ptr %i.al, align 8, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 213974
  store i16 1024, ptr %i.am, align 2, !tbaa !23
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 213998
  store i16 1024, ptr %i.an, align 2, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 214022
end_hunk_0
