inline.NumInlined: 32
inline.NumDeleted: 7
begin_hunk_0_@_ZThn8_N9NCompress5NPpmd8CDecoder21SetDecoderProperties2EPKhj:bb.a
  ret i32 %.1.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress5NPpmd8CDecoder8CodeSpecEPhj(ptr noundef nonnull align 8 dereferenceable(19376) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 19348 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  switch i32 %i.b, label %bb.f [
    i32 2, label %.thread
    i32 3, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.d, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.d, ptr %i.f, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 0, ptr %i.g, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.h, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 0, ptr %i.i, align 4, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = tail call i32 @Ppmd7z_RangeDec_Init(ptr noundef nonnull %i.j)
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 3, ptr %i.a, align 4, !tbaa !37
  br label %.thread

bb.e:                                             ; preds = %bb.c
  store i32 1, ptr %i.a, align 4, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 19344
  %i.n = load i8, ptr %i.m, align 8, !tbaa !36
  %i.o = zext i8 %i.n to i32
  tail call void @Ppmd7_Init(ptr noundef nonnull %i.l, i32 noundef %i.o)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 19345
  %i.q = load i8, ptr %i.p, align 1, !tbaa !44, !range !45, !noundef !46
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 19352
  %i.t = load i64, ptr %i.s, align 8, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 19360
  %i.v = load i64, ptr %i.u, align 8, !tbaa !48
  %i.w = sub i64 %i.t, %i.v
  %i.x = zext i32 %2 to i64
  %spec.select24 = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %i.x)
  %spec.select = trunc nuw i64 %spec.select24 to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.119 = phi i32 [ %spec.select, %bb.g ], [ %2, %bb.f ] ; 3 uses
  %.not2225 = icmp eq i32 %.119, 0
  br i1 %.not2225, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ab = zext i32 %.119 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.ac = tail call i32 @Ppmd7_DecodeSymbol(ptr noundef nonnull %i.y, ptr noundef nonnull %i.z) ; 4 uses
  %i.ad = load i8, ptr %i.aa, align 8, !tbaa !49, !range !45, !noundef !46
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = icmp slt i32 %i.ac, 0
  %or.cond = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %or.cond, label %._crit_edge.split.loop.exit36, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = trunc i32 %i.ac to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not22 = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not22, label %._crit_edge, label %bb.i, !llvm.loop !50

._crit_edge.split.loop.exit36:                    ; preds = %bb.i
  %i.ai = trunc nuw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %._crit_edge.split.loop.exit36
  %.015.lcssa.ph = phi i32 [ %i.ai, %._crit_edge.split.loop.exit36 ], [ %.119, %bb.j ]
  %i.aj = zext i32 %.015.lcssa.ph to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 19360 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !48
  %i.am = add i64 %i.al, %i.aj
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !49, !range !45, !noundef !46
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.k, label %bb.l

._crit_edge.thread:                               ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !49, !range !45, !noundef !46
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.k, label %.thread

bb.k:                                             ; preds = %._crit_edge.thread, %._crit_edge
  store i32 3, ptr %i.a, align 4, !tbaa !37
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.au = load i32, ptr %i.at, align 4, !tbaa !52
  br label %.thread

bb.l:                                             ; preds = %._crit_edge
  %i.av = icmp slt i32 %i.ac, 0
  br i1 %i.av, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %.not23 = icmp eq i32 %i.ac, -1
  %i.aw = select i1 %.not23, i32 2, i32 3
  store i32 %i.aw, ptr %i.a, align 4, !tbaa !37
  br label %.thread

.thread:                                          ; preds = %._crit_edge.thread, %bb.k, %bb.m, %bb.l, %bb.a, %bb.d, %bb.b
  %.117 = phi i32 [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %bb.b ], [ %i.au, %bb.k ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %._crit_edge.thread ]
  ret i32 %.117
}

declare i32 @Ppmd7z_RangeDec_Init(ptr noundef) local_unnamed_addr #1

declare void @Ppmd7_Init(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Ppmd7_DecodeSymbol(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress5NPpmd8CDecoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(19376) %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr noundef %4, ptr noundef %5) unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @MidAlloc(i64 noundef 1048576) ; 2 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !10
  %.not31 = icmp eq ptr %i.d, null
  br i1 %.not31, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %1, ptr %i.e, align 8, !tbaa !53
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(19376) %0, ptr noundef %4) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 19348 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 19360 ; 7 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !48
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.n = tail call noundef i32 @_ZN9NCompress5NPpmd8CDecoder8CodeSpecEPhj(ptr noundef nonnull align 8 dereferenceable(19376) %0, ptr noundef %i.m, i32 noundef 1048576) ; 2 uses
  %i.o = load i64, ptr %i.k, align 8, !tbaa !48
  %i.p = sub i64 %i.o, %i.l
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.r = tail call noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef %2, ptr noundef %i.q, i64 noundef %i.p) ; 2 uses
  %.not3244 = icmp eq i32 %i.r, 0
  br i1 %.not3244, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.c
  %.not34 = icmp eq ptr %5, null
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 19345 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 19352 ; 2 uses
  br i1 %.not34, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge.backedge.us
  %i.x = phi i32 [ %i.ad, %.critedge.backedge.us ], [ %i.n, %.lr.ph ] ; 2 uses
  %.not33.us = icmp eq i32 %i.x, 0
  br i1 %.not33.us, label %bb.d, label %.thread

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.y = load i32, ptr %i.j, align 4, !tbaa !37
  %i.z = icmp eq i32 %i.y, 2
  br i1 %i.z, label %.thread, label %select.unfold.us

