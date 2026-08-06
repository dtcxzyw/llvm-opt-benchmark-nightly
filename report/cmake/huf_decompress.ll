begin_hunk_0_@HUF_decompress4X2_usingDTable_internal:bb.a
bb.fa:                                            ; preds = %.lr.ph157
  %i.bvc = lshr i32 %i.buz, 3
  %i.bvd = zext nneg i32 %i.bvc to i64
  %i.bve = sub nsw i64 0, %i.bvd
  %i.bvf = getelementptr inbounds i8, ptr %i.bva, i64 %i.bve ; 2 uses
  store ptr %i.bvf, ptr %i.bus, align 8, !tbaa !132
  %i.bvg = and i32 %i.buz, 7
  br label %BIT_reloadDStream.exit325.i.i

bb.fb:                                            ; preds = %.lr.ph157
  %i.bvh = load ptr, ptr %i.buu, align 8, !tbaa !136 ; 3 uses
  %i.bvi = icmp eq ptr %i.bva, %i.bvh
  br i1 %i.bvi, label %.preheader.i22, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.bvj = lshr i32 %i.buz, 3                     ; 2 uses
  %i.bvk = zext nneg i32 %i.bvj to i64
  %i.bvl = sub nsw i64 0, %i.bvk
  %i.bvm = getelementptr inbounds i8, ptr %i.bva, i64 %i.bvl
  %i.bvn = icmp uge ptr %i.bvm, %i.bvh            ; 2 uses
  %i.bvo = ptrtoint ptr %i.bva to i64
  %i.bvp = ptrtoint ptr %i.bvh to i64
  %i.bvq = sub i64 %i.bvo, %i.bvp
  %i.bvr = trunc i64 %i.bvq to i32
  %.021.i321.i.i = select i1 %i.bvn, i32 %i.bvj, i32 %i.bvr ; 2 uses
  %i.bvs = zext i32 %.021.i321.i.i to i64
  %i.bvt = sub nsw i64 0, %i.bvs
  %i.bvu = getelementptr inbounds i8, ptr %i.bva, i64 %i.bvt ; 2 uses
  store ptr %i.bvu, ptr %i.bus, align 8, !tbaa !132
  %i.bvv = shl i32 %.021.i321.i.i, 3
  %i.bvw = sub i32 %i.buz, %i.bvv
  br label %BIT_reloadDStream.exit325.i.i

BIT_reloadDStream.exit325.i.i:                    ; preds = %bb.fc, %bb.fa
  %storemerge = phi i32 [ %i.bvg, %bb.fa ], [ %i.bvw, %bb.fc ] ; 3 uses
  %.val19.sink.in.i = phi ptr [ %i.bvf, %bb.fa ], [ %i.bvu, %bb.fc ]
  %.022.i320.i.i = phi i1 [ true, %bb.fa ], [ %i.bvn, %bb.fc ]
  store i32 %storemerge, ptr %i.buq, align 8, !tbaa !131
  %.val19.sink.i = load i64, ptr %.val19.sink.in.i, align 1, !tbaa !35 ; 2 uses
  store i64 %.val19.sink.i, ptr %6, align 8, !tbaa !134
  %i.bvx = icmp ule ptr %.5.i.i.i156, %i.bur
  %i.bvy = and i1 %i.bvx, %.022.i320.i.i
  br i1 %i.bvy, label %bb.fd, label %.preheader.i22

.preheader.i22:                                   ; preds = %BIT_reloadDStream.exit325.i.i, %bb.fb, %._crit_edge
  %.5.i.i.i56 = phi ptr [ %.5.i.i.i.lcssa, %._crit_edge ], [ %.5.i.i.i156, %bb.fb ], [ %.5.i.i.i156, %BIT_reloadDStream.exit325.i.i ] ; 3 uses
  %.val143991.i = phi i32 [ %.lcssa57, %._crit_edge ], [ %storemerge, %BIT_reloadDStream.exit325.i.i ], [ %i.buz, %bb.fb ] ; 2 uses
  %.not.i.i842.i = icmp ugt ptr %.5.i.i.i56, %i.bur
  br i1 %.not.i.i842.i, label %.loopexit.i21, label %.lr.ph844.i

bb.fd:                                            ; preds = %BIT_reloadDStream.exit325.i.i
  %i.bvz = and i32 %storemerge, 63
  %i.bwa = zext nneg i32 %i.bvz to i64
  %i.bwb = shl i64 %.val19.sink.i, %i.bwa
  %i.bwc = lshr i64 %i.bwb, %i.bux
  %i.bwd = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.bwc ; 3 uses
  %i.bwe = load i16, ptr %i.bwd, align 2
  store i16 %i.bwe, ptr %.5.i.i.i156, align 1
  %i.bwf = getelementptr inbounds nuw i8, ptr %i.bwd, i64 2
  %i.bwg = load i8, ptr %i.bwf, align 2, !tbaa !100
  %i.bwh = zext i8 %i.bwg to i32
  %i.bwi = load i32, ptr %i.buq, align 8, !tbaa !131
  %i.bwj = add i32 %i.bwi, %i.bwh                 ; 4 uses
  store i32 %i.bwj, ptr %i.buq, align 8, !tbaa !131
  %i.bwk = getelementptr inbounds nuw i8, ptr %i.bwd, i64 3
  %i.bwl = load i8, ptr %i.bwk, align 1, !tbaa !103
  %i.bwm = zext i8 %i.bwl to i64
  %i.bwn = getelementptr inbounds nuw i8, ptr %.5.i.i.i156, i64 %i.bwm ; 2 uses
  %i.bwo = icmp ugt i32 %i.bwj, 64
  br i1 %i.bwo, label %._crit_edge, label %.lr.ph157, !prof !104, !llvm.loop !108

