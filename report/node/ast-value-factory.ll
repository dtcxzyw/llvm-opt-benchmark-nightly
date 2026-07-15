inline.NumInlined: 2456
inline.NumDeleted: 476
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK2v88internal13AstConsString12AllocateFlatINS0_7IsolateEEENS0_6HandleINS0_6StringEEEPT_:bb.a
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.ac:                                            ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.am, ptr noundef nonnull align 1 dereferenceable(13) %i.ao, i64 13, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.ad:                                            ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.am, ptr noundef nonnull align 1 dereferenceable(14) %i.ao, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.ae:                                            ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.am, ptr noundef nonnull align 1 dereferenceable(15) %i.ao, i64 15, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.af:                                            ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.am, ptr noundef nonnull align 1 dereferenceable(16) %i.ao, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.ag:                                            ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull align 1 %i.ao, i64 %i.ak, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit:    ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag
  %i.at = getelementptr inbounds nuw i8, ptr %.04084, i64 8
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not43 = icmp eq ptr %i.au, null
  br i1 %.not43, label %.loopexit, label %bb.l, !llvm.loop !13

bb.ah:                                            ; preds = %bb.e
  %i.av = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawTwoByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.r, i8 noundef zeroext 1, i8 0) #16 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.ai, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit48, !prof !10

bb.ai:                                            ; preds = %bb.ah
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #17
  unreachable

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit48: ; preds = %bb.ah
  %i.ax = load i64, ptr %i.av, align 8
  %i.ay = add i64 %i.ax, -1
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = zext nneg i32 %i.r to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.bb
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit48, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit
  %.03683 = phi ptr [ %i.a, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit48 ], [ %i.by, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit ] ; 2 uses
  %.03782 = phi ptr [ %i.bc, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit48 ], [ %i.bw, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit ] ; 2 uses
  %i.bd = load ptr, ptr %.03683, align 8          ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  %i.bf = load i8, ptr %i.be, align 4, !range !5, !noundef !6
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bi = load i64, ptr %i.bh, align 8            ; 5 uses
  %i.bj = icmp ult i64 %i.bi, 2147483648          ; 2 uses
  br i1 %i.bg, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.bj, label %bb.ao, label %bb.al, !prof !7

bb.al:                                            ; preds = %bb.ak
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

bb.am:                                            ; preds = %bb.aj
  br i1 %i.bj, label %bb.ap, label %bb.an, !prof !7

bb.an:                                            ; preds = %bb.am
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

bb.ao:                                            ; preds = %bb.ak
  %i.bk = sub nsw i64 0, %i.bi
  %i.bl = getelementptr inbounds [2 x i8], ptr %.03782, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %i.bl, ptr noundef %i.bn, i64 noundef %i.bi)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ap:                                            ; preds = %bb.am
  %i.bo = lshr i64 %i.bi, 1                       ; 2 uses
  %i.bp = sub nsw i64 0, %i.bo
  %i.bq = getelementptr inbounds [2 x i8], ptr %.03782, i64 %i.bp ; 35 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bs = load ptr, ptr %i.br, align 8            ; 17 uses
  switch i64 %i.bo, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i [
    i64 1, label %bb.aq
    i64 2, label %bb.ar
    i64 3, label %bb.as
    i64 4, label %bb.at
    i64 5, label %bb.au
    i64 6, label %bb.av
    i64 7, label %bb.aw
    i64 8, label %bb.ax
    i64 9, label %bb.ay
    i64 10, label %bb.az
    i64 11, label %bb.ba
    i64 12, label %bb.bb
    i64 13, label %bb.bc
    i64 14, label %bb.bd
    i64 15, label %bb.be
    i64 16, label %bb.bf
    i64 0, label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.bt = load i16, ptr %i.bs, align 2
  store i16 %i.bt, ptr %i.bq, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ar:                                            ; preds = %bb.ap
  %i.bu = load i32, ptr %i.bs, align 2
  store i32 %i.bu, ptr %i.bq, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.as:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.bq, ptr noundef nonnull align 2 dereferenceable(6) %i.bs, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.at:                                            ; preds = %bb.ap
  %i.bv = load i64, ptr %i.bs, align 2
  store i64 %i.bv, ptr %i.bq, align 2
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.au:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.bq, ptr noundef nonnull align 2 dereferenceable(10) %i.bs, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.av:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.bq, ptr noundef nonnull align 2 dereferenceable(12) %i.bs, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.aw:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.bq, ptr noundef nonnull align 2 dereferenceable(14) %i.bs, i64 14, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ax:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.bq, ptr noundef nonnull align 2 dereferenceable(16) %i.bs, i64 16, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ay:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.bq, ptr noundef nonnull align 2 dereferenceable(18) %i.bs, i64 18, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.az:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %i.bq, ptr noundef nonnull align 2 dereferenceable(20) %i.bs, i64 20, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.ba:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.bq, ptr noundef nonnull align 2 dereferenceable(22) %i.bs, i64 22, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bb:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %i.bq, ptr noundef nonnull align 2 dereferenceable(24) %i.bs, i64 24, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bc:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %i.bq, ptr noundef nonnull align 2 dereferenceable(26) %i.bs, i64 26, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bd:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %i.bq, ptr noundef nonnull align 2 dereferenceable(28) %i.bs, i64 28, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.be:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %i.bq, ptr noundef nonnull align 2 dereferenceable(30) %i.bs, i64 30, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

bb.bf:                                            ; preds = %bb.ap
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.bq, ptr noundef nonnull align 2 dereferenceable(32) %i.bs, i64 32, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.ap
  %.idx.i.i.i = and i64 %i.bi, 2147483646
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.bq, ptr nonnull align 2 %i.bs, i64 %.idx.i.i.i, i1 false)
  br label %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit

_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit:    ; preds = %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %i.bw = phi ptr [ %i.bl, %bb.ao ], [ %i.bq, %bb.ap ], [ %i.bq, %bb.aq ], [ %i.bq, %bb.ar ], [ %i.bq, %bb.as ], [ %i.bq, %bb.at ], [ %i.bq, %bb.au ], [ %i.bq, %bb.av ], [ %i.bq, %bb.aw ], [ %i.bq, %bb.ax ], [ %i.bq, %bb.ay ], [ %i.bq, %bb.az ], [ %i.bq, %bb.ba ], [ %i.bq, %bb.bb ], [ %i.bq, %bb.bc ], [ %i.bq, %bb.bd ], [ %i.bq, %bb.be ], [ %i.bq, %bb.bf ], [ %i.bq, %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.03683, i64 8
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %.not42 = icmp eq ptr %i.by, null
  br i1 %.not42, label %.loopexit, label %bb.aj, !llvm.loop !14

.loopexit:                                        ; preds = %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit, %bb.d, %bb.b
  %.sroa.067.0 = phi ptr [ %i.d, %bb.b ], [ %.sroa.0.0.copyload.i, %bb.d ], [ %i.u, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit ], [ %i.av, %_ZN2v88internal9CopyCharsIttEEvPT0_PKT_m.exit ]
  ret ptr %.sroa.067.0
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawOneByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawTwoByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, i8 noundef zeroext, i8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  switch i64 %2, label %bb.b [
    i64 1, label %.lr.ph.i.i.i.i.i.i.i.preheader
    i64 2, label %.lr.ph.i.i.i.i.i.i.i37.preheader
    i64 3, label %.lr.ph.i.i.i.i.i.i.i42.preheader
    i64 4, label %.lr.ph.i.i.i.i.i.i.i47.preheader
    i64 5, label %.lr.ph.i.i.i.i.i.i.i52.preheader
    i64 6, label %.lr.ph.i.i.i.i.i.i.i57.preheader
    i64 7, label %.lr.ph.i.i.i.i.i.i.i62.preheader
    i64 8, label %.lr.ph.i.i.i.i.i.i.i67.preheader
    i64 9, label %.lr.ph.i.i.i.i.i.i.i72.preheader
    i64 10, label %.lr.ph.i.i.i.i.i.i.i77.preheader
    i64 11, label %.lr.ph.i.i.i.i.i.i.i82.preheader
    i64 12, label %.lr.ph.i.i.i.i.i.i.i87.preheader
    i64 13, label %.lr.ph.i.i.i.i.i.i.i92.preheader
    i64 14, label %.lr.ph.i.i.i.i.i.i.i97.preheader
    i64 15, label %.lr.ph.i.i.i.i.i.i.i102.preheader
    i64 16, label %.lr.ph.i.i.i.i.i.i.i107.preheader
  ]

.lr.ph.i.i.i.i.i.i.i107.preheader:                ; preds = %bb.a
  %3 = load i8, ptr %1, align 1
  %4 = zext i8 %3 to i16
  store i16 %4, ptr %0, align 2
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %7 = load i8, ptr %5, align 1
  %8 = zext i8 %7 to i16
  store i16 %8, ptr %6, align 2
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %11 = load i8, ptr %9, align 1
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %10, align 2
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %15 = load i8, ptr %13, align 1
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %14, align 2
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %19 = load i8, ptr %17, align 1
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %18, align 2
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %23 = load i8, ptr %21, align 1
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %22, align 2
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %27 = load i8, ptr %25, align 1
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %26, align 2
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %31 = load i8, ptr %29, align 1
  %32 = zext i8 %31 to i16
  store i16 %32, ptr %30, align 2
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %35 = load i8, ptr %33, align 1
  %36 = zext i8 %35 to i16
  store i16 %36, ptr %34, align 2
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %39 = load i8, ptr %37, align 1
  %40 = zext i8 %39 to i16
  store i16 %40, ptr %38, align 2
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %43 = load i8, ptr %41, align 1
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %42, align 2
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %47 = load i8, ptr %45, align 1
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %46, align 2
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %51 = load i8, ptr %49, align 1
  %52 = zext i8 %51 to i16
  store i16 %52, ptr %50, align 2
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %55 = load i8, ptr %53, align 1
  %56 = zext i8 %55 to i16
  store i16 %56, ptr %54, align 2
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %59 = load i8, ptr %57, align 1
  %60 = zext i8 %59 to i16
  store i16 %60, ptr %58, align 2
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 15
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 30
  %63 = load i8, ptr %61, align 1
  %64 = zext i8 %63 to i16
  store i16 %64, ptr %62, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i102.preheader:                ; preds = %bb.a
  %65 = load i8, ptr %1, align 1
  %66 = zext i8 %65 to i16
  store i16 %66, ptr %0, align 2
  %67 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %69 = load i8, ptr %67, align 1
  %70 = zext i8 %69 to i16
  store i16 %70, ptr %68, align 2
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %73 = load i8, ptr %71, align 1
  %74 = zext i8 %73 to i16
  store i16 %74, ptr %72, align 2
  %75 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %77 = load i8, ptr %75, align 1
  %78 = zext i8 %77 to i16
  store i16 %78, ptr %76, align 2
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %81 = load i8, ptr %79, align 1
  %82 = zext i8 %81 to i16
  store i16 %82, ptr %80, align 2
  %83 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %85 = load i8, ptr %83, align 1
  %86 = zext i8 %85 to i16
  store i16 %86, ptr %84, align 2
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %89 = load i8, ptr %87, align 1
  %90 = zext i8 %89 to i16
  store i16 %90, ptr %88, align 2
  %91 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %93 = load i8, ptr %91, align 1
  %94 = zext i8 %93 to i16
  store i16 %94, ptr %92, align 2
  %95 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %97 = load i8, ptr %95, align 1
  %98 = zext i8 %97 to i16
  store i16 %98, ptr %96, align 2
  %99 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %101 = load i8, ptr %99, align 1
  %102 = zext i8 %101 to i16
  store i16 %102, ptr %100, align 2
  %103 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %105 = load i8, ptr %103, align 1
  %106 = zext i8 %105 to i16
  store i16 %106, ptr %104, align 2
  %107 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %109 = load i8, ptr %107, align 1
  %110 = zext i8 %109 to i16
  store i16 %110, ptr %108, align 2
  %111 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %113 = load i8, ptr %111, align 1
  %114 = zext i8 %113 to i16
  store i16 %114, ptr %112, align 2
  %115 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %117 = load i8, ptr %115, align 1
  %118 = zext i8 %117 to i16
  store i16 %118, ptr %116, align 2
  %119 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %121 = load i8, ptr %119, align 1
  %122 = zext i8 %121 to i16
  store i16 %122, ptr %120, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i97.preheader:                 ; preds = %bb.a
  %123 = load i8, ptr %1, align 1
  %124 = zext i8 %123 to i16
  store i16 %124, ptr %0, align 2
  %125 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %127 = load i8, ptr %125, align 1
  %128 = zext i8 %127 to i16
  store i16 %128, ptr %126, align 2
  %129 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %131 = load i8, ptr %129, align 1
  %132 = zext i8 %131 to i16
  store i16 %132, ptr %130, align 2
  %133 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %135 = load i8, ptr %133, align 1
  %136 = zext i8 %135 to i16
  store i16 %136, ptr %134, align 2
  %137 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %139 = load i8, ptr %137, align 1
  %140 = zext i8 %139 to i16
  store i16 %140, ptr %138, align 2
  %141 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %143 = load i8, ptr %141, align 1
  %144 = zext i8 %143 to i16
  store i16 %144, ptr %142, align 2
  %145 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %147 = load i8, ptr %145, align 1
  %148 = zext i8 %147 to i16
  store i16 %148, ptr %146, align 2
  %149 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %151 = load i8, ptr %149, align 1
  %152 = zext i8 %151 to i16
  store i16 %152, ptr %150, align 2
  %153 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %155 = load i8, ptr %153, align 1
  %156 = zext i8 %155 to i16
  store i16 %156, ptr %154, align 2
  %157 = getelementptr inbounds nuw i8, ptr %1, i64 9
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 18
  %159 = load i8, ptr %157, align 1
  %160 = zext i8 %159 to i16
  store i16 %160, ptr %158, align 2
  %161 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %162 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %163 = load i8, ptr %161, align 1
  %164 = zext i8 %163 to i16
  store i16 %164, ptr %162, align 2
  %165 = getelementptr inbounds nuw i8, ptr %1, i64 11
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %167 = load i8, ptr %165, align 1
  %168 = zext i8 %167 to i16
  store i16 %168, ptr %166, align 2
  %169 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %171 = load i8, ptr %169, align 1
  %172 = zext i8 %171 to i16
  store i16 %172, ptr %170, align 2
  %173 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 26
  %175 = load i8, ptr %173, align 1
  %176 = zext i8 %175 to i16
  store i16 %176, ptr %174, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i92.preheader:                 ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1
  %i.b = zext i8 %i.a to i16
  store i16 %i.b, ptr %0, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %i.c, align 1
  %i.f = zext i8 %i.e to i16
  store i16 %i.f, ptr %i.d, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i8, ptr %i.g, align 1
  %i.j = zext i8 %i.i to i16
  store i16 %i.j, ptr %i.h, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.m = load i8, ptr %i.k, align 1
  %i.n = zext i8 %i.m to i16
  store i16 %i.n, ptr %i.l, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i8, ptr %i.o, align 1
  %i.r = zext i8 %i.q to i16
  store i16 %i.r, ptr %i.p, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.u = load i8, ptr %i.s, align 1
  %i.v = zext i8 %i.u to i16
  store i16 %i.v, ptr %i.t, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = load i8, ptr %i.w, align 1
  %i.z = zext i8 %i.y to i16
  store i16 %i.z, ptr %i.x, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ac = load i8, ptr %i.aa, align 1
  %i.ad = zext i8 %i.ac to i16
  store i16 %i.ad, ptr %i.ab, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i8, ptr %i.ae, align 1
  %i.ah = zext i8 %i.ag to i16
  store i16 %i.ah, ptr %i.af, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ak = load i8, ptr %i.ai, align 1
  %i.al = zext i8 %i.ak to i16
  store i16 %i.al, ptr %i.aj, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ao = load i8, ptr %i.am, align 1
  %i.ap = zext i8 %i.ao to i16
  store i16 %i.ap, ptr %i.an, align 2
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.as = load i8, ptr %i.aq, align 1
  %i.at = zext i8 %i.as to i16
  store i16 %i.at, ptr %i.ar, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load i8, ptr %i.au, align 1
  %i.ax = zext i8 %i.aw to i16
  store i16 %i.ax, ptr %i.av, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i87.preheader:                 ; preds = %bb.a
  %i.ay = load i8, ptr %1, align 1
  %i.az = zext i8 %i.ay to i16
  store i16 %i.az, ptr %0, align 2
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bc = load i8, ptr %i.ba, align 1
  %i.bd = zext i8 %i.bc to i16
  store i16 %i.bd, ptr %i.bb, align 2
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bg = load i8, ptr %i.be, align 1
  %i.bh = zext i8 %i.bg to i16
  store i16 %i.bh, ptr %i.bf, align 2
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bk = load i8, ptr %i.bi, align 1
  %i.bl = zext i8 %i.bk to i16
  store i16 %i.bl, ptr %i.bj, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load i8, ptr %i.bm, align 1
  %i.bp = zext i8 %i.bo to i16
  store i16 %i.bp, ptr %i.bn, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bs = load i8, ptr %i.bq, align 1
  %i.bt = zext i8 %i.bs to i16
  store i16 %i.bt, ptr %i.br, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bw = load i8, ptr %i.bu, align 1
  %i.bx = zext i8 %i.bw to i16
  store i16 %i.bx, ptr %i.bv, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ca = load i8, ptr %i.by, align 1
  %i.cb = zext i8 %i.ca to i16
  store i16 %i.cb, ptr %i.bz, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ce = load i8, ptr %i.cc, align 1
  %i.cf = zext i8 %i.ce to i16
  store i16 %i.cf, ptr %i.cd, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ci = load i8, ptr %i.cg, align 1
  %i.cj = zext i8 %i.ci to i16
  store i16 %i.cj, ptr %i.ch, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cm = load i8, ptr %i.ck, align 1
  %i.cn = zext i8 %i.cm to i16
  store i16 %i.cn, ptr %i.cl, align 2
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.cq = load i8, ptr %i.co, align 1
  %i.cr = zext i8 %i.cq to i16
  store i16 %i.cr, ptr %i.cp, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i82.preheader:                 ; preds = %bb.a
  %i.cs = load i8, ptr %1, align 1
  %i.ct = zext i8 %i.cs to i16
  store i16 %i.ct, ptr %0, align 2
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cw = load i8, ptr %i.cu, align 1
  %i.cx = zext i8 %i.cw to i16
  store i16 %i.cx, ptr %i.cv, align 2
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.da = load i8, ptr %i.cy, align 1
  %i.db = zext i8 %i.da to i16
  store i16 %i.db, ptr %i.cz, align 2
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.de = load i8, ptr %i.dc, align 1
  %i.df = zext i8 %i.de to i16
  store i16 %i.df, ptr %i.dd, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.di = load i8, ptr %i.dg, align 1
  %i.dj = zext i8 %i.di to i16
  store i16 %i.dj, ptr %i.dh, align 2
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.dm = load i8, ptr %i.dk, align 1
  %i.dn = zext i8 %i.dm to i16
  store i16 %i.dn, ptr %i.dl, align 2
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dq = load i8, ptr %i.do, align 1
  %i.dr = zext i8 %i.dq to i16
  store i16 %i.dr, ptr %i.dp, align 2
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.du = load i8, ptr %i.ds, align 1
  %i.dv = zext i8 %i.du to i16
  store i16 %i.dv, ptr %i.dt, align 2
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dy = load i8, ptr %i.dw, align 1
  %i.dz = zext i8 %i.dy to i16
  store i16 %i.dz, ptr %i.dx, align 2
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ec = load i8, ptr %i.ea, align 1
  %i.ed = zext i8 %i.ec to i16
  store i16 %i.ed, ptr %i.eb, align 2
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.eg = load i8, ptr %i.ee, align 1
  %i.eh = zext i8 %i.eg to i16
  store i16 %i.eh, ptr %i.ef, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i77.preheader:                 ; preds = %bb.a
  %i.ei = load i8, ptr %1, align 1
  %i.ej = zext i8 %i.ei to i16
  store i16 %i.ej, ptr %0, align 2
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.em = load i8, ptr %i.ek, align 1
  %i.en = zext i8 %i.em to i16
  store i16 %i.en, ptr %i.el, align 2
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.eq = load i8, ptr %i.eo, align 1
  %i.er = zext i8 %i.eq to i16
  store i16 %i.er, ptr %i.ep, align 2
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 6
end_hunk_0
begin_hunk_1_@_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m:bb.a
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.jo = load i8, ptr %i.jm, align 1
  %i.jp = zext i8 %i.jo to i16
  store i16 %i.jp, ptr %i.jn, align 2
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.js = load i8, ptr %i.jq, align 1
  %i.jt = zext i8 %i.js to i16
  store i16 %i.jt, ptr %i.jr, align 2
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jw = load i8, ptr %i.ju, align 1
  %i.jx = zext i8 %i.jw to i16
  store i16 %i.jx, ptr %i.jv, align 2
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ka = load i8, ptr %i.jy, align 1
  %i.kb = zext i8 %i.ka to i16
  store i16 %i.kb, ptr %i.jz, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i52.preheader:                 ; preds = %bb.a
  %i.kc = load i8, ptr %1, align 1
  %i.kd = zext i8 %i.kc to i16
  store i16 %i.kd, ptr %0, align 2
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.kg = load i8, ptr %i.ke, align 1
  %i.kh = zext i8 %i.kg to i16
  store i16 %i.kh, ptr %i.kf, align 2
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.kk = load i8, ptr %i.ki, align 1
  %i.kl = zext i8 %i.kk to i16
  store i16 %i.kl, ptr %i.kj, align 2
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ko = load i8, ptr %i.km, align 1
  %i.kp = zext i8 %i.ko to i16
  store i16 %i.kp, ptr %i.kn, align 2
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ks = load i8, ptr %i.kq, align 1
  %i.kt = zext i8 %i.ks to i16
  store i16 %i.kt, ptr %i.kr, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i47.preheader:                 ; preds = %bb.a
  %i.ku = load i8, ptr %1, align 1
  %i.kv = zext i8 %i.ku to i16
  store i16 %i.kv, ptr %0, align 2
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ky = load i8, ptr %i.kw, align 1
  %i.kz = zext i8 %i.ky to i16
  store i16 %i.kz, ptr %i.kx, align 2
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.lc = load i8, ptr %i.la, align 1
  %i.ld = zext i8 %i.lc to i16
  store i16 %i.ld, ptr %i.lb, align 2
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.lg = load i8, ptr %i.le, align 1
  %i.lh = zext i8 %i.lg to i16
  store i16 %i.lh, ptr %i.lf, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i42.preheader:                 ; preds = %bb.a
  %i.li = load i8, ptr %1, align 1
  %i.lj = zext i8 %i.li to i16
  store i16 %i.lj, ptr %0, align 2
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lm = load i8, ptr %i.lk, align 1
  %i.ln = zext i8 %i.lm to i16
  store i16 %i.ln, ptr %i.ll, align 2
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.lq = load i8, ptr %i.lo, align 1
  %i.lr = zext i8 %i.lq to i16
  store i16 %i.lr, ptr %i.lp, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i37.preheader:                 ; preds = %bb.a
  %i.ls = load i8, ptr %1, align 1
  %i.lt = zext i8 %i.ls to i16
  store i16 %i.lt, ptr %0, align 2
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lw = load i8, ptr %i.lu, align 1
  %i.lx = zext i8 %i.lw to i16
  store i16 %i.lx, ptr %i.lv, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.a
  %i.ly = load i8, ptr %1, align 1
  %i.lz = zext i8 %i.ly to i16
  store i16 %i.lz, ptr %0, align 2
  br label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

bb.b:                                             ; preds = %bb.a
  %i.ma = icmp sgt i64 %2, 0
  br i1 %i.ma, label %iter.check, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.mb = shl nuw i64 %2, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.mb
  %scevgep148 = getelementptr i8, ptr %1, i64 %2
  %bound0 = icmp ult ptr %0, %scevgep148
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check149 = icmp ult i64 %2, 16
  br i1 %min.iters.check149, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 12
  %n.vec = and i64 %2, 9223372036854775792        ; 5 uses
  %i.mc = and i64 %2, 15
  %i.md = shl nuw i64 %n.vec, 1
  %i.me = getelementptr i8, ptr %0, i64 %i.md
  %i.mf = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.mg = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %0, i64 %i.mg ; 2 uses
  %next.gep150 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.mh = getelementptr i8, ptr %next.gep150, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep150, align 1, !alias.scope !15
  %wide.load151 = load <8 x i8>, ptr %i.mh, align 1, !alias.scope !15
  %i.mi = zext <8 x i8> %wide.load to <8 x i16>
  %i.mj = zext <8 x i8> %wide.load151 to <8 x i16>
  %i.mk = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.mi, ptr %next.gep, align 2, !alias.scope !18, !noalias !15
  store <8 x i16> %i.mj, ptr %i.mk, align 2, !alias.scope !18, !noalias !15
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ml = icmp eq i64 %index.next, %n.vec
  br i1 %i.ml, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec155 = and i64 %2, 9223372036854775804     ; 4 uses
  %i.mm = and i64 %2, 3
  %i.mn = shl nuw i64 %n.vec155, 1
  %i.mo = getelementptr i8, ptr %0, i64 %i.mn
  %i.mp = getelementptr i8, ptr %1, i64 %n.vec155
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index156 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next160, %vec.epilog.vector.body ] ; 3 uses
  %i.mq = shl i64 %index156, 1
  %next.gep157 = getelementptr i8, ptr %0, i64 %i.mq
  %next.gep158 = getelementptr i8, ptr %1, i64 %index156
  %wide.load159 = load <4 x i8>, ptr %next.gep158, align 1, !alias.scope !15
  %i.mr = zext <4 x i8> %wide.load159 to <4 x i16>
  store <4 x i16> %i.mr, ptr %next.gep157, align 2, !alias.scope !18, !noalias !15
  %index.next160 = add nuw i64 %index156, 4       ; 2 uses
  %i.ms = icmp eq i64 %index.next160, %n.vec155
  br i1 %i.ms, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !24

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n161 = icmp eq i64 %2, %n.vec155
  br i1 %cmp.n161, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, label %.lr.ph.i.i.i.i.i.i.i112.preheader

