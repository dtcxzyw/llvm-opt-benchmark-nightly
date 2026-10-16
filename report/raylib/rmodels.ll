Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 99
loop-unroll.NumUnrolled: 188
begin_hunk_0_@LoadGLTF:bb.a
  %i.brr = getelementptr i8, ptr %i.brf, i64 %i.brm
  %i.brs = getelementptr i8, ptr %i.brr, i64 %i.brn
  br label %.preheader1875

.preheader1875:                                   ; preds = %.preheader1875.lr.ph, %.preheader1875
  %indvar = phi i64 [ 0, %.preheader1875.lr.ph ], [ %indvar.next, %.preheader1875 ] ; 3 uses
  %i.brt = shl i64 %indvar, 4
  %i.bru = and i64 %i.brt, 17179869168
  %scevgep = getelementptr nuw i8, ptr %i.bqz, i64 %i.bru
  %i.brv = mul i64 %i.brq, %indvar
  %scevgep2202 = getelementptr i8, ptr %i.brs, i64 %i.brv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %scevgep, ptr noundef nonnull align 4 dereferenceable(16) %scevgep2202, i64 16, i1 false)
  %indvar.next = add i64 %indvar, 1               ; 2 uses
  %i.brw = and i64 %indvar.next, 4294967295
  %i.brx = icmp ugt i64 %i.bqx, %i.brw
  br i1 %i.brx, label %.preheader1875, label %.lr.ph1935

._crit_edge1936:                                  ; preds = %.lr.ph1935, %bb.cn
  call void @free(ptr noundef %i.bqz) #54
  br label %.loopexit1879

.lr.ph1935:                                       ; preds = %.preheader1875, %.lr.ph1935
  %i.bry = phi i64 [ %i.bsg, %.lr.ph1935 ], [ 0, %.preheader1875 ] ; 2 uses
  %.012001934 = phi i32 [ %i.bsf, %.lr.ph1935 ], [ 0, %.preheader1875 ]
  %i.brz = getelementptr inbounds nuw [4 x i8], ptr %i.bqz, i64 %i.bry
  %i.bsa = load float, ptr %i.brz, align 4
  %i.bsb = fmul float %i.bsa, 2.550000e+02
  %i.bsc = fptoui float %i.bsb to i8
  %i.bsd = load ptr, ptr %i.bbt, align 8
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bsd, i64 %i.bry
  store i8 %i.bsc, ptr %i.bse, align 1
  %i.bsf = add i32 %.012001934, 1                 ; 2 uses
  %i.bsg = zext i32 %i.bsf to i64                 ; 2 uses
  %i.bsh = load i64, ptr %i.bqt, align 8
  %i.bsi = shl i64 %i.bsh, 2
  %i.bsj = icmp ugt i64 %i.bsi, %i.bsg
  br i1 %i.bsj, label %.lr.ph1935, label %._crit_edge1936

bb.co:                                            ; preds = %bb.ck
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.361, ptr noundef %1) #54
  br label %.loopexit1879

bb.cp:                                            ; preds = %bb.cb
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.361, ptr noundef %1) #54
  br label %.loopexit1879

.loopexit1879:                                    ; preds = %.preheader1873, %.lr.ph1982, %Vector3Normalize.exit1414, %Vector3Normalize.exit1401, %Vector3Normalize.exit, %.lr.ph2016, %.lr.ph2025, %.lr.ph2034, %.lr.ph2041, %bb.bm, %bb.ba, %bb.as, %._crit_edge1988.thread, %._crit_edge1997.thread, %._crit_edge2006.thread, %._crit_edge2022.thread, %._crit_edge2031.thread, %bb.cl, %._crit_edge1979, %._crit_edge1988, %._crit_edge1997, %._crit_edge2006, %._crit_edge2013, %._crit_edge2022, %._crit_edge2031, %._crit_edge2038, %bb.ca, %bb.cp, %._crit_edge1942, %bb.co, %._crit_edge1936, %bb.ce, %bb.ci, %bb.cj, %bb.cg, %bb.an, %bb.bv, %bb.bx, %bb.by, %bb.bw, %bb.bj, %bb.bn, %bb.ax, %bb.bh, %bb.ap, %bb.av
  %i.bsk = add i32 %.012602042, 1                 ; 2 uses
  %i.bsl = zext i32 %i.bsk to i64                 ; 2 uses
  %i.bsm = load ptr, ptr %i.pc, align 8           ; 3 uses
  %i.bsn = getelementptr inbounds nuw [144 x i8], ptr %i.bsm, i64 %i.qf
  %i.bso = getelementptr inbounds nuw i8, ptr %i.bsn, i64 32
  %i.bsp = load i64, ptr %i.bso, align 8
  %i.bsq = icmp ugt i64 %i.bsp, %i.bsl
  br i1 %i.bsq, label %bb.an, label %._crit_edge2044