.lr.ph844.i:                                      ; preds = %.preheader.i22, %.lr.ph844.i
  %.val145.i = phi i32 [ %i.bwz, %.lr.ph844.i ], [ %.val143991.i, %.preheader.i22 ]
  %.6.i.i843.i = phi ptr [ %i.bxd, %.lr.ph844.i ], [ %.5.i.i.i56, %.preheader.i22 ] ; 2 uses
  %.val144.i = load i64, ptr %6, align 8, !tbaa !134
  %i.bwp = and i32 %.val145.i, 63
  %i.bwq = zext nneg i32 %i.bwp to i64
  %i.bwr = shl i64 %.val144.i, %i.bwq
  %i.bws = lshr i64 %i.bwr, %i.bux
  %i.bwt = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.bws ; 3 uses
  %i.bwu = load i16, ptr %i.bwt, align 2
  store i16 %i.bwu, ptr %.6.i.i843.i, align 1
  %i.bwv = getelementptr inbounds nuw i8, ptr %i.bwt, i64 2
  %i.bww = load i8, ptr %i.bwv, align 2, !tbaa !100
  %i.bwx = zext i8 %i.bww to i32
  %i.bwy = load i32, ptr %i.buq, align 8, !tbaa !131
  %i.bwz = add i32 %i.bwy, %i.bwx                 ; 3 uses
  store i32 %i.bwz, ptr %i.buq, align 8, !tbaa !131
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.bwt, i64 3
  %i.bxb = load i8, ptr %i.bxa, align 1, !tbaa !103
  %i.bxc = zext i8 %i.bxb to i64
  %i.bxd = getelementptr inbounds nuw i8, ptr %.6.i.i843.i, i64 %i.bxc ; 3 uses
  %.not.i.i.i = icmp ugt ptr %i.bxd, %i.bur
  br i1 %.not.i.i.i, label %.loopexit.i21, label %.lr.ph844.i, !llvm.loop !109

.loopexit.i21:                                    ; preds = %.lr.ph844.i, %.preheader.i22, %BIT_reloadDStream.exit332.i.i
  %.val147.i = phi i32 [ %i.bum, %BIT_reloadDStream.exit332.i.i ], [ %.val143991.i, %.preheader.i22 ], [ %i.bwz, %.lr.ph844.i ] ; 2 uses
  %.7.i.i.i = phi ptr [ %.4.i.i.i, %BIT_reloadDStream.exit332.i.i ], [ %.5.i.i.i56, %.preheader.i22 ], [ %i.bxd, %.lr.ph844.i ] ; 2 uses
  %i.bxe = icmp ult ptr %.7.i.i.i, %i.oz
  br i1 %i.bxe, label %bb.fe, label %HUF_decodeStreamX2.exit.i.i

bb.fe:                                            ; preds = %.loopexit.i21
  %.val146.i = load i64, ptr %6, align 8, !tbaa !134
  %i.bxf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bxg = and i32 %.val147.i, 63
  %i.bxh = zext nneg i32 %i.bxg to i64
  %i.bxi = shl i64 %.val146.i, %i.bxh
  %i.bxj = sub nsw i32 0, %.sroa.3.0.extract.shift.i.i
  %i.bxk = and i32 %i.bxj, 63
  %i.bxl = zext nneg i32 %i.bxk to i64
  %i.bxm = lshr i64 %i.bxi, %i.bxl
  %i.bxn = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.bxm ; 4 uses
  %i.bxo = load i8, ptr %i.bxn, align 2
  store i8 %i.bxo, ptr %.7.i.i.i, align 1
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.bxn, i64 3
  %i.bxq = load i8, ptr %i.bxp, align 1, !tbaa !103
  %i.bxr = icmp eq i8 %i.bxq, 1
  br i1 %i.bxr, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.bxs = getelementptr inbounds nuw i8, ptr %i.bxn, i64 2
  %i.bxt = load i8, ptr %i.bxs, align 2, !tbaa !100
  %i.bxu = zext i8 %i.bxt to i32
  %i.bxv = load i32, ptr %i.bxf, align 8, !tbaa !131
  %i.bxw = add i32 %i.bxv, %i.bxu
  br label %HUF_decodeStreamX2.exit.i.i

bb.fg:                                            ; preds = %bb.fe
  %i.bxx = load i32, ptr %i.bxf, align 8, !tbaa !131 ; 3 uses
  %i.bxy = icmp ult i32 %i.bxx, 64
  br i1 %i.bxy, label %bb.fh, label %HUF_decodeStreamX2.exit.i.i

bb.fh:                                            ; preds = %bb.fg
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bxn, i64 2
  %i.bya = load i8, ptr %i.bxz, align 2, !tbaa !100
  %i.byb = zext i8 %i.bya to i32
  %i.byc = add nuw nsw i32 %i.bxx, %i.byb
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.byc, i32 64)
  br label %HUF_decodeStreamX2.exit.i.i

HUF_decodeStreamX2.exit.i.i:                      ; preds = %bb.fh, %bb.fg, %bb.ff, %.loopexit.i21
  %i.byd = phi i32 [ %i.bxw, %bb.ff ], [ %i.bxx, %bb.fg ], [ %spec.store.select.i, %bb.fh ], [ %.val147.i, %.loopexit.i21 ]
  %i.bye = icmp ne ptr %.sroa.116466.3.i, %i.pl
  %i.byf = icmp ne i32 %.sroa.36432.4.i, 64
  %narrow.not626.i = select i1 %i.bye, i1 true, i1 %i.byf
  %i.byg = icmp ne ptr %.sroa.116344.3.i, %i.pm
  %i.byh = icmp ne i32 %.sroa.36310.4.i, 64
  %narrow618.not629.i = select i1 %i.byg, i1 true, i1 %i.byh
  %.not.i = or i1 %narrow.not626.i, %narrow618.not629.i
  %i.byi = icmp ne ptr %.sroa.116224.3.i, %i.pn
  %i.byj = icmp ne i32 %.sroa.36.4.i, 64
  %narrow619.not632.i = select i1 %i.byi, i1 true, i1 %i.byj
  %.not623.i = or i1 %.not.i, %narrow619.not632.i
  %i.byk = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.byl = load ptr, ptr %i.byk, align 8, !tbaa !132
  %i.bym = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.byn = load ptr, ptr %i.bym, align 8, !tbaa !136
  %i.byo = icmp ne ptr %i.byl, %i.byn
  %i.byp = icmp ne i32 %i.byd, 64
  %narrow620.not635.i = select i1 %i.byo, i1 true, i1 %i.byp
  %.not621.i = or i1 %.not623.i, %narrow620.not635.i
  %spec.select.i.i = select i1 %.not621.i, i64 -20, i64 %1
  br label %BIT_initDStream.exit.thread.i

