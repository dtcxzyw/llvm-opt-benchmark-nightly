inline.NumInlined: 12424
inline.NumDeleted: 1708
begin_hunk_0_@sqlite3_result_zeroblob64:bb.a
bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !159
  %.not3.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not3.i.i, label %sqlite3VdbeMemSetZeroBlob.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call fastcc void @vdbeMemClear(ptr noundef nonnull %i.a)
  br label %sqlite3VdbeMemSetZeroBlob.exit

sqlite3VdbeMemSetZeroBlob.exit:                   ; preds = %bb.i, %bb.j
  store i16 1040, ptr %i.ad, align 4, !tbaa !162
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.ai, align 8, !tbaa !558
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 0)
  store i32 %spec.store.select.i, ptr %i.a, align 8, !tbaa !227
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i8 1, ptr %i.aj, align 2, !tbaa !349
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.ak, align 8, !tbaa !289
  br label %sqlite3_result_error_toobig.exit

sqlite3_result_error_toobig.exit:                 ; preds = %sqlite3VdbeMemRelease.exit.i.i, %bb.e, %bb.d, %sqlite3VdbeMemSetNull.exit84.i.i, %sqlite3VdbeMemSetZeroBlob.exit
  %.0 = phi i32 [ 0, %sqlite3VdbeMemSetZeroBlob.exit ], [ 18, %sqlite3VdbeMemSetNull.exit84.i.i ], [ 18, %bb.d ], [ 18, %bb.e ], [ 18, %sqlite3VdbeMemRelease.exit.i.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3VdbeMemSetZeroBlob(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !162
  %i.c = and i16 %i.b, -28672
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !159
  %.not3.i = icmp eq i32 %i.e, 0
  br i1 %.not3.i, label %sqlite3VdbeMemRelease.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call fastcc void @vdbeMemClear(ptr noundef nonnull %0)
  br label %sqlite3VdbeMemRelease.exit

sqlite3VdbeMemRelease.exit:                       ; preds = %bb.b, %bb.c
  store i16 1040, ptr %i.a, align 4, !tbaa !162
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !558
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  store i32 %spec.store.select, ptr %0, align 8, !tbaa !227
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 1, ptr %i.g, align 2, !tbaa !349
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !289
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @sqlite3_result_error_code(ptr noundef captures(none) initializes((36, 40)) %0, i32 noundef %1) #0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = select i1 %.not, i32 -1, i32 %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.a, ptr %i.b, align 4, !tbaa !5
  %i.c = load ptr, ptr %0, align 8, !tbaa !288
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = load i16, ptr %i.d, align 4, !tbaa !162
  %i.f = and i16 %i.e, 1
  %.not5 = icmp eq i16 %i.f, 0
  br i1 %.not5, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.e [
    i32 516, label %sqlite3ErrStr.exit
    i32 100, label %bb.c
    i32 101, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %sqlite3ErrStr.exit

bb.d:                                             ; preds = %bb.b
  br label %sqlite3ErrStr.exit

bb.e:                                             ; preds = %bb.b
  %i.g = and i32 %1, 255                          ; 2 uses
  %i.h = icmp samesign ult i32 %i.g, 29
  br i1 %i.h, label %bb.f, label %sqlite3ErrStr.exit

bb.f:                                             ; preds = %bb.e
  %i.i = zext nneg i32 %i.g to i64                ; 2 uses
  %i.j = shl nuw nsw i64 1, %i.i
  %i.k = and i64 %i.j, 21037060
  %.not.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.not.i, label %bb.g, label %sqlite3ErrStr.exit

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @sqlite3ErrStr.aMsg, i64 %i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !251
  br label %sqlite3ErrStr.exit

sqlite3ErrStr.exit:                               ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ %i.m, %bb.g ], [ @.str.1388, %bb.f ], [ @.str.1388, %bb.e ], [ @.str.1391, %bb.d ], [ @.str.1390, %bb.c ], [ @.str.1389, %bb.b ]
  tail call fastcc void @setResultStrOrError(ptr noundef nonnull %0, ptr noundef %.0.i, i32 noundef -1, i8 noundef zeroext 1, ptr noundef null)
  br label %bb.h

bb.h:                                             ; preds = %sqlite3ErrStr.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @sqlite3_result_error_nomem(ptr noundef captures(none) initializes((36, 40)) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !288    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.c = load i16, ptr %i.b, align 4, !tbaa !162
  %i.d = and i16 %i.c, -28672
  %.not.i = icmp eq i16 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vdbeMemClearExternAndSetNull(ptr noundef nonnull %i.a)
  %.pre = load ptr, ptr %0, align 8, !tbaa !288
  br label %sqlite3VdbeMemSetNull.exit

bb.c:                                             ; preds = %bb.a
  store i16 1, ptr %i.b, align 4, !tbaa !162
  br label %sqlite3VdbeMemSetNull.exit

sqlite3VdbeMemSetNull.exit:                       ; preds = %bb.b, %bb.c
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.a, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 7, ptr %i.f, align 4, !tbaa !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !157  ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 103 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !550
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.d, label %sqlite3OomFault.exit

bb.d:                                             ; preds = %sqlite3VdbeMemSetNull.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.m = load i8, ptr %i.l, align 8, !tbaa !551
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.e, label %sqlite3OomFault.exit

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.i, align 1, !tbaa !550
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 220
  %i.p = load i32, ptr %i.o, align 4, !tbaa !552
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 424
  store atomic volatile i32 1, ptr %i.r monotonic, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 432 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !553
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 8, !tbaa !553
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 436
  store i16 0, ptr %i.v, align 4, !tbaa !554
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 344 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !301  ; 2 uses
  %.not.i3 = icmp eq ptr %i.x, null
  br i1 %.not.i3, label %sqlite3OomFault.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.133), !inline_history !555
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !301  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i32 7, ptr %i.z, align 8, !tbaa !302
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.y, i64 216
  %.018.i = load ptr, ptr %.0.in17.i, align 8, !tbaa !556 ; 2 uses
  %.not1619.i = icmp eq ptr %.018.i, null
  br i1 %.not1619.i, label %sqlite3OomFault.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.020.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.018.i, %bb.h ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.020.i, i64 52 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !313
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !313
  %i.ad = getelementptr inbounds nuw i8, ptr %.020.i, i64 24
  store i32 7, ptr %i.ad, align 8, !tbaa !302
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 216
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !556 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i, null
  br i1 %.not16.i, label %sqlite3OomFault.exit, label %.lr.ph.i, !llvm.loop !557

sqlite3OomFault.exit:                             ; preds = %.lr.ph.i, %sqlite3VdbeMemSetNull.exit, %bb.d, %bb.g, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3OomFault(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !550
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i8, ptr %i.d, align 8, !tbaa !551
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !550
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.h = load i32, ptr %i.g, align 4, !tbaa !552
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 424
  store atomic volatile i32 1, ptr %i.j monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !553
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !553
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 436
  store i16 0, ptr %i.n, align 4, !tbaa !554
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !301  ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.133)
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !301  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i32 7, ptr %i.r, align 8, !tbaa !302
  %.0.in17 = getelementptr inbounds nuw i8, ptr %i.q, i64 216
  %.018 = load ptr, ptr %.0.in17, align 8, !tbaa !556 ; 2 uses
  %.not1619 = icmp eq ptr %.018, null
  br i1 %.not1619, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.020 = phi ptr [ %.0, %.lr.ph ], [ %.018, %bb.f ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.020, i64 52 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !313
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !313
  %i.v = getelementptr inbounds nuw i8, ptr %.020, i64 24
  store i32 7, ptr %i.v, align 8, !tbaa !302
  %.0.in = getelementptr inbounds nuw i8, ptr %.020, i64 216
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !556 ; 2 uses
  %.not16 = icmp eq ptr %.0, null
  br i1 %.not16, label %.loopexit, label %.lr.ph, !llvm.loop !557

.loopexit:                                        ; preds = %.lr.ph, %bb.f, %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @sqlite3Reprepare(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.Vdbe, align 8               ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %sqlite3_sql.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !186
  br label %sqlite3_sql.exit

sqlite3_sql.exit:                                 ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %.val = load ptr, ptr %0, align 8, !tbaa !146   ; 8 uses
  %i.e = getelementptr i8, ptr %0, i64 198        ; 2 uses
  %.val14 = load i8, ptr %i.e, align 2, !tbaa !531
  %i.f = zext i8 %.val14 to i32
  %i.g = call fastcc i32 @sqlite3LockAndPrepare(ptr noundef %.val, ptr noundef %i.d, i32 noundef -1, i32 noundef %i.f, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef null) ; 2 uses
  switch i32 %i.g, label %sqlite3OomFault.exit [
    i32 0, label %bb.i
    i32 7, label %bb.c
  ]

bb.c:                                             ; preds = %sqlite3_sql.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 103 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !550
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.d, label %sqlite3OomFault.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.l = load i8, ptr %i.k, align 8, !tbaa !551
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.e, label %sqlite3OomFault.exit

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.h, align 1, !tbaa !550
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 220
  %i.o = load i32, ptr %i.n, align 4, !tbaa !552
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 424
  store atomic volatile i32 1, ptr %i.q monotonic, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 432 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !553
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !553
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 436
  store i16 0, ptr %i.u, align 4, !tbaa !554
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 344 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !301  ; 2 uses
  %.not.i15 = icmp eq ptr %i.w, null
  br i1 %.not.i15, label %sqlite3OomFault.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.w, ptr noundef nonnull @.str.133), !inline_history !555
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !301  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i32 7, ptr %i.y, align 8, !tbaa !302
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  %.018.i = load ptr, ptr %.0.in17.i, align 8, !tbaa !556 ; 2 uses
  %.not1619.i = icmp eq ptr %.018.i, null
  br i1 %.not1619.i, label %sqlite3OomFault.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.020.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.018.i, %bb.h ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.020.i, i64 52 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !313
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !313
  %i.ac = getelementptr inbounds nuw i8, ptr %.020.i, i64 24
  store i32 7, ptr %i.ac, align 8, !tbaa !302
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 216
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !556 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i, null
  br i1 %.not16.i, label %sqlite3OomFault.exit, label %.lr.ph.i, !llvm.loop !557

bb.i:                                             ; preds = %sqlite3_sql.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !511 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef nonnull align 8 dereferenceable(304) %i.ad, i64 304, i1 false), !tbaa.struct !817
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.ad, ptr noundef nonnull align 8 dereferenceable(304) %0, i64 304, i1 false), !tbaa.struct !817
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 304, i1 false), !tbaa.struct !817
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !450
  %i.ah = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !450
  store <2 x ptr> %i.ag, ptr %i.ae, align 8, !tbaa !450
  store <2 x ptr> %i.ah, ptr %i.af, align 8, !tbaa !450
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 248 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !186
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !186
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !186
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !186
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 284
  %i.an = load i32, ptr %i.am, align 4, !tbaa !803
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !803
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 198
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !531
  store i8 %i.aq, ptr %i.e, align 2, !tbaa !531
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 212
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ar, ptr noundef nonnull align 4 dereferenceable(36) %i.as, i64 36, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !5
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.aw = load ptr, ptr %0, align 8, !tbaa !146
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.az(ptr noundef nonnull %i.ay) #59, !inline_history !825
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.j, %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 8, !tbaa !172
  %i.bc = icmp sgt i16 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i16, label %._crit_edge.i

.lr.ph.i16:                                       ; preds = %sqlite3_mutex_enter.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128
end_hunk_0
begin_hunk_1_@sqlite3_get_table_cb:bb.a

bb.k:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.av(ptr noundef nonnull %i.au) #59, !inline_history !271
  br label %sqlite3_free.exit

bb.l:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.aw(ptr noundef nonnull %i.ah) #59, !inline_history !270
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.g, %sqlite3_mutex_enter.exit.i, %bb.k, %bb.l
  %i.ax = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.659)
  store ptr %i.ax, ptr %i.ag, align 8, !tbaa !1068
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.ay, align 8, !tbaa !1070
  br label %bb.o

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.f
  br i1 %i.d, label %.preheader, label %bb.o

.preheader:                                       ; preds = %.loopexit
  %i.az = icmp sgt i32 %1, 0
  br i1 %i.az, label %.lr.ph80.preheader, label %._crit_edge

.lr.ph80.preheader:                               ; preds = %.preheader
  %wide.trip.count86 = zext nneg i32 %1 to i64
  br label %.lr.ph80

.lr.ph80:                                         ; preds = %.lr.ph80.preheader, %bb.n
  %indvars.iv83 = phi i64 [ 0, %.lr.ph80.preheader ], [ %indvars.iv.next84, %bb.n ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv83 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !251 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.n, label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %.lr.ph80
  %i.bd = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bb) #60
  %i.be = and i64 %i.bd, 1073741823
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %i.bg = tail call i32 @sqlite3_initialize(), !inline_history !396
  %.not.i69 = icmp eq i32 %i.bg, 0
  br i1 %.not.i69, label %sqlite3_malloc64.exit, label %.thread74

sqlite3_malloc64.exit:                            ; preds = %sqlite3Strlen30.exit
  %i.bh = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.bf), !inline_history !396 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.thread74, label %bb.m

bb.m:                                             ; preds = %sqlite3_malloc64.exit
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !251
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bh, ptr noundef nonnull align 1 dereferenceable(1) %i.bj, i64 %i.bf, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph80
  %.057 = phi ptr [ %i.bh, %bb.m ], [ null, %.lr.ph80 ]
  %i.bk = load ptr, ptr %0, align 8, !tbaa !1071
  %i.bl = load i32, ptr %i.f, align 4, !tbaa !1072 ; 2 uses
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.f, align 4, !tbaa !1072
  %i.bn = zext i32 %i.bl to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bn
  store ptr %.057, ptr %i.bo, align 8, !tbaa !251
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count86
  br i1 %exitcond87.not, label %._crit_edge, label %.lr.ph80, !llvm.loop !1077

._crit_edge:                                      ; preds = %bb.n, %.preheader
  %i.bp = load i32, ptr %i.a, align 4, !tbaa !1075
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.a, align 4, !tbaa !1075
  br label %bb.o

