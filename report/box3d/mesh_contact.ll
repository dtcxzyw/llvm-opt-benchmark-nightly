Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/mesh_contact?download=true
inline.NumInlined: 145
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@b3ComputeMeshManifolds:bb.a
  %i.azp = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.azq = load i32, ptr %i.azp, align 4, !tbaa !124
  %i.azr = add nsw i32 %i.azq, 15
  %i.azs = and i32 %i.azr, -16                    ; 2 uses
  %i.azt = add nsw i32 %i.azs, %i.azn             ; 4 uses
  %i.azu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.azv = load i32, ptr %i.azu, align 8, !tbaa !125
  %i.azw = icmp sgt i32 %i.azt, %i.azv
  br i1 %i.azw, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.azx = call ptr @b3ArenaOverflowAlloc(ptr noundef nonnull %9, i32 noundef %i.azn) #8
  br label %b3Bump.exit1332

bb.fx:                                            ; preds = %bb.fv
  store i32 %i.azt, ptr %i.azp, align 4, !tbaa !124
  %i.azy = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.azz = load ptr, ptr %i.azy, align 8, !tbaa !126
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azz, i64 16 ; 2 uses
  %i.bab = load i32, ptr %i.baa, align 8, !tbaa !130
  %i.bac = icmp sgt i32 %i.azt, %i.bab
  br i1 %i.bac, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  store i32 %i.azt, ptr %i.baa, align 8, !tbaa !130
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %i.bad = load ptr, ptr %9, align 8, !tbaa !131
  %i.bae = sext i32 %i.azs to i64
  %i.baf = getelementptr inbounds i8, ptr %i.bad, i64 %i.bae
  br label %b3Bump.exit1332

b3Bump.exit1332:                                  ; preds = %bb.fu, %bb.fw, %bb.fz
  %.1.i1331 = phi ptr [ null, %bb.fu ], [ %i.azx, %bb.fw ], [ %i.baf, %bb.fz ] ; 2 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bah = load ptr, ptr %i.bag, align 8, !tbaa !171
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.1.i1331, ptr align 4 %i.bah, i64 %i.azm, i1 false)
  br label %bb.ga

bb.ga:                                            ; preds = %b3Bump.exit1332, %._crit_edge1621
  %.0909 = phi ptr [ %.1.i1331, %b3Bump.exit1332 ], [ null, %._crit_edge1621 ] ; 2 uses
  %.not933 = icmp eq i32 %i.aqz, %.1900
  %i.bai = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  br i1 %.not933, label %bb.gh, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.baj = load i32, ptr %i.aqy, align 8, !tbaa !170 ; 2 uses
  %i.bak = icmp eq i32 %i.baj, 0
  br i1 %i.bak, label %b3FreeManifolds.exit1333, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.bal = load ptr, ptr %i.bai, align 8, !tbaa !171
  %i.bam = getelementptr inbounds nuw i8, ptr %0, i64 3848 ; 2 uses
  %i.ban = load ptr, ptr %i.bam, align 8, !tbaa !172
  call void @b3LockMutex(ptr noundef %i.ban) #8
  %i.bao = getelementptr inbounds nuw i8, ptr %0, i64 3832
  %i.bap = load ptr, ptr %i.bao, align 8, !tbaa !173
  %i.baq = sext i32 %i.baj to i64
  %i.bar = getelementptr [40 x i8], ptr %i.bap, i64 %i.baq
  %i.bas = getelementptr i8, ptr %i.bar, i64 -40
  call void @b3FreeElement(ptr noundef %i.bas, ptr noundef %i.bal) #8
  %i.bat = load ptr, ptr %i.bam, align 8, !tbaa !172
  call void @b3UnlockMutex(ptr noundef %i.bat) #8
  br label %b3FreeManifolds.exit1333

b3FreeManifolds.exit1333:                         ; preds = %bb.gb, %bb.gc
  %i.bau = icmp eq i32 %.1900, 0
  br i1 %i.bau, label %b3AllocateManifolds.exit, label %bb.gd

bb.gd:                                            ; preds = %b3FreeManifolds.exit1333
  %i.bav = getelementptr inbounds nuw i8, ptr %0, i64 3848 ; 2 uses
  %i.baw = load ptr, ptr %i.bav, align 8, !tbaa !172
  call void @b3LockMutex(ptr noundef %i.baw) #8
  %i.bax = getelementptr inbounds nuw i8, ptr %0, i64 3832 ; 3 uses
  %i.bay = getelementptr inbounds nuw i8, ptr %0, i64 3840 ; 4 uses
  %i.baz = load i32, ptr %i.bay, align 8, !tbaa !186 ; 2 uses
  %i.bba = icmp slt i32 %i.baz, %.1900
  br i1 %i.bba, label %.lr.ph.i1336, label %._crit_edge.i1334

.lr.ph.i1336:                                     ; preds = %bb.gd
  %i.bbb = getelementptr inbounds nuw i8, ptr %0, i64 3844 ; 2 uses
  br label %bb.ge