BIT_initDStream.exit.thread.i:                    ; preds = %HUF_decodeStreamX2.exit.i.i, %.loopexit670.i, %bb.bi, %bb.bg, %bb.ay, %bb.aw, %bb.au, %bb.am, %bb.ak, %bb.ai, %bb.aa, %bb.y, %bb.x
  %.5.i.i19 = phi i64 [ %spec.select.i.i, %HUF_decodeStreamX2.exit.i.i ], [ -20, %bb.x ], [ -1, %bb.am ], [ -20, %.loopexit670.i ], [ -1, %bb.aa ], [ %i.we, %bb.bi ], [ -20, %bb.ai ], [ -72, %bb.y ], [ -20, %bb.au ], [ -72, %bb.ak ], [ -20, %bb.bg ], [ -72, %bb.aw ], [ -1, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %HUF_decompress4X2_usingDTable_internal_default.exit

HUF_decompress4X2_usingDTable_internal_default.exit: ; preds = %BIT_initDStream.exit.thread.i, %bb.w, %HUF_decompress4X2_usingDTable_internal_fast.exit.thread, %HUF_decompress4X2_usingDTable_internal_fast.exit
  %.1 = phi i64 [ -20, %HUF_decompress4X2_usingDTable_internal_fast.exit.thread ], [ %.6.i, %HUF_decompress4X2_usingDTable_internal_fast.exit ], [ %.5.i.i19, %BIT_initDStream.exit.thread.i ], [ -20, %bb.w ]
  ret i64 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @HUF_decompress4X1_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #7 {
bb.a:
  %6 = alloca %struct.BIT_DStream_t, align 8      ; 24 uses
  %7 = alloca %struct.HUF_DecompressFastArgs, align 8 ; 22 uses
  %i.a = and i32 %5, 32
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 7 uses
  %.idx.i.i = tail call i64 @llvm.smax.i64(i64 %1, i64 0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.d = call fastcc i64 @HUF_DecompressFastArgs_init(ptr noundef %7, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) ; 2 uses
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %HUF_decompress4X1_usingDTable_internal_fast.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !118  ; 20 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !123
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !122
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  %.sroa.0142.0.copyload.i = load i64, ptr %i.l, align 8 ; 2 uses
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %.sroa.23.0.copyload.i = load i64, ptr %.sroa.23.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %.sroa.42.0.copyload.i = load i64, ptr %.sroa.42.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.61.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  %.sroa.61.0.copyload.i = load i64, ptr %.sroa.61.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.0.0.copyload290.i = load ptr, ptr %7, align 8 ; 3 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.sroa.9.0.copyload.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.sroa.13.0.copyload.i = load ptr, ptr %.sroa.13.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %.sroa.17.0.copyload.i = load ptr, ptr %.sroa.17.0..sroa_idx.i, align 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.m, align 8 ; 2 uses
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %.sroa.11.0.copyload.i = load ptr, ptr %.sroa.11.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %.sroa.18.0.copyload.i = load ptr, ptr %.sroa.18.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %.sroa.25.0.copyload.i = load ptr, ptr %.sroa.25.0..sroa_idx.i, align 8 ; 4 uses
  %8 = ptrtoint ptr %i.i to i64                   ; 2 uses
  %9 = ptrtoint ptr %i.k to i64                   ; 2 uses
  %i.n = ptrtoint ptr %.sroa.25.0.copyload.i to i64
  %10 = sub i64 %8, %i.n
  %11 = udiv i64 %10, 5
  %i.o = ptrtoint ptr %.sroa.0.0.copyload290.i to i64
  %12 = sub i64 %i.o, %9
  %13 = udiv i64 %12, 7
  %14 = tail call i64 @llvm.umin.i64(i64 %11, i64 %13) ; 2 uses
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %HUF_decompress4X1_usingDTable_internal_fast_c_loop.exit, label %.preheader228.lr.ph.i

.preheader228.lr.ph.i:                            ; preds = %bb.c
  %16 = mul nuw i64 %14, 5
  %17 = getelementptr inbounds nuw i8, ptr %.sroa.25.0.copyload.i, i64 %16
  br label %.preheader228.i

.loopexit.i29:                                    ; preds = %.preheader.i27
  %18 = ptrtoint ptr %i.ho to i64
  %19 = sub i64 %8, %18
  %20 = udiv i64 %19, 5
  %21 = ptrtoint ptr %i.gs to i64
  %22 = sub i64 %21, %9
  %23 = udiv i64 %22, 7
  %24 = tail call i64 @llvm.umin.i64(i64 %20, i64 %23) ; 2 uses
  %25 = mul nuw i64 %24, 5
  %26 = getelementptr inbounds nuw i8, ptr %i.ho, i64 %25
  %27 = icmp eq i64 %24, 0
  br i1 %27, label %HUF_decompress4X1_usingDTable_internal_fast_c_loop.exit, label %.preheader228.i, !llvm.loop !137

.preheader228.i:                                  ; preds = %.loopexit.i29, %.preheader228.lr.ph.i
  %.sroa.17.0.i = phi ptr [ %.sroa.17.0.copyload.i, %.preheader228.lr.ph.i ], [ %i.hq, %.loopexit.i29 ] ; 3 uses
  %.sroa.13.0.i = phi ptr [ %.sroa.13.0.copyload.i, %.preheader228.lr.ph.i ], [ %i.hi, %.loopexit.i29 ] ; 4 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.9.0.copyload.i, %.preheader228.lr.ph.i ], [ %i.ha, %.loopexit.i29 ] ; 4 uses
  %.sroa.0.0.i25 = phi ptr [ %.sroa.0.0.copyload290.i, %.preheader228.lr.ph.i ], [ %i.gs, %.loopexit.i29 ] ; 3 uses
  %i.p = phi ptr [ %17, %.preheader228.lr.ph.i ], [ %26, %.loopexit.i29 ]
  %.sroa.61.0262.i = phi i64 [ %.sroa.61.0.copyload.i, %.preheader228.lr.ph.i ], [ %i.hs, %.loopexit.i29 ] ; 2 uses
  %.sroa.42.0261.i = phi i64 [ %.sroa.42.0.copyload.i, %.preheader228.lr.ph.i ], [ %i.hk, %.loopexit.i29 ] ; 2 uses
  %.sroa.23.0260.i = phi i64 [ %.sroa.23.0.copyload.i, %.preheader228.lr.ph.i ], [ %i.hc, %.loopexit.i29 ] ; 2 uses
  %.sroa.0142.0259.i = phi i64 [ %.sroa.0142.0.copyload.i, %.preheader228.lr.ph.i ], [ %i.gu, %.loopexit.i29 ] ; 2 uses
  %.sroa.25.0258.i = phi ptr [ %.sroa.25.0.copyload.i, %.preheader228.lr.ph.i ], [ %i.ho, %.loopexit.i29 ] ; 2 uses
  %.sroa.18.0257.i = phi ptr [ %.sroa.18.0.copyload.i, %.preheader228.lr.ph.i ], [ %i.hg, %.loopexit.i29 ] ; 2 uses
  %.sroa.11.0256.i = phi ptr [ %.sroa.11.0.copyload.i, %.preheader228.lr.ph.i ], [ %i.gy, %.loopexit.i29 ] ; 2 uses
  %.sroa.0.0255.i = phi ptr [ %.sroa.0.0.copyload.i, %.preheader228.lr.ph.i ], [ %i.gq, %.loopexit.i29 ] ; 2 uses
  %i.q = icmp ult ptr %.sroa.9.0.i, %.sroa.0.0.i25
  %i.r = icmp ult ptr %.sroa.13.0.i, %.sroa.9.0.i
  %or.cond.i26 = select i1 %i.q, i1 true, i1 %i.r
  %i.s = icmp ult ptr %.sroa.17.0.i, %.sroa.13.0.i
  %or.cond305.i = select i1 %or.cond.i26, i1 true, i1 %i.s
  br i1 %or.cond305.i, label %HUF_decompress4X1_usingDTable_internal_fast_c_loop.exit, label %.preheader.i27

.preheader.i27:                                   ; preds = %.preheader228.i, %.preheader.i27
  %.sroa.17.1.i = phi ptr [ %i.hq, %.preheader.i27 ], [ %.sroa.17.0.i, %.preheader228.i ]
  %.sroa.13.1.i = phi ptr [ %i.hi, %.preheader.i27 ], [ %.sroa.13.0.i, %.preheader228.i ]
  %.sroa.9.1.i = phi ptr [ %i.ha, %.preheader.i27 ], [ %.sroa.9.0.i, %.preheader228.i ]
  %.sroa.0.1303.i = phi ptr [ %i.gs, %.preheader.i27 ], [ %.sroa.0.0.i25, %.preheader228.i ]
  %.sroa.0.1.i = phi ptr [ %i.gq, %.preheader.i27 ], [ %.sroa.0.0255.i, %.preheader228.i ] ; 6 uses
  %.sroa.11.1.i = phi ptr [ %i.gy, %.preheader.i27 ], [ %.sroa.11.0256.i, %.preheader228.i ] ; 6 uses
  %.sroa.18.1.i = phi ptr [ %i.hg, %.preheader.i27 ], [ %.sroa.18.0257.i, %.preheader228.i ] ; 6 uses
  %.sroa.25.1.i = phi ptr [ %i.ho, %.preheader.i27 ], [ %.sroa.25.0258.i, %.preheader228.i ] ; 6 uses
  %.sroa.0142.1.i = phi i64 [ %i.gu, %.preheader.i27 ], [ %.sroa.0142.0259.i, %.preheader228.i ] ; 2 uses
  %.sroa.23.1.i = phi i64 [ %i.hc, %.preheader.i27 ], [ %.sroa.23.0260.i, %.preheader228.i ] ; 2 uses
  %.sroa.42.1.i = phi i64 [ %i.hk, %.preheader.i27 ], [ %.sroa.42.0261.i, %.preheader228.i ] ; 2 uses
  %.sroa.61.1.i = phi i64 [ %i.hs, %.preheader.i27 ], [ %.sroa.61.0262.i, %.preheader228.i ] ; 2 uses
  %i.t = lshr i64 %.sroa.0142.1.i, 53
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !125  ; 2 uses
  %i.w = and i16 %i.v, 63
  %i.x = zext nneg i16 %i.w to i64
  %i.y = shl i64 %.sroa.0142.1.i, %i.x            ; 2 uses
  %i.z = lshr i16 %i.v, 8
  %i.aa = trunc nuw i16 %i.z to i8
  store i8 %i.aa, ptr %.sroa.0.1.i, align 1, !tbaa !10
  %i.ab = lshr i64 %.sroa.23.1.i, 53
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !125 ; 2 uses
  %i.ae = and i16 %i.ad, 63
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = shl i64 %.sroa.23.1.i, %i.af            ; 2 uses
  %i.ah = lshr i16 %i.ad, 8
  %i.ai = trunc nuw i16 %i.ah to i8
  store i8 %i.ai, ptr %.sroa.11.1.i, align 1, !tbaa !10
  %i.aj = lshr i64 %.sroa.42.1.i, 53
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !125 ; 2 uses
  %i.am = and i16 %i.al, 63
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = shl i64 %.sroa.42.1.i, %i.an            ; 2 uses
  %i.ap = lshr i16 %i.al, 8
  %i.aq = trunc nuw i16 %i.ap to i8
  store i8 %i.aq, ptr %.sroa.18.1.i, align 1, !tbaa !10
  %i.ar = lshr i64 %.sroa.61.1.i, 53
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !125 ; 2 uses
  %i.au = and i16 %i.at, 63
  %i.av = zext nneg i16 %i.au to i64
  %i.aw = shl i64 %.sroa.61.1.i, %i.av            ; 2 uses
  %i.ax = lshr i16 %i.at, 8
  %i.ay = trunc nuw i16 %i.ax to i8
  store i8 %i.ay, ptr %.sroa.25.1.i, align 1, !tbaa !10
  %i.az = lshr i64 %i.y, 53
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !125 ; 2 uses
  %i.bc = and i16 %i.bb, 63
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = shl i64 %i.y, %i.bd                     ; 2 uses
  %i.bf = lshr i16 %i.bb, 8
  %i.bg = trunc nuw i16 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 1
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !10
  %i.bi = lshr i64 %i.ag, 53
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !125 ; 2 uses
  %i.bl = and i16 %i.bk, 63
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = shl i64 %i.ag, %i.bm                    ; 2 uses
  %i.bo = lshr i16 %i.bk, 8
  %i.bp = trunc nuw i16 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i, i64 1
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !10
  %i.br = lshr i64 %i.ao, 53
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !125 ; 2 uses
  %i.bu = and i16 %i.bt, 63
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = shl i64 %i.ao, %i.bv                    ; 2 uses
  %i.bx = lshr i16 %i.bt, 8
  %i.by = trunc nuw i16 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.18.1.i, i64 1
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !10
  %i.ca = lshr i64 %i.aw, 53
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !125 ; 2 uses
  %i.cd = and i16 %i.cc, 63
  %i.ce = zext nneg i16 %i.cd to i64
  %i.cf = shl i64 %i.aw, %i.ce                    ; 2 uses
  %i.cg = lshr i16 %i.cc, 8
  %i.ch = trunc nuw i16 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.25.1.i, i64 1
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !10
  %i.cj = lshr i64 %i.be, 53
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.cj
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !125 ; 2 uses
  %i.cm = and i16 %i.cl, 63
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = shl i64 %i.be, %i.cn                    ; 2 uses
  %i.cp = lshr i16 %i.cl, 8
  %i.cq = trunc nuw i16 %i.cp to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 2
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !10
  %i.cs = lshr i64 %i.bn, 53
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.cs
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !125 ; 2 uses
  %i.cv = and i16 %i.cu, 63
  %i.cw = zext nneg i16 %i.cv to i64
  %i.cx = shl i64 %i.bn, %i.cw                    ; 2 uses
  %i.cy = lshr i16 %i.cu, 8
  %i.cz = trunc nuw i16 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i, i64 2
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !10
  %i.db = lshr i64 %i.bw, 53
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !125 ; 2 uses
  %i.de = and i16 %i.dd, 63
  %i.df = zext nneg i16 %i.de to i64
  %i.dg = shl i64 %i.bw, %i.df                    ; 2 uses
  %i.dh = lshr i16 %i.dd, 8
  %i.di = trunc nuw i16 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.18.1.i, i64 2
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !10
  %i.dk = lshr i64 %i.cf, 53
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.dk
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !125 ; 2 uses
  %i.dn = and i16 %i.dm, 63
  %i.do = zext nneg i16 %i.dn to i64
  %i.dp = shl i64 %i.cf, %i.do                    ; 2 uses
  %i.dq = lshr i16 %i.dm, 8
  %i.dr = trunc nuw i16 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.25.1.i, i64 2
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !10
  %i.dt = lshr i64 %i.co, 53
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.dt
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !125 ; 2 uses
  %i.dw = and i16 %i.dv, 63
  %i.dx = zext nneg i16 %i.dw to i64
  %i.dy = shl i64 %i.co, %i.dx                    ; 2 uses
  %i.dz = lshr i16 %i.dv, 8
  %i.ea = trunc nuw i16 %i.dz to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 3
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !10
  %i.ec = lshr i64 %i.cx, 53
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !125 ; 2 uses
  %i.ef = and i16 %i.ee, 63
  %i.eg = zext nneg i16 %i.ef to i64
  %i.eh = shl i64 %i.cx, %i.eg                    ; 2 uses
  %i.ei = lshr i16 %i.ee, 8
  %i.ej = trunc nuw i16 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i, i64 3
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !10
  %i.el = lshr i64 %i.dg, 53
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.el
  %i.en = load i16, ptr %i.em, align 2, !tbaa !125 ; 2 uses
  %i.eo = and i16 %i.en, 63
  %i.ep = zext nneg i16 %i.eo to i64
  %i.eq = shl i64 %i.dg, %i.ep                    ; 2 uses
  %i.er = lshr i16 %i.en, 8
  %i.es = trunc nuw i16 %i.er to i8
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.18.1.i, i64 3
  store i8 %i.es, ptr %i.et, align 1, !tbaa !10
  %i.eu = lshr i64 %i.dp, 53
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.eu
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !125 ; 2 uses
  %i.ex = and i16 %i.ew, 63
  %i.ey = zext nneg i16 %i.ex to i64
  %i.ez = shl i64 %i.dp, %i.ey                    ; 2 uses
  %i.fa = lshr i16 %i.ew, 8
  %i.fb = trunc nuw i16 %i.fa to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.25.1.i, i64 3
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !10
  %i.fd = lshr i64 %i.dy, 53
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.fd
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !125 ; 2 uses
  %i.fg = and i16 %i.ff, 63
  %i.fh = zext nneg i16 %i.fg to i64
  %i.fi = shl i64 %i.dy, %i.fh
  %i.fj = lshr i16 %i.ff, 8
  %i.fk = trunc nuw i16 %i.fj to i8
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 4
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !10
  %i.fm = lshr i64 %i.eh, 53
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.fm
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !125 ; 2 uses
  %i.fp = and i16 %i.fo, 63
  %i.fq = zext nneg i16 %i.fp to i64
  %i.fr = shl i64 %i.eh, %i.fq
  %i.fs = lshr i16 %i.fo, 8
  %i.ft = trunc nuw i16 %i.fs to i8
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i, i64 4
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !10
  %i.fv = lshr i64 %i.eq, 53
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.fv
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !125 ; 2 uses
  %i.fy = and i16 %i.fx, 63
  %i.fz = zext nneg i16 %i.fy to i64
  %i.ga = shl i64 %i.eq, %i.fz
  %i.gb = lshr i16 %i.fx, 8
  %i.gc = trunc nuw i16 %i.gb to i8
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.18.1.i, i64 4
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !10
  %i.ge = lshr i64 %i.ez, 53
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ge
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !125 ; 2 uses
  %i.gh = and i16 %i.gg, 63
  %i.gi = zext nneg i16 %i.gh to i64
  %i.gj = shl i64 %i.ez, %i.gi
  %i.gk = lshr i16 %i.gg, 8
  %i.gl = trunc nuw i16 %i.gk to i8
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.25.1.i, i64 4
  store i8 %i.gl, ptr %i.gm, align 1, !tbaa !10
  %i.gn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fi, i1 true) ; 2 uses
  %i.go = and i64 %i.gn, 7
  %i.gp = lshr i64 %i.gn, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 5 ; 3 uses
  %i.gr = sub nsw i64 0, %i.gp
  %i.gs = getelementptr inbounds i8, ptr %.sroa.0.1303.i, i64 %i.gr ; 5 uses
  %.val207.i = load i64, ptr %i.gs, align 1, !tbaa !35
  %i.gt = or i64 %.val207.i, 1
  %i.gu = shl i64 %i.gt, %i.go                    ; 3 uses
  %i.gv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fr, i1 true) ; 2 uses
  %i.gw = and i64 %i.gv, 7
  %i.gx = lshr i64 %i.gv, 3
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i, i64 5 ; 3 uses
  %i.gz = sub nsw i64 0, %i.gx
  %i.ha = getelementptr inbounds i8, ptr %.sroa.9.1.i, i64 %i.gz ; 4 uses
  %.val206.i = load i64, ptr %i.ha, align 1, !tbaa !35
  %i.hb = or i64 %.val206.i, 1
  %i.hc = shl i64 %i.hb, %i.gw                    ; 3 uses
  %i.hd = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ga, i1 true) ; 2 uses
  %i.he = and i64 %i.hd, 7
  %i.hf = lshr i64 %i.hd, 3
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.18.1.i, i64 5 ; 3 uses
  %i.hh = sub nsw i64 0, %i.hf
  %i.hi = getelementptr inbounds i8, ptr %.sroa.13.1.i, i64 %i.hh ; 4 uses
  %.val205.i = load i64, ptr %i.hi, align 1, !tbaa !35
  %i.hj = or i64 %.val205.i, 1
  %i.hk = shl i64 %i.hj, %i.he                    ; 3 uses
  %i.hl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.gj, i1 true) ; 2 uses
  %i.hm = and i64 %i.hl, 7
  %i.hn = lshr i64 %i.hl, 3
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.25.1.i, i64 5 ; 6 uses
  %i.hp = sub nsw i64 0, %i.hn
  %i.hq = getelementptr inbounds i8, ptr %.sroa.17.1.i, i64 %i.hp ; 4 uses
  %.val.i28 = load i64, ptr %i.hq, align 1, !tbaa !35
  %i.hr = or i64 %.val.i28, 1
  %i.hs = shl i64 %i.hr, %i.hm                    ; 3 uses
  %i.ht = icmp ult ptr %i.ho, %i.p
  br i1 %i.ht, label %.preheader.i27, label %.loopexit.i29, !llvm.loop !137

