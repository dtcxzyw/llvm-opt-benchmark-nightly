inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 17
begin_hunk_0_@BZ2_decompress:bb.a

bb.ee:                                            ; preds = %bb.ed
  %i.bzq = load i32, ptr %i.bzb, align 8, !tbaa !41
  %i.bzr = shl i32 %i.bzq, 8
  %i.bzs = load ptr, ptr %i.bze, align 8, !tbaa !44 ; 2 uses
  %i.bzt = load i8, ptr %i.bzs, align 1, !tbaa !45
  %i.bzu = zext i8 %i.bzt to i32
  %i.bzv = or disjoint i32 %i.bzr, %i.bzu         ; 2 uses
  store i32 %i.bzv, ptr %i.bzb, align 8, !tbaa !41
  %i.bzw = add nsw i32 %i.bzo, 8                  ; 3 uses
  store i32 %i.bzw, ptr %i.bza, align 4, !tbaa !16
  %i.bzx = getelementptr inbounds nuw i8, ptr %i.bzs, i64 1
  store ptr %i.bzx, ptr %i.bze, align 8, !tbaa !44
  %i.bzy = add i32 %i.bzn, -1                     ; 2 uses
  store i32 %i.bzy, ptr %i.bzf, align 8, !tbaa !42
  %i.bzz = load i32, ptr %i.bzg, align 4, !tbaa !46
  %i.caa = add i32 %i.bzz, 1                      ; 2 uses
  store i32 %i.caa, ptr %i.bzg, align 4, !tbaa !46
  %i.cab = icmp eq i32 %i.caa, 0
  br i1 %i.cab, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.cac = load i32, ptr %i.bzh, align 8, !tbaa !47
  %i.cad = add i32 %i.cac, 1
  store i32 %i.cad, ptr %i.bzh, align 8, !tbaa !47
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %i.cae = icmp sgt i32 %i.bzo, -8
  br i1 %i.cae, label %._crit_edge2401, label %bb.ed

bb.eh:                                            ; preds = %._crit_edge2401
  %i.caf = add nsw i32 %.81413, 1                 ; 3 uses
  %.not1868 = icmp slt i32 %i.caf, %.31479.ph
  br i1 %.not1868, label %bb.ec, label %.loopexit

bb.ei:                                            ; preds = %._crit_edge2401
  %i.cag = icmp slt i32 %.11.ph, 18002
  br i1 %i.cag, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.cah = trunc i32 %.81413 to i8
  %i.cai = getelementptr inbounds nuw i8, ptr %0, i64 25886
  %i.caj = sext i32 %.11.ph to i64
  %i.cak = getelementptr inbounds i8, ptr %i.cai, i64 %i.caj
  store i8 %i.cah, ptr %i.cak, align 1, !tbaa !45
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ei, %bb.ej
  %i.cal = add nsw i32 %.11.ph, 1
  br label %bb.eb, !llvm.loop !68

bb.el:                                            ; preds = %bb.eb
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %.01498, i32 18002) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.cam = icmp sgt i32 %.11477, 0
  br i1 %i.cam, label %iter.check, label %.preheader1929

iter.check:                                       ; preds = %bb.el
  %min.iters.check = icmp ult i32 %.11477, 4
  br i1 %min.iters.check, label %.lr.ph2263.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.can = add nsw i32 %.11477, -1                ; 2 uses
  %i.cao = and i32 %i.can, 255
  %i.cap = icmp eq i32 %i.cao, 255
  %i.caq = icmp ugt i32 %i.can, 255
  %i.car = or i1 %i.cap, %i.caq
  br i1 %i.car, label %.lr.ph2263.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check3326 = icmp ult i32 %.11477, 32
  br i1 %min.iters.check3326, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cas = and i32 %.11477, 28
  %n.vec = and i32 %.11477, 480                   ; 10 uses
  %i.cat = trunc i32 %n.vec to i8                 ; 2 uses
  %i.cau = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.a, align 16, !tbaa !45
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.cau, align 16, !tbaa !45
  %i.cav = icmp eq i32 %n.vec, 32
  br i1 %i.cav, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.caw = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cax = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.caw, align 16, !tbaa !45
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.cax, align 16, !tbaa !45
  %i.cay = icmp eq i32 %n.vec, 64
  br i1 %i.cay, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.caz = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.cba = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.caz, align 16, !tbaa !45
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.cba, align 16, !tbaa !45
  %i.cbb = icmp eq i32 %n.vec, 96
  br i1 %i.cbb, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.cbc = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.cbd = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.cbc, align 16, !tbaa !45
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.cbd, align 16, !tbaa !45
  %i.cbe = icmp eq i32 %n.vec, 128
  br i1 %i.cbe, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.cbf = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.cbg = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.cbf, align 16, !tbaa !45
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.cbg, align 16, !tbaa !45
  %i.cbh = icmp eq i32 %n.vec, 160
  br i1 %i.cbh, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.cbj = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.cbi, align 16, !tbaa !45
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.cbj, align 16, !tbaa !45
  %i.cbk = icmp eq i32 %n.vec, 192
  br i1 %i.cbk, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.cbl = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.cbm = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.cbl, align 16, !tbaa !45
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.cbm, align 16, !tbaa !45
  %i.cbn = icmp eq i32 %n.vec, 224
  br i1 %i.cbn, label %middle.block, label %vector.body.7

vector.body.7:                                    ; preds = %vector.body.6
  %i.cbo = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.cbo, align 16, !tbaa !45
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.cbp, align 16, !tbaa !45
  br label %middle.block

middle.block:                                     ; preds = %vector.body.7, %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i32 %.11477, %n.vec
  br i1 %cmp.n, label %.preheader1929, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.cas, 0
  br i1 %min.epilog.iters.check, label %.lr.ph2263.preheader, label %vec.epilog.ph, !prof !69

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i8 [ %i.cat, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec3327 = and i32 %.11477, 508               ; 3 uses
  %i.cbq = trunc i32 %n.vec3327 to i8
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %bc.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index3328 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next3330, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind3329 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next3331, %vec.epilog.vector.body ] ; 2 uses
  %i.cbr = and i32 %index3328, 252
  %i.cbs = zext nneg i32 %i.cbr to i64
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cbs
  store <4 x i8> %vec.ind3329, ptr %i.cbt, align 4, !tbaa !45
  %index.next3330 = add nuw i32 %index3328, 4     ; 2 uses
  %vec.ind.next3331 = add <4 x i8> %vec.ind3329, splat (i8 4)
  %i.cbu = icmp eq i32 %index.next3330, %n.vec3327
  br i1 %i.cbu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !70

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n3332 = icmp eq i32 %.11477, %n.vec3327
  br i1 %cmp.n3332, label %.preheader1929, label %.lr.ph2263.preheader

.lr.ph2263.preheader:                             ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.016222261.ph = phi i8 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %i.cat, %vec.epilog.iter.check ], [ %i.cbq, %vec.epilog.middle.block ]
  br label %.lr.ph2263

.preheader1929:                                   ; preds = %.lr.ph2263, %middle.block, %vec.epilog.middle.block, %bb.el
  %i.cbv = icmp sgt i32 %.01498, 0
  br i1 %i.cbv, label %.lr.ph2270, label %._crit_edge2271

.lr.ph2270:                                       ; preds = %.preheader1929
  %i.cbw = getelementptr inbounds nuw i8, ptr %0, i64 25886
  %i.cbx = getelementptr inbounds nuw i8, ptr %0, i64 7884
  %wide.trip.count = zext nneg i32 %spec.store.select to i64
  br label %bb.em

.lr.ph2263:                                       ; preds = %.lr.ph2263.preheader, %.lr.ph2263
  %.016222261 = phi i8 [ %i.cca, %.lr.ph2263 ], [ %.016222261.ph, %.lr.ph2263.preheader ] ; 3 uses
  %i.cby = zext i8 %.016222261 to i64
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cby
  store i8 %.016222261, ptr %i.cbz, align 1, !tbaa !45
  %i.cca = add i8 %.016222261, 1                  ; 2 uses
  %i.ccb = zext i8 %i.cca to i32
  %i.ccc = icmp samesign ugt i32 %.11477, %i.ccb
  br i1 %i.ccc, label %.lr.ph2263, label %.preheader1929, !llvm.loop !73

bb.em:                                            ; preds = %.lr.ph2270, %._crit_edge2268
  %indvars.iv2594 = phi i64 [ 0, %.lr.ph2270 ], [ %indvars.iv.next2595, %._crit_edge2268 ] ; 3 uses
  %i.ccd = getelementptr inbounds nuw i8, ptr %i.cbw, i64 %indvars.iv2594
  %i.cce = load i8, ptr %i.ccd, align 1, !tbaa !45 ; 7 uses
  %i.ccf = zext i8 %i.cce to i64                  ; 27 uses
  %i.ccg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ccf
  %i.cch = load i8, ptr %i.ccg, align 1, !tbaa !45 ; 2 uses
  %.not18672264 = icmp eq i8 %i.cce, 0
  br i1 %.not18672264, label %._crit_edge2268, label %iter.check3348