bb.cq:                                            ; preds = %._crit_edge2044
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.qp, i64 48 ; 4 uses
  %i.bss = load ptr, ptr %i.bsr, align 8
  %.not1346 = icmp eq ptr %i.bss, null
  %.pre2416 = load ptr, ptr %i.bd, align 8        ; 2 uses
  br i1 %.not1346, label %bb.cy, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.bst = getelementptr inbounds nuw i8, ptr %i.qp, i64 32 ; 10 uses
  %i.bsu = load i64, ptr %i.bst, align 8
  %i.bsv = trunc i64 %i.bsu to i32
  %i.bsw = sdiv i32 %i.bsv, 3
  %i.bsx = sext i32 %.112552057 to i64
  %i.bsy = getelementptr inbounds [120 x i8], ptr %.pre2416, i64 %i.bsx ; 2 uses
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bsy, i64 4
  store i32 %i.bsw, ptr %i.bsz, align 4
  %i.bta = getelementptr inbounds nuw i8, ptr %i.bsy, i64 56 ; 7 uses
  %i.btb = load ptr, ptr %i.bta, align 8
  %.not1347 = icmp eq ptr %i.btb, null
  br i1 %.not1347, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.362, ptr noundef %1) #54
  br label %.loopexit1902.a

bb.ct:                                            ; preds = %bb.cr
  %i.btc = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.btd = load i32, ptr %i.btc, align 8
  switch i32 %i.btd, label %bb.cx [
    i32 4, label %bb.cu
    i32 2, label %bb.cv
    i32 5, label %bb.cw
  ]

bb.cu:                                            ; preds = %bb.ct
  %i.bte = load i64, ptr %i.bst, align 8
  %i.btf = shl i64 %i.bte, 1
  %i.btg = call noalias ptr @malloc(i64 noundef %i.btf) #56
  store ptr %i.btg, ptr %i.bta, align 8
  %i.bth = load ptr, ptr %i.bsr, align 8          ; 2 uses
  %i.bti = getelementptr inbounds nuw i8, ptr %i.bth, i64 8
  %i.btj = load ptr, ptr %i.bti, align 8
  %i.btk = getelementptr inbounds nuw i8, ptr %i.btj, i64 24
  %i.btl = load ptr, ptr %i.btk, align 8
  %i.btm = getelementptr inbounds nuw i8, ptr %i.bth, i64 16
  %i.btn = load i64, ptr %i.btm, align 8
  %i.bto = lshr i64 %i.btn, 1
  %i.btp = getelementptr inbounds nuw [2 x i8], ptr %i.btl, i64 %i.bto
  %i.btq = getelementptr inbounds nuw i8, ptr %i.qp, i64 24
  %i.btr = load i64, ptr %i.btq, align 8
  %i.bts = lshr i64 %i.btr, 1
  %i.btt = getelementptr inbounds nuw [2 x i8], ptr %i.btp, i64 %i.bts
  %i.btu = load i64, ptr %i.bst, align 8
  %.not2167.a = icmp eq i64 %i.btu, 0
  br i1 %.not2167.a, label %.loopexit1902.a, label %.preheader1876.lr.ph

.preheader1876.lr.ph:                             ; preds = %bb.cu
  %i.btv = getelementptr inbounds nuw i8, ptr %i.qp, i64 40
  br label %.preheader1876