._crit_edge.i1334:                                ; preds = %bb.gg, %bb.gd
  %i.bbc = load ptr, ptr %i.bax, align 8, !tbaa !173
  %i.bbd = sext i32 %.1900 to i64                 ; 2 uses
  %i.bbe = getelementptr [40 x i8], ptr %i.bbc, i64 %i.bbd
  %i.bbf = getelementptr i8, ptr %i.bbe, i64 -40
  %i.bbg = call ptr @b3AllocateElement(ptr noundef %i.bbf) #8 ; 2 uses
  %i.bbh = load ptr, ptr %i.bav, align 8, !tbaa !172
  call void @b3UnlockMutex(ptr noundef %i.bbh) #8
  %i.bbi = mul nsw i64 %i.bbd, 268
  call void @llvm.memset.p0.i64(ptr align 4 %i.bbg, i8 0, i64 %i.bbi, i1 false)
  br label %b3AllocateManifolds.exit

bb.ge:                                            ; preds = %bb.gg, %.lr.ph.i1336
  %.03033.i = phi i32 [ %i.baz, %.lr.ph.i1336 ], [ %i.bbj, %bb.gg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.bbj = add nsw i32 %.03033.i, 1               ; 3 uses
  %i.bbk = mul i32 %i.bbj, 268
  call void @b3CreateBlockAllocator(ptr dead_on_unwind nonnull writable sret(%struct.b3BlockAllocator) align 8 %10, i32 noundef %i.bbk, i32 noundef 512) #8
  %i.bbl = load i32, ptr %i.bay, align 8, !tbaa !186 ; 2 uses
  %i.bbm = load i32, ptr %i.bbb, align 4, !tbaa !187 ; 4 uses
  %.not.i = icmp slt i32 %i.bbl, %i.bbm
  %.pre.i = load ptr, ptr %i.bax, align 8, !tbaa !173 ; 2 uses
  br i1 %.not.i, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.bbn = mul i32 %i.bbm, 40
  %i.bbo = icmp eq i32 %i.bbm, 0
  %i.bbp = shl nsw i32 %i.bbm, 1
  %spec.select.i = select i1 %i.bbo, i32 8, i32 %i.bbp ; 2 uses
  %i.bbq = mul i32 %spec.select.i, 40
  %i.bbr = call ptr @b3GrowAlloc(ptr noundef %.pre.i, i32 noundef %i.bbn, i32 noundef %i.bbq) #8 ; 2 uses
  store ptr %i.bbr, ptr %i.bax, align 8, !tbaa !173
  store i32 %spec.select.i, ptr %i.bbb, align 4, !tbaa !187
  %.pre34.i = load i32, ptr %i.bay, align 8, !tbaa !186
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %i.bbs = phi i32 [ %.pre34.i, %bb.gf ], [ %i.bbl, %bb.ge ] ; 2 uses
  %i.bbt = phi ptr [ %i.bbr, %bb.gf ], [ %.pre.i, %bb.ge ]
  %i.bbu = add nsw i32 %i.bbs, 1
  store i32 %i.bbu, ptr %i.bay, align 8, !tbaa !186
  %i.bbv = sext i32 %i.bbs to i64
  %i.bbw = getelementptr inbounds [40 x i8], ptr %i.bbt, i64 %i.bbv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bbw, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !191
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  %exitcond.not.i1337 = icmp eq i32 %i.bbj, %.1900
  br i1 %exitcond.not.i1337, label %._crit_edge.i1334, label %bb.ge, !llvm.loop !41

b3AllocateManifolds.exit:                         ; preds = %b3FreeManifolds.exit1333, %._crit_edge.i1334
  %.0.i1335 = phi ptr [ %i.bbg, %._crit_edge.i1334 ], [ null, %b3FreeManifolds.exit1333 ]
  store ptr %.0.i1335, ptr %i.bai, align 8, !tbaa !171
  %i.bbx = and i32 %.1900, 65535
  store i32 %i.bbx, ptr %i.aqy, align 8, !tbaa !170
  br label %bb.gi

bb.gh:                                            ; preds = %bb.ga
  %i.bby = load ptr, ptr %i.bai, align 8, !tbaa !171
  %i.bbz = load i32, ptr %i.aqy, align 8, !tbaa !170
  %i.bca = sext i32 %i.bbz to i64
  %i.bcb = mul nsw i64 %i.bca, 268
  call void @llvm.memset.p0.i64(ptr align 4 %i.bby, i8 0, i64 %i.bcb, i1 false)
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %b3AllocateManifolds.exit
  br i1 %i.ara, label %bb.gj, label %bb.go

bb.gj:                                            ; preds = %bb.gi
  %i.bcc = zext nneg i32 %i.aqz to i64
  %i.bcd = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.bce = load i32, ptr %i.bcd, align 4, !tbaa !124
  %i.bcf = add nsw i32 %i.bce, 15
  %i.bcg = and i32 %i.bcf, -16                    ; 2 uses
  %i.bch = add nsw i32 %i.bcg, %i.aqz             ; 4 uses
  %i.bci = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bcj = load i32, ptr %i.bci, align 8, !tbaa !125
  %i.bck = icmp sgt i32 %i.bch, %i.bcj
  br i1 %i.bck, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.bcl = call ptr @b3ArenaOverflowAlloc(ptr noundef nonnull %9, i32 noundef %i.aqz) #8
  br label %b3Bump.exit1339

bb.gl:                                            ; preds = %bb.gj
  store i32 %i.bch, ptr %i.bcd, align 4, !tbaa !124
  %i.bcm = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bcn = load ptr, ptr %i.bcm, align 8, !tbaa !126
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcn, i64 16 ; 2 uses
  %i.bcp = load i32, ptr %i.bco, align 8, !tbaa !130
  %i.bcq = icmp sgt i32 %i.bch, %i.bcp
  br i1 %i.bcq, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  store i32 %i.bch, ptr %i.bco, align 8, !tbaa !130
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %i.bcr = load ptr, ptr %9, align 8, !tbaa !131
  %i.bcs = sext i32 %i.bcg to i64
  %i.bct = getelementptr inbounds i8, ptr %i.bcr, i64 %i.bcs
  br label %b3Bump.exit1339

b3Bump.exit1339:                                  ; preds = %bb.gk, %bb.gn
  %.1.i1338 = phi ptr [ %i.bct, %bb.gn ], [ %i.bcl, %bb.gk ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.1.i1338, i8 0, i64 %i.bcc, i1 false)
  br label %bb.go

bb.go:                                            ; preds = %b3Bump.exit1339, %bb.gi
  %.0908 = phi ptr [ %.1.i1338, %b3Bump.exit1339 ], [ null, %bb.gi ] ; 2 uses
  %i.bcu = load <2 x float>, ptr %.sroa.61472.0..sroa_idx, align 4 ; 6 uses
  %i.bcv = load <2 x float>, ptr %.sroa.8.0..sroa_idx1474, align 4 ; 6 uses
  %i.bcw = fmul <2 x float> %i.bcu, %i.bcu        ; 3 uses
  %foldExtExtBinop2059 = fmul <2 x float> %i.bcv, %i.bcv
  %shift2061 = shufflevector <2 x float> %i.bcu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2062 = fmul <2 x float> %i.bcu, %shift2061 ; 2 uses
  %i.bcx = shufflevector <2 x float> %i.bcu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bcy = shufflevector <2 x float> %i.bcv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bcz = fmul <2 x float> %i.bcx, %i.bcy        ; 4 uses
  %i.bda = shufflevector <2 x float> %i.bcv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bdb = fmul <2 x float> %i.bcu, %i.bda        ; 4 uses
  %shift2064 = shufflevector <2 x float> %i.bcv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2065 = fmul <2 x float> %i.bcv, %shift2064 ; 2 uses
  %i.bdc = shufflevector <2 x float> %foldExtExtBinop2059, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bdd = fadd <2 x float> %i.bcw, %i.bdc
  %i.bde = fmul <2 x float> %i.bdd, splat (float 2.000000e+00)
  %foldExtExtBinop2067 = fadd <2 x float> %foldExtExtBinop2062, %foldExtExtBinop2065
  %foldExtExtBinop2069 = fsub <2 x float> %i.bcz, %i.bdb
  %24 = extractelement <2 x float> %foldExtExtBinop2069, i64 1
  %25 = fmul float %24, 2.000000e+00              ; 3 uses
  %foldExtExtBinop2071 = fsub <2 x float> %foldExtExtBinop2062, %foldExtExtBinop2065
  %i.bdf = shufflevector <2 x float> %foldExtExtBinop2067, <2 x float> %foldExtExtBinop2071, <2 x i32> <i32 0, i32 2>
  %i.bdg = fmul <2 x float> %i.bdf, splat (float 2.000000e+00) ; 4 uses
  %i.bdh = fsub <2 x float> splat (float 1.000000e+00), %i.bde ; 4 uses
  %foldExtExtBinop2073 = fadd <2 x float> %i.bcz, %i.bdb
  %26 = extractelement <2 x float> %foldExtExtBinop2073, i64 0
  %27 = fmul float %26, 2.000000e+00              ; 3 uses
  %28 = fadd <2 x float> %i.bcz, %i.bdb
  %29 = fsub <2 x float> %i.bcz, %i.bdb
  %i.bdi = shufflevector <2 x float> %29, <2 x float> %28, <2 x i32> <i32 0, i32 3>
  %i.bdj = fmul <2 x float> %i.bdi, splat (float 2.000000e+00) ; 4 uses
  %shift2075 = shufflevector <2 x float> %i.bcw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2076 = fadd <2 x float> %i.bcw, %shift2075
  %i.bdk = extractelement <2 x float> %foldExtExtBinop2076, i64 0
  %i.bdl = fmul float %i.bdk, 2.000000e+00
  %i.bdm = fsub float 1.000000e+00, %i.bdl        ; 3 uses
  %.sroa.0196.0.copyload = load <2 x float>, ptr %7, align 8
  %.sroa.2197.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.0194.0.copyload = load <2 x float>, ptr %5, align 8
  %.sroa.2195.0.copyload = load float, ptr %.sroa.51485.0..sroa_idx, align 8
  %i.bdn = fsub <2 x float> %.sroa.0196.0.copyload, %.sroa.0194.0.copyload
  %i.bdo = fsub float %.sroa.2197.0.copyload, %.sroa.2195.0.copyload
  br i1 %i.aoo, label %.lr.ph1639, label %._crit_edge1640

.lr.ph1639:                                       ; preds = %bb.go
  %i.bdp = getelementptr inbounds nuw i8, ptr %2, i64 72
  %wide.trip.count1756 = zext nneg i32 %.1900 to i64
  %wide.trip.count1741 = zext nneg i32 %i.aqz to i64
  %i.bdq = extractelement <2 x float> %i.bdj, i64 0
  %i.bdr = insertelement <2 x float> %i.bdj, float %i.bdm, i64 0
  %30 = shufflevector <2 x float> %i.bdh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %31 = insertelement <2 x float> %30, float %27, i64 1
  %32 = insertelement <2 x float> %i.bdg, float %25, i64 0
  br label %bb.gp

._crit_edge1640:                                  ; preds = %._crit_edge1636, %bb.go
  %i.bds = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.bdt = load ptr, ptr %i.bds, align 8, !tbaa !192 ; 2 uses
  %.not.i1348 = icmp eq ptr %i.bdt, null
  %i.bdu = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bdv = select i1 %.not.i1348, ptr %i.bdu, ptr %i.bdt ; 6 uses
  %i.bdw = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.bdx = load ptr, ptr %i.bdw, align 8, !tbaa !192 ; 2 uses
  %.not.i1349 = icmp eq ptr %i.bdx, null
  %i.bdy = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.bdz = select i1 %.not.i1349, ptr %i.bdy, ptr %i.bdx ; 9 uses
  %i.bea = getelementptr inbounds nuw i8, ptr %3, i64 100 ; 2 uses
  %i.beb = load i32, ptr %i.bea, align 4, !tbaa !193
  %i.bec = icmp sgt i32 %i.beb, 0
  br i1 %i.bec, label %bb.gx, label %bb.he

bb.gp:                                            ; preds = %.lr.ph1639, %._crit_edge1636
  %indvars.iv1753 = phi i64 [ 0, %.lr.ph1639 ], [ %indvars.iv.next1754, %._crit_edge1636 ] ; 3 uses
  %i.bed = getelementptr inbounds nuw [40 x i8], ptr %.1.i1306, i64 %indvars.iv1753 ; 5 uses
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bed, i64 36
  %i.bef = load i32, ptr %i.bee, align 4, !tbaa !177 ; 3 uses
  %i.beg = load ptr, ptr %i.bdp, align 8, !tbaa !171
  %i.beh = getelementptr inbounds nuw [268 x i8], ptr %i.beg, i64 %indvars.iv1753 ; 7 uses
  %i.bei = getelementptr inbounds nuw i8, ptr %i.beh, i64 264
  store i32 %i.bef, ptr %i.bei, align 4, !tbaa !195
  %i.bej = getelementptr inbounds nuw i8, ptr %i.beh, i64 224
  %.sroa.0170.0.copyload = load <2 x float>, ptr %i.bed, align 8 ; 4 uses
  %.sroa.2171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bed, i64 8 ; 2 uses
  %.sroa.2171.0.copyload = load float, ptr %.sroa.2171.0..sroa_idx, align 8 ; 2 uses
  %.sroa.03.0.vec.extract.i1350 = extractelement <2 x float> %.sroa.0170.0.copyload, i64 0
  %.sroa.03.4.vec.extract.i1351 = extractelement <2 x float> %.sroa.0170.0.copyload, i64 1
  %i.bek = fmul <2 x float> %i.bdg, %.sroa.0170.0.copyload
  %i.bel = shufflevector <2 x float> %.sroa.0170.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bem = fmul <2 x float> %i.bdh, %i.bel
  %i.ben = fadd <2 x float> %i.bek, %i.bem
  %i.beo = insertelement <2 x float> poison, float %.sroa.2171.0.copyload, i64 0
  %i.bep = shufflevector <2 x float> %i.beo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.beq = fmul <2 x float> %i.bdj, %i.bep
  %i.ber = fadd <2 x float> %i.beq, %i.ben
  %i.bes = shufflevector <2 x float> %i.ber, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %33 = fmul float %25, %.sroa.03.0.vec.extract.i1350
  %34 = fmul float %27, %.sroa.03.4.vec.extract.i1351
  %35 = fadd float %33, %34
  %i.bet = fmul float %i.bdm, %.sroa.2171.0.copyload
  %i.beu = fadd float %i.bet, %35
  store <2 x float> %i.bes, ptr %i.bej, align 4, !tbaa !106
  %.sroa.4173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.beh, i64 232
  store float %i.beu, ptr %.sroa.4173.0..sroa_idx, align 4, !tbaa !106
  %.sroa.0162.0.copyload = load <2 x float>, ptr %i.bed, align 8 ; 4 uses
  %.sroa.2163.0.copyload = load float, ptr %.sroa.2171.0..sroa_idx, align 8 ; 2 uses
  %foldExtExtBinop2078 = fmul <2 x float> %i.bdg, %.sroa.0162.0.copyload
  %shift2080 = shufflevector <2 x float> %.sroa.0162.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2081 = fmul <2 x float> %i.bdh, %shift2080
  %foldExtExtBinop2083 = fadd <2 x float> %foldExtExtBinop2078, %foldExtExtBinop2081
  %i.bev = extractelement <2 x float> %foldExtExtBinop2083, i64 0
  %i.bew = fmul float %i.bdq, %.sroa.2163.0.copyload
  %i.bex = fadd float %i.bew, %i.bev
  %i.bey = fmul <2 x float> %32, %.sroa.0162.0.copyload
  %36 = fmul <2 x float> %31, %.sroa.0162.0.copyload
  %37 = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bez = fadd <2 x float> %37, %i.bey
  %i.bfa = insertelement <2 x float> poison, float %.sroa.2163.0.copyload, i64 0
  %i.bfb = shufflevector <2 x float> %i.bfa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bfc = fmul <2 x float> %i.bdr, %i.bfb
  %i.bfd = fadd <2 x float> %i.bfc, %i.bez
  br i1 %i.ara, label %.lr.ph1626, label %._crit_edge1627.thread

._crit_edge1627:                                  ; preds = %bb.gr
  %.not935 = icmp eq i32 %.2895, -1
  br i1 %.not935, label %._crit_edge1627.thread, label %bb.gs

.lr.ph1626:                                       ; preds = %bb.gp, %bb.gr
  %indvars.iv1738 = phi i64 [ %indvars.iv.next1739, %bb.gr ], [ 0, %bb.gp ] ; 4 uses
  %.08931623 = phi i32 [ %.2895, %bb.gr ], [ -1, %bb.gp ] ; 2 uses
  %.08961622 = phi float [ %.2898, %bb.gr ], [ 9.950000e-01, %bb.gp ] ; 3 uses
  %i.bfe = getelementptr inbounds nuw i8, ptr %.0908, i64 %indvars.iv1738
  %i.bff = load i8, ptr %i.bfe, align 1, !tbaa !196, !range !197, !noundef !198
  %i.bfg = trunc nuw i8 %i.bff to i1
  br i1 %i.bfg, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %.lr.ph1626
  %i.bfh = getelementptr inbounds nuw [268 x i8], ptr %.0909, i64 %indvars.iv1738 ; 2 uses
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bfh, i64 224
  %.sroa.0145.0.copyload = load <2 x float>, ptr %i.bfi, align 4 ; 2 uses
  %.sroa.2146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bfh, i64 232
  %.sroa.2146.0.copyload = load float, ptr %.sroa.2146.0..sroa_idx, align 4
  %.sroa.04.4.vec.extract.i1364 = extractelement <2 x float> %.sroa.0145.0.copyload, i64 1
  %i.bfj = fmul float %i.bex, %.sroa.04.4.vec.extract.i1364
  %i.bfk = shufflevector <2 x float> %.sroa.0145.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bfl = insertelement <2 x float> %i.bfk, float %.sroa.2146.0.copyload, i64 0
  %i.bfm = fmul <2 x float> %i.bfd, %i.bfl        ; 2 uses
  %i.bfn = extractelement <2 x float> %i.bfm, i64 1
  %i.bfo = fadd float %i.bfn, %i.bfj
  %i.bfp = extractelement <2 x float> %i.bfm, i64 0
  %i.bfq = fadd float %i.bfp, %i.bfo              ; 2 uses
  %i.bfr = fcmp ogt float %i.bfq, %.08961622      ; 2 uses
  %.1897 = select i1 %i.bfr, float %i.bfq, float %.08961622
  %i.bfs = trunc nuw nsw i64 %indvars.iv1738 to i32
  %.1894 = select i1 %i.bfr, i32 %i.bfs, i32 %.08931623
  br label %bb.gr

bb.gr:                                            ; preds = %.lr.ph1626, %bb.gq
  %.2898 = phi float [ %.08961622, %.lr.ph1626 ], [ %.1897, %bb.gq ]
  %.2895 = phi i32 [ %.08931623, %.lr.ph1626 ], [ %.1894, %bb.gq ] ; 3 uses
  %indvars.iv.next1739 = add nuw nsw i64 %indvars.iv1738, 1 ; 2 uses
  %exitcond1742.not = icmp eq i64 %indvars.iv.next1739, %wide.trip.count1741
  br i1 %exitcond1742.not, label %._crit_edge1627, label %.lr.ph1626, !llvm.loop !42

bb.gs:                                            ; preds = %._crit_edge1627
  %i.bft = sext i32 %.2895 to i64                 ; 2 uses
  %i.bfu = getelementptr inbounds [268 x i8], ptr %.0909, i64 %i.bft ; 4 uses
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.beh, i64 240
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfu, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bfv, ptr noundef nonnull align 4 dereferenceable(12) %i.bfw, i64 12, i1 false), !tbaa.struct !179
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.beh, i64 252
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfu, i64 252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bfx, ptr noundef nonnull align 4 dereferenceable(12) %i.bfy, i64 12, i1 false), !tbaa.struct !179
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bfu, i64 236
  %i.bga = load float, ptr %i.bfz, align 4, !tbaa !199
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.beh, i64 236
  store float %i.bga, ptr %i.bgb, align 4, !tbaa !199
  %i.bgc = getelementptr inbounds i8, ptr %.0908, i64 %i.bft
  store i8 1, ptr %i.bgc, align 1, !tbaa !196
  br label %._crit_edge1627.thread

