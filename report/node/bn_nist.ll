inline.NumInlined: 62
inline.NumDeleted: 3
begin_hunk_0_@BN_nist_mod_192:bb.a
  %4 = alloca %union.anon, align 8                ; 10 uses
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !9    ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !13     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
end_hunk_0
begin_hunk_1_@BN_nist_mod_192:bb.a
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr align 8 %i.aa, i64 %i.ac, i1 false), !tbaa !16
  %5 = icmp samesign ult i32 %i.c, 6
  br i1 %5, label %.lr.ph125.preheader, label %._crit_edge

.lr.ph125.preheader:                              ; preds = %nist_cp_bn.exit, %.preheader
  %smax = tail call i32 @llvm.smax.i32(i32 %i.c, i32 3) ; 2 uses
  %6 = zext nneg i32 %smax to i64
  %7 = shl nuw nsw i64 %6, 3
  %scevgep.a = getelementptr i8, ptr %4, i64 %7
  %scevgep = getelementptr i8, ptr %scevgep.a, i64 -24
  %i.ad = shl i32 %smax, 3
  %i.ae = sub i32 40, %i.ad
  %i.af = zext i32 %i.ae to i64
  %i.ag = add nuw nsw i64 %i.af, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.ag, i1 false), !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph125.preheader, %.preheader
end_hunk_1
begin_hunk_2_@BN_nist_mod_256:bb.a
  %4 = alloca %union.anon.1, align 8              ; 12 uses
  %i.a = alloca [4 x i64], align 16               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !9    ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !13     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
end_hunk_2
begin_hunk_3_@BN_nist_mod_256:bb.a
  %i.ae = zext nneg i32 %i.ac to i64
  %i.af = shl nuw nsw i64 %i.ae, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr align 8 %i.ad, i64 %i.af, i1 false), !tbaa !16
  %5 = icmp samesign ult i32 %i.c, 8
  br i1 %5, label %.lr.ph252.preheader, label %._crit_edge

.lr.ph252.preheader:                              ; preds = %nist_cp_bn.exit, %.preheader
  %smax = tail call i32 @llvm.smax.i32(i32 %i.c, i32 4) ; 2 uses
  %6 = zext nneg i32 %smax to i64
  %7 = shl nuw nsw i64 %6, 3
  %scevgep.a = getelementptr i8, ptr %4, i64 %7
  %scevgep = getelementptr i8, ptr %scevgep.a, i64 -32
  %i.ag = shl i32 %smax, 3
  %i.ah = sub i32 56, %i.ag
  %i.ai = zext i32 %i.ah to i64
  %i.aj = add nuw nsw i64 %i.ai, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.aj, i1 false), !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph252.preheader, %.preheader
end_hunk_3
begin_hunk_4_@BN_nist_mod_384:bb.a
  %4 = alloca %union.anon.2, align 8              ; 16 uses
  %i.a = alloca [6 x i64], align 16               ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !9    ; 4 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !13     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
end_hunk_4
begin_hunk_5_@BN_nist_mod_384:bb.a
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = shl nuw nsw i64 %i.ak, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr align 8 %i.aj, i64 %i.al, i1 false), !tbaa !16
  %5 = icmp samesign ult i32 %i.c, 12
  br i1 %5, label %.lr.ph292.preheader, label %._crit_edge

.lr.ph292.preheader:                              ; preds = %nist_cp_bn.exit, %.preheader
  %smax = tail call i32 @llvm.smax.i32(i32 %i.c, i32 6) ; 2 uses
  %6 = zext nneg i32 %smax to i64
  %7 = shl nuw nsw i64 %6, 3
  %scevgep.a = getelementptr i8, ptr %4, i64 %7
  %scevgep = getelementptr i8, ptr %scevgep.a, i64 -48
  %i.am = shl i32 %smax, 3
  %i.an = sub i32 88, %i.am
  %i.ao = zext i32 %i.an to i64
  %i.ap = add nuw nsw i64 %i.ao, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.ap, i1 false), !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph292.preheader, %.preheader
end_hunk_5
