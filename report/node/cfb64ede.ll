begin_hunk_0
  %i.n = sdiv i32 %2, 8
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.b, i64 %i.o
  %i.q = srem i32 %2, 8                           ; 3 uses
  %.not326.not = icmp eq i32 %i.q, 0              ; 2 uses
  %9 = select i1 %.not326.not, i64 8, i64 9
  %i.r = sub nsw i32 8, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.t = insertelement <8 x i32> poison, i32 %i.r, i64 0
end_hunk_0
begin_hunk_1
  %i.ab = sdiv i32 %2, 8
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %i.b, i64 %i.ac
  %i.ae = srem i32 %2, 8                          ; 3 uses
  %.not324.not = icmp eq i32 %i.ae, 0             ; 2 uses
  %10 = select i1 %.not324.not, i64 8, i64 9
  %i.af = sub nsw i32 8, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ah = insertelement <8 x i32> poison, i32 %i.af, i64 0
end_hunk_1
begin_hunk_2
bb.u:                                             ; preds = %bb.t, %bb.l
  %.8272 = phi ptr [ %i.cc, %bb.l ], [ %i.cy, %bb.t ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.8272, i64 %i.e
  switch i32 %2, label %11 [
    i32 32, label %bb.w
    i32 64, label %bb.v
  ]
end_hunk_2
begin_hunk_3
bb.v:                                             ; preds = %bb.u
  br label %bb.w

11:                                               ; preds = %bb.u
  store i32 %.0289335, ptr %i.b, align 16
  store i32 %.0284336, ptr %i.k, align 4
  store i32 %i.bz, ptr %i.l, align 8
  store i32 %i.cb, ptr %i.m, align 4
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(8) %i.p, i64 %9, i1 false)
  br i1 %.not326.not, label %.loopexit330, label %.preheader329.preheader

.preheader329.preheader:                          ; preds = %11
  %i.da = load <8 x i8>, ptr %i.b, align 16, !tbaa !9
  %i.db = load <8 x i8>, ptr %i.s, align 1, !tbaa !9
  %i.dc = zext <8 x i8> %i.da to <8 x i32>
end_hunk_3
begin_hunk_4
  %i.dg = or <8 x i32> %i.df, %i.de
  %i.dh = trunc <8 x i32> %i.dg to <8 x i8>
  store <8 x i8> %i.dh, ptr %i.b, align 16, !tbaa !9
  br label %.loopexit330

.loopexit330:                                     ; preds = %.preheader329.preheader, %11
  %12 = load i32, ptr %i.b, align 16
  %13 = load i32, ptr %i.k, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %.loopexit330
  %.1290 = phi i32 [ %12, %.loopexit330 ], [ %i.bz, %bb.v ], [ %.0284336, %bb.u ] ; 2 uses
  %.1285 = phi i32 [ %13, %.loopexit330 ], [ %i.cb, %bb.v ], [ %i.bz, %bb.u ] ; 2 uses
  %.not325 = icmp ult i64 %i.al, %i.e
  br i1 %.not325, label %.loopexit328, label %bb.c, !llvm.loop !13

end_hunk_4
begin_hunk_5
  %.15309 = phi i32 [ 0, %bb.x ], [ %.14308, %bb.af ] ; 3 uses
  %.17 = phi ptr [ %i.dj, %bb.x ], [ %i.eq, %bb.af ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.17, i64 %i.e
  switch i32 %2, label %14 [
    i32 32, label %bb.ai
    i32 64, label %bb.ah
  ]
end_hunk_5
begin_hunk_6
bb.ah:                                            ; preds = %bb.ag
  br label %bb.ai

14:                                               ; preds = %bb.ag
  store i32 %.2291343, ptr %i.b, align 16
  store i32 %.2286344, ptr %i.y, align 4
  store i32 %.7317, ptr %i.z, align 8
  store i32 %.15309, ptr %i.aa, align 4
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(8) %i.ad, i64 %10, i1 false)
  br i1 %.not324.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %14
  %i.ev = load <8 x i8>, ptr %i.b, align 16, !tbaa !9
  %i.ew = load <8 x i8>, ptr %i.ag, align 1, !tbaa !9
  %i.ex = zext <8 x i8> %i.ev to <8 x i32>
end_hunk_6
begin_hunk_7
  %i.fb = or <8 x i32> %i.fa, %i.ez
  %i.fc = trunc <8 x i32> %i.fb to <8 x i8>
  store <8 x i8> %i.fc, ptr %i.b, align 16, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %14
  %15 = load i32, ptr %i.b, align 16
  %16 = load i32, ptr %i.y, align 4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %.loopexit
  %.3292 = phi i32 [ %15, %.loopexit ], [ %.7317, %bb.ah ], [ %.2286344, %bb.ag ] ; 2 uses
  %.3287 = phi i32 [ %16, %.loopexit ], [ %.15309, %bb.ah ], [ %.7317, %bb.ag ] ; 2 uses
  %i.fd = load i32, ptr %i.a, align 4, !tbaa !5
  %i.fe = xor i32 %i.fd, %.7317                   ; 4 uses
  %i.ff = load i32, ptr %i.x, align 4, !tbaa !5
end_hunk_7