._crit_edge1627.thread:                           ; preds = %bb.gp, %bb.gs, %._crit_edge1627
  %.0889 = phi ptr [ %i.bfu, %bb.gs ], [ null, %._crit_edge1627 ], [ null, %bb.gp ] ; 3 uses
  %i.bgd = icmp sgt i32 %i.bef, 0
  br i1 %i.bgd, label %.lr.ph1635, label %._crit_edge1636

.lr.ph1635:                                       ; preds = %._crit_edge1627.thread
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bed, i64 24
  %i.bgf = load ptr, ptr %i.bge, align 8, !tbaa !176
  %.not936 = icmp eq ptr %.0889, null
  %i.bgg = getelementptr inbounds nuw i8, ptr %.0889, i64 264
  %wide.trip.count1751 = zext nneg i32 %i.bef to i64
  br label %bb.gt

._crit_edge1636:                                  ; preds = %.loopexit, %._crit_edge1627.thread
  %indvars.iv.next1754 = add nuw nsw i64 %indvars.iv1753, 1 ; 2 uses
  %exitcond1757.not = icmp eq i64 %indvars.iv.next1754, %wide.trip.count1756
  br i1 %exitcond1757.not, label %._crit_edge1640, label %bb.gp, !llvm.loop !43

bb.gt:                                            ; preds = %.lr.ph1635, %.loopexit
  %indvars.iv1748 = phi i64 [ 0, %.lr.ph1635 ], [ %indvars.iv.next1749, %.loopexit ] ; 3 uses
  %i.bgh = getelementptr inbounds nuw [24 x i8], ptr %i.bgf, i64 %indvars.iv1748 ; 5 uses
  %i.bgi = getelementptr inbounds nuw [56 x i8], ptr %i.beh, i64 %indvars.iv1748 ; 9 uses
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgi, i64 12
  %.sroa.0115.0.copyload = load <2 x float>, ptr %i.bgh, align 4 ; 4 uses
  %.sroa.2116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgh, i64 8
  %.sroa.2116.0.copyload = load float, ptr %.sroa.2116.0..sroa_idx, align 4 ; 2 uses
  %.sroa.03.0.vec.extract.i1366 = extractelement <2 x float> %.sroa.0115.0.copyload, i64 0
  %.sroa.03.4.vec.extract.i1367 = extractelement <2 x float> %.sroa.0115.0.copyload, i64 1
  %i.bgk = fmul <2 x float> %i.bdg, %.sroa.0115.0.copyload
  %i.bgl = shufflevector <2 x float> %.sroa.0115.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bgm = fmul <2 x float> %i.bdh, %i.bgl
  %i.bgn = fadd <2 x float> %i.bgk, %i.bgm
  %i.bgo = insertelement <2 x float> poison, float %.sroa.2116.0.copyload, i64 0
  %i.bgp = shufflevector <2 x float> %i.bgo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bgq = fmul <2 x float> %i.bdj, %i.bgp
  %i.bgr = fadd <2 x float> %i.bgq, %i.bgn
  %i.bgs = shufflevector <2 x float> %i.bgr, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %38 = fmul float %25, %.sroa.03.0.vec.extract.i1366
  %39 = fmul float %27, %.sroa.03.4.vec.extract.i1367
  %40 = fadd float %38, %39
  %i.bgt = fmul float %i.bdm, %.sroa.2116.0.copyload
  %i.bgu = fadd float %i.bgt, %40                 ; 2 uses
  store <2 x float> %i.bgs, ptr %i.bgj, align 4, !tbaa !106
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgi, i64 20
  store float %i.bgu, ptr %.sroa.4118.0..sroa_idx, align 4, !tbaa !106
  %i.bgv = fadd <2 x float> %i.bdn, %i.bgs
  %i.bgw = fadd float %i.bdo, %i.bgu
  store <2 x float> %i.bgv, ptr %i.bgi, align 4, !tbaa !106
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgi, i64 8
  store float %i.bgw, ptr %.sroa.4110.0..sroa_idx, align 4, !tbaa !106
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.bgh, i64 12
  %i.bgy = load float, ptr %i.bgx, align 4, !tbaa !160
  %i.bgz = fsub float %i.bgy, %i.mf
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgi, i64 24
  store float %i.bgz, ptr %i.bha, align 4, !tbaa !201
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bgh, i64 16
  %i.bhc = load i32, ptr %i.bhb, align 4
  %i.bhd = call i32 @llvm.bswap.i32(i32 %i.bhc)   ; 2 uses
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bgi, i64 44
  store i32 %i.bhd, ptr %i.bhe, align 4, !tbaa !202
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bgh, i64 20
  %i.bhg = load i32, ptr %i.bhf, align 4, !tbaa !178 ; 2 uses
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bgi, i64 48
  store i32 %i.bhg, ptr %i.bhh, align 4, !tbaa !203
  br i1 %.not936, label %.loopexit, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.bhi = load i32, ptr %i.bgg, align 4, !tbaa !195 ; 2 uses
  %i.bhj = icmp sgt i32 %i.bhi, 0
  br i1 %i.bhj, label %.lr.ph1632.preheader, label %.loopexit