.preheader1876:                                   ; preds = %.preheader1876.lr.ph, %.preheader1876
  %i.btw = phi i64 [ 0, %.preheader1876.lr.ph ], [ %i.buh, %.preheader1876 ]
  %.011982052 = phi i32 [ 0, %.preheader1876.lr.ph ], [ %i.bug, %.preheader1876 ]
  %.011992051 = phi i32 [ 0, %.preheader1876.lr.ph ], [ %i.buf, %.preheader1876 ] ; 2 uses
  %i.btx = sext i32 %.011992051 to i64
  %i.bty = getelementptr inbounds [2 x i8], ptr %i.btt, i64 %i.btx
  %i.btz = load i16, ptr %i.bty, align 2
  %i.bua = load ptr, ptr %i.bta, align 8
  %i.bub = getelementptr inbounds nuw [2 x i8], ptr %i.bua, i64 %i.btw
  store i16 %i.btz, ptr %i.bub, align 2
  %i.buc = load i64, ptr %i.btv, align 8
  %i.bud = lshr i64 %i.buc, 1
  %i.bue = trunc i64 %i.bud to i32
  %i.buf = add nsw i32 %.011992051, %i.bue
  %i.bug = add i32 %.011982052, 1                 ; 2 uses
  %i.buh = zext i32 %i.bug to i64                 ; 2 uses
  %i.bui = load i64, ptr %i.bst, align 8
  %i.buj = icmp ugt i64 %i.bui, %i.buh
  br i1 %i.buj, label %.preheader1876, label %.loopexit1902.a

bb.cv:                                            ; preds = %bb.ct
  %i.buk = load i64, ptr %i.bst, align 8
  %i.bul = shl i64 %i.buk, 1
  %i.bum = call noalias ptr @malloc(i64 noundef %i.bul) #56
  store ptr %i.bum, ptr %i.bta, align 8
  %i.bun = load ptr, ptr %i.bsr, align 8          ; 2 uses
  %i.buo = getelementptr inbounds nuw i8, ptr %i.bun, i64 8
  %i.bup = load ptr, ptr %i.buo, align 8
  %i.buq = getelementptr inbounds nuw i8, ptr %i.bup, i64 24
  %i.bur = load ptr, ptr %i.buq, align 8
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bun, i64 16
  %i.but = load i64, ptr %i.bus, align 8
  %i.buu = getelementptr inbounds nuw i8, ptr %i.bur, i64 %i.but
  %i.buv = getelementptr inbounds nuw i8, ptr %i.qp, i64 24
  %i.buw = load i64, ptr %i.buv, align 8
  %i.bux = getelementptr inbounds nuw i8, ptr %i.buu, i64 %i.buw
  %i.buy = load i64, ptr %i.bst, align 8
  %.not2166.a = icmp eq i64 %i.buy, 0
  br i1 %.not2166.a, label %.loopexit1902.a, label %.preheader1877.lr.ph

.preheader1877.lr.ph:                             ; preds = %bb.cv
  %i.buz = getelementptr inbounds nuw i8, ptr %i.qp, i64 40
  br label %.preheader1877

.preheader1877:                                   ; preds = %.preheader1877.lr.ph, %.preheader1877
  %i.bva = phi i64 [ 0, %.preheader1877.lr.ph ], [ %i.bvl, %.preheader1877 ]
  %.011952050 = phi i32 [ 0, %.preheader1877.lr.ph ], [ %i.bvk, %.preheader1877 ]
  %.011962049 = phi i32 [ 0, %.preheader1877.lr.ph ], [ %i.bvj, %.preheader1877 ] ; 2 uses
  %i.bvb = sext i32 %.011962049 to i64
  %i.bvc = getelementptr inbounds i8, ptr %i.bux, i64 %i.bvb
  %i.bvd = load i8, ptr %i.bvc, align 1
  %i.bve = zext i8 %i.bvd to i16
  %i.bvf = load ptr, ptr %i.bta, align 8
  %i.bvg = getelementptr inbounds nuw [2 x i8], ptr %i.bvf, i64 %i.bva
  store i16 %i.bve, ptr %i.bvg, align 2
  %i.bvh = load i64, ptr %i.buz, align 8
  %i.bvi = trunc i64 %i.bvh to i32
  %i.bvj = add nsw i32 %.011962049, %i.bvi
  %i.bvk = add i32 %.011952050, 1                 ; 2 uses
  %i.bvl = zext i32 %i.bvk to i64                 ; 2 uses
  %i.bvm = load i64, ptr %i.bst, align 8
  %i.bvn = icmp ugt i64 %i.bvm, %i.bvl
  br i1 %i.bvn, label %.preheader1877, label %.loopexit1902.a

