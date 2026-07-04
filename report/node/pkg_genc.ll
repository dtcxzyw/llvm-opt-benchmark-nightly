inline.NumInlined: 45
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@writeAssemblyCode:bb.a
  %i.gm = getelementptr inbounds nuw i8, ptr %.028.i, i64 1
  store i8 %i.gl, ptr %.028.i, align 1
  br label %_ZL7write32P11_FileStreamjj.exit

bb.w:                                             ; preds = %bb.u
  %i.gn = load i32, ptr @_ZL7hexType, align 4
  switch i32 %i.gn, label %bb.z [
    i32 0, label %bb.x
    i32 1, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.go = getelementptr inbounds nuw i8, ptr %.028.i, i64 1
  store i8 48, ptr %.028.i, align 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.028.i, i64 2
  store i8 120, ptr %i.go, align 1
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.gq = getelementptr inbounds nuw i8, ptr %.028.i, i64 1
  store i8 48, ptr %.028.i, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %.129.i = phi ptr [ %i.gp, %bb.x ], [ %i.gq, %bb.y ], [ %.028.i, %bb.w ] ; 4 uses
  %.not.not.i = icmp eq i32 %.sroa.4.0.extract.shift.i, 0
  br i1 %.not.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gr = lshr i32 %i.fw, 28
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr @_ZZL7write32P11_FileStreamjjE8hexToStr, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1
  %i.gv = getelementptr inbounds nuw i8, ptr %.129.i, i64 1
  store i8 %i.gu, ptr %.129.i, align 1
  %i.gw = and i32 %.sroa.4.0.extract.shift.i, 15
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr @_ZZL7write32P11_FileStreamjjE8hexToStr, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1
  %i.ha = getelementptr inbounds nuw i8, ptr %.129.i, i64 2
  store i8 %i.gz, ptr %i.gv, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.3.i = phi ptr [ %i.ha, %bb.aa ], [ %.129.i, %bb.z ] ; 4 uses
  %i.hb = and i32 %i.fw, 16711680
  %i.hc = or disjoint i32 %.sroa.4.0.extract.shift.i, %i.hb ; 2 uses
  %or.cond.1.not.not.i = icmp eq i32 %i.hc, 0
  br i1 %or.cond.1.not.not.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hd = lshr i32 %i.fw, 20
  %i.he = and i32 %i.hd, 15
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr @_ZZL7write32P11_FileStreamjjE8hexToStr, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1
  %i.hi = getelementptr inbounds nuw i8, ptr %.3.i, i64 1
  store i8 %i.hh, ptr %.3.i, align 1
  %i.hj = and i32 %.sroa.3.0.extract.shift.i, 15
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr @_ZZL7write32P11_FileStreamjjE8hexToStr, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1
  %i.hn = getelementptr inbounds nuw i8, ptr %.3.i, i64 2
  store i8 %i.hm, ptr %i.hi, align 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.3.1.i = phi ptr [ %i.hn, %bb.ac ], [ %.3.i, %bb.ab ] ; 4 uses
  %i.ho = and i32 %i.fw, 65280
  %i.hp = or disjoint i32 %i.hc, %i.ho            ; 2 uses
  %or.cond.2.not.not.i = icmp eq i32 %i.hp, 0
  br i1 %or.cond.2.not.not.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hq = lshr i32 %i.fw, 12
  %i.hr = and i32 %i.hq, 15
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr @_ZZL7write32P11_FileStreamjjE8hexToStr, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1
  %i.hv = getelementptr inbounds nuw i8, ptr %.3.1.i, i64 1
  store i8 %i.hu, ptr %.3.1.i, align 1
  %i.hw = and i32 %.sroa.2.0.extract.shift.i, 15
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr @_ZZL7write32P11_FileStreamjjE8hexToStr, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1
  %i.ia = getelementptr inbounds nuw i8, ptr %.3.1.i, i64 2
  store i8 %i.hz, ptr %i.hv, align 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.3.2.i = phi ptr [ %i.ia, %bb.ae ], [ %.3.1.i, %bb.ad ] ; 4 uses
  %i.ib = and i32 %i.fw, 255
  %i.ic = or i32 %i.hp, %i.ib
  %or.cond.3.not.i = icmp eq i32 %i.ic, 0
  br i1 %or.cond.3.not.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.id = lshr i32 %i.fw, 4
  %i.ie = and i32 %i.id, 15
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr @_ZZL7write32P11_FileStreamjjE8hexToStr, i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1
  %i.ii = getelementptr inbounds nuw i8, ptr %.3.2.i, i64 1
  store i8 %i.ih, ptr %.3.2.i, align 1
  %i.ij = and i32 %i.fw, 15
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr @_ZZL7write32P11_FileStreamjjE8hexToStr, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1
  %i.in = getelementptr inbounds nuw i8, ptr %.3.2.i, i64 2
  store i8 %i.im, ptr %i.ii, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.3.3.i = phi ptr [ %i.in, %bb.ag ], [ %.3.2.i, %bb.af ] ; 3 uses
  %i.io = load i32, ptr @_ZL7hexType, align 4
  %i.ip = icmp eq i32 %i.io, 1
  br i1 %i.ip, label %bb.ai, label %_ZL7write32P11_FileStreamjj.exit

bb.ai:                                            ; preds = %bb.ah
  %i.iq = getelementptr inbounds nuw i8, ptr %.3.3.i, i64 1
  store i8 104, ptr %.3.3.i, align 1
  br label %_ZL7write32P11_FileStreamjj.exit

_ZL7write32P11_FileStreamjj.exit:                 ; preds = %bb.v, %bb.ah, %bb.ai
  %.5.i = phi ptr [ %i.gm, %bb.v ], [ %i.iq, %bb.ai ], [ %.3.3.i, %bb.ah ]
  store i8 0, ptr %.5.i, align 1
  %i.ir = call i32 @T_FileStream_writeLine(ptr noundef nonnull %i.o, ptr noundef nonnull %i.a) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.is = add nuw nsw i64 %.153, 1                ; 2 uses
  %exitcond59.not = icmp eq i64 %i.is, %i.fu
  br i1 %exitcond59.not, label %.loopexit, label %.lr.ph54, !llvm.loop !13

._crit_edge56:                                    ; preds = %.loopexit, %bb.q
  %i.it = call i32 @T_FileStream_writeLine(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.23) #16 ; 0 uses
  %i.iu = load i32, ptr @_ZL19assemblyHeaderIndex, align 4
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds [40 x i8], ptr @_ZL14assemblyHeader, i64 %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %6, i64 noundef 4096, ptr noundef %i.iy, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) #16
  %i.ja = icmp ugt i32 %i.iz, 4095
  br i1 %i.ja, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge56
  %i.jb = load ptr, ptr @stderr, align 8
  %i.jc = call i64 @fwrite(ptr nonnull @.str.22, i64 47, i64 1, ptr %i.jb) #14 ; 0 uses
  call void @exit(i32 noundef 1) #17
  unreachable