.thread74:                                        ; preds = %.lr.ph, %sqlite3Strlen30.exit, %sqlite3_malloc64.exit, %bb.b
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 7, ptr %i.br, align 8, !tbaa !1070
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %._crit_edge, %.thread74, %sqlite3_free.exit
  %.0 = phi i32 [ 1, %sqlite3_free.exit ], [ 1, %.thread74 ], [ 0, %._crit_edge ], [ 0, %.loopexit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @sqlite3_free_table(ptr noundef %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %sqlite3_free.exit17, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !251
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = and i64 %i.c, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %sqlite3_free.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %sqlite3_free.exit ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !251  ; 4 uses
  %.not12 = icmp eq ptr %i.g, null
  br i1 %.not12, label %sqlite3_free.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.j(ptr noundef nonnull %i.i) #59, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.e, %bb.d
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.l = tail call i32 %i.k(ptr noundef nonnull %i.g) #59, !inline_history !269
  %i.m = sext i32 %i.l to i64
  %i.n = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.o = sub nsw i64 %i.n, %i.m
  store i64 %i.o, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.q = add nsw i64 %i.p, -1
  store i64 %i.q, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.r(ptr noundef nonnull %i.g) #59, !inline_history !270
  %i.s = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.s, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.f

bb.f:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.t(ptr noundef nonnull %i.s) #59, !inline_history !271
  br label %sqlite3_free.exit

bb.g:                                             ; preds = %bb.c
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.u(ptr noundef nonnull %i.g) #59, !inline_history !270
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.g, %bb.f, %sqlite3_mutex_enter.exit.i, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1078

._crit_edge:                                      ; preds = %sqlite3_free.exit, %bb.b
  %i.v = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i13 = icmp eq i32 %i.v, 0
  br i1 %.not.i13, label %bb.k, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.w = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i.i14, label %sqlite3_mutex_enter.exit.i15, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.x(ptr noundef nonnull %i.w) #59, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i15

sqlite3_mutex_enter.exit.i15:                     ; preds = %bb.i, %bb.h
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.z = tail call i32 %i.y(ptr noundef nonnull %i.a) #59, !inline_history !269
  %i.aa = sext i32 %i.z to i64
  %i.ab = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.ac = sub nsw i64 %i.ab, %i.aa
  store i64 %i.ac, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.ae = add nsw i64 %i.ad, -1
  store i64 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.af(ptr noundef nonnull %i.a) #59, !inline_history !270
  %i.ag = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i16 = icmp eq ptr %i.ag, null
  br i1 %.not.i4.i16, label %sqlite3_free.exit17, label %bb.j

bb.j:                                             ; preds = %sqlite3_mutex_enter.exit.i15
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.ah(ptr noundef nonnull %i.ag) #59, !inline_history !271
  br label %sqlite3_free.exit17

bb.k:                                             ; preds = %._crit_edge
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.ai(ptr noundef nonnull %i.a) #59, !inline_history !270
  br label %sqlite3_free.exit17

sqlite3_free.exit17:                              ; preds = %bb.k, %bb.j, %sqlite3_mutex_enter.exit.i15, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3_create_module(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.c(ptr noundef nonnull %i.b) #59, !inline_history !1079
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.b, %bb.a
  %i.d = tail call fastcc ptr @sqlite3VtabCreateModule(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 103
  %i.f = load i8, ptr %i.e, align 1, !tbaa !550
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %sqlite3ApiExit.exit.thread.i, label %sqlite3ApiExit.exit.i

sqlite3ApiExit.exit.i:                            ; preds = %sqlite3_mutex_enter.exit.i
  %i.g = tail call fastcc i32 @apiHandleError(ptr noundef nonnull %0, i32 noundef 0)
  br label %sqlite3ApiExit.exit.thread.i

sqlite3ApiExit.exit.thread.i:                     ; preds = %sqlite3ApiExit.exit.i, %sqlite3_mutex_enter.exit.i
  %.0.i17.i = phi i32 [ %i.g, %sqlite3ApiExit.exit.i ], [ 0, %sqlite3_mutex_enter.exit.i ]
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i14.i = icmp eq ptr %i.h, null
  br i1 %.not.i14.i, label %createModule.exit, label %bb.c

bb.c:                                             ; preds = %sqlite3ApiExit.exit.thread.i
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.i(ptr noundef nonnull %i.h) #59, !inline_history !1080
  br label %createModule.exit

createModule.exit:                                ; preds = %sqlite3ApiExit.exit.thread.i, %bb.c
  ret i32 %.0.i17.i
}

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3_create_module_v2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.c(ptr noundef nonnull %i.b) #59, !inline_history !1079
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.b, %bb.a
  %i.d = tail call fastcc ptr @sqlite3VtabCreateModule(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 103
  %i.f = load i8, ptr %i.e, align 1, !tbaa !550
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %sqlite3ApiExit.exit.thread.i, label %sqlite3ApiExit.exit.i

sqlite3ApiExit.exit.i:                            ; preds = %sqlite3_mutex_enter.exit.i
  %i.g = tail call fastcc i32 @apiHandleError(ptr noundef nonnull %0, i32 noundef 0) ; 3 uses
  %i.h = icmp ne i32 %i.g, 0
  %i.i = icmp ne ptr %4, null
  %or.cond.i = and i1 %i.i, %i.h
  br i1 %or.cond.i, label %bb.c, label %sqlite3ApiExit.exit.thread.i

bb.c:                                             ; preds = %sqlite3ApiExit.exit.i
  tail call void %4(ptr noundef %3) #59, !inline_history !1081
  br label %sqlite3ApiExit.exit.thread.i

sqlite3ApiExit.exit.thread.i:                     ; preds = %bb.c, %sqlite3ApiExit.exit.i, %sqlite3_mutex_enter.exit.i
  %.0.i17.i = phi i32 [ %i.g, %sqlite3ApiExit.exit.i ], [ %i.g, %bb.c ], [ 0, %sqlite3_mutex_enter.exit.i ]
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i14.i = icmp eq ptr %i.j, null
  br i1 %.not.i14.i, label %createModule.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3ApiExit.exit.thread.i
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.k(ptr noundef nonnull %i.j) #59, !inline_history !1080
  br label %createModule.exit

createModule.exit:                                ; preds = %sqlite3ApiExit.exit.thread.i, %bb.d
  ret i32 %.0.i17.i
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @sqlite3_drop_modules(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1082 ; 3 uses
  %.not26 = icmp eq ptr %i.b, null
  br i1 %.not26, label %._crit_edge, label %.lr.ph28

.lr.ph28:                                         ; preds = %bb.a
  %.not20 = icmp eq ptr %1, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  br i1 %.not20, label %.critedge.thread.us, label %.preheader

.critedge.thread.us:                              ; preds = %.lr.ph28, %.critedge.us
  %.01727.us = phi ptr [ %i.g, %.critedge.us ], [ %i.b, %.lr.ph28 ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01727.us, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !115
  %i.g = load ptr, ptr %.01727.us, align 8, !tbaa !1083 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !967
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %.not.i.i.us = icmp eq ptr %i.j, null
  br i1 %.not.i.i.us, label %sqlite3_mutex_enter.exit.i.us, label %bb.b

bb.b:                                             ; preds = %.critedge.thread.us
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.k(ptr noundef nonnull %i.j) #59, !inline_history !1079
  br label %sqlite3_mutex_enter.exit.i.us

sqlite3_mutex_enter.exit.i.us:                    ; preds = %bb.b, %.critedge.thread.us
  %i.l = tail call fastcc ptr @sqlite3VtabCreateModule(ptr noundef nonnull %0, ptr noundef %i.i, ptr noundef null, ptr noundef null, ptr noundef null) ; 0 uses
  %i.m = load i8, ptr %i.d, align 1, !tbaa !550
  %.not.i.us = icmp eq i8 %i.m, 0
  br i1 %.not.i.us, label %sqlite3ApiExit.exit.thread.i.us, label %sqlite3ApiExit.exit.i.us

sqlite3ApiExit.exit.i.us:                         ; preds = %sqlite3_mutex_enter.exit.i.us
  %i.n = tail call fastcc i32 @apiHandleError(ptr noundef nonnull %0, i32 noundef 0) ; 0 uses
  br label %sqlite3ApiExit.exit.thread.i.us

sqlite3ApiExit.exit.thread.i.us:                  ; preds = %sqlite3ApiExit.exit.i.us, %sqlite3_mutex_enter.exit.i.us
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %.not.i14.i.us = icmp eq ptr %i.o, null
  br i1 %.not.i14.i.us, label %.critedge.us, label %bb.c

bb.c:                                             ; preds = %sqlite3ApiExit.exit.thread.i.us
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.p(ptr noundef nonnull %i.o) #59, !inline_history !1080
  br label %.critedge.us

.critedge.us:                                     ; preds = %bb.c, %sqlite3ApiExit.exit.thread.i.us
  %.not.us = icmp eq ptr %i.g, null
  br i1 %.not.us, label %._crit_edge, label %.critedge.thread.us, !llvm.loop !1084

.preheader:                                       ; preds = %.lr.ph28, %.critedge
  %.01727 = phi ptr [ %i.s, %.critedge ], [ %i.b, %.lr.ph28 ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01727, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !115
  %i.s = load ptr, ptr %.01727, align 8, !tbaa !1083 ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !251    ; 2 uses
  %.not2124 = icmp eq ptr %i.t, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !967 ; 2 uses
  br i1 %.not2124, label %.critedge.thread.loopexit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !251  ; 2 uses
  %.not21 = icmp eq ptr %i.v, null
  br i1 %.not21, label %.critedge.thread.loopexit, label %.lr.ph, !llvm.loop !1085

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.preheader ]
  %i.w = phi ptr [ %i.v, %bb.d ], [ %i.t, %.preheader ]
  %i.x = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.w, ptr noundef nonnull dereferenceable(1) %.pre) #60
  %.not22 = icmp eq i32 %i.x, 0
  br i1 %.not22, label %.critedge, label %bb.d

.critedge.thread.loopexit:                        ; preds = %bb.d, %.preheader
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %.critedge.thread.loopexit
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.z(ptr noundef nonnull %i.y) #59, !inline_history !1079
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.e, %.critedge.thread.loopexit
  %i.aa = tail call fastcc ptr @sqlite3VtabCreateModule(ptr noundef nonnull %0, ptr noundef %.pre, ptr noundef null, ptr noundef null, ptr noundef null) ; 0 uses
  %i.ab = load i8, ptr %i.d, align 1, !tbaa !550
  %.not.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i, label %sqlite3ApiExit.exit.thread.i, label %sqlite3ApiExit.exit.i

sqlite3ApiExit.exit.i:                            ; preds = %sqlite3_mutex_enter.exit.i
  %i.ac = tail call fastcc i32 @apiHandleError(ptr noundef nonnull %0, i32 noundef 0) ; 0 uses
  br label %sqlite3ApiExit.exit.thread.i

sqlite3ApiExit.exit.thread.i:                     ; preds = %sqlite3ApiExit.exit.i, %sqlite3_mutex_enter.exit.i
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !23  ; 2 uses
  %.not.i14.i = icmp eq ptr %i.ad, null
  br i1 %.not.i14.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %sqlite3ApiExit.exit.thread.i
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.ae(ptr noundef nonnull %i.ad) #59, !inline_history !1080
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.f, %sqlite3ApiExit.exit.thread.i
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %._crit_edge, label %.preheader, !llvm.loop !1084

._crit_edge:                                      ; preds = %.critedge, %.critedge.us, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3_declare_vtab(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.Parse, align 8              ; 17 uses
  %i.a = alloca i32, align 4                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i32 0, ptr %i.a, align 4, !tbaa !5
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.156 = phi ptr [ %1, %bb.a ], [ %i.c, %bb.b ]  ; 2 uses
  %i.b = call fastcc i64 @sqlite3GetToken(ptr noundef %.156, ptr noundef %i.a)
  %i.c = getelementptr inbounds i8, ptr %.156, i64 %i.b ; 2 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !5    ; 2 uses
  %i.e = and i32 %i.d, -2
  %i.f = icmp eq i32 %i.e, 184
  br i1 %i.f, label %bb.b, label %bb.c, !llvm.loop !1086

bb.c:                                             ; preds = %bb.b
  %.not70 = icmp eq i32 %i.d, 17
  br i1 %.not70, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  tail call void (ptr, i32, ptr, ...) @sqlite3ErrorWithMsg(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.31)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %sqlite3_mutex_leave.exit82

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i32 0, ptr %i.a, align 4, !tbaa !5
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.critedge
  %.156.1 = phi ptr [ %i.c, %.critedge ], [ %i.h, %bb.e ] ; 2 uses
  %i.g = call fastcc i64 @sqlite3GetToken(ptr noundef %.156.1, ptr noundef %i.a)
  %i.h = getelementptr inbounds i8, ptr %.156.1, i64 %i.g
  %i.i = load i32, ptr %i.a, align 4, !tbaa !5    ; 2 uses
  %i.j = and i32 %i.i, -2
  %i.k = icmp eq i32 %i.j, 184
  br i1 %i.k, label %bb.e, label %bb.f, !llvm.loop !1086

bb.f:                                             ; preds = %bb.e
  %.not70.1 = icmp eq i32 %i.i, 16
  br i1 %.not70.1, label %.critedge.1, label %bb.d

.critedge.1:                                      ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.g

bb.g:                                             ; preds = %.critedge.1
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.n(ptr noundef nonnull %i.m) #59, !inline_history !17
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %.critedge.1, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1087 ; 4 uses
  %.not62 = icmp eq ptr %i.p, null
  br i1 %.not62, label %bb.i, label %bb.h

bb.h:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !1088
  %.not63 = icmp eq i32 %i.r, 0
  br i1 %.not63, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h, %sqlite3_mutex_enter.exit
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1928, i32 noundef 161611, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 21, ptr %i.s, align 8, !tbaa !589
  tail call fastcc void @sqlite3ErrorFinish(ptr noundef nonnull %0, i32 noundef 21)
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !23   ; 2 uses
  %.not.i71 = icmp eq ptr %i.t, null
  br i1 %.not.i71, label %sqlite3_mutex_leave.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.u(ptr noundef nonnull %i.t) #59, !inline_history !20
  br label %sqlite3_mutex_leave.exit

end_hunk_1
begin_hunk_2_@sqlite3_busy_handler:bb.a
  store i32 0, ptr %i.e, align 8, !tbaa !1061
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 764
  store i32 0, ptr %i.f, align 4, !tbaa !1252
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.g(ptr noundef nonnull %i.b) #59, !inline_history !17
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 664
  store ptr %1, ptr %i.h, align 8, !tbaa !1250
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 672
  store ptr %2, ptr %i.i, align 8, !tbaa !1251
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 0, ptr %i.j, align 8, !tbaa !1061
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 764
  store i32 0, ptr %i.k, align 4, !tbaa !1252
  %.not.i8 = icmp eq ptr %.pre, null
  br i1 %.not.i8, label %sqlite3_mutex_leave.exit, label %bb.b

bb.b:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.l(ptr noundef nonnull %.pre) #59, !inline_history !20
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %sqlite3_mutex_enter.exit.thread, %sqlite3_mutex_enter.exit, %bb.b
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden void @sqlite3_progress_handler(ptr noundef captures(none) initializes((544, 564)) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.c(ptr noundef nonnull %i.b) #59, !inline_history !17
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.a, %bb.b
  %i.d = icmp sgt i32 %1, 0                       ; 2 uses
  %.sink13 = select i1 %i.d, ptr %2, ptr null
  %.sink12 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %.sink = select i1 %i.d, ptr %3, ptr null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr %.sink13, ptr %i.e, align 8, !tbaa !1253
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 %.sink12, ptr %i.f, align 8, !tbaa !1254
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr %.sink, ptr %i.g, align 8, !tbaa !1255
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i11 = icmp eq ptr %i.h, null
  br i1 %.not.i11, label %sqlite3_mutex_leave.exit, label %bb.c

bb.c:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.i(ptr noundef nonnull %i.h) #59, !inline_history !20
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %sqlite3_mutex_enter.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @sqlite3_busy_timeout(ptr noundef initializes((664, 672)) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null              ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.thread.i, label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.thread.i:                ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 664
  store ptr @sqliteDefaultBusyCallback, ptr %i.d, align 8, !tbaa !1250
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 672
  store ptr %0, ptr %i.e, align 8, !tbaa !1251
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 0, ptr %i.f, align 8, !tbaa !1061
  br label %sqlite3_busy_handler.exit

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.b
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.g(ptr noundef nonnull %i.c) #59, !inline_history !1256
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !23 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 664
  store ptr @sqliteDefaultBusyCallback, ptr %i.h, align 8, !tbaa !1250
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 672
  store ptr %0, ptr %i.i, align 8, !tbaa !1251
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i32 0, ptr %i.j, align 8, !tbaa !1061
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 764
  store i32 0, ptr %i.k, align 4, !tbaa !1252
  %.not.i8.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i8.i, label %sqlite3_busy_handler.exit, label %bb.c

bb.c:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.l(ptr noundef nonnull %.pre.i) #59, !inline_history !1257
  br label %sqlite3_busy_handler.exit

sqlite3_busy_handler.exit:                        ; preds = %sqlite3_mutex_enter.exit.thread.i, %sqlite3_mutex_enter.exit.i, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 764
  store i32 %1, ptr %i.m, align 4, !tbaa !1252
  br label %sqlite3_busy_handler.exit10

bb.d:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.thread.i9, label %sqlite3_mutex_enter.exit.i6

sqlite3_mutex_enter.exit.thread.i9:               ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 764
  store i32 0, ptr %i.o, align 4, !tbaa !1252
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i8 0, i64 20, i1 false)
  br label %sqlite3_busy_handler.exit10

sqlite3_mutex_enter.exit.i6:                      ; preds = %bb.d
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.p(ptr noundef nonnull %i.c) #59, !inline_history !1256
  %.pre.i7 = load ptr, ptr %i.b, align 8, !tbaa !23 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 764
  store i32 0, ptr %i.r, align 4, !tbaa !1252
  %.not.i8.i8 = icmp eq ptr %.pre.i7, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.q, i8 0, i64 20, i1 false)
  br i1 %.not.i8.i8, label %sqlite3_busy_handler.exit10, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i6
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.s(ptr noundef nonnull %.pre.i7) #59, !inline_history !1257
  br label %sqlite3_busy_handler.exit10

sqlite3_busy_handler.exit10:                      ; preds = %bb.e, %sqlite3_mutex_enter.exit.i6, %sqlite3_mutex_enter.exit.thread.i9, %sqlite3_busy_handler.exit
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @sqliteDefaultBusyCallback(ptr noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 764
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1252 ; 2 uses
  %i.c = icmp slt i32 %1, 12
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = getelementptr inbounds i8, ptr @sqliteDefaultBusyCallback.delays, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !227
  %i.g = zext i8 %i.f to i32
  %i.h = getelementptr inbounds i8, ptr @sqliteDefaultBusyCallback.totals, i64 %i.d
  %i.i = load i8, ptr %i.h, align 1, !tbaa !227
  %i.j = zext i8 %i.i to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = mul i32 %1, 100
  %i.l = add i32 %i.k, -872
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.015 = phi i32 [ %i.g, %bb.b ], [ 100, %bb.c ] ; 2 uses
  %.0 = phi i32 [ %i.j, %bb.b ], [ %i.l, %bb.c ]  ; 2 uses
  %i.m = add nuw nsw i32 %.0, %.015
  %i.n = icmp sgt i32 %i.m, %i.b
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = sub nsw i32 %i.b, %.0                    ; 2 uses
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i32 [ %i.o, %bb.e ], [ %.015, %bb.d ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !536    ; 2 uses
  %i.r = mul nsw i32 %.1, 1000
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1258
  %i.u = tail call i32 %i.t(ptr noundef %i.q, i32 noundef %i.r) #59, !inline_history !1259 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.016 = phi i32 [ 1, %bb.f ], [ 0, %bb.e ]
  ret i32 %.016
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 26) i32 @sqlite3_setlk_timeout(ptr readnone captures(none) %0, i32 noundef %1, i32 %2) #3 {
bb.a:
  %i.a = icmp slt i32 %1, -1
  %. = select i1 %i.a, i32 25, i32 0
  ret i32 %.
}

; Function Attrs: norecurse nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @sqlite3_interrupt(ptr noundef %0) #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  store atomic volatile i32 1, ptr %i.a monotonic, align 8
  ret void
}

; Function Attrs: norecurse nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden range(i32 0, 2) i32 @sqlite3_is_interrupted(ptr noundef %0) #24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = load atomic volatile i32, ptr %i.a monotonic, align 8
  %i.c = icmp ne i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3_create_function(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.c(ptr noundef nonnull %i.b) #59, !inline_history !1260
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.b, %bb.a
  %i.d = tail call fastcc i32 @sqlite3CreateFunc(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef null, ptr noundef null, ptr noundef null) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 103
  %i.f = load i8, ptr %i.e, align 1, !tbaa !550
  %i.g = icmp ne i8 %i.f, 0
  %i.h = icmp ne i32 %i.d, 0
  %or.cond.i.i = or i1 %i.h, %i.g
  br i1 %or.cond.i.i, label %bb.c, label %sqlite3ApiExit.exit.i

bb.c:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.i = tail call fastcc i32 @apiHandleError(ptr noundef nonnull %0, i32 noundef %i.d)
  br label %sqlite3ApiExit.exit.i

sqlite3ApiExit.exit.i:                            ; preds = %bb.c, %sqlite3_mutex_enter.exit.i
  %.0.i37.i = phi i32 [ %i.i, %bb.c ], [ 0, %sqlite3_mutex_enter.exit.i ]
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i38.i = icmp eq ptr %i.j, null
  br i1 %.not.i38.i, label %createFunctionApi.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3ApiExit.exit.i
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.k(ptr noundef nonnull %i.j) #59, !inline_history !1261
  br label %createFunctionApi.exit

createFunctionApi.exit:                           ; preds = %sqlite3ApiExit.exit.i, %bb.d
  ret i32 %.0.i37.i
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @createFunctionApi(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.c(ptr noundef nonnull %i.b) #59, !inline_history !17
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.a, %bb.b
  %.not = icmp eq ptr %10, null
  br i1 %.not, label %.thread, label %bb.c

.thread:                                          ; preds = %sqlite3_mutex_enter.exit
  %i.d = tail call fastcc i32 @sqlite3CreateFunc(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef null)
  br label %sqlite3_free.exit

bb.c:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.e = tail call fastcc ptr @sqlite3Malloc(i64 noundef 24) ; 9 uses
  %.not33 = icmp eq ptr %i.e, null
  br i1 %.not33, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !550
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.e, label %sqlite3_free.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load i8, ptr %i.i, align 8, !tbaa !551
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %sqlite3_free.exit.thread

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.f, align 1, !tbaa !550
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.m = load i32, ptr %i.l, align 4, !tbaa !552
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 424
  store atomic volatile i32 1, ptr %i.o monotonic, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !553
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !553
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 436
  store i16 0, ptr %i.s, align 4, !tbaa !554
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !301  ; 2 uses
  %.not.i35 = icmp eq ptr %i.u, null
  br i1 %.not.i35, label %sqlite3_free.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.u, ptr noundef nonnull @.str.133), !inline_history !555
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !301  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i32 7, ptr %i.w, align 8, !tbaa !302
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.v, i64 216
  %.018.i = load ptr, ptr %.0.in17.i, align 8, !tbaa !556 ; 2 uses
  %.not1619.i = icmp eq ptr %.018.i, null
  br i1 %.not1619.i, label %sqlite3_free.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.020.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.018.i, %bb.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.020.i, i64 52 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !313
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !313
  %i.aa = getelementptr inbounds nuw i8, ptr %.020.i, i64 24
  store i32 7, ptr %i.aa, align 8, !tbaa !302
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 216
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !556 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i, null
  br i1 %.not16.i, label %sqlite3_free.exit.thread, label %.lr.ph.i, !llvm.loop !557

sqlite3_free.exit.thread:                         ; preds = %.lr.ph.i, %bb.i, %bb.h, %bb.e, %bb.d
  tail call void %10(ptr noundef %4) #59
  br label %bb.p

bb.j:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !777
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %10, ptr %i.ab, align 8, !tbaa !779
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %4, ptr %i.ac, align 8, !tbaa !780
  %i.ad = tail call fastcc i32 @sqlite3CreateFunc(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef nonnull %i.e) ; 4 uses
  %i.ae = load i32, ptr %i.e, align 8, !tbaa !777
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.k, label %sqlite3_free.exit

bb.k:                                             ; preds = %bb.j
  tail call void %10(ptr noundef %4) #59
  %i.ag = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i36 = icmp eq i32 %i.ag, 0
  br i1 %.not.i36, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.ai(ptr noundef nonnull %i.ah) #59, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.m, %bb.l
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.ak = tail call i32 %i.aj(ptr noundef nonnull %i.e) #59, !inline_history !269
  %i.al = sext i32 %i.ak to i64
  %i.am = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.an = sub nsw i64 %i.am, %i.al
  store i64 %i.an, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.ap = add nsw i64 %i.ao, -1
  store i64 %i.ap, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.aq(ptr noundef nonnull %i.e) #59, !inline_history !270
  %i.ar = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.ar, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.n

bb.n:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.as(ptr noundef nonnull %i.ar) #59, !inline_history !271
  br label %sqlite3_free.exit

bb.o:                                             ; preds = %bb.k
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.at(ptr noundef nonnull %i.e) #59, !inline_history !270
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.o, %bb.n, %sqlite3_mutex_enter.exit.i, %.thread, %bb.j
  %.030 = phi i32 [ %i.ad, %bb.o ], [ %i.ad, %bb.j ], [ %i.d, %.thread ], [ %i.ad, %sqlite3_mutex_enter.exit.i ], [ %i.ad, %bb.n ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 103
  %i.av = load i8, ptr %i.au, align 1, !tbaa !550
  %i.aw = icmp ne i8 %i.av, 0
  %i.ax = icmp ne i32 %.030, 0
  %or.cond.i = or i1 %i.ax, %i.aw
  br i1 %or.cond.i, label %bb.p, label %sqlite3ApiExit.exit

end_hunk_2
begin_hunk_3_@sqlite3DbMallocRawNN:bb.a
  %i.am = load i32, ptr %i.al, align 8, !tbaa !5
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 8, !tbaa !5
  %i.ao = tail call fastcc ptr @dbMallocRawFinish(ptr noundef nonnull %0, i64 noundef %1)
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %bb.o, %bb.n, %bb.l, %bb.j, %bb.h, %bb.e
  %.0 = phi ptr [ %i.ao, %bb.o ], [ %i.l, %bb.e ], [ %i.o, %bb.h ], [ %i.u, %bb.j ], [ %i.aa, %bb.l ], [ %i.ag, %bb.n ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @dbReallocFinish(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !550
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %sqlite3OomFault.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !99
  %.not.i = icmp ult ptr %1, %i.e
  br i1 %.not.i, label %isLookaside.exit.thread, label %isLookaside.exit

isLookaside.exit:                                 ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !127
  %.not = icmp ult ptr %1, %i.g
  br i1 %.not, label %bb.c, label %isLookaside.exit.thread

bb.c:                                             ; preds = %isLookaside.exit
  %i.h = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %0, i64 noundef %2) ; 8 uses
  %.not20 = icmp eq ptr %i.h, null
  br i1 %.not20, label %sqlite3OomFault.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !174
  %i.k = icmp ult ptr %1, %i.j
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 438
  %i.m = load i16, ptr %i.l, align 2, !tbaa !353
  %i.n = zext i16 %i.m to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = phi i64 [ %i.n, %bb.e ], [ 128, %bb.d ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %1, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !100
  %i.r = icmp ult ptr %1, %i.q
  br i1 %i.r, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !174
  %.not22.i = icmp ult ptr %1, %i.s
  br i1 %.not22.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55
  store ptr %i.u, ptr %1, align 8, !tbaa !49
  store ptr %1, ptr %i.t, align 8, !tbaa !55
  br label %sqlite3OomFault.exit

bb.i:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !99
  %.not23.i = icmp ult ptr %1, %i.v
  br i1 %.not23.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !53
  store ptr %i.x, ptr %1, align 8, !tbaa !49
  store ptr %1, ptr %i.w, align 8, !tbaa !53
  br label %sqlite3OomFault.exit

bb.k:                                             ; preds = %bb.i, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !98
  %.not24.i = icmp eq ptr %i.z, null
  br i1 %.not24.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @measureAllocationSize(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %sqlite3OomFault.exit

bb.m:                                             ; preds = %bb.k
  %i.aa = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.ac(ptr noundef nonnull %i.ab) #59, !inline_history !546
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.o, %bb.n
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.ae = tail call i32 %i.ad(ptr noundef nonnull %1) #59, !inline_history !547
  %i.af = sext i32 %i.ae to i64
  %i.ag = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.ah = sub nsw i64 %i.ag, %i.af
  store i64 %i.ah, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.ai = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.aj = add nsw i64 %i.ai, -1
  store i64 %i.aj, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.ak(ptr noundef nonnull %1) #59, !inline_history !548
  %i.al = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i4.i.i, label %sqlite3OomFault.exit, label %bb.p

bb.p:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.am(ptr noundef nonnull %i.al) #59, !inline_history !549
  br label %sqlite3OomFault.exit

bb.q:                                             ; preds = %bb.m
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.an(ptr noundef nonnull %1) #59, !inline_history !548
  br label %sqlite3OomFault.exit

isLookaside.exit.thread:                          ; preds = %bb.b, %isLookaside.exit
  %i.ao = tail call fastcc ptr @sqlite3Realloc(ptr noundef nonnull %1, i64 noundef %2) ; 2 uses
  %.not19 = icmp eq ptr %i.ao, null
  br i1 %.not19, label %bb.r, label %sqlite3OomFault.exit

bb.r:                                             ; preds = %isLookaside.exit.thread
  %i.ap = load i8, ptr %i.a, align 1, !tbaa !550
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.s, label %sqlite3OomFault.exit

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !551
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.t, label %sqlite3OomFault.exit

bb.t:                                             ; preds = %bb.s
  store i8 1, ptr %i.a, align 1, !tbaa !550
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.av = load i32, ptr %i.au, align 4, !tbaa !552
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 424
  store atomic volatile i32 1, ptr %i.ax monotonic, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !553
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !553
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 436
  store i16 0, ptr %i.bb, align 4, !tbaa !554
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !301 ; 2 uses
  %.not.i22 = icmp eq ptr %i.bd, null
  br i1 %.not.i22, label %sqlite3OomFault.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.bd, ptr noundef nonnull @.str.133), !inline_history !555
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !301 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i32 7, ptr %i.bf, align 8, !tbaa !302
  %.0.in.i24 = getelementptr inbounds nuw i8, ptr %i.be, i64 216
  %.0.i25 = load ptr, ptr %.0.in.i24, align 8, !tbaa !556 ; 2 uses
  %.not16.i26 = icmp eq ptr %.0.i25, null
  br i1 %.not16.i26, label %sqlite3OomFault.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w, %.lr.ph
  %.0.i27 = phi ptr [ %.0.i, %.lr.ph ], [ %.0.i25, %bb.w ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i27, i64 52 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !313
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !313
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i27, i64 24
  store i32 7, ptr %i.bj, align 8, !tbaa !302
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.0.i27, i64 216
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !556 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i, null
  br i1 %.not16.i, label %sqlite3OomFault.exit, label %.lr.ph, !llvm.loop !557

sqlite3OomFault.exit:                             ; preds = %.lr.ph, %bb.q, %bb.p, %sqlite3_mutex_enter.exit.i.i, %bb.l, %bb.j, %bb.h, %bb.w, %bb.v, %bb.s, %bb.r, %bb.c, %isLookaside.exit.thread, %bb.a
  %.0 = phi ptr [ %i.h, %bb.q ], [ null, %bb.c ], [ %i.ao, %isLookaside.exit.thread ], [ null, %bb.a ], [ null, %bb.r ], [ null, %bb.s ], [ null, %bb.v ], [ null, %bb.w ], [ %i.h, %bb.h ], [ %i.h, %bb.j ], [ %i.h, %bb.l ], [ %i.h, %sqlite3_mutex_enter.exit.i.i ], [ %i.h, %bb.p ], [ null, %.lr.ph ]
  ret ptr %.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @dbMallocRawFinish(ptr noundef %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc ptr @sqlite3Malloc(i64 noundef %1) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %sqlite3OomFault.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !550
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %sqlite3OomFault.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !551
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %sqlite3OomFault.exit

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.b, align 1, !tbaa !550
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.i = load i32, ptr %i.h, align 4, !tbaa !552
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 424
  store atomic volatile i32 1, ptr %i.k monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !553
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 8, !tbaa !553
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 436
  store i16 0, ptr %i.o, align 4, !tbaa !554
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !301  ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %sqlite3OomFault.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.133), !inline_history !555
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !301  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i32 7, ptr %i.s, align 8, !tbaa !302
  %.0.in.i3 = getelementptr inbounds nuw i8, ptr %i.r, i64 216
  %.0.i4 = load ptr, ptr %.0.in.i3, align 8, !tbaa !556 ; 2 uses
  %.not16.i5 = icmp eq ptr %.0.i4, null
  br i1 %.not16.i5, label %sqlite3OomFault.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.0.i6 = phi ptr [ %.0.i, %.lr.ph ], [ %.0.i4, %bb.g ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i6, i64 52 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !313
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !313
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i6, i64 24
  store i32 7, ptr %i.w, align 8, !tbaa !302
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.0.i6, i64 216
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !556 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i, null
  br i1 %.not16.i, label %sqlite3OomFault.exit, label %.lr.ph, !llvm.loop !557

sqlite3OomFault.exit:                             ; preds = %.lr.ph, %bb.g, %bb.f, %bb.c, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @strAccumFinishRealloc(ptr noundef captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !300    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !279
  %i.d = zext i32 %i.c to i64
  %i.e = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.a, i64 noundef %i.e), !inline_history !608
  br label %sqlite3DbMallocRaw.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.e), !inline_history !608
  br label %sqlite3DbMallocRaw.exit

sqlite3DbMallocRaw.exit:                          ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ] ; 4 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %sqlite3DbMallocRaw.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !282
  %i.j = load i32, ptr %i.b, align 8, !tbaa !279
  %i.k = add i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i, ptr align 1 %i.i, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !275
  %i.o = or i8 %i.n, 4
  store i8 %i.o, ptr %i.m, align 1, !tbaa !275
  br label %sqlite3StrAccumSetError.exit

bb.e:                                             ; preds = %sqlite3DbMallocRaw.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 7, ptr %i.p, align 4, !tbaa !298
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !299
  %.not.i11 = icmp eq i32 %i.r, 0
  br i1 %.not.i11, label %sqlite3StrAccumSetError.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 3 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !275   ; 2 uses
  %i.u = and i8 %i.t, 4
  %.not.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i, label %sqlite3_str_reset.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !282  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %sqlite3DbFree.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %0, align 8, !tbaa !300
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.x, ptr noundef nonnull %i.w)
  %.pre.i.i = load i8, ptr %i.s, align 1, !tbaa !275
  br label %sqlite3DbFree.exit.i.i

sqlite3DbFree.exit.i.i:                           ; preds = %bb.h, %bb.g
  %i.y = phi i8 [ %i.t, %bb.g ], [ %.pre.i.i, %bb.h ]
  %i.z = and i8 %i.y, -5
  store i8 %i.z, ptr %i.s, align 1, !tbaa !275
  br label %sqlite3_str_reset.exit.i

sqlite3_str_reset.exit.i:                         ; preds = %sqlite3DbFree.exit.i.i, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.aa, align 8, !tbaa !280
  store i32 0, ptr %i.b, align 8, !tbaa !279
  br label %sqlite3StrAccumSetError.exit

sqlite3StrAccumSetError.exit:                     ; preds = %sqlite3_str_reset.exit.i, %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i, ptr %i.ab, align 8, !tbaa !282
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc double @sqlite3Fp10Convert2(i64 noundef %0, i32 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %1, -348
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 347
  br i1 %i.b, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %0, i1 true) ; 2 uses
  %i.d = trunc nuw nsw i64 %i.c to i32            ; 2 uses
  %i.e = mul nsw i32 %1, 108853
  %i.f = ashr i32 %i.e, 15                        ; 2 uses
  %.neg39 = add nsw i32 %i.d, -11
  %i.g = sub nsw i32 %.neg39, %i.f                ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1074
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = icmp samesign ugt i32 %i.g, 1129
  br i1 %i.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.026 = phi i32 [ %i.g, %bb.c ], [ 1074, %bb.d ] ; 2 uses
  %i.j = shl i64 %0, %i.c
  %i.k = icmp slt i32 %1, 0
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = trunc nsw i32 %1 to i16
  %.lhs.trunc = sub nsw i16 0, %i.l               ; 2 uses
  %i.m = udiv i16 %.lhs.trunc, 27
  %.zext = zext nneg i16 %i.m to i32              ; 2 uses
  %i.n = urem i16 %.lhs.trunc, 27                 ; 2 uses
  %.not.i = icmp eq i16 %i.n, 0
  br i1 %.not.i, label %.thread.i, label %.thread27.i

.thread.i:                                        ; preds = %bb.f
  %.neg.i = sub nsw i32 0, %.zext
  %i.o = sext i32 %.neg.i to i64
  %i.p = getelementptr [8 x i8], ptr @powerOfTen.aScale, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 104
  %i.r = load i64, ptr %i.q, align 8, !tbaa !18
  br label %powerOfTen.exit

.thread27.i:                                      ; preds = %bb.f
  %i.s = xor i32 %.zext, -1
  %narrow = sub nuw nsw i16 27, %i.n
end_hunk_3
begin_hunk_4_@sqlite3BtreeClose:bb.a

sqlite3_mutex_free.exit.i:                        ; preds = %bb.i, %.critedge19.i, %sqlite3_mutex_enter.exit.i
  br i1 %.not.i2026.i, label %removeFromSharingList.exit, label %bb.j

bb.j:                                             ; preds = %sqlite3_mutex_free.exit.i
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.aj(ptr noundef nonnull %.0.i25.i) #59, !inline_history !2572
  br label %removeFromSharingList.exit

removeFromSharingList.exit:                       ; preds = %sqlite3_mutex_free.exit.i, %bb.j
  br i1 %i.w, label %sqlite3_free.exit, label %sqlite3BtreeLeave.exit.thread

sqlite3BtreeLeave.exit.thread:                    ; preds = %sqlite3BtreeEnter.exit, %removeFromSharingList.exit, %sqlite3BtreeLeave.exit
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.al = load ptr, ptr %0, align 8, !tbaa !661
  tail call fastcc void @sqlite3PagerClose(ptr noundef %i.ak, ptr noundef %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2573 ; 2 uses
  %.not26 = icmp eq ptr %i.an, null
  br i1 %.not26, label %bb.m, label %bb.k

bb.k:                                             ; preds = %sqlite3BtreeLeave.exit.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2574 ; 2 uses
  %.not27 = icmp eq ptr %i.ap, null
  br i1 %.not27, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void %i.an(ptr noundef nonnull %i.ap) #59
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %sqlite3BtreeLeave.exit.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2574 ; 4 uses
  %.not.i32 = icmp eq ptr %i.ar, null
  br i1 %.not.i32, label %sqlite3DbFree.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i.i42 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i42, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.au(ptr noundef nonnull %i.at) #59, !inline_history !546
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.p, %bb.o
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.aw = tail call i32 %i.av(ptr noundef nonnull %i.ar) #59, !inline_history !547
  %i.ax = sext i32 %i.aw to i64
  %i.ay = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.az = sub nsw i64 %i.ay, %i.ax
  store i64 %i.az, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.ba = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.bb = add nsw i64 %i.ba, -1
  store i64 %i.bb, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.bc(ptr noundef nonnull %i.ar) #59, !inline_history !548
  %i.bd = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i4.i.i, label %sqlite3DbFree.exit, label %bb.q

bb.q:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.be(ptr noundef nonnull %i.bd) #59, !inline_history !549
  br label %sqlite3DbFree.exit

bb.r:                                             ; preds = %bb.n
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.bf(ptr noundef nonnull %i.ar) #59, !inline_history !548
  br label %sqlite3DbFree.exit

sqlite3DbFree.exit:                               ; preds = %bb.r, %bb.q, %sqlite3_mutex_enter.exit.i.i, %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1312 ; 2 uses
  %.not.i33 = icmp eq ptr %i.bh, null
  br i1 %.not.i33, label %freeTempSpace.exit, label %bb.s

bb.s:                                             ; preds = %sqlite3DbFree.exit
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4 ; 2 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !1312
  tail call fastcc void @pcache1Free(ptr noundef nonnull %i.bi)
  store ptr null, ptr %i.bg, align 8, !tbaa !1312
  br label %freeTempSpace.exit

freeTempSpace.exit:                               ; preds = %bb.s, %sqlite3DbFree.exit
  %i.bj = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i34 = icmp eq i32 %i.bj, 0
  br i1 %.not.i34, label %bb.w, label %bb.t

bb.t:                                             ; preds = %freeTempSpace.exit
  %i.bk = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i35, label %sqlite3_mutex_enter.exit.i36, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.bl(ptr noundef nonnull %i.bk) #59, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i36

sqlite3_mutex_enter.exit.i36:                     ; preds = %bb.u, %bb.t
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.bn = tail call i32 %i.bm(ptr noundef nonnull %i.b) #59, !inline_history !269
  %i.bo = sext i32 %i.bn to i64
  %i.bp = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.bq = sub nsw i64 %i.bp, %i.bo
  store i64 %i.bq, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.br = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.bs = add nsw i64 %i.br, -1
  store i64 %i.bs, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.bt(ptr noundef nonnull %i.b) #59, !inline_history !270
  %i.bu = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.bu, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.v

bb.v:                                             ; preds = %sqlite3_mutex_enter.exit.i36
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.bv(ptr noundef nonnull %i.bu) #59, !inline_history !271
  br label %sqlite3_free.exit

bb.w:                                             ; preds = %freeTempSpace.exit
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.bw(ptr noundef nonnull %i.b) #59, !inline_history !270
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.w, %bb.v, %sqlite3_mutex_enter.exit.i36, %removeFromSharingList.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !2575 ; 3 uses
  %.not28 = icmp eq ptr %i.by, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1943 ; 3 uses
  br i1 %.not28, label %sqlite3_free.exit._crit_edge, label %bb.x

bb.x:                                             ; preds = %sqlite3_free.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store ptr %.pre, ptr %i.bz, align 8, !tbaa !1943
  br label %sqlite3_free.exit._crit_edge

sqlite3_free.exit._crit_edge:                     ; preds = %sqlite3_free.exit, %bb.x
  %.not29 = icmp eq ptr %.pre, null
  br i1 %.not29, label %bb.z, label %bb.y

bb.y:                                             ; preds = %sqlite3_free.exit._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !2575
  br label %bb.z

bb.z:                                             ; preds = %sqlite3_free.exit._crit_edge, %bb.y
  %i.cb = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i37 = icmp eq i32 %i.cb, 0
  br i1 %.not.i37, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cc = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i38, label %sqlite3_mutex_enter.exit.i39, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.cd(ptr noundef nonnull %i.cc) #59, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i39

sqlite3_mutex_enter.exit.i39:                     ; preds = %bb.ab, %bb.aa
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.cf = tail call i32 %i.ce(ptr noundef nonnull %0) #59, !inline_history !269
  %i.cg = sext i32 %i.cf to i64
  %i.ch = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.ci = sub nsw i64 %i.ch, %i.cg
  store i64 %i.ci, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.cj = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.ck = add nsw i64 %i.cj, -1
  store i64 %i.ck, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.cl(ptr noundef nonnull %0) #59, !inline_history !270
  %i.cm = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i40 = icmp eq ptr %i.cm, null
  br i1 %.not.i4.i40, label %sqlite3_free.exit41, label %bb.ac

bb.ac:                                            ; preds = %sqlite3_mutex_enter.exit.i39
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.cn(ptr noundef nonnull %i.cm) #59, !inline_history !271
  br label %sqlite3_free.exit41

bb.ad:                                            ; preds = %bb.z
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.co(ptr noundef nonnull %0) #59, !inline_history !270
  br label %sqlite3_free.exit41

sqlite3_free.exit41:                              ; preds = %sqlite3_mutex_enter.exit.i39, %bb.ac, %bb.ad
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3PagerClose(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2053 ; 2 uses
  %i.d = load ptr, ptr @sqlite3Hooks.0, align 8, !tbaa !1225 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %sqlite3BeginBenignMalloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.d() #59, !inline_history !1227
  br label %sqlite3BeginBenignMalloc.exit

sqlite3BeginBenignMalloc.exit:                    ; preds = %bb.a, %bb.b
  %i.e = getelementptr i8, ptr %0, i64 168
  %.val = load ptr, ptr %i.e, align 8, !tbaa !522 ; 2 uses
  %.not1.i = icmp eq ptr %.val, null
  br i1 %.not1.i, label %pagerFreeMapHdrs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %sqlite3BeginBenignMalloc.exit, %sqlite3_free.exit.i
  %.02.i = phi ptr [ %i.g, %sqlite3_free.exit.i ], [ %.val, %sqlite3BeginBenignMalloc.exit ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02.i, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !523  ; 2 uses
  %i.h = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.j(ptr noundef nonnull %i.i) #59, !inline_history !2576
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.d, %bb.c
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.l = tail call i32 %i.k(ptr noundef nonnull %.02.i) #59, !inline_history !2577
  %i.m = sext i32 %i.l to i64
  %i.n = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.o = sub nsw i64 %i.n, %i.m
  store i64 %i.o, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.q = add nsw i64 %i.p, -1
  store i64 %i.q, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.r(ptr noundef nonnull %.02.i) #59, !inline_history !2578
  %i.s = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i4.i.i, label %sqlite3_free.exit.i, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.t(ptr noundef nonnull %i.s) #59, !inline_history !2579
  br label %sqlite3_free.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.u(ptr noundef nonnull %.02.i) #59, !inline_history !2578
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %bb.f, %bb.e, %sqlite3_mutex_enter.exit.i.i
  %.not.i29 = icmp eq ptr %i.g, null
  br i1 %.not.i29, label %pagerFreeMapHdrs.exit, label %.lr.ph.i, !llvm.loop !2580

pagerFreeMapHdrs.exit:                            ; preds = %sqlite3_free.exit.i, %sqlite3BeginBenignMalloc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.v, align 8, !tbaa !736
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %databaseIsUnmoved.exit.thread42, label %bb.g

bb.g:                                             ; preds = %pagerFreeMapHdrs.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load i64, ptr %i.w, align 8, !tbaa !545
  %i.y = and i64 %i.x, 2048
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.h, label %databaseIsUnmoved.exit.thread42

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i32 0, ptr %i.a, align 4, !tbaa !5
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !666
  %.not.i30 = icmp eq i8 %i.ab, 0
  br i1 %.not.i30, label %bb.i, label %databaseIsUnmoved.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !676
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %databaseIsUnmoved.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !524 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !473 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %databaseIsUnmoved.exit.thread, label %sqlite3OsFileControl.exit.i

sqlite3OsFileControl.exit.i:                      ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !729
  %i.al = call i32 %i.ak(ptr noundef nonnull %i.ag, i32 noundef 20, ptr noundef nonnull %i.a) #59, !inline_history !2581
  %.fr = freeze i32 %i.al                         ; 2 uses
  %i.am = icmp eq i32 %.fr, 12
  br i1 %i.am, label %databaseIsUnmoved.exit.thread, label %bb.k

bb.k:                                             ; preds = %sqlite3OsFileControl.exit.i
  %i.an = icmp ne i32 %.fr, 0
  %i.ao = load i32, ptr %i.a, align 4
  %i.ap = icmp ne i32 %i.ao, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  %brmerge = select i1 %i.an, i1 true, i1 %i.ap
  br i1 %brmerge, label %databaseIsUnmoved.exit.thread42, label %bb.l

databaseIsUnmoved.exit.thread:                    ; preds = %bb.i, %bb.h, %sqlite3OsFileControl.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %databaseIsUnmoved.exit.thread
  br label %databaseIsUnmoved.exit.thread42

databaseIsUnmoved.exit.thread42:                  ; preds = %bb.k, %bb.l, %bb.g, %pagerFreeMapHdrs.exit
  %.0 = phi ptr [ null, %pagerFreeMapHdrs.exit ], [ null, %bb.g ], [ %i.c, %bb.l ], [ null, %bb.k ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !595
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.at = load i8, ptr %i.as, align 1, !tbaa !2303
  %i.au = zext i8 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !79
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = call fastcc i32 @sqlite3WalClose(ptr noundef %i.ar, ptr noundef %1, i32 noundef %i.au, i32 noundef %i.ax, ptr noundef %.0) ; 0 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !595
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !735
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !735
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !725 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.bd, null
  br i1 %.not4.i.i, label %pager_reset.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %databaseIsUnmoved.exit.thread42, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %i.bd, %databaseIsUnmoved.exit.thread42 ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  store i32 1, ptr %i.be, align 8, !tbaa !644
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !673 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i31, label %pager_reset.exit, label %.lr.ph.i.i, !llvm.loop !726

pager_reset.exit:                                 ; preds = %.lr.ph.i.i, %databaseIsUnmoved.exit.thread42
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !88
  call fastcc void @sqlite3PcacheTruncate(ptr noundef readonly %i.bi, i32 noundef 0)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !1217
  %.not26 = icmp eq i8 %i.bk, 0
  br i1 %.not26, label %bb.n, label %bb.m

bb.m:                                             ; preds = %pager_reset.exit
  call fastcc void @pager_unlock(ptr noundef nonnull %0)
  br label %bb.v

bb.n:                                             ; preds = %pager_reset.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !2014 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !473 ; 3 uses
  %.not27 = icmp eq ptr %i.bn, null
  br i1 %.not27, label %pager_error.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !731
  %.not.i32 = icmp eq i8 %i.bp, 0
  br i1 %.not.i32, label %bb.p, label %.thread.i

bb.p:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !733
  %i.bs = call i32 %i.br(ptr noundef nonnull %i.bm, i32 noundef 2) #59, !inline_history !2582 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %..thread.i_crit_edge, label %pagerSyncHotJournal.exit

..thread.i_crit_edge:                             ; preds = %bb.p
  %.pre = load ptr, ptr %i.bl, align 8, !tbaa !2014 ; 2 uses
  %.pre45 = load ptr, ptr %.pre, align 8, !tbaa !473
  br label %.thread.i

.thread.i:                                        ; preds = %..thread.i_crit_edge, %bb.o
  %i.bu = phi ptr [ %.pre45, %..thread.i_crit_edge ], [ %i.bn, %bb.o ]
  %i.bv = phi ptr [ %.pre, %..thread.i_crit_edge ], [ %i.bm, %bb.o ]
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !684
  %i.bz = call i32 %i.by(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bw) #59, !inline_history !2583
  br label %pagerSyncHotJournal.exit

pagerSyncHotJournal.exit:                         ; preds = %bb.p, %.thread.i
  %.1.i = phi i32 [ %i.bz, %.thread.i ], [ %i.bs, %bb.p ] ; 3 uses
  %trunc.i = trunc i32 %.1.i to i8
  switch i8 %trunc.i, label %pager_error.exit [
    i8 13, label %bb.q
    i8 10, label %bb.q
  ]

bb.q:                                             ; preds = %pagerSyncHotJournal.exit, %pagerSyncHotJournal.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.1.i, ptr %i.ca, align 8, !tbaa !678
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 6, ptr %i.cb, align 1, !tbaa !720
  %.not.i.i33 = icmp eq i32 %.1.i, 0
  br i1 %.not.i.i33, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr @getPageError, ptr %i.cc, align 8, !tbaa !514
  br label %pager_error.exit

bb.s:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !739
  %.not5.i.i = icmp eq i8 %i.ce, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  br i1 %.not5.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr @getPageMMap, ptr %i.cf, align 8, !tbaa !514
  br label %pager_error.exit

bb.u:                                             ; preds = %bb.s
  store ptr @getPageNormal, ptr %i.cf, align 8, !tbaa !514
  br label %pager_error.exit

pager_error.exit:                                 ; preds = %bb.u, %bb.t, %bb.r, %pagerSyncHotJournal.exit, %bb.n
  call fastcc void @pagerUnlockAndRollback(ptr noundef nonnull %0)
  br label %bb.v

bb.v:                                             ; preds = %pager_error.exit, %bb.m
  %i.cg = load ptr, ptr @sqlite3Hooks.1, align 8, !tbaa !1228 ; 2 uses
  %.not.i34 = icmp eq ptr %i.cg, null
  br i1 %.not.i34, label %sqlite3EndBenignMalloc.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void %i.cg() #59, !inline_history !1229
  br label %sqlite3EndBenignMalloc.exit

sqlite3EndBenignMalloc.exit:                      ; preds = %bb.v, %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !2014 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !473 ; 2 uses
  %.not.i35 = icmp eq ptr %i.cj, null
  br i1 %.not.i35, label %sqlite3OsClose.exit, label %bb.x

bb.x:                                             ; preds = %sqlite3EndBenignMalloc.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !2028
  %i.cm = call i32 %i.cl(ptr noundef nonnull %i.ci) #59, !inline_history !2032 ; 0 uses
  store ptr null, ptr %i.ci, align 8, !tbaa !473
  br label %sqlite3OsClose.exit

sqlite3OsClose.exit:                              ; preds = %sqlite3EndBenignMalloc.exit, %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !524 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !473 ; 2 uses
  %.not.i36 = icmp eq ptr %i.cp, null
  br i1 %.not.i36, label %bb.z, label %bb.y

bb.y:                                             ; preds = %sqlite3OsClose.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !2028
  %i.cs = call i32 %i.cr(ptr noundef nonnull %i.co) #59, !inline_history !2032 ; 0 uses
  store ptr null, ptr %i.co, align 8, !tbaa !473
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %sqlite3OsClose.exit
  call fastcc void @pcache1Free(ptr noundef %i.c)
  %i.ct = load ptr, ptr %i.bh, align 8, !tbaa !88
  %i.cu = getelementptr i8, ptr %i.ct, i64 72
  %.val28 = load ptr, ptr %i.cu, align 8, !tbaa !89
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 256), align 8, !tbaa !2052
  call void %i.cv(ptr noundef %.val28) #59, !inline_history !2584
  %i.cw = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i38 = icmp eq i32 %i.cw, 0
  br i1 %.not.i38, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cx = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i39, label %sqlite3_mutex_enter.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.cy(ptr noundef nonnull %i.cx) #59, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.ab, %bb.aa
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.da = call i32 %i.cz(ptr noundef nonnull %0) #59, !inline_history !269
  %i.db = sext i32 %i.da to i64
  %i.dc = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.dd = sub nsw i64 %i.dc, %i.db
  store i64 %i.dd, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.de = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.df = add nsw i64 %i.de, -1
  store i64 %i.df, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.dg(ptr noundef nonnull %0) #59, !inline_history !270
  %i.dh = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.dh, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.ac

bb.ac:                                            ; preds = %sqlite3_mutex_enter.exit.i
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.di(ptr noundef nonnull %i.dh) #59, !inline_history !271
  br label %sqlite3_free.exit

bb.ad:                                            ; preds = %bb.z
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.dj(ptr noundef nonnull %0) #59, !inline_history !270
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %sqlite3_mutex_enter.exit.i, %bb.ac, %bb.ad
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3WalClose(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 256) %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %sqlite3_free.exit41, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not29 = icmp eq ptr %4, null
  br i1 %.not29, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1973 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !473
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1970
  %i.g = tail call i32 %i.f(ptr noundef nonnull %i.c, i32 noundef 4) #59, !inline_history !2057 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 63 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !1967
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.i, align 1, !tbaa !1967
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = tail call fastcc i32 @sqlite3WalCheckpoint(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef null, ptr noundef null, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %4, ptr noundef null, ptr noundef null) ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i32 -1, ptr %i.a, align 4, !tbaa !5
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !1973 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !473  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %sqlite3OsFileControlHint.exit.thread, label %sqlite3OsFileControlHint.exit

sqlite3OsFileControlHint.exit:                    ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !729
  %i.r = call i32 %i.q(ptr noundef nonnull %i.n, i32 noundef 10, ptr noundef nonnull %i.a) #59, !inline_history !2097 ; 0 uses
  %.pr = load i32, ptr %i.a, align 4, !tbaa !5
  %.not30 = icmp eq i32 %.pr, 1
  br i1 %.not30, label %bb.h, label %sqlite3OsFileControlHint.exit.thread

bb.h:                                             ; preds = %sqlite3OsFileControlHint.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !2265
  %i.u = icmp sgt i64 %i.t, -1
  br i1 %i.u, label %bb.i, label %sqlite3OsFileControlHint.exit.thread

bb.i:                                             ; preds = %bb.h
  call fastcc void @walLimitSize(ptr noundef nonnull %0, i64 noundef 0)
  br label %sqlite3OsFileControlHint.exit.thread

sqlite3OsFileControlHint.exit.thread:             ; preds = %bb.g, %sqlite3OsFileControlHint.exit, %bb.h, %bb.i
  %.0 = phi i32 [ 0, %bb.h ], [ 0, %bb.i ], [ 1, %sqlite3OsFileControlHint.exit ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %sqlite3OsFileControlHint.exit.thread, %bb.c, %bb.b
  %.022 = phi i32 [ 0, %sqlite3OsFileControlHint.exit.thread ], [ %i.l, %bb.f ], [ %i.g, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %.1 = phi i32 [ %.0, %sqlite3OsFileControlHint.exit.thread ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  call fastcc void @walIndexClose(ptr noundef nonnull %0, i32 noundef %.1)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2194 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !473  ; 2 uses
  %.not.i32 = icmp eq ptr %i.x, null
  br i1 %.not.i32, label %sqlite3OsClose.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2028
  %i.aa = call i32 %i.z(ptr noundef nonnull %i.w) #59, !inline_history !2032 ; 0 uses
  store ptr null, ptr %i.w, align 8, !tbaa !473
  br label %sqlite3OsClose.exit

sqlite3OsClose.exit:                              ; preds = %bb.j, %bb.k
  %.not31 = icmp eq i32 %.1, 0
  br i1 %.not31, label %sqlite3EndBenignMalloc.exit, label %bb.l

bb.l:                                             ; preds = %sqlite3OsClose.exit
  %i.ab = load ptr, ptr @sqlite3Hooks.0, align 8, !tbaa !1225 ; 2 uses
  %.not.i33 = icmp eq ptr %i.ab, null
  br i1 %.not.i33, label %sqlite3BeginBenignMalloc.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void %i.ab() #59, !inline_history !1227
  br label %sqlite3BeginBenignMalloc.exit

sqlite3BeginBenignMalloc.exit:                    ; preds = %bb.l, %bb.m
  %i.ac = load ptr, ptr %0, align 8, !tbaa !2216  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1493 ; 2 uses
  %.not.i34 = icmp eq ptr %i.ae, null
  br i1 %.not.i34, label %sqlite3OsDelete.exit, label %bb.n

bb.n:                                             ; preds = %sqlite3BeginBenignMalloc.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2254
  %i.ah = call i32 %i.ae(ptr noundef nonnull %i.ac, ptr noundef %i.ag, i32 noundef 0) #59, !inline_history !2084 ; 0 uses
  br label %sqlite3OsDelete.exit

sqlite3OsDelete.exit:                             ; preds = %sqlite3BeginBenignMalloc.exit, %bb.n
  %i.ai = load ptr, ptr @sqlite3Hooks.1, align 8, !tbaa !1228 ; 2 uses
  %.not.i35 = icmp eq ptr %i.ai, null
  br i1 %.not.i35, label %sqlite3EndBenignMalloc.exit, label %bb.o

bb.o:                                             ; preds = %sqlite3OsDelete.exit
  call void %i.ai() #59, !inline_history !1229
  br label %sqlite3EndBenignMalloc.exit

sqlite3EndBenignMalloc.exit:                      ; preds = %bb.o, %sqlite3OsDelete.exit, %sqlite3OsClose.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1978 ; 4 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %sqlite3_free.exit, label %bb.p

bb.p:                                             ; preds = %sqlite3EndBenignMalloc.exit
  %i.am = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i36 = icmp eq i32 %i.am, 0
  br i1 %.not.i36, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.ao(ptr noundef nonnull %i.an) #59, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.r, %bb.q
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.aq = call i32 %i.ap(ptr noundef nonnull %i.ak) #59, !inline_history !269
  %i.ar = sext i32 %i.aq to i64
  %i.as = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.at = sub nsw i64 %i.as, %i.ar
  store i64 %i.at, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.au = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.av = add nsw i64 %i.au, -1
  store i64 %i.av, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.aw(ptr noundef nonnull %i.ak) #59, !inline_history !270
  %i.ax = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.ax, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.s

bb.s:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.ay(ptr noundef nonnull %i.ax) #59, !inline_history !271
  br label %sqlite3_free.exit

bb.t:                                             ; preds = %bb.p
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.az(ptr noundef nonnull %i.ak) #59, !inline_history !270
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.t, %bb.s, %sqlite3_mutex_enter.exit.i, %sqlite3EndBenignMalloc.exit
  %i.ba = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i37 = icmp eq i32 %i.ba, 0
  br i1 %.not.i37, label %bb.x, label %bb.u

bb.u:                                             ; preds = %sqlite3_free.exit
  %i.bb = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i38, label %sqlite3_mutex_enter.exit.i39, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.bc(ptr noundef nonnull %i.bb) #59, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i39

sqlite3_mutex_enter.exit.i39:                     ; preds = %bb.v, %bb.u
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.be = call i32 %i.bd(ptr noundef nonnull %0) #59, !inline_history !269
  %i.bf = sext i32 %i.be to i64
  %i.bg = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.bh = sub nsw i64 %i.bg, %i.bf
  store i64 %i.bh, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.bi = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.bj = add nsw i64 %i.bi, -1
  store i64 %i.bj, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.bk(ptr noundef nonnull %0) #59, !inline_history !270
  %i.bl = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i40 = icmp eq ptr %i.bl, null
  br i1 %.not.i4.i40, label %sqlite3_free.exit41, label %bb.w

bb.w:                                             ; preds = %sqlite3_mutex_enter.exit.i39
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.bm(ptr noundef nonnull %i.bl) #59, !inline_history !271
  br label %sqlite3_free.exit41

bb.x:                                             ; preds = %sqlite3_free.exit
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.bn(ptr noundef nonnull %0) #59, !inline_history !270
  br label %sqlite3_free.exit41

sqlite3_free.exit41:                              ; preds = %bb.x, %bb.w, %sqlite3_mutex_enter.exit.i39, %bb.a
  %.123 = phi i32 [ 0, %bb.a ], [ %.022, %sqlite3_mutex_enter.exit.i39 ], [ %.022, %bb.w ], [ %.022, %bb.x ]
  ret i32 %.123
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3WalCheckpoint(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly captures(address) %3, ptr noundef %4, i32 noundef range(i32 0, 256) %5, i32 noundef %6, ptr noundef %7, ptr noundef writeonly captures(address_is_null) %8, ptr noundef writeonly captures(address_is_null) %9) unnamed_addr #0 {
bb.a:
  %10 = alloca [13 x %struct.Sublist], align 16   ; 8 uses
  %11 = alloca %struct.WalHashLoc, align 8        ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #59
  store i32 0, ptr %i.d, align 4, !tbaa !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.f = load i8, ptr %i.e, align 2, !tbaa !1975
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.cr

bb.b:                                             ; preds = %bb.a
  %.not61 = icmp eq i32 %2, -1
  br i1 %.not61, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 63 ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !1967
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %walLockExclusive.exit, label %walLockExclusive.exit.thread

walLockExclusive.exit:                            ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1973 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !473
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1521
  %i.n = tail call i32 %i.m(ptr noundef nonnull %i.j, i32 noundef range(i32 -2147483645, -2147483648) 1, i32 noundef range(i32 -253, 5) 1, i32 noundef 10) #59, !inline_history !2236 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %walLockExclusive.exit.thread, label %.thread98

walLockExclusive.exit.thread:                     ; preds = %bb.c, %walLockExclusive.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 1, ptr %i.p, align 1, !tbaa !2238
  %.not62 = icmp eq i32 %2, 0
  br i1 %.not62, label %.thread, label %bb.d

bb.d:                                             ; preds = %walLockExclusive.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not11.i = icmp eq ptr %3, null
  br i1 %.not11.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.d
  %i.r = load i8, ptr %i.g, align 1, !tbaa !1967
  %.not.i.us.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.us.i, label %walLockExclusive.exit.us.i, label %walBusyLock.exit.thread

walLockExclusive.exit.us.i:                       ; preds = %.split.us.i
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !1973 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !473
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1521
  %i.w = tail call i32 %i.v(ptr noundef nonnull %i.s, i32 noundef range(i32 -2147483645, 257) 0, i32 noundef range(i32 -253, 5) 1, i32 noundef 10) #59, !inline_history !2585
  br label %walBusyLock.exit

.split.i:                                         ; preds = %bb.d, %bb.e
  %i.x = load i8, ptr %i.g, align 1, !tbaa !1967
  %.not.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i, label %walLockExclusive.exit.i, label %walBusyLock.exit.thread

walLockExclusive.exit.i:                          ; preds = %.split.i
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !1973 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !473
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 112
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1521
  %i.ac = tail call i32 %i.ab(ptr noundef nonnull %i.y, i32 noundef range(i32 -2147483645, 257) 0, i32 noundef range(i32 -253, 5) 1, i32 noundef 10) #59, !inline_history !2585 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 5
  br i1 %i.ad, label %bb.e, label %walBusyLock.exit

bb.e:                                             ; preds = %walLockExclusive.exit.i
  %i.ae = tail call i32 %3(ptr noundef %4) #59, !inline_history !2586
  %.not.i73 = icmp eq i32 %i.ae, 0
  br i1 %.not.i73, label %.thread, label %.split.i, !llvm.loop !2587

walBusyLock.exit:                                 ; preds = %walLockExclusive.exit.i, %walLockExclusive.exit.us.i
  %.us-phi.i = phi i32 [ %i.w, %walLockExclusive.exit.us.i ], [ %i.ac, %walLockExclusive.exit.i ] ; 2 uses
  switch i32 %.us-phi.i, label %bb.h [
    i32 0, label %walBusyLock.exit.thread
    i32 5, label %.thread
  ]

walBusyLock.exit.thread:                          ; preds = %.split.i, %.split.us.i, %walBusyLock.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.af, align 8, !tbaa !1977
  br label %.thread

.thread:                                          ; preds = %bb.e, %walBusyLock.exit, %bb.b, %walLockExclusive.exit.thread, %walBusyLock.exit.thread
  %.092 = phi ptr [ null, %walBusyLock.exit ], [ %3, %bb.b ], [ %3, %walLockExclusive.exit.thread ], [ %3, %walBusyLock.exit.thread ], [ null, %bb.e ] ; 3 uses
  %.05089 = phi i32 [ 0, %walBusyLock.exit ], [ -1, %bb.b ], [ 0, %walLockExclusive.exit.thread ], [ %2, %walBusyLock.exit.thread ], [ 0, %bb.e ] ; 3 uses
  %i.ag = call fastcc i32 @walIndexReadHdr(ptr noundef nonnull %0, ptr noundef %i.d) ; 3 uses
  %i.ah = load i32, ptr %i.d, align 4, !tbaa !5
  %.not63 = icmp eq i32 %i.ah, 0
  br i1 %.not63, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1973 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !473 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1520
  %i.am = icmp sgt i32 %i.al, 2
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 144
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !526
  %i.ap = tail call i32 %i.ao(ptr noundef nonnull %i.aj, i64 noundef 0, ptr noundef null) #59, !inline_history !2035 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %walBusyLock.exit, %.thread, %bb.f, %bb.g
  %.091 = phi ptr [ %.092, %bb.g ], [ %.092, %bb.f ], [ %.092, %.thread ], [ %3, %walBusyLock.exit ] ; 6 uses
  %.05088 = phi i32 [ %.05089, %bb.g ], [ %.05089, %bb.f ], [ %.05089, %.thread ], [ %2, %walBusyLock.exit ] ; 11 uses
  %.1 = phi i32 [ %i.ag, %bb.g ], [ %i.ag, %bb.f ], [ %i.ag, %.thread ], [ %.us-phi.i, %walBusyLock.exit ] ; 2 uses
  %i.aq = icmp eq i32 %.1, 0
  br i1 %i.aq, label %bb.i, label %.thread98

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 400), align 8, !tbaa !718 ; 2 uses
  %.not.i74 = icmp eq ptr %i.ar, null
  br i1 %.not.i74, label %sqlite3FaultSim.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = tail call i32 %i.ar(i32 noundef 660) #59, !inline_history !719 ; 0 uses
  br label %sqlite3FaultSim.exit

sqlite3FaultSim.exit:                             ; preds = %bb.i, %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !2182 ; 7 uses
  %.not64 = icmp eq i32 %i.au, 0
  br i1 %.not64, label %bb.m, label %bb.k

bb.k:                                             ; preds = %sqlite3FaultSim.exit
  %i.av = getelementptr i8, ptr %0, i64 86
  %.val72 = load i16, ptr %i.av, align 2, !tbaa !2195
  %i.aw = zext i16 %.val72 to i32                 ; 2 uses
  %i.ax = and i32 %i.aw, 65024
  %i.ay = shl nuw i32 %i.aw, 16
  %i.az = and i32 %i.ay, 65536
  %i.ba = or disjoint i32 %i.az, %i.ax
  %.not65 = icmp eq i32 %i.ba, %6
  br i1 %.not65, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 71284, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %.thread98

bb.m:                                             ; preds = %bb.k, %sqlite3FaultSim.exit
  %.not66 = icmp eq i32 %.05088, -1
  br i1 %.not66, label %walCheckpoint.exit.thread107, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr i8, ptr %0, i64 86
  %.val149.i = load i16, ptr %i.bb, align 2, !tbaa !2195
  %i.bc = zext i16 %.val149.i to i32              ; 2 uses
  %i.bd = and i32 %i.bc, 65024
  %i.be = shl nuw i32 %i.bc, 16
  %i.bf = and i32 %i.be, 65536
  %i.bg = or disjoint i32 %i.bf, %i.bd            ; 5 uses
  %i.bh = getelementptr i8, ptr %0, i64 48        ; 4 uses
  %.val148.i = load ptr, ptr %i.bh, align 8, !tbaa !1978
  %.val148.val.i = load ptr, ptr %.val148.i, align 8, !tbaa !348 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val148.val.i, i64 96 ; 6 uses
  %i.bj = load volatile i32, ptr %i.bi, align 4, !tbaa !2250
  %i.bk = icmp ult i32 %i.bj, %i.au
  br i1 %i.bk, label %bb.o, label %walUnlockExclusive.exit176.thread.i

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !2019 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 63 ; 15 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 22 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val148.val.i, i64 104 ; 2 uses
  %i.bq = load atomic volatile i32, ptr %i.bp monotonic, align 4 ; 3 uses
  %i.br = icmp ugt i32 %i.au, %i.bq
  br i1 %i.br, label %bb.p, label %walBusyLock.exit.thread202.i

bb.p:                                             ; preds = %bb.o
  %.not11.i.i = icmp eq ptr %.091, null
  br i1 %.not11.i.i, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.p
  %i.bs = load i8, ptr %i.bn, align 1, !tbaa !1967
  %.not.i.us.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i.us.i.i, label %walLockExclusive.exit.us.i.i, label %walBusyLock.exit.thread.i

walLockExclusive.exit.us.i.i:                     ; preds = %.split.us.i.i
  %i.bt = load ptr, ptr %i.bo, align 8, !tbaa !1973 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !473
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 112
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1521
  %i.bx = tail call i32 %i.bw(ptr noundef nonnull %i.bt, i32 noundef range(i32 -2147483645, 8) 4, i32 noundef range(i32 -253, 5) 1, i32 noundef 10) #59, !inline_history !2588
  br label %walBusyLock.exit.i

.split.i.i:                                       ; preds = %bb.p, %bb.q
  %i.by = load i8, ptr %i.bn, align 1, !tbaa !1967
  %.not.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i, label %walLockExclusive.exit.i.i, label %walBusyLock.exit.thread.i

end_hunk_4
begin_hunk_5_@sqlite3BtreeSavepoint:bb.a

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.y = tail call fastcc i32 @newDatabase(ptr noundef nonnull %i.e)
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !658
  %i.ab = getelementptr i8, ptr %i.aa, i64 80
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !659
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 28
  %i.ad = load i32, ptr %i.ac, align 1            ; 2 uses
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ad)
  %i.af = icmp eq i32 %i.ad, 0
  br i1 %i.af, label %bb.k, label %btreeSetNPage.exit

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.ah = getelementptr i8, ptr %i.ag, i64 32
  %.val.i = load i32, ptr %i.ah, align 8, !tbaa !676
  br label %btreeSetNPage.exit

btreeSetNPage.exit:                               ; preds = %bb.j, %bb.k
  %.0.i = phi i32 [ %.val.i, %bb.k ], [ %i.ae, %bb.j ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i32 %.0.i, ptr %i.ai, align 8, !tbaa !668
  br label %.thread

.thread:                                          ; preds = %saveAllCursors.exit, %btreeSetNPage.exit, %saveAllCursors.exit.thread
  %.2 = phi i32 [ %i.y, %btreeSetNPage.exit ], [ %i.r, %saveAllCursors.exit.thread ], [ %i.o, %saveAllCursors.exit ] ; 3 uses
  %i.aj = load i8, ptr %i.f, align 1, !tbaa !592
  %.not.i20 = icmp eq i8 %i.aj, 0
  br i1 %.not.i20, label %sqlite3BtreeLeave.exit, label %bb.l

bb.l:                                             ; preds = %.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !593
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !593
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.m, label %sqlite3BtreeLeave.exit

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @unlockBtreeMutex(ptr noundef nonnull %0)
  br label %sqlite3BtreeLeave.exit

sqlite3BtreeLeave.exit:                           ; preds = %bb.m, %bb.l, %.thread, %bb.b, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %.2, %.thread ], [ %.2, %bb.l ], [ %.2, %bb.m ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3VtabSavepoint(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2417
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 564
  %i.d = add nsw i32 %2, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %sqlite3VtabUnlock.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %sqlite3VtabUnlock.exit ] ; 3 uses
  %i.f = load i32, ptr %i.c, align 4, !tbaa !2416
  %i.g = sext i32 %i.f to i64
  %i.h = icmp slt i64 %indvars.iv, %i.g
  br i1 %i.h, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !2417
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1238 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !706
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !964  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !574  ; 2 uses
  %.not31 = icmp eq ptr %i.p, null
  br i1 %.not31, label %sqlite3VtabUnlock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.n, align 8, !tbaa !2633
  %i.r = icmp sgt i32 %i.q, 1
  br i1 %i.r, label %bb.e, label %sqlite3VtabUnlock.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !699  ; 3 uses
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 8, !tbaa !699
  switch i32 %1, label %bb.h [
    i32 0, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2634
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i32 %i.d, ptr %i.x, align 8, !tbaa !2628
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2635
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2636
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.028 = phi ptr [ %i.ab, %bb.h ], [ %i.w, %bb.f ], [ %i.z, %bb.g ] ; 2 uses
  %.not32 = icmp eq ptr %.028, null
  br i1 %.not32, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !2628
  %i.ae = icmp sgt i32 %i.ad, %2
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = load i64, ptr %i.e, align 8, !tbaa !545 ; 2 uses
  %i.ag = and i64 %i.af, 268435456
  %i.ah = and i64 %i.af, -268435457
  store i64 %i.ah, ptr %i.e, align 8, !tbaa !545
  %i.ai = tail call i32 %.028(ptr noundef nonnull %i.p, i32 noundef %2) #59
  %i.aj = load i64, ptr %i.e, align 8, !tbaa !545
  %i.ak = or i64 %i.aj, %i.ag
  store i64 %i.ak, ptr %i.e, align 8, !tbaa !545
  %.pre = load i32, ptr %i.s, align 8, !tbaa !699
  %i.al = add nsw i32 %.pre, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.am = phi i32 [ %i.al, %bb.k ], [ %i.t, %bb.j ], [ %i.t, %bb.i ] ; 2 uses
  %.1 = phi i32 [ %i.ai, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.an = load ptr, ptr %i.k, align 8, !tbaa !698 ; 2 uses
  store i32 %i.am, ptr %i.s, align 8, !tbaa !699
  %i.ao = icmp eq i32 %i.am, 0
  br i1 %i.ao, label %bb.m, label %sqlite3VtabUnlock.exit

bb.m:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr %i.o, align 8, !tbaa !574 ; 3 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !700
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !703
  %i.at = tail call i32 %i.as(ptr noundef nonnull %i.ap) #59, !inline_history !2393 ; 0 uses
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !698
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.au = phi ptr [ %.pre.i, %bb.n ], [ %i.an, %bb.m ]
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !706 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !707
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !707
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.p, label %sqlite3DbFree.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !709 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %sqlite3DbFree.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !710
  tail call void %i.bb(ptr noundef %i.bd) #59, !inline_history !2394
  br label %sqlite3DbFree.exit.i.i

sqlite3DbFree.exit.i.i:                           ; preds = %bb.q, %bb.p
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.au, ptr noundef nonnull %i.av)
  br label %sqlite3DbFree.exit.i

sqlite3DbFree.exit.i:                             ; preds = %sqlite3DbFree.exit.i.i, %bb.o
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.an, ptr noundef nonnull %i.k)
  br label %sqlite3VtabUnlock.exit

sqlite3VtabUnlock.exit:                           ; preds = %sqlite3DbFree.exit.i, %bb.l, %bb.d, %bb.c
  %.2 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ %.1, %bb.l ], [ %.1, %sqlite3DbFree.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.be = icmp eq i32 %.2, 0
  br i1 %i.be, label %bb.b, label %.critedge, !llvm.loop !2637

.critedge:                                        ; preds = %bb.b, %sqlite3VtabUnlock.exit, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %.2, %sqlite3VtabUnlock.exit ]
  ret i32 %.3
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @apiHandleError(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !550   ; 2 uses
  %i.c = icmp ne i8 %i.b, 0
  %i.d = icmp eq i32 %1, 3082
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %sqlite3OomClear.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.f = load i32, ptr %i.e, align 4, !tbaa !552
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %sqlite3OomClear.exit

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.a, align 1, !tbaa !550
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 424
  store atomic volatile i32 0, ptr %i.h monotonic, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !553
  %i.k = add i32 %i.j, -1                         ; 2 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !553
  %.not8.i = icmp eq i32 %i.k, 0
  br i1 %.not8.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 438
  %i.m = load i16, ptr %i.l, align 2, !tbaa !353
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = phi i16 [ %i.m, %bb.e ], [ 0, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 436
  store i16 %i.n, ptr %i.o, align 4, !tbaa !554
  br label %sqlite3OomClear.exit

sqlite3OomClear.exit:                             ; preds = %bb.b, %bb.c, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 7, ptr %i.p, align 8, !tbaa !589
  tail call fastcc void @sqlite3ErrorFinish(ptr noundef nonnull %0, i32 noundef 7)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load i32, ptr %i.q, align 8, !tbaa !604
  %i.s = and i32 %i.r, %1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %sqlite3OomClear.exit
  %.0 = phi i32 [ 7, %sqlite3OomClear.exit ], [ %i.s, %bb.g ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @vdbeMemClear(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i16, ptr %i.a, align 4, !tbaa !162
  %i.c = and i16 %i.b, -28672
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vdbeMemClearExternAndSetNull(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !159
  %.not7 = icmp eq i32 %i.e, 0
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !157
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !160
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.g, ptr noundef %i.i)
  store i32 0, ptr %i.d, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.j, align 8, !tbaa !289
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @vdbeMemClearExternAndSetNull(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.sqlite3_context, align 8    ; 8 uses
  %2 = alloca %struct.sqlite3_value, align 8      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !162  ; 2 uses
  %.not = icmp sgt i16 %i.b, -1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !227    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #59
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i16 1, ptr %i.e, align 4, !tbaa !162
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !157  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.g, ptr %i.h, align 8, !tbaa !157
  store ptr %2, ptr %1, align 8, !tbaa !288
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %0, ptr %i.i, align 8, !tbaa !288
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.c, ptr %i.j, align 8, !tbaa !230
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 100
  %i.l = load i8, ptr %i.k, align 4, !tbaa !844
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 %i.l, ptr %i.m, align 8, !tbaa !227
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1264
  call void %i.o(ptr noundef nonnull %1) #59, !inline_history !2638
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !159
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %sqlite3VdbeMemFinalize.exit

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !157
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !160
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.s, ptr noundef %i.u)
  br label %sqlite3VdbeMemFinalize.exit

sqlite3VdbeMemFinalize.exit:                      ; preds = %bb.b, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #59
  %.pre = load i16, ptr %i.a, align 4, !tbaa !162
  br label %bb.d

bb.d:                                             ; preds = %sqlite3VdbeMemFinalize.exit, %bb.a
  %i.v = phi i16 [ %.pre, %sqlite3VdbeMemFinalize.exit ], [ %i.b, %bb.a ]
  %i.w = and i16 %i.v, 4096
  %.not7 = icmp eq i16 %i.w, 0
  br i1 %.not7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !811
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !289
  call void %i.y(ptr noundef %i.aa) #59
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i16 1, ptr %i.a, align 4, !tbaa !162
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @sqlite3VdbeMemGrow(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !159
  %i.c = icmp sgt i32 %i.b, 0                     ; 2 uses
  %i.d = icmp ne i32 %2, 0
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !289  ; 20 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !160  ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.c, label %.thread70

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !157  ; 13 uses
  %.not = icmp eq ptr %i.k, null
  %i.l = sext i32 %1 to i64                       ; 4 uses
  br i1 %.not, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq ptr %i.f, null
  br i1 %i.m, label %sqlite3DbRealloc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 512 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !100
  %i.p = icmp ult ptr %i.f, %i.o
  br i1 %i.p, label %bb.f, label %sqlite3DbRealloc.exit.thread63

bb.f:                                             ; preds = %bb.e
end_hunk_5
begin_hunk_6_@vdbeColumnFromOverflow:bb.a
  %.not92 = icmp eq i32 %i.cd, 0
  %i.ce = zext nneg i32 %.0.i to i64              ; 2 uses
  br i1 %.not92, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef nonnull %6, ptr noundef nonnull %.0, i64 noundef %i.ce, i8 noundef zeroext %i.d, ptr noundef nonnull @sqlite3RCStrUnref)
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.ch = load i16, ptr %i.cg, align 4, !tbaa !162
  %i.ci = or i16 %i.ch, 512
  store i16 %i.ci, ptr %i.cg, align 4, !tbaa !162
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.cj = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef nonnull %6, ptr noundef nonnull %.0, i64 noundef %i.ce, i8 noundef zeroext 0, ptr noundef nonnull @sqlite3RCStrUnref)
  br label %bb.ab

bb.y:                                             ; preds = %bb.e, %bb.d
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !227
  %i.cm = trunc nuw i64 %3 to i32
  %i.cn = tail call fastcc i32 @sqlite3VdbeMemFromBtree(ptr noundef %i.cl, i32 noundef %i.cm, i32 noundef %.0.i, ptr noundef nonnull %6) ; 2 uses
  %.not = icmp eq i32 %i.cn, 0
  br i1 %.not, label %bb.z, label %.thread98

bb.z:                                             ; preds = %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !289
  tail call fastcc void @sqlite3VdbeSerialGet(ptr noundef %i.cp, i32 noundef %2, ptr noundef nonnull %6)
  %i.cq = trunc i32 %2 to i1
  %i.cr = icmp eq i8 %i.d, 1
  %or.cond = select i1 %i.cq, i1 %i.cr, i1 false
  br i1 %or.cond, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cs = load ptr, ptr %i.co, align 8, !tbaa !289
  %i.ct = zext nneg i32 %.0.i to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ct
  store i8 0, ptr %i.cu, align 1, !tbaa !227
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.cw = load i16, ptr %i.cv, align 4, !tbaa !162
  %i.cx = or i16 %i.cw, 512
  store i16 %i.cx, ptr %i.cv, align 4, !tbaa !162
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %bb.w, %bb.z, %bb.aa
  %.2 = phi i32 [ 0, %bb.z ], [ 0, %bb.aa ], [ %i.cj, %bb.x ], [ %i.cf, %bb.w ]
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.cz = load i16, ptr %i.cy, align 4, !tbaa !162
  %i.da = and i16 %i.cz, -16385
  store i16 %i.da, ptr %i.cy, align 4, !tbaa !162
  br label %.thread98

.thread98:                                        ; preds = %sqlite3RCStrNew.exit.thread, %sqlite3DbMallocZero.exit.thread, %bb.t, %bb.y, %sqlite3VdbeSerialTypeLen.exit, %bb.ab
  %.1 = phi i32 [ 18, %sqlite3VdbeSerialTypeLen.exit ], [ %.2, %bb.ab ], [ %i.cn, %bb.y ], [ 7, %sqlite3RCStrNew.exit.thread ], [ 7, %sqlite3DbMallocZero.exit.thread ], [ %i.bp, %bb.t ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc range(i32 -2147483647, -2147483648) i32 @sqlite3PutVarint(ptr noundef writeonly captures(none) %0, i64 noundef %1) unnamed_addr #36 {
bb.a:
  %i.a = icmp ult i64 %1, 128
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw nsw i64 %1 to i8
  store i8 %i.b, ptr %0, align 1, !tbaa !227
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %1, 16384
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = lshr i64 %1, 7
  %i.e = trunc nuw nsw i64 %i.d to i8
  %i.f = or disjoint i8 %i.e, -128
  store i8 %i.f, ptr %0, align 1, !tbaa !227
  %i.g = trunc i64 %1 to i8
  %i.h = and i8 %i.g, 127
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.h, ptr %i.i, align 1, !tbaa !227
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = tail call fastcc i32 @putVarint64(ptr noundef %0, i64 noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 2, %bb.d ], [ %i.j, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @sqlite3BtreeRowCountEst(ptr noundef readonly captures(none) %0) unnamed_addr #14 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !837
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !831  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !832
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.h = load i16, ptr %i.g, align 8, !tbaa !2009
  %i.i = zext i16 %i.h to i64                     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.k = load i8, ptr %i.j, align 4, !tbaa !2360  ; 3 uses
  %i.l = icmp sgt i8 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %wide.trip.count = zext nneg i8 %i.k to i64     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.n = icmp ult i8 %i.k, 4
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 124
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.d ] ; 5 uses
  %.01012 = phi i64 [ %i.i, %.lr.ph.new ], [ %i.as, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2045
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load i16, ptr %i.q, align 8, !tbaa !2009
  %i.s = zext i16 %i.r to i64
  %i.t = add nuw nsw i64 %i.s, 1
  %i.u = mul nuw nsw i64 %i.t, %.01012
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2045
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load i16, ptr %i.y, align 8, !tbaa !2009
  %i.aa = zext i16 %i.z to i64
  %i.ab = add nuw nsw i64 %i.aa, 1
  %i.ac = mul nuw nsw i64 %i.ab, %i.u
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2045
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !2009
  %i.ai = zext i16 %i.ah to i64
  %i.aj = add nuw nsw i64 %i.ai, 1
  %i.ak = mul nuw nsw i64 %i.aj, %i.ac
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2045
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i16, ptr %i.ao, align 8, !tbaa !2009
  %i.aq = zext i16 %i.ap to i64
  %i.ar = add nuw nsw i64 %i.aq, 1
  %i.as = mul nuw nsw i64 %i.ar, %i.ak            ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !2880

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %.01012.epil.init = phi i64 [ %i.i, %.lr.ph ], [ %i.as, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.e ] ; 2 uses
  %.01012.epil = phi i64 [ %.01012.epil.init, %.epil.preheader ], [ %i.az, %bb.e ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.epil
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !2045
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load i16, ptr %i.av, align 8, !tbaa !2009
  %i.ax = zext i16 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.ax, 1
  %i.az = mul nuw nsw i64 %i.ay, %.01012.epil     ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.e, !llvm.loop !2881

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.e, %bb.c, %bb.b, %bb.a
  %.011 = phi i64 [ -1, %bb.b ], [ 0, %bb.a ], [ %i.i, %bb.c ], [ %i.as, %.loopexit.loopexit.unr-lcssa ], [ %i.az, %bb.e ]
  ret i64 %.011
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeCount(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @moveToRoot(ptr noundef %1) ; 2 uses
  switch i32 %i.a, label %.critedge [
    i32 16, label %bb.b
    i32 0, label %.lr.ph
  ]

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 70
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 86         ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 144
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %2, align 8, !tbaa !18
  br label %.critedge

bb.c:                                             ; preds = %.lr.ph, %bb.n
  %.03761 = phi i64 [ 0, %.lr.ph ], [ %.13851, %bb.n ] ; 3 uses
  %i.i = load atomic volatile i32, ptr %i.b monotonic, align 8
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !831  ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !832
  %.not45 = icmp eq i8 %i.l, 0
  br i1 %.not45, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !2005
  %.not46 = icmp eq i8 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.p = load i16, ptr %i.o, align 8, !tbaa !2009 ; 3 uses
  br i1 %.not46, label %.thread52, label %.thread

.thread52:                                        ; preds = %bb.e
  %i.q = zext i16 %i.p to i64
  %i.r = add nsw i64 %.03761, %i.q
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.t = load i16, ptr %i.s, align 8, !tbaa !2009
  %i.u = zext i16 %i.t to i64
  %i.v = add nsw i64 %.03761, %i.u                ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %moveToParent.exit
  %i.w = phi ptr [ %i.j, %bb.f ], [ %i.bl, %moveToParent.exit ]
  %i.x = load i8, ptr %i.d, align 4, !tbaa !2360  ; 3 uses
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %.thread53, label %bb.h

.thread53:                                        ; preds = %bb.g
  store i64 %i.v, ptr %2, align 8, !tbaa !18
  %i.z = tail call fastcc i32 @moveToRoot(ptr noundef nonnull %1)
  br label %.critedge

bb.h:                                             ; preds = %bb.g
  store i16 0, ptr %i.e, align 2, !tbaa !2366
  %i.aa = load i8, ptr %i.f, align 1, !tbaa !744
  %i.ab = and i8 %i.aa, -7
  store i8 %i.ab, ptr %i.f, align 1, !tbaa !744
  %i.ac = sext i8 %i.x to i64
  %i.ad = getelementptr [2 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !330
  store i16 %i.ae, ptr %i.g, align 2, !tbaa !835
  %i.af = add i8 %i.x, -1                         ; 2 uses
  store i8 %i.af, ptr %i.d, align 4, !tbaa !2360
  %i.ag = sext i8 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2045
  store ptr %i.ai, ptr %i.c, align 8, !tbaa !831
  %i.aj = getelementptr i8, ptr %i.w, i64 112
  %.val.i = load ptr, ptr %i.aj, align 8, !tbaa !690 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i, i64 52
  %i.al = load i16, ptr %i.ak, align 4, !tbaa !519
  %i.am = and i16 %i.al, 32
  %.not.i.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !520 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 152 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !521
  %i.ar = add nsw i32 %i.aq, -1
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !521
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 168 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !522
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  store ptr %i.at, ptr %i.au, align 8, !tbaa !523
  store ptr %.val.i, ptr %i.as, align 8, !tbaa !522
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !524 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !525
  %i.az = add i32 %i.ay, -1
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 200
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !79
  %i.bd = mul nsw i64 %i.bc, %i.ba
  %i.be = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !516
  %i.bg = load ptr, ptr %i.aw, align 8, !tbaa !473
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 144
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !526
  %i.bj = tail call i32 %i.bi(ptr noundef nonnull %i.aw, i64 noundef %i.bd, ptr noundef %i.bf) #59, !inline_history !2882 ; 0 uses
  br label %moveToParent.exit

bb.j:                                             ; preds = %bb.h
  tail call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i)
  br label %moveToParent.exit

moveToParent.exit:                                ; preds = %bb.i, %bb.j
  %i.bk = load i16, ptr %i.g, align 2, !tbaa !835 ; 2 uses
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !831 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load i16, ptr %i.bm, align 8, !tbaa !2009 ; 2 uses
  %.not48 = icmp ult i16 %i.bk, %i.bn
  br i1 %.not48, label %bb.k, label %bb.g, !llvm.loop !2883

bb.k:                                             ; preds = %moveToParent.exit
  %i.bo = add nuw i16 %i.bk, 1
  store i16 %i.bo, ptr %i.g, align 2, !tbaa !835
  br label %.thread

.thread:                                          ; preds = %bb.e, %.thread52, %bb.k
  %i.bp = phi i16 [ %i.bn, %bb.k ], [ %i.p, %.thread52 ], [ %i.p, %bb.e ]
  %.13851 = phi i64 [ %i.v, %bb.k ], [ %i.r, %.thread52 ], [ %.03761, %bb.e ]
  %.0 = phi ptr [ %i.bl, %bb.k ], [ %i.j, %.thread52 ], [ %i.j, %bb.e ] ; 5 uses
  %i.bq = load i16, ptr %i.g, align 2, !tbaa !835 ; 2 uses
  %i.br = icmp eq i16 %i.bq, %i.bp
  br i1 %i.br, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %.0, i64 80
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !659
  %i.bu = getelementptr inbounds nuw i8, ptr %.0, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !763
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bw ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !227
  %i.ca = zext i8 %i.bz to i32
  %i.cb = shl nuw i32 %i.ca, 24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 9
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !227
  %i.ce = zext i8 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 16
  %i.cg = or disjoint i32 %i.cf, %i.cb
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 10
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !227
  %i.cj = zext i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 8
  %i.cl = or disjoint i32 %i.cg, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 11
  br label %bb.n

bb.m:                                             ; preds = %.thread
  %i.cn = zext i16 %i.bq to i64
  %i.co = getelementptr inbounds nuw i8, ptr %.0, i64 80
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !659
  %i.cq = getelementptr inbounds nuw i8, ptr %.0, i64 26
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !833
  %i.cs = zext i16 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %.0, i64 96
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !834
  %i.cv = shl nuw nsw i64 %i.cn, 1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cv ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !227
  %i.cy = zext i8 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !227
  %i.dc = zext i8 %i.db to i64
  %i.dd = or disjoint i64 %i.cz, %i.dc
  %i.de = and i64 %i.dd, %i.cs
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.de ; 4 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !227
  %i.dh = zext i8 %i.dg to i32
  %i.di = shl nuw i32 %i.dh, 24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !227
  %i.dl = zext i8 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 16
  %i.dn = or disjoint i32 %i.dm, %i.di
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !227
  %i.dq = zext i8 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 8
  %i.ds = or disjoint i32 %i.dn, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.df, i64 3
end_hunk_6
begin_hunk_7_@sqlite3RowSetTest:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.aq = load i16, ptr %i.ap, align 8, !tbaa !1937 ; 2 uses
  %i.ar = icmp eq i16 %i.aq, 0
  br i1 %i.ar, label %bb.n, label %rowSetEntryAlloc.exit

bb.n:                                             ; preds = %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1935 ; 9 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 436
  %i.av = load i16, ptr %i.au, align 4, !tbaa !554
  %i.aw = icmp ult i16 %i.av, 1016
  br i1 %i.aw, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 432
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !553
  %.not39.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not39.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 452 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !5
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !5
  br label %sqlite3DbMallocRawNN.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 103
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !550
  %.not40.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not40.i.i, label %sqlite3DbMallocRawNN.exit.i, label %rowSetEntryAlloc.exit.thread

bb.r:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 472 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !53 ; 3 uses
  %.not37.i.i = icmp eq ptr %i.bf, null
  br i1 %.not37.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !49
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !53
  br label %sqlite3DbMallocRawNN.exit.thread.sink.split.i

bb.t:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 464 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !48 ; 3 uses
  %.not38.i.i = icmp eq ptr %i.bi, null
  br i1 %.not38.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !49
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !48
  br label %sqlite3DbMallocRawNN.exit.thread.sink.split.i

bb.v:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 456 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !5
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 8, !tbaa !5
  br label %sqlite3DbMallocRawNN.exit.i

sqlite3DbMallocRawNN.exit.i:                      ; preds = %bb.v, %bb.q, %bb.p
  %i.bn = tail call fastcc ptr @dbMallocRawFinish(ptr noundef nonnull %i.at, i64 noundef 1016) #62 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %rowSetEntryAlloc.exit.thread, label %rowSetEntryAlloc.exit.thread71

sqlite3DbMallocRawNN.exit.thread.sink.split.i:    ; preds = %bb.u, %bb.s
  %.0.i16.ph.i = phi ptr [ %i.bi, %bb.u ], [ %i.bf, %bb.s ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 448 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !5
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !5
  br label %rowSetEntryAlloc.exit.thread71

rowSetEntryAlloc.exit.thread71:                   ; preds = %sqlite3DbMallocRawNN.exit.i, %sqlite3DbMallocRawNN.exit.thread.sink.split.i
  %.0.i16.i = phi ptr [ %i.bn, %sqlite3DbMallocRawNN.exit.i ], [ %.0.i16.ph.i, %sqlite3DbMallocRawNN.exit.thread.sink.split.i ] ; 4 uses
  %i.bs = load ptr, ptr %0, align 8, !tbaa !1929
  store ptr %i.bs, ptr %.0.i16.i, align 8, !tbaa !1933
  store ptr %.0.i16.i, ptr %0, align 8, !tbaa !1929
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 8 ; 2 uses
  store i16 41, ptr %i.ap, align 8, !tbaa !1937
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 32
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !2993
  store ptr %i.bt, ptr %.0.lcssa, align 8, !tbaa !3000
  br label %bb.w

rowSetEntryAlloc.exit.thread:                     ; preds = %sqlite3DbMallocRawNN.exit.i, %bb.q
  store ptr null, ptr %.0.lcssa, align 8, !tbaa !3000
  br label %bb.x

rowSetEntryAlloc.exit:                            ; preds = %._crit_edge
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !2993 ; 4 uses
  %i.bw = add i16 %i.aq, -1
  store i16 %i.bw, ptr %i.ap, align 8, !tbaa !1937
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  store ptr %i.bx, ptr %.phi.trans.insert.i, align 8, !tbaa !2993
  store ptr %.pre.i, ptr %.0.lcssa, align 8, !tbaa !3000
  %.not53 = icmp eq ptr %.pre.i, null
  br i1 %.not53, label %bb.x, label %bb.w

bb.w:                                             ; preds = %rowSetEntryAlloc.exit.thread71, %rowSetEntryAlloc.exit
  %i.by = phi ptr [ %i.bt, %rowSetEntryAlloc.exit.thread71 ], [ %.pre.i, %rowSetEntryAlloc.exit ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bz = getelementptr inbounds nuw i8, ptr %.144.lcssa, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !2997 ; 2 uses
  %.not12.i58 = icmp eq ptr %i.ca, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  br i1 %.not12.i58, label %rowSetListToTree.exit66, label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %bb.w, %.lr.ph.i59
  %.014.i60 = phi i32 [ %i.cg, %.lr.ph.i59 ], [ 1, %bb.w ] ; 2 uses
  %.01013.i61 = phi ptr [ %i.cb, %.lr.ph.i59 ], [ %.144.lcssa, %bb.w ]
  %i.cb = phi ptr [ %.pr.i62, %.lr.ph.i59 ], [ %i.ca, %bb.w ] ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2997
  store ptr %i.cd, ptr %i.a, align 8, !tbaa !3000
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store ptr %.01013.i61, ptr %i.ce, align 8, !tbaa !3001
  %i.cf = call fastcc ptr @rowSetNDeepTree(ptr noundef %i.a, i32 noundef %.014.i60)
  store ptr %i.cf, ptr %i.cc, align 8, !tbaa !2997
  %i.cg = add nuw nsw i32 %.014.i60, 1
  %.pr.i62 = load ptr, ptr %i.a, align 8, !tbaa !3000 ; 2 uses
  %.not.i63 = icmp eq ptr %.pr.i62, null
  br i1 %.not.i63, label %rowSetListToTree.exit66, label %.lr.ph.i59, !llvm.loop !3002

rowSetListToTree.exit66:                          ; preds = %.lr.ph.i59, %bb.w
  %.010.lcssa.i65 = phi ptr [ %.144.lcssa, %bb.w ], [ %i.cb, %.lr.ph.i59 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %.010.lcssa.i65, ptr %i.ch, align 8, !tbaa !3001
  br label %bb.x

bb.x:                                             ; preds = %rowSetEntryAlloc.exit.thread, %.loopexit74, %rowSetEntryAlloc.exit, %rowSetListToTree.exit66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.ci = load i16, ptr %i.j, align 2, !tbaa !1939
  %i.cj = or i16 %i.ci, 1
  store i16 %i.cj, ptr %i.j, align 2, !tbaa !1939
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.b
  store i32 %1, ptr %i.e, align 4, !tbaa !2994
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.14290 = load ptr, ptr %i.ck, align 8, !tbaa !3000 ; 2 uses
  %.not5491 = icmp eq ptr %.14290, null
  br i1 %.not5491, label %.loopexit, label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.z, %._crit_edge89
  %.14292 = phi ptr [ %.142, %._crit_edge89 ], [ %.14290, %bb.z ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.14292, i64 16
  %.284 = load ptr, ptr %i.cl, align 8, !tbaa !3000 ; 2 uses
  %.not5585 = icmp eq ptr %.284, null
  br i1 %.not5585, label %._crit_edge89, label %.lr.ph88

.lr.ph88:                                         ; preds = %.lr.ph94, %bb.ab
  %.286 = phi ptr [ %.2, %bb.ab ], [ %.284, %.lr.ph94 ] ; 2 uses
  %i.cm = load i64, ptr %.286, align 8, !tbaa !2995 ; 2 uses
  %i.cn = icmp slt i64 %i.cm, %2
  br i1 %i.cn, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph88
  %i.co = icmp sgt i64 %i.cm, %2
  br i1 %i.co, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa, %.lr.ph88
  %.sink = phi i64 [ 8, %.lr.ph88 ], [ 16, %bb.aa ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.286, i64 %.sink
  %.2 = load ptr, ptr %i.cp, align 8, !tbaa !3000 ; 2 uses
  %.not55 = icmp eq ptr %.2, null
  br i1 %.not55, label %._crit_edge89, label %.lr.ph88, !llvm.loop !3004

._crit_edge89:                                    ; preds = %bb.ab, %.lr.ph94
  %i.cq = getelementptr inbounds nuw i8, ptr %.14292, i64 8
  %.142 = load ptr, ptr %i.cq, align 8, !tbaa !3000 ; 2 uses
  %.not54 = icmp eq ptr %.142, null
  br i1 %.not54, label %.loopexit, label %.lr.ph94, !llvm.loop !3005

.loopexit:                                        ; preds = %._crit_edge89, %bb.aa, %bb.z
  %.045 = phi i32 [ 0, %bb.z ], [ 1, %bb.aa ], [ 0, %._crit_edge89 ]
  ret i32 %.045
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @sqlite3VdbeFrameMemDel(ptr noundef initializes((8, 16)) %0) #17 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2405
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 272 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2402
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !2396
  store ptr %0, ptr %i.b, align 8, !tbaa !2402
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3PagerCloseWal(ptr noundef captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !595  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %.thread40

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store i32 0, ptr %i.b, align 4, !tbaa !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 3 uses
  %i.f = load i8, ptr %i.e, align 2, !tbaa !1968  ; 2 uses
  switch i8 %i.f, label %pagerLockDb.exit [
    i8 5, label %bb.c
    i8 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.h = load i8, ptr %i.g, align 1, !tbaa !1969
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !524  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !473
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1970
  %i.n = tail call i32 %i.m(ptr noundef nonnull %i.j, i32 noundef range(i32 1, 5) 1) #59, !inline_history !3006 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %..thread_crit_edge.i, label %.thread38

.thread38:                                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  br label %bb.w

..thread_crit_edge.i:                             ; preds = %bb.d
  %.pre.i = load i8, ptr %i.e, align 2, !tbaa !1968
  br label %.thread.i

.thread.i:                                        ; preds = %..thread_crit_edge.i, %bb.c
  %i.p = phi i8 [ %.pre.i, %..thread_crit_edge.i ], [ %i.f, %bb.c ]
  %.not43 = icmp eq i8 %i.p, 5
  br i1 %.not43, label %pagerLockDb.exit, label %bb.e

bb.e:                                             ; preds = %.thread.i
  store i8 1, ptr %i.e, align 2, !tbaa !1968
  br label %pagerLockDb.exit

pagerLockDb.exit:                                 ; preds = %bb.b, %.thread.i, %bb.e
  %i.q = load ptr, ptr %0, align 8, !tbaa !1310   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2083
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1532
  %i.v = call i32 %i.u(ptr noundef %i.q, ptr noundef %i.s, i32 noundef 0, ptr noundef nonnull %i.b) #59, !inline_history !2030 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  %i.x = load i32, ptr %i.b, align 4
  %i.y = icmp ne i32 %i.x, 0
  %or.cond = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %pagerLockDb.exit
  %i.z = call fastcc i32 @pagerOpenWal(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %pagerLockDb.exit, %bb.f
  %.1 = phi i32 [ %i.z, %bb.f ], [ %i.v, %pagerLockDb.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  %i.aa = icmp eq i32 %.1, 0
  br i1 %i.aa, label %bb.h, label %bb.w

bb.h:                                             ; preds = %bb.g
  %.pr = load ptr, ptr %i.c, align 8, !tbaa !595  ; 2 uses
  %.not26 = icmp eq ptr %.pr, null
  br i1 %.not26, label %bb.w, label %.thread40

.thread40:                                        ; preds = %bb.a, %bb.h
  %i.ab = phi ptr [ %i.d, %bb.a ], [ %.pr, %bb.h ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 6 uses
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !1968 ; 3 uses
  %i.ae = zext i8 %i.ad to i32
  switch i8 %i.ad, label %bb.o [
    i8 5, label %bb.i
    i8 3, label %bb.i
    i8 2, label %bb.i
    i8 1, label %bb.i
    i8 0, label %bb.i
  ]

bb.i:                                             ; preds = %.thread40, %.thread40, %.thread40, %.thread40, %.thread40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !1969
  %.not.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i, label %bb.j, label %.thread.i.i

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !524 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !473
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1970
  %i.am = call i32 %i.al(ptr noundef nonnull %i.ai, i32 noundef range(i32 1, 5) 4) #59, !inline_history !2262 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %..thread.i.i_crit_edge, label %pagerLockDb.exit.i

..thread.i.i_crit_edge:                           ; preds = %bb.j
  %.pre.pre = load ptr, ptr %i.c, align 8, !tbaa !595
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %..thread.i.i_crit_edge, %bb.i
  %.pre = phi ptr [ %.pre.pre, %..thread.i.i_crit_edge ], [ %i.ab, %bb.i ]
  store i8 4, ptr %i.ac, align 2, !tbaa !1968
  br label %bb.o

pagerLockDb.exit.i:                               ; preds = %bb.j
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !524 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !473 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.ap, null
  br i1 %.not.i5.i, label %pagerExclusiveLock.exit, label %bb.k

bb.k:                                             ; preds = %pagerLockDb.exit.i
  %i.aq = load i8, ptr %i.af, align 1, !tbaa !1969
  %.not9.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not9.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2081
  %i.at = call i32 %i.as(ptr noundef nonnull %i.ao, i32 noundef range(i32 0, 256) %i.ae) #59, !inline_history !2263 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.au = load i8, ptr %i.ac, align 2, !tbaa !1968
  %.not10.i.i = icmp eq i8 %i.au, 5
  br i1 %.not10.i.i, label %pagerExclusiveLock.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 %i.ad, ptr %i.ac, align 2, !tbaa !1968
  br label %pagerExclusiveLock.exit

pagerExclusiveLock.exit:                          ; preds = %pagerLockDb.exit.i, %bb.m, %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !666
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !2064
  br label %bb.w

bb.o:                                             ; preds = %.thread.i.i, %.thread40
  %i.ay = phi ptr [ %.pre, %.thread.i.i ], [ %i.ab, %.thread40 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !2303
  %i.bb = zext i8 %i.ba to i32
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !79
  %i.be = trunc i64 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !2053
  %i.bh = call fastcc i32 @sqlite3WalClose(ptr noundef %i.ay, ptr noundef %1, i32 noundef %i.bb, i32 noundef %i.be, ptr noundef %i.bg) ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !595
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !524 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !473 ; 3 uses
  %.not.i29 = icmp eq ptr %i.bk, null
  br i1 %.not.i29, label %pagerFixMaplimit.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !1520
  %i.bm = icmp sgt i32 %i.bl, 2
  br i1 %i.bm, label %sqlite3OsFileControlHint.exit.i, label %pagerFixMaplimit.exit

sqlite3OsFileControlHint.exit.i:                  ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !2055 ; 2 uses
  store i64 %i.bo, ptr %i.a, align 8, !tbaa !18
  %i.bp = icmp sgt i64 %i.bo, 0                   ; 2 uses
  %i.bq = zext i1 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !739
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !678
  %.not.i.i30 = icmp eq i32 %i.bt, 0
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 272
  %getPageMMap.getPageNormal.i = select i1 %i.bp, ptr @getPageMMap, ptr @getPageNormal
  %getPageError.sink.i = select i1 %.not.i.i30, ptr %getPageMMap.getPageNormal.i, ptr @getPageError
  store ptr %getPageError.sink.i, ptr %i.bu, align 8, !tbaa !514
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !729
  %i.bx = call i32 %i.bw(ptr noundef nonnull %i.bj, i32 noundef 18, ptr noundef nonnull %i.a) #59, !inline_history !2056 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %pagerFixMaplimit.exit

pagerFixMaplimit.exit:                            ; preds = %bb.o, %bb.p, %sqlite3OsFileControlHint.exit.i
  %.not27 = icmp eq i32 %i.bh, 0
  br i1 %.not27, label %bb.w, label %bb.q

bb.q:                                             ; preds = %pagerFixMaplimit.exit
end_hunk_7
begin_hunk_8_@resolveP2Values:bb.a
  %i.s = load i32, ptr %i.r, align 8, !tbaa !585
  %.not37 = icmp eq i32 %i.s, 0
  br i1 %.not37, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i16, ptr %i.f, align 8
  %i.u = and i16 %i.t, -65
  store i16 %i.u, ptr %i.f, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.c
  %i.v = load i16, ptr %i.f, align 8
  %i.w = or i16 %i.v, 128
  store i16 %i.w, ptr %i.f, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.g, %bb.b
  br label %bb.b

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.x = load i16, ptr %i.f, align 8
  %i.y = and i16 %i.x, -193
  %i.z = or disjoint i16 %i.y, 128
  store i16 %i.z, ptr %i.f, align 8
  br label %.backedge

bb.h:                                             ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %.pn, i64 -16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !585
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 %.0.ph)
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.h, %bb.j, %.loopexit
  %.0.ph.be = phi i32 [ %.2, %.loopexit ], [ %.2, %bb.j ], [ %spec.select, %bb.h ]
  br label %.outer

bb.i:                                             ; preds = %bb.c
  %i.ac = getelementptr i8, ptr %.pn, i64 -44
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !584
  %spec.select38 = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 %.0.ph)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.i
  %.2 = phi i32 [ %spec.select38, %bb.i ], [ %.0.ph, %bb.c ] ; 2 uses
  %i.ae = getelementptr i8, ptr %.pn, i64 -16     ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !585 ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.j, label %.outer.backedge

bb.j:                                             ; preds = %.loopexit
  %i.ah = xor i32 %i.af, -1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !5
  store i32 %i.ak, ptr %i.ae, align 8, !tbaa !585
  br label %.outer.backedge

bb.k:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %0, align 8, !tbaa !146
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !1007
  tail call fastcc void @sqlite3DbNNFreeNN(ptr noundef %i.al, ptr noundef %i.am)
  store ptr null, ptr %i.d, align 8, !tbaa !1007
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 0, ptr %i.an, align 8, !tbaa !3296
  store i32 %.0.ph, ptr %1, align 4, !tbaa !5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @accessPayloadChecked(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !837
  %i.b = icmp eq i8 %i.a, 1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @btreeRestoreCursorPosition(ptr noundef nonnull %0) ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc i32 @accessPayload(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 4, %bb.a ], [ %i.d, %bb.c ], [ %i.c, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @sqlite3ReadSchema(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !651    ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 197
  %i.c = load i8, ptr %i.b, align 1, !tbaa !535
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 44 ; 5 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !695
  %i.g = and i32 %i.f, 1
  %.not.i = icmp eq i32 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !101  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 113
  %i.m = load i8, ptr %i.l, align 1, !tbaa !954
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  store i8 %i.m, ptr %i.n, align 4, !tbaa !844
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 114
  %i.p = load i16, ptr %i.o, align 2, !tbaa !693
  %i.q = and i16 %i.p, 1
  %.not23.i = icmp eq i16 %i.q, 0
  br i1 %.not23.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = tail call fastcc i32 @sqlite3InitOne(ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef nonnull %i.d, i32 noundef 0), !inline_history !1306 ; 2 uses
  %.not24.i = icmp eq i32 %i.r, 0
  br i1 %.not24.i, label %bb.d, label %sqlite3Init.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !60   ; 2 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.v = zext nneg i32 %i.t to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ %i.v, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !61
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %indvars.iv.next
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !101
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 114
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !693
  %i.ac = and i16 %i.ab, 1
  %.not25.i = icmp eq i16 %i.ac, 0
  br i1 %.not25.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ad = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ae = tail call fastcc i32 @sqlite3InitOne(ptr noundef nonnull %i.a, i32 noundef %i.ad, ptr noundef nonnull %i.d, i32 noundef 0), !inline_history !1306 ; 2 uses
  %.not26.i = icmp eq i32 %i.ae, 0
  br i1 %.not26.i, label %bb.f, label %sqlite3Init.exit

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.af = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !956

._crit_edge:                                      ; preds = %bb.f, %bb.d
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.ag = load i32, ptr %i.e, align 4, !tbaa !695
  %i.ah = and i32 %i.ag, -2
  store i32 %i.ah, ptr %i.e, align 4, !tbaa !695
  br label %bb.h

sqlite3Init.exit:                                 ; preds = %bb.e, %bb.c
  %.0.i = phi i32 [ %i.r, %bb.c ], [ %i.ae, %bb.e ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i, ptr %i.ai, align 8, !tbaa !302
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !313
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !313
  br label %bb.j

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 111
  %i.an = load i8, ptr %i.am, align 1, !tbaa !59
  %.not12 = icmp eq i8 %i.an, 0
  br i1 %.not12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load i32, ptr %i.e, align 4, !tbaa !695
  %i.ap = or i32 %i.ao, 16
  store i32 %i.ap, ptr %i.e, align 4, !tbaa !695
  br label %bb.j

bb.j:                                             ; preds = %sqlite3Init.exit, %bb.i, %bb.h, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %.0.i, %sqlite3Init.exit ], [ 0, %bb.i ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @sqlite3PragmaVtabRegister(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 7
  br label %.split.i

.split.i:                                         ; preds = %bb.a, %sqlite3_stricmp.exit.thread18.loopexit.i
  %.027.i = phi i32 [ %.1.i, %sqlite3_stricmp.exit.thread18.loopexit.i ], [ 65, %bb.a ] ; 2 uses
  %.01426.i = phi i32 [ %.115.i, %sqlite3_stricmp.exit.thread18.loopexit.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = add nuw nsw i32 %.01426.i, %.027.i
  %i.c = lshr i32 %i.b, 1                         ; 3 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [24 x i8], ptr @aPragmaName, i64 %i.d ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3297
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d, %.split.i
  %.013.i.i.i = phi ptr [ %i.r, %bb.d ], [ %i.f, %.split.i ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.a, %.split.i ] ; 2 uses
  %i.g = load i8, ptr %.0.i.i.i, align 1, !tbaa !227 ; 3 uses
  %i.h = load i8, ptr %.013.i.i.i, align 1, !tbaa !227 ; 2 uses
  %i.i = icmp eq i8 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.i.i
  %i.j = icmp eq i8 %i.g, 0
  br i1 %i.j, label %pragmaLocate.exit, label %bb.d

bb.c:                                             ; preds = %.preheader.i.i
  %i.k = zext i8 %i.g to i64
  %i.l = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !227   ; 2 uses
  %i.n = zext i8 %i.h to i64
  %i.o = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !227   ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.m, %i.p
  br i1 %.not.i.i.i, label %bb.d, label %sqlite3_stricmp.exit.thread18.loopexit.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 1
  br label %.preheader.i.i

sqlite3_stricmp.exit.thread18.loopexit.i:         ; preds = %bb.c
  %i.s = icmp ult i8 %i.m, %i.p                   ; 2 uses
  %i.t = add nsw i32 %i.c, -1
  %i.u = add nuw nsw i32 %i.c, 1
  %.115.i = select i1 %i.s, i32 %.01426.i, i32 %i.u ; 2 uses
  %.1.i = select i1 %i.s, i32 %i.t, i32 %.027.i   ; 2 uses
  %.not.i = icmp sgt i32 %.115.i, %.1.i
  br i1 %.not.i, label %pragmaLocate.exit.thread, label %.split.i, !llvm.loop !3299

pragmaLocate.exit:                                ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.w = load i8, ptr %i.v, align 1, !tbaa !3300
  %i.x = and i8 %i.w, 48
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %pragmaLocate.exit.thread, label %bb.e

bb.e:                                             ; preds = %pragmaLocate.exit
  %i.z = tail call fastcc ptr @sqlite3VtabCreateModule(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @pragmaVtabModule, ptr noundef nonnull %i.e, ptr noundef null)
  br label %pragmaLocate.exit.thread

pragmaLocate.exit.thread:                         ; preds = %sqlite3_stricmp.exit.thread18.loopexit.i, %pragmaLocate.exit, %bb.e
  %.0 = phi ptr [ %i.z, %bb.e ], [ null, %pragmaLocate.exit ], [ null, %sqlite3_stricmp.exit.thread18.loopexit.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @sqlite3JsonVtabRegister(ptr noundef %0, ptr noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.013.i = phi ptr [ %1, %bb.a ], [ %i.l, %bb.e ] ; 2 uses
  %.0.i = phi ptr [ @.str.609, %bb.a ], [ %i.k, %bb.e ] ; 2 uses
  %i.a = load i8, ptr %.0.i, align 1, !tbaa !227  ; 3 uses
  %i.b = load i8, ptr %.013.i, align 1, !tbaa !227 ; 2 uses
  %i.c = icmp eq i8 %i.a, %i.b
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i8 %i.a, 0
  br i1 %i.d, label %sqlite3StrICmp.exit.thread, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = zext i8 %i.a to i64
  %i.f = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !227
  %i.h = zext i8 %i.b to i64
  %i.i = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !227
  %.not.i = icmp eq i8 %i.g, %i.j
  br i1 %.not.i, label %bb.e, label %sqlite3StrICmp.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %.013.i, i64 1
  br label %bb.b

sqlite3StrICmp.exit.thread:                       ; preds = %bb.c, %bb.g, %bb.j, %bb.m
  %.lcssa10 = phi ptr [ @.str.610, %bb.g ], [ @.str.611, %bb.j ], [ @.str.612, %bb.m ], [ @.str.609, %bb.c ]
  %i.m = tail call fastcc ptr @sqlite3VtabCreateModule(ptr noundef %0, ptr noundef nonnull %.lcssa10, ptr noundef nonnull @jsonEachModule, ptr noundef null, ptr noundef null)
  br label %.loopexit

sqlite3StrICmp.exit:                              ; preds = %bb.d, %bb.h
  %.013.i.1 = phi ptr [ %i.y, %bb.h ], [ %1, %bb.d ] ; 2 uses
  %.0.i.1 = phi ptr [ %i.x, %bb.h ], [ @.str.610, %bb.d ] ; 2 uses
  %i.n = load i8, ptr %.0.i.1, align 1, !tbaa !227 ; 3 uses
  %i.o = load i8, ptr %.013.i.1, align 1, !tbaa !227 ; 2 uses
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %sqlite3StrICmp.exit
  %i.q = zext i8 %i.n to i64
  %i.r = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !227
  %i.t = zext i8 %i.o to i64
  %i.u = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !227
  %.not.i.1 = icmp eq i8 %i.s, %i.v
  br i1 %.not.i.1, label %bb.h, label %sqlite3StrICmp.exit.1

bb.g:                                             ; preds = %sqlite3StrICmp.exit
  %i.w = icmp eq i8 %i.n, 0
  br i1 %i.w, label %sqlite3StrICmp.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.1, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.1, i64 1
  br label %sqlite3StrICmp.exit

sqlite3StrICmp.exit.1:                            ; preds = %bb.f, %bb.k
  %.013.i.2 = phi ptr [ %i.ak, %bb.k ], [ %1, %bb.f ] ; 2 uses
  %.0.i.2 = phi ptr [ %i.aj, %bb.k ], [ @.str.611, %bb.f ] ; 2 uses
  %i.z = load i8, ptr %.0.i.2, align 1, !tbaa !227 ; 3 uses
  %i.aa = load i8, ptr %.013.i.2, align 1, !tbaa !227 ; 2 uses
  %i.ab = icmp eq i8 %i.z, %i.aa
  br i1 %i.ab, label %bb.j, label %bb.i

bb.i:                                             ; preds = %sqlite3StrICmp.exit.1
  %i.ac = zext i8 %i.z to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !227
  %i.af = zext i8 %i.aa to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !227
  %.not.i.2 = icmp eq i8 %i.ae, %i.ah
  br i1 %.not.i.2, label %bb.k, label %sqlite3StrICmp.exit.2

bb.j:                                             ; preds = %sqlite3StrICmp.exit.1
  %i.ai = icmp eq i8 %i.z, 0
  br i1 %i.ai, label %sqlite3StrICmp.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.2, i64 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.2, i64 1
  br label %sqlite3StrICmp.exit.1

sqlite3StrICmp.exit.2:                            ; preds = %bb.i, %bb.n
  %.013.i.3 = phi ptr [ %i.aw, %bb.n ], [ %1, %bb.i ] ; 2 uses
  %.0.i.3 = phi ptr [ %i.av, %bb.n ], [ @.str.612, %bb.i ] ; 2 uses
  %i.al = load i8, ptr %.0.i.3, align 1, !tbaa !227 ; 3 uses
  %i.am = load i8, ptr %.013.i.3, align 1, !tbaa !227 ; 2 uses
  %i.an = icmp eq i8 %i.al, %i.am
  br i1 %i.an, label %bb.m, label %bb.l

bb.l:                                             ; preds = %sqlite3StrICmp.exit.2
  %i.ao = zext i8 %i.al to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !227
  %i.ar = zext i8 %i.am to i64
  %i.as = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !227
  %.not.i.3 = icmp eq i8 %i.aq, %i.at
  br i1 %.not.i.3, label %bb.n, label %.loopexit

bb.m:                                             ; preds = %sqlite3StrICmp.exit.2
  %i.au = icmp eq i8 %i.al, 0
  br i1 %i.au, label %sqlite3StrICmp.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.3, i64 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.013.i.3, i64 1
  br label %sqlite3StrICmp.exit.2

.loopexit:                                        ; preds = %bb.l, %sqlite3StrICmp.exit.thread
  %.06 = phi ptr [ %i.m, %sqlite3StrICmp.exit.thread ], [ null, %bb.l ]
  ret ptr %.06
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @sqlite3VtabCreateModule(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %sqlite3Strlen30.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #60
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1073741823
  br label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %narrow = add nuw nsw i32 %.0.i, 49
  %i.f = zext nneg i32 %narrow to i64
  %i.g = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.f) ; 9 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %sqlite3OomFault.exit

bb.d:                                             ; preds = %sqlite3Strlen30.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !550
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.e, label %sqlite3VtabModuleUnref.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load i8, ptr %i.k, align 8, !tbaa !551
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.f, label %sqlite3VtabModuleUnref.exit

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.h, align 1, !tbaa !550
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.o = load i32, ptr %i.n, align 4, !tbaa !552
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 424
  store atomic volatile i32 1, ptr %i.q monotonic, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !553
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !553
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 436
  store i16 0, ptr %i.u, align 4, !tbaa !554
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !301  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %sqlite3VtabModuleUnref.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.w, ptr noundef nonnull @.str.133), !inline_history !555
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !301  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i32 7, ptr %i.y, align 8, !tbaa !302
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  %.018.i = load ptr, ptr %.0.in17.i, align 8, !tbaa !556 ; 2 uses
  %.not1619.i = icmp eq ptr %.018.i, null
  br i1 %.not1619.i, label %sqlite3VtabModuleUnref.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.020.i = phi ptr [ %.0.i44, %.lr.ph.i ], [ %.018.i, %bb.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.020.i, i64 52 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !313
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !313
  %i.ac = getelementptr inbounds nuw i8, ptr %.020.i, i64 24
  store i32 7, ptr %i.ac, align 8, !tbaa !302
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 216
  %.0.i44 = load ptr, ptr %.0.in.i, align 8, !tbaa !556 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i44, null
  br i1 %.not16.i, label %sqlite3VtabModuleUnref.exit, label %.lr.ph.i, !llvm.loop !557

sqlite3OomFault.exit:                             ; preds = %sqlite3Strlen30.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  %i.ae = add nuw nsw i32 %.0.i, 1
  %i.af = zext nneg i32 %i.ae to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.af, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !967
  store ptr %2, ptr %i.g, align 8, !tbaa !964
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %3, ptr %i.ah, align 8, !tbaa !710
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %4, ptr %i.ai, align 8, !tbaa !709
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr null, ptr %i.aj, align 8, !tbaa !787
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 1, ptr %i.ak, align 8, !tbaa !707
  br label %bb.j

bb.j:                                             ; preds = %sqlite3OomFault.exit, %bb.a
  %.038 = phi ptr [ %i.g, %sqlite3OomFault.exit ], [ null, %bb.a ] ; 6 uses
  %.137 = phi ptr [ %i.ad, %sqlite3OomFault.exit ], [ %1, %bb.a ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.am = tail call fastcc ptr @sqlite3HashInsert(ptr noundef nonnull %i.al, ptr noundef %.137, ptr noundef %.038) ; 7 uses
  %.not43 = icmp eq ptr %i.am, null
  br i1 %.not43, label %sqlite3VtabModuleUnref.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = icmp eq ptr %i.am, %.038
  br i1 %i.an, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !550
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.m, label %sqlite3VtabModuleUnref.exit.sink.split

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !551
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.n, label %sqlite3VtabModuleUnref.exit.sink.split

bb.n:                                             ; preds = %bb.m
  store i8 1, ptr %i.ao, align 1, !tbaa !550
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.av = load i32, ptr %i.au, align 4, !tbaa !552
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 424
  store atomic volatile i32 1, ptr %i.ax monotonic, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !553
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !553
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 436
  store i16 0, ptr %i.bb, align 4, !tbaa !554
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !301 ; 2 uses
  %.not.i45 = icmp eq ptr %i.bd, null
  br i1 %.not.i45, label %sqlite3VtabModuleUnref.exit.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.bd, ptr noundef nonnull @.str.133), !inline_history !555
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !301 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i32 7, ptr %i.bf, align 8, !tbaa !302
  %.0.in17.i46 = getelementptr inbounds nuw i8, ptr %i.be, i64 216
  %.018.i47 = load ptr, ptr %.0.in17.i46, align 8, !tbaa !556 ; 2 uses
  %.not1619.i48 = icmp eq ptr %.018.i47, null
  br i1 %.not1619.i48, label %sqlite3VtabModuleUnref.exit.sink.split, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %bb.q, %.lr.ph.i49
  %.020.i50 = phi ptr [ %.0.i52, %.lr.ph.i49 ], [ %.018.i47, %bb.q ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.020.i50, i64 52 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !313
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !313
  %i.bj = getelementptr inbounds nuw i8, ptr %.020.i50, i64 24
  store i32 7, ptr %i.bj, align 8, !tbaa !302
  %.0.in.i51 = getelementptr inbounds nuw i8, ptr %.020.i50, i64 216
  %.0.i52 = load ptr, ptr %.0.in.i51, align 8, !tbaa !556 ; 2 uses
  %.not16.i53 = icmp eq ptr %.0.i52, null
  br i1 %.not16.i53, label %sqlite3VtabModuleUnref.exit.sink.split, label %.lr.ph.i49, !llvm.loop !557

bb.r:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 40 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !787 ; 4 uses
  %.not.i56 = icmp eq ptr %i.bl, null
  br i1 %.not.i56, label %sqlite3VtabEponymousTableClear.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !788
  %i.bo = or i32 %i.bn, 16384
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !788
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !98
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 44 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !118
  %i.bu = add i32 %i.bt, -1                       ; 2 uses
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !118
  %.not5.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not5.i.i, label %bb.u, label %sqlite3DeleteTable.exit.i

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call fastcc void @deleteTable(ptr noundef nonnull %0, ptr noundef nonnull %i.bl), !inline_history !124
  br label %sqlite3DeleteTable.exit.i

sqlite3DeleteTable.exit.i:                        ; preds = %bb.u, %bb.t
  store ptr null, ptr %i.bk, align 8, !tbaa !787
end_hunk_8
begin_hunk_9_@sqlite3TableAffinity:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !184
  %i.br = load i32, ptr %i.aw, align 8, !tbaa !185
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr [24 x i8], ptr %i.bq, i64 %i.bs ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 -23
  store i8 -5, ptr %i.bu, align 1, !tbaa !566
  %i.bv = getelementptr i8, ptr %i.bt, i64 -8
  store ptr %1, ptr %i.bv, align 8, !tbaa !227
  br label %sqlite3VdbeAddOp3.exit

bb.k:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !3471 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 3 uses
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !881
  %i.cb = sext i16 %i.ca to i64
  %i.cc = add nsw i64 %i.cb, 1
  %i.cd = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.cc), !inline_history !608 ; 7 uses
  %.not.i46 = icmp eq ptr %i.cd, null
  br i1 %.not.i46, label %sqlite3TableAffinityStr.exit, label %.preheader1.i

.preheader1.i:                                    ; preds = %bb.l
  %i.ce = load i16, ptr %i.bz, align 2, !tbaa !881 ; 2 uses
  %i.cf = icmp sgt i16 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %.preheader1.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.m

.preheader.loopexit.i:                            ; preds = %bb.o
  %i.ch = sext i32 %.1.i to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader1.i
  %.0.lcssa.i = phi i64 [ 0, %.preheader1.i ], [ %i.ch, %.preheader.loopexit.i ] ; 3 uses
  %i.ci = getelementptr inbounds i8, ptr %i.cd, i64 %.0.lcssa.i
  store i8 0, ptr %i.ci, align 1, !tbaa !227
  %i.cj = icmp sgt i64 %.0.lcssa.i, 0
  br i1 %i.cj, label %.lr.ph, label %._crit_edge

bb.m:                                             ; preds = %bb.o, %.lr.ph.i
  %i.ck = phi i16 [ %i.ce, %.lr.ph.i ], [ %i.cw, %bb.o ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.o ] ; 2 uses
  %.03.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.o ] ; 3 uses
  %i.cl = load ptr, ptr %i.cg, align 8, !tbaa !882
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %indvars.iv.i ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 14
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !883
  %i.cp = and i16 %i.co, 32
  %i.cq = icmp eq i16 %i.cp, 0
  br i1 %i.cq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 9
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !905
  %i.ct = add nsw i32 %.03.i, 1
  %i.cu = sext i32 %.03.i to i64
  %i.cv = getelementptr inbounds i8, ptr %i.cd, i64 %i.cu
  store i8 %i.cs, ptr %i.cv, align 1, !tbaa !227
  %.pre.i = load i16, ptr %i.bz, align 2, !tbaa !881
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cw = phi i16 [ %.pre.i, %bb.n ], [ %i.ck, %bb.m ] ; 2 uses
  %.1.i = phi i32 [ %i.ct, %bb.n ], [ %.03.i, %bb.m ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cx = sext i16 %i.cw to i64
  %i.cy = icmp slt i64 %indvars.iv.next.i, %i.cx
  br i1 %i.cy, label %bb.m, label %.preheader.loopexit.i, !llvm.loop !4075

bb.p:                                             ; preds = %.lr.ph
  %i.cz = getelementptr inbounds i8, ptr %i.cd, i64 %indvars.iv.next6.i
  store i8 0, ptr %i.cz, align 1, !tbaa !227
  %i.da = icmp sgt i64 %indvars.iv5.i65, 1
  br i1 %i.da, label %.lr.ph, label %._crit_edge, !llvm.loop !4076

.lr.ph:                                           ; preds = %.preheader.i, %bb.p
  %indvars.iv5.i65 = phi i64 [ %indvars.iv.next6.i, %bb.p ], [ %.0.lcssa.i, %.preheader.i ] ; 2 uses
  %indvars.iv.next6.i = add nsw i64 %indvars.iv5.i65, -1 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv.next6.i
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !227
  %i.dd = icmp slt i8 %i.dc, 66
  br i1 %i.dd, label %bb.p, label %._crit_edge66, !llvm.loop !4076

sqlite3TableAffinityStr.exit:                     ; preds = %bb.l
  %.val = load ptr, ptr %0, align 8, !tbaa !146   ; 7 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val, i64 103 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !550
  %i.dg = icmp eq i8 %i.df, 0
  br i1 %i.dg, label %bb.q, label %sqlite3VdbeAddOp3.exit

bb.q:                                             ; preds = %sqlite3TableAffinityStr.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !551
  %i.dj = icmp eq i8 %i.di, 0
  br i1 %i.dj, label %bb.r, label %sqlite3VdbeAddOp3.exit

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %i.de, align 1, !tbaa !550
  %i.dk = getelementptr inbounds nuw i8, ptr %.val, i64 220
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !552
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dn = getelementptr inbounds nuw i8, ptr %.val, i64 424
  store atomic volatile i32 1, ptr %i.dn monotonic, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.do = getelementptr inbounds nuw i8, ptr %.val, i64 432 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !553
  %i.dq = add i32 %i.dp, 1
  store i32 %i.dq, ptr %i.do, align 8, !tbaa !553
  %i.dr = getelementptr inbounds nuw i8, ptr %.val, i64 436
  store i16 0, ptr %i.dr, align 4, !tbaa !554
  %i.ds = getelementptr inbounds nuw i8, ptr %.val, i64 344 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !301 ; 2 uses
  %.not.i47 = icmp eq ptr %i.dt, null
  br i1 %.not.i47, label %sqlite3VdbeAddOp3.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.dt, ptr noundef nonnull @.str.133), !inline_history !555
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !301 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store i32 7, ptr %i.dv, align 8, !tbaa !302
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.du, i64 216
  %.018.i = load ptr, ptr %.0.in17.i, align 8, !tbaa !556 ; 2 uses
  %.not1619.i = icmp eq ptr %.018.i, null
  br i1 %.not1619.i, label %sqlite3VdbeAddOp3.exit, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %bb.u, %.lr.ph.i48
  %.020.i = phi ptr [ %.0.i49, %.lr.ph.i48 ], [ %.018.i, %bb.u ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.020.i, i64 52 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !313
  %i.dy = add nsw i32 %i.dx, 1
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !313
  %i.dz = getelementptr inbounds nuw i8, ptr %.020.i, i64 24
  store i32 7, ptr %i.dz, align 8, !tbaa !302
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 216
  %.0.i49 = load ptr, ptr %.0.in.i, align 8, !tbaa !556 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i49, null
  br i1 %.not16.i, label %sqlite3VdbeAddOp3.exit, label %.lr.ph.i48, !llvm.loop !557

._crit_edge66:                                    ; preds = %.lr.ph
  br label %._crit_edge, !llvm.loop !4076

._crit_edge:                                      ; preds = %bb.p, %._crit_edge66, %.preheader.i
  store ptr %i.cd, ptr %i.bw, align 8, !tbaa !3471
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.k
  %.0 = phi ptr [ %i.cd, %._crit_edge ], [ %i.bx, %bb.k ] ; 4 uses
  %i.ea = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0) #60
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = and i32 %i.eb, 1073741823               ; 5 uses
  %.not39 = icmp eq i32 %i.ec, 0
  br i1 %.not39, label %sqlite3VdbeAddOp3.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not40 = icmp eq i32 %2, 0
  br i1 %.not40, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ed = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %0, i32 noundef 97, i32 noundef %2, i32 noundef %i.ec, i32 noundef 0, ptr noundef nonnull %.0, i32 noundef %i.ec) ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.y:                                             ; preds = %bb.w
  %i.ee = load ptr, ptr %0, align 8, !tbaa !146   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 103
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !550
  %.not.i50 = icmp eq i8 %i.eg, 0
  br i1 %.not.i50, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @freeP4(ptr noundef nonnull %i.ee, i32 noundef %i.ec, ptr noundef nonnull %.0), !inline_history !948
  br label %sqlite3VdbeAddOp3.exit

bb.aa:                                            ; preds = %bb.y
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !185
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !184
  %i.el = sext i32 %i.ei to i64
  %i.em = getelementptr [24 x i8], ptr %i.ek, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 -24
  tail call fastcc void @vdbeChangeP4Full(ptr noundef nonnull readonly %0, ptr noundef %i.en, ptr noundef nonnull %.0, i32 noundef %i.ec), !inline_history !948
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %.lr.ph.i48, %bb.aa, %bb.z, %bb.u, %bb.t, %bb.q, %sqlite3TableAffinityStr.exit, %bb.j, %sqlite3VdbeAddOp2.exit, %bb.f, %bb.e, %bb.v, %bb.x
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @createTableStmt(ptr noundef %0, ptr noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 4 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !881  ; 6 uses
  %i.e = icmp sgt i16 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !882  ; 2 uses
  %i.g = icmp eq i16 %i.d, 1
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %i.h = and i16 %i.d, 32766
  %unroll_iter = zext nneg i16 %i.h to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %identLength.exit.1, %.lr.ph.preheader.new
  %.04364 = phi ptr [ %i.f, %.lr.ph.preheader.new ], [ %i.v, %identLength.exit.1 ] ; 3 uses
  %.05062 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.u, %identLength.exit.1 ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %identLength.exit.1 ]
  %i.i = load ptr, ptr %.04364, align 8, !tbaa !929
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph
  %.05.i = phi ptr [ %i.i, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %.0.i = phi i64 [ 0, %.lr.ph ], [ %i.l, %bb.d ] ; 3 uses
  %i.j = load i8, ptr %.05.i, align 1, !tbaa !227
  switch i8 %i.j, label %bb.d [
    i8 0, label %identLength.exit
    i8 34, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i64 %.0.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi i64 [ %i.k, %bb.c ], [ %.0.i, %bb.b ]
  %i.l = add nsw i64 %.1.i, 1
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i, i64 1
  br label %bb.b, !llvm.loop !4077

identLength.exit:                                 ; preds = %bb.b
  %i.n = add i64 %.05062, 7
  %i.o = add i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %.04364, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !929
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %identLength.exit
  %.05.i.1 = phi ptr [ %i.q, %identLength.exit ], [ %i.x, %bb.g ] ; 2 uses
  %.0.i.1 = phi i64 [ 0, %identLength.exit ], [ %i.w, %bb.g ] ; 3 uses
  %i.r = load i8, ptr %.05.i.1, align 1, !tbaa !227
  switch i8 %i.r, label %bb.g [
    i8 0, label %identLength.exit.1
    i8 34, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = add nsw i64 %.0.i.1, 1
  br label %bb.g

identLength.exit.1:                               ; preds = %bb.e
  %i.t = add i64 %i.o, 7
  %i.u = add i64 %i.t, %.0.i.1                    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.04364, i64 32 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !4078

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.1 = phi i64 [ %i.s, %bb.f ], [ %.0.i.1, %bb.e ]
  %i.w = add nsw i64 %.1.i.1, 1
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.1, i64 1
  br label %bb.e, !llvm.loop !4077

._crit_edge.loopexit.unr-lcssa:                   ; preds = %identLength.exit.1
  %i.y = and i16 %i.d, 1
  %lcmp.mod.not = icmp eq i16 %i.y, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.04364.epil.init = phi ptr [ %i.f, %.lr.ph.preheader ], [ %i.v, %._crit_edge.loopexit.unr-lcssa ]
  %.05062.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.u, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod82 = trunc i16 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.z = load ptr, ptr %.04364.epil.init, align 8, !tbaa !929
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.epil.preheader
  %.05.i.epil = phi ptr [ %i.z, %.lr.ph.epil.preheader ], [ %i.af, %bb.j ] ; 2 uses
  %.0.i.epil = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %i.ae, %bb.j ] ; 3 uses
  %i.aa = load i8, ptr %.05.i.epil, align 1, !tbaa !227
  switch i8 %i.aa, label %bb.j [
    i8 0, label %identLength.exit.epil
    i8 34, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ab = add nsw i64 %.0.i.epil, 1
  br label %bb.j

identLength.exit.epil:                            ; preds = %bb.h
  %i.ac = add i64 %.05062.epil.init, 7
  %i.ad = add i64 %i.ac, %.0.i.epil
  br label %._crit_edge.loopexit

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.i.epil = phi i64 [ %i.ab, %bb.i ], [ %.0.i.epil, %bb.h ]
  %i.ae = add nsw i64 %.1.i.epil, 1
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.epil, i64 1
  br label %bb.h, !llvm.loop !4077

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %identLength.exit.epil
  %.lcssa80 = phi i64 [ %i.u, %._crit_edge.loopexit.unr-lcssa ], [ %i.ad, %identLength.exit.epil ]
  %i.ag = add i64 %.lcssa80, 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.050.lcssa = phi i64 [ 2, %bb.a ], [ %i.ag, %._crit_edge.loopexit ]
  %i.ah = load ptr, ptr %1, align 8, !tbaa !947
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %._crit_edge
  %.05.i52 = phi ptr [ %i.ah, %._crit_edge ], [ %i.al, %bb.m ] ; 2 uses
  %.0.i53 = phi i64 [ 0, %._crit_edge ], [ %i.ak, %bb.m ] ; 3 uses
  %i.ai = load i8, ptr %.05.i52, align 1, !tbaa !227
  switch i8 %i.ai, label %bb.m [
    i8 0, label %identLength.exit55
    i8 34, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.aj = add nsw i64 %.0.i53, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.i54 = phi i64 [ %i.aj, %bb.l ], [ %.0.i53, %bb.k ]
  %i.ak = add nsw i64 %.1.i54, 1
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i52, i64 1
  br label %bb.k, !llvm.loop !4077

identLength.exit55:                               ; preds = %bb.k
  %i.am = add i64 %.050.lcssa, %.0.i53            ; 2 uses
  %i.an = icmp slt i64 %i.am, 50                  ; 6 uses
  %.str.797..str.799 = select i1 %i.an, ptr @.str.797, ptr @.str.799
  %.str.141..str.800 = select i1 %i.an, ptr @.str.141, ptr @.str.800
  %i.ao = sext i16 %i.d to i64
  %i.ap = mul nsw i64 %i.ao, 6
  %i.aq = add nsw i64 %i.ap, 35
  %i.ar = add nsw i64 %i.aq, %i.am
  %i.as = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.ar), !inline_history !608 ; 12 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.n, label %bb.t

bb.n:                                             ; preds = %identLength.exit55
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !550
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.o, label %sqlite3OomFault.exit

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !551
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %bb.p, label %sqlite3OomFault.exit

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.au, align 1, !tbaa !550
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !552
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 424
  store atomic volatile i32 1, ptr %i.bd monotonic, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !553
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !553
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 436
  store i16 0, ptr %i.bh, align 4, !tbaa !554
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !301 ; 2 uses
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %sqlite3OomFault.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.bj, ptr noundef nonnull @.str.133), !inline_history !555
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !301 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i32 7, ptr %i.bl, align 8, !tbaa !302
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 216
end_hunk_9
begin_hunk_10_@wherePathMatchSubqueryOB:bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.d = shl nuw i64 1, %indvars.iv               ; 2 uses
  %i.e = and i64 %i.d, %i.c
  %.not = icmp eq i64 %i.e, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  br i1 %.not, label %.preheader, label %bb.b, !llvm.loop !4682

.preheader:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i32, ptr %i.b, align 8, !tbaa !5    ; 3 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.k = load i32, ptr %4, align 8, !tbaa !5
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.m = zext nneg i32 %2 to i64
  %i.n = shl nuw i64 1, %i.m
  %i.o = sext i32 %i.k to i64                     ; 2 uses
  %wide.trip.count = zext nneg i32 %i.i to i64
  %i.p = icmp slt i64 %indvars.iv, %i.o
  br i1 %i.p, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.r = load i16, ptr %i.q, align 4, !tbaa !227  ; 2 uses
  %i.s = icmp eq i16 %i.r, 0
  br i1 %i.s, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !902  ; 3 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !3021
  switch i8 %i.v, label %.critedge [
    i8 -88, label %bb.e
    i8 -86, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3582
  %.not51.peel = icmp eq i32 %i.x, %3
  br i1 %.not51.peel, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.z = load i16, ptr %i.y, align 8, !tbaa !3488
  %i.aa = sext i16 %i.z to i32
  %i.ab = zext i16 %i.r to i32
  %i.ac = add nsw i32 %i.ab, -1
  %.not52.peel = icmp eq i32 %i.ac, %i.aa
  br i1 %.not52.peel, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ad = load i16, ptr %i.l, align 4, !tbaa !330
  %i.ae = and i16 %i.ad, 64
  %i.af = icmp eq i16 %i.ae, 0                    ; 2 uses
  br i1 %i.af, label %bb.h, label %.thread.peel

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !3499
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !3499
  %i.ak = xor i8 %i.aj, %i.ah                     ; 2 uses
  %i.al = and i8 %i.ak, 2
  %.not53.peel = icmp eq i8 %i.al, 0
  br i1 %.not53.peel, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.am = and i8 %i.ak, 1
  %.not55.peel = icmp eq i8 %i.am, 0
  br i1 %.not55.peel, label %.thread.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = load i32, ptr %i.h, align 8, !tbaa !4272
  %i.ao = and i32 %i.an, 33554432
  %.not56.peel = icmp eq i32 %i.ao, 0
  br i1 %.not56.peel, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.ap = load i64, ptr %5, align 8, !tbaa !18
  %i.aq = or i64 %i.ap, %i.n
  store i64 %i.aq, ptr %5, align 8, !tbaa !18
  %.pre = load i64, ptr %6, align 8, !tbaa !18
  br label %.thread.peel

.thread.peel:                                     ; preds = %bb.k, %bb.i, %bb.g
  %i.ar = phi i64 [ %i.c, %bb.g ], [ %.pre, %bb.k ], [ %i.c, %bb.i ]
  %.3.peel = phi i8 [ 0, %bb.g ], [ 1, %bb.k ], [ 0, %bb.i ]
  %i.as = or i64 %i.ar, %i.d                      ; 2 uses
  store i64 %i.as, ptr %6, align 8, !tbaa !18
  %exitcond.peel.not = icmp eq i32 %i.i, 1
  br i1 %exitcond.peel.not, label %.critedge, label %.peel.next

.peel.next:                                       ; preds = %.thread.peel, %.thread
  %i.at = phi i64 [ %i.bt, %.thread ], [ %i.as, %.thread.peel ]
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %.thread ], [ 1, %.thread.peel ] ; 2 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.thread ], [ %indvars.iv.next, %.thread.peel ] ; 4 uses
  %i.au = icmp slt i64 %indvars.iv80, %i.o
  br i1 %i.au, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.peel.next
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv82 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.ax = load i16, ptr %i.aw, align 4, !tbaa !227 ; 2 uses
  %i.ay = icmp eq i16 %i.ax, 0
  br i1 %i.ay, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %indvars.iv80 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !902 ; 3 uses
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !3021
  switch i8 %i.bb, label %.critedge [
    i8 -88, label %bb.n
    i8 -86, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 44
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3582
  %.not51 = icmp eq i32 %i.bd, %3
  br i1 %.not51, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bf = load i16, ptr %i.be, align 8, !tbaa !3488
  %i.bg = sext i16 %i.bf to i32
  %i.bh = zext i16 %i.ax to i32
  %i.bi = add nsw i32 %i.bh, -1
  %.not52 = icmp eq i32 %i.bi, %i.bg
  br i1 %.not52, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  br i1 %i.af, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !3499 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !3499 ; 2 uses
  %i.bn = xor i8 %i.bm, %i.bk
  %i.bo = and i8 %i.bn, 2
  %.not53 = icmp eq i8 %i.bo, 0
  br i1 %.not53, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.bp = and i8 %i.bm, 1
  %i.bq = xor i8 %i.bp, %.3.peel
  %i.br = and i8 %i.bk, 1
  %.not57 = icmp eq i8 %i.bq, %i.br
  br i1 %.not57, label %.thread, label %.critedge

.thread:                                          ; preds = %bb.r, %bb.p
  %i.bs = shl nuw i64 1, %indvars.iv80
  %i.bt = or i64 %i.at, %i.bs                     ; 2 uses
  store i64 %i.bt, ptr %6, align 8, !tbaa !18
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.peel.next, !llvm.loop !4683

.critedge:                                        ; preds = %.peel.next, %bb.l, %bb.n, %bb.o, %.thread, %bb.m, %bb.r, %bb.q, %.lr.ph, %bb.c, %bb.d, %bb.e, %bb.f, %bb.h, %bb.j, %.thread.peel, %.preheader
  %.043.lcssa = phi i32 [ 0, %.preheader ], [ 0, %.lr.ph ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.h ], [ 1, %.thread.peel ], [ 0, %bb.j ], [ 1, %bb.q ], [ 1, %bb.r ], [ 1, %bb.m ], [ 1, %.thread ], [ 1, %bb.o ], [ 1, %bb.n ], [ 1, %bb.l ], [ 1, %.peel.next ]
  ret i32 %.043.lcssa
}

; Function Attrs: nounwind uwtable
define internal void @whereIndexedExprCleanup(ptr noundef captures(address_is_null) %0, ptr noundef captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !3986   ; 2 uses
  %.not9 = icmp eq ptr %i.a, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %sqlite3ExprDelete.exit
  %i.b = phi ptr [ %i.f, %sqlite3ExprDelete.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4490
  store ptr %i.d, ptr %1, align 8, !tbaa !3986
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !3989 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %sqlite3ExprDelete.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call fastcc void @sqlite3ExprDeleteNN(ptr noundef %0, ptr noundef %i.e), !inline_history !144
  br label %sqlite3ExprDelete.exit

sqlite3ExprDelete.exit:                           ; preds = %.lr.ph, %bb.b
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %0, ptr noundef nonnull %i.b)
  %i.f = load ptr, ptr %1, align 8, !tbaa !3986   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !4684

._crit_edge:                                      ; preds = %sqlite3ExprDelete.exit, %bb.a
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @computeIndexAffStr(ptr noundef %0, ptr noundef captures(none) initializes((32, 40)) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1098
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !875
  %i.e = zext i16 %i.d to i64
  %i.f = add nuw nsw i64 %i.e, 1
  %i.g = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.f), !inline_history !608 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !2801
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.i = load i16, ptr %i.c, align 8, !tbaa !875
  %.not29 = icmp eq i16 %i.i, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !550
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.c, label %sqlite3OomFault.exit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load i8, ptr %i.p, align 8, !tbaa !551
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.d, label %sqlite3OomFault.exit

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.m, align 1, !tbaa !550
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.t = load i32, ptr %i.s, align 4, !tbaa !552
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 424
  store atomic volatile i32 1, ptr %i.v monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !553
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 8, !tbaa !553
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 436
  store i16 0, ptr %i.z, align 4, !tbaa !554
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !301 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %sqlite3OomFault.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.133), !inline_history !555
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !301 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i32 7, ptr %i.ad, align 8, !tbaa !302
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 216
  %.018.i = load ptr, ptr %.0.in17.i, align 8, !tbaa !556 ; 2 uses
  %.not1619.i = icmp eq ptr %.018.i, null
  br i1 %.not1619.i, label %sqlite3OomFault.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.020.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.018.i, %bb.g ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.020.i, i64 52 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !313
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !313
  %i.ah = getelementptr inbounds nuw i8, ptr %.020.i, i64 24
  store i32 7, ptr %i.ah, align 8, !tbaa !302
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 216
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !556 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i, null
  br i1 %.not16.i, label %sqlite3OomFault.exit, label %.lr.ph.i, !llvm.loop !557

bb.h:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  %i.ai = load ptr, ptr %i.j, align 8, !tbaa !878
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !330 ; 3 uses
  %i.al = icmp sgt i16 %i.ak, -1
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !882
  %i.an = zext nneg i16 %i.ak to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 9
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !905
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ar = icmp eq i16 %i.ak, -1
  br i1 %i.ar, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr %i.k, align 8, !tbaa !2799
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %indvars.iv
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !902
  %i.aw = tail call fastcc signext i8 @sqlite3ExprAffinity(ptr noundef %i.av)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %.0 = phi i8 [ %i.aq, %bb.i ], [ %i.aw, %bb.k ], [ 68, %bb.j ]
  %spec.store.select = tail call i8 @llvm.smax.i8(i8 %.0, i8 65)
  %spec.store.select1 = tail call i8 @llvm.umin.i8(i8 %spec.store.select, i8 67)
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !2801
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv
  store i8 %spec.store.select1, ptr %i.ay, align 1, !tbaa !227
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.az = load i16, ptr %i.c, align 8, !tbaa !875
  %i.ba = zext i16 %i.az to i64
  %i.bb = icmp samesign ult i64 %indvars.iv.next, %i.ba
  br i1 %i.bb, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !4685

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !2801
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bc = phi ptr [ %i.g, %.preheader ], [ %.pre, %._crit_edge.loopexit ]
  %.026.lcssa = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge.loopexit ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.026.lcssa
  store i8 0, ptr %i.bd, align 1, !tbaa !227
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !2801
  br label %sqlite3OomFault.exit

sqlite3OomFault.exit:                             ; preds = %.lr.ph.i, %bb.g, %bb.f, %bb.c, %bb.b, %._crit_edge
  %.025 = phi ptr [ %i.be, %._crit_edge ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.f ], [ null, %bb.g ], [ null, %.lr.ph.i ]
  ret ptr %.025
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3WhereExplainBloomFilter(ptr noundef readonly captures(none) %0, ptr %.8.val, ptr noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.sqlite3_str, align 8        ; 16 uses
  %i.a = alloca [100 x i8], align 16              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i8, ptr %i.c, align 8, !tbaa !4315
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !976  ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !651
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr %i.a, ptr %i.j, align 8, !tbaa !282
  store ptr %i.i, ptr %2, align 8, !tbaa !300
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i32 100, ptr %i.k, align 8, !tbaa !280
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 1000000000, ptr %i.l, align 4, !tbaa !299
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  store i32 0, ptr %i.m, align 8, !tbaa !279
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i8 0, ptr %i.n, align 4, !tbaa !298
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 29 ; 2 uses
  store i8 1, ptr %i.o, align 1, !tbaa !275
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %2, ptr noundef nonnull @.str.887, ptr noundef nonnull %i.f)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !4305 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load i32, ptr %i.r, align 8, !tbaa !4272
  %i.t = and i32 %i.s, 256
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !3016 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 52
  %i.x = load i16, ptr %i.w, align 4, !tbaa !891  ; 2 uses
  %i.y = icmp sgt i16 %i.x, -1
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !882
  %i.ab = zext nneg i16 %i.x to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !929
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %2, ptr noundef nonnull @.str.888, ptr noundef %i.ad)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %2, ptr noundef nonnull @.str.889)
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
end_hunk_10
begin_hunk_11_@codeAttach:bb.a

resolveAttachExpr.exit102:                        ; preds = %bb.v
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ej, i64 52
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !313
  %i.ey = icmp slt i32 %i.ex, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #59
  br i1 %i.ey, label %resolveAttachExpr.exit102.thread, label %sqlite3VdbeAddOp1.exit

resolveAttachExpr.exit102.thread:                 ; preds = %resolveAttachExpr.exit59.thread, %bb.w, %resolveAttachExpr.exit102
  %.not47 = icmp eq ptr %3, null
  br i1 %.not47, label %sqlite3AuthCheck.exit.thread, label %bb.x

bb.x:                                             ; preds = %resolveAttachExpr.exit102.thread
  %i.ez = load i8, ptr %3, align 8, !tbaa !3021
  %i.fa = icmp eq i8 %i.ez, 118
  br i1 %i.fa, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !227
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.040 = phi ptr [ %i.fc, %bb.y ], [ null, %bb.x ]
  %i.fd = load ptr, ptr %0, align 8, !tbaa !651   ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 528
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !1018 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %sqlite3AuthCheck.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 197
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !535
  %.not.i103 = icmp eq i8 %i.fi, 0
  br i1 %.not.i103, label %bb.ab, label %sqlite3AuthCheck.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.fk = load i8, ptr %i.fj, align 4, !tbaa !1091
  %.not22.i = icmp eq i8 %i.fk, 0
  br i1 %.not22.i, label %bb.ac, label %sqlite3AuthCheck.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fd, i64 536
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !1019
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !3543
  %i.fp = call i32 %i.ff(ptr noundef %i.fm, i32 noundef range(i32 0, 256) %1, ptr noundef %.040, ptr noundef null, ptr noundef null, ptr noundef %i.fo) #59, !inline_history !3544 ; 3 uses
  %i.fq = icmp eq i32 %i.fp, 1
  br i1 %i.fq, label %sqlite3AuthCheck.exit.thread116, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fr = and i32 %i.fp, -3
  %or.cond.not.i = icmp eq i32 %i.fr, 0
  br i1 %or.cond.not.i, label %sqlite3AuthCheck.exit, label %sqlite3AuthCheck.exit.thread116

sqlite3AuthCheck.exit.thread116:                  ; preds = %bb.ac, %bb.ad
  %.str.649.sink.i = phi ptr [ @.str.649, %bb.ac ], [ @.str.690, %bb.ad ]
  %.sink.i = phi i32 [ 23, %bb.ac ], [ 1, %bb.ad ]
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull %.str.649.sink.i)
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sink.i, ptr %i.fs, align 8, !tbaa !302
  br label %sqlite3VdbeAddOp1.exit

sqlite3AuthCheck.exit:                            ; preds = %bb.ad
  %.not48 = icmp eq i32 %i.fp, 0
  br i1 %.not48, label %sqlite3AuthCheck.exit.thread, label %sqlite3VdbeAddOp1.exit

sqlite3AuthCheck.exit.thread:                     ; preds = %bb.aa, %bb.ab, %bb.z, %sqlite3AuthCheck.exit, %resolveAttachExpr.exit102.thread
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !976 ; 2 uses
  %.not.i104 = icmp eq ptr %i.fu, null
  br i1 %.not.i104, label %bb.ae, label %sqlite3GetVdbe.exit

bb.ae:                                            ; preds = %sqlite3AuthCheck.exit.thread
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !3545
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.fy = load ptr, ptr %0, align 8, !tbaa !651
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 96
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !1328
  %i.gb = and i32 %i.ga, 8
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 39 ; 2 uses
  %i.ge = load i16, ptr %i.gd, align 1
  %i.gf = or i16 %i.ge, 128
  store i16 %i.gf, ptr %i.gd, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %i.gg = call fastcc ptr @sqlite3VdbeCreate(ptr noundef nonnull %0)
  br label %sqlite3GetVdbe.exit

sqlite3GetVdbe.exit:                              ; preds = %sqlite3AuthCheck.exit.thread, %bb.ah
  %.0.i105 = phi ptr [ %i.gg, %bb.ah ], [ %i.fu, %sqlite3AuthCheck.exit.thread ] ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !3710 ; 2 uses
  %.not.i60 = icmp slt i32 %i.gi, 4
  br i1 %.not.i60, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %sqlite3GetVdbe.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !3765 ; 2 uses
  %i.gl = add nsw i32 %i.gk, 4
  store i32 %i.gl, ptr %i.gj, align 8, !tbaa !3765
  %i.gm = add nsw i32 %i.gi, -4
  store i32 %i.gm, ptr %i.gh, align 4, !tbaa !3710
  br label %sqlite3GetTempRange.exit

bb.aj:                                            ; preds = %sqlite3GetVdbe.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !950 ; 2 uses
  %i.gp = add nsw i32 %i.go, 1
  %i.gq = add nsw i32 %i.go, 4
  store i32 %i.gq, ptr %i.gn, align 4, !tbaa !950
  br label %sqlite3GetTempRange.exit

sqlite3GetTempRange.exit:                         ; preds = %bb.ai, %bb.aj
  %.0.i61 = phi i32 [ %i.gp, %bb.aj ], [ %i.gk, %bb.ai ] ; 4 uses
  call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %4, i32 noundef %.0.i61)
  %i.gr = add nsw i32 %.0.i61, 1
  call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %5, i32 noundef %i.gr)
  %i.gs = add nsw i32 %.0.i61, 2
  call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %6, i32 noundef %i.gs)
  %.not49 = icmp eq ptr %.0.i105, null
  br i1 %.not49, label %sqlite3VdbeAddOp1.exit, label %bb.ak

bb.ak:                                            ; preds = %sqlite3GetTempRange.exit
  %i.gt = add nsw i32 %.0.i61, 3                  ; 2 uses
  %i.gu = load i16, ptr %2, align 8, !tbaa !573
  %i.gv = sext i16 %i.gu to i32                   ; 2 uses
  %i.gw = sub nsw i32 %i.gt, %i.gv
  call fastcc void @sqlite3VdbeAddFunctionCall(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %i.gw, i32 noundef %i.gt, i32 noundef %i.gv, ptr noundef nonnull %2, i32 noundef 0)
  %i.gx = icmp eq i32 %1, 24
  %i.gy = zext i1 %i.gx to i32                    ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.0.i105, i64 144 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !185 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.0.i105, i64 148
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !943
  %.not.i.i106 = icmp sgt i32 %i.hc, %i.ha
  br i1 %.not.i.i106, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hd = call fastcc i32 @growOp3(ptr noundef nonnull %.0.i105, i32 noundef 167, i32 noundef %i.gy, i32 noundef 0, i32 noundef 0), !inline_history !977 ; 0 uses
  br label %sqlite3VdbeAddOp1.exit

bb.am:                                            ; preds = %bb.ak
  %i.he = add nsw i32 %i.ha, 1
  store i32 %i.he, ptr %i.gz, align 8, !tbaa !185
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.i105, i64 136
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !184
  %i.hh = sext i32 %i.ha to i64
  %i.hi = getelementptr inbounds [24 x i8], ptr %i.hg, i64 %i.hh ; 5 uses
  store i8 -89, ptr %i.hi, align 8, !tbaa !563
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  store i16 0, ptr %i.hj, align 2, !tbaa !587
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  store i32 %i.gy, ptr %i.hk, align 4, !tbaa !584
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  store i8 0, ptr %i.hm, align 1, !tbaa !566
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hl, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp1.exit

sqlite3VdbeAddOp1.exit:                           ; preds = %bb.am, %bb.al, %sqlite3AuthCheck.exit.thread116, %resolveAttachExpr.exit102.thread111, %resolveAttachExpr.exit59.thread82, %sqlite3ReadSchema.exit, %sqlite3AuthCheck.exit, %sqlite3GetTempRange.exit, %resolveAttachExpr.exit59, %resolveAttachExpr.exit102, %bb.j
  %.not.i62 = icmp eq ptr %4, null
  br i1 %.not.i62, label %sqlite3ExprDelete.exit, label %.thread

.thread:                                          ; preds = %resolveAttachExpr.exit, %resolveAttachExpr.exit.thread76, %sqlite3VdbeAddOp1.exit
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef nonnull %i.a, ptr noundef %4), !inline_history !144
  br label %sqlite3ExprDelete.exit

sqlite3ExprDelete.exit:                           ; preds = %sqlite3VdbeAddOp1.exit, %.thread
  %.not.i63 = icmp eq ptr %5, null
  br i1 %.not.i63, label %sqlite3ExprDelete.exit64, label %bb.an

bb.an:                                            ; preds = %sqlite3ExprDelete.exit
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef nonnull %i.a, ptr noundef %5), !inline_history !144
  br label %sqlite3ExprDelete.exit64

sqlite3ExprDelete.exit64:                         ; preds = %sqlite3ExprDelete.exit, %bb.an
  %.not.i65 = icmp eq ptr %6, null
  br i1 %.not.i65, label %sqlite3ExprDelete.exit66, label %bb.ao

bb.ao:                                            ; preds = %sqlite3ExprDelete.exit64
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef nonnull %i.a, ptr noundef %6), !inline_history !144
  br label %sqlite3ExprDelete.exit66

sqlite3ExprDelete.exit66:                         ; preds = %sqlite3ExprDelete.exit64, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #59
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3SchemaGet(ptr noundef %0, ptr noundef captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !592
  %.not.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i, label %sqlite3BtreeEnter.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !593
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 4, !tbaa !593
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.i = load i8, ptr %i.h, align 2, !tbaa !594
  %.not4.i.i = icmp eq i8 %i.i, 0
  br i1 %.not4.i.i, label %bb.d, label %sqlite3BtreeEnter.exit.i

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @btreeLockCarefully(ptr noundef nonnull %1)
  br label %sqlite3BtreeEnter.exit.i

sqlite3BtreeEnter.exit.i:                         ; preds = %bb.d, %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2574 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %sqlite3BtreeEnter.exit.i
  %i.m = tail call fastcc ptr @sqlite3Malloc(i64 noundef 120), !inline_history !608 ; 4 uses
  %.not.i10.i = icmp eq ptr %i.m, null
  br i1 %.not.i10.i, label %sqlite3DbMallocZero.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %i.m, i8 0, i64 120, i1 false)
  br label %sqlite3DbMallocZero.exit.i

sqlite3DbMallocZero.exit.i:                       ; preds = %bb.f, %bb.e
  store ptr %i.m, ptr %i.j, align 8, !tbaa !2574
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @sqlite3SchemaClear, ptr %i.n, align 8, !tbaa !2573
  br label %bb.g

bb.g:                                             ; preds = %sqlite3DbMallocZero.exit.i, %sqlite3BtreeEnter.exit.i
  %i.o = phi ptr [ %i.m, %sqlite3DbMallocZero.exit.i ], [ %i.k, %sqlite3BtreeEnter.exit.i ] ; 2 uses
  %i.p = load i8, ptr %i.c, align 1, !tbaa !592
  %.not.i11.i = icmp eq i8 %i.p, 0
  br i1 %.not.i11.i, label %sqlite3BtreeSchema.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !593
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.q, align 4, !tbaa !593
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %sqlite3BtreeSchema.exit

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @unlockBtreeMutex(ptr noundef nonnull %1)
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !2574
  br label %sqlite3BtreeSchema.exit

bb.j:                                             ; preds = %bb.a
  %i.u = tail call fastcc ptr @sqlite3Malloc(i64 noundef 120), !inline_history !608 ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %sqlite3BtreeSchema.exit.thread, label %sqlite3BtreeSchema.exit.thread18

sqlite3BtreeSchema.exit.thread18:                 ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %i.u, i8 0, i64 120, i1 false)
  br label %bb.p

sqlite3BtreeSchema.exit:                          ; preds = %bb.i, %bb.h, %bb.g
  %.0 = phi ptr [ %.pre.i, %bb.i ], [ %i.o, %bb.g ], [ %i.o, %bb.h ] ; 2 uses
  %.not12 = icmp eq ptr %.0, null
  br i1 %.not12, label %sqlite3BtreeSchema.exit.thread, label %bb.p

sqlite3BtreeSchema.exit.thread:                   ; preds = %bb.j, %sqlite3BtreeSchema.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !550
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.k, label %sqlite3OomFault.exit

bb.k:                                             ; preds = %sqlite3BtreeSchema.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load i8, ptr %i.y, align 8, !tbaa !551
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.l, label %sqlite3OomFault.exit

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.v, align 1, !tbaa !550
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !552
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 424
  store atomic volatile i32 1, ptr %i.ae monotonic, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !553
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 8, !tbaa !553
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 436
  store i16 0, ptr %i.ai, align 4, !tbaa !554
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !301 ; 2 uses
  %.not.i13 = icmp eq ptr %i.ak, null
  br i1 %.not.i13, label %sqlite3OomFault.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.ak, ptr noundef nonnull @.str.133), !inline_history !555
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !301 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i32 7, ptr %i.am, align 8, !tbaa !302
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.al, i64 216
  %.018.i = load ptr, ptr %.0.in17.i, align 8, !tbaa !556 ; 2 uses
  %.not1619.i = icmp eq ptr %.018.i, null
  br i1 %.not1619.i, label %sqlite3OomFault.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.i
  %.020.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.018.i, %bb.o ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.020.i, i64 52 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !313
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !313
  %i.aq = getelementptr inbounds nuw i8, ptr %.020.i, i64 24
  store i32 7, ptr %i.aq, align 8, !tbaa !302
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 216
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !556 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i, null
  br i1 %.not16.i, label %sqlite3OomFault.exit, label %.lr.ph.i, !llvm.loop !557

bb.p:                                             ; preds = %sqlite3BtreeSchema.exit.thread18, %sqlite3BtreeSchema.exit
  %.021 = phi ptr [ %i.u, %sqlite3BtreeSchema.exit.thread18 ], [ %.0, %sqlite3BtreeSchema.exit ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.021, i64 112
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !2685
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.q, label %sqlite3OomFault.exit

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %.021, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.021, i64 113
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.au, i8 0, i64 96, i1 false)
  store i8 1, ptr %i.av, align 1, !tbaa !954
  br label %sqlite3OomFault.exit

sqlite3OomFault.exit:                             ; preds = %.lr.ph.i, %bb.o, %bb.n, %bb.k, %sqlite3BtreeSchema.exit.thread, %bb.p, %bb.q
  %.016 = phi ptr [ %.021, %bb.p ], [ %.021, %bb.q ], [ null, %sqlite3BtreeSchema.exit.thread ], [ null, %bb.k ], [ null, %bb.n ], [ null, %bb.o ], [ null, %.lr.ph.i ]
  ret ptr %.016
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @sqlite3ParseUri(ptr noundef %0, ptr noundef %1, ptr noundef nonnull captures(none) %2, ptr noundef nonnull writeonly captures(none) %3, ptr noundef nonnull writeonly captures(none) %4, ptr noundef nonnull writeonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !5      ; 4 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %sqlite3Strlen30.exit.thread, label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #60 ; 3 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1073741823                 ; 6 uses
  %i.f = and i32 %i.a, 64
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

sqlite3Strlen30.exit.thread:                      ; preds = %bb.a
  %i.g = and i32 %i.a, 64
  %.not297 = icmp eq i32 %i.g, 0
  br i1 %.not297, label %.thread382, label %.thread

.thread382:                                       ; preds = %sqlite3Strlen30.exit.thread
  %i.h = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 6) monotonic, align 2 ; 0 uses
  br label %.thread

bb.b:                                             ; preds = %sqlite3Strlen30.exit
  %i.i = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 6) monotonic, align 2
  %i.j = icmp ne i8 %i.i, 0
  %i.k = icmp samesign ugt i32 %i.e, 4
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.d, label %.thread

bb.c:                                             ; preds = %sqlite3Strlen30.exit
  %.old3 = icmp samesign ugt i32 %i.e, 4
  br i1 %.old3, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = load i32, ptr %1, align 1
  %i.m = xor i32 %i.l, 1701603686
  %i.n = getelementptr i8, ptr %1, i64 4
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = xor i32 %i.p, 58
end_hunk_11
begin_hunk_12_@concatFuncCore:bb.a
bb.i:                                             ; preds = %sqlite3_malloc64.exit.thread
  store i16 1, ptr %i.ah, align 4, !tbaa !162
  br label %sqlite3VdbeMemSetNull.exit.i

sqlite3VdbeMemSetNull.exit.i:                     ; preds = %bb.i, %bb.h
  %i.ak = phi ptr [ %.pre.i, %bb.h ], [ %i.ag, %bb.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 7, ptr %i.al, align 4, !tbaa !5
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !157 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 103 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !550
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.j, label %sqlite3_result_error_nomem.exit

bb.j:                                             ; preds = %sqlite3VdbeMemSetNull.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !551
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.k, label %sqlite3_result_error_nomem.exit

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.ao, align 1, !tbaa !550
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 220
  %i.av = load i32, ptr %i.au, align 4, !tbaa !552
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 424
  store atomic volatile i32 1, ptr %i.ax monotonic, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 432 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !553
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !553
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 436
  store i16 0, ptr %i.bb, align 4, !tbaa !554
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 344 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !301 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.bd, null
  br i1 %.not.i3.i, label %sqlite3_result_error_nomem.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.bd, ptr noundef nonnull @.str.133), !inline_history !555
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !301 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i32 7, ptr %i.bf, align 8, !tbaa !302
  %.0.in17.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 216
  %.018.i.i = load ptr, ptr %.0.in17.i.i, align 8, !tbaa !556 ; 2 uses
  %.not1619.i.i = icmp eq ptr %.018.i.i, null
  br i1 %.not1619.i.i, label %sqlite3_result_error_nomem.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n, %.lr.ph.i.i
  %.020.i.i = phi ptr [ %.0.i.i52, %.lr.ph.i.i ], [ %.018.i.i, %bb.n ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 52 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !313
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !313
  %i.bj = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 24
  store i32 7, ptr %i.bj, align 8, !tbaa !302
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 216
  %.0.i.i52 = load ptr, ptr %.0.in.i.i, align 8, !tbaa !556 ; 2 uses
  %.not16.i.i = icmp eq ptr %.0.i.i52, null
  br i1 %.not16.i.i, label %sqlite3_result_error_nomem.exit, label %.lr.ph.i.i, !llvm.loop !557

bb.o:                                             ; preds = %.lr.ph70, %sqlite3_value_text.exit.thread
  %indvars.iv74 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next75, %sqlite3_value_text.exit.thread ] ; 2 uses
  %.069 = phi i64 [ 0, %.lr.ph70 ], [ %.3, %sqlite3_value_text.exit.thread ] ; 7 uses
  %.04467 = phi i32 [ 0, %.lr.ph70 ], [ %.246, %sqlite3_value_text.exit.thread ] ; 5 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv74 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !288 ; 10 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  %i.bn = load i16, ptr %i.bm, align 4, !tbaa !162 ; 3 uses
  %i.bo = and i16 %i.bn, 63
  %i.bp = zext nneg i16 %i.bo to i64
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = and i64 %i.bq, -6148914691236517206
  %.not.not = icmp eq i64 %i.br, 0
  br i1 %.not.not, label %bb.p, label %sqlite3_value_text.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bs = and i16 %i.bn, 2
  %.not.i.i53 = icmp eq i16 %i.bs, 0
  br i1 %.not.i.i53, label %.thread.i.i54, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 22
  %i.bu = load i8, ptr %i.bt, align 2, !tbaa !349
  %i.bv = icmp eq i8 %i.bu, 1
  br i1 %i.bv, label %bb.r, label %.thread.i.i54

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !558
  br label %sqlite3_value_bytes.exit59.thread

.thread.i.i54:                                    ; preds = %bb.q, %bb.p
  %i.by = zext i16 %i.bn to i32                   ; 3 uses
  %i.bz = and i32 %i.by, 16
  %.not20.i.i55 = icmp eq i32 %i.bz, 0
  br i1 %.not20.i.i55, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.thread.i.i54
  %i.ca = and i32 %i.by, 1024
  %.not22.i.i56 = icmp eq i32 %i.ca, 0
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !558 ; 2 uses
  br i1 %.not22.i.i56, label %sqlite3_value_bytes.exit59.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = load i32, ptr %i.bl, align 8, !tbaa !227
  %i.ce = add nsw i32 %i.cd, %i.cc
  br label %sqlite3_value_bytes.exit59.thread

bb.u:                                             ; preds = %.thread.i.i54
  %i.cf = and i32 %i.by, 1
  %.not21.i.i58 = icmp eq i32 %i.cf, 0
  br i1 %.not21.i.i58, label %sqlite3_value_bytes.exit59, label %sqlite3_value_bytes.exit59.thread

sqlite3_value_bytes.exit59:                       ; preds = %bb.u
  %i.cg = tail call fastcc i32 @valueBytes(ptr noundef nonnull %i.bl, i8 noundef zeroext 1)
  %.pre = load ptr, ptr %i.bk, align 8, !tbaa !288 ; 2 uses
  %.not.i.i60 = icmp eq ptr %.pre, null
  br i1 %.not.i.i60, label %sqlite3_value_text.exit.thread, label %sqlite3_value_bytes.exit59.thread

sqlite3_value_bytes.exit59.thread:                ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %sqlite3_value_bytes.exit59
  %.0.i.i5785 = phi i32 [ %i.cg, %sqlite3_value_bytes.exit59 ], [ 0, %bb.u ], [ %i.ce, %bb.t ], [ %i.cc, %bb.s ], [ %i.bx, %bb.r ]
  %i.ch = phi ptr [ %.pre, %sqlite3_value_bytes.exit59 ], [ %i.bl, %bb.u ], [ %i.bl, %bb.t ], [ %i.bl, %bb.s ], [ %i.bl, %bb.r ] ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  %i.cj = load i16, ptr %i.ci, align 4, !tbaa !162 ; 2 uses
  %i.ck = and i16 %i.cj, 514
  %i.cl = icmp eq i16 %i.ck, 514
  br i1 %i.cl, label %bb.v, label %bb.x

bb.v:                                             ; preds = %sqlite3_value_bytes.exit59.thread
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 22
  %i.cn = load i8, ptr %i.cm, align 2, !tbaa !349
  %i.co = icmp eq i8 %i.cn, 1
  br i1 %i.co, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !289
  br label %sqlite3_value_text.exit

bb.x:                                             ; preds = %bb.v, %sqlite3_value_bytes.exit59.thread
  %i.cr = and i16 %i.cj, 1
  %.not9.i.i = icmp eq i16 %i.cr, 0
  br i1 %.not9.i.i, label %bb.y, label %sqlite3_value_text.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.cs = tail call fastcc ptr @valueToText(ptr noundef nonnull %i.ch, i8 noundef zeroext 1), !inline_history !606
  br label %sqlite3_value_text.exit

sqlite3_value_text.exit:                          ; preds = %bb.w, %bb.y
  %.0.i.i61 = phi ptr [ %i.cq, %bb.w ], [ %i.cs, %bb.y ] ; 2 uses
  %.not50 = icmp eq ptr %.0.i.i61, null
  br i1 %.not50, label %sqlite3_value_text.exit.thread, label %bb.z

bb.z:                                             ; preds = %sqlite3_value_text.exit
  %i.ct = icmp ne i32 %.04467, 0
  %or.cond = and i1 %i.af, %i.ct
  br i1 %or.cond, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cu = getelementptr inbounds i8, ptr %i.ad, i64 %.069
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr align 1 %4, i64 %i.w, i1 false)
  %i.cv = add nsw i64 %.069, %i.w
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.1 = phi i64 [ %i.cv, %bb.aa ], [ %.069, %bb.z ] ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.ad, i64 %.1
  %i.cx = sext i32 %.0.i.i5785 to i64             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cw, ptr nonnull align 1 %.0.i.i61, i64 %i.cx, i1 false)
  %i.cy = add nsw i64 %.1, %i.cx
  br label %sqlite3_value_text.exit.thread

sqlite3_value_text.exit.thread:                   ; preds = %bb.x, %sqlite3_value_bytes.exit59, %sqlite3_value_text.exit, %bb.ab, %bb.o
  %.246 = phi i32 [ %.04467, %bb.o ], [ 1, %bb.ab ], [ %.04467, %sqlite3_value_text.exit ], [ %.04467, %sqlite3_value_bytes.exit59 ], [ %.04467, %bb.x ]
  %.3 = phi i64 [ %.069, %bb.o ], [ %i.cy, %bb.ab ], [ %.069, %sqlite3_value_text.exit ], [ %.069, %sqlite3_value_bytes.exit59 ], [ %.069, %bb.x ] ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %._crit_edge71, label %bb.o, !llvm.loop !4968

._crit_edge71:                                    ; preds = %sqlite3_value_text.exit.thread, %.preheader
  %.0.lcssa = phi i64 [ 0, %.preheader ], [ %.3, %sqlite3_value_text.exit.thread ] ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.ad, i64 %.0.lcssa
  store i8 0, ptr %i.cz, align 1, !tbaa !227
  tail call void @sqlite3_result_text64(ptr noundef %0, ptr noundef nonnull %i.ad, i64 noundef %.0.lcssa, ptr noundef nonnull @sqlite3_free, i8 noundef zeroext 16)
  br label %sqlite3_result_error_nomem.exit

sqlite3_result_error_nomem.exit:                  ; preds = %.lr.ph.i.i, %bb.n, %bb.m, %bb.j, %sqlite3VdbeMemSetNull.exit.i, %._crit_edge71
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @kahanBabuskaNeumaierStepInt64(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #46 {
bb.a:
  %i.a = alloca double, align 8                   ; 7 uses
  %i.b = alloca double, align 8                   ; 7 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = alloca double, align 8                   ; 7 uses
  %i.e = alloca double, align 8                   ; 7 uses
  %i.f = alloca double, align 8                   ; 5 uses
  %i.g = alloca double, align 8                   ; 7 uses
  %i.h = alloca double, align 8                   ; 7 uses
  %i.i = alloca double, align 8                   ; 5 uses
  %i.j = add i64 %1, -4503599627370496
  %or.cond = icmp ult i64 %i.j, -9007199254740991
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = srem i64 %1, 16384                       ; 2 uses
  %i.l = sub nsw i64 %1, %i.k
  %i.m = sitofp i64 %i.l to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store volatile double %i.m, ptr %i.g, align 8, !tbaa !322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.n = load volatile double, ptr %0, align 8, !tbaa !4953
  store volatile double %i.n, ptr %i.h, align 8, !tbaa !322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.0..0..0..0..0..0.3.i = load volatile double, ptr %i.h, align 8, !tbaa !322
  %.0..0..0..0..0..0.7.i = load volatile double, ptr %i.g, align 8, !tbaa !322
  %i.o = fadd double %.0..0..0..0..0..0.3.i, %.0..0..0..0..0..0.7.i
  store volatile double %i.o, ptr %i.i, align 8, !tbaa !322
  %.0..0..0..0..0..0.4.i = load volatile double, ptr %i.h, align 8, !tbaa !322
  %i.p = tail call double @llvm.fabs.f64(double %.0..0..0..0..0..0.4.i)
  %.0..0..0..0..0..0.8.i = load volatile double, ptr %i.g, align 8, !tbaa !322
  %i.q = tail call double @llvm.fabs.f64(double %.0..0..0..0..0..0.8.i)
  %i.r = fcmp ogt double %i.p, %i.q               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %..i = select i1 %i.r, ptr %i.h, ptr %i.g
  %.18.i = select i1 %i.r, ptr %i.g, ptr %i.h
  %.0..0..0.10.i = load volatile double, ptr %..i, align 8, !tbaa !322
  %.0..0..0..0..0..0.1.i = load volatile double, ptr %i.i, align 8, !tbaa !322
  %i.t = fsub double %.0..0..0.10.i, %.0..0..0..0..0..0.1.i
  %.0..0..0.6.i = load volatile double, ptr %.18.i, align 8, !tbaa !322
  %i.u = fadd double %i.t, %.0..0..0.6.i
  %i.v = load volatile double, ptr %i.s, align 8, !tbaa !4954
  %i.w = fadd double %i.v, %i.u
  store volatile double %i.w, ptr %i.s, align 8, !tbaa !4954
  %.0..0..0..0..0..0.2.i = load volatile double, ptr %i.i, align 8, !tbaa !322
  store volatile double %.0..0..0..0..0..0.2.i, ptr %0, align 8, !tbaa !4953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.x = sitofp i64 %i.k to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store volatile double %i.x, ptr %i.d, align 8, !tbaa !322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.y = load volatile double, ptr %0, align 8, !tbaa !4953
  store volatile double %i.y, ptr %i.e, align 8, !tbaa !322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.0..0..0..0..0..0.3.i11 = load volatile double, ptr %i.e, align 8, !tbaa !322
  %.0..0..0..0..0..0.7.i12 = load volatile double, ptr %i.d, align 8, !tbaa !322
  %i.z = fadd double %.0..0..0..0..0..0.3.i11, %.0..0..0..0..0..0.7.i12
  store volatile double %i.z, ptr %i.f, align 8, !tbaa !322
  %.0..0..0..0..0..0.4.i13 = load volatile double, ptr %i.e, align 8, !tbaa !322
  %i.aa = tail call double @llvm.fabs.f64(double %.0..0..0..0..0..0.4.i13)
  %.0..0..0..0..0..0.8.i14 = load volatile double, ptr %i.d, align 8, !tbaa !322
  %i.ab = tail call double @llvm.fabs.f64(double %.0..0..0..0..0..0.8.i14)
  %i.ac = fcmp ogt double %i.aa, %i.ab            ; 2 uses
  %..i15 = select i1 %i.ac, ptr %i.e, ptr %i.d
  %.18.i16 = select i1 %i.ac, ptr %i.d, ptr %i.e
  %.0..0..0.10.i17 = load volatile double, ptr %..i15, align 8, !tbaa !322
  %.0..0..0..0..0..0.1.i18 = load volatile double, ptr %i.f, align 8, !tbaa !322
  %i.ad = fsub double %.0..0..0.10.i17, %.0..0..0..0..0..0.1.i18
  %.0..0..0.6.i19 = load volatile double, ptr %.18.i16, align 8, !tbaa !322
  %i.ae = fadd double %i.ad, %.0..0..0.6.i19
  %i.af = load volatile double, ptr %i.s, align 8, !tbaa !4954
  %i.ag = fadd double %i.af, %i.ae
  store volatile double %i.ag, ptr %i.s, align 8, !tbaa !4954
  %.0..0..0..0..0..0.2.i20 = load volatile double, ptr %i.f, align 8, !tbaa !322
  store volatile double %.0..0..0..0..0..0.2.i20, ptr %0, align 8, !tbaa !4953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ah = sitofp i64 %1 to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile double %i.ah, ptr %i.a, align 8, !tbaa !322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = load volatile double, ptr %0, align 8, !tbaa !4953
  store volatile double %i.ai, ptr %i.b, align 8, !tbaa !322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.0..0..0..0..0..0.3.i21 = load volatile double, ptr %i.b, align 8, !tbaa !322
  %.0..0..0..0..0..0.7.i22 = load volatile double, ptr %i.a, align 8, !tbaa !322
  %i.aj = fadd double %.0..0..0..0..0..0.3.i21, %.0..0..0..0..0..0.7.i22
  store volatile double %i.aj, ptr %i.c, align 8, !tbaa !322
  %.0..0..0..0..0..0.4.i23 = load volatile double, ptr %i.b, align 8, !tbaa !322
  %i.ak = tail call double @llvm.fabs.f64(double %.0..0..0..0..0..0.4.i23)
  %.0..0..0..0..0..0.8.i24 = load volatile double, ptr %i.a, align 8, !tbaa !322
  %i.al = tail call double @llvm.fabs.f64(double %.0..0..0..0..0..0.8.i24)
  %i.am = fcmp ogt double %i.ak, %i.al            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %..i25 = select i1 %i.am, ptr %i.b, ptr %i.a
  %.18.i26 = select i1 %i.am, ptr %i.a, ptr %i.b
  %.0..0..0.10.i27 = load volatile double, ptr %..i25, align 8, !tbaa !322
  %.0..0..0..0..0..0.1.i28 = load volatile double, ptr %i.c, align 8, !tbaa !322
  %i.ao = fsub double %.0..0..0.10.i27, %.0..0..0..0..0..0.1.i28
  %.0..0..0.6.i29 = load volatile double, ptr %.18.i26, align 8, !tbaa !322
  %i.ap = fadd double %i.ao, %.0..0..0.6.i29
  %i.aq = load volatile double, ptr %i.an, align 8, !tbaa !4954
  %i.ar = fadd double %i.aq, %i.ap
  store volatile double %i.ar, ptr %i.an, align 8, !tbaa !4954
  %.0..0..0..0..0..0.2.i30 = load volatile double, ptr %i.c, align 8, !tbaa !322
  store volatile double %.0..0..0..0..0..0.2.i30, ptr %0, align 8, !tbaa !4953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #47

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #45

; Function Attrs: nounwind uwtable
define internal void @renameColumnFunc(ptr noundef captures(none) %0, i32 %1, ptr noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.RenameCtx, align 8          ; 26 uses
  %4 = alloca %struct.Parse, align 8              ; 23 uses
  %5 = alloca %struct.Walker, align 8             ; 15 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !288
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !157  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  %i.d = load ptr, ptr %2, align 8, !tbaa !288    ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %sqlite3_value_text.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.f = load i16, ptr %i.e, align 4, !tbaa !162  ; 2 uses
  %i.g = and i16 %i.f, 514
  %i.h = icmp eq i16 %i.g, 514
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 22
  %i.j = load i8, ptr %i.i, align 2, !tbaa !349
  %i.k = icmp eq i8 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !289
  br label %sqlite3_value_text.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.n = and i16 %i.f, 1
  %.not9.i.i = icmp eq i16 %i.n, 0
  br i1 %.not9.i.i, label %bb.f, label %sqlite3_value_text.exit

bb.f:                                             ; preds = %bb.e
  %i.o = tail call fastcc ptr @valueToText(ptr noundef nonnull %i.d, i8 noundef zeroext 1), !inline_history !606
  br label %sqlite3_value_text.exit

sqlite3_value_text.exit:                          ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.m, %bb.d ], [ null, %bb.a ], [ %i.o, %bb.f ], [ null, %bb.e ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !288  ; 5 uses
  %.not.i.i146 = icmp eq ptr %i.q, null
  br i1 %.not.i.i146, label %sqlite3_value_text.exit149, label %bb.g

bb.g:                                             ; preds = %sqlite3_value_text.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.s = load i16, ptr %i.r, align 4, !tbaa !162  ; 2 uses
  %i.t = and i16 %i.s, 514
  %i.u = icmp eq i16 %i.t, 514
  br i1 %i.u, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 22
  %i.w = load i8, ptr %i.v, align 2, !tbaa !349
  %i.x = icmp eq i8 %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !289
  br label %sqlite3_value_text.exit149

bb.j:                                             ; preds = %bb.h, %bb.g
end_hunk_12
begin_hunk_13_@sqlite3RtreeInit:bb.a
  %i.af = icmp eq i32 %.0.i37.i.i25, 0
  br i1 %i.af, label %bb.m, label %sqlite3_geopoly_init.exit

bb.m:                                             ; preds = %sqlite3_create_function.exit27
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i28, label %sqlite3_mutex_enter.exit.i.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.ah(ptr noundef nonnull %i.ag) #59, !inline_history !5216
  br label %sqlite3_mutex_enter.exit.i.i29

sqlite3_mutex_enter.exit.i.i29:                   ; preds = %bb.n, %bb.m
  %i.ai = tail call fastcc ptr @sqlite3VtabCreateModule(ptr noundef nonnull %0, ptr noundef nonnull @.str.1820, ptr noundef nonnull @rtreeModule, ptr noundef null, ptr noundef null) ; 0 uses
  %i.aj = load i8, ptr %i.e, align 1, !tbaa !550
  %.not.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i, label %sqlite3ApiExit.exit.thread.i.i, label %sqlite3ApiExit.exit.i.i30

sqlite3ApiExit.exit.i.i30:                        ; preds = %sqlite3_mutex_enter.exit.i.i29
  %i.ak = tail call fastcc i32 @apiHandleError(ptr noundef nonnull %0, i32 noundef 0)
  br label %sqlite3ApiExit.exit.thread.i.i

sqlite3ApiExit.exit.thread.i.i:                   ; preds = %sqlite3ApiExit.exit.i.i30, %sqlite3_mutex_enter.exit.i.i29
  %.0.i17.i.i = phi i32 [ %i.ak, %sqlite3ApiExit.exit.i.i30 ], [ 0, %sqlite3_mutex_enter.exit.i.i29 ] ; 2 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %.not.i14.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i14.i.i, label %sqlite3_create_module_v2.exit, label %bb.o

bb.o:                                             ; preds = %sqlite3ApiExit.exit.thread.i.i
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.am(ptr noundef nonnull %i.al) #59, !inline_history !5217
  br label %sqlite3_create_module_v2.exit

sqlite3_create_module_v2.exit:                    ; preds = %bb.o, %sqlite3ApiExit.exit.thread.i.i
  %i.an = icmp eq i32 %.0.i17.i.i, 0
  br i1 %i.an, label %bb.p, label %sqlite3_geopoly_init.exit

bb.p:                                             ; preds = %sqlite3_create_module_v2.exit
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i31, label %sqlite3_mutex_enter.exit.i.i32, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.ap(ptr noundef nonnull %i.ao) #59, !inline_history !5216
  br label %sqlite3_mutex_enter.exit.i.i32

sqlite3_mutex_enter.exit.i.i32:                   ; preds = %bb.q, %bb.p
  %i.aq = tail call fastcc ptr @sqlite3VtabCreateModule(ptr noundef nonnull %0, ptr noundef nonnull @.str.1821, ptr noundef nonnull @rtreeModule, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef null) ; 0 uses
  %i.ar = load i8, ptr %i.e, align 1, !tbaa !550
  %.not.i.i33 = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i33, label %sqlite3ApiExit.exit.thread.i.i35, label %sqlite3ApiExit.exit.i.i34

sqlite3ApiExit.exit.i.i34:                        ; preds = %sqlite3_mutex_enter.exit.i.i32
  %i.as = tail call fastcc i32 @apiHandleError(ptr noundef nonnull %0, i32 noundef 0)
  br label %sqlite3ApiExit.exit.thread.i.i35

sqlite3ApiExit.exit.thread.i.i35:                 ; preds = %sqlite3ApiExit.exit.i.i34, %sqlite3_mutex_enter.exit.i.i32
  %.0.i17.i.i36 = phi i32 [ %i.as, %sqlite3ApiExit.exit.i.i34 ], [ 0, %sqlite3_mutex_enter.exit.i.i32 ] ; 2 uses
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %.not.i14.i.i37 = icmp eq ptr %i.at, null
  br i1 %.not.i14.i.i37, label %sqlite3_create_module_v2.exit38, label %bb.r

bb.r:                                             ; preds = %sqlite3ApiExit.exit.thread.i.i35
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.au(ptr noundef nonnull %i.at) #59, !inline_history !5217
  br label %sqlite3_create_module_v2.exit38

sqlite3_create_module_v2.exit38:                  ; preds = %bb.r, %sqlite3ApiExit.exit.thread.i.i35
  %i.av = icmp eq i32 %.0.i17.i.i36, 0
  br i1 %i.av, label %.preheader, label %sqlite3_geopoly_init.exit

.preheader.i:                                     ; preds = %sqlite3_create_function.exit.i
  br i1 %i.bo, label %.lr.ph.i, label %sqlite3_geopoly_init.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %.not.i.i.i23.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i23.i, label %sqlite3_mutex_enter.exit.i.i24.i, label %bb.v

.preheader:                                       ; preds = %sqlite3_create_module_v2.exit38, %sqlite3_create_function.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %sqlite3_create_function.exit.i ], [ 0, %sqlite3_create_module_v2.exit38 ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr @sqlite3_geopoly_init.aFunc, i64 %indvars.iv.i ; 3 uses
  %.not.i = icmp eq i64 %indvars.iv.i, 7
  %..i = select i1 %.not.i, i32 524289, i32 2099201
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !5218
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !5220
  %i.bc = sext i8 %i.bb to i32
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !5221
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %.preheader
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.bf(ptr noundef nonnull %i.be) #59, !inline_history !5222
  br label %sqlite3_mutex_enter.exit.i.i.i

sqlite3_mutex_enter.exit.i.i.i:                   ; preds = %bb.s, %.preheader
  %i.bg = tail call fastcc i32 @sqlite3CreateFunc(ptr noundef nonnull %0, ptr noundef %i.az, i32 noundef %i.bc, i32 noundef %..i, ptr noundef null, ptr noundef %i.bd, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null), !inline_history !5223 ; 2 uses
  %i.bh = load i8, ptr %i.e, align 1, !tbaa !550
  %i.bi = icmp ne i8 %i.bh, 0
  %i.bj = icmp ne i32 %i.bg, 0
  %or.cond.i.i.i.i = or i1 %i.bj, %i.bi
  br i1 %or.cond.i.i.i.i, label %bb.t, label %sqlite3ApiExit.exit.i.i.i

bb.t:                                             ; preds = %sqlite3_mutex_enter.exit.i.i.i
  %i.bk = tail call fastcc i32 @apiHandleError(ptr noundef nonnull %0, i32 noundef %i.bg), !inline_history !5223
  br label %sqlite3ApiExit.exit.i.i.i

sqlite3ApiExit.exit.i.i.i:                        ; preds = %bb.t, %sqlite3_mutex_enter.exit.i.i.i
  %.0.i37.i.i.i = phi i32 [ %i.bk, %bb.t ], [ 0, %sqlite3_mutex_enter.exit.i.i.i ] ; 2 uses
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %.not.i38.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i38.i.i.i, label %sqlite3_create_function.exit.i, label %bb.u

bb.u:                                             ; preds = %sqlite3ApiExit.exit.i.i.i
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.bm(ptr noundef nonnull %i.bl) #59, !inline_history !5224
  br label %sqlite3_create_function.exit.i

sqlite3_create_function.exit.i:                   ; preds = %bb.u, %sqlite3ApiExit.exit.i.i.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.bn = icmp samesign ult i64 %indvars.iv.i, 11
  %i.bo = icmp eq i32 %.0.i37.i.i.i, 0            ; 2 uses
  %i.bp = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %i.bp, label %.preheader, label %.preheader.i, !llvm.loop !5225

bb.v:                                             ; preds = %.lr.ph.i
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.bq(ptr noundef nonnull %i.aw) #59, !inline_history !5222
  br label %sqlite3_mutex_enter.exit.i.i24.i

sqlite3_mutex_enter.exit.i.i24.i:                 ; preds = %bb.v, %.lr.ph.i
  %i.br = tail call fastcc i32 @sqlite3CreateFunc(ptr noundef nonnull %0, ptr noundef nonnull @.str.1899, i32 noundef 1, i32 noundef 2099201, ptr noundef null, ptr noundef null, ptr noundef nonnull @geopolyBBoxStep, ptr noundef nonnull @geopolyBBoxFinal, ptr noundef null, ptr noundef null, ptr noundef null), !inline_history !5223 ; 2 uses
  %i.bs = load i8, ptr %i.e, align 1, !tbaa !550
  %i.bt = icmp ne i8 %i.bs, 0
  %i.bu = icmp ne i32 %i.br, 0
  %or.cond.i.i.i25.i = or i1 %i.bu, %i.bt
  br i1 %or.cond.i.i.i25.i, label %bb.w, label %sqlite3ApiExit.exit.i.i26.i

bb.w:                                             ; preds = %sqlite3_mutex_enter.exit.i.i24.i
  %i.bv = tail call fastcc i32 @apiHandleError(ptr noundef nonnull %0, i32 noundef %i.br), !inline_history !5223
  br label %sqlite3ApiExit.exit.i.i26.i

sqlite3ApiExit.exit.i.i26.i:                      ; preds = %bb.w, %sqlite3_mutex_enter.exit.i.i24.i
  %.0.i37.i.i27.i = phi i32 [ %i.bv, %bb.w ], [ 0, %sqlite3_mutex_enter.exit.i.i24.i ] ; 2 uses
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %.not.i38.i.i28.i = icmp eq ptr %i.bw, null
  br i1 %.not.i38.i.i28.i, label %._crit_edge.i, label %bb.x

bb.x:                                             ; preds = %sqlite3ApiExit.exit.i.i26.i
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.bx(ptr noundef nonnull %i.bw) #59, !inline_history !5224
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.x, %sqlite3ApiExit.exit.i.i26.i
  %i.by = icmp eq i32 %.0.i37.i.i27.i, 0
  br i1 %i.by, label %bb.y, label %sqlite3_geopoly_init.exit

bb.y:                                             ; preds = %._crit_edge.i
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %.not.i.i.i30.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i30.i, label %sqlite3_mutex_enter.exit.i.i31.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.ca(ptr noundef nonnull %i.bz) #59, !inline_history !5226
  br label %sqlite3_mutex_enter.exit.i.i31.i

sqlite3_mutex_enter.exit.i.i31.i:                 ; preds = %bb.z, %bb.y
  %i.cb = tail call fastcc ptr @sqlite3VtabCreateModule(ptr noundef nonnull %0, ptr noundef nonnull @.str.1900, ptr noundef nonnull @geopolyModule, ptr noundef null, ptr noundef null), !inline_history !5223 ; 0 uses
  %i.cc = load i8, ptr %i.e, align 1, !tbaa !550
  %.not.i.i.i39 = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i39, label %sqlite3ApiExit.exit.thread.i.i.i, label %sqlite3ApiExit.exit.i.i32.i

sqlite3ApiExit.exit.i.i32.i:                      ; preds = %sqlite3_mutex_enter.exit.i.i31.i
  %i.cd = tail call fastcc i32 @apiHandleError(ptr noundef nonnull %0, i32 noundef 0), !inline_history !5223
  br label %sqlite3ApiExit.exit.thread.i.i.i

sqlite3ApiExit.exit.thread.i.i.i:                 ; preds = %sqlite3ApiExit.exit.i.i32.i, %sqlite3_mutex_enter.exit.i.i31.i
  %.0.i17.i.i.i = phi i32 [ %i.cd, %sqlite3ApiExit.exit.i.i32.i ], [ 0, %sqlite3_mutex_enter.exit.i.i31.i ] ; 2 uses
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %.not.i14.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i14.i.i.i, label %sqlite3_geopoly_init.exit, label %bb.aa

bb.aa:                                            ; preds = %sqlite3ApiExit.exit.thread.i.i.i
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.cf(ptr noundef nonnull %i.ce) #59, !inline_history !5227
  br label %sqlite3_geopoly_init.exit

sqlite3_geopoly_init.exit:                        ; preds = %sqlite3_create_function.exit, %sqlite3_create_function.exit20, %sqlite3_create_function.exit27, %sqlite3_create_module_v2.exit, %bb.aa, %sqlite3ApiExit.exit.thread.i.i.i, %._crit_edge.i, %.preheader.i, %sqlite3_create_module_v2.exit38
  %.4 = phi i32 [ %.0.i37.i.i.i, %.preheader.i ], [ %.0.i17.i.i36, %sqlite3_create_module_v2.exit38 ], [ %.0.i37.i.i27.i, %._crit_edge.i ], [ %.0.i17.i.i.i, %sqlite3ApiExit.exit.thread.i.i.i ], [ %.0.i17.i.i.i, %bb.aa ], [ %.0.i17.i.i, %sqlite3_create_module_v2.exit ], [ %.0.i37.i.i25, %sqlite3_create_function.exit27 ], [ %.0.i37.i.i18, %sqlite3_create_function.exit20 ], [ %.0.i37.i.i, %sqlite3_create_function.exit ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal i32 @sqlite3DbstatRegister(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.c(ptr noundef nonnull %i.b) #59, !inline_history !5228
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.b, %bb.a
  %i.d = tail call fastcc ptr @sqlite3VtabCreateModule(ptr noundef nonnull %0, ptr noundef nonnull @.str.1914, ptr noundef nonnull @sqlite3DbstatRegister.dbstat_module, ptr noundef null, ptr noundef null) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 103
  %i.f = load i8, ptr %i.e, align 1, !tbaa !550
  %.not.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i, label %sqlite3ApiExit.exit.thread.i.i, label %sqlite3ApiExit.exit.i.i

sqlite3ApiExit.exit.i.i:                          ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.g = tail call fastcc i32 @apiHandleError(ptr noundef nonnull %0, i32 noundef 0)
  br label %sqlite3ApiExit.exit.thread.i.i

sqlite3ApiExit.exit.thread.i.i:                   ; preds = %sqlite3ApiExit.exit.i.i, %sqlite3_mutex_enter.exit.i.i
  %.0.i17.i.i = phi i32 [ %i.g, %sqlite3ApiExit.exit.i.i ], [ 0, %sqlite3_mutex_enter.exit.i.i ]
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i14.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i14.i.i, label %sqlite3_create_module.exit, label %bb.c

bb.c:                                             ; preds = %sqlite3ApiExit.exit.thread.i.i
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.i(ptr noundef nonnull %i.h) #59, !inline_history !5229
  br label %sqlite3_create_module.exit

sqlite3_create_module.exit:                       ; preds = %sqlite3ApiExit.exit.thread.i.i, %bb.c
  ret i32 %.0.i17.i.i
}

; Function Attrs: nounwind uwtable
define internal i32 @sqlite3TestExtInit(ptr readnone captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 400), align 8, !tbaa !718 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %sqlite3FaultSim.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 %i.a(i32 noundef 500) #59, !inline_history !719
  br label %sqlite3FaultSim.exit

sqlite3FaultSim.exit:                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3Fts3HashInsert(ptr noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !5168
  %i.b = icmp eq i8 %i.a, 1
  %fts3StrHash.fts3BinHash.i = select i1 %i.b, ptr @fts3StrHash, ptr @fts3BinHash
  %i.c = tail call i32 %fts3StrHash.fts3BinHash.i(ptr noundef %1, i32 noundef %2) #59, !callees !5230 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !5173 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.d, align 8, !tbaa !5231
  %i.h = add nsw i32 %i.g, -1
  %i.i = and i32 %i.h, %i.c
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.k, align 8, !tbaa !5232
  %i.n = load i8, ptr %0, align 8, !tbaa !5168
  %i.o = icmp eq i8 %i.n, 1
  %fts3StrCompare.fts3BinCompare.i.i = select i1 %i.o, ptr @fts3StrCompare, ptr @fts3BinCompare
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.018.i = phi i32 [ %i.m, %bb.b ], [ %i.r, %bb.d ] ; 2 uses
  %.017.in.i = phi ptr [ %i.l, %bb.b ], [ %.017.i, %bb.d ]
  %.017.i = load ptr, ptr %.017.in.i, align 8, !tbaa !5234 ; 12 uses
  %i.p = icmp eq i32 %.018.i, 0
  %i.q = icmp eq ptr %.017.i, null
  %.not22.i = select i1 %i.p, i1 true, i1 %i.q
  br i1 %.not22.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = add nsw i32 %.018.i, -1
  %i.s = getelementptr inbounds nuw i8, ptr %.017.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !5235
  %i.u = getelementptr inbounds nuw i8, ptr %.017.i, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !5237
  %i.w = tail call i32 %fts3StrCompare.fts3BinCompare.i.i(ptr noundef %i.t, i32 noundef %i.v, ptr noundef %1, i32 noundef %2) #59, !callees !5238, !inline_history !5239
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %fts3FindElementByHash.exit, label %bb.c, !llvm.loop !5240

fts3FindElementByHash.exit:                       ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.017.i, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %.017.i, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !5241 ; 3 uses
  %i.ab = icmp eq ptr %3, null
  br i1 %i.ab, label %bb.e, label %bb.z

bb.e:                                             ; preds = %fts3FindElementByHash.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !5242 ; 3 uses
  %.not.i63 = icmp eq ptr %i.ad, null
  %i.ae = load ptr, ptr %.017.i, align 8, !tbaa !5243 ; 5 uses
  br i1 %.not.i63, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !5243
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !5244
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not26.i = icmp eq ptr %i.ae, null
  br i1 %.not26.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !5242
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !5173
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.ah, i64 %i.j ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !5245
  %i.al = icmp eq ptr %i.ak, %.017.i
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.ae, ptr %i.aj, align 8, !tbaa !5245
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = load i32, ptr %i.ai, align 8, !tbaa !5232 ; 2 uses
  %i.an = add nsw i32 %i.am, -1
  store i32 %i.an, ptr %i.ai, align 8, !tbaa !5232
  %i.ao = icmp slt i32 %i.am, 2
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.aj, align 8, !tbaa !5245
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !5172
  %.not27.i = icmp eq i8 %i.aq, 0
  br i1 %.not27.i, label %fts3HashFree.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.y, align 8, !tbaa !5235 ; 4 uses
  %.not28.i = icmp eq ptr %i.ar, null
  br i1 %.not28.i, label %fts3HashFree.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.au(ptr noundef nonnull %i.at) #59, !inline_history !5246
  br label %sqlite3_mutex_enter.exit.i.i.i

sqlite3_mutex_enter.exit.i.i.i:                   ; preds = %bb.r, %bb.q
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.aw = tail call i32 %i.av(ptr noundef nonnull %i.ar) #59, !inline_history !5247
  %i.ax = sext i32 %i.aw to i64
  %i.ay = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.az = sub nsw i64 %i.ay, %i.ax
  store i64 %i.az, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.ba = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.bb = add nsw i64 %i.ba, -1
  store i64 %i.bb, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.bc(ptr noundef nonnull %i.ar) #59, !inline_history !5248
  %i.bd = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i4.i.i.i, label %fts3HashFree.exit.i, label %bb.s

bb.s:                                             ; preds = %sqlite3_mutex_enter.exit.i.i.i
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.be(ptr noundef nonnull %i.bd) #59, !inline_history !5249
  br label %fts3HashFree.exit.i

end_hunk_13
begin_hunk_14_@sqlite3Fts3HashInsert:bb.a
  br i1 %.not60, label %._crit_edge, label %bb.ae

._crit_edge:                                      ; preds = %bb.ab
  %.pre = load i32, ptr %i.d, align 8, !tbaa !5231
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge, %bb.aa
  %i.cc = phi i32 [ %.pre, %._crit_edge ], [ %i.bz, %bb.aa ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !5250
  %.not61 = icmp slt i32 %i.ce, %i.cc
  br i1 %.not61, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cf = shl nsw i32 %i.cc, 1
  %i.cg = tail call fastcc i32 @fts3Rehash(ptr noundef nonnull %0, i32 noundef %i.cf)
  %.not62 = icmp eq i32 %i.cg, 0
  br i1 %.not62, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ch, align 4, !tbaa !5250
  br label %fts3RemoveElementByHash.exit

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %i.ci = tail call i32 @sqlite3_initialize(), !inline_history !5251
  %.not.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i, label %sqlite3_malloc64.exit.i, label %fts3RemoveElementByHash.exit

sqlite3_malloc64.exit.i:                          ; preds = %bb.af
  %i.cj = tail call fastcc ptr @sqlite3Malloc(i64 noundef 40), !inline_history !5251 ; 18 uses
  %.not.i64 = icmp eq ptr %i.cj, null
  br i1 %.not.i64, label %fts3RemoveElementByHash.exit, label %bb.ag

bb.ag:                                            ; preds = %sqlite3_malloc64.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.cj, i8 0, i64 40, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !5172
  %i.cm = icmp ne i8 %i.cl, 0
  %i.cn = icmp ne ptr %1, null
  %or.cond = and i1 %i.cn, %i.cm
  br i1 %or.cond, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.co = sext i32 %2 to i64                      ; 3 uses
  %i.cp = tail call i32 @sqlite3_initialize(), !inline_history !5251
  %.not.i.i65 = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i65, label %sqlite3_malloc64.exit.i67, label %bb.ai

sqlite3_malloc64.exit.i67:                        ; preds = %bb.ah
  %i.cq = tail call fastcc ptr @sqlite3Malloc(i64 noundef range(i64 -34359738368, 34359738353) %i.co), !inline_history !5251 ; 4 uses
  %.not.i68 = icmp eq ptr %i.cq, null
  br i1 %.not.i68, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %sqlite3_malloc64.exit.i67, %bb.ah
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store ptr null, ptr %i.cr, align 8, !tbaa !5235
  tail call fastcc void @fts3HashFree(ptr noundef nonnull %i.cj)
  br label %fts3RemoveElementByHash.exit

bb.aj:                                            ; preds = %sqlite3_malloc64.exit.i67
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cq, i8 0, i64 range(i64 -34359738368, 34359738353) %i.co, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store ptr %i.cq, ptr %i.cs, align 8, !tbaa !5235
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cq, ptr nonnull align 1 %1, i64 %i.co, i1 false)
  br label %bb.al

bb.ak:                                            ; preds = %bb.ag
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store ptr %1, ptr %i.ct, align 8, !tbaa !5235
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  store i32 %2, ptr %i.cu, align 8, !tbaa !5237
  %i.cv = load i32, ptr %i.cd, align 4, !tbaa !5250
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cd, align 4, !tbaa !5250
  %i.cx = load i32, ptr %i.d, align 8, !tbaa !5231
  %i.cy = add nsw i32 %i.cx, -1
  %i.cz = and i32 %i.cy, %i.c
  %i.da = load ptr, ptr %i.e, align 8, !tbaa !5173
  %i.db = sext i32 %i.cz to i64
  %i.dc = getelementptr inbounds [16 x i8], ptr %i.da, i64 %i.db ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !5245 ; 3 uses
  %.not.i70 = icmp eq ptr %i.de, null
  br i1 %.not.i70, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  store ptr %i.de, ptr %i.cj, align 8, !tbaa !5243
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !5242 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !5242
  %.not27.i71 = icmp eq ptr %i.dg, null
  br i1 %.not27.i71, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store ptr %i.cj, ptr %i.dg, align 8, !tbaa !5243
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cj, ptr %i.di, align 8, !tbaa !5244
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  store ptr %i.cj, ptr %i.df, align 8, !tbaa !5242
  br label %fts3HashInsertElement.exit

bb.aq:                                            ; preds = %bb.al
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !5244 ; 3 uses
  store ptr %i.dk, ptr %i.cj, align 8, !tbaa !5243
  %.not26.i72 = icmp eq ptr %i.dk, null
  br i1 %.not26.i72, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.cj, ptr %i.dl, align 8, !tbaa !5242
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr null, ptr %i.dm, align 8, !tbaa !5242
  store ptr %i.cj, ptr %i.dj, align 8, !tbaa !5244
  br label %fts3HashInsertElement.exit

fts3HashInsertElement.exit:                       ; preds = %bb.ap, %bb.as
  %i.dn = load i32, ptr %i.dc, align 8, !tbaa !5232
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.dc, align 8, !tbaa !5232
  store ptr %i.cj, ptr %i.dd, align 8, !tbaa !5245
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store ptr %3, ptr %i.dp, align 8, !tbaa !5241
  br label %fts3RemoveElementByHash.exit

fts3RemoveElementByHash.exit:                     ; preds = %bb.af, %sqlite3_malloc64.exit.i, %bb.y, %fts3HashFree.exit33.i, %.loopexit, %bb.z, %fts3HashInsertElement.exit, %bb.ai, %bb.ae
  %.0 = phi ptr [ null, %fts3HashInsertElement.exit ], [ %i.aa, %bb.y ], [ %3, %bb.ae ], [ null, %.loopexit ], [ %3, %bb.ai ], [ %i.aa, %bb.z ], [ %i.aa, %fts3HashFree.exit33.i ], [ %3, %sqlite3_malloc64.exit.i ], [ %3, %bb.af ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal void @hashDestroy(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !5174 ; 2 uses
  %i.c = add nsw i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !5174
  %i.d = icmp slt i32 %i.b, 2
  br i1 %i.d, label %bb.b, label %sqlite3_free.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @sqlite3Fts3HashClear(ptr noundef nonnull %0)
  %i.e = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.g(ptr noundef nonnull %i.f) #59, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.d, %bb.c
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0) #59, !inline_history !269
  %i.j = sext i32 %i.i to i64
  %i.k = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.l = sub nsw i64 %i.k, %i.j
  store i64 %i.l, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.n = add nsw i64 %i.m, -1
  store i64 %i.n, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.o(ptr noundef nonnull %0) #59, !inline_history !270
  %i.p = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.p, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.q(ptr noundef nonnull %i.p) #59, !inline_history !271
  br label %sqlite3_free.exit

bb.f:                                             ; preds = %bb.b
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.r(ptr noundef nonnull %0) #59, !inline_history !270
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.f, %bb.e, %sqlite3_mutex_enter.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3Fts3InitTok(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.c(ptr noundef nonnull %i.b) #59, !inline_history !5216
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.b, %bb.a
  %i.d = tail call fastcc ptr @sqlite3VtabCreateModule(ptr noundef nonnull %0, ptr noundef nonnull @.str.1603, ptr noundef nonnull @sqlite3Fts3InitTok.fts3tok_module, ptr noundef %1, ptr noundef nonnull @hashDestroy) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 103
  %i.f = load i8, ptr %i.e, align 1, !tbaa !550
  %.not.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i, label %sqlite3ApiExit.exit.thread.i.i, label %sqlite3ApiExit.exit.i.i

sqlite3ApiExit.exit.i.i:                          ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.g = tail call fastcc i32 @apiHandleError(ptr noundef nonnull %0, i32 noundef 0) ; 5 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %sqlite3ApiExit.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %sqlite3ApiExit.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !5174 ; 2 uses
  %i.j = add nsw i32 %i.i, -1
  store i32 %i.j, ptr %i.h, align 8, !tbaa !5174
  %i.k = icmp slt i32 %i.i, 2
  br i1 %i.k, label %bb.d, label %sqlite3ApiExit.exit.thread.i.i

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @sqlite3Fts3HashClear(ptr noundef nonnull %1)
  %i.l = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i.i3 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i3, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i4, label %sqlite3_mutex_enter.exit.i.i5, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.n(ptr noundef nonnull %i.m) #59, !inline_history !5252
  br label %sqlite3_mutex_enter.exit.i.i5

sqlite3_mutex_enter.exit.i.i5:                    ; preds = %bb.f, %bb.e
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.p = tail call i32 %i.o(ptr noundef nonnull %1) #59, !inline_history !5253
  %i.q = sext i32 %i.p to i64
  %i.r = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.s = sub nsw i64 %i.r, %i.q
  store i64 %i.s, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.u = add nsw i64 %i.t, -1
  store i64 %i.u, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.v(ptr noundef nonnull %1) #59, !inline_history !5254
  %i.w = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i4.i.i, label %sqlite3ApiExit.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %sqlite3_mutex_enter.exit.i.i5
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.x(ptr noundef nonnull %i.w) #59, !inline_history !5255
  br label %sqlite3ApiExit.exit.thread.i.i

bb.h:                                             ; preds = %bb.d
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.y(ptr noundef nonnull %1) #59, !inline_history !5254
  br label %sqlite3ApiExit.exit.thread.i.i

sqlite3ApiExit.exit.thread.i.i:                   ; preds = %bb.h, %bb.g, %sqlite3_mutex_enter.exit.i.i5, %bb.c, %sqlite3ApiExit.exit.i.i, %sqlite3_mutex_enter.exit.i.i
  %.0.i17.i.i = phi i32 [ 0, %sqlite3ApiExit.exit.i.i ], [ 0, %sqlite3_mutex_enter.exit.i.i ], [ %i.g, %bb.c ], [ %i.g, %sqlite3_mutex_enter.exit.i.i5 ], [ %i.g, %bb.g ], [ %i.g, %bb.h ]
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i14.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i14.i.i, label %sqlite3_create_module_v2.exit, label %bb.i

bb.i:                                             ; preds = %sqlite3ApiExit.exit.thread.i.i
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.aa(ptr noundef nonnull %i.z) #59, !inline_history !5217
  br label %sqlite3_create_module_v2.exit

sqlite3_create_module_v2.exit:                    ; preds = %sqlite3ApiExit.exit.thread.i.i, %bb.i
  ret i32 %.0.i17.i.i
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3Fts3HashClear(ptr noundef captures(none) initializes((16, 20)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !5244 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !5244
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !5173 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %fts3HashFree.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.h(ptr noundef nonnull %i.g) #59, !inline_history !5256
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.d, %bb.c
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.j = tail call i32 %i.i(ptr noundef nonnull %i.d) #59, !inline_history !5257
  %i.k = sext i32 %i.j to i64
  %i.l = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.m = sub nsw i64 %i.l, %i.k
  store i64 %i.m, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.o = add nsw i64 %i.n, -1
  store i64 %i.o, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.p(ptr noundef nonnull %i.d) #59, !inline_history !5258
  %i.q = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i4.i.i, label %fts3HashFree.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.r(ptr noundef nonnull %i.q) #59, !inline_history !5259
  br label %fts3HashFree.exit

bb.f:                                             ; preds = %bb.b
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.s(ptr noundef nonnull %i.d) #59, !inline_history !5258
  br label %fts3HashFree.exit

fts3HashFree.exit:                                ; preds = %bb.a, %sqlite3_mutex_enter.exit.i.i, %bb.e, %bb.f
  store ptr null, ptr %i.c, align 8, !tbaa !5173
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.t, align 8, !tbaa !5231
  %.not26 = icmp eq ptr %i.b, null
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %fts3HashFree.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %fts3HashFree.exit25
  %.027 = phi ptr [ %i.b, %.lr.ph ], [ %i.v, %fts3HashFree.exit25 ] ; 5 uses
  %i.v = load ptr, ptr %.027, align 8, !tbaa !5243 ; 2 uses
  %i.w = load i8, ptr %i.u, align 1, !tbaa !5172
  %.not14 = icmp eq i8 %i.w, 0
  br i1 %.not14, label %fts3HashFree.exit20, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.027, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !5235 ; 4 uses
  %.not15 = icmp eq ptr %i.y, null
  br i1 %.not15, label %fts3HashFree.exit20, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i.i16 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i16, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i17, label %sqlite3_mutex_enter.exit.i.i18, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.ab(ptr noundef nonnull %i.aa) #59, !inline_history !5256
  br label %sqlite3_mutex_enter.exit.i.i18

sqlite3_mutex_enter.exit.i.i18:                   ; preds = %bb.k, %bb.j
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.ad = tail call i32 %i.ac(ptr noundef nonnull %i.y) #59, !inline_history !5257
  %i.ae = sext i32 %i.ad to i64
  %i.af = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.ag = sub nsw i64 %i.af, %i.ae
  store i64 %i.ag, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.ah = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.ai = add nsw i64 %i.ah, -1
  store i64 %i.ai, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.aj(ptr noundef nonnull %i.y) #59, !inline_history !5258
  %i.ak = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i.i19 = icmp eq ptr %i.ak, null
  br i1 %.not.i4.i.i19, label %fts3HashFree.exit20, label %bb.l

bb.l:                                             ; preds = %sqlite3_mutex_enter.exit.i.i18
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.al(ptr noundef nonnull %i.ak) #59, !inline_history !5259
  br label %fts3HashFree.exit20

end_hunk_14
