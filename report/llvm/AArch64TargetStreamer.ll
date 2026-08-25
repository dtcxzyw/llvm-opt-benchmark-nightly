Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64TargetStreamer?download=true
begin_hunk_0_@_ZN4llvm21AArch64TargetStreamer17emitConstantPoolsEv:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41, !nonnull !19, !align !44
  tail call void @_ZN4llvm22AssemblerConstantPools7emitAllERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(304) %i.d) #14
  ret void
}

declare void @_ZN4llvm22AssemblerConstantPools7emitAllERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm21AArch64TargetStreamer6finishEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(199720) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL15MarkBTIProperty, i64 120), align 8, !tbaa !85, !range !18, !noundef !19
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm21AArch64TargetStreamer15emitNoteSectionEjmm(ptr noundef nonnull align 8 dereferenceable(199720) %0, i32 noundef 1, i64 noundef -1, i64 noundef -1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm21AArch64TargetStreamer15emitNoteSectionEjmm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(199720) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %.not = icmp eq i32 %1, 0                       ; 3 uses
  %spec.select = select i1 %.not, i64 0, i64 16   ; 2 uses
  %.not37 = icmp eq i64 %2, -1                    ; 3 uses
  %i.a = add nuw nsw i64 %spec.select, 24
  %.1 = select i1 %.not37, i64 %spec.select, i64 %i.a
  %i.b = and i1 %.not, %.not37
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41, !nonnull !19, !align !44 ; 33 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45, !nonnull !19, !align !44 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.h, align 1, !tbaa !91
  store ptr @.str.2, ptr %5, align 8, !tbaa !37
  store i8 3, ptr %i.g, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i16 257, ptr %i.i, align 8
  %i.j = call noundef ptr @_ZN4llvm9MCContext13getELFSectionERKNS_5TwineEjjjS3_bjPKNS_11MCSymbolELFE(ptr noundef nonnull align 8 dereferenceable(2208) %i.f, ptr noundef nonnull align 8 dereferenceable(34) %5, i32 noundef 7, i32 noundef 2, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(34) %4, i1 noundef zeroext false, i32 noundef -1, ptr noundef null) #14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 2
  %.not40 = icmp eq i8 %i.m, 0
  br i1 %.not40, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.o, align 1, !tbaa !91
  store ptr @.str.3, ptr %6, align 8, !tbaa !37
  store i8 3, ptr %i.n, align 8, !tbaa !94
  call void @_ZN4llvm9MCContext13reportWarningENS_5SMLocERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(2208) %i.f, ptr null, ptr noundef nonnull align 8 dereferenceable(34) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !95
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !96
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(304) %i.d, ptr noundef nonnull %i.j, i32 noundef 0) #14
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 600
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(304) %i.d, i8 3, i64 noundef 0, i8 noundef zeroext 1, i32 noundef 0) #14
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 528
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(304) %i.d, i64 noundef 4, i32 noundef 4) #14
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 528
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(304) %i.d, i64 noundef %.1, i32 noundef 4) #14
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 528
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(304) %i.d, i64 noundef 5, i32 noundef 4) #14
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 504
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(304) %i.d, ptr nonnull @.str.4, i64 4) #14
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 528
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(304) %i.d, i64 noundef 3221225472, i32 noundef 4) #14
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 528
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(304) %i.d, i64 noundef 4, i32 noundef 4) #14
  %i.ar = zext i32 %1 to i64
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 528
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(304) %i.d, i64 noundef %i.ar, i32 noundef 4) #14
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 528
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(304) %i.d, i64 noundef 0, i32 noundef 4) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %.not37, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 528
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(304) %i.d, i64 noundef 3221225473, i32 noundef 4) #14
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 528
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(304) %i.d, i64 noundef 16, i32 noundef 4) #14
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 528
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(304) %i.d, i64 noundef %2, i32 noundef 8) #14
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 528
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(304) %i.d, i64 noundef %3, i32 noundef 8) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bk = call noundef ptr @_ZN4llvm10MCStreamer10endSectionEPNS_9MCSectionE(ptr noundef nonnull align 8 dereferenceable(304) %i.d, ptr noundef nonnull %i.j) #14 ; 0 uses
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 176
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(304) %i.d, ptr noundef %i.s, i32 noundef 0) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h, %bb.a
  ret void
}