bb.ak:                                            ; preds = %._crit_edge56
  %i.jd = call i32 @T_FileStream_writeLine(ptr noundef nonnull %i.o, ptr noundef nonnull %6) #16 ; 0 uses
  %i.je = call i32 @T_FileStream_error(ptr noundef nonnull %i.c) #16
  %.not49 = icmp eq i32 %i.je, 0
  br i1 %.not49, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jf = load ptr, ptr @stderr, align 8
  %i.jg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jf, ptr noundef nonnull @.str.24, ptr noundef %0) #15 ; 0 uses
  call void @exit(i32 noundef 4) #17
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.jh = call i32 @T_FileStream_error(ptr noundef nonnull %i.o) #16
  %.not50 = icmp eq i32 %i.jh, 0
  br i1 %.not50, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ji = load ptr, ptr @stderr, align 8
  %i.jj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ji, ptr noundef nonnull @.str.25, ptr noundef %0) #15 ; 0 uses
  call void @exit(i32 noundef 4) #17
  unreachable

bb.ao:                                            ; preds = %bb.am
  call void @T_FileStream_close(ptr noundef nonnull %i.o) #16
  call void @T_FileStream_close(ptr noundef nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret void
}

declare ptr @T_FileStream_open(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL14getOutFilenamePKcS0_PciS1_iS0_S0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #6 {
bb.a:
  %7 = alloca %"class.icu_78::CharString", align 8 ; 18 uses
  %8 = alloca %"class.icu_78::CharString", align 8 ; 13 uses
  %9 = alloca %"class.icu_78::ErrorCode", align 8 ; 5 uses
  %10 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %11 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %12 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %13 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %14 = alloca %"class.icu_78::StringPiece", align 8 ; 2 uses
  %15 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %16 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %17 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %18 = alloca %"class.icu_78::StringPiece", align 8 ; 2 uses
  %i.a = tail call ptr @findBasename(ptr noundef %0) #16 ; 8 uses
  %19 = ptrtoint ptr %i.a to i64                  ; 2 uses
  %i.b = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 46) #13 ; 4 uses
  %20 = ptrtoint ptr %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 13 ; 2 uses
  store ptr %i.c, ptr %7, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 40, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store i8 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 3 uses
  store i32 0, ptr %i.f, align 8
  store i8 0, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 13 ; 2 uses
  store ptr %i.g, ptr %8, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 40, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i8 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  store i32 0, ptr %i.j, align 8
  store i8 0, ptr %i.g, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_789ErrorCodeE, i64 16), ptr %9, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 17 uses
  store i32 0, ptr %i.k, align 8
  %.not = icmp eq ptr %1, null
  %.sink64.sroa.gep = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.sink64.sroa.gep1 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sink64.sroa.gep2 = getelementptr inbounds nuw i8, ptr %12, i64 8
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %1, align 1
  %.not39 = icmp eq i8 %i.l, 0
  br i1 %.not39, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull %1) #16
  %i.m = load ptr, ptr %10, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.o = load i32, ptr %i.n, align 8
  %i.p = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr noundef %i.m, i32 noundef %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.k) #16 ; 0 uses
  %i.q = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString27ensureEndsWithFileSeparatorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.k) #16 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.r = ptrtoint ptr %0 to i64
  %i.s = sub i64 %19, %i.r
  %i.t = trunc i64 %i.s to i32
  %i.u = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr noundef %0, i32 noundef %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.k) #16 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = icmp eq ptr %i.b, null
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull %i.a) #16
  %i.w = load ptr, ptr %11, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.y = load i32, ptr %i.x, align 8
  %i.z = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %8, ptr noundef %i.w, i32 noundef %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.k) #16 ; 0 uses
  %.not41 = icmp eq ptr %6, null
  br i1 %.not41, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull %6) #16
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull %i.a) #16
  br label %.sink.split