.lr.ph1632.preheader:                             ; preds = %bb.gu
  %wide.trip.count1746 = zext nneg i32 %i.bhi to i64
  br label %.lr.ph1632

.lr.ph1632:                                       ; preds = %.lr.ph1632.preheader, %bb.gw
  %indvars.iv1743 = phi i64 [ 0, %.lr.ph1632.preheader ], [ %indvars.iv.next1744, %bb.gw ] ; 2 uses
  %i.bhk = getelementptr inbounds nuw [56 x i8], ptr %.0889, i64 %indvars.iv1743 ; 4 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bhk, i64 44
  %i.bhm = load i32, ptr %i.bhl, align 4, !tbaa !202
  %i.bhn = icmp eq i32 %i.bhd, %i.bhm
  br i1 %i.bhn, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %.lr.ph1632
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhk, i64 48
  %i.bhp = load i32, ptr %i.bho, align 4, !tbaa !203
  %i.bhq = icmp eq i32 %i.bhg, %i.bhp
  br i1 %i.bhq, label %.critedge945, label %bb.gw

.critedge945:                                     ; preds = %bb.gv
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhk, i64 48
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhk, i64 32
  %i.bht = load float, ptr %i.bhs, align 4, !tbaa !204
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bgi, i64 32
  store float %i.bht, ptr %i.bhu, align 4, !tbaa !204
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bgi, i64 52
  store i8 1, ptr %i.bhv, align 4, !tbaa !205
  store i32 -1, ptr %i.bhr, align 4, !tbaa !203
  br label %.loopexit

