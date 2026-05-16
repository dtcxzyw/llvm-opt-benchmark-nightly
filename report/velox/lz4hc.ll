inline.NumInlined: 720
inline.NumDeleted: 28
begin_hunk_0_@LZ4_compressHC2_withStateHC:bb.a
  %i.s = icmp slt i32 %i.b, %i.r
  %..i.i = zext i1 %i.s to i32
  %i.t = call fastcc i32 @LZ4HC_compress_generic(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %i.b, i32 noundef %4, i32 noundef %..i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %LZ4_compress_HC_extStateHC.exit

LZ4_compress_HC_extStateHC.exit:                  ; preds = %bb.a, %LZ4_compress_HC_extStateHC_fastReset.exit.i
  %.0.i = phi i32 [ %i.t, %LZ4_compress_HC_extStateHC_fastReset.exit.i ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define i32 @LZ4_compressHC2_limitedOutput_withStateHC(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp ne ptr %0, null
  %i.c = ptrtoint ptr %0 to i64
  %i.d = and i64 %i.c, 7
  %.not.i.i = icmp eq i64 %i.d, 0
  %or.cond10.i.i = and i1 %i.b, %.not.i.i
  br i1 %or.cond10.i.i, label %LZ4_compress_HC_extStateHC_fastReset.exit.i, label %LZ4_compress_HC_extStateHC.exit

LZ4_compress_HC_extStateHC_fastReset.exit.i:      ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(262192) %0, i8 0, i64 262184, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 262180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %3, ptr %i.a, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 262144
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 262184
  store ptr null, ptr %i.g, align 8, !tbaa !31
  %i.h = icmp slt i32 %5, 1
  %i.i = tail call i32 @llvm.umin.i32(i32 %5, i32 12)
  %i.j = trunc nuw nsw i32 %i.i to i16
  %i.k = select i1 %i.h, i16 9, i16 %i.j
  store i16 %i.k, ptr %i.e, align 4, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 262168
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 262152
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 262176
  store i32 65536, ptr %i.n, align 8, !tbaa !32
  store ptr %1, ptr %i.m, align 8, !tbaa !13
  store ptr %1, ptr %i.f, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 262160
  store ptr %1, ptr %i.o, align 8, !tbaa !33
  store i32 65536, ptr %i.l, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 262172
  store i32 65536, ptr %i.p, align 4, !tbaa !34
  %i.q = tail call i32 @LZ4_compressBound(i32 noundef %3) #18
  %i.r = icmp slt i32 %4, %i.q
  %..i.i = zext i1 %i.r to i32
  %i.s = call fastcc i32 @LZ4HC_compress_generic(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %4, i32 noundef %5, i32 noundef %..i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %LZ4_compress_HC_extStateHC.exit

LZ4_compress_HC_extStateHC.exit:                  ; preds = %bb.a, %LZ4_compress_HC_extStateHC_fastReset.exit.i
  %.0.i = phi i32 [ %i.s, %LZ4_compress_HC_extStateHC_fastReset.exit.i ], [ 0, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define i32 @LZ4_compressHC_continue(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call i32 @LZ4_compressBound(i32 noundef %3) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %3, ptr %i.a, align 4, !tbaa !3
  %i.c = tail call i32 @LZ4_compressBound(i32 noundef %3) #18
  %i.d = icmp slt i32 %i.b, %i.c
  %..i = zext i1 %i.d to i32
  %i.e = call fastcc i32 @LZ4_compressHC_continue_generic(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %i.b, i32 noundef %..i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define i32 @LZ4_compressHC_limitedOutput_continue(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %3, ptr %i.a, align 4, !tbaa !3
  %i.b = tail call i32 @LZ4_compressBound(i32 noundef %3) #18
  %i.c = icmp slt i32 %4, %i.b
  %..i = zext i1 %i.c to i32
  %i.d = call fastcc i32 @LZ4_compressHC_continue_generic(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %4, i32 noundef %..i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @LZ4_sizeofStreamStateHC() local_unnamed_addr #2 {
bb.a:
  ret i32 262200
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @LZ4_resetStreamStateHC(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 7
  %.not.i = icmp eq i64 %i.c, 0
  %or.cond10.i = and i1 %i.a, %.not.i
  br i1 %or.cond10.i, label %LZ4HC_init_internal.exit, label %LZ4_initStreamHC.exit.thread

LZ4HC_init_internal.exit:                         ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(262192) %0, i8 0, i64 262192, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 262180
  store i16 9, ptr %i.d, align 4, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 262144
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 262152
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 262168
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 262176
  store i32 65536, ptr %i.h, align 8, !tbaa !32
  store ptr %1, ptr %i.f, align 8, !tbaa !13
  store ptr %1, ptr %i.e, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 262160
  store ptr %1, ptr %i.i, align 8, !tbaa !33
  store i32 65536, ptr %i.g, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 262172
  store i32 65536, ptr %i.j, align 4, !tbaa !34
  br label %LZ4_initStreamHC.exit.thread

LZ4_initStreamHC.exit.thread:                     ; preds = %bb.a, %LZ4HC_init_internal.exit
  %.0 = phi i32 [ 0, %LZ4HC_init_internal.exit ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @LZ4_createHC(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(262200) ptr @calloc(i64 noundef 1, i64 noundef 262200) #20 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %LZ4_createStreamHC.exit.thread, label %LZ4HC_init_internal.exit

LZ4HC_init_internal.exit:                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 262180
  store i16 9, ptr %i.c, align 4, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 262168
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 262152
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 262144
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 262176
  store i32 65536, ptr %i.g, align 8, !tbaa !32
  store ptr %0, ptr %i.e, align 8, !tbaa !13
  store ptr %0, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 262160
  store ptr %0, ptr %i.h, align 8, !tbaa !33
  store i32 65536, ptr %i.d, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 262172
  store i32 65536, ptr %i.i, align 4, !tbaa !34
  br label %LZ4_createStreamHC.exit.thread

LZ4_createStreamHC.exit.thread:                   ; preds = %bb.a, %LZ4HC_init_internal.exit
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i32 @LZ4_freeHC(ptr noundef captures(address_is_null) %0) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %0) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @LZ4_compressHC2_continue(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !3
  %i.b = call fastcc i32 @LZ4HC_compress_generic(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %4, i32 noundef 0)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define i32 @LZ4_compressHC2_limitedOutput_continue(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !3
  %i.b = call fastcc i32 @LZ4HC_compress_generic(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %4, i32 noundef %5, i32 noundef 1)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define ptr @LZ4_slideInputBufferHC(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 262152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 262168 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 262172
  %i.f = load i32, ptr %i.e, align 4, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 262180 ; 2 uses
  %i.h = load i16, ptr %i.g, align 4, !tbaa !35   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 262183
  %i.j = load i8, ptr %i.i, align 1, !tbaa !30
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(262192) %0, i8 0, i64 262192, i1 false)
  br label %LZ4_resetStreamHC_fast.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 262144 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !7
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.b to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = add i32 %i.d, %i.p
  store i32 %i.q, ptr %i.c, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 262184
  store ptr null, ptr %i.r, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %LZ4_resetStreamHC_fast.exit

LZ4_resetStreamHC_fast.exit:                      ; preds = %bb.b, %bb.c
  %i.s = zext i32 %i.d to i64
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds i8, ptr %i.b, i64 %i.t
  %i.v = zext i32 %i.f to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  %i.x = icmp slt i16 %i.h, 1
  %i.y = tail call i16 @llvm.umin.i16(i16 %i.h, i16 12)
  %i.z = select i1 %i.x, i16 9, i16 %i.y
  store i16 %i.z, ptr %i.g, align 4, !tbaa !27
  ret ptr %i.w
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LZ4HC_compress_generic_noDictCtx(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 3) %6) unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = icmp eq i32 %6, 2                        ; 4 uses
  %i.h = icmp slt i32 %4, 1
  %or.cond.i = and i1 %i.h, %i.g
  br i1 %or.cond.i, label %LZ4HC_compress_generic_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %3, align 4, !tbaa !3      ; 3 uses
  %i.j = icmp ugt i32 %i.i, 2113929216
  br i1 %i.j, label %LZ4HC_compress_generic_internal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 262144 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !7
  %i.m = zext nneg i32 %i.i to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  store ptr %i.n, ptr %i.k, align 8, !tbaa !7
  %i.o = icmp slt i32 %5, 1
  %i.p = tail call i32 @llvm.umin.i32(i32 %5, i32 12)
  %i.q = select i1 %i.o, i32 9, i32 %i.p
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [12 x i8], ptr @k_clTable, i64 %i.r ; 2 uses
  %.sroa.04.0.copyload.i = load i64, ptr %i.s, align 4 ; 3 uses
  %.sroa.04.0.extract.trunc.i = trunc i64 %.sroa.04.0.copyload.i to i32
  switch i32 %.sroa.04.0.extract.trunc.i, label %bb.lo [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.t = tail call fastcc i32 @LZ4MID_compress(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %4, i32 noundef range(i32 0, 3) %6, i32 noundef 0)
  br label %LZ4HC_compress_hashChain.exit

bb.e:                                             ; preds = %bb.c
  %.sroa.04.4.extract.shift.i = lshr i64 %.sroa.04.0.copyload.i, 32
  %.sroa.04.4.extract.trunc.i = trunc nuw i64 %.sroa.04.4.extract.shift.i to i32 ; 5 uses
  %i.u = icmp sgt i32 %.sroa.04.4.extract.trunc.i, 128 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.m ; 6 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -12 ; 31 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -5 ; 31 uses
  %i.y = sext i32 %4 to i64
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y ; 5 uses
  store i32 0, ptr %3, align 4, !tbaa !3
  %spec.select.i.idx = select i1 %i.g, i64 -5, i64 0
  %spec.select.i = getelementptr inbounds i8, ptr %i.z, i64 %spec.select.i.idx ; 11 uses
  %i.aa = icmp samesign ult i32 %i.i, 13
  br i1 %i.aa, label %.loopexit, label %.lr.ph1365.lr.ph

.lr.ph1365.lr.ph:                                 ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 131072 ; 15 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 262152 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 262168 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 262172 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 262160 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 262176 ; 6 uses
  %i.ah = icmp sgt i32 %.sroa.04.4.extract.trunc.i, 0 ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %i.v, i64 -8 ; 6 uses
  %i.aj = getelementptr inbounds i8, ptr %i.v, i64 -6 ; 6 uses
  %i.ak = ptrtoint ptr %i.x to i64                ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.not.i14 = icmp ne i32 %6, 0                   ; 10 uses
  br label %.lr.ph1365

.lr.ph1365:                                       ; preds = %.lr.ph1365.lr.ph, %.outer1209.backedge
  %.0332.i.ph1591 = phi ptr [ null, %.lr.ph1365.lr.ph ], [ %.0332.i.ph.be, %.outer1209.backedge ]
  %.0334.i.ph1590 = phi ptr [ null, %.lr.ph1365.lr.ph ], [ %.0334.i.ph.be, %.outer1209.backedge ]
  %.0.ph1589 = phi ptr [ %2, %.lr.ph1365.lr.ph ], [ %.0.ph.be, %.outer1209.backedge ] ; 2 uses
  %.0871.ph1588 = phi ptr [ %1, %.lr.ph1365.lr.ph ], [ %.0881.ph.be, %.outer1209.backedge ] ; 4 uses
  %.0871.ph15882835 = ptrtoint ptr %.0871.ph1588 to i64
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !13 ; 12 uses
  %i.as = load i32, ptr %i.ad, align 8, !tbaa !14 ; 14 uses
  %i.at = ptrtoint ptr %i.ar to i64               ; 4 uses
  %i.au = load i32, ptr %i.ae, align 4, !tbaa !34 ; 6 uses
  %i.av = add i32 %i.au, 65536
  %i.aw = load ptr, ptr %i.af, align 8, !tbaa !33 ; 10 uses
  %i.ax = zext i32 %i.as to i64                   ; 3 uses
  %i.ay = zext i32 %i.au to i64
  %i.az = sub nsw i64 %i.ax, %i.ay                ; 5 uses
  %.ptr1176 = getelementptr inbounds i8, ptr %i.aw, i64 %i.az ; 2 uses
  %i.ba = sub nsw i64 0, %i.ax
  %invariant.gep = getelementptr i8, ptr %i.ar, i64 %i.ba ; 3 uses
  %i.bb = add i32 %i.as, -4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bd = icmp ult ptr %i.ar, %i.w
  %i.be = icmp ult i32 %i.au, %i.as
  %i.bf = ptrtoint ptr %.ptr1176 to i64
  %.promoted = load i32, ptr %i.ag, align 8, !tbaa !32
  %i.bg = trunc i64 %.0871.ph15882835 to i32
  %i.bh = add i32 %i.as, %i.bg
  %i.bi = trunc i64 %i.at to i32
  %i.bj = sub i32 %i.bh, %i.bi
  %.not.i5632492 = icmp slt i64 %i.az, 4
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph1365, %LZ4HC_InsertAndGetWiderMatch.exit.thread
  %indvar = phi i32 [ 0, %.lr.ph1365 ], [ %indvar.next, %LZ4HC_InsertAndGetWiderMatch.exit.thread ] ; 2 uses
  %i.bk = phi i32 [ %.promoted, %.lr.ph1365 ], [ %i.bo, %LZ4HC_InsertAndGetWiderMatch.exit.thread ] ; 4 uses
  %.08811364 = phi ptr [ %.0871.ph1588, %.lr.ph1365 ], [ %i.oz, %LZ4HC_InsertAndGetWiderMatch.exit.thread ] ; 11 uses
  %i.bl = ptrtoint ptr %.08811364 to i64
  %i.bm = sub i64 %i.bl, %i.at                    ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = add i32 %i.as, %i.bn                    ; 8 uses
  %i.bp = icmp ugt i32 %i.av, %i.bo
  %i.bq = add i32 %i.bo, -65535
  %i.br = select i1 %i.bp, i32 %i.au, i32 %i.bq   ; 4 uses
  %.val459 = load i32, ptr %.08811364, align 1, !tbaa !15 ; 17 uses
  %i.bs = icmp ult i32 %i.bk, %i.bo
  br i1 %i.bs, label %.lr.ph.preheader, label %LZ4HC_Insert.exit.i

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.bt = add i32 %i.bj, %indvar
  %i.bu = zext i32 %i.bt to i64                   ; 2 uses
  %i.bv = zext i32 %i.bk to i64                   ; 6 uses
  %i.bw = zext i32 %i.bo to i64
  %i.bx = sub nsw i64 %i.bu, %i.bv
  %xtraiter = and i64 %i.bx, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %i.bv
  %.val464.prol = load i32, ptr %gep.prol, align 1, !tbaa !15
  %i.by = mul i32 %.val464.prol, -1640531535
  %i.bz = lshr i32 %i.by, 17
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = sub i32 %i.bk, %i.cc
  %i.ce = tail call i32 @llvm.umin.i32(i32 %i.cd, i32 65535)
  %i.cf = trunc nuw i32 %i.ce to i16
  %i.cg = and i64 %i.bv, 65535
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.cg
  store i16 %i.cf, ptr %i.ch, align 2, !tbaa !29
  store i32 %i.bk, ptr %i.cb, align 4, !tbaa !3
  %indvars.iv.next.prol = add nuw nsw i64 %i.bv, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.bv, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ci = add nsw i64 %i.bu, -1
  %i.cj = icmp eq i64 %i.ci, %i.bv
  br i1 %i.cj, label %LZ4HC_Insert.exit.i.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %.val464 = load i32, ptr %gep, align 1, !tbaa !15
  %i.ck = mul i32 %.val464, -1640531535
  %i.cl = lshr i32 %i.ck, 17
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cm ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.cq = sub i32 %i.cp, %i.co
  %i.cr = tail call i32 @llvm.umin.i32(i32 %i.cq, i32 65535)
  %i.cs = trunc nuw i32 %i.cr to i16
  %i.ct = and i64 %indvars.iv, 65535
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ct
  store i16 %i.cs, ptr %i.cu, align 2, !tbaa !29
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  %.val464.1 = load i32, ptr %gep.1, align 1, !tbaa !15
  %i.cv = mul i32 %.val464.1, -1640531535
  %i.cw = lshr i32 %i.cv, 17
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cx ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
end_hunk_0