HUF_decompress4X1_usingDTable_internal_fast_c_loop.exit: ; preds = %.loopexit.i29, %.preheader228.i, %bb.c
  %.sroa.17.2.i = phi ptr [ %.sroa.17.0.copyload.i, %bb.c ], [ %.sroa.17.0.i, %.preheader228.i ], [ %i.hq, %.loopexit.i29 ]
  %.sroa.13.2.i = phi ptr [ %.sroa.13.0.copyload.i, %bb.c ], [ %.sroa.13.0.i, %.preheader228.i ], [ %i.hi, %.loopexit.i29 ]
  %.sroa.9.2.i = phi ptr [ %.sroa.9.0.copyload.i, %bb.c ], [ %.sroa.9.0.i, %.preheader228.i ], [ %i.ha, %.loopexit.i29 ]
  %.sroa.0.2.i30 = phi ptr [ %.sroa.0.0.copyload290.i, %bb.c ], [ %.sroa.0.0.i25, %.preheader228.i ], [ %i.gs, %.loopexit.i29 ]
  %.sroa.0.0253.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.c ], [ %.sroa.0.0255.i, %.preheader228.i ], [ %i.gq, %.loopexit.i29 ]
  %.sroa.11.0251.i = phi ptr [ %.sroa.11.0.copyload.i, %bb.c ], [ %.sroa.11.0256.i, %.preheader228.i ], [ %i.gy, %.loopexit.i29 ]
  %.sroa.18.0249.i = phi ptr [ %.sroa.18.0.copyload.i, %bb.c ], [ %.sroa.18.0257.i, %.preheader228.i ], [ %i.hg, %.loopexit.i29 ]
  %.sroa.25.0247.i = phi ptr [ %.sroa.25.0.copyload.i, %bb.c ], [ %.sroa.25.0258.i, %.preheader228.i ], [ %i.ho, %.loopexit.i29 ]
  %.sroa.0142.0245.i = phi i64 [ %.sroa.0142.0.copyload.i, %bb.c ], [ %.sroa.0142.0259.i, %.preheader228.i ], [ %i.gu, %.loopexit.i29 ]
  %.sroa.23.0243.i = phi i64 [ %.sroa.23.0.copyload.i, %bb.c ], [ %.sroa.23.0260.i, %.preheader228.i ], [ %i.hc, %.loopexit.i29 ]
  %.sroa.42.0241.i = phi i64 [ %.sroa.42.0.copyload.i, %bb.c ], [ %.sroa.42.0261.i, %.preheader228.i ], [ %i.hk, %.loopexit.i29 ]
  %.sroa.61.0239.i = phi i64 [ %.sroa.61.0.copyload.i, %bb.c ], [ %.sroa.61.0262.i, %.preheader228.i ], [ %i.hs, %.loopexit.i29 ]
  store i64 %.sroa.0142.0245.i, ptr %i.l, align 8
  store i64 %.sroa.23.0243.i, ptr %.sroa.23.0..sroa_idx.i, align 8
  store i64 %.sroa.42.0241.i, ptr %.sroa.42.0..sroa_idx.i, align 8
  store i64 %.sroa.61.0239.i, ptr %.sroa.61.0..sroa_idx.i, align 8
  store ptr %.sroa.0.2.i30, ptr %7, align 8
  store ptr %.sroa.9.2.i, ptr %.sroa.9.0..sroa_idx.i, align 8
  store ptr %.sroa.13.2.i, ptr %.sroa.13.0..sroa_idx.i, align 8
  store ptr %.sroa.17.2.i, ptr %.sroa.17.0..sroa_idx.i, align 8
  store ptr %.sroa.0.0253.i, ptr %i.m, align 8
  store ptr %.sroa.11.0251.i, ptr %.sroa.11.0..sroa_idx.i, align 8
  store ptr %.sroa.18.0249.i, ptr %.sroa.18.0..sroa_idx.i, align 8
  store ptr %.sroa.25.0247.i, ptr %.sroa.25.0..sroa_idx.i, align 8
  %i.hu = add i64 %1, 3
  %i.hv = lshr i64 %i.hu, 2                       ; 2 uses
  %i.hw = ptrtoint ptr %i.c to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %7, i64 120
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond60.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond60.i, label %HUF_decompress4X1_usingDTable_internal_fast.exit, label %bb.e, !llvm.loop !138