bb.gw:                                            ; preds = %bb.gv, %.lr.ph1632
  %indvars.iv.next1744 = add nuw nsw i64 %indvars.iv1743, 1 ; 2 uses
  %exitcond1747.not = icmp eq i64 %indvars.iv.next1744, %wide.trip.count1746
  br i1 %exitcond1747.not, label %.loopexit, label %.lr.ph1632, !llvm.loop !44

.loopexit:                                        ; preds = %bb.gw, %bb.gu, %.critedge945, %bb.gt
  %indvars.iv.next1749 = add nuw nsw i64 %indvars.iv1748, 1 ; 2 uses
  %exitcond1752.not = icmp eq i64 %indvars.iv.next1749, %wide.trip.count1751
  br i1 %exitcond1752.not, label %._crit_edge1636, label %bb.gt, !llvm.loop !45

bb.gx:                                            ; preds = %._crit_edge1640
  %i.bhw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bhx = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.bhy = load ptr, ptr %i.bhx, align 8, !tbaa !113 ; 2 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhy, i64 80
  %i.bia = load i32, ptr %i.bhz, align 8, !tbaa !14
  %i.bib = ptrtoint ptr %i.bhy to i64
  %i.bic = sext i32 %i.bia to i64
  %i.bid = add nsw i64 %i.bic, %i.bib
  %i.bie = inttoptr i64 %i.bid to ptr             ; 2 uses
  br i1 %i.aoo, label %.lr.ph1662, label %._crit_edge1663.thread

