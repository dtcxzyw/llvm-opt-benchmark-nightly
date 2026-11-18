Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/PpmdEncoder?download=true
inline.NumInlined: 31
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9NCompress5NPpmd8CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj:bb.a
  %i.j = and i32 %i.f, 3
  %.not28 = icmp eq i32 %i.j, 0
  %or.cond29 = and i1 %or.cond, %.not28
  br i1 %or.cond29, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  store i32 %i.f, ptr %i.b, align 8, !tbaa !45
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.k = add i32 %i.f, -33
  %or.cond3 = icmp ult i32 %i.k, -31
  br i1 %or.cond3, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = trunc nuw nsw i32 %i.f to i8
  store i8 %i.l, ptr %i.a, align 4, !tbaa !46
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !0

.critedge:                                        ; preds = %bb.h, %bb.c, %bb.d, %bb.f, %bb.b, %bb.a
  %i.m = phi i32 [ 0, %bb.a ], [ -2147024809, %bb.c ], [ -2147024809, %bb.d ], [ -2147024809, %bb.f ], [ -2147024809, %bb.b ], [ 0, %bb.h ]
  ret i32 %i.m
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 -2147024809, 1) i32 @_ZThn8_N9NCompress5NPpmd8CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #9 align 2 !guid !65 {
bb.a:
  %.not40.i = icmp eq i32 %3, 0
  br i1 %.not40.i, label %_ZN9NCompress5NPpmd8CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 19316
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 19312
  %wide.trip.count.i = zext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !51
  %.not.i = icmp eq i16 %i.d, 19
  br i1 %.not.i, label %bb.c, label %_ZN9NCompress5NPpmd8CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !52   ; 5 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.h = load i32, ptr %i.g, align 4, !tbaa !8
  switch i32 %i.h, label %_ZN9NCompress5NPpmd8CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit [
    i32 2, label %bb.d
    i32 3, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = add i32 %i.f, -65536
  %or.cond.i = icmp ult i32 %i.i, -65572
  %i.j = and i32 %i.f, 3
  %.not28.i = icmp eq i32 %i.j, 0
  %or.cond29.i = and i1 %or.cond.i, %.not28.i
  br i1 %or.cond29.i, label %bb.e, label %_ZN9NCompress5NPpmd8CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit

bb.e:                                             ; preds = %bb.d
  store i32 %i.f, ptr %i.b, align 8, !tbaa !45
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.k = add i32 %i.f, -33
  %or.cond3.i = icmp ult i32 %i.k, -31
  br i1 %or.cond3.i, label %_ZN9NCompress5NPpmd8CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = trunc nuw nsw i32 %i.f to i8
  store i8 %i.l, ptr %i.a, align 4, !tbaa !46
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN9NCompress5NPpmd8CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit, label %bb.b, !llvm.loop !0

_ZN9NCompress5NPpmd8CEncoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.f, %bb.h, %bb.a
  %i.m = phi i32 [ 0, %bb.a ], [ 0, %bb.h ], [ -2147024809, %bb.b ], [ -2147024809, %bb.f ], [ -2147024809, %bb.d ], [ -2147024809, %bb.c ]
  ret i32 %i.m
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress5NPpmd8CEncoder20WriteCoderPropertiesEP20ISequentialOutStream(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(19325) %0, ptr noundef %1) unnamed_addr #0 align 2 !guid !66 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 19324
  %i.c = load i8, ptr %i.b, align 4, !tbaa !46
  store i8 %i.c, ptr %i.a, align 1, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 19320
  %i.e = load i32, ptr %i.d, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i32 %i.e, ptr %i.f, align 1, !tbaa !8
  %i.g = call noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef 5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %i.g
}