declare void @_ZN4llvm9MCContext13reportWarningENS_5SMLocERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(2208), ptr, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm10MCStreamer10endSectionEPNS_9MCSectionE(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm21AArch64TargetStreamer8emitInstEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(199720) %0, i32 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = trunc i32 %1 to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !37
  %i.c = lshr i32 %1, 8
  %.09.ptr.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = trunc i32 %i.c to i8
  store i8 %i.d, ptr %.09.ptr.1, align 1, !tbaa !37
  %i.e = lshr i32 %1, 16
  %.09.ptr.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.f = trunc i32 %i.e to i8
  store i8 %i.f, ptr %.09.ptr.2, align 1, !tbaa !37
  %i.g = lshr i32 %1, 24
  %.09.ptr.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.h = trunc nuw i32 %i.g to i8
  store i8 %i.h, ptr %.09.ptr.3, align 1, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !41, !nonnull !19, !align !44 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 504
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(304) %i.j, ptr nonnull %i.a, i64 4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm33createAArch64ObjectTargetStreamerERNS_10MCStreamerERKNS_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !101
  switch i32 %i.b, label %bb.d [
    i32 3, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(199728) ptr @_Znwm(i64 noundef 199728) #15 ; 9 uses
  tail call void @_ZN4llvm16MCTargetStreamerC2ERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(199728) %i.c, ptr noundef nonnull align 8 dereferenceable(304) %0) #14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.e, ptr %i.d, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 0, ptr %i.f, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 64, ptr %i.g, align 4, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 199712
  %i.i = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #15 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store ptr %i.k, ptr %i.j, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 0, ptr %i.l, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  store i32 0, ptr %i.m, align 4, !tbaa !24
  store ptr %i.i, ptr %i.h, align 8, !tbaa !25
  store ptr getelementptr inbounds nuw inrange(-16, 464) (i8, ptr @_ZTVN4llvm24AArch64TargetELFStreamerE, i64 16), ptr %i.c, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 199720
  store ptr null, ptr %i.n, align 8, !tbaa !109
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(199720) ptr @_Znwm(i64 noundef 199720) #15 ; 8 uses
  tail call void @_ZN4llvm16MCTargetStreamerC2ERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(199720) %i.o, ptr noundef nonnull align 8 dereferenceable(304) %0) #14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.q, ptr %i.p, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i32 0, ptr %i.r, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  store i32 64, ptr %i.s, align 4, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 199712
  %i.u = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #15 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  store ptr %i.w, ptr %i.v, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i32 0, ptr %i.x, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  store i32 0, ptr %i.y, align 4, !tbaa !24
  store ptr %i.u, ptr %i.t, align 8, !tbaa !25
  store ptr getelementptr inbounds nuw inrange(-16, 464) (i8, ptr @_ZTVN4llvm28AArch64TargetWinCOFFStreamerE, i64 16), ptr %i.o, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.o, %bb.c ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN4llvm31createAArch64NullTargetStreamerERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(304) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(199720) ptr @_Znwm(i64 noundef 199720) #15 ; 2 uses
  tail call void @_ZN4llvm21AArch64TargetStreamerC1ERNS_10MCStreamerE(ptr noundef nonnull align 8 dereferenceable(199720) %i.a, ptr noundef nonnull align 8 dereferenceable(304) %0) #14
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm21AArch64TargetStreamer24emitAttributesSubsectionENS_9StringRefENS_22AArch64BuildAttributes18SubsectionOptionalENS2_14SubsectionTypeE(ptr noundef nonnull align 8 dereferenceable(199720) %0, ptr %1, i64 %2, i32 noundef %3, i32 noundef %4) unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"struct.llvm::MCELFStreamer::AttributeSubSection", align 8 ; 15 uses
  %.fr22.i = freeze i64 %2                        ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !23   ; 3 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %.idx = mul nuw nsw i64 %i.e, 3120              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx ; 5 uses
  %.not52 = icmp eq i32 %i.d, 0
  br i1 %.not52, label %_ZN4llvm21AArch64TargetStreamer28activateAttributesSubsectionENS_9StringRefE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = icmp eq i64 %.fr22.i, 0                  ; 2 uses
  br i1 %i.g, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge.us
  %.053.us = phi ptr [ %i.h, %.critedge.us ], [ %i.b, %.lr.ph ] ; 2 uses
  %.sroa.24.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %.053.us, i64 16
  %.sroa.24.0.copyload.us = load i64, ptr %.sroa.24.0..sroa_idx.us, align 8, !tbaa !123
  %.not.i.us = icmp eq i64 %.sroa.24.0.copyload.us, 0
  br i1 %.not.i.us, label %.lr.ph.i, label %.critedge.us