bb.e:                                             ; preds = %bb.d, %HUF_decompress4X1_usingDTable_internal_fast_c_loop.exit
  %indvars.iv.i = phi i64 [ 0, %HUF_decompress4X1_usingDTable_internal_fast_c_loop.exit ], [ %indvars.iv.next.i, %bb.d ] ; 5 uses
  %.04556.i = phi ptr [ %0, %HUF_decompress4X1_usingDTable_internal_fast_c_loop.exit ], [ %.146.i, %bb.d ] ; 2 uses
  %i.hy = ptrtoint ptr %.04556.i to i64
  %i.hz = sub i64 %i.hw, %i.hy
  %.not53.i = icmp ugt i64 %i.hv, %i.hz
  %i.ia = getelementptr inbounds nuw i8, ptr %.04556.i, i64 %i.hv
  %.146.i = select i1 %.not53.i, ptr %i.c, ptr %i.ia ; 7 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i ; 3 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !127 ; 7 uses
  %i.id = icmp ugt ptr %i.ic, %.146.i
  br i1 %i.id, label %HUF_decompress4X1_usingDTable_internal_fast.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !127 ; 9 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %indvars.iv.i
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !127
  %i.ii = getelementptr inbounds i8, ptr %i.ih, i64 -8
  %i.ij = icmp ult ptr %i.if, %i.ii
  br i1 %i.ij, label %HUF_decompress4X1_usingDTable_internal_fast.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val.i.i = load i64, ptr %i.if, align 1, !tbaa !35 ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !35
  %i.im = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.il, i1 true) ; 2 uses
  %i.in = trunc nuw nsw i64 %i.im to i32          ; 5 uses
  %i.io = load ptr, ptr %i.j, align 8, !tbaa !122 ; 7 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 2 uses
  %i.iq = ptrtoint ptr %.146.i to i64             ; 3 uses
  %i.ir = ptrtoint ptr %i.ic to i64
  %i.is = sub i64 %i.iq, %i.ir                    ; 2 uses
  %i.it = icmp sgt i64 %i.is, 3
  br i1 %i.it, label %.preheader.i, label %bb.m