select.unfold.us:                                 ; preds = %bb.d
  %i.aa = load i8, ptr %i.v, align 1, !tbaa !44, !range !45, !noundef !46
  %i.ab = trunc nuw i8 %i.aa to i1
  %.pre57 = load i64, ptr %i.k, align 8, !tbaa !48 ; 2 uses
  %6 = load i64, ptr %i.w, align 8
  %7 = icmp uge i64 %.pre57, %6
  %or.cond.not = select i1 %i.ab, i1 %7, i1 false
  br i1 %or.cond.not, label %.thread, label %.critedge.backedge.us

.critedge.backedge.us:                            ; preds = %select.unfold.us
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.ad = tail call noundef i32 @_ZN9NCompress5NPpmd8CDecoder8CodeSpecEPhj(ptr noundef nonnull align 8 dereferenceable(19376) %0, ptr noundef %i.ac, i32 noundef 1048576)
  %i.ae = load i64, ptr %i.k, align 8, !tbaa !48
  %i.af = sub i64 %i.ae, %.pre57
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.ah = tail call noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef %2, ptr noundef %i.ag, i64 noundef %i.af) ; 2 uses
  %.not32.us = icmp eq i32 %i.ah, 0
  br i1 %.not32.us, label %.lr.ph.split.us, label %.thread, !llvm.loop !54

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge.backedge
  %i.ai = phi i32 [ %i.az, %.critedge.backedge ], [ %i.n, %.lr.ph ] ; 2 uses
  %.not33 = icmp eq i32 %i.ai, 0
  br i1 %.not33, label %bb.e, label %.thread

bb.e:                                             ; preds = %.lr.ph.split
  %i.aj = load i32, ptr %i.j, align 4, !tbaa !37
  %i.ak = icmp eq i32 %i.aj, 2
  br i1 %i.ak, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.al = load i64, ptr %i.s, align 8, !tbaa !41
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !39
  %i.an = load ptr, ptr %i.u, align 8, !tbaa !38
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = add i64 %i.al, %i.ao
  %i.ar = sub i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !55
  %i.as = load ptr, ptr %5, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef i32 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.k) ; 2 uses
  %.not35 = icmp eq i32 %i.av, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %.not35, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %bb.f
  %i.aw = load i8, ptr %i.v, align 1, !tbaa !44, !range !45, !noundef !46
  %i.ax = trunc nuw i8 %i.aw to i1
  %.pre = load i64, ptr %i.k, align 8, !tbaa !48  ; 2 uses
  %8 = load i64, ptr %i.w, align 8
  %9 = icmp uge i64 %.pre, %8
  %or.cond70.not = select i1 %i.ax, i1 %9, i1 false
  br i1 %or.cond70.not, label %.thread, label %.critedge.backedge

.critedge.backedge:                               ; preds = %select.unfold
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.az = call noundef i32 @_ZN9NCompress5NPpmd8CDecoder8CodeSpecEPhj(ptr noundef nonnull align 8 dereferenceable(19376) %0, ptr noundef %i.ay, i32 noundef 1048576)
  %i.ba = load i64, ptr %i.k, align 8, !tbaa !48
  %i.bb = sub i64 %i.ba, %.pre
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.bd = call noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef %2, ptr noundef %i.bc, i64 noundef %i.bb) ; 2 uses
  %.not32 = icmp eq i32 %i.bd, 0
  br i1 %.not32, label %.lr.ph.split, label %.thread, !llvm.loop !54

.thread:                                          ; preds = %bb.e, %.critedge.backedge, %bb.f, %.lr.ph.split, %select.unfold, %bb.d, %.critedge.backedge.us, %.lr.ph.split.us, %select.unfold.us, %bb.c, %bb.b
  %.6 = phi i32 [ -2147024882, %bb.b ], [ 0, %bb.d ], [ %i.r, %bb.c ], [ 0, %select.unfold.us ], [ %i.ah, %.critedge.backedge.us ], [ %i.x, %.lr.ph.split.us ], [ %i.ai, %.lr.ph.split ], [ 0, %select.unfold ], [ %i.bd, %.critedge.backedge ], [ %i.av, %bb.f ], [ 0, %bb.e ]
  ret i32 %.6
}

declare ptr @MidAlloc(i64 noundef) local_unnamed_addr #1