iter.check3348:                                   ; preds = %bb.em
  %min.iters.check3335 = icmp ult i8 %i.cce, 4
  br i1 %min.iters.check3335, label %.lr.ph2267.preheader, label %vector.scevcheck3334

vector.scevcheck3334:                             ; preds = %iter.check3348
  %1 = add i8 %i.cce, -1
  %2 = zext i8 %i.cce to i32
  %3 = add nsw i32 %2, -1
  %4 = zext i8 %1 to i32
  %i.cci = icmp ult i32 %3, %4
  br i1 %i.cci, label %.lr.ph2267.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck3334
  %i.ccj = zext i8 %i.cce to i64
  %i.cck = add nuw nsw i64 %i.ccj, 4294967295
  %i.ccl = and i64 %i.cck, 4294967295
  %i.ccm = sub nsw i64 %i.ccf, %i.ccl
  %diff.check = icmp ugt i64 %i.ccm, -32
  br i1 %diff.check, label %.lr.ph2267.preheader, label %vector.main.loop.iter.check3336

vector.main.loop.iter.check3336:                  ; preds = %vector.memcheck
  %min.iters.check3337 = icmp ult i8 %i.cce, 32
  br i1 %min.iters.check3337, label %vec.epilog.ph3352, label %vector.ph3338

vector.ph3338:                                    ; preds = %vector.main.loop.iter.check3336
  %i.ccn = and i64 %i.ccf, 28
  %n.vec3339 = and i64 %i.ccf, 224                ; 8 uses
  %i.cco = and i64 %i.ccf, 31
  %i.ccp = add nuw nsw i64 %i.ccf, 4294967295
  %i.ccq = and i64 %i.ccp, 4294967295
  %i.ccr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ccq ; 2 uses
  %i.ccs = getelementptr inbounds i8, ptr %i.ccr, i64 -15
  %i.cct = getelementptr inbounds i8, ptr %i.ccr, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ccs, align 1, !tbaa !45
  %wide.load3342 = load <16 x i8>, ptr %i.cct, align 1, !tbaa !45
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ccf ; 2 uses
  %i.ccv = getelementptr inbounds i8, ptr %i.ccu, i64 -15
  %i.ccw = getelementptr inbounds i8, ptr %i.ccu, i64 -31
  store <16 x i8> %wide.load, ptr %i.ccv, align 1, !tbaa !45
  store <16 x i8> %wide.load3342, ptr %i.ccw, align 1, !tbaa !45
  %i.ccx = icmp eq i64 %n.vec3339, 32
  br i1 %i.ccx, label %middle.block3344, label %vector.body3340.1

vector.body3340.1:                                ; preds = %vector.ph3338
  %i.ccy = add nuw nsw i64 %i.ccf, 4294967263
  %i.ccz = and i64 %i.ccy, 4294967295
  %i.cda = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ccz ; 2 uses
  %i.cdb = getelementptr inbounds i8, ptr %i.cda, i64 -15
  %i.cdc = getelementptr inbounds i8, ptr %i.cda, i64 -31
  %wide.load.1 = load <16 x i8>, ptr %i.cdb, align 1, !tbaa !45
  %wide.load3342.1 = load <16 x i8>, ptr %i.cdc, align 1, !tbaa !45
  %i.cdd = getelementptr i8, ptr %i.a, i64 %i.ccf ; 2 uses
  %i.cde = getelementptr i8, ptr %i.cdd, i64 -47
  %i.cdf = getelementptr i8, ptr %i.cdd, i64 -63
  store <16 x i8> %wide.load.1, ptr %i.cde, align 1, !tbaa !45
  store <16 x i8> %wide.load3342.1, ptr %i.cdf, align 1, !tbaa !45
  %i.cdg = icmp eq i64 %n.vec3339, 64
  br i1 %i.cdg, label %middle.block3344, label %vector.body3340.2

vector.body3340.2:                                ; preds = %vector.body3340.1
  %i.cdh = add nuw nsw i64 %i.ccf, 4294967231
  %i.cdi = and i64 %i.cdh, 4294967295
  %i.cdj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cdi ; 2 uses
  %i.cdk = getelementptr inbounds i8, ptr %i.cdj, i64 -15
  %i.cdl = getelementptr inbounds i8, ptr %i.cdj, i64 -31
  %wide.load.2 = load <16 x i8>, ptr %i.cdk, align 1, !tbaa !45
  %wide.load3342.2 = load <16 x i8>, ptr %i.cdl, align 1, !tbaa !45
  %i.cdm = getelementptr i8, ptr %i.a, i64 %i.ccf ; 2 uses
  %i.cdn = getelementptr i8, ptr %i.cdm, i64 -79
  %i.cdo = getelementptr i8, ptr %i.cdm, i64 -95
  store <16 x i8> %wide.load.2, ptr %i.cdn, align 1, !tbaa !45
  store <16 x i8> %wide.load3342.2, ptr %i.cdo, align 1, !tbaa !45
  %i.cdp = icmp eq i64 %n.vec3339, 96
  br i1 %i.cdp, label %middle.block3344, label %vector.body3340.3

vector.body3340.3:                                ; preds = %vector.body3340.2
  %i.cdq = add nuw nsw i64 %i.ccf, 4294967199
  %i.cdr = and i64 %i.cdq, 4294967295
  %i.cds = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cdr ; 2 uses
  %i.cdt = getelementptr inbounds i8, ptr %i.cds, i64 -15
  %i.cdu = getelementptr inbounds i8, ptr %i.cds, i64 -31
  %wide.load.3 = load <16 x i8>, ptr %i.cdt, align 1, !tbaa !45
  %wide.load3342.3 = load <16 x i8>, ptr %i.cdu, align 1, !tbaa !45
  %i.cdv = getelementptr i8, ptr %i.a, i64 %i.ccf ; 2 uses
  %i.cdw = getelementptr i8, ptr %i.cdv, i64 -111
  %i.cdx = getelementptr i8, ptr %i.cdv, i64 -127
  store <16 x i8> %wide.load.3, ptr %i.cdw, align 1, !tbaa !45
  store <16 x i8> %wide.load3342.3, ptr %i.cdx, align 1, !tbaa !45
  %i.cdy = icmp eq i64 %n.vec3339, 128
  br i1 %i.cdy, label %middle.block3344, label %vector.body3340.4

vector.body3340.4:                                ; preds = %vector.body3340.3
  %i.cdz = add nuw nsw i64 %i.ccf, 4294967167
  %i.cea = and i64 %i.cdz, 4294967295
  %i.ceb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cea ; 2 uses
  %i.cec = getelementptr inbounds i8, ptr %i.ceb, i64 -15
  %i.ced = getelementptr inbounds i8, ptr %i.ceb, i64 -31
  %wide.load.4 = load <16 x i8>, ptr %i.cec, align 1, !tbaa !45
  %wide.load3342.4 = load <16 x i8>, ptr %i.ced, align 1, !tbaa !45
  %i.cee = getelementptr i8, ptr %i.a, i64 %i.ccf ; 2 uses
  %i.cef = getelementptr i8, ptr %i.cee, i64 -143
  %i.ceg = getelementptr i8, ptr %i.cee, i64 -159
  store <16 x i8> %wide.load.4, ptr %i.cef, align 1, !tbaa !45
  store <16 x i8> %wide.load3342.4, ptr %i.ceg, align 1, !tbaa !45
  %i.ceh = icmp eq i64 %n.vec3339, 160
  br i1 %i.ceh, label %middle.block3344, label %vector.body3340.5

vector.body3340.5:                                ; preds = %vector.body3340.4
  %i.cei = add nuw nsw i64 %i.ccf, 4294967135
  %i.cej = and i64 %i.cei, 4294967295
  %i.cek = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cej ; 2 uses
  %i.cel = getelementptr inbounds i8, ptr %i.cek, i64 -15
  %i.cem = getelementptr inbounds i8, ptr %i.cek, i64 -31
  %wide.load.5 = load <16 x i8>, ptr %i.cel, align 1, !tbaa !45
  %wide.load3342.5 = load <16 x i8>, ptr %i.cem, align 1, !tbaa !45
  %i.cen = getelementptr i8, ptr %i.a, i64 %i.ccf ; 2 uses
  %i.ceo = getelementptr i8, ptr %i.cen, i64 -175
  %i.cep = getelementptr i8, ptr %i.cen, i64 -191
  store <16 x i8> %wide.load.5, ptr %i.ceo, align 1, !tbaa !45
  store <16 x i8> %wide.load3342.5, ptr %i.cep, align 1, !tbaa !45
  %i.ceq = icmp eq i64 %n.vec3339, 192
  br i1 %i.ceq, label %middle.block3344, label %vector.body3340.6

