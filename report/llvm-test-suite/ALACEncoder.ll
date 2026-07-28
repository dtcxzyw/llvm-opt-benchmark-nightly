inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN11ALACEncoder6EncodeE22AudioFormatDescriptionS0_PhS1_Pi:bb.a
bb.f:                                             ; preds = %bb.a
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef 0, i32 noundef 3)
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef 0, i32 noundef 4)
  %i.n = call noundef i32 @_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %6, ptr noundef %3, i32 noundef 1, i32 noundef 0, i32 noundef %i.d) ; 2 uses
  %.not67 = icmp eq i32 %i.n, 0
  br i1 %.not67, label %.loopexit, label %.thread

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i16, ptr %i.o, align 8, !tbaa !10
  %i.q = sext i16 %i.p to i32
  %i.r = add nsw i32 %i.q, 7
  %i.s = sdiv i32 %i.r, 8                         ; 3 uses
  %i.t = shl nsw i32 %i.s, 1
  %i.u = load i32, ptr %i.g, align 4, !tbaa !60   ; 5 uses
  %i.v = add i32 %i.u, -1
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @_ZL12sChannelMaps, i64 %i.w
  br label %bb.h

bb.h:                                             ; preds = %bb.n, %bb.g
  %.060 = phi ptr [ %3, %bb.g ], [ %.161, %bb.n ] ; 4 uses
  %.056 = phi i32 [ 0, %bb.g ], [ %.157, %bb.n ]  ; 8 uses
  %.053 = phi i8 [ 0, %bb.g ], [ %.154, %bb.n ]   ; 4 uses
  %.051 = phi i8 [ 0, %bb.g ], [ %.152, %bb.n ]   ; 4 uses
  %.050 = phi i8 [ 0, %bb.g ], [ %.1, %bb.n ]     ; 4 uses
  %i.y = icmp ult i32 %.056, %i.u
  br i1 %i.y, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.z = load i32, ptr %i.x, align 4, !tbaa !4
  %i.aa = zext i32 %i.z to i64
  %i.ab = mul i32 %.056, 3
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = shl i64 7, %i.ac
  %i.ae = and i64 %i.ad, %i.aa
  %i.af = lshr i64 %i.ae, %i.ac
  %i.ag = trunc nuw i64 %i.af to i32              ; 3 uses
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef %i.ag, i32 noundef 3)
  switch i32 %i.ag, label %bb.m [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 3, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.ah = zext i8 %.051 to i32
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef %i.ah, i32 noundef 4)
  %i.ai = call noundef i32 @_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %6, ptr noundef %.060, i32 noundef %i.u, i32 noundef %.056, i32 noundef %i.d)
  %i.aj = add nuw i32 %.056, 1
  %i.ak = add i8 %.051, 1
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.al = zext i8 %.053 to i32
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef %i.al, i32 noundef 4)
  %i.am = call noundef i32 @_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %6, ptr noundef %.060, i32 noundef %i.u, i32 noundef %.056, i32 noundef %i.d)
  %i.an = add i32 %.056, 2
  %i.ao = add i8 %.053, 1
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.ap = zext i8 %.050 to i32
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef %i.ap, i32 noundef 4)
  %i.aq = call noundef i32 @_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %6, ptr noundef %.060, i32 noundef %i.u, i32 noundef %.056, i32 noundef %i.d)
  %i.ar = add nuw i32 %.056, 1
  %i.as = add i8 %.050, 1
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.at = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ag) ; 0 uses
  br label %.thread

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.pn.in = phi i32 [ %i.s, %bb.j ], [ %i.t, %bb.k ], [ %i.s, %bb.l ]
  %.2 = phi i32 [ %i.ai, %bb.j ], [ %i.am, %bb.k ], [ %i.aq, %bb.l ] ; 2 uses
  %.157 = phi i32 [ %i.aj, %bb.j ], [ %i.an, %bb.k ], [ %i.ar, %bb.l ]
  %.154 = phi i8 [ %.053, %bb.j ], [ %i.ao, %bb.k ], [ %.053, %bb.l ]
  %.152 = phi i8 [ %i.ak, %bb.j ], [ %.051, %bb.k ], [ %.051, %bb.l ]
  %.1 = phi i8 [ %.050, %bb.j ], [ %.050, %bb.k ], [ %i.as, %bb.l ]
  %.pn = zext i32 %.pn.in to i64
  %.161 = getelementptr inbounds nuw i8, ptr %.060, i64 %.pn
  %.not = icmp eq i32 %.2, 0
  br i1 %.not, label %bb.h, label %.thread, !llvm.loop !63

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.e
  call void @BitBufferWrite(ptr noundef nonnull %6, i32 noundef 7, i32 noundef 3)
  call void @BitBufferByteAlign(ptr noundef nonnull %6, i32 noundef 1)
  %i.au = call i32 @BitBufferGetPosition(ptr noundef nonnull %6)
  %i.av = lshr i32 %i.au, 3                       ; 3 uses
  store i32 %i.av, ptr %5, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8272 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !64
  %i.ay = add i32 %i.ax, %i.av
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !64
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8280 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !65
  %. = call i32 @llvm.umax.i32(i32 %i.ba, i32 %i.av)
  store i32 %., ptr %i.az, align 8, !tbaa !65
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.m, %.loopexit, %bb.e, %bb.f
  %.4 = phi i32 [ %.058, %bb.e ], [ 0, %.loopexit ], [ %i.n, %bb.f ], [ -50, %bb.m ], [ %.2, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret i32 %.4
}