declare noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define dso_local noundef i32 @_ZThn16_N9NCompress5NPpmd8CEncoder20WriteCoderPropertiesEP20ISequentialOutStream(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #10 align 2 !guid !67 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 19308
  %i.c = load i8, ptr %i.b, align 4, !tbaa !46
  store i8 %i.c, ptr %i.a, align 1, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 19304
  %i.e = load i32, ptr %i.d, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i32 %i.e, ptr %i.f, align 1, !tbaa !8
  %i.g = call noundef i32 @_Z11WriteStreamP20ISequentialOutStreamPKvm(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef 5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %i.g
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress5NPpmd8CEncoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo(ptr noundef nonnull align 8 dereferenceable(19325) %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr noundef %5) unnamed_addr #0 align 2 !guid !70 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 13 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @MidAlloc(i64 noundef 1048576) ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !44
  %.not35 = icmp eq ptr %i.f, null
  br i1 %.not35, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = tail call noundef zeroext i1 @_ZN15CByteOutBufWrap5AllocEm(ptr noundef nonnull align 8 dereferenceable(60) %i.g, i64 noundef 1048576)
  br i1 %i.h, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 19320
  %i.k = load i32, ptr %i.j, align 8, !tbaa !45
  %i.l = tail call i32 @Ppmd7_Alloc(ptr noundef nonnull %i.i, i32 noundef %i.k, ptr noundef nonnull @_ZN9NCompress5NPpmdL10g_BigAllocE)
  %.not36 = icmp eq i32 %i.l, 0
  br i1 %.not36, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %2, ptr %i.m, align 8, !tbaa !71
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !72   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !73
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i64, ptr %i.q, align 8, !tbaa !74
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.s, ptr %i.t, align 8, !tbaa !75
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i64 0, ptr %i.u, align 8, !tbaa !76
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store i32 0, ptr %i.v, align 8, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  tail call void @Ppmd7z_RangeEnc_Init(ptr noundef nonnull %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 19324
  %i.y = load i8, ptr %i.x, align 4, !tbaa !46
  %i.z = zext i8 %i.y to i32
  tail call void @Ppmd7_Init(ptr noundef nonnull %i.i, i32 noundef %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.ab = load ptr, ptr %1, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef i32 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.aa, i32 noundef 1048576, ptr noundef nonnull %i.b) ; 2 uses
  %.not3755 = icmp eq i32 %i.ae, 0
  br i1 %.not3755, label %.lr.ph57, label %.thread43

.lr.ph57:                                         ; preds = %bb.e
  %.not40 = icmp eq ptr %5, null
  br i1 %.not40, label %.lr.ph57.split.us, label %.lr.ph57.split

.lr.ph57.split.us:                                ; preds = %.lr.ph57, %.backedge.us
  %i.af = phi i64 [ %i.ap, %.backedge.us ], [ 0, %.lr.ph57 ]
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !8
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.split59.us.a, label %.lr.ph.us

bb.f:                                             ; preds = %.lr.ph.us
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !8
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %.not39.us = icmp samesign ult i64 %indvars.iv.next74, %i.aj
  br i1 %.not39.us, label %.lr.ph.us, label %.backedge.us, !llvm.loop !68

.lr.ph.us:                                        ; preds = %.lr.ph57.split.us, %bb.f
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %bb.f ], [ 0, %.lr.ph57.split.us ] ; 2 uses
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv73
  %i.am = load i8, ptr %i.al, align 1, !tbaa !52
  %i.an = zext i8 %i.am to i32
  call void @Ppmd7_EncodeSymbol(ptr noundef nonnull %i.i, ptr noundef nonnull %i.w, i32 noundef %i.an)
  %i.ao = load i32, ptr %i.v, align 8, !tbaa !79  ; 2 uses
  %.not38.us = icmp eq i32 %i.ao, 0
  br i1 %.not38.us, label %bb.f, label %.thread43

.backedge.us:                                     ; preds = %bb.f
  %i.ap = add i64 %i.af, %i.aj                    ; 2 uses
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.ar = load ptr, ptr %1, align 8, !tbaa !26
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call noundef i32 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.aq, i32 noundef 1048576, ptr noundef nonnull %i.b) ; 2 uses
  %.not37.us = icmp eq i32 %i.au, 0
  br i1 %.not37.us, label %.lr.ph57.split.us, label %.thread43, !llvm.loop !69

.lr.ph57.split:                                   ; preds = %.lr.ph57, %.backedge
  %i.av = load i32, ptr %i.b, align 4, !tbaa !8
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.split59.us.a, label %.lr.ph

.split59.us.a:                                    ; preds = %.lr.ph57.split, %.lr.ph57.split.us
  call void @Ppmd7z_RangeEnc_FlushData(ptr noundef nonnull %i.w)
  %i.ax = call noundef i32 @_ZN15CByteOutBufWrap5FlushEv(ptr noundef nonnull align 8 dereferenceable(60) %i.g)
  br label %.thread43

bb.g:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = load i32, ptr %i.b, align 4, !tbaa !8
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %.not39 = icmp samesign ult i64 %indvars.iv.next, %i.az
  br i1 %.not39, label %.lr.ph, label %.split, !llvm.loop !68

.lr.ph:                                           ; preds = %.lr.ph57.split, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.lr.ph57.split ] ; 2 uses
  %i.ba = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !52
  %i.bd = zext i8 %i.bc to i32
  call void @Ppmd7_EncodeSymbol(ptr noundef nonnull %i.i, ptr noundef nonnull %i.w, i32 noundef %i.bd)
  %i.be = load i32, ptr %i.v, align 8, !tbaa !79  ; 2 uses
  %.not38 = icmp eq i32 %i.be, 0
  br i1 %.not38, label %bb.g, label %.thread43

