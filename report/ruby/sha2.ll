inline.NumInlined: 10
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@rb_Digest_SHA512_End:bb.a
  ret ptr %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define ptr @rb_Digest_SHA512_Data(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %3 = alloca %struct._SHA512_CTX, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(64) @sha512_initial_hash_value, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.b, i8 0, i64 144, i1 false)
  call void @rb_Digest_SHA512_Update(ptr noundef nonnull %3, ptr noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %rb_Digest_SHA512_End.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @rb_Digest_SHA512_Finish(ptr noundef nonnull %3, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.01116.idx.i = phi i64 [ 0, %bb.b ], [ %.01116.add.i.1, %bb.c ] ; 4 uses
  %.01215.i = phi ptr [ %2, %bb.b ], [ %i.z, %bb.c ] ; 5 uses
  %.01116.ptr.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01116.idx.i
  %i.d = load i8, ptr %.01116.ptr.i, align 2, !tbaa !17 ; 2 uses
  %i.e = lshr i8 %i.d, 4
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr @.str, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %.01215.i, i64 1
  store i8 %i.h, ptr %.01215.i, align 1, !tbaa !17
  %i.j = and i8 %i.d, 15
  %i.k = zext nneg i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @.str, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %.01215.i, i64 2
  store i8 %i.m, ptr %i.i, align 1, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01116.idx.i
  %.01116.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.p = load i8, ptr %.01116.ptr.i.1, align 1, !tbaa !17 ; 2 uses
  %i.q = lshr i8 %i.p, 4
  %i.r = zext nneg i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @.str, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %.01215.i, i64 3
  store i8 %i.t, ptr %i.n, align 1, !tbaa !17
  %i.v = and i8 %i.p, 15
  %i.w = zext nneg i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @.str, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %.01215.i, i64 4 ; 3 uses
  store i8 %i.y, ptr %i.u, align 1, !tbaa !17
  %.01116.add.i.1 = add nuw nsw i64 %.01116.idx.i, 2
  %exitcond.not.i.1 = icmp eq i64 %.01116.idx.i, 62
  br i1 %exitcond.not.i.1, label %bb.d, label %bb.c, !llvm.loop !22

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.z, align 1, !tbaa !17
  br label %rb_Digest_SHA512_End.exit

rb_Digest_SHA512_End.exit:                        ; preds = %bb.a, %bb.d
  %.1.i = phi ptr [ %i.z, %bb.d ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret ptr %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @rb_Digest_SHA384_Init(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) @sha384_initial_hash_value, i64 64, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.b, i8 0, i64 144, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @rb_Digest_SHA384_Update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  tail call void @rb_Digest_SHA512_Update(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i32 @rb_Digest_SHA384_Finish(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 3
  %i.e = and i32 %i.d, 127                        ; 7 uses
  %i.f = tail call i64 @llvm.bswap.i64(i64 %i.b)  ; 3 uses
  store i64 %i.f, ptr %i.a, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18
  %i.i = tail call i64 @llvm.bswap.i64(i64 %i.h)  ; 3 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !18
  %.not.i = icmp eq i32 %i.e, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  br i1 %.not.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw nsw i32 %i.e, 1                  ; 2 uses
  %i.l = zext nneg i32 %i.e to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  store i8 -128, ptr %i.m, align 1, !tbaa !17
  %i.n = icmp samesign ult i32 %i.e, 112
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = zext nneg i32 %i.k to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.o
  %i.q = sub nuw nsw i32 111, %i.e
  %i.r = zext nneg i32 %i.q to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.r, i1 false)
  br label %rb_Digest_SHA512_Last.exit

bb.e:                                             ; preds = %bb.c
  %.not39.i = icmp eq i32 %i.e, 127
  br i1 %.not39.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = zext nneg i32 %i.k to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.s
  %i.u = xor i32 %i.e, 127
  %i.v = zext nneg i32 %i.u to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.t, i8 0, i64 %i.v, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @rb_Digest_SHA512_Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.j)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(126) %i.j, i8 0, i64 112, i1 false)
  %.pre.i = load i64, ptr %i.g, align 8
  %.pre40.i = load i64, ptr %i.a, align 8
  br label %rb_Digest_SHA512_Last.exit

bb.h:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.j, i8 0, i64 112, i1 false)
  store i8 -128, ptr %i.j, align 8, !tbaa !17
  br label %rb_Digest_SHA512_Last.exit

rb_Digest_SHA512_Last.exit:                       ; preds = %bb.d, %bb.g, %bb.h
  %i.w = phi i64 [ %i.f, %bb.d ], [ %.pre40.i, %bb.g ], [ %i.f, %bb.h ]
  %i.x = phi i64 [ %i.i, %bb.d ], [ %.pre.i, %bb.g ], [ %i.i, %bb.h ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.w, ptr %i.z, align 8
  tail call void @rb_Digest_SHA512_Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.j)
  %i.aa = load i64, ptr %0, align 8, !tbaa !18
  %i.ab = tail call i64 @llvm.bswap.i64(i64 %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ab, ptr %1, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !18
  %i.af = tail call i64 @llvm.bswap.i64(i64 %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !18
  %i.aj = tail call i64 @llvm.bswap.i64(i64 %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !18
  %i.an = tail call i64 @llvm.bswap.i64(i64 %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.an, ptr %i.ak, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !18
  %i.ar = tail call i64 @llvm.bswap.i64(i64 %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.ar, ptr %i.ao, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.au = load i64, ptr %i.at, align 8, !tbaa !18
  %i.av = tail call i64 @llvm.bswap.i64(i64 %i.au)
  store i64 %i.av, ptr %i.as, align 8, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %rb_Digest_SHA512_Last.exit, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %0, i8 0, i64 208, i1 false)
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define ptr @rb_Digest_SHA384_End(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = lshr i32 %i.d, 3
  %i.f = and i32 %i.e, 127                        ; 7 uses
  %i.g = tail call i64 @llvm.bswap.i64(i64 %i.c)  ; 3 uses
  store i64 %i.g, ptr %i.b, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18
  %i.j = tail call i64 @llvm.bswap.i64(i64 %i.i)  ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !18
  %.not.i.i = icmp eq i32 %i.f, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  br i1 %.not.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw nsw i32 %i.f, 1                  ; 2 uses
  %i.m = zext nneg i32 %i.f to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  store i8 -128, ptr %i.n, align 1, !tbaa !17
  %i.o = icmp samesign ult i32 %i.f, 112
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = zext nneg i32 %i.l to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.p
  %i.r = sub nuw nsw i32 111, %i.f
  %i.s = zext nneg i32 %i.r to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 %i.s, i1 false)
  br label %rb_Digest_SHA384_Finish.exit

bb.e:                                             ; preds = %bb.c
  %.not39.i.i = icmp eq i32 %i.f, 127
  br i1 %.not39.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = zext nneg i32 %i.l to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.t
  %i.v = xor i32 %i.f, 127
  %i.w = zext nneg i32 %i.v to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.u, i8 0, i64 %i.w, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @rb_Digest_SHA512_Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.k)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(126) %i.k, i8 0, i64 112, i1 false)
  %.pre.i.i = load i64, ptr %i.h, align 8
  %.pre40.i.i = load i64, ptr %i.b, align 8
  br label %rb_Digest_SHA384_Finish.exit

bb.h:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.k, i8 0, i64 112, i1 false)
  store i8 -128, ptr %i.k, align 8, !tbaa !17
  br label %rb_Digest_SHA384_Finish.exit

rb_Digest_SHA384_Finish.exit:                     ; preds = %bb.d, %bb.g, %bb.h
  %i.x = phi i64 [ %i.g, %bb.d ], [ %.pre40.i.i, %bb.g ], [ %i.g, %bb.h ]
  %i.y = phi i64 [ %i.j, %bb.d ], [ %.pre.i.i, %bb.g ], [ %i.j, %bb.h ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.x, ptr %i.aa, align 8
  tail call void @rb_Digest_SHA512_Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.k)
  %i.ab = load i64, ptr %0, align 8, !tbaa !18
  %i.ac = tail call i64 @llvm.bswap.i64(i64 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ac, ptr %i.a, align 16, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !18
  %i.ag = tail call i64 @llvm.bswap.i64(i64 %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ag, ptr %i.ad, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !18
  %i.ak = tail call i64 @llvm.bswap.i64(i64 %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.ak, ptr %i.ah, align 16, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !18
  %i.ao = tail call i64 @llvm.bswap.i64(i64 %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !18
  %i.as = tail call i64 @llvm.bswap.i64(i64 %i.ar)
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.as, ptr %i.ap, align 16, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = load i64, ptr %i.au, align 8, !tbaa !18
  %i.aw = tail call i64 @llvm.bswap.i64(i64 %i.av)
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %0, i8 0, i64 208, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %rb_Digest_SHA384_Finish.exit
  %.01116.idx = phi i64 [ 0, %rb_Digest_SHA384_Finish.exit ], [ %.01116.add.1.a, %bb.i ] ; 4 uses
  %.01215 = phi ptr [ %1, %rb_Digest_SHA384_Finish.exit ], [ %i.bt, %bb.i ] ; 7 uses
  %.01116.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01116.idx
  %i.ax = load i8, ptr %.01116.ptr, align 1, !tbaa !17 ; 2 uses
  %i.ay = lshr i8 %i.ax, 4
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @.str, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %.01215, i64 1
  store i8 %i.bb, ptr %.01215, align 1, !tbaa !17
  %i.bd = and i8 %i.ax, 15
  %2 = zext nneg i8 %i.bd to i64
  %3 = getelementptr inbounds nuw i8, ptr @.str, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !17
  %5 = getelementptr inbounds nuw i8, ptr %.01215, i64 2
  store i8 %4, ptr %i.bc, align 1, !tbaa !17
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01116.idx
  %.01116.ptr.1 = getelementptr inbounds nuw i8, ptr %6, i64 1
  %7 = load i8, ptr %.01116.ptr.1, align 1, !tbaa !17 ; 2 uses
  %8 = lshr i8 %7, 4
  %i.be = zext nneg i8 %8 to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @.str, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %.01215, i64 3
  store i8 %i.bg, ptr %5, align 1, !tbaa !17
  %9 = and i8 %7, 15
  %10 = zext nneg i8 %9 to i64
  %11 = getelementptr inbounds nuw i8, ptr @.str, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %.01215, i64 4
  store i8 %12, ptr %i.bh, align 1, !tbaa !17
  %.01116.add.1 = add nuw nsw i64 %.01116.idx, 2  ; 2 uses
  %.01116.ptr.1.a = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01116.add.1
  %i.bj = load i8, ptr %.01116.ptr.1.a, align 1, !tbaa !17 ; 2 uses
  %i.bk = lshr i8 %i.bj, 4
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @.str, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %.01215, i64 5
  store i8 %i.bn, ptr %i.bi, align 1, !tbaa !17
  %i.bp = and i8 %i.bj, 15
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @.str, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !17
  %i.bt = getelementptr inbounds nuw i8, ptr %.01215, i64 6 ; 3 uses
  store i8 %i.bs, ptr %i.bo, align 1, !tbaa !17
  %.01116.add.1.a = add nuw nsw i64 %.01116.idx, 3
  %exitcond.not.1 = icmp eq i64 %.01116.add.1, 47
  br i1 %exitcond.not.1, label %bb.j, label %bb.i, !llvm.loop !23

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.bt, align 1, !tbaa !17
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %0, i8 0, i64 208, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1 = phi ptr [ %i.bt, %bb.j ], [ null, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret ptr %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define ptr @rb_Digest_SHA384_Data(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct._SHA512_CTX, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(64) @sha384_initial_hash_value, i64 64, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, i8 0, i64 144, i1 false)
  call void @rb_Digest_SHA512_Update(ptr noundef nonnull %3, ptr noundef readonly %0, i64 noundef %1)
  %i.b = call ptr @rb_Digest_SHA384_End(ptr noundef nonnull %3, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret ptr %i.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = !{!14, !15, i64 32}
!14 = !{!"_SHA256_CTX", !8, i64 0, !15, i64 32, !8, i64 40}
!15 = !{!"long", !8, i64 0}
!16 = distinct !{!16, !11}
!17 = !{!8, !8, i64 0}
!18 = !{!15, !15, i64 0}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
end_hunk_0
