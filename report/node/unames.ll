inline.NumInlined: 47
inline.NumDeleted: 20
begin_hunk_0_@uchar_swapNames_78:bb.a
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.hm = load ptr, ptr %i.gu, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gx, i64 12 ; 2 uses
  %i.ho = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hn) #12
  %i.hp = trunc i64 %i.ho to i32
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gy, i64 12
  %i.hr = tail call noundef i32 %i.hm(ptr noundef nonnull %0, ptr noundef nonnull %i.hn, i32 noundef %i.hp, ptr noundef nonnull %i.hq, ptr noundef nonnull %4) #11 ; 0 uses
  %i.hs = load i32, ptr %4, align 4
  %i.ht = icmp slt i32 %i.hs, 1
  br i1 %i.ht, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i32 noundef %.5336) #11
  br label %.critedge297

bb.ad:                                            ; preds = %bb.aa
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gx, i64 9
  %i.hv = load i8, ptr %i.hu, align 1             ; 2 uses
  %i.hw = zext i8 %i.hv to i32
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gx, i64 12 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gy, i64 12 ; 2 uses
  %i.hz = load ptr, ptr %i.co, align 8
  %i.ia = shl nuw nsw i32 %i.hw, 1
  %i.ib = tail call noundef i32 %i.hz(ptr noundef nonnull %0, ptr noundef nonnull %i.hx, i32 noundef %i.ia, ptr noundef nonnull %i.hy, ptr noundef nonnull %4) #11 ; 0 uses
  %i.ic = zext i8 %i.hv to i64                    ; 2 uses
  %.idx = shl nuw nsw i64 %i.ic, 1                ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.idx ; 2 uses
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.hy, i64 %i.ic
  %i.if = add nuw nsw i64 %i.gw, 12
  %i.ig = add nuw nsw i64 %i.if, %.idx
  %i.ih = trunc nuw i64 %i.ig to i32              ; 2 uses
  %.not291418 = icmp eq i32 %i.he, %i.ih
  br i1 %.not291418, label %.critedge, label %.lr.ph421

.lr.ph421:                                        ; preds = %bb.ad
  %i.ii = sub i32 %i.he, %i.ih
  %i.ij = zext i32 %i.ii to i64
  br label %bb.af

bb.ae:                                            ; preds = %bb.af
  %.not291 = icmp eq i64 %i.ik, 0
  br i1 %.not291, label %.critedge, label %bb.af, !llvm.loop !54

bb.af:                                            ; preds = %.lr.ph421, %bb.ae
  %indvars.iv375419 = phi i64 [ %i.ij, %.lr.ph421 ], [ %i.ik, %bb.ae ] ; 2 uses
  %i.ik = add nsw i64 %indvars.iv375419, -1       ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1
  %.not292 = icmp eq i8 %i.im, 0
  br i1 %.not292, label %.critedge.split.loop.exit406, label %bb.ae, !llvm.loop !54

.critedge.split.loop.exit406:                     ; preds = %bb.af
  %i.in = trunc nuw i64 %indvars.iv375419 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.ae, %bb.ad, %.critedge.split.loop.exit406
  %.1278.lcssa = phi i32 [ %i.in, %.critedge.split.loop.exit406 ], [ 0, %bb.ad ], [ 0, %bb.ae ]
  %i.io = load ptr, ptr %i.gu, align 8
  %i.ip = tail call noundef i32 %i.io(ptr noundef nonnull %0, ptr noundef nonnull %i.id, i32 noundef %.1278.lcssa, ptr noundef nonnull %i.ie, ptr noundef nonnull %4) #11 ; 0 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.aa
  %i.iq = zext i8 %i.hl to i32
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i32 noundef %i.iq, i32 noundef %.5336) #11
  store i32 16, ptr %4, align 4
  br label %.critedge297