.preheader.i:                                     ; preds = %bb.g
  %i.iu = ptrtoint ptr %i.io to i64
  %i.iv = getelementptr inbounds i8, ptr %.146.i, i64 -3
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.preheader.i
  %.0.i53.i = phi ptr [ %i.ic, %.preheader.i ], [ %i.lc, %bb.l ] ; 8 uses
  %.sroa.0.252.i = phi i64 [ %.val.i.i, %.preheader.i ], [ %.sroa.0.3.i, %bb.l ]
  %.sroa.12.251.i = phi i32 [ %i.in, %.preheader.i ], [ %i.lb, %bb.l ] ; 5 uses
  %.sroa.3820.250.i = phi ptr [ %i.if, %.preheader.i ], [ %.sroa.3820.3.i, %bb.l ] ; 5 uses
  %.not.i37.i.i = icmp ult ptr %.sroa.3820.250.i, %i.ip
  br i1 %.not.i37.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.iw = lshr i32 %.sroa.12.251.i, 3
  %i.ix = and i32 %.sroa.12.251.i, 7
  br label %BIT_reloadDStream.exit43.i.i

bb.j:                                             ; preds = %bb.h
  %i.iy = icmp eq ptr %.sroa.3820.250.i, %i.io
  br i1 %i.iy, label %BIT_reloadDStream.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.iz = lshr i32 %.sroa.12.251.i, 3             ; 2 uses
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = sub nsw i64 0, %i.ja
  %i.jc = getelementptr inbounds i8, ptr %.sroa.3820.250.i, i64 %i.jb
  %i.jd = icmp uge ptr %i.jc, %i.io               ; 2 uses
  %i.je = ptrtoint ptr %.sroa.3820.250.i to i64
  %i.jf = sub i64 %i.je, %i.iu
  %i.jg = trunc i64 %i.jf to i32
  %.021.i39.i.i = select i1 %i.jd, i32 %i.iz, i32 %i.jg ; 2 uses
  %i.jh = shl i32 %.021.i39.i.i, 3
  %i.ji = sub i32 %.sroa.12.251.i, %i.jh
  br label %BIT_reloadDStream.exit43.i.i