.lr.ph1662:                                       ; preds = %bb.gx
  %i.bif = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.not934 = icmp eq ptr %4, null
  %i.big = getelementptr inbounds nuw i8, ptr %0, i64 4472
  %i.bih = getelementptr inbounds nuw i8, ptr %i.bdz, i64 24 ; 2 uses
  %i.bii = getelementptr inbounds nuw i8, ptr %0, i64 4480
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bdz, i64 4
  %wide.trip.count1766 = zext nneg i32 %.1900 to i64
  br label %bb.gy

._crit_edge1663:                                  ; preds = %._crit_edge1649
  %i.bik = fcmp ogt float %.1869.lcssa, 0.000000e+00
  br i1 %i.bik, label %bb.hd, label %._crit_edge1663.thread

bb.gy:                                            ; preds = %.lr.ph1662, %._crit_edge1649
  %indvars.iv1763 = phi i64 [ 0, %.lr.ph1662 ], [ %indvars.iv.next1764, %._crit_edge1649 ] ; 2 uses
  %.08681659 = phi float [ 0.000000e+00, %.lr.ph1662 ], [ %.1869.lcssa, %._crit_edge1649 ] ; 2 uses
  %.sroa.073.01656 = phi <2 x float> [ zeroinitializer, %.lr.ph1662 ], [ %.sroa.073.1.lcssa, %._crit_edge1649 ] ; 2 uses
  %.sroa.11.01655 = phi float [ 0.000000e+00, %.lr.ph1662 ], [ %.sroa.11.1.lcssa, %._crit_edge1649 ] ; 2 uses
  %i.bil = phi <2 x float> [ zeroinitializer, %.lr.ph1662 ], [ %i.bir, %._crit_edge1649 ] ; 2 uses
  %i.bim = load ptr, ptr %i.bif, align 8, !tbaa !171
  %i.bin = getelementptr inbounds nuw [268 x i8], ptr %i.bim, i64 %indvars.iv1763 ; 2 uses
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bin, i64 264
  %i.bip = load i32, ptr %i.bio, align 4, !tbaa !195 ; 2 uses
  %i.biq = icmp sgt i32 %i.bip, 0
  br i1 %i.biq, label %.lr.ph1648.preheader, label %._crit_edge1649