declare void @BitBufferByteAlign(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN11ALACEncoder6FinishEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11ALACEncoder9GetConfigER18ALACSpecificConfig(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8300) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(24) initializes((0, 24)) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8284
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27
  %i.c = tail call i32 @Swap32NtoB(i32 noundef %i.b)
  store i32 %i.c, ptr %1, align 4, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 0, ptr %i.d, align 4, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i16, ptr %i.e, align 8, !tbaa !10
  %i.g = trunc i16 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.g, ptr %i.h, align 1, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 40, ptr %i.i, align 2, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 14, ptr %i.j, align 4, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 10, ptr %i.k, align 1, !tbaa !72
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8292
  %i.m = load i32, ptr %i.l, align 4, !tbaa !73
  %i.n = trunc i32 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.n, ptr %i.o, align 1, !tbaa !74
  %i.p = tail call zeroext i16 @Swap16NtoB(i16 noundef zeroext 255)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.p, ptr %i.q, align 2, !tbaa !75
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8280
  %i.s = load i32, ptr %i.r, align 8, !tbaa !65
  %i.t = tail call i32 @Swap32NtoB(i32 noundef %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.t, ptr %i.u, align 4, !tbaa !76
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8276
  %i.w = load i32, ptr %i.v, align 4, !tbaa !77
  %i.x = tail call i32 @Swap32NtoB(i32 noundef %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.x, ptr %i.y, align 4, !tbaa !78
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8296
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !79
  %i.ab = tail call i32 @Swap32NtoB(i32 noundef %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !80
  ret void
}

declare i32 @Swap32NtoB(i32 noundef) local_unnamed_addr #7

declare zeroext i16 @Swap16NtoB(i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 24, 49) i32 @_ZN11ALACEncoder18GetMagicCookieSizeEj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8300) %0, i32 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp ugt i32 %1, 2
  %. = select i1 %i.a, i32 48, i32 24
  ret i32 %.
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11ALACEncoder14GetMagicCookieEPvPj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8300) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8284
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27
  %i.c = tail call i32 @Swap32NtoB(i32 noundef %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !10
  %i.f = trunc i16 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8292
  %i.h = load i32, ptr %i.g, align 4, !tbaa !73   ; 2 uses
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = tail call zeroext i16 @Swap16NtoB(i16 noundef zeroext 255)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8280
  %i.l = load i32, ptr %i.k, align 8, !tbaa !65
  %i.m = tail call i32 @Swap32NtoB(i32 noundef %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8276
  %i.o = load i32, ptr %i.n, align 4, !tbaa !77
  %i.p = tail call i32 @Swap32NtoB(i32 noundef %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8296
  %i.r = load i32, ptr %i.q, align 8, !tbaa !79
  %i.s = tail call i32 @Swap32NtoB(i32 noundef %i.r)
  %i.t = icmp ugt i8 %i.i, 2                      ; 2 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.mask = and i32 %i.h, 255
  %3 = zext nneg i32 %.mask to i64
  %4 = getelementptr [4 x i8], ptr @_ZL21ALACChannelLayoutTags, i64 %3
  %5 = getelementptr i8, ptr %4, i64 -4
  %i.u = load i32, ptr %5, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.09.0 = phi i32 [ %i.u, %bb.b ], [ 0, %bb.a ]
  %.0 = phi i32 [ 48, %bb.b ], [ 24, %bb.a ]      ; 3 uses
  %i.v = load i32, ptr %2, align 4, !tbaa !4
  %.not = icmp ult i32 %i.v, %.0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.c, ptr %1, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.f, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 40, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 10, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 14, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.i, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.j, ptr %.sroa.13.0..sroa_idx, align 1
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.m, ptr %.sroa.14.0..sroa_idx, align 1
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.p, ptr %.sroa.15.0..sroa_idx, align 1
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.s, ptr %.sroa.16.0..sroa_idx, align 1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.w, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN11ALACEncoder14GetMagicCookieEPvPj.theChannelAtom, i64 3, i1 false)
  %.sroa.4.0..0.2.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 24, ptr %.sroa.4.0..0.2.sroa_idx, align 1
  %.sroa.5.0..0.2.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i64 1851877475, ptr %.sroa.5.0..0.2.sroa_idx, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %.sroa.09.0, ptr %i.x, align 1
  %.sroa.510.0..0.4.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %.sroa.510.0..0.4.sroa_idx, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %storemerge = phi i32 [ %.0, %bb.d ], [ %.0, %bb.e ], [ 0, %bb.c ]
  store i32 %storemerge, ptr %2, align 4, !tbaa !4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -108, 1) i32 @_ZN11ALACEncoder17InitializeEncoderE22AudioFormatDescription(ptr noundef nonnull align 8 dereferenceable(8300) initializes((12, 28), (32, 80), (8288, 8300)) %0, ptr nofree noundef readonly byval(%struct.AudioFormatDescription) align 8 captures(none) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !81
  %i.b = fptoui double %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8296
  store i32 %i.b, ptr %i.c, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !60   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8292 ; 3 uses
  store i32 %i.e, ptr %i.f, align 4, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !82
  %switch.tableidx = add i32 %i.h, -1             ; 2 uses
  %i.i = icmp ult i32 %switch.tableidx, 4
  br i1 %i.i, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.j = shl nuw nsw i32 %switch.tableidx, 4
  %switch.shiftamt = zext nneg i32 %i.j to i64
  %switch.downshift = lshr i64 9007302335266832, %switch.shiftamt
  %switch.masked = trunc i64 %switch.downshift to i16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %switch.masked, ptr %i.k, align 8, !tbaa !10
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8284 ; 5 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !27   ; 2 uses
  %i.o = mul i32 %i.e, 5
  %i.p = mul i32 %i.o, %i.n
  %i.q = add i32 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8288 ; 2 uses
  store i32 %i.q, ptr %i.r, align 8, !tbaa !29
  %i.s = zext i32 %i.n to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = tail call noalias ptr @calloc(i64 noundef %i.t, i64 noundef 1) #16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.u, ptr %i.v, align 8, !tbaa !19
  %i.w = load i32, ptr %i.m, align 4, !tbaa !27
  %i.x = zext i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 2
  %i.z = tail call noalias ptr @calloc(i64 noundef %i.y, i64 noundef 1) #16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !20
  %i.ab = load i32, ptr %i.m, align 4, !tbaa !27
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = tail call noalias ptr @calloc(i64 noundef %i.ad, i64 noundef 1) #16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !21
  %i.ag = load i32, ptr %i.m, align 4, !tbaa !27
  %i.ah = zext i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = tail call noalias ptr @calloc(i64 noundef %i.ai, i64 noundef 1) #16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !22
  %i.al = load i32, ptr %i.m, align 4, !tbaa !27
  %i.am = shl i32 %i.al, 1
  %i.an = zext i32 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 1
  %i.ap = tail call noalias ptr @calloc(i64 noundef %i.ao, i64 noundef 1) #16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !23
  %i.ar = load i32, ptr %i.r, align 8, !tbaa !29
  %i.as = zext i32 %i.ar to i64
  %i.at = tail call noalias ptr @calloc(i64 noundef %i.as, i64 noundef 1) #16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.at, ptr %i.au, align 8, !tbaa !24
  %i.av = insertelement <4 x ptr> poison, ptr %i.u, i64 0
  %i.aw = insertelement <4 x ptr> %i.av, ptr %i.z, i64 1
  %i.ax = insertelement <4 x ptr> %i.aw, ptr %i.ae, i64 2
  %i.ay = insertelement <4 x ptr> %i.ax, ptr %i.aj, i64 3
  %i.az = icmp eq <4 x ptr> %i.ay, splat (ptr null)
  %i.ba = bitcast <4 x i1> %i.az to i4
  %.not = icmp eq i4 %i.ba, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %.not18 = icmp eq ptr %i.ap, null
  %.not19 = icmp eq ptr %i.at, null
  %or.cond = or i1 %.not18, %.not19
  br i1 %or.cond, label %.loopexit, label %.preheader23

.preheader23:                                     ; preds = %bb.c
  %i.bb = load i32, ptr %i.f, align 4, !tbaa !73
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader23
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4176
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %.preheader ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [512 x i8], ptr %i.bd, i64 %indvars.iv ; 16 uses
  %i.bg = getelementptr inbounds nuw [512 x i8], ptr %i.be, i64 %indvars.iv ; 16 uses
  tail call void @init_coefs(ptr noundef nonnull %i.bf, i32 noundef 9, i32 noundef 16)
  tail call void @init_coefs(ptr noundef nonnull %i.bg, i32 noundef 9, i32 noundef 16)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  tail call void @init_coefs(ptr noundef nonnull %i.bh, i32 noundef 9, i32 noundef 16)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  tail call void @init_coefs(ptr noundef nonnull %i.bi, i32 noundef 9, i32 noundef 16)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  tail call void @init_coefs(ptr noundef nonnull %i.bj, i32 noundef 9, i32 noundef 16)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  tail call void @init_coefs(ptr noundef nonnull %i.bk, i32 noundef 9, i32 noundef 16)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  tail call void @init_coefs(ptr noundef nonnull %i.bl, i32 noundef 9, i32 noundef 16)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  tail call void @init_coefs(ptr noundef nonnull %i.bm, i32 noundef 9, i32 noundef 16)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 128
  tail call void @init_coefs(ptr noundef nonnull %i.bn, i32 noundef 9, i32 noundef 16)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  tail call void @init_coefs(ptr noundef nonnull %i.bo, i32 noundef 9, i32 noundef 16)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 160
  tail call void @init_coefs(ptr noundef nonnull %i.bp, i32 noundef 9, i32 noundef 16)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 160
  tail call void @init_coefs(ptr noundef nonnull %i.bq, i32 noundef 9, i32 noundef 16)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 192
  tail call void @init_coefs(ptr noundef nonnull %i.br, i32 noundef 9, i32 noundef 16)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 192
  tail call void @init_coefs(ptr noundef nonnull %i.bs, i32 noundef 9, i32 noundef 16)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 224
  tail call void @init_coefs(ptr noundef nonnull %i.bt, i32 noundef 9, i32 noundef 16)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 224
  tail call void @init_coefs(ptr noundef nonnull %i.bu, i32 noundef 9, i32 noundef 16)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bf, i64 256
  tail call void @init_coefs(ptr noundef nonnull %i.bv, i32 noundef 9, i32 noundef 16)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 256
  tail call void @init_coefs(ptr noundef nonnull %i.bw, i32 noundef 9, i32 noundef 16)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 288
  tail call void @init_coefs(ptr noundef nonnull %i.bx, i32 noundef 9, i32 noundef 16)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bg, i64 288
  tail call void @init_coefs(ptr noundef nonnull %i.by, i32 noundef 9, i32 noundef 16)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bf, i64 320
  tail call void @init_coefs(ptr noundef nonnull %i.bz, i32 noundef 9, i32 noundef 16)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bg, i64 320
  tail call void @init_coefs(ptr noundef nonnull %i.ca, i32 noundef 9, i32 noundef 16)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bf, i64 352
  tail call void @init_coefs(ptr noundef nonnull %i.cb, i32 noundef 9, i32 noundef 16)
end_hunk_0