bb.cw:                                            ; preds = %bb.ct
  %i.bvo = load i64, ptr %i.bst, align 8
  %i.bvp = shl i64 %i.bvo, 1
  %i.bvq = call noalias ptr @malloc(i64 noundef %i.bvp) #56
  store ptr %i.bvq, ptr %i.bta, align 8
  %i.bvr = load ptr, ptr %i.bsr, align 8          ; 2 uses
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bvr, i64 8
  %i.bvt = load ptr, ptr %i.bvs, align 8
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bvt, i64 24
  %i.bvv = load ptr, ptr %i.bvu, align 8
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.bvr, i64 16
  %i.bvx = load i64, ptr %i.bvw, align 8
  %i.bvy = lshr i64 %i.bvx, 2
  %i.bvz = getelementptr inbounds nuw [4 x i8], ptr %i.bvv, i64 %i.bvy
  %i.bwa = getelementptr inbounds nuw i8, ptr %i.qp, i64 24
  %i.bwb = load i64, ptr %i.bwa, align 8
  %i.bwc = lshr i64 %i.bwb, 2
  %i.bwd = getelementptr inbounds nuw [4 x i8], ptr %i.bvz, i64 %i.bwc
  %i.bwe = load i64, ptr %i.bst, align 8
  %.not2165 = icmp eq i64 %i.bwe, 0
  br i1 %.not2165, label %._crit_edge2049, label %.preheader1878.lr.ph

.preheader1878.lr.ph:                             ; preds = %bb.cw
  %i.bwf = getelementptr inbounds nuw i8, ptr %i.qp, i64 40
  br label %.preheader1878

._crit_edge2049:                                  ; preds = %.preheader1878, %bb.cw
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.363, ptr noundef %1) #54
  br label %.loopexit1902.a

.preheader1878:                                   ; preds = %.preheader1878.lr.ph, %.preheader1878
  %i.bwg = phi i64 [ 0, %.preheader1878.lr.ph ], [ %i.bws, %.preheader1878 ]
  %.011922047 = phi i32 [ 0, %.preheader1878.lr.ph ], [ %i.bwr, %.preheader1878 ]
  %.011932046 = phi i32 [ 0, %.preheader1878.lr.ph ], [ %i.bwq, %.preheader1878 ] ; 2 uses
  %i.bwh = sext i32 %.011932046 to i64
  %i.bwi = getelementptr inbounds [4 x i8], ptr %i.bwd, i64 %i.bwh
  %i.bwj = load i32, ptr %i.bwi, align 4
  %i.bwk = trunc i32 %i.bwj to i16
  %i.bwl = load ptr, ptr %i.bta, align 8
  %i.bwm = getelementptr inbounds nuw [2 x i8], ptr %i.bwl, i64 %i.bwg
  store i16 %i.bwk, ptr %i.bwm, align 2
  %i.bwn = load i64, ptr %i.bwf, align 8
  %i.bwo = lshr i64 %i.bwn, 2
  %i.bwp = trunc i64 %i.bwo to i32
  %i.bwq = add nsw i32 %.011932046, %i.bwp
  %i.bwr = add i32 %.011922047, 1                 ; 2 uses
  %i.bws = zext i32 %i.bwr to i64                 ; 2 uses
  %i.bwt = load i64, ptr %i.bst, align 8
  %i.bwu = icmp ugt i64 %i.bwt, %i.bws
  br i1 %i.bwu, label %.preheader1878, label %._crit_edge2049

bb.cx:                                            ; preds = %bb.ct
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.364, ptr noundef %1) #54
  br label %.loopexit1902.a

bb.cy:                                            ; preds = %._crit_edge2044._crit_edge, %bb.cq
  %i.bwv = phi ptr [ %.pre2415.a, %._crit_edge2044._crit_edge ], [ %.pre2416, %bb.cq ]
  %i.bww = sext i32 %.112552057 to i64
  %i.bwx = getelementptr inbounds [120 x i8], ptr %i.bwv, i64 %i.bww ; 2 uses
  %i.bwy = load i32, ptr %i.bwx, align 8
  %i.bwz = sdiv i32 %i.bwy, 3
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.bwx, i64 4
  store i32 %i.bwz, ptr %i.bxa, align 4
  br label %.loopexit1902.a