vector.body3340.6:                                ; preds = %vector.body3340.5
  %i.cer = add nuw nsw i64 %i.ccf, 4294967103
  %i.ces = and i64 %i.cer, 4294967295
  %i.cet = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ces ; 2 uses
  %i.ceu = getelementptr inbounds i8, ptr %i.cet, i64 -15
  %i.cev = getelementptr inbounds i8, ptr %i.cet, i64 -31
  %wide.load.6 = load <16 x i8>, ptr %i.ceu, align 1, !tbaa !45
  %wide.load3342.6 = load <16 x i8>, ptr %i.cev, align 1, !tbaa !45
  %i.cew = getelementptr i8, ptr %i.a, i64 %i.ccf ; 2 uses
  %i.cex = getelementptr i8, ptr %i.cew, i64 -207
  %i.cey = getelementptr i8, ptr %i.cew, i64 -223
  store <16 x i8> %wide.load.6, ptr %i.cex, align 1, !tbaa !45
  store <16 x i8> %wide.load3342.6, ptr %i.cey, align 1, !tbaa !45
  br label %middle.block3344

middle.block3344:                                 ; preds = %vector.body3340.6, %vector.body3340.5, %vector.body3340.4, %vector.body3340.3, %vector.body3340.2, %vector.body3340.1, %vector.ph3338
  %cmp.n3345 = icmp eq i64 %n.vec3339, %i.ccf
  br i1 %cmp.n3345, label %._crit_edge2268, label %vec.epilog.iter.check3350

vec.epilog.iter.check3350:                        ; preds = %middle.block3344
  %min.epilog.iters.check3351 = icmp eq i64 %i.ccn, 0
  br i1 %min.epilog.iters.check3351, label %.lr.ph2267.preheader, label %vec.epilog.ph3352, !prof !69

vec.epilog.ph3352:                                ; preds = %vector.main.loop.iter.check3336, %vec.epilog.iter.check3350
  %vec.epilog.resume.val3346 = phi i64 [ %n.vec3339, %vec.epilog.iter.check3350 ], [ 0, %vector.main.loop.iter.check3336 ]
  %n.vec3353 = and i64 %i.ccf, 252                ; 2 uses
  %i.cez = and i64 %i.ccf, 3
  br label %vec.epilog.vector.body3354

vec.epilog.vector.body3354:                       ; preds = %vec.epilog.vector.body3354, %vec.epilog.ph3352
  %index3355 = phi i64 [ %vec.epilog.resume.val3346, %vec.epilog.ph3352 ], [ %index.next3357, %vec.epilog.vector.body3354 ] ; 2 uses
  %i.cfa = sub i64 %i.ccf, %index3355             ; 2 uses
  %i.cfb = add nuw nsw i64 %i.cfa, 4294967295
  %i.cfc = and i64 %i.cfb, 4294967295
  %i.cfd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cfc
  %i.cfe = getelementptr inbounds i8, ptr %i.cfd, i64 -3
  %wide.load3356 = load <4 x i8>, ptr %i.cfe, align 1, !tbaa !45
  %i.cff = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cfa
  %i.cfg = getelementptr inbounds i8, ptr %i.cff, i64 -3
  store <4 x i8> %wide.load3356, ptr %i.cfg, align 1, !tbaa !45
  %index.next3357 = add nuw i64 %index3355, 4     ; 2 uses
  %i.cfh = icmp eq i64 %index.next3357, %n.vec3353
  br i1 %i.cfh, label %vec.epilog.middle.block3358, label %vec.epilog.vector.body3354, !llvm.loop !74

vec.epilog.middle.block3358:                      ; preds = %vec.epilog.vector.body3354
  %cmp.n3359 = icmp eq i64 %n.vec3353, %i.ccf
  br i1 %cmp.n3359, label %._crit_edge2268, label %.lr.ph2267.preheader

.lr.ph2267.preheader:                             ; preds = %vector.memcheck, %vector.scevcheck3334, %iter.check3348, %vec.epilog.iter.check3350, %vec.epilog.middle.block3358
  %indvars.iv.ph = phi i64 [ %i.ccf, %iter.check3348 ], [ %i.ccf, %vector.scevcheck3334 ], [ %i.ccf, %vector.memcheck ], [ %i.cco, %vec.epilog.iter.check3350 ], [ %i.cez, %vec.epilog.middle.block3358 ] ; 6 uses
  %i.cfi = trunc nuw i64 %indvars.iv.ph to i8
  %xtraiter = and i8 %i.cfi, 1
  %lcmp.mod.not = icmp eq i8 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph2267.prol.loopexit, label %.lr.ph2267.prol

.lr.ph2267.prol:                                  ; preds = %.lr.ph2267.preheader
  %i.cfj = add nuw nsw i64 %indvars.iv.ph, 4294967295
  %i.cfk = and i64 %i.cfj, 4294967295
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cfk
  %i.cfm = load i8, ptr %i.cfl, align 1, !tbaa !45
  %i.cfn = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.ph
  store i8 %i.cfm, ptr %i.cfn, align 1, !tbaa !45
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, -1
  br label %.lr.ph2267.prol.loopexit

.lr.ph2267.prol.loopexit:                         ; preds = %.lr.ph2267.prol, %.lr.ph2267.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph2267.preheader ], [ %indvars.iv.next.prol, %.lr.ph2267.prol ]
  %i.cfo = icmp eq i64 %indvars.iv.ph, 1
  br i1 %i.cfo, label %._crit_edge2268, label %.lr.ph2267

.lr.ph2267:                                       ; preds = %.lr.ph2267.prol.loopexit, %.lr.ph2267
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph2267 ], [ %indvars.iv.unr, %.lr.ph2267.prol.loopexit ] ; 5 uses
  %i.cfp = add nuw nsw i64 %indvars.iv, 4294967295
  %i.cfq = and i64 %i.cfp, 4294967295
  %i.cfr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cfq
  %i.cfs = load i8, ptr %i.cfr, align 1, !tbaa !45
  %i.cft = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.cfs, ptr %i.cft, align 1, !tbaa !45
  %i.cfu = add nsw i64 %indvars.iv, 4294967294
  %i.cfv = and i64 %i.cfu, 4294967295
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cfv
  %i.cfx = load i8, ptr %i.cfw, align 1, !tbaa !45
  %i.cfy = getelementptr i8, ptr %i.a, i64 %indvars.iv
  %i.cfz = getelementptr i8, ptr %i.cfy, i64 -1
  store i8 %i.cfx, ptr %i.cfz, align 1, !tbaa !45
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.cga = and i64 %indvars.iv.next.1, 255
  %.not1867.1 = icmp eq i64 %i.cga, 0
  br i1 %.not1867.1, label %._crit_edge2268, label %.lr.ph2267, !llvm.loop !75

._crit_edge2268:                                  ; preds = %.lr.ph2267.prol.loopexit, %.lr.ph2267, %middle.block3344, %vec.epilog.middle.block3358, %bb.em
  store i8 %i.cch, ptr %i.a, align 16, !tbaa !45
  %i.cgb = getelementptr inbounds nuw i8, ptr %i.cbx, i64 %indvars.iv2594
  store i8 %i.cch, ptr %i.cgb, align 1, !tbaa !45
  %indvars.iv.next2595 = add nuw nsw i64 %indvars.iv2594, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next2595, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge2271, label %bb.em, !llvm.loop !76