bb.i:                                             ; preds = %bb.e
  %i.aa = load i32, ptr %i.f, align 8
  %i.ab = icmp ult ptr %i.a, %i.b
  br i1 %i.ab, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.ac = sub i64 %20, %19
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.ac
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.046 = phi ptr [ %i.ah, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 2 uses
  %i.ad = load i8, ptr %.046, align 1             ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 45
  %spec.select = select i1 %i.ae, i8 95, i8 %i.ad ; 2 uses
  %i.af = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %7, i8 noundef signext %spec.select, ptr noundef nonnull align 4 dereferenceable(4) %i.k) #16 ; 0 uses
  %i.ag = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %8, i8 noundef signext %spec.select, ptr noundef nonnull align 4 dereferenceable(4) %i.k) #16 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.046, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.ah, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph, %bb.i
  %.0.lcssa = phi ptr [ %i.a, %bb.i ], [ %scevgep, %.lr.ph ]
  %i.ai = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %7, i8 noundef signext 95, ptr noundef nonnull align 4 dereferenceable(4) %i.k) #16 ; 0 uses
  %i.aj = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %8, i8 noundef signext 95, ptr noundef nonnull align 4 dereferenceable(4) %i.k) #16 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1 ; 2 uses
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %15, ptr noundef nonnull %i.ak) #16
  %i.al = load ptr, ptr %15, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr noundef %i.al, i32 noundef %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.k) #16 ; 0 uses
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %16, ptr noundef nonnull %i.ak) #16
  %i.ap = load ptr, ptr %16, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %8, ptr noundef %i.ap, i32 noundef %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.k) #16 ; 0 uses
  %.not40 = icmp eq ptr %6, null
  br i1 %.not40, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.at = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString8truncateEi(ptr noundef nonnull align 8 dereferenceable(60) %7, i32 noundef %i.aa) #16 ; 0 uses
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %17, ptr noundef nonnull %6) #16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h, %bb.j
  %.sink64.sroa.phi = phi ptr [ %.sink64.sroa.gep, %bb.j ], [ %.sink64.sroa.gep1, %bb.h ], [ %.sink64.sroa.gep2, %bb.g ]
  %.sink64 = phi ptr [ %17, %bb.j ], [ %13, %bb.h ], [ %12, %bb.g ]
  %.sink.ph = phi ptr [ %18, %bb.j ], [ %14, %bb.h ], [ %14, %bb.g ]
  %i.au = load ptr, ptr %.sink64, align 8
  %i.av = load i32, ptr %.sink64.sroa.phi, align 8
  %i.aw = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr noundef %i.au, i32 noundef %i.av, ptr noundef nonnull align 4 dereferenceable(4) %i.k) #16 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %._crit_edge
  %.sink = phi ptr [ %18, %._crit_edge ], [ %.sink.ph, %.sink.split ] ; 3 uses
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %.sink, ptr noundef %5) #16
  %i.ax = load ptr, ptr %.sink, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr noundef %i.ax, i32 noundef %i.az, ptr noundef nonnull align 4 dereferenceable(4) %i.k) #16 ; 0 uses
  %i.bb = load i32, ptr %i.k, align 8
  %i.bc = icmp slt i32 %i.bb, 1
  br i1 %i.bc, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = load ptr, ptr @stderr, align 8
  %i.be = call i64 @fwrite(ptr nonnull @.str.66, i64 48, i64 1, ptr %i.bd) #14 ; 0 uses
  %i.bf = load i32, ptr %i.k, align 8
  call void @exit(i32 noundef %i.bf) #18
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bg = load i32, ptr %i.f, align 8
  %i.bh = icmp sgt i32 %i.bg, 4095
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bi = load ptr, ptr @stderr, align 8
  %i.bj = call i64 @fwrite(ptr nonnull @.str.67, i64 35, i64 1, ptr %i.bi) #14 ; 0 uses
  call void @exit(i32 noundef 1) #17
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bk = load i32, ptr %i.j, align 8
  %.not43 = icmp slt i32 %i.bk, %4
  br i1 %.not43, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = load ptr, ptr @stderr, align 8
  %i.bm = call i64 @fwrite(ptr nonnull @.str.22, i64 47, i64 1, ptr %i.bl) #14 ; 0 uses
  call void @exit(i32 noundef 1) #17
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bn = call noundef i32 @_ZNK6icu_7810CharString7extractEPciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr noundef nonnull %2, i32 noundef 4096, ptr noundef nonnull align 4 dereferenceable(4) %i.k) #16 ; 0 uses
  %i.bo = call noundef i32 @_ZNK6icu_7810CharString7extractEPciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %8, ptr noundef nonnull %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %i.k) #16 ; 0 uses
  call void @_ZN6icu_789ErrorCodeD1Ev(ptr noundef nonnull align 8 dereferenceable(12) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.bp = load i8, ptr %i.i, align 4
  %.not.i.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = load ptr, ptr %8, align 8
  call void @uprv_free_78(ptr noundef %i.bq) #16
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.br = load i8, ptr %i.e, align 4
  %.not.i.i.i44 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i44, label %_ZN6icu_7810CharStringD2Ev.exit45, label %bb.s

bb.s:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit
  %i.bs = load ptr, ptr %7, align 8
  call void @uprv_free_78(ptr noundef %i.bs) #16
  br label %_ZN6icu_7810CharStringD2Ev.exit45

_ZN6icu_7810CharStringD2Ev.exit45:                ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare i32 @T_FileStream_writeLine(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare i32 @T_FileStream_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @T_FileStream_error(ptr noundef) local_unnamed_addr #7

declare void @T_FileStream_close(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @writeCCode(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 6 uses
  %i.b = alloca [4096 x i8], align 16             ; 12 uses
  %i.c = alloca [96 x i8], align 16               ; 54 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.d = tail call ptr @T_FileStream_open(ptr noundef %0, ptr noundef nonnull @.str.11) #16 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.12, ptr noundef %0) #15 ; 0 uses
  tail call void @exit(i32 noundef 4) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #13
  %i.i = add i64 %i.h, -95
  %i.j = icmp ult i64 %i.i, -97
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr @stderr, align 8
  %i.l = tail call i64 @fwrite(ptr nonnull @.str.22, i64 47, i64 1, ptr %i.k) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
end_hunk_0