.loopexit1902.a:                                  ; preds = %.preheader1877, %.preheader1876, %bb.cv, %bb.cu, %bb.cs, %bb.cx, %._crit_edge2049, %bb.cy
  %i.bxb = load ptr, ptr %i.b, align 8            ; 2 uses
  %i.bxc = getelementptr inbounds nuw i8, ptr %i.bxb, i64 120
  %i.bxd = load i64, ptr %i.bxc, align 8          ; 2 uses
  %.not2168 = icmp eq i64 %i.bxd, 0
  br i1 %.not2168, label %.loopexit1901, label %.lr.ph2055

.lr.ph2055:                                       ; preds = %.loopexit1902.a
  %i.bxe = getelementptr inbounds nuw i8, ptr %i.bxb, i64 112
  %i.bxf = load ptr, ptr %i.bxe, align 8
  %i.bxg = load ptr, ptr %i.pc, align 8
  %i.bxh = getelementptr inbounds nuw [144 x i8], ptr %i.bxg, i64 %i.qf
  %i.bxi = getelementptr inbounds nuw i8, ptr %i.bxh, i64 16
  %i.bxj = load ptr, ptr %i.bxi, align 8
  br label %bb.cz

bb.cz:                                            ; preds = %.lr.ph2055, %bb.db
  %i.bxk = phi i64 [ 0, %.lr.ph2055 ], [ %i.bxr, %bb.db ]
  %.011902053 = phi i32 [ 0, %.lr.ph2055 ], [ %i.bxn, %bb.db ]
  %i.bxl = getelementptr inbounds nuw [1352 x i8], ptr %i.bxf, i64 %i.bxk
  %i.bxm = icmp eq ptr %i.bxl, %i.bxj
  %i.bxn = add i32 %.011902053, 1                 ; 3 uses
  br i1 %i.bxm, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.bxo = load ptr, ptr %i.bs, align 8
  %i.bxp = sext i32 %.112552057 to i64
  %i.bxq = getelementptr inbounds [4 x i8], ptr %i.bxo, i64 %i.bxp
  store i32 %i.bxn, ptr %i.bxq, align 4
  br label %.loopexit1901

bb.db:                                            ; preds = %bb.cz
  %i.bxr = zext i32 %i.bxn to i64                 ; 2 uses
  %i.bxs = icmp ugt i64 %i.bxd, %i.bxr
  br i1 %i.bxs, label %bb.cz, label %.loopexit1901

.loopexit1901:                                    ; preds = %bb.db, %.loopexit1902.a, %bb.da
  %i.bxt = add nsw i32 %.112552057, 1
  %.pre2417 = load i64, ptr %i.pa, align 8
  br label %bb.dc

bb.dc:                                            ; preds = %bb.am, %.loopexit1901
  %i.bxu = phi i64 [ %i.qe, %bb.am ], [ %.pre2417, %.loopexit1901 ] ; 2 uses
  %.21256 = phi i32 [ %.112552057, %bb.am ], [ %i.bxt, %.loopexit1901 ] ; 2 uses
  %i.bxv = add i32 %.012592056, 1                 ; 2 uses
  %i.bxw = zext i32 %i.bxv to i64                 ; 2 uses
  %i.bxx = icmp ugt i64 %i.bxu, %i.bxw
  br i1 %i.bxx, label %bb.am, label %._crit_edge2060

bb.dd:                                            ; preds = %bb.ak, %._crit_edge2060
  %i.bxy = phi ptr [ %.pre2418.a, %._crit_edge2060 ], [ %i.je, %bb.ak ] ; 3 uses
  %.31257 = phi i32 [ %.11255.lcssa, %._crit_edge2060 ], [ %.012542064, %bb.ak ]
  %i.bxz = add i32 %.012582063, 1                 ; 2 uses
  %i.bya = zext i32 %i.bxz to i64                 ; 2 uses
  %i.byb = getelementptr inbounds nuw i8, ptr %i.bxy, i64 280
  %i.byc = load i64, ptr %i.byb, align 8
  %i.byd = icmp ugt i64 %i.byc, %i.bya
  br i1 %i.byd, label %bb.ak, label %._crit_edge2066