.lr.ph1648.preheader:                             ; preds = %bb.gy
  %wide.trip.count1761 = zext nneg i32 %i.bip to i64
  br label %.lr.ph1648

._crit_edge1649:                                  ; preds = %bb.hc, %bb.gy
  %.sroa.11.1.lcssa = phi float [ %.sroa.11.01655, %bb.gy ], [ %i.bkd, %bb.hc ] ; 3 uses
  %.sroa.073.1.lcssa = phi <2 x float> [ %.sroa.073.01656, %bb.gy ], [ %i.bkc, %bb.hc ] ; 3 uses
  %.1869.lcssa = phi float [ %.08681659, %bb.gy ], [ %i.bke, %bb.hc ] ; 3 uses
  %i.bir = phi <2 x float> [ %i.bil, %bb.gy ], [ %i.bkb, %bb.hc ] ; 2 uses
  %indvars.iv.next1764 = add nuw nsw i64 %indvars.iv1763, 1 ; 2 uses
  %exitcond1767.not = icmp eq i64 %indvars.iv.next1764, %wide.trip.count1766
  br i1 %exitcond1767.not, label %._crit_edge1663, label %bb.gy, !llvm.loop !46

.lr.ph1648:                                       ; preds = %.lr.ph1648.preheader, %bb.hc
  %indvars.iv1758 = phi i64 [ 0, %.lr.ph1648.preheader ], [ %indvars.iv.next1759, %bb.hc ] ; 2 uses
  %.18691645 = phi float [ %.08681659, %.lr.ph1648.preheader ], [ %i.bke, %bb.hc ]
  %.sroa.073.11642 = phi <2 x float> [ %.sroa.073.01656, %.lr.ph1648.preheader ], [ %i.bkc, %bb.hc ]
  %.sroa.11.11641 = phi float [ %.sroa.11.01655, %.lr.ph1648.preheader ], [ %i.bkd, %bb.hc ]
  %i.bis = phi <2 x float> [ %i.bil, %.lr.ph1648.preheader ], [ %i.bkb, %bb.hc ]
  %i.bit = getelementptr inbounds nuw [56 x i8], ptr %i.bin, i64 %indvars.iv1758
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bit, i64 48
  %i.biv = load i32, ptr %i.biu, align 4, !tbaa !203 ; 2 uses
  %i.biw = load i32, ptr %i.bhw, align 8, !tbaa !112
  %i.bix = icmp eq i32 %i.biw, 4
  br i1 %i.bix, label %bb.gz, label %bb.hb