BIT_reloadDStream.exit43.i.i:                     ; preds = %bb.k, %bb.i
  %.pn49.in.i = phi i32 [ %i.iw, %bb.i ], [ %.021.i39.i.i, %bb.k ]
  %.sroa.12.3.i = phi i32 [ %i.ix, %bb.i ], [ %i.ji, %bb.k ] ; 3 uses
  %.022.i38.i.i = phi i1 [ true, %bb.i ], [ %i.jd, %bb.k ]
  %.pn49.i = zext i32 %.pn49.in.i to i64
  %.pn.i = sub nsw i64 0, %.pn49.i
  %.sroa.3820.3.i = getelementptr inbounds i8, ptr %.sroa.3820.250.i, i64 %.pn.i ; 2 uses
  %.sroa.0.3.i = load i64, ptr %.sroa.3820.3.i, align 1, !tbaa !35 ; 7 uses
  %i.jj = icmp ult ptr %.0.i53.i, %i.iv
  %i.jk = and i1 %i.jj, %.022.i38.i.i
  br i1 %i.jk, label %bb.l, label %BIT_reloadDStream.exit.i.i

bb.l:                                             ; preds = %BIT_reloadDStream.exit43.i.i
  %i.jl = and i32 %.sroa.12.3.i, 63
  %i.jm = zext nneg i32 %i.jl to i64
  %i.jn = shl i64 %.sroa.0.3.i, %i.jm
  %i.jo = lshr i64 %i.jn, 53
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.jo ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 1
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !113
  %i.js = load i8, ptr %i.jp, align 1, !tbaa !115
  %i.jt = zext i8 %i.js to i32
  %i.ju = add i32 %.sroa.12.3.i, %i.jt            ; 2 uses
  store i8 %i.jr, ptr %.0.i53.i, align 1, !tbaa !10
  %i.jv = getelementptr inbounds nuw i8, ptr %.0.i53.i, i64 1
  %i.jw = and i32 %i.ju, 63
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = shl i64 %.sroa.0.3.i, %i.jx
  %i.jz = lshr i64 %i.jy, 53
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.jz ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 1
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !113
  %i.kd = load i8, ptr %i.ka, align 1, !tbaa !115
  %i.ke = zext i8 %i.kd to i32
  %i.kf = add i32 %i.ju, %i.ke                    ; 2 uses
  store i8 %i.kc, ptr %i.jv, align 1, !tbaa !10
  %i.kg = getelementptr inbounds nuw i8, ptr %.0.i53.i, i64 2
  %i.kh = and i32 %i.kf, 63
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = shl i64 %.sroa.0.3.i, %i.ki
  %i.kk = lshr i64 %i.kj, 53
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.kk ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 1
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !113
  %i.ko = load i8, ptr %i.kl, align 1, !tbaa !115
  %i.kp = zext i8 %i.ko to i32
  %i.kq = add i32 %i.kf, %i.kp                    ; 2 uses
  store i8 %i.kn, ptr %i.kg, align 1, !tbaa !10
  %i.kr = getelementptr inbounds nuw i8, ptr %.0.i53.i, i64 3
  %i.ks = and i32 %i.kq, 63
  %i.kt = zext nneg i32 %i.ks to i64
  %i.ku = shl i64 %.sroa.0.3.i, %i.kt
  %i.kv = lshr i64 %i.ku, 53
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.kv ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 1
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !113
  %i.kz = load i8, ptr %i.kw, align 1, !tbaa !115
  %i.la = zext i8 %i.kz to i32
  %i.lb = add i32 %i.kq, %i.la                    ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.0.i53.i, i64 4 ; 2 uses
  store i8 %i.ky, ptr %i.kr, align 1, !tbaa !10
  %i.ld = icmp ugt i32 %i.lb, 64
  br i1 %i.ld, label %BIT_reloadDStream.exit.i.i, label %bb.h, !prof !128, !llvm.loop !116