declare noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN9NCompress5NPpmd8CDecoder16SetOutStreamSizeEPKy(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(19376) initializes((19345, 19346), (19348, 19352), (19360, 19368)) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp ne ptr %1, null                     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 19345
  %i.c = zext i1 %i.a to i8
  store i8 %i.c, ptr %i.b, align 1, !tbaa !44
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 19352
  store i64 %i.d, ptr %i.e, align 8, !tbaa !47
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 19360
  store i64 0, ptr %i.f, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 19348
  store i32 0, ptr %i.g, align 4, !tbaa !37
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZThn24_N9NCompress5NPpmd8CDecoder16SetOutStreamSizeEPKy(ptr nofree noundef writeonly captures(none) initializes((19321, 19322), (19324, 19328), (19336, 19344)) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp ne ptr %1, null                     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 19321
  %i.c = zext i1 %i.a to i8
  store i8 %i.c, ptr %i.b, align 1, !tbaa !44
  br i1 %i.a, label %bb.b, label %_ZN9NCompress5NPpmd8CDecoder16SetOutStreamSizeEPKy.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 19328
  store i64 %i.d, ptr %i.e, align 8, !tbaa !47
  br label %_ZN9NCompress5NPpmd8CDecoder16SetOutStreamSizeEPKy.exit

_ZN9NCompress5NPpmd8CDecoder16SetOutStreamSizeEPKy.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 19336
  store i64 0, ptr %i.f, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 19324
  store i32 0, ptr %i.g, align 4, !tbaa !37
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress5NPpmd8CDecoder11SetInStreamEP19ISequentialInStream(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(19376) initializes((136, 144)) %0, ptr noundef %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 19368 ; 2 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !56 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %.not6.i = icmp eq ptr %i.f, null
  br i1 %.not6.i, label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f), !inline_history !56 ; 0 uses
  br label %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit

_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit: ; preds = %bb.c, %bb.d
  store ptr %1, ptr %i.a, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %1, ptr %i.k, align 8, !tbaa !53
  ret i32 0
}

; Function Attrs: uwtable
define dso_local noundef i32 @_ZThn16_N9NCompress5NPpmd8CDecoder11SetInStreamEP19ISequentialInStream(ptr nofree noundef captures(none) initializes((120, 128)) %0, ptr noundef %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 19352 ; 2 uses
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !57 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %.not6.i.i = icmp eq ptr %i.f, null
  br i1 %.not6.i.i, label %_ZN9NCompress5NPpmd8CDecoder11SetInStreamEP19ISequentialInStream.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f), !inline_history !57 ; 0 uses
  br label %_ZN9NCompress5NPpmd8CDecoder11SetInStreamEP19ISequentialInStream.exit

_ZN9NCompress5NPpmd8CDecoder11SetInStreamEP19ISequentialInStream.exit: ; preds = %bb.c, %bb.d
  store ptr %1, ptr %i.a, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %1, ptr %i.k, align 8, !tbaa !53
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress5NPpmd8CDecoder15ReleaseInStreamEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(19376) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 19368 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !58 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !33
  br label %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit

_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit: ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: uwtable
define dso_local noundef i32 @_ZThn16_N9NCompress5NPpmd8CDecoder15ReleaseInStreamEv(ptr nofree noundef captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 19352 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN9NCompress5NPpmd8CDecoder15ReleaseInStreamEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !59 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !33
  br label %_ZN9NCompress5NPpmd8CDecoder15ReleaseInStreamEv.exit

_ZN9NCompress5NPpmd8CDecoder15ReleaseInStreamEv.exit: ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress5NPpmd8CDecoder4ReadEPvjPj(ptr noundef nonnull align 8 dereferenceable(19376) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 19360 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48
  %i.c = tail call noundef i32 @_ZN9NCompress5NPpmd8CDecoder8CodeSpecEPhj(ptr noundef nonnull align 8 dereferenceable(19376) %0, ptr noundef %1, i32 noundef %2)
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !tbaa !48
  %i.e = sub i64 %i.d, %i.b
  %i.f = trunc i64 %i.e to i32
  store i32 %i.f, ptr %3, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.c
}

; Function Attrs: uwtable
define dso_local noundef i32 @_ZThn32_N9NCompress5NPpmd8CDecoder4ReadEPvjPj(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 19328 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !48
  %i.d = tail call noundef i32 @_ZN9NCompress5NPpmd8CDecoder8CodeSpecEPhj(ptr noundef nonnull align 8 dereferenceable(19376) %i.a, ptr noundef %1, i32 noundef %2)
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZN9NCompress5NPpmd8CDecoder4ReadEPvjPj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !tbaa !48
  %i.f = sub i64 %i.e, %i.c
  %i.g = trunc i64 %i.f to i32
  store i32 %i.g, ptr %3, align 4, !tbaa !4
  br label %_ZN9NCompress5NPpmd8CDecoder4ReadEPvjPj.exit

_ZN9NCompress5NPpmd8CDecoder4ReadEPvjPj.exit:     ; preds = %bb.a, %bb.b
  ret i32 %i.d
}

end_hunk_0
