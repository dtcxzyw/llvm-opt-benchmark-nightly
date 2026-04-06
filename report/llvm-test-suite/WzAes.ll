begin_hunk_0_@_ZN7NCrypto6NWzAes10CBaseCoder4InitEv:.lr.ph.i
  %i.b = alloca [17 x i32], align 16              ; 6 uses
  %i.c = alloca [64 x i32], align 16              ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.f = and i32 %i.e, 3                          ; 3 uses
  %i.g = add nuw nsw i32 %i.f, 1                  ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.g to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)
end_hunk_0
begin_hunk_1_@_ZN7NCrypto6NWzAes10CBaseCoder4InitEv:.lr.ph.i
  %i.m = tail call i32 @llvm.bswap.i32(i32 %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.m, ptr %i.n, align 4, !tbaa !4
  %exitcond.not.i.1 = icmp eq i32 %i.g, 2
  br i1 %exitcond.not.i.1, label %_ZN7NCrypto6NWzAesL16BytesToBeUInt32sEPKhPjj.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
end_hunk_1
begin_hunk_2_@_ZN7NCrypto6NWzAes10CBaseCoder4InitEv:.lr.ph.i
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.q, ptr %i.r, align 8, !tbaa !4
  %exitcond.not.i.2 = icmp eq i32 %i.g, 3
  br i1 %exitcond.not.i.2, label %_ZN7NCrypto6NWzAesL16BytesToBeUInt32sEPKhPjj.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
end_hunk_2
begin_hunk_3_@_ZN7NCrypto6NWzAes10CBaseCoder4InitEv:.lr.ph.i
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !8
  %i.af = zext nneg i32 %i.aa to i64
  call void @_ZN7NCrypto5NSha112Pbkdf2Hmac32EPKhmPKjmjPjm(ptr noundef %i.ac, i64 noundef %i.ae, ptr noundef nonnull %i.c, i64 noundef %wide.trip.count.i, i32 noundef 1000, ptr noundef nonnull %i.b, i64 noundef %i.af)
  %i.ag = shl nuw nsw i32 %i.f, 4
  %i.ah = add nuw nsw i32 %i.ag, 18
  %wide.trip.count = zext nneg i32 %i.ah to i64   ; 2 uses
  %n.vec = add nsw i64 %wide.trip.count, -2       ; 4 uses
  br label %vector.body
end_hunk_3