._crit_edge2271:                                  ; preds = %._crit_edge2268, %.preheader1929
  %.12.lcssa = phi i32 [ 0, %.preheader1929 ], [ %spec.store.select, %._crit_edge2268 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.en

bb.en:                                            ; preds = %bb.fg, %._crit_edge2271
  %i.cgc = phi ptr [ %i.bxi, %._crit_edge2271 ], [ %i.ckr, %bb.fg ] ; 3 uses
  %i.cgd = phi ptr [ %i.bxj, %._crit_edge2271 ], [ %i.cks, %bb.fg ] ; 3 uses
  %i.cge = phi ptr [ %i.bxk, %._crit_edge2271 ], [ %i.ckt, %bb.fg ] ; 3 uses
  %i.cgf = phi ptr [ %i.bxl, %._crit_edge2271 ], [ %i.cku, %bb.fg ] ; 3 uses
  %i.cgg = phi ptr [ %i.bxm, %._crit_edge2271 ], [ %i.ckv, %bb.fg ] ; 3 uses
  %i.cgh = phi ptr [ %i.bxn, %._crit_edge2271 ], [ %i.ckw, %bb.fg ] ; 3 uses
  %i.cgi = phi ptr [ %i.bxo, %._crit_edge2271 ], [ %i.ckx, %bb.fg ] ; 3 uses
  %i.cgj = phi ptr [ %i.bxp, %._crit_edge2271 ], [ %i.cky, %bb.fg ] ; 3 uses
  %i.cgk = phi ptr [ %i.bxq, %._crit_edge2271 ], [ %i.ckz, %bb.fg ] ; 3 uses
  %i.cgl = phi ptr [ %i.bxr, %._crit_edge2271 ], [ %i.cla, %bb.fg ] ; 3 uses
  %i.cgm = phi ptr [ %i.bxs, %._crit_edge2271 ], [ %i.clb, %bb.fg ] ; 3 uses
  %i.cgn = phi ptr [ %i.bxt, %._crit_edge2271 ], [ %i.clc, %bb.fg ] ; 3 uses
  %i.cgo = phi ptr [ %i.bxu, %._crit_edge2271 ], [ %i.cld, %bb.fg ] ; 3 uses
  %i.cgp = phi ptr [ %i.bxv, %._crit_edge2271 ], [ %i.cle, %bb.fg ] ; 3 uses
  %i.cgq = phi ptr [ %i.bxw, %._crit_edge2271 ], [ %i.clf, %bb.fg ] ; 3 uses
  %i.cgr = phi ptr [ %i.bxx, %._crit_edge2271 ], [ %i.clg, %bb.fg ] ; 3 uses
  %i.cgs = phi ptr [ %i.bxy, %._crit_edge2271 ], [ %i.clh, %bb.fg ] ; 3 uses
  %i.cgt = phi ptr [ %i.bxz, %._crit_edge2271 ], [ %i.cli, %bb.fg ] ; 3 uses
  %i.cgu = phi ptr [ %i.bya, %._crit_edge2271 ], [ %i.clj, %bb.fg ] ; 3 uses
  %i.cgv = phi ptr [ %i.byb, %._crit_edge2271 ], [ %i.clk, %bb.fg ] ; 3 uses
  %i.cgw = phi ptr [ %i.byc, %._crit_edge2271 ], [ %i.cll, %bb.fg ] ; 3 uses
  %i.cgx = phi ptr [ %i.byd, %._crit_edge2271 ], [ %i.clm, %bb.fg ] ; 3 uses
  %i.cgy = phi ptr [ %i.bye, %._crit_edge2271 ], [ %i.cln, %bb.fg ] ; 3 uses
  %i.cgz = phi ptr [ %i.byf, %._crit_edge2271 ], [ %i.clo, %bb.fg ] ; 3 uses
  %i.cha = phi i32 [ %i.byh, %._crit_edge2271 ], [ %i.clp, %bb.fg ]
  %i.chb = phi i32 [ %i.byi, %._crit_edge2271 ], [ %i.clq, %bb.fg ]
  %i.chc = phi i32 [ %i.byj, %._crit_edge2271 ], [ %i.clr, %bb.fg ]
  %i.chd = phi i32 [ %i.byk, %._crit_edge2271 ], [ %i.cls, %bb.fg ] ; 3 uses
  %i.che = phi i32 [ %i.byl, %._crit_edge2271 ], [ %i.clt, %bb.fg ]
  %i.chf = phi i32 [ %i.bym, %._crit_edge2271 ], [ %i.clu, %bb.fg ]
  %i.chg = phi i32 [ %i.byn, %._crit_edge2271 ], [ %i.clv, %bb.fg ] ; 3 uses
  %i.chh = phi i32 [ %i.byo, %._crit_edge2271 ], [ %i.clw, %bb.fg ] ; 3 uses
  %i.chi = phi i32 [ %i.byq, %._crit_edge2271 ], [ %i.clx, %bb.fg ] ; 3 uses
  %i.chj = phi i32 [ %i.byr, %._crit_edge2271 ], [ %i.cly, %bb.fg ] ; 2 uses
  %i.chk = phi i32 [ %i.bys, %._crit_edge2271 ], [ %i.clz, %bb.fg ] ; 3 uses
  %i.chl = phi i32 [ %i.byt, %._crit_edge2271 ], [ %i.cma, %bb.fg ] ; 3 uses
  %i.chm = phi i32 [ %i.byu, %._crit_edge2271 ], [ %i.cmb, %bb.fg ] ; 2 uses
  %i.chn = phi i32 [ %i.byv, %._crit_edge2271 ], [ %i.cmc, %bb.fg ] ; 2 uses
  %i.cho = phi ptr [ %i.byw, %._crit_edge2271 ], [ %i.cmd, %bb.fg ] ; 2 uses
  %i.chp = phi ptr [ %i.byx, %._crit_edge2271 ], [ %i.cme, %bb.fg ] ; 2 uses
  %i.chq = phi ptr [ %i.byy, %._crit_edge2271 ], [ %i.cmf, %bb.fg ] ; 2 uses
  %.01633 = phi i32 [ %i.byp, %._crit_edge2271 ], [ %.21635, %bb.fg ] ; 3 uses
  %.31501 = phi i32 [ %spec.store.select, %._crit_edge2271 ], [ %.51503, %bb.fg ] ; 4 uses
  %.41480 = phi i32 [ %.11477, %._crit_edge2271 ], [ %.61482, %bb.fg ] ; 7 uses
  %.51458 = phi i32 [ %.21455, %._crit_edge2271 ], [ %.71460, %bb.fg ] ; 7 uses
  %.01434 = phi i32 [ 0, %._crit_edge2271 ], [ %i.ctq, %bb.fg ] ; 2 uses
  %.91414 = phi i32 [ %.61411, %._crit_edge2271 ], [ %.111416, %bb.fg ] ; 3 uses
  %.13 = phi i32 [ %.12.lcssa, %._crit_edge2271 ], [ %.15, %bb.fg ]
  %i.chr = icmp slt i32 %.01434, %.41480
  br i1 %i.chr, label %bb.eo, label %.preheader1928

.preheader1928:                                   ; preds = %bb.en
  %i.chs = icmp sgt i32 %.41480, 0
  br i1 %i.chs, label %.preheader1927.lr.ph, label %._crit_edge2281

.preheader1927.lr.ph:                             ; preds = %.preheader1928
  %i.cht = icmp sgt i32 %.51458, 0
  %i.chu = getelementptr inbounds nuw i8, ptr %0, i64 43888 ; 2 uses
  %i.chv = getelementptr inbounds nuw i8, ptr %0, i64 45436
  %i.chw = getelementptr inbounds nuw i8, ptr %0, i64 51628
  %i.chx = getelementptr inbounds nuw i8, ptr %0, i64 57820
  %i.chy = getelementptr inbounds nuw i8, ptr %0, i64 64012
  %wide.trip.count2608 = zext nneg i32 %.41480 to i64
  %wide.trip.count2602 = zext i32 %.51458 to i64  ; 3 uses
  %min.iters.check3361 = icmp ult i32 %.51458, 8
  %n.vec3363 = and i64 %wide.trip.count2602, 2147483640 ; 3 uses
  %cmp.n3374 = icmp eq i64 %n.vec3363, %wide.trip.count2602
  br label %.preheader1927

bb.eo:                                            ; preds = %bb.en, %bb.b
  %i.chz = phi ptr [ %i.cgc, %bb.en ], [ %i.bd, %bb.b ] ; 2 uses
  %i.cia = phi ptr [ %i.cgd, %bb.en ], [ %i.bc, %bb.b ] ; 2 uses
  %i.cib = phi ptr [ %i.cge, %bb.en ], [ %i.bb, %bb.b ] ; 2 uses
  %i.cic = phi ptr [ %i.cgf, %bb.en ], [ %i.ba, %bb.b ] ; 2 uses
  %i.cid = phi ptr [ %i.cgg, %bb.en ], [ %i.az, %bb.b ] ; 2 uses
  %i.cie = phi ptr [ %i.cgh, %bb.en ], [ %i.ay, %bb.b ] ; 2 uses
  %i.cif = phi ptr [ %i.cgi, %bb.en ], [ %i.ax, %bb.b ] ; 2 uses
  %i.cig = phi ptr [ %i.cgj, %bb.en ], [ %i.aw, %bb.b ] ; 2 uses
  %i.cih = phi ptr [ %i.cgk, %bb.en ], [ %i.av, %bb.b ] ; 2 uses
  %i.cii = phi ptr [ %i.cgl, %bb.en ], [ %i.au, %bb.b ] ; 2 uses
  %i.cij = phi ptr [ %i.cgm, %bb.en ], [ %i.at, %bb.b ] ; 2 uses
  %i.cik = phi ptr [ %i.cgn, %bb.en ], [ %i.as, %bb.b ] ; 2 uses
  %i.cil = phi ptr [ %i.cgo, %bb.en ], [ %i.ar, %bb.b ] ; 2 uses
  %i.cim = phi ptr [ %i.cgp, %bb.en ], [ %i.aq, %bb.b ] ; 2 uses
  %i.cin = phi ptr [ %i.cgq, %bb.en ], [ %i.ap, %bb.b ] ; 2 uses
  %i.cio = phi ptr [ %i.cgr, %bb.en ], [ %i.ao, %bb.b ] ; 2 uses
  %i.cip = phi ptr [ %i.cgs, %bb.en ], [ %i.an, %bb.b ] ; 2 uses
  %i.ciq = phi ptr [ %i.cgt, %bb.en ], [ %i.am, %bb.b ] ; 2 uses
  %i.cir = phi ptr [ %i.cgu, %bb.en ], [ %i.al, %bb.b ] ; 2 uses
  %i.cis = phi ptr [ %i.cgv, %bb.en ], [ %i.ak, %bb.b ] ; 2 uses
  %i.cit = phi ptr [ %i.cgw, %bb.en ], [ %i.aj, %bb.b ] ; 2 uses
  %i.ciu = phi ptr [ %i.cgx, %bb.en ], [ %i.ai, %bb.b ] ; 2 uses
  %i.civ = phi ptr [ %i.cgy, %bb.en ], [ %i.ah, %bb.b ] ; 2 uses
  %i.ciw = phi ptr [ %i.cgz, %bb.en ], [ %i.ag, %bb.b ] ; 2 uses
  %i.cix = phi i32 [ %i.cha, %bb.en ], [ %.pre2720, %bb.b ] ; 2 uses
  %i.ciy = phi i32 [ %i.chb, %bb.en ], [ %.pre2722, %bb.b ] ; 2 uses
  %i.ciz = phi i32 [ %i.chc, %bb.en ], [ %.pre2724, %bb.b ] ; 2 uses
  %i.cja = phi i32 [ %i.chd, %bb.en ], [ %.pre2726, %bb.b ] ; 2 uses
  %i.cjb = phi i32 [ %i.che, %bb.en ], [ %.pre2728, %bb.b ] ; 2 uses
  %i.cjc = phi i32 [ %i.chf, %bb.en ], [ %.pre2730, %bb.b ] ; 2 uses
  %i.cjd = phi i32 [ %i.chg, %bb.en ], [ %.pre2732, %bb.b ] ; 2 uses
  %i.cje = phi i32 [ %i.chh, %bb.en ], [ %.pre2734, %bb.b ] ; 2 uses
  %i.cjf = phi i32 [ %i.chi, %bb.en ], [ %.pre2738, %bb.b ] ; 2 uses
  %i.cjg = phi i32 [ %i.chj, %bb.en ], [ %.pre2740, %bb.b ] ; 2 uses
  %i.cjh = phi i32 [ %i.chk, %bb.en ], [ %.pre2742, %bb.b ] ; 2 uses
  %i.cji = phi i32 [ %i.chl, %bb.en ], [ %.pre2744, %bb.b ] ; 2 uses
  %i.cjj = phi i32 [ %i.chm, %bb.en ], [ %.pre2746, %bb.b ] ; 2 uses
  %i.cjk = phi i32 [ %i.chn, %bb.en ], [ %.pre2748, %bb.b ] ; 2 uses
  %i.cjl = phi ptr [ %i.cho, %bb.en ], [ %.pre2750, %bb.b ] ; 2 uses
  %i.cjm = phi ptr [ %i.chp, %bb.en ], [ %.pre2752, %bb.b ] ; 2 uses
  %i.cjn = phi ptr [ %i.chq, %bb.en ], [ %.pre2754, %bb.b ] ; 2 uses
  %.11634 = phi i32 [ %.01633, %bb.en ], [ %.pre2736, %bb.b ]
  %.41502 = phi i32 [ %.31501, %bb.en ], [ %.pre2718, %bb.b ] ; 2 uses
  %.51481 = phi i32 [ %.41480, %bb.en ], [ %.pre2716, %bb.b ] ; 2 uses
  %.61459 = phi i32 [ %.51458, %bb.en ], [ %.pre2714, %bb.b ] ; 2 uses
  %.11435 = phi i32 [ %.01434, %bb.en ], [ %.pre2712, %bb.b ] ; 2 uses
  %.101415 = phi i32 [ %.91414, %bb.en ], [ %.pre2710, %bb.b ] ; 2 uses
  %.14 = phi i32 [ %.13, %bb.en ], [ %.pre, %bb.b ]
  store i32 33, ptr %i.c, align 8, !tbaa !15
  %i.cjo = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %.promoted2377 = load i32, ptr %i.cjo, align 4, !tbaa !16 ; 3 uses
  %i.cjp = icmp sgt i32 %.promoted2377, 4
  br i1 %i.cjp, label %.._crit_edge2380_crit_edge, label %.lr.ph2379

.._crit_edge2380_crit_edge:                       ; preds = %bb.eo
  %.phi.trans.insert2869.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre2870.a = load i32, ptr %.phi.trans.insert2869.a, align 8, !tbaa !41
  br label %._crit_edge2380

.lr.ph2379:                                       ; preds = %bb.eo
  %i.cjq = load ptr, ptr %0, align 8, !tbaa !9    ; 5 uses
  %i.cjr = getelementptr inbounds nuw i8, ptr %i.cjq, i64 8 ; 2 uses
  %i.cjs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cjt = getelementptr inbounds nuw i8, ptr %i.cjq, i64 12 ; 2 uses
  %i.cju = getelementptr inbounds nuw i8, ptr %i.cjq, i64 16 ; 2 uses
  %.promoted2383 = load i32, ptr %i.cjr, align 8, !tbaa !42
  br label %bb.ep

._crit_edge2380:                                  ; preds = %bb.es, %.._crit_edge2380_crit_edge
  %i.cjv = phi i32 [ %.pre2870.a, %.._crit_edge2380_crit_edge ], [ %i.ckh, %bb.es ]
  %.lcssa2007 = phi i32 [ %.promoted2377, %.._crit_edge2380_crit_edge ], [ %i.cki, %bb.es ]
  %i.cjw = add nsw i32 %.lcssa2007, -5            ; 2 uses
  %i.cjx = lshr i32 %i.cjv, %i.cjw
  %i.cjy = and i32 %i.cjx, 31
  store i32 %i.cjw, ptr %i.cjo, align 4, !tbaa !16
  br label %bb.et
end_hunk_0
begin_hunk_1_@BZ2_decompress:bb.a
  %i.eso = and i32 %i.esn, 4
  %i.esp = lshr i32 %i.esm, %i.eso
  %i.esq = shl nuw nsw i32 %i.esp, 16
  %i.esr = and i32 %i.esq, 983040
  %i.ess = or disjoint i32 %i.esr, %i.esf
  br label %bb.ij

bb.ij:                                            ; preds = %bb.im, %._crit_edge2365
  %.261431 = phi i32 [ %i.ess, %._crit_edge2365 ], [ %i.etj, %bb.im ] ; 13 uses
  %.39 = phi i32 [ %i.erz, %._crit_edge2365 ], [ %.261431, %bb.im ] ; 3 uses
  %i.est = load ptr, ptr %i.esa, align 8, !tbaa !52
  %i.esu = zext nneg i32 %.261431 to i64
  %i.esv = getelementptr inbounds nuw [2 x i8], ptr %i.est, i64 %i.esu ; 2 uses
  %i.esw = load i16, ptr %i.esv, align 2, !tbaa !84
  %i.esx = zext i16 %i.esw to i32
  %i.esy = load ptr, ptr %i.esg, align 8, !tbaa !53
  %i.esz = lshr i32 %.261431, 1
  %i.eta = zext nneg i32 %i.esz to i64
  %i.etb = getelementptr inbounds nuw i8, ptr %i.esy, i64 %i.eta ; 3 uses
  %i.etc = load i8, ptr %i.etb, align 1, !tbaa !45
  %i.etd = zext i8 %i.etc to i32
  %i.ete = shl nuw nsw i32 %.261431, 2
  %i.etf = and i32 %i.ete, 4
  %i.etg = lshr i32 %i.etd, %i.etf
  %i.eth = shl nuw nsw i32 %i.etg, 16
  %i.eti = and i32 %i.eth, 983040
  %i.etj = or disjoint i32 %i.eti, %i.esx         ; 3 uses
  %i.etk = trunc i32 %.39 to i16
  store i16 %i.etk, ptr %i.esv, align 2, !tbaa !84
  %i.etl = and i32 %.261431, 1
  %i.etm = icmp eq i32 %i.etl, 0
  %i.etn = load i8, ptr %i.etb, align 1, !tbaa !45 ; 2 uses
  br i1 %i.etm, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  %i.eto = and i8 %i.etn, -16
  %i.etp = lshr i32 %.39, 16
  %i.etq = trunc i32 %i.etp to i8
  %i.etr = or i8 %i.eto, %i.etq
  br label %bb.im

bb.il:                                            ; preds = %bb.ij
  %i.ets = and i8 %i.etn, 15
  %i.ett = lshr i32 %.39, 12
  %i.etu = trunc i32 %i.ett to i8
  %i.etv = and i8 %i.etu, -16
  %i.etw = or disjoint i8 %i.ets, %i.etv
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %bb.ik
  %storemerge = phi i8 [ %i.etw, %bb.il ], [ %i.etr, %bb.ik ]
  store i8 %storemerge, ptr %i.etb, align 1, !tbaa !45
  %i.etx = load i32, ptr %i.edw, align 8, !tbaa !61
  %.not1863 = icmp eq i32 %.261431, %i.etx
  br i1 %.not1863, label %bb.in, label %bb.ij, !llvm.loop !104

bb.in:                                            ; preds = %bb.im
  %i.ety = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 5 uses
  store i32 %.261431, ptr %i.ety, align 4, !tbaa !105
  %i.etz = getelementptr inbounds nuw i8, ptr %0, i64 1092 ; 5 uses
  store i32 0, ptr %i.etz, align 4, !tbaa !106
  %i.eua = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.eub = load i8, ptr %i.eua, align 4, !tbaa !60
  %.not1864 = icmp eq i8 %i.eub, 0
  br i1 %.not1864, label %bb.is, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.euc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i32 0, ptr %i.euc, align 8, !tbaa !107
  %i.eud = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  store i32 0, ptr %i.eud, align 4, !tbaa !108
  %i.eue = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.euf = load i32, ptr %i.eue, align 8, !tbaa !48
  %i.eug = mul i32 %i.euf, 100000
  %.not1866 = icmp ult i32 %.261431, %i.eug
  br i1 %.not1866, label %bb.ip, label %bb.ku

bb.ip:                                            ; preds = %bb.io
  %i.euh = tail call i32 @BZ2_indexIntoF(i32 noundef %.261431, ptr noundef nonnull %i.eeq) #8 ; 2 uses
  %i.eui = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i32 %i.euh, ptr %i.eui, align 8, !tbaa !109
  %i.euj = load ptr, ptr %i.esa, align 8, !tbaa !52
  %i.euk = load i32, ptr %i.ety, align 4, !tbaa !105 ; 3 uses
  %i.eul = zext i32 %i.euk to i64
  %i.eum = getelementptr inbounds nuw [2 x i8], ptr %i.euj, i64 %i.eul
  %i.eun = load i16, ptr %i.eum, align 2, !tbaa !84
  %i.euo = zext i16 %i.eun to i32
  %i.eup = load ptr, ptr %i.esg, align 8, !tbaa !53
  %i.euq = lshr i32 %i.euk, 1
  %i.eur = zext nneg i32 %i.euq to i64
  %i.eus = getelementptr inbounds nuw i8, ptr %i.eup, i64 %i.eur
  %i.eut = load i8, ptr %i.eus, align 1, !tbaa !45
  %i.euu = zext i8 %i.eut to i32
  %i.euv = shl i32 %i.euk, 2
  %i.euw = and i32 %i.euv, 4
  %i.eux = lshr i32 %i.euu, %i.euw
  %i.euy = shl nuw nsw i32 %i.eux, 16
  %i.euz = and i32 %i.euy, 983040
  %i.eva = or disjoint i32 %i.euz, %i.euo
  store i32 %i.eva, ptr %i.ety, align 4, !tbaa !105
  %i.evb = load i32, ptr %i.etz, align 4, !tbaa !106
  %i.evc = add nsw i32 %i.evb, 1
  store i32 %i.evc, ptr %i.etz, align 4, !tbaa !106
  %i.evd = load i32, ptr %i.euc, align 8, !tbaa !107 ; 2 uses
  %i.eve = icmp eq i32 %i.evd, 0
  br i1 %i.eve, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.evf = load i32, ptr %i.eud, align 4, !tbaa !108 ; 2 uses
  %i.evg = sext i32 %i.evf to i64
  %i.evh = getelementptr inbounds [4 x i8], ptr @BZ2_rNums, i64 %i.evg
  %i.evi = load i32, ptr %i.evh, align 4, !tbaa !81
  %i.evj = add nsw i32 %i.evf, 1                  ; 2 uses
  %i.evk = icmp eq i32 %i.evj, 512
  %spec.store.select1884 = select i1 %i.evk, i32 0, i32 %i.evj
  store i32 %spec.store.select1884, ptr %i.eud, align 4
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.ip
  %i.evl = phi i32 [ %i.evi, %bb.iq ], [ %i.evd, %bb.ip ]
  %i.evm = add nsw i32 %i.evl, -1                 ; 2 uses
  store i32 %i.evm, ptr %i.euc, align 8, !tbaa !107
  %i.evn = icmp eq i32 %i.evm, 1
  %i.evo = zext i1 %i.evn to i32
  %i.evp = xor i32 %i.euh, %i.evo
  store i32 %i.evp, ptr %i.eui, align 8, !tbaa !109
  br label %.loopexit

bb.is:                                            ; preds = %bb.in
  %i.evq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.evr = load i32, ptr %i.evq, align 8, !tbaa !48
  %i.evs = mul i32 %i.evr, 100000
  %.not1865 = icmp ult i32 %.261431, %i.evs
  br i1 %.not1865, label %bb.it, label %bb.ku

bb.it:                                            ; preds = %bb.is
  %i.evt = tail call i32 @BZ2_indexIntoF(i32 noundef %.261431, ptr noundef nonnull %i.eeq) #8
  %i.evu = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.evt, ptr %i.evu, align 8, !tbaa !109
  %i.evv = load ptr, ptr %i.esa, align 8, !tbaa !52
  %i.evw = load i32, ptr %i.ety, align 4, !tbaa !105 ; 3 uses
  %i.evx = zext i32 %i.evw to i64
  %i.evy = getelementptr inbounds nuw [2 x i8], ptr %i.evv, i64 %i.evx
  %i.evz = load i16, ptr %i.evy, align 2, !tbaa !84
  %i.ewa = zext i16 %i.evz to i32
  %i.ewb = load ptr, ptr %i.esg, align 8, !tbaa !53
  %i.ewc = lshr i32 %i.evw, 1
  %i.ewd = zext nneg i32 %i.ewc to i64
  %i.ewe = getelementptr inbounds nuw i8, ptr %i.ewb, i64 %i.ewd
  %i.ewf = load i8, ptr %i.ewe, align 1, !tbaa !45
  %i.ewg = zext i8 %i.ewf to i32
  %i.ewh = shl i32 %i.evw, 2
  %i.ewi = and i32 %i.ewh, 4
  %i.ewj = lshr i32 %i.ewg, %i.ewi
  %i.ewk = shl nuw nsw i32 %i.ewj, 16
  %i.ewl = and i32 %i.ewk, 983040
  %i.ewm = or disjoint i32 %i.ewl, %i.ewa
  store i32 %i.ewm, ptr %i.ety, align 4, !tbaa !105
  %i.ewn = load i32, ptr %i.etz, align 4, !tbaa !106
  %i.ewo = add nsw i32 %i.ewn, 1
  store i32 %i.ewo, ptr %i.etz, align 4, !tbaa !106
  br label %.loopexit

bb.iu:                                            ; preds = %bb.iu, %.lr.ph2367.new
  %indvars.iv2702 = phi i64 [ 0, %.lr.ph2367.new ], [ %indvars.iv.next2703.1, %bb.iu ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph2367.new ], [ %niter.next.1, %bb.iu ]
  %i.ewp = getelementptr inbounds nuw [4 x i8], ptr %i.eqv, i64 %indvars.iv2702
  %i.ewq = load i32, ptr %i.ewp, align 4, !tbaa !81
  %i.ewr = trunc nuw nsw i64 %indvars.iv2702 to i32
  %i.ews = shl i32 %i.ewr, 8
  %i.ewt = and i32 %i.ewq, 255
  %i.ewu = zext nneg i32 %i.ewt to i64
  %i.ewv = getelementptr inbounds nuw [4 x i8], ptr %i.eeq, i64 %i.ewu ; 3 uses
  %i.eww = load i32, ptr %i.ewv, align 4, !tbaa !81
  %i.ewx = sext i32 %i.eww to i64
  %i.ewy = getelementptr inbounds [4 x i8], ptr %i.eqv, i64 %i.ewx ; 2 uses
  %i.ewz = load i32, ptr %i.ewy, align 4, !tbaa !81
  %i.exa = or i32 %i.ewz, %i.ews
  store i32 %i.exa, ptr %i.ewy, align 4, !tbaa !81
  %i.exb = load i32, ptr %i.ewv, align 4, !tbaa !81
  %i.exc = add nsw i32 %i.exb, 1
  store i32 %i.exc, ptr %i.ewv, align 4, !tbaa !81
  %indvars.iv.next2703 = or disjoint i64 %indvars.iv2702, 1 ; 2 uses
  %i.exd = getelementptr inbounds nuw [4 x i8], ptr %i.eqv, i64 %indvars.iv.next2703
  %i.exe = load i32, ptr %i.exd, align 4, !tbaa !81
  %i.exf = trunc nuw nsw i64 %indvars.iv.next2703 to i32
  %i.exg = shl i32 %i.exf, 8
  %i.exh = and i32 %i.exe, 255
  %i.exi = zext nneg i32 %i.exh to i64
  %i.exj = getelementptr inbounds nuw [4 x i8], ptr %i.eeq, i64 %i.exi ; 3 uses
  %i.exk = load i32, ptr %i.exj, align 4, !tbaa !81
  %i.exl = sext i32 %i.exk to i64
  %i.exm = getelementptr inbounds [4 x i8], ptr %i.eqv, i64 %i.exl ; 2 uses
  %i.exn = load i32, ptr %i.exm, align 4, !tbaa !81
  %i.exo = or i32 %i.exn, %i.exg
  store i32 %i.exo, ptr %i.exm, align 4, !tbaa !81
  %i.exp = load i32, ptr %i.exj, align 4, !tbaa !81
  %i.exq = add nsw i32 %i.exp, 1
  store i32 %i.exq, ptr %i.exj, align 4, !tbaa !81
  %indvars.iv.next2703.1 = add nuw nsw i64 %indvars.iv2702, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge2368.loopexit.unr-lcssa, label %bb.iu, !llvm.loop !110

._crit_edge2368.loopexit.unr-lcssa:               ; preds = %bb.iu
  %lcmp.mod3648.not = icmp eq i64 %xtraiter3647, 0
  br i1 %lcmp.mod3648.not, label %._crit_edge2368, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge2368.loopexit.unr-lcssa, %.lr.ph2367
  %indvars.iv2702.epil.init = phi i64 [ 0, %.lr.ph2367 ], [ %indvars.iv.next2703.1, %._crit_edge2368.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3649 = trunc i32 %.31597 to i1
  tail call void @llvm.assume(i1 %lcmp.mod3649)
  %i.exr = getelementptr inbounds nuw [4 x i8], ptr %i.eqv, i64 %indvars.iv2702.epil.init
  %i.exs = load i32, ptr %i.exr, align 4, !tbaa !81
  %i.ext = trunc nuw nsw i64 %indvars.iv2702.epil.init to i32
  %i.exu = shl i32 %i.ext, 8
  %i.exv = and i32 %i.exs, 255
  %i.exw = zext nneg i32 %i.exv to i64
  %i.exx = getelementptr inbounds nuw [4 x i8], ptr %i.eeq, i64 %i.exw ; 3 uses
  %i.exy = load i32, ptr %i.exx, align 4, !tbaa !81
  %i.exz = sext i32 %i.exy to i64
  %i.eya = getelementptr inbounds [4 x i8], ptr %i.eqv, i64 %i.exz ; 2 uses
  %i.eyb = load i32, ptr %i.eya, align 4, !tbaa !81
  %i.eyc = or i32 %i.eyb, %i.exu
  store i32 %i.eyc, ptr %i.eya, align 4, !tbaa !81
  %i.eyd = load i32, ptr %i.exx, align 4, !tbaa !81
  %i.eye = add nsw i32 %i.eyd, 1
  store i32 %i.eye, ptr %i.exx, align 4, !tbaa !81
  br label %._crit_edge2368

._crit_edge2368:                                  ; preds = %.epil.preheader, %._crit_edge2368.loopexit.unr-lcssa, %.preheader
  %.40.lcssa = phi i32 [ 0, %.preheader ], [ %.31597, %._crit_edge2368.loopexit.unr-lcssa ], [ %.31597, %.epil.preheader ] ; 2 uses
  %i.eyf = load i32, ptr %i.edw, align 8, !tbaa !61
  %i.eyg = sext i32 %i.eyf to i64
  %i.eyh = getelementptr inbounds [4 x i8], ptr %i.eqv, i64 %i.eyg
  %i.eyi = load i32, ptr %i.eyh, align 4, !tbaa !81
  %i.eyj = lshr i32 %i.eyi, 8                     ; 5 uses
  %i.eyk = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  store i32 %i.eyj, ptr %i.eyk, align 4, !tbaa !105
  %i.eyl = getelementptr inbounds nuw i8, ptr %0, i64 1092 ; 3 uses
  store i32 0, ptr %i.eyl, align 4, !tbaa !106
  %i.eym = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.eyn = load i8, ptr %i.eym, align 4, !tbaa !60
  %.not1860 = icmp eq i8 %i.eyn, 0
  br i1 %.not1860, label %bb.ix, label %bb.iv

bb.iv:                                            ; preds = %._crit_edge2368
  %i.eyo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.eyo, align 8, !tbaa !107
  %i.eyp = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  store i32 0, ptr %i.eyp, align 4, !tbaa !108
  %i.eyq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eyr = load i32, ptr %i.eyq, align 8, !tbaa !48
  %i.eys = mul i32 %i.eyr, 100000
  %.not1862 = icmp ult i32 %i.eyj, %i.eys
  br i1 %.not1862, label %bb.iw, label %bb.ku

bb.iw:                                            ; preds = %bb.iv
  %i.eyt = zext nneg i32 %i.eyj to i64
  %i.eyu = getelementptr inbounds nuw [4 x i8], ptr %i.eqv, i64 %i.eyt
  %i.eyv = load i32, ptr %i.eyu, align 4, !tbaa !81 ; 2 uses
  %i.eyw = and i32 %i.eyv, 255
  %i.eyx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.eyy = lshr i32 %i.eyv, 8
  store i32 %i.eyy, ptr %i.eyk, align 4, !tbaa !105
  store i32 1, ptr %i.eyl, align 4, !tbaa !106
  %i.eyz = load i32, ptr @BZ2_rNums, align 16, !tbaa !81
  store i32 1, ptr %i.eyp, align 4
  %i.eza = add nsw i32 %i.eyz, -1                 ; 2 uses
  store i32 %i.eza, ptr %i.eyo, align 8, !tbaa !107
  %i.ezb = icmp eq i32 %i.eza, 1
  %i.ezc = zext i1 %i.ezb to i32
  %i.ezd = xor i32 %i.eyw, %i.ezc
  store i32 %i.ezd, ptr %i.eyx, align 8, !tbaa !109
  br label %.loopexit

bb.ix:                                            ; preds = %._crit_edge2368
  %i.eze = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ezf = load i32, ptr %i.eze, align 8, !tbaa !48
  %i.ezg = mul i32 %i.ezf, 100000
  %.not1861 = icmp ult i32 %i.eyj, %i.ezg
  br i1 %.not1861, label %bb.iy, label %bb.ku

bb.iy:                                            ; preds = %bb.ix
  %i.ezh = zext nneg i32 %i.eyj to i64
  %i.ezi = getelementptr inbounds nuw [4 x i8], ptr %i.eqv, i64 %i.ezh
  %i.ezj = load i32, ptr %i.ezi, align 4, !tbaa !81 ; 2 uses
  %i.ezk = and i32 %i.ezj, 255
  %i.ezl = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.ezk, ptr %i.ezl, align 8, !tbaa !109
  %i.ezm = lshr i32 %i.ezj, 8
  store i32 %i.ezm, ptr %i.eyk, align 4, !tbaa !105
  store i32 1, ptr %i.eyl, align 4, !tbaa !106
  br label %.loopexit

bb.iz:                                            ; preds = %._crit_edge2884, %._crit_edge2151
  %i.ezn = phi ptr [ %i.bd, %._crit_edge2884 ], [ %i.ly, %._crit_edge2151 ] ; 3 uses
  %i.ezo = phi ptr [ %i.bc, %._crit_edge2884 ], [ %i.lz, %._crit_edge2151 ] ; 3 uses
  %i.ezp = phi ptr [ %i.bb, %._crit_edge2884 ], [ %i.ma, %._crit_edge2151 ] ; 3 uses
  %i.ezq = phi ptr [ %i.ba, %._crit_edge2884 ], [ %i.mb, %._crit_edge2151 ] ; 3 uses
  %i.ezr = phi ptr [ %i.az, %._crit_edge2884 ], [ %i.mc, %._crit_edge2151 ] ; 3 uses
  %i.ezs = phi ptr [ %i.ay, %._crit_edge2884 ], [ %i.md, %._crit_edge2151 ] ; 3 uses
  %i.ezt = phi ptr [ %i.ax, %._crit_edge2884 ], [ %i.me, %._crit_edge2151 ] ; 3 uses
  %i.ezu = phi ptr [ %i.aw, %._crit_edge2884 ], [ %i.mf, %._crit_edge2151 ] ; 3 uses
  %i.ezv = phi ptr [ %i.av, %._crit_edge2884 ], [ %i.mg, %._crit_edge2151 ] ; 3 uses
  %i.ezw = phi ptr [ %i.au, %._crit_edge2884 ], [ %i.mh, %._crit_edge2151 ] ; 3 uses
  %i.ezx = phi ptr [ %i.at, %._crit_edge2884 ], [ %i.mi, %._crit_edge2151 ] ; 3 uses
  %i.ezy = phi ptr [ %i.as, %._crit_edge2884 ], [ %i.mj, %._crit_edge2151 ] ; 3 uses
  %i.ezz = phi ptr [ %i.ar, %._crit_edge2884 ], [ %i.mk, %._crit_edge2151 ] ; 3 uses
  %i.faa = phi ptr [ %i.aq, %._crit_edge2884 ], [ %i.ml, %._crit_edge2151 ] ; 3 uses
  %i.fab = phi ptr [ %i.ap, %._crit_edge2884 ], [ %i.mm, %._crit_edge2151 ] ; 3 uses
  %i.fac = phi ptr [ %i.ao, %._crit_edge2884 ], [ %i.mn, %._crit_edge2151 ] ; 3 uses
  %i.fad = phi ptr [ %i.an, %._crit_edge2884 ], [ %i.mo, %._crit_edge2151 ] ; 3 uses
  %i.fae = phi ptr [ %i.am, %._crit_edge2884 ], [ %i.mp, %._crit_edge2151 ] ; 3 uses
  %i.faf = phi ptr [ %i.al, %._crit_edge2884 ], [ %i.mq, %._crit_edge2151 ] ; 3 uses
  %i.fag = phi ptr [ %i.ak, %._crit_edge2884 ], [ %i.mr, %._crit_edge2151 ] ; 3 uses
  %i.fah = phi ptr [ %i.aj, %._crit_edge2884 ], [ %i.ms, %._crit_edge2151 ] ; 3 uses
  %i.fai = phi ptr [ %i.ai, %._crit_edge2884 ], [ %i.mt, %._crit_edge2151 ] ; 3 uses
  %i.faj = phi ptr [ %i.ah, %._crit_edge2884 ], [ %i.mu, %._crit_edge2151 ] ; 3 uses
  %i.fak = phi ptr [ %i.ag, %._crit_edge2884 ], [ %i.mv, %._crit_edge2151 ] ; 3 uses
  %i.fal = phi i32 [ %.pre, %._crit_edge2884 ], [ %i.mw, %._crit_edge2151 ] ; 3 uses
  %i.fam = phi i32 [ %.pre2710, %._crit_edge2884 ], [ %i.mx, %._crit_edge2151 ] ; 3 uses
  %i.fan = phi i32 [ %.pre2712, %._crit_edge2884 ], [ %i.my, %._crit_edge2151 ] ; 3 uses
  %i.fao = phi i32 [ %.pre2714, %._crit_edge2884 ], [ %i.mz, %._crit_edge2151 ] ; 3 uses
  %i.fap = phi i32 [ %.pre2716, %._crit_edge2884 ], [ %i.na, %._crit_edge2151 ] ; 3 uses
  %i.faq = phi i32 [ %.pre2718, %._crit_edge2884 ], [ %i.nb, %._crit_edge2151 ] ; 3 uses
  %i.far = phi i32 [ %.pre2720, %._crit_edge2884 ], [ %i.nc, %._crit_edge2151 ] ; 3 uses
  %i.fas = phi i32 [ %.pre2722, %._crit_edge2884 ], [ %i.nd, %._crit_edge2151 ] ; 3 uses
  %i.fat = phi i32 [ %.pre2724, %._crit_edge2884 ], [ %i.ne, %._crit_edge2151 ] ; 3 uses
  %i.fau = phi i32 [ %.pre2726, %._crit_edge2884 ], [ %i.nf, %._crit_edge2151 ] ; 3 uses
  %i.fav = phi i32 [ %.pre2728, %._crit_edge2884 ], [ %i.ng, %._crit_edge2151 ] ; 3 uses
  %i.faw = phi i32 [ %.pre2730, %._crit_edge2884 ], [ %i.nh, %._crit_edge2151 ] ; 3 uses
  %i.fax = phi i32 [ %.pre2732, %._crit_edge2884 ], [ %i.ni, %._crit_edge2151 ] ; 3 uses
  %i.fay = phi i32 [ %.pre2734, %._crit_edge2884 ], [ %i.nj, %._crit_edge2151 ] ; 3 uses
  %i.faz = phi i32 [ %.pre2736, %._crit_edge2884 ], [ %i.nk, %._crit_edge2151 ] ; 3 uses
  %i.fba = phi i32 [ %.pre2738, %._crit_edge2884 ], [ %i.nl, %._crit_edge2151 ] ; 3 uses
  %i.fbb = phi i32 [ %.pre2740, %._crit_edge2884 ], [ %i.nm, %._crit_edge2151 ] ; 3 uses
  %i.fbc = phi i32 [ %.pre2742, %._crit_edge2884 ], [ %i.nn, %._crit_edge2151 ] ; 3 uses
  %i.fbd = phi i32 [ %.pre2744, %._crit_edge2884 ], [ %i.no, %._crit_edge2151 ] ; 3 uses
  %i.fbe = phi i32 [ %.pre2746, %._crit_edge2884 ], [ %i.np, %._crit_edge2151 ] ; 3 uses
  %i.fbf = phi i32 [ %.pre2748, %._crit_edge2884 ], [ %i.nq, %._crit_edge2151 ] ; 3 uses
  %i.fbg = phi ptr [ %.pre2750, %._crit_edge2884 ], [ %i.nr, %._crit_edge2151 ] ; 3 uses
  %i.fbh = phi ptr [ %.pre2752, %._crit_edge2884 ], [ %i.ns, %._crit_edge2151 ] ; 3 uses
  %i.fbi = phi ptr [ %.pre2754, %._crit_edge2884 ], [ %i.nt, %._crit_edge2151 ] ; 3 uses
  %.promoted2419 = phi i32 [ %.promoted2419.pre, %._crit_edge2884 ], [ %.lcssa2105, %._crit_edge2151 ] ; 3 uses
  store i32 42, ptr %i.c, align 8, !tbaa !15
  %i.fbj = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.fbk = icmp sgt i32 %.promoted2419, 7
  br i1 %i.fbk, label %.._crit_edge2422_crit_edge, label %.lr.ph2421

.._crit_edge2422_crit_edge:                       ; preds = %bb.iz
  %.phi.trans.insert2887 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre2888 = load i32, ptr %.phi.trans.insert2887, align 8, !tbaa !41
  %i.fbl = add nsw i32 %.promoted2419, -8
  br label %._crit_edge2422

.lr.ph2421:                                       ; preds = %bb.iz
  %i.fbm = load ptr, ptr %0, align 8, !tbaa !9    ; 5 uses
  %i.fbn = getelementptr inbounds nuw i8, ptr %i.fbm, i64 8 ; 2 uses
  %i.fbo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fbp = getelementptr inbounds nuw i8, ptr %i.fbm, i64 12 ; 2 uses
  %i.fbq = getelementptr inbounds nuw i8, ptr %i.fbm, i64 16 ; 2 uses
  %.promoted2425 = load i32, ptr %i.fbn, align 8, !tbaa !42
  br label %bb.ja

._crit_edge2422:                                  ; preds = %bb.jd, %.._crit_edge2422_crit_edge
  %i.fbr = phi i32 [ %.pre2888, %.._crit_edge2422_crit_edge ], [ %i.fcc, %bb.jd ]
  %.lcssa1983 = phi i32 [ %i.fbl, %.._crit_edge2422_crit_edge ], [ %i.fbv, %bb.jd ] ; 3 uses
  %i.fbs = lshr i32 %i.fbr, %.lcssa1983
  store i32 %.lcssa1983, ptr %i.fbj, align 4, !tbaa !16
  %i.fbt = and i32 %i.fbs, 255
  %.not1872 = icmp eq i32 %i.fbt, 114
  br i1 %.not1872, label %bb.je, label %.loopexit

bb.ja:                                            ; preds = %.lr.ph2421, %bb.jd
  %i.fbu = phi i32 [ %.promoted2425, %.lr.ph2421 ], [ %i.fcf, %bb.jd ] ; 2 uses
  %i.fbv = phi i32 [ %.promoted2419, %.lr.ph2421 ], [ %i.fcd, %bb.jd ] ; 3 uses
  %i.fbw = icmp eq i32 %i.fbu, 0
  br i1 %i.fbw, label %.loopexit, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.fbx = load i32, ptr %i.fbo, align 8, !tbaa !41
  %i.fby = shl i32 %i.fbx, 8
  %i.fbz = load ptr, ptr %i.fbm, align 8, !tbaa !44 ; 2 uses
  %i.fca = load i8, ptr %i.fbz, align 1, !tbaa !45
  %i.fcb = zext i8 %i.fca to i32
  %i.fcc = or disjoint i32 %i.fby, %i.fcb         ; 2 uses
  store i32 %i.fcc, ptr %i.fbo, align 8, !tbaa !41
  %i.fcd = add nsw i32 %i.fbv, 8                  ; 2 uses
  store i32 %i.fcd, ptr %i.fbj, align 4, !tbaa !16
  %i.fce = getelementptr inbounds nuw i8, ptr %i.fbz, i64 1
  store ptr %i.fce, ptr %i.fbm, align 8, !tbaa !44
  %i.fcf = add i32 %i.fbu, -1                     ; 2 uses
  store i32 %i.fcf, ptr %i.fbn, align 8, !tbaa !42
  %i.fcg = load i32, ptr %i.fbp, align 4, !tbaa !46
  %i.fch = add i32 %i.fcg, 1                      ; 2 uses
  store i32 %i.fch, ptr %i.fbp, align 4, !tbaa !46
  %i.fci = icmp eq i32 %i.fch, 0
  br i1 %i.fci, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
end_hunk_1