.lr.ph.i.i.i.i.i.i.i112.preheader:                ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i113.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.mc, %vec.epilog.iter.check ], [ %i.mm, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i114.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.me, %vec.epilog.iter.check ], [ %i.mo, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i115.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.mf, %vec.epilog.iter.check ], [ %i.mp, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i112

.lr.ph.i.i.i.i.i.i.i112:                          ; preds = %.lr.ph.i.i.i.i.i.i.i112.preheader, %.lr.ph.i.i.i.i.i.i.i112
  %.012.i.i.i.i.i.i.i113 = phi i64 [ %i.mx, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.012.i.i.i.i.i.i.i113.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i114 = phi ptr [ %i.mw, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0811.i.i.i.i.i.i.i114.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i115 = phi ptr [ %i.mv, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0910.i.i.i.i.i.i.i115.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %i.mt = load i8, ptr %.0910.i.i.i.i.i.i.i115, align 1
  %i.mu = zext i8 %i.mt to i16
  store i16 %i.mu, ptr %.0811.i.i.i.i.i.i.i114, align 2
  %i.mv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i115, i64 1
  %i.mw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i114, i64 2
  %i.mx = add nsw i64 %.012.i.i.i.i.i.i.i113, -1
  %i.my = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i113, 1
  br i1 %i.my, label %.lr.ph.i.i.i.i.i.i.i112, label %_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit, !llvm.loop !25

_ZSt6copy_nIPKhiPtET1_T_T0_S3_.exit:              ; preds = %.lr.ph.i.i.i.i.i.i.i112, %middle.block, %vec.epilog.middle.block, %.lr.ph.i.i.i.i.i.i.i107.preheader, %.lr.ph.i.i.i.i.i.i.i102.preheader, %.lr.ph.i.i.i.i.i.i.i97.preheader, %.lr.ph.i.i.i.i.i.i.i92.preheader, %.lr.ph.i.i.i.i.i.i.i87.preheader, %.lr.ph.i.i.i.i.i.i.i82.preheader, %.lr.ph.i.i.i.i.i.i.i77.preheader, %.lr.ph.i.i.i.i.i.i.i72.preheader, %.lr.ph.i.i.i.i.i.i.i67.preheader, %.lr.ph.i.i.i.i.i.i.i62.preheader, %.lr.ph.i.i.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i.i.i52.preheader, %.lr.ph.i.i.i.i.i.i.i47.preheader, %.lr.ph.i.i.i.i.i.i.i42.preheader, %.lr.ph.i.i.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i.i.i.preheader, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZNK2v88internal13AstConsString12AllocateFlatINS0_12LocalIsolateEEENS0_6HandleINS0_6StringEEEPT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1952
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 688
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8
  br label %.loopexit

bb.e:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit
  br i1 %spec.select, label %bb.j, label %bb.ah

.preheader:                                       ; preds = %bb.c, %_ZNK2v88internal12AstRawString6lengthEv.exit
  %.081 = phi i32 [ %i.t, %_ZNK2v88internal12AstRawString6lengthEv.exit ], [ 0, %bb.c ]
  %.03580 = phi i1 [ %spec.select, %_ZNK2v88internal12AstRawString6lengthEv.exit ], [ true, %bb.c ]
  %.03879 = phi ptr [ %i.v, %_ZNK2v88internal12AstRawString6lengthEv.exit ], [ %i.a, %bb.c ] ; 2 uses
  %i.i = load ptr, ptr %.03879, align 8           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.k = load i8, ptr %i.j, align 4, !range !5, !noundef !6
  %i.l = trunc nuw i8 %i.k to i1                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8              ; 3 uses
  %i.o = icmp ult i64 %i.n, 2147483648            ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.preheader
  br i1 %i.o, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i:          ; preds = %bb.f
  %i.p = trunc nuw nsw i64 %i.n to i32
  br label %_ZNK2v88internal12AstRawString6lengthEv.exit

bb.h:                                             ; preds = %.preheader
  br i1 %i.o, label %_ZNK2v84base6VectorIKhE6lengthEv.exit1.i, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit1.i:         ; preds = %bb.h
  %i.q = trunc nuw nsw i64 %i.n to i32
  %i.r = lshr i32 %i.q, 1
  br label %_ZNK2v88internal12AstRawString6lengthEv.exit

_ZNK2v88internal12AstRawString6lengthEv.exit:     ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, %_ZNK2v84base6VectorIKhE6lengthEv.exit1.i
  %i.s = phi i32 [ %i.p, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i ], [ %i.r, %_ZNK2v84base6VectorIKhE6lengthEv.exit1.i ]
  %i.t = add nuw nsw i32 %i.s, %.081              ; 5 uses
  %spec.select = and i1 %.03580, %i.l             ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.03879, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not41 = icmp eq ptr %i.v, null
  br i1 %.not41, label %bb.e, label %.preheader, !llvm.loop !26

bb.j:                                             ; preds = %bb.e
  %i.w = tail call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE19NewRawOneByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.t, i8 noundef zeroext 1, i8 0) #16 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.k, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, !prof !10

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4) #17
  unreachable

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %bb.j
  %i.y = load i64, ptr %i.w, align 8
  %i.z = add i64 %i.y, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = zext nneg i32 %i.t to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  br label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit
  %.03985 = phi ptr [ %i.ad, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit ], [ %i.ao, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit ]
  %.04084 = phi ptr [ %i.a, %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit ], [ %i.aw, %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit ] ; 2 uses
  %i.ae = load ptr, ptr %.04084, align 8          ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.ag = load i8, ptr %i.af, align 4, !range !5, !noundef !6
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = load i64, ptr %i.ai, align 8            ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 2147483648          ; 2 uses
  br i1 %i.ah, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  br i1 %i.ak, label %_ZNK2v88internal12AstRawString6lengthEv.exit46, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

bb.o:                                             ; preds = %bb.l
  br i1 %i.ak, label %_ZNK2v84base6VectorIKhE6lengthEv.exit1.i44, label %bb.p, !prof !7

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #17
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit1.i44:       ; preds = %bb.o
  %i.al = lshr i64 %i.aj, 1
  br label %_ZNK2v88internal12AstRawString6lengthEv.exit46

_ZNK2v88internal12AstRawString6lengthEv.exit46:   ; preds = %bb.m, %_ZNK2v84base6VectorIKhE6lengthEv.exit1.i44
  %i.am = phi i64 [ %i.al, %_ZNK2v84base6VectorIKhE6lengthEv.exit1.i44 ], [ %i.aj, %bb.m ] ; 3 uses
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds i8, ptr %.03985, i64 %i.an ; 18 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8            ; 17 uses
  switch i64 %i.am, label %bb.ag [
    i64 1, label %bb.q
    i64 2, label %bb.r
    i64 3, label %bb.s
    i64 4, label %bb.t
    i64 5, label %bb.u
    i64 6, label %bb.v
    i64 7, label %bb.w
    i64 8, label %bb.x
    i64 9, label %bb.y
    i64 10, label %bb.z
    i64 11, label %bb.aa
    i64 12, label %bb.ab
    i64 13, label %bb.ac
    i64 14, label %bb.ad
    i64 15, label %bb.ae
    i64 16, label %bb.af
    i64 0, label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit
  ]

bb.q:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  %i.ar = load i8, ptr %i.aq, align 1
  store i8 %i.ar, ptr %i.ao, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.r:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  %i.as = load i16, ptr %i.aq, align 1
  store i16 %i.as, ptr %i.ao, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.s:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ao, ptr noundef nonnull align 1 dereferenceable(3) %i.aq, i64 3, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.t:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  %i.at = load i32, ptr %i.aq, align 1
  store i32 %i.at, ptr %i.ao, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.u:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.ao, ptr noundef nonnull align 1 dereferenceable(5) %i.aq, i64 5, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.v:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ao, ptr noundef nonnull align 1 dereferenceable(6) %i.aq, i64 6, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.w:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ao, ptr noundef nonnull align 1 dereferenceable(7) %i.aq, i64 7, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.x:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  %i.au = load i64, ptr %i.aq, align 1
  store i64 %i.au, ptr %i.ao, align 1
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.y:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ao, ptr noundef nonnull align 1 dereferenceable(9) %i.aq, i64 9, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.z:                                             ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.ao, ptr noundef nonnull align 1 dereferenceable(10) %i.aq, i64 10, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.aa:                                            ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ao, ptr noundef nonnull align 1 dereferenceable(11) %i.aq, i64 11, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

bb.ab:                                            ; preds = %_ZNK2v88internal12AstRawString6lengthEv.exit46
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ao, ptr noundef nonnull align 1 dereferenceable(12) %i.aq, i64 12, i1 false)
  br label %_ZN2v88internal9CopyCharsIhhEEvPT0_PKT_m.exit

end_hunk_1