bb.gz:                                            ; preds = %.lr.ph1648
  %i.biy = sext i32 %i.biv to i64
  %i.biz = getelementptr inbounds i8, ptr %i.bie, i64 %i.biy
  %i.bja = load i8, ptr %i.biz, align 1, !tbaa !113 ; 2 uses
  %i.bjb = zext i8 %i.bja to i32
  br i1 %.not934, label %bb.hc, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.bjc = zext i8 %i.bja to i64
  %i.bjd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bjc
  %i.bje = load i32, ptr %i.bjd, align 4, !tbaa !14
  br label %bb.hc

bb.hb:                                            ; preds = %.lr.ph1648
  %i.bjf = ashr i32 %i.biv, 1
  %i.bjg = sext i32 %i.bjf to i64
  %i.bjh = getelementptr inbounds i8, ptr %i.bie, i64 %i.bjg
  %i.bji = load i8, ptr %i.bjh, align 1, !tbaa !113
  %i.bjj = zext i8 %i.bji to i32
  br label %bb.hc

bb.hc:                                            ; preds = %bb.gz, %bb.ha, %bb.hb
  %.0864 = phi i32 [ %i.bje, %bb.ha ], [ %i.bjb, %bb.gz ], [ %i.bjj, %bb.hb ] ; 2 uses
  %i.bjk = load i32, ptr %i.bea, align 4, !tbaa !193
  %i.bjl = add nsw i32 %i.bjk, -1
  %i.bjm = icmp slt i32 %.0864, 0
  %i.bjn = call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %i.bjl, i32 %.0864)
  %i.bjo = select i1 %i.bjm, i32 0, i32 %i.bjn
  %i.bjp = sext i32 %i.bjo to i64
  %i.bjq = getelementptr inbounds [40 x i8], ptr %i.bdv, i64 %i.bjp ; 5 uses
  %.sroa.047.0.copyload = load float, ptr %i.bjq, align 8, !tbaa !106
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bjq, i64 4
  %.sroa.448.0.copyload = load float, ptr %.sroa.448.0..sroa_idx, align 4, !tbaa !106
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bjq, i64 12
  %.sroa.549.0.copyload = load <2 x float>, ptr %.sroa.549.0..sroa_idx, align 4, !tbaa !106
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bjq, i64 20
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !106
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bjq, i64 24
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !157 ; 2 uses
  %i.bjr = load ptr, ptr %i.big, align 8, !tbaa !206
  %i.bjs = load float, ptr %i.bdz, align 8, !tbaa !207
  %i.bjt = load i64, ptr %i.bih, align 8, !tbaa !208
  %i.bju = call float %i.bjr(float noundef %.sroa.047.0.copyload, i64 noundef %.sroa.7.0.copyload, float noundef %i.bjs, i64 noundef %i.bjt) #8
  %i.bjv = load ptr, ptr %i.bii, align 8, !tbaa !209
  %i.bjw = load float, ptr %i.bij, align 4, !tbaa !210
  %i.bjx = load i64, ptr %i.bih, align 8, !tbaa !208
  %i.bjy = call float %i.bjv(float noundef %.sroa.448.0.copyload, i64 noundef %.sroa.7.0.copyload, float noundef %i.bjw, i64 noundef %i.bjx) #8
  %i.bjz = insertelement <2 x float> poison, float %i.bju, i64 0
  %i.bka = insertelement <2 x float> %i.bjz, float %i.bjy, i64 1
  %i.bkb = fadd <2 x float> %i.bis, %i.bka        ; 2 uses
  %i.bkc = fadd <2 x float> %.sroa.073.11642, %.sroa.549.0.copyload ; 2 uses
  %i.bkd = fadd float %.sroa.11.11641, %.sroa.6.0.copyload ; 2 uses
  %i.bke = fadd float %.18691645, 1.000000e+00    ; 2 uses
  %indvars.iv.next1759 = add nuw nsw i64 %indvars.iv1758, 1 ; 2 uses
  %exitcond1762.not = icmp eq i64 %indvars.iv.next1759, %wide.trip.count1761
  br i1 %exitcond1762.not, label %._crit_edge1649, label %.lr.ph1648, !llvm.loop !47

bb.hd:                                            ; preds = %._crit_edge1663
  %i.bkf = fdiv float 1.000000e+00, %.1869.lcssa  ; 2 uses
  %i.bkg = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.bkh = insertelement <2 x float> poison, float %i.bkf, i64 0
  %i.bki = shufflevector <2 x float> %i.bkh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bkj = fmul <2 x float> %i.bir, %i.bki        ; 2 uses
  %i.bkk = extractelement <2 x float> %i.bkj, i64 0
  store float %i.bkk, ptr %i.bkg, align 8, !tbaa !211
  %i.bkl = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.bkm = extractelement <2 x float> %i.bkj, i64 1
end_hunk_0