.critedge.us:                                     ; preds = %.lr.ph.split.us
  %i.h = getelementptr inbounds nuw i8, ptr %.053.us, i64 3120 ; 2 uses
  %.not.us = icmp eq ptr %i.h, %i.f
  br i1 %.not.us, label %_ZN4llvm21AArch64TargetStreamer28activateAttributesSubsectionENS_9StringRefE.exit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge
  %.053 = phi ptr [ %i.x, %.critedge ], [ %i.b, %.lr.ph ] ; 3 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.053, i64 16
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !123
  %.not.i = icmp eq i64 %.fr22.i, %.sroa.24.0.copyload
  br i1 %.not.i, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %.critedge

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %.lr.ph.split
  %i.i = getelementptr inbounds nuw i8, ptr %.053, i64 8
  %.sroa.03.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !124
  %bcmp.i = tail call i32 @bcmp(ptr %1, ptr %.sroa.03.0.copyload, i64 %.fr22.i)
  %i.j = icmp eq i32 %bcmp.i, 0
  br i1 %i.j, label %.lr.ph.i, label %.critedge

.lr.ph.i:                                         ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit, %.lr.ph.split.us
  br i1 %i.g, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %i.k = add nsw i64 %.idx, -3120                 ; 2 uses
  %i.l = udiv i64 %i.k, 3120
  %i.m = add nuw nsw i64 %i.l, 1
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i.prol
  %.020.us.i.prol = phi ptr [ %i.n, %.lr.ph.split.us.i.prol ], [ %i.b, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.i.prol ], [ 0, %.lr.ph.split.us.i.preheader ]
  %.sroa.2.0..sroa_idx.us.i.prol = getelementptr inbounds nuw i8, ptr %.020.us.i.prol, i64 16
  %.sroa.2.0.copyload.us.i.prol = load i64, ptr %.sroa.2.0..sroa_idx.us.i.prol, align 8, !tbaa !123
  %.not.i.us.i.prol = icmp eq i64 %.sroa.2.0.copyload.us.i.prol, 0
  %spec.select.i.prol = zext i1 %.not.i.us.i.prol to i8
  store i8 %spec.select.i.prol, ptr %.020.us.i.prol, align 8, !tbaa !125
  %i.n = getelementptr inbounds nuw i8, ptr %.020.us.i.prol, i64 3120 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol, !llvm.loop !133

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %.lr.ph.split.us.i.prol, %.lr.ph.split.us.i.preheader
  %.020.us.i.unr = phi ptr [ %i.b, %.lr.ph.split.us.i.preheader ], [ %i.n, %.lr.ph.split.us.i.prol ]
  %i.o = icmp ult i64 %i.k, 9360
  br i1 %i.o, label %_ZN4llvm21AArch64TargetStreamer28activateAttributesSubsectionENS_9StringRefE.exit.thread, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i
  %.020.us.i = phi ptr [ %i.s, %.lr.ph.split.us.i ], [ %.020.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 9 uses
  %.sroa.2.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %.020.us.i, i64 16
  %.sroa.2.0.copyload.us.i = load i64, ptr %.sroa.2.0..sroa_idx.us.i, align 8, !tbaa !123
  %.not.i.us.i = icmp eq i64 %.sroa.2.0.copyload.us.i, 0
  %spec.select.i = zext i1 %.not.i.us.i to i8
  store i8 %spec.select.i, ptr %.020.us.i, align 8, !tbaa !125
  %i.p = getelementptr inbounds nuw i8, ptr %.020.us.i, i64 3120
  %.sroa.2.0..sroa_idx.us.i.1 = getelementptr inbounds nuw i8, ptr %.020.us.i, i64 3136
  %.sroa.2.0.copyload.us.i.1 = load i64, ptr %.sroa.2.0..sroa_idx.us.i.1, align 8, !tbaa !123
  %.not.i.us.i.1 = icmp eq i64 %.sroa.2.0.copyload.us.i.1, 0
  %spec.select.i.1 = zext i1 %.not.i.us.i.1 to i8
  store i8 %spec.select.i.1, ptr %i.p, align 8, !tbaa !125
  %i.q = getelementptr inbounds nuw i8, ptr %.020.us.i, i64 6240
  %.sroa.2.0..sroa_idx.us.i.2 = getelementptr inbounds nuw i8, ptr %.020.us.i, i64 6256
  %.sroa.2.0.copyload.us.i.2 = load i64, ptr %.sroa.2.0..sroa_idx.us.i.2, align 8, !tbaa !123
  %.not.i.us.i.2 = icmp eq i64 %.sroa.2.0.copyload.us.i.2, 0
  %spec.select.i.2 = zext i1 %.not.i.us.i.2 to i8
  store i8 %spec.select.i.2, ptr %i.q, align 8, !tbaa !125
  %i.r = getelementptr inbounds nuw i8, ptr %.020.us.i, i64 9360
  %.sroa.2.0..sroa_idx.us.i.3 = getelementptr inbounds nuw i8, ptr %.020.us.i, i64 9376
  %.sroa.2.0.copyload.us.i.3 = load i64, ptr %.sroa.2.0..sroa_idx.us.i.3, align 8, !tbaa !123
  %.not.i.us.i.3 = icmp eq i64 %.sroa.2.0.copyload.us.i.3, 0
  %spec.select.i.3 = zext i1 %.not.i.us.i.3 to i8
  store i8 %spec.select.i.3, ptr %i.r, align 8, !tbaa !125
  %i.s = getelementptr inbounds nuw i8, ptr %.020.us.i, i64 12480 ; 2 uses
  %.not.us.i.3 = icmp eq ptr %i.s, %i.f
  br i1 %.not.us.i.3, label %_ZN4llvm21AArch64TargetStreamer28activateAttributesSubsectionENS_9StringRefE.exit.thread, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZN4llvmeqENS_9StringRefES0_.exit.thread16.i
  %.020.i = phi ptr [ %i.w, %_ZN4llvmeqENS_9StringRefES0_.exit.thread16.i ], [ %i.b, %.lr.ph.i ] ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !123
  %.not.i.i = icmp eq i64 %.fr22.i, %.sroa.2.0.copyload.i
  br i1 %.not.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread16.i

_ZN4llvmeqENS_9StringRefES0_.exit.i:              ; preds = %.lr.ph.split.i
  %i.t = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.t, align 8, !tbaa !124
  %bcmp.i.i = tail call i32 @bcmp(ptr readonly %1, ptr %.sroa.0.0.copyload.i, i64 %.fr22.i)
  %bcmp.i.fr.i = freeze i32 %bcmp.i.i
  %i.u = icmp eq i32 %bcmp.i.fr.i, 0
  %spec.select21.i = zext i1 %i.u to i8
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread16.i

_ZN4llvmeqENS_9StringRefES0_.exit.thread16.i:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i, %.lr.ph.split.i
  %i.v = phi i8 [ 0, %.lr.ph.split.i ], [ %spec.select21.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i ]
  store i8 %i.v, ptr %.020.i, align 8, !tbaa !125
  %i.w = getelementptr inbounds nuw i8, ptr %.020.i, i64 3120 ; 2 uses
  %.not.i21 = icmp eq ptr %i.w, %i.f
  br i1 %.not.i21, label %_ZN4llvm21AArch64TargetStreamer28activateAttributesSubsectionENS_9StringRefE.exit.thread, label %.lr.ph.split.i

.critedge:                                        ; preds = %.lr.ph.split, %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.053, i64 3120 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.f
  br i1 %.not, label %_ZN4llvm21AArch64TargetStreamer28activateAttributesSubsectionENS_9StringRefE.exit, label %.lr.ph.split

_ZN4llvm21AArch64TargetStreamer28activateAttributesSubsectionENS_9StringRefE.exit: ; preds = %.critedge, %.critedge.us, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 64, ptr %i.ac, align 4, !tbaa !24
  store ptr %1, ptr %i.y, align 8, !tbaa !124
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %.fr22.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !123
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %3, ptr %i.ad, align 8, !tbaa !135
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 %4, ptr %i.ae, align 4, !tbaa !136
  %i.af = add nuw nsw i64 %i.e, 1                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !24
  %.not.i.i.not.i = icmp ult i32 %i.d, %i.ah
  br i1 %.not.i.i.not.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer19AttributeSubSectionELb0EE28reserveForParamAndGetAddressERKS2_m.exit.i, label %bb.b, !prof !137

bb.b:                                             ; preds = %_ZN4llvm21AArch64TargetStreamer28activateAttributesSubsectionENS_9StringRefE.exit
  %i.ai = icmp uge ptr %5, %i.b
  %i.aj = icmp ult ptr %5, %i.f
  %spec.select.i.i.i.i.i = and i1 %i.ai, %i.aj
  br i1 %spec.select.i.i.i.i.i, label %bb.c, label %.critedge.i.i.i, !prof !138

bb.c:                                             ; preds = %bb.b
  %i.ak = ptrtoint ptr %5 to i64
  %i.al = ptrtoint ptr %i.b to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_13MCELFStreamer19AttributeSubSectionELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.af)
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !21  ; 2 uses
end_hunk_0