bb.de:                                            ; preds = %._crit_edge2066
  %i.bye = getelementptr inbounds nuw i8, ptr %i.ja, i64 224
  %i.byf = load ptr, ptr %i.bye, align 8          ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.byf, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 3 uses
  %.sroa.51423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.byf, i64 16
  %.sroa.51423.0.copyload = load i64, ptr %.sroa.51423.0..sroa_idx, align 8 ; 7 uses
  %i.byg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.byh = trunc i64 %.sroa.51423.0.copyload to i32 ; 2 uses
  store i32 %i.byh, ptr %i.byg, align 8
  %i.byi = call noalias ptr @calloc(i64 noundef %.sroa.51423.0.copyload, i64 noundef 36) #57 ; 3 uses
  %.not3.i = icmp eq i64 %.sroa.51423.0.copyload, 0
  br i1 %.not3.i, label %LoadBoneInfoGLTF.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.de, %bb.di
  %i.byj = phi i64 [ %i.byy, %bb.di ], [ 0, %bb.de ] ; 3 uses
  %.0152.i = phi i32 [ %i.byx, %bb.di ], [ 0, %bb.de ]
  %i.byk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.3.0.copyload, i64 %i.byj
  %i.byl = load ptr, ptr %i.byk, align 8          ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.byl, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i1419 = getelementptr inbounds nuw i8, ptr %i.byl, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i1419, align 8
  %.not.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i, label %.preheader2645, label %bb.df

bb.df:                                            ; preds = %.lr.ph.i
  %i.bym = getelementptr inbounds nuw [36 x i8], ptr %i.byi, i64 %i.byj
  %i.byn = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.bym, ptr noundef nonnull dereferenceable(1) %.sroa.0.0.copyload.i, i64 noundef 31) #54 ; 0 uses
  br label %.preheader2645

.preheader2645:                                   ; preds = %bb.df, %.lr.ph.i
  br label %bb.dg

bb.dg:                                            ; preds = %.preheader2645, %bb.dh
  %i.byo = phi i64 [ %i.byt, %bb.dh ], [ 0, %.preheader2645 ]
  %.01.i = phi i32 [ %i.bys, %bb.dh ], [ 0, %.preheader2645 ] ; 2 uses
  %i.byp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.3.0.copyload, i64 %i.byo
  %i.byq = load ptr, ptr %i.byp, align 8
  %i.byr = icmp eq ptr %i.byq, %.sroa.5.0.copyload.i
  br i1 %i.byr, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.bys = add i32 %.01.i, 1                      ; 2 uses
  %i.byt = zext i32 %i.bys to i64                 ; 2 uses
  %i.byu = icmp ugt i64 %.sroa.51423.0.copyload, %i.byt
  br i1 %i.byu, label %bb.dg, label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.014.i = phi i32 [ -1, %bb.dh ], [ %.01.i, %bb.dg ]
  %i.byv = getelementptr inbounds nuw [36 x i8], ptr %i.byi, i64 %i.byj
  %i.byw = getelementptr inbounds nuw i8, ptr %i.byv, i64 32
  store i32 %.014.i, ptr %i.byw, align 4
  %i.byx = add i32 %.0152.i, 1                    ; 2 uses
  %i.byy = zext i32 %i.byx to i64                 ; 2 uses
  %i.byz = icmp ugt i64 %.sroa.51423.0.copyload, %i.byy
  br i1 %i.byz, label %.lr.ph.i, label %LoadBoneInfoGLTF.exit

LoadBoneInfoGLTF.exit:                            ; preds = %bb.di, %bb.de
  %i.bza = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.byi, ptr %i.bza, align 8
  %sext = shl nuw i64 %.sroa.51423.0.copyload, 32
  %i.bzb = ashr exact i64 %sext, 32
  %i.bzc = call noalias ptr @calloc(i64 noundef %i.bzb, i64 noundef 40) #57 ; 2 uses
  %i.bzd = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.bzc, ptr %i.bzd, align 8
  %i.bze = icmp sgt i32 %i.byh, 0
  br i1 %i.bze, label %.lr.ph2070, label %._crit_edge2071