bb.ah:                                            ; preds = %.critedge, %bb.ab
  %i.ir = add nuw i32 %.5336, 1                   ; 2 uses
  %exitcond378.not = icmp eq i32 %i.ir, %i.gp
  br i1 %exitcond378.not, label %._crit_edge340, label %bb.y, !llvm.loop !55

._crit_edge340:                                   ; preds = %bb.ah, %bb.x
  %.1267.lcssa = phi i32 [ %i.gt, %bb.x ], [ %i.he, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.k, %._crit_edge340
  %.3 = phi i32 [ %.1267.lcssa, %._crit_edge340 ], [ %i.bi, %bb.k ], [ %i.br, %bb.l ]
  %i.is = add nsw i32 %.3, %i.f
  br label %bb.ai

.critedge297:                                     ; preds = %bb.ac, %bb.ag, %bb.z, %bb.r, %bb.q, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ai

bb.ai:                                            ; preds = %.critedge297, %bb.a, %bb.b, %.loopexit, %bb.j, %._crit_edge380
  %.1 = phi i32 [ 0, %._crit_edge380 ], [ %i.is, %.loopexit ], [ 0, %.critedge297 ], [ 0, %bb.j ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.1
}

declare i32 @udata_swapDataHeader_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @udata_printError_78(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare signext i16 @udata_readInt16_78(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL12makeTokenMapPK12UDataSwapperPstPhP10UErrorCode(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i16 noundef zeroext %2, ptr nofree noundef nonnull captures(none) %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.d = load i32, ptr %4, align 4
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.g, %i.i
  br i1 %i.j, label %vector.body, label %bb.c

vector.body:                                      ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %3, align 1
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.l, align 1
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.n, align 1
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.p, align 1
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 144
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.r, align 1
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 176
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.t, align 1
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 208
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.v, align 1
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 240
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.x, align 1
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.y, align 1
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %3, i8 0, i64 256, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.z = icmp ugt i16 %2, 1
  br i1 %i.z, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %spec.store.select = tail call i16 @llvm.umin.i16(i16 %2, i16 256)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  %wide.trip.count = zext nneg i16 %spec.store.select to i64 ; 2 uses
  br label %bb.d

.lr.ph47.preheader:                               ; preds = %bb.h
  %i.ab = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.ab, 1
  %i.ac = icmp eq i16 %2, 2
  br i1 %i.ac, label %.lr.ph47.epil.preheader, label %.lr.ph47.preheader.new

.lr.ph47.preheader.new:                           ; preds = %.lr.ph47.preheader
  %unroll_iter = and i64 %i.ab, -2
  br label %.lr.ph47

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = icmp eq i16 %i.ae, -1
  br i1 %i.af, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ag = trunc i64 %indvars.iv to i8
  store i8 %i.ag, ptr %i.b, align 1
  %i.ah = load ptr, ptr %i.aa, align 8
  %i.ai = call noundef i32 %i.ah(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 1, ptr noundef nonnull %i.c, ptr noundef nonnull %4) #11 ; 0 uses
  %i.aj = load i32, ptr %4, align 4
  %i.ak = icmp slt i32 %i.aj, 1
  br i1 %i.ak, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = trunc nuw nsw i64 %indvars.iv to i32
  %i.am = and i32 %i.al, 65535
  %i.an = load i8, ptr %i.f, align 1
  %i.ao = zext i8 %i.an to i32
  call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.43, i32 noundef %i.am, i32 noundef %i.ao) #11
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.ap = load i8, ptr %i.c, align 1              ; 2 uses
  %i.aq = load i8, ptr %i.b, align 1
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 %i.ar
  store i8 %i.ap, ptr %i.as, align 1
  %i.at = zext i8 %i.ap to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.at
  store i8 1, ptr %i.au, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph47.preheader, label %bb.d, !llvm.loop !56

.lr.ph47:                                         ; preds = %bb.k, %.lr.ph47.preheader.new
  %indvars.iv52 = phi i64 [ 1, %.lr.ph47.preheader.new ], [ %indvars.iv.next53.1, %bb.k ] ; 3 uses
  %.046 = phi i16 [ 1, %.lr.ph47.preheader.new ], [ %.2.1, %bb.k ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph47.preheader.new ], [ %niter.next.1, %bb.k ]
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv52 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %.preheader40, label %.lr.ph47.1

.preheader40:                                     ; preds = %.lr.ph47, %.preheader40
  %.1 = phi i16 [ %i.bb, %.preheader40 ], [ %.046, %.lr.ph47 ] ; 3 uses
  %i.ay = zext i16 %.1 to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1
  %.not38 = icmp eq i8 %i.ba, 0
  %i.bb = add i16 %.1, 1                          ; 2 uses
  br i1 %.not38, label %bb.i, label %.preheader40, !llvm.loop !57

bb.i:                                             ; preds = %.preheader40
  %i.bc = trunc i16 %.1 to i8
  store i8 %i.bc, ptr %i.av, align 1
  br label %.lr.ph47.1

.lr.ph47.1:                                       ; preds = %.lr.ph47, %bb.i
  %.2 = phi i16 [ %i.bb, %bb.i ], [ %.046, %.lr.ph47 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv52
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %.preheader40.1, label %bb.k

.preheader40.1:                                   ; preds = %.lr.ph47.1, %.preheader40.1
  %.1.1 = phi i16 [ %i.bk, %.preheader40.1 ], [ %.2, %.lr.ph47.1 ] ; 3 uses
  %i.bh = zext i16 %.1.1 to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1
  %.not38.1 = icmp eq i8 %i.bj, 0
  %i.bk = add i16 %.1.1, 1                        ; 2 uses
  br i1 %.not38.1, label %bb.j, label %.preheader40.1, !llvm.loop !57

bb.j:                                             ; preds = %.preheader40.1
  %i.bl = trunc i16 %.1.1 to i8
  store i8 %i.bl, ptr %i.be, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph47.1
  %.2.1 = phi i16 [ %i.bk, %bb.j ], [ %.2, %.lr.ph47.1 ] ; 2 uses
  %indvars.iv.next53.1 = add nuw nsw i64 %indvars.iv52, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit65.unr-lcssa, label %.lr.ph47, !llvm.loop !58

.loopexit.loopexit65.unr-lcssa:                   ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph47.epil.preheader

.lr.ph47.epil.preheader:                          ; preds = %.loopexit.loopexit65.unr-lcssa, %.lr.ph47.preheader
  %indvars.iv52.epil.init = phi i64 [ 1, %.lr.ph47.preheader ], [ %indvars.iv.next53.1, %.loopexit.loopexit65.unr-lcssa ]
  %.046.epil.init = phi i16 [ 1, %.lr.ph47.preheader ], [ %.2.1, %.loopexit.loopexit65.unr-lcssa ]
  %lcmp.mod67 = trunc i64 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod67)
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv52.epil.init ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %.preheader40.epil, label %.loopexit

.preheader40.epil:                                ; preds = %.lr.ph47.epil.preheader, %.preheader40.epil
  %.1.epil = phi i16 [ %i.bs, %.preheader40.epil ], [ %.046.epil.init, %.lr.ph47.epil.preheader ] ; 3 uses
  %i.bp = zext i16 %.1.epil to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1
  %.not38.epil = icmp eq i8 %i.br, 0
  %i.bs = add i16 %.1.epil, 1
  br i1 %.not38.epil, label %bb.l, label %.preheader40.epil, !llvm.loop !57

bb.l:                                             ; preds = %.preheader40.epil
  %i.bt = trunc i16 %.1.epil to i8
  store i8 %i.bt, ptr %i.bm, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit65.unr-lcssa, %bb.l, %.lr.ph47.epil.preheader, %vector.body, %bb.c, %bb.a, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #6

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #2

declare i32 @udata_swapInvStringBlock_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef nonnull ptr @_ZN6icu_78L18expandGroupLengthsEPKhPtS2_(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #7 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.i
  %.02749 = phi i16 [ 0, %bb.a ], [ %.2, %bb.i ]  ; 2 uses
  %.02848 = phi i16 [ 0, %bb.a ], [ %.129, %bb.i ] ; 4 uses
  %.03047 = phi i16 [ 0, %bb.a ], [ %.131, %bb.i ] ; 3 uses
  %.03246 = phi ptr [ %2, %bb.a ], [ %.133, %bb.i ] ; 5 uses
  %.03445 = phi ptr [ %1, %bb.a ], [ %.135, %bb.i ] ; 5 uses
  %.03644 = phi ptr [ %0, %bb.a ], [ %i.a, %bb.i ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.03644, i64 1 ; 2 uses
  %i.b = load i8, ptr %.03644, align 1            ; 5 uses
  %i.c = icmp samesign ugt i16 %.02749, 11
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = shl nuw nsw i16 %.02749, 4
  %i.e = and i16 %i.d, 48
  %i.f = lshr i8 %i.b, 4
  %i.g = zext nneg i8 %i.f to i16
  %i.h = or disjoint i16 %i.e, 12
  %i.i = add nuw nsw i16 %i.h, %i.g
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.j = icmp ugt i8 %i.b, -65
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = lshr i8 %i.b, 4
  %i.l = zext nneg i8 %i.k to i16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = and i8 %i.b, 63
  %narrow = add nuw nsw i8 %i.m, 12
  %i.n = zext nneg i8 %narrow to i16              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.03445, i64 2
  store i16 %.02848, ptr %.03445, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %.03246, i64 2
  store i16 %i.n, ptr %.03246, align 2
  %i.q = add i16 %.02848, %i.n
  %i.r = add nuw nsw i16 %.03047, 1
  br label %bb.i

bb.g:                                             ; preds = %bb.c, %bb.e
  %.1.ph = phi i16 [ %i.l, %bb.e ], [ %i.i, %bb.c ] ; 2 uses
  %.0.ph = and i8 %i.b, 15                        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.03445, i64 2 ; 2 uses
  store i16 %.02848, ptr %.03445, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %.03246, i64 2 ; 2 uses
  store i16 %.1.ph, ptr %.03246, align 2
  %i.u = add i16 %.1.ph, %.02848                  ; 3 uses
  %i.v = add nuw nsw i16 %.03047, 1
  %i.w = zext nneg i8 %.0.ph to i16               ; 4 uses
  %i.x = icmp samesign ult i8 %.0.ph, 12
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.03445, i64 4
  store i16 %i.u, ptr %i.s, align 2
  %i.z = getelementptr inbounds nuw i8, ptr %.03246, i64 4
  store i16 %i.w, ptr %i.t, align 2
  %i.aa = add i16 %i.u, %i.w
  %i.ab = add nuw nsw i16 %.03047, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %.135 = phi ptr [ %i.y, %bb.h ], [ %i.s, %bb.g ], [ %i.o, %bb.f ]
  %.133 = phi ptr [ %i.z, %bb.h ], [ %i.t, %bb.g ], [ %i.p, %bb.f ]
  %.131 = phi i16 [ %i.ab, %bb.h ], [ %i.v, %bb.g ], [ %i.r, %bb.f ] ; 2 uses
  %.129 = phi i16 [ %i.aa, %bb.h ], [ %i.u, %bb.g ], [ %i.q, %bb.f ]
  %.2 = phi i16 [ %i.w, %bb.h ], [ %i.w, %bb.g ], [ 0, %bb.f ]
  %i.ac = icmp ult i16 %.131, 32
  br i1 %i.ac, label %bb.b, label %bb.j, !llvm.loop !11

bb.j:                                             ; preds = %bb.i
  ret ptr %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5
end_hunk_0