bb.m:                                             ; preds = %bb.g
  %.not.i.i.i = icmp ult ptr %i.if, %i.ip
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.le = lshr i64 %i.im, 3
  %i.lf = sub nsw i64 0, %i.le
  %i.lg = getelementptr inbounds i8, ptr %i.if, i64 %i.lf
  %i.lh = and i32 %i.in, 7
  %.val.i71.i = load i64, ptr %i.lg, align 1, !tbaa !35
  br label %BIT_reloadDStream.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.li = icmp eq ptr %i.if, %i.io
  br i1 %i.li, label %BIT_reloadDStream.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.lj = lshr i32 %i.in, 3                       ; 2 uses
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = sub nsw i64 0, %i.lk
  %i.lm = getelementptr inbounds i8, ptr %i.if, i64 %i.ll
  %i.ln = icmp ult ptr %i.lm, %i.io
  %i.lo = ptrtoint ptr %i.if to i64
  %i.lp = ptrtoint ptr %i.io to i64
  %i.lq = sub i64 %i.lo, %i.lp
  %i.lr = trunc i64 %i.lq to i32
  %.021.i.i.i = select i1 %i.ln, i32 %i.lr, i32 %i.lj ; 2 uses
  %i.ls = zext i32 %.021.i.i.i to i64
  %i.lt = sub nsw i64 0, %i.ls
  %i.lu = getelementptr inbounds i8, ptr %i.if, i64 %i.lt
  %i.lv = shl i32 %.021.i.i.i, 3
  %i.lw = sub i32 %i.in, %i.lv
  %.val58.i = load i64, ptr %i.lu, align 1, !tbaa !35
  br label %BIT_reloadDStream.exit.i.i

BIT_reloadDStream.exit.i.i:                       ; preds = %bb.l, %BIT_reloadDStream.exit43.i.i, %bb.j, %bb.p, %bb.o, %bb.n
  %.sroa.12.5.i = phi i32 [ %i.in, %bb.o ], [ %i.lw, %bb.p ], [ %i.lh, %bb.n ], [ %.sroa.12.3.i, %BIT_reloadDStream.exit43.i.i ], [ %.sroa.12.251.i, %bb.j ], [ %i.lb, %bb.l ] ; 3 uses
  %.sroa.0.5.i = phi i64 [ %.val.i.i, %bb.o ], [ %.val58.i, %bb.p ], [ %.val.i71.i, %bb.n ], [ %.sroa.0.3.i, %BIT_reloadDStream.exit43.i.i ], [ %.sroa.0.252.i, %bb.j ], [ %.sroa.0.3.i, %bb.l ] ; 3 uses
  %.3.i.i = phi ptr [ %i.ic, %bb.o ], [ %i.ic, %bb.p ], [ %i.ic, %bb.n ], [ %.0.i53.i, %BIT_reloadDStream.exit43.i.i ], [ %.0.i53.i, %bb.j ], [ %i.lc, %bb.l ] ; 5 uses
  %i.lx = icmp ult ptr %.3.i.i, %.146.i
  br i1 %i.lx, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %BIT_reloadDStream.exit.i.i
  %.3.i.i200 = ptrtoaddr ptr %.3.i.i to i64       ; 2 uses
  %i.ly = sub i64 %i.iq, %.3.i.i200
  %xtraiter = and i64 %i.ly, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.lz = and i32 %.sroa.12.5.i, 63
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = shl i64 %.sroa.0.5.i, %i.ma
end_hunk_0