.split:                                           ; preds = %bb.g
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !78
  %i.bg = add i64 %i.bf, %i.az
  store i64 %i.bg, ptr %i.a, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.bh = load i64, ptr %i.u, align 8, !tbaa !76
  %i.bi = load ptr, ptr %i.p, align 8, !tbaa !73
  %i.bj = load ptr, ptr %i.n, align 8, !tbaa !72
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = add i64 %i.bh, %i.bk
  %i.bn = sub i64 %i.bm, %i.bl
  store i64 %i.bn, ptr %i.c, align 8, !tbaa !78
  %i.bo = load ptr, ptr %5, align 8, !tbaa !26
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef i32 %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) ; 2 uses
  %.not41 = icmp eq i32 %i.br, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br i1 %.not41, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.bt = load ptr, ptr %1, align 8, !tbaa !26
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = call noundef i32 %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bs, i32 noundef 1048576, ptr noundef nonnull %i.b) ; 2 uses
  %.not37 = icmp eq i32 %i.bw, 0
  br i1 %.not37, label %.lr.ph57.split, label %.thread43, !llvm.loop !69

.thread43:                                        ; preds = %.backedge, %.lr.ph, %.backedge.us, %.lr.ph.us, %bb.e, %.split59.us.a
  %.7.ph = phi i32 [ %i.ax, %.split59.us.a ], [ %i.ao, %.lr.ph.us ], [ %i.au, %.backedge.us ], [ %i.ae, %bb.e ], [ %i.be, %.lr.ph ], [ %i.bw, %.backedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.thread43
  %.746 = phi i32 [ %.7.ph, %.thread43 ], [ %i.br, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b, %.loopexit
  %.8 = phi i32 [ %.746, %.loopexit ], [ -2147024882, %bb.c ], [ -2147024882, %bb.b ], [ -2147024882, %bb.d ]
  ret i32 %.8
}

declare ptr @MidAlloc(i64 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN15CByteOutBufWrap5AllocEm(ptr noundef nonnull align 8 dereferenceable(60), i64 noundef) local_unnamed_addr #1

declare i32 @Ppmd7_Alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @Ppmd7z_RangeEnc_Init(ptr noundef) local_unnamed_addr #1

declare void @Ppmd7_Init(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Ppmd7z_RangeEnc_FlushData(ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZN15CByteOutBufWrap5FlushEv(ptr noundef nonnull align 8 dereferenceable(60)) local_unnamed_addr #1

declare void @Ppmd7_EncodeSymbol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN9NCompress5NPpmd8CEncoder14QueryInterfaceERK4GUIDPPv(ptr noundef nonnull align 8 dereferenceable(19325) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !guid !80 {
bb.a:
  %i.a = load i8, ptr %1, align 4, !tbaa !52      ; 3 uses
  %i.b = load i8, ptr @IID_IUnknown, align 4, !tbaa !52
  %.not.i = icmp eq i8 %i.a, %i.b
  br i1 %.not.i, label %bb.b, label %_ZeqRK4GUIDS1_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !52
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 1), align 1, !tbaa !52
  %.not.1.i = icmp eq i8 %i.d, %i.e
  br i1 %.not.1.i, label %bb.c, label %_ZeqRK4GUIDS1_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.g = load i8, ptr %i.f, align 2, !tbaa !52
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 2), align 2, !tbaa !52
  %.not.2.i = icmp eq i8 %i.g, %i.h
  br i1 %.not.2.i, label %bb.d, label %_ZeqRK4GUIDS1_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !52
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 3), align 1, !tbaa !52
  %.not.3.i = icmp eq i8 %i.j, %i.k
  br i1 %.not.3.i, label %bb.e, label %_ZeqRK4GUIDS1_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i8, ptr %i.l, align 4, !tbaa !52
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 4), align 4, !tbaa !52
  %.not.4.i = icmp eq i8 %i.m, %i.n
  br i1 %.not.4.i, label %bb.f, label %_ZeqRK4GUIDS1_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !52
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 5), align 1, !tbaa !52
  %.not.5.i = icmp eq i8 %i.p, %i.q
  br i1 %.not.5.i, label %bb.g, label %_ZeqRK4GUIDS1_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.s = load i8, ptr %i.r, align 2, !tbaa !52
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 6), align 2, !tbaa !52
  %.not.6.i = icmp eq i8 %i.s, %i.t
  br i1 %.not.6.i, label %bb.h, label %_ZeqRK4GUIDS1_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.v = load i8, ptr %i.u, align 1, !tbaa !52
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 7), align 1, !tbaa !52
  %.not.7.i = icmp eq i8 %i.v, %i.w
  br i1 %.not.7.i, label %bb.i, label %_ZeqRK4GUIDS1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i8, ptr %i.x, align 4, !tbaa !52
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 8), align 4, !tbaa !52
  %.not.8.i = icmp eq i8 %i.y, %i.z
  br i1 %.not.8.i, label %bb.j, label %_ZeqRK4GUIDS1_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !52
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 9), align 1, !tbaa !52
  %.not.9.i = icmp eq i8 %i.ab, %i.ac
  br i1 %.not.9.i, label %bb.k, label %_ZeqRK4GUIDS1_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !52
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 10), align 2, !tbaa !52
  %.not.10.i = icmp eq i8 %i.ae, %i.af
  br i1 %.not.10.i, label %bb.l, label %_ZeqRK4GUIDS1_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !52
  %i.ai = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 11), align 1, !tbaa !52
  %.not.11.i = icmp eq i8 %i.ah, %i.ai
  br i1 %.not.11.i, label %bb.m, label %_ZeqRK4GUIDS1_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !52
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 12), align 4, !tbaa !52
  %.not.12.i = icmp eq i8 %i.ak, %i.al
  br i1 %.not.12.i, label %bb.n, label %_ZeqRK4GUIDS1_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.an = load i8, ptr %i.am, align 1, !tbaa !52
  %i.ao = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 13), align 1, !tbaa !52
  %.not.13.i = icmp eq i8 %i.an, %i.ao
  br i1 %.not.13.i, label %bb.o, label %_ZeqRK4GUIDS1_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !52
  %i.ar = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 14), align 2, !tbaa !52
  %.not.14.i = icmp eq i8 %i.aq, %i.ar
  br i1 %.not.14.i, label %_ZeqRK4GUIDS1_.exit, label %_ZeqRK4GUIDS1_.exit.thread

_ZeqRK4GUIDS1_.exit:                              ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.at = load i8, ptr %i.as, align 1, !tbaa !52
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @IID_IUnknown, i64 15), align 1, !tbaa !52
  %.not.15.i.not = icmp eq i8 %i.at, %i.au
  br i1 %.not.15.i.not, label %_ZeqRK4GUIDS1_.exit44.thread.sink.split, label %_ZeqRK4GUIDS1_.exit.thread

_ZeqRK4GUIDS1_.exit.thread:                       ; preds = %bb.m, %bb.h, %bb.l, %bb.g, %bb.n, %bb.f, %bb.j, %bb.e, %bb.o, %bb.d, %bb.k, %bb.c, %bb.b, %bb.i, %bb.a, %_ZeqRK4GUIDS1_.exit
  %i.av = load i8, ptr @IID_ICompressSetCoderProperties, align 4, !tbaa !52
end_hunk_0