.lr.ph2070:                                       ; preds = %LoadBoneInfoGLTF.exit
  %i.bzf = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bzh = getelementptr inbounds nuw i8, ptr %16, i64 20
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bzj = getelementptr inbounds nuw i8, ptr %16, i64 36
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.bzl = getelementptr inbounds nuw i8, ptr %16, i64 52
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.bzn = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.bzp = getelementptr inbounds nuw i8, ptr %16, i64 60
  %i.bzq = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %wide.trip.count2340 = and i64 %.sroa.51423.0.copyload, 2147483647
  br label %bb.dj

._crit_edge2071:                                  ; preds = %bb.dj, %LoadBoneInfoGLTF.exit
  %i.bzr = load i64, ptr %i.jc, align 8           ; 2 uses
  %i.bzs = icmp ugt i64 %i.bzr, 1
  br i1 %i.bzs, label %bb.dk, label %bb.dl

bb.dj:                                            ; preds = %.lr.ph2070, %bb.dj
  %indvars.iv2336 = phi i64 [ 0, %.lr.ph2070 ], [ %indvars.iv.next2337, %bb.dj ] ; 3 uses
  %i.bzt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.3.0.copyload, i64 %indvars.iv2336
  %i.bzu = load ptr, ptr %i.bzt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #54
  call void @cgltf_node_transform_world(ptr noundef %i.bzu, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #54
  %i.bzv = load float, ptr %i.d, align 16
  store float %i.bzv, ptr %16, align 8
  %i.bzw = load <12 x float>, ptr %i.bzg, align 4
  %i.bzx = shufflevector <12 x float> %i.bzw, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.bzx, ptr %i.bzf, align 4
  %i.bzy = load <12 x float>, ptr %i.bzi, align 8
  %i.bzz = shufflevector <12 x float> %i.bzy, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.bzz, ptr %i.bzh, align 4
  %i.caa = load <12 x float>, ptr %i.bzk, align 4
  %i.cab = shufflevector <12 x float> %i.caa, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 0>
  store <4 x float> %i.cab, ptr %i.bzj, align 4
  %i.cac = load float, ptr %i.bzm, align 4
  store float %i.cac, ptr %i.bzl, align 4
  %i.cad = load float, ptr %i.bzo, align 4
  store float %i.cad, ptr %i.bzn, align 8
  %i.cae = load float, ptr %i.bzq, align 4
  store float %i.cae, ptr %i.bzp, align 4
  %i.caf = getelementptr inbounds nuw [40 x i8], ptr %i.bzc, i64 %indvars.iv2336 ; 3 uses
  %i.cag = getelementptr inbounds nuw i8, ptr %i.caf, i64 12
  %i.cah = getelementptr inbounds nuw i8, ptr %i.caf, i64 28
  call void @MatrixDecompose(ptr noundef nonnull byval(%struct.Matrix) align 8 %16, ptr noundef %i.caf, ptr noundef nonnull %i.cag, ptr noundef nonnull %i.cah)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #54
  %indvars.iv.next2337 = add nuw nsw i64 %indvars.iv2336, 1 ; 2 uses
  %exitcond2341.not = icmp eq i64 %indvars.iv.next2337, %wide.trip.count2340
  br i1 %exitcond2341.not, label %._crit_edge2071, label %bb.dj

bb.dk:                                            ; preds = %._crit_edge2071
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.365, ptr noundef %1, i64 noundef %i.bzr) #54
  br label %bb.dl

bb.dl:                                            ; preds = %._crit_edge2071, %bb.dk, %._crit_edge2066
  %i.cai = load i64, ptr %i.jb, align 8           ; 2 uses
  %.not2169 = icmp eq i64 %i.cai, 0
  br i1 %.not2169, label %._crit_edge2116, label %.lr.ph2115

.lr.ph2115:                                       ; preds = %bb.dl
  %i.caj = getelementptr inbounds nuw i8, ptr %i.ja, i64 272
  %i.cak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cal = getelementptr inbounds nuw i8, ptr %i.ja, i64 224
  br label %bb.dm

._crit_edge2116:                                  ; preds = %.loopexit1858, %bb.dl
  %i.cam = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.can = load i32, ptr %i.cam, align 8          ; 6 uses
  %i.cao = sext i32 %i.can to i64                 ; 2 uses
end_hunk_0
