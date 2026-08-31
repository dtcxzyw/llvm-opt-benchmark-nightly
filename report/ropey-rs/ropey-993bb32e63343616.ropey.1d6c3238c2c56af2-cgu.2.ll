Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ropey-rs/original/ropey-993bb32e63343616.ropey.1d6c3238c2c56af2-cgu.2?download=true
inline.NumInlined: 711
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice19new_with_byte_range:bb.a
  %i.mv = icmp eq i8 %.mask1.i, -88
  br i1 %i.mv, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  %.sroa.01206.15.vec.extract = extractelement <16 x i8> %i.mh, i64 15
  %i.mw = add i8 %.sroa.01206.15.vec.extract, 1
  %.sroa.01206.15.vec.insert = insertelement <16 x i8> %i.mh, i8 %i.mw, i64 15
  br label %.thread

.thread:                                          ; preds = %bb.ai, %bb.af, %bb.ag, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.ac
  %i.mx = phi <16 x i8> [ %i.lp, %bb.ac ], [ %.sroa.01203.14.vec.insert, %bb.aj ], [ %.sroa.01206.15.vec.insert, %bb.am ], [ %i.mh, %bb.al ], [ %i.mh, %bb.ak ], [ %i.mh, %bb.ai ], [ %i.mh, %bb.ag ], [ %i.mh, %bb.af ]
  %i.my = add <16 x i8> %i.mx, %i.kz              ; 2 uses
  %.sroa.01.0.vec.extract.i244 = extractelement <2 x i64> %i.lc, i64 0
  %i.mz = icmp eq i64 %.sroa.01.0.vec.extract.i244, 0
  %.sroa.01.8.vec.extract.i245 = extractelement <2 x i64> %i.lc, i64 1
  %i.na = icmp eq i64 %.sroa.01.8.vec.extract.i245, 0
  %.sroa.0.0.i246 = select i1 %i.mz, i1 %i.na, i1 false
  br i1 %.sroa.0.0.i246, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.an

bb.an:                                            ; preds = %.thread
  %i.nb = icmp eq <16 x i8> %i.kq, splat (i8 10)
  %.neg1385 = sext <16 x i1> %i.nb to <16 x i8>
  %.neg1386 = shufflevector <16 x i8> %.neg1385, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %.neg1387 = select <16 x i1> %i.la, <16 x i8> %.neg1386, <16 x i8> zeroinitializer
  %i.nc = add <16 x i8> %i.my, %.neg1387          ; 4 uses
  %.not1388 = icmp ne i64 %.sroa.15.1.i1681548, 16
  %i.nd = icmp eq i8 %i.lf, 13
  %or.cond1812 = select i1 %.not1388, i1 %i.nd, i1 false
  br i1 %or.cond1812, label %bb.ao, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.ao:                                            ; preds = %bb.an
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i1691549, i64 16
  %i.nf = load i8, ptr %i.ne, align 16, !alias.scope !148, !noalias !151, !noundef !8
  %i.ng = icmp eq i8 %i.nf, 10
  br i1 %i.ng, label %bb.ap, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.ap:                                            ; preds = %bb.ao
  %.sroa.0.15.vec.extract.i232 = extractelement <16 x i8> %i.nc, i64 15
  %i.nh = add i8 %.sroa.0.15.vec.extract.i232, -1
  %.sroa.0.15.vec.insert.i233 = insertelement <16 x i8> %i.nc, i8 %i.nh, i64 15
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %bb.an, %bb.ao, %bb.ap, %.thread
  %.sroa.0729.5.in = phi <16 x i8> [ %i.my, %.thread ], [ %.sroa.0.15.vec.insert.i233, %bb.ap ], [ %i.nc, %bb.ao ], [ %i.nc, %bb.an ]
  %i.ni = add <16 x i8> %.sroa.0729.5.in, %i.ko   ; 2 uses
  %i.nj = add i64 %.sroa.028.0.i1661546, 1        ; 2 uses
  %i.nk = icmp eq i64 %i.nj, 255
  br i1 %i.nk, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.nl = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.ni, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i258 = extractelement <2 x i64> %i.nl, i64 0
  %.sroa.0.8.vec.extract.i259 = extractelement <2 x i64> %i.nl, i64 1
  %i.nm = add i64 %.sroa.0.8.vec.extract.i259, %.sroa.023.1.i1671547
  %i.nn = add i64 %i.nm, %.sroa.0.0.vec.extract.i258
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.no = phi <16 x i8> [ zeroinitializer, %bb.aq ], [ %i.ni, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ] ; 2 uses
  %.sroa.028.1.i170 = phi i64 [ 0, %bb.aq ], [ %i.nj, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ]
  %.sroa.023.2.i171 = phi i64 [ %i.nn, %bb.aq ], [ %.sroa.023.1.i1671547, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ] ; 2 uses
  %i.np = add nsw i64 %.sroa.15.1.i1681548, -16   ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i1691549, i64 16 ; 2 uses
  %i.nr = icmp ugt i64 %i.np, 15
  br i1 %i.nr, label %.lr.ph1551, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit172

_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit172: ; preds = %bb.ar, %bb.n
  %.lcssa = phi <16 x i8> [ zeroinitializer, %bb.n ], [ %i.no, %bb.ar ]
  %.sroa.023.1.i167.lcssa = phi i64 [ %.sroa.023.0.i163, %bb.n ], [ %.sroa.023.2.i171, %bb.ar ] ; 2 uses
  %.sroa.15.1.i168.lcssa = phi i64 [ %.sroa.15.0.i164, %bb.n ], [ %i.np, %bb.ar ] ; 6 uses
  %.sroa.0.1.i169.lcssa = phi ptr [ %.sroa.0.0.i165, %bb.n ], [ %i.nq, %bb.ar ] ; 4 uses
  %i.ns = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa, <16 x i8> zeroinitializer) ; 2 uses
  %.not1568 = icmp eq i64 %.sroa.15.1.i168.lcssa, 0
  br i1 %.not1568, label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit, label %.lr.ph1559

.lr.ph1559:                                       ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit172, %bb.az
  %.sroa.0.0.i1921558 = phi i64 [ %i.on, %bb.az ], [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit172 ] ; 5 uses
  %.sroa.012.0.i1911557 = phi i64 [ %.sroa.012.1.i, %bb.az ], [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit172 ] ; 8 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i169.lcssa, i64 %.sroa.0.0.i1921558 ; 2 uses
  %i.nu = load i8, ptr %i.nt, align 1, !alias.scope !153, !noundef !8 ; 3 uses
  %i.nv = add i8 %i.nu, -10
  %spec.select.i520 = icmp ult i8 %i.nv, 4
  br i1 %spec.select.i520, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph1559
  switch i8 %i.nu, label %bb.az [
    i8 -62, label %bb.au
    i8 -30, label %bb.aw
  ]

bb.at:                                            ; preds = %.lr.ph1559
  %i.nw = add nuw nsw i64 %.sroa.012.0.i1911557, 1 ; 3 uses
  %i.nx = icmp eq i8 %i.nu, 13
  br i1 %i.nx, label %bb.ba, label %bb.az

bb.au:                                            ; preds = %bb.as
  %i.ny = add nuw nsw i64 %.sroa.0.0.i1921558, 1  ; 2 uses
  %i.nz = icmp samesign ult i64 %i.ny, %.sroa.15.1.i168.lcssa
  br i1 %i.nz, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i169.lcssa, i64 %i.ny
  %i.ob = load i8, ptr %i.oa, align 1, !alias.scope !153, !noundef !8
  %i.oc = icmp eq i8 %i.ob, -123
  %i.od = zext i1 %i.oc to i64
  %spec.select1374 = add nuw nsw i64 %.sroa.012.0.i1911557, %i.od
  br label %bb.az

bb.aw:                                            ; preds = %bb.as
  %i.oe = add nuw i64 %.sroa.0.0.i1921558, 2      ; 2 uses
  %i.of = icmp ult i64 %i.oe, %.sroa.15.1.i168.lcssa
  br i1 %i.of, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.og = getelementptr inbounds nuw i8, ptr %i.nt, i64 1
  %i.oh = load i8, ptr %i.og, align 1, !alias.scope !153, !noundef !8
  %i.oi = icmp eq i8 %i.oh, -128
  br i1 %i.oi, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i169.lcssa, i64 %i.oe
  %i.ok = load i8, ptr %i.oj, align 1, !alias.scope !153, !noundef !8
  %.mask.i193 = and i8 %i.ok, -2
  %i.ol = icmp eq i8 %.mask.i193, -88
  %i.om = zext i1 %i.ol to i64
  %spec.select.i = add nuw nsw i64 %.sroa.012.0.i1911557, %i.om
  br label %bb.az

bb.az:                                            ; preds = %bb.av, %bb.au, %bb.bb, %bb.ba, %bb.ay, %bb.ax, %bb.aw, %bb.at, %bb.as
  %.sroa.012.1.i = phi i64 [ %.sroa.012.0.i1911557, %bb.aw ], [ %spec.select22.i, %bb.bb ], [ %i.nw, %bb.ba ], [ %i.nw, %bb.at ], [ %.sroa.012.0.i1911557, %bb.au ], [ %.sroa.012.0.i1911557, %bb.as ], [ %spec.select.i, %bb.ay ], [ %.sroa.012.0.i1911557, %bb.ax ], [ %spec.select1374, %bb.av ] ; 3 uses
  %i.on = add nuw nsw i64 %.sroa.0.0.i1921558, 1  ; 2 uses
  %i.oo = icmp samesign ult i64 %i.on, %.sroa.15.1.i168.lcssa
  %i.op = icmp ult i64 %.sroa.012.1.i, %.sroa.15.1.i168.lcssa
  %or.cond.i = select i1 %i.oo, i1 %i.op, i1 false
  br i1 %or.cond.i, label %.lr.ph1559, label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit

bb.ba:                                            ; preds = %bb.at
  %i.oq = add nuw nsw i64 %.sroa.0.0.i1921558, 1  ; 2 uses
  %i.or = icmp samesign ult i64 %i.oq, %.sroa.15.1.i168.lcssa
  br i1 %i.or, label %bb.bb, label %bb.az

bb.bb:                                            ; preds = %bb.ba
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i169.lcssa, i64 %i.oq
  %i.ot = load i8, ptr %i.os, align 1, !alias.scope !153, !noundef !8
  %i.ou = icmp eq i8 %i.ot, 10
  %spec.select22.i = select i1 %i.ou, i64 %.sroa.012.0.i1911557, i64 %i.nw
  br label %bb.az

_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit: ; preds = %bb.az, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit172.thread, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit172
  %.sroa.023.1.i167.lcssa1744 = phi i64 [ %.sroa.023.1.i167.lcssa, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit172 ], [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit172.thread ], [ %.sroa.023.1.i167.lcssa, %bb.az ]
  %.sroa.0.3.i189170717211743 = phi i64 [ %.sroa.0.3.i189, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit172 ], [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit172.thread ], [ %.sroa.0.3.i189, %bb.az ]
  %.sroa.0.0.i1581696170517221742 = phi i64 [ %.sroa.0.0.i1581696, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit172 ], [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit172.thread ], [ %.sroa.0.0.i1581696, %bb.az ]
  %.sroa.012.0.i191.lcssa = phi i64 [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit172 ], [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit172.thread ], [ %.sroa.012.1.i, %bb.az ]
  %i.ov = phi <2 x i64> [ %i.ns, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit172 ], [ %i.ji, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines17count_breaks_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit172.thread ], [ %i.ns, %bb.az ] ; 2 uses
  %i.ow = extractelement <2 x i64> %i.ov, i64 1
  %i.ox = add i64 %i.ow, %.sroa.023.1.i167.lcssa1744
  %i.oy = extractelement <2 x i64> %i.ov, i64 0
  %i.oz = add i64 %i.ox, %i.oy
  %i.pa = add i64 %i.oz, %.sroa.012.0.i191.lcssa
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.pb, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ai, ptr %.sroa.518.0..sroa_idx, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.dt, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit209, %bb.bh, %bb.i, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit, %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit592
  %.sink1818 = phi i64 [ 24, %bb.dt ], [ 32, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit209 ], [ 24, %bb.bh ], [ 56, %bb.i ], [ 32, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit ], [ 56, %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit592 ]
  %.sink1817 = phi i64 [ %2, %bb.dt ], [ %.sroa.0.0.i, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit209 ], [ %2, %bb.bh ], [ %i.aa, %bb.i ], [ %.sroa.0.0.i1581696170517221742, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit ], [ %i.atc, %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit592 ]
  %.sink1816 = phi i64 [ 32, %bb.dt ], [ 40, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit209 ], [ 32, %bb.bh ], [ 64, %bb.i ], [ 40, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit ], [ 64, %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit592 ]
  %.sink1815 = phi i64 [ 1, %bb.dt ], [ %.sroa.0.3.i, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit209 ], [ 1, %bb.bh ], [ %i.ac, %bb.i ], [ %.sroa.0.3.i189170717211743, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit ], [ %i.ate, %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit592 ]
  %.sink1814 = phi i64 [ 40, %bb.dt ], [ 48, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit209 ], [ 40, %bb.bh ], [ 72, %bb.i ], [ 48, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit ], [ 72, %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit592 ]
  %.sink1813 = phi i64 [ %3, %bb.dt ], [ %i.agg, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit209 ], [ %3, %bb.bh ], [ %i.ae, %bb.i ], [ %i.pa, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit ], [ %i.atg, %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit592 ]
  %.sink = phi i64 [ 1, %bb.dt ], [ 0, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit209 ], [ 1, %bb.bh ], [ 0, %bb.i ], [ 0, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit ], [ 0, %_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx.exit592 ]
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink1818
  store i64 %.sink1817, ptr %.sroa.5113.0..sroa_idx, align 8
  %.sroa.6114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink1816
  store i64 %.sink1815, ptr %.sroa.6114.0..sroa_idx, align 8
  %.sroa.7115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink1814
  store i64 %.sink1813, ptr %.sroa.7115.0..sroa_idx, align 8
  store i64 %.sink, ptr %0, align 8
  ret void

.lr.ph:                                           ; preds = %bb.g, %bb.ec
  %i.pc = phi ptr [ %i.ats, %bb.ec ], [ %i.o, %bb.g ]
  %.sroa.0.01451 = phi ptr [ %i.atr, %bb.ec ], [ %1, %bb.g ] ; 5 uses
  %.sroa.060.01450 = phi i64 [ %i.atp, %bb.ec ], [ %3, %bb.g ] ; 6 uses
  %.sroa.037.01449 = phi i64 [ %i.atq, %bb.ec ], [ %2, %bb.g ] ; 6 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 24 ; 2 uses
  %i.pe = call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.pd) ; 2 uses
  %i.pf = extractvalue { ptr, i64 } %i.pe, 0      ; 3 uses
  %i.pg = extractvalue { ptr, i64 } %i.pe, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pf) ]
  %.idx = shl nuw nsw i64 %i.pg, 5
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pf, i64 %.idx
  %i.pi = icmp eq i64 %i.pg, 0
  br i1 %i.pi, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit.thread, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoEENtNtNtB8_6traits8iterator8Iterator4nextB1D_.exit

._crit_edge:                                      ; preds = %bb.ec, %bb.g
  %.sroa.037.0.lcssa = phi i64 [ %2, %bb.g ], [ %i.atq, %bb.ec ] ; 24 uses
  %.sroa.060.0.lcssa = phi i64 [ %3, %bb.g ], [ %i.atp, %bb.ec ] ; 24 uses
  %.lcssa1428 = phi ptr [ %i.o, %bb.g ], [ %i.ats, %bb.ec ]
  %i.pj = getelementptr inbounds nuw i8, ptr %.lcssa1428, i64 24 ; 7 uses
  %i.pk = call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.pj) ; 2 uses
  %i.pl = extractvalue { ptr, i64 } %i.pk, 0
  %i.pm = extractvalue { ptr, i64 } %i.pk, 1      ; 2 uses
  %i.pn = icmp eq i64 %.sroa.037.0.lcssa, 0       ; 6 uses
  br i1 %i.pn, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge
  %.not140 = icmp ult i64 %.sroa.037.0.lcssa, %i.pm
  br i1 %.not140, label %bb.bg, label %.split1341

bb.be:                                            ; preds = %.split1341, %._crit_edge, %bb.bg
  %i.po = call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.pj) ; 2 uses
  %i.pp = extractvalue { ptr, i64 } %i.po, 0
  %i.pq = extractvalue { ptr, i64 } %i.po, 1      ; 2 uses
  %i.pr = icmp eq i64 %.sroa.060.0.lcssa, 0
  br i1 %i.pr, label %.split131, label %bb.bi

.split131:                                        ; preds = %bb.be
  %i.ps = call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.pj) ; 2 uses
  %i.pt = extractvalue { ptr, i64 } %i.ps, 0      ; 5 uses
  %i.pu = extractvalue { ptr, i64 } %i.ps, 1      ; 3 uses
  br i1 %i.pn, label %bb.bf, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread1343, !prof !64

bb.bf:                                            ; preds = %.split131
  %i.pv = icmp eq i64 %i.pu, 0
  br i1 %i.pv, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit

.split1341:                                       ; preds = %bb.bd
  %i.pw = icmp eq i64 %.sroa.037.0.lcssa, %i.pm
  br i1 %i.pw, label %bb.be, label %bb.bh

bb.bg:                                            ; preds = %bb.bd
  %i.px = getelementptr inbounds nuw i8, ptr %i.pl, i64 %.sroa.037.0.lcssa
  %i.py = load i8, ptr %i.px, align 1, !noundef !8
  %i.pz = icmp sgt i8 %i.py, -65
  br i1 %i.pz, label %bb.be, label %bb.bh

bb.bh:                                            ; preds = %.split1346, %.split1341, %bb.bj, %bb.bg
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.qa, align 8
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.482.0..sroa_idx, align 8
  br label %bb.bc

bb.bi:                                            ; preds = %bb.be
  %.not141 = icmp ult i64 %.sroa.060.0.lcssa, %i.pq
  br i1 %.not141, label %bb.bj, label %.split1346

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit: ; preds = %bb.bf
  %i.qb = load i8, ptr %i.pt, align 1, !alias.scope !156, !noundef !8
  %i.qc = icmp sgt i8 %i.qb, -65
  br i1 %i.qc, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread1343, !prof !159

.split1346:                                       ; preds = %bb.bi
  %i.qd = icmp eq i64 %.sroa.060.0.lcssa, %i.pq
  br i1 %i.qd, label %.split, label %bb.bh

bb.bj:                                            ; preds = %bb.bi
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pp, i64 %.sroa.060.0.lcssa
  %i.qf = load i8, ptr %i.qe, align 1, !noundef !8
  %i.qg = icmp sgt i8 %i.qf, -65
  br i1 %i.qg, label %.split, label %bb.bh

.split:                                           ; preds = %.split1346, %bb.bj
  %i.qh = call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.pj) ; 2 uses
  %i.qi = extractvalue { ptr, i64 } %i.qh, 0      ; 8 uses
  %i.qj = extractvalue { ptr, i64 } %i.qh, 1      ; 6 uses
  %i.qk = icmp ugt i64 %.sroa.037.0.lcssa, %.sroa.060.0.lcssa
  %i.ql = icmp ugt i64 %.sroa.060.0.lcssa, %i.qj
  %or.cond.i220 = or i1 %i.qk, %i.ql
  br i1 %or.cond.i220, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread1343, label %bb.bk, !prof !160

bb.bk:                                            ; preds = %.split
  %i.qm = icmp eq i64 %.sroa.037.0.lcssa, %i.qj
  br i1 %i.qm, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.pn, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bn, %bb.bl
  %i.qn = icmp eq i64 %.sroa.060.0.lcssa, %i.qj
  br i1 %i.qn, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit222

bb.bn:                                            ; preds = %bb.bl
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qi, i64 %.sroa.037.0.lcssa
  %i.qp = load i8, ptr %i.qo, align 1, !alias.scope !161, !noundef !8
  %i.qq = icmp sgt i8 %i.qp, -65
  br i1 %i.qq, label %bb.bm, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread1343, !prof !164

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit222: ; preds = %bb.bm
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qi, i64 %.sroa.060.0.lcssa
  %i.qs = load i8, ptr %i.qr, align 1, !alias.scope !161, !noundef !8
  %i.qt = icmp sgt i8 %i.qs, -65
  br i1 %i.qt, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread1343, !prof !65

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread1343: ; preds = %bb.bn, %.split, %.split131, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit222, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  %i.qu = phi i64 [ %i.pu, %.split131 ], [ %i.pu, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit ], [ %i.qj, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit222 ], [ %i.qj, %.split ], [ %i.qj, %bb.bn ]
  %i.qv = phi ptr [ %i.pt, %.split131 ], [ %i.pt, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit ], [ %i.qi, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit222 ], [ %i.qi, %.split ], [ %i.qi, %bb.bn ]
  call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qv, i64 noundef %i.qu, i64 noundef %.sroa.037.0.lcssa, i64 noundef %.sroa.060.0.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #15
  unreachable

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread: ; preds = %bb.bm, %bb.bk, %bb.bf, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit222, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  %i.qw = phi ptr [ %i.qi, %bb.bm ], [ %i.pt, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit ], [ %i.qi, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit222 ], [ %i.pt, %bb.bf ], [ %i.qi, %bb.bk ]
  %i.qx = sub i64 %.sroa.060.0.lcssa, %.sroa.037.0.lcssa ; 21 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 %.sroa.037.0.lcssa
  %i.qz = call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.pj) ; 2 uses
  %i.ra = extractvalue { ptr, i64 } %i.qz, 0      ; 4 uses
  %i.rb = extractvalue { ptr, i64 } %i.qz, 1      ; 4 uses
  %i.rc = icmp ugt i64 %.sroa.037.0.lcssa, %.sroa.060.0.lcssa
  %i.rd = icmp ugt i64 %.sroa.060.0.lcssa, %i.rb
  %or.cond.i229 = or i1 %i.rc, %i.rd
  br i1 %or.cond.i229, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit231.thread1353, label %bb.bo, !prof !60

bb.bo:                                            ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread
  %i.re = icmp eq i64 %.sroa.037.0.lcssa, %i.rb
  br i1 %i.re, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit231.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.pn, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.br, %bb.bp
  %i.rf = icmp eq i64 %.sroa.060.0.lcssa, %i.rb
  br i1 %i.rf, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit231.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit231

bb.br:                                            ; preds = %bb.bp
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ra, i64 %.sroa.037.0.lcssa
  %i.rh = load i8, ptr %i.rg, align 1, !alias.scope !165, !noundef !8
  %i.ri = icmp sgt i8 %i.rh, -65
  br i1 %i.ri, label %bb.bq, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit231.thread1353, !prof !64

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit231: ; preds = %bb.bq
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ra, i64 %.sroa.060.0.lcssa
  %i.rk = load i8, ptr %i.rj, align 1, !alias.scope !165, !noundef !8
  %i.rl = icmp sgt i8 %i.rk, -65
  br i1 %i.rl, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit231.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit231.thread1353, !prof !65

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit231.thread1353: ; preds = %bb.br, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit231
  call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ra, i64 noundef %i.rb, i64 noundef %.sroa.037.0.lcssa, i64 noundef %.sroa.060.0.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #15
  unreachable

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit231.thread: ; preds = %bb.bq, %bb.bo, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit231
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ra, i64 %.sroa.037.0.lcssa ; 8 uses
  %i.rn = icmp samesign ult i64 %i.qx, 16
  br i1 %i.rn, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit231.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !168
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.rm, i64 noundef range(i64 0, -9223372036854775808) %i.qx)
  %i.ro = load ptr, ptr %i.h, align 8, !noalias !168, !nonnull !8, !noundef !8 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.rq = load i64, ptr %i.rp, align 8, !noalias !168, !noundef !8 ; 6 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.rs = load ptr, ptr %i.rr, align 8, !noalias !168, !nonnull !8, !align !22, !noundef !8 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ru = load i64, ptr %i.rt, align 8, !noalias !168, !noundef !8 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.rw = load ptr, ptr %i.rv, align 8, !noalias !168, !nonnull !8, !noundef !8 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.ry = load i64, ptr %i.rx, align 8, !noalias !168, !noundef !8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !168
  %i.rz = icmp samesign eq i64 %i.rq, 0
  br i1 %i.rz, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit526, label %.preheader.i521.preheader

.preheader.i521.preheader:                        ; preds = %bb.bs
  %min.iters.check = icmp ult i64 %i.rq, 4
  br i1 %min.iters.check, label %.preheader.i521.preheader2158, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i521.preheader
  %n.vec = and i64 %i.rq, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.sg, %vector.body ]
  %vec.phi1884 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.sh, %vector.body ]
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ro, i64 %index ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 2
  %wide.load = load <2 x i8>, ptr %i.sa, align 1, !alias.scope !171
  %wide.load1885 = load <2 x i8>, ptr %i.sb, align 1, !alias.scope !171
  %i.sc = icmp slt <2 x i8> %wide.load, splat (i8 -64)
  %i.sd = icmp slt <2 x i8> %wide.load1885, splat (i8 -64)
  %i.se = zext <2 x i1> %i.sc to <2 x i64>
  %i.sf = zext <2 x i1> %i.sd to <2 x i64>
  %i.sg = add <2 x i64> %vec.phi, %i.se           ; 2 uses
  %i.sh = add <2 x i64> %vec.phi1884, %i.sf       ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.si = icmp eq i64 %index.next, %n.vec
  br i1 %i.si, label %middle.block, label %vector.body, !llvm.loop !174

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.sh, %i.sg
  %i.sj = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.rq, %n.vec
  br i1 %cmp.n, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit526, label %.preheader.i521.preheader2158

.preheader.i521.preheader2158:                    ; preds = %.preheader.i521.preheader, %middle.block
  %.sroa.04.0.i.i522.ph = phi i64 [ 0, %.preheader.i521.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i523.ph = phi i64 [ 0, %.preheader.i521.preheader ], [ %i.sj, %middle.block ]
  br label %.preheader.i521

.preheader.i521:                                  ; preds = %.preheader.i521.preheader2158, %.preheader.i521
  %.sroa.04.0.i.i522 = phi i64 [ %i.so, %.preheader.i521 ], [ %.sroa.04.0.i.i522.ph, %.preheader.i521.preheader2158 ] ; 2 uses
  %.sroa.02.0.i.i523 = phi i64 [ %i.sn, %.preheader.i521 ], [ %.sroa.02.0.i.i523.ph, %.preheader.i521.preheader2158 ]
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ro, i64 %.sroa.04.0.i.i522
  %.val.i.i524 = load i8, ptr %i.sk, align 1, !alias.scope !171, !noundef !8
  %i.sl = icmp slt i8 %.val.i.i524, -64
  %i.sm = zext i1 %i.sl to i64
  %i.sn = add i64 %.sroa.02.0.i.i523, %i.sm       ; 2 uses
  %i.so = add nuw i64 %.sroa.04.0.i.i522, 1       ; 2 uses
  %i.sp = icmp eq i64 %i.so, %i.rq
  br i1 %i.sp, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit526, label %.preheader.i521, !llvm.loop !175

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit526: ; preds = %.preheader.i521, %middle.block, %bb.bs
  %.sroa.0.0.i.i525 = phi i64 [ 0, %bb.bs ], [ %i.sj, %middle.block ], [ %i.sn, %.preheader.i521 ] ; 3 uses
  %i.sq = icmp ule i64 %.sroa.0.0.i.i525, %i.rq
  call void @llvm.assume(i1 %i.sq)
  %i.sr = and i64 %i.ru, 576460752303423484       ; 3 uses
  %.not.i1455 = icmp eq i64 %i.sr, 0
  br i1 %.not.i1455, label %._crit_edge1460, label %.lr.ph1459

bb.bt:                                            ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit231.thread
  %i.ss = icmp samesign eq i64 %.sroa.037.0.lcssa, %.sroa.060.0.lcssa
  br i1 %i.ss, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.preheader1826

.preheader1826:                                   ; preds = %bb.bt
  %min.iters.check1903 = icmp ult i64 %i.qx, 4
  br i1 %min.iters.check1903, label %scalar.ph1902.preheader, label %vector.ph1904.a

vector.ph1904.a:                                  ; preds = %.preheader1826
  %n.vec1905.a = and i64 %i.qx, 12                ; 4 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.rm, i64 2
  %wide.load1910 = load <2 x i8>, ptr %i.rm, align 1
  %wide.load1911 = load <2 x i8>, ptr %4, align 1
  %5 = icmp sgt <2 x i8> %wide.load1910, splat (i8 -65)
  %6 = icmp sgt <2 x i8> %wide.load1911, splat (i8 -65)
  %7 = zext <2 x i1> %5 to <2 x i64>              ; 2 uses
  %8 = zext <2 x i1> %6 to <2 x i64>              ; 2 uses
  %9 = icmp eq i64 %n.vec1905.a, 4
  br i1 %9, label %middle.block1913, label %vector.body1906.1

vector.body1906.1:                                ; preds = %vector.ph1904.a
  %10 = getelementptr inbounds nuw i8, ptr %i.rm, i64 4
  %11 = getelementptr inbounds nuw i8, ptr %i.rm, i64 6
  %wide.load1910.1 = load <2 x i8>, ptr %10, align 1
  %wide.load1911.1 = load <2 x i8>, ptr %11, align 1
  %12 = icmp sgt <2 x i8> %wide.load1910.1, splat (i8 -65)
  %13 = icmp sgt <2 x i8> %wide.load1911.1, splat (i8 -65)
  %14 = zext <2 x i1> %12 to <2 x i64>
  %15 = zext <2 x i1> %13 to <2 x i64>
  %16 = add nuw nsw <2 x i64> %7, %14             ; 2 uses
  %17 = add nuw nsw <2 x i64> %8, %15             ; 2 uses
  %18 = icmp eq i64 %n.vec1905.a, 8
  br i1 %18, label %middle.block1913, label %vector.body1906.2

vector.body1906.2:                                ; preds = %vector.body1906.1
  %19 = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %20 = getelementptr inbounds nuw i8, ptr %i.rm, i64 10
  %wide.load1910.2 = load <2 x i8>, ptr %19, align 1
  %wide.load1911.2 = load <2 x i8>, ptr %20, align 1
  %21 = icmp sgt <2 x i8> %wide.load1910.2, splat (i8 -65)
  %22 = icmp sgt <2 x i8> %wide.load1911.2, splat (i8 -65)
  %23 = zext <2 x i1> %21 to <2 x i64>
  %24 = zext <2 x i1> %22 to <2 x i64>
  %25 = add nuw nsw <2 x i64> %16, %23
  %26 = add nuw nsw <2 x i64> %17, %24
  br label %middle.block1913

middle.block1913:                                 ; preds = %vector.body1906.2, %vector.body1906.1, %vector.ph1904.a
  %.lcssa2151 = phi <2 x i64> [ %7, %vector.ph1904.a ], [ %16, %vector.body1906.1 ], [ %25, %vector.body1906.2 ]
  %.lcssa2150 = phi <2 x i64> [ %8, %vector.ph1904.a ], [ %17, %vector.body1906.1 ], [ %26, %vector.body1906.2 ]
  %bin.rdx1914 = add nsw <2 x i64> %.lcssa2150, %.lcssa2151
  %27 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1914) ; 2 uses
  %cmp.n1915 = icmp eq i64 %i.qx, %n.vec1905.a
  br i1 %cmp.n1915, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %scalar.ph1902.preheader

scalar.ph1902.preheader:                          ; preds = %.preheader1826, %middle.block1913
  %.sroa.04.0.i527.ph = phi i64 [ 0, %.preheader1826 ], [ %n.vec1905.a, %middle.block1913 ]
  %.sroa.02.0.i528.ph = phi i64 [ 0, %.preheader1826 ], [ %27, %middle.block1913 ]
  br label %scalar.ph1902

scalar.ph1902:                                    ; preds = %scalar.ph1902.preheader, %scalar.ph1902
  %.sroa.04.0.i527.a = phi i64 [ %i.sx, %scalar.ph1902 ], [ %.sroa.04.0.i527.ph, %scalar.ph1902.preheader ] ; 2 uses
  %.sroa.02.0.i528 = phi i64 [ %i.sw, %scalar.ph1902 ], [ %.sroa.02.0.i528.ph, %scalar.ph1902.preheader ]
  %i.st = getelementptr inbounds nuw i8, ptr %i.rm, i64 %.sroa.04.0.i527.a
  %.val.i529.a = load i8, ptr %i.st, align 1, !noundef !8
  %i.su = icmp sgt i8 %.val.i529.a, -65
  %i.sv = zext i1 %i.su to i64
  %i.sw = add i64 %.sroa.02.0.i528, %i.sv         ; 2 uses
  %i.sx = add nuw i64 %.sroa.04.0.i527.a, 1       ; 2 uses
  %i.sy = icmp eq i64 %i.sx, %i.qx
  br i1 %i.sy, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %scalar.ph1902, !llvm.loop !176

._crit_edge1460:                                  ; preds = %.lr.ph1459, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit526
  %.sroa.01.0.i.lcssa = phi i64 [ %.sroa.0.0.i.i525, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit526 ], [ %i.wc, %.lr.ph1459 ]
  %i.sz = getelementptr inbounds nuw [16 x i8], ptr %i.rs, i64 %i.sr ; 3 uses
  %i.ta = shl i64 %i.ru, 4
  %.idx1561 = and i64 %i.ta, 48                   ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 %.idx1561
  %i.tc = icmp samesign eq i64 %.idx1561, 0
  br i1 %i.tc, label %._crit_edge1465, label %.lr.ph1464.preheader

.lr.ph1464.preheader:                             ; preds = %._crit_edge1460
  %i.td = add nsw i64 %.idx1561, -16              ; 2 uses
  %i.te = lshr exact i64 %i.td, 4
  %i.tf = add nuw nsw i64 %i.te, 1
  %xtraiter = and i64 %i.tf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1464.prol.loopexit, label %.lr.ph1464.prol

.lr.ph1464.prol:                                  ; preds = %.lr.ph1464.preheader, %.lr.ph1464.prol
  %.sroa.012.0.i1462.prol = phi ptr [ %i.th, %.lr.ph1464.prol ], [ %i.sz, %.lr.ph1464.preheader ] ; 2 uses
  %i.tg = phi <16 x i8> [ %i.tl, %.lr.ph1464.prol ], [ zeroinitializer, %.lr.ph1464.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1464.prol ], [ 0, %.lr.ph1464.preheader ]
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i1462.prol, i64 16 ; 2 uses
  %i.ti = load <16 x i8>, ptr %.sroa.012.0.i1462.prol, align 16
  %i.tj = icmp slt <16 x i8> %i.ti, splat (i8 -64)
  %i.tk = zext <16 x i1> %i.tj to <16 x i8>
  %i.tl = add <16 x i8> %i.tg, %i.tk              ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph1464.prol.loopexit, label %.lr.ph1464.prol, !llvm.loop !177

.lr.ph1464.prol.loopexit:                         ; preds = %.lr.ph1464.prol, %.lr.ph1464.preheader
  %.lcssa2156.unr = phi <16 x i8> [ poison, %.lr.ph1464.preheader ], [ %i.tl, %.lr.ph1464.prol ]
  %.sroa.012.0.i1462.unr = phi ptr [ %i.sz, %.lr.ph1464.preheader ], [ %i.th, %.lr.ph1464.prol ]
  %.unr = phi <16 x i8> [ zeroinitializer, %.lr.ph1464.preheader ], [ %i.tl, %.lr.ph1464.prol ]
  %i.tm = icmp ult i64 %i.td, 48
  br i1 %i.tm, label %._crit_edge1465, label %.lr.ph1464

.lr.ph1464:                                       ; preds = %.lr.ph1464.prol.loopexit, %.lr.ph1464
  %.sroa.012.0.i1462 = phi ptr [ %i.ud, %.lr.ph1464 ], [ %.sroa.012.0.i1462.unr, %.lr.ph1464.prol.loopexit ] ; 5 uses
  %i.tn = phi <16 x i8> [ %i.uh, %.lr.ph1464 ], [ %.unr, %.lr.ph1464.prol.loopexit ]
  %i.to = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i1462, i64 16
  %i.tp = load <16 x i8>, ptr %.sroa.012.0.i1462, align 16
  %i.tq = icmp slt <16 x i8> %i.tp, splat (i8 -64)
  %i.tr = zext <16 x i1> %i.tq to <16 x i8>
  %i.ts = add <16 x i8> %i.tn, %i.tr
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i1462, i64 32
  %i.tu = load <16 x i8>, ptr %i.to, align 16
  %i.tv = icmp slt <16 x i8> %i.tu, splat (i8 -64)
  %i.tw = zext <16 x i1> %i.tv to <16 x i8>
  %i.tx = add <16 x i8> %i.ts, %i.tw
  %i.ty = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i1462, i64 48
  %i.tz = load <16 x i8>, ptr %i.tt, align 16
  %i.ua = icmp slt <16 x i8> %i.tz, splat (i8 -64)
  %i.ub = zext <16 x i1> %i.ua to <16 x i8>
  %i.uc = add <16 x i8> %i.tx, %i.ub
  %i.ud = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i1462, i64 64 ; 2 uses
  %i.ue = load <16 x i8>, ptr %i.ty, align 16
  %i.uf = icmp slt <16 x i8> %i.ue, splat (i8 -64)
  %i.ug = zext <16 x i1> %i.uf to <16 x i8>
  %i.uh = add <16 x i8> %i.uc, %i.ug              ; 2 uses
  %i.ui = icmp eq ptr %i.ud, %i.tb
  br i1 %i.ui, label %._crit_edge1465, label %.lr.ph1464

._crit_edge1465:                                  ; preds = %.lr.ph1464.prol.loopexit, %.lr.ph1464, %._crit_edge1460
  %.lcssa1424 = phi <16 x i8> [ zeroinitializer, %._crit_edge1460 ], [ %.lcssa2156.unr, %.lr.ph1464.prol.loopexit ], [ %i.uh, %.lr.ph1464 ]
  %i.uj = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa1424, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i270 = extractelement <2 x i64> %i.uj, i64 0
  %.sroa.0.8.vec.extract.i271 = extractelement <2 x i64> %i.uj, i64 1
  %i.uk = icmp samesign eq i64 %i.ry, 0
  br i1 %i.uk, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit537, label %.preheader.i532.preheader

.preheader.i532.preheader:                        ; preds = %._crit_edge1465
  %min.iters.check1887 = icmp ult i64 %i.ry, 4
  br i1 %min.iters.check1887, label %.preheader.i532.preheader2152, label %vector.ph1888

vector.ph1888:                                    ; preds = %.preheader.i532.preheader
  %n.vec1889 = and i64 %i.ry, -4                  ; 3 uses
  br label %vector.body1890

vector.body1890:                                  ; preds = %vector.body1890, %vector.ph1888
  %index1891 = phi i64 [ 0, %vector.ph1888 ], [ %index.next1896, %vector.body1890 ] ; 2 uses
  %vec.phi1892 = phi <2 x i64> [ zeroinitializer, %vector.ph1888 ], [ %i.ur, %vector.body1890 ]
  %vec.phi1893 = phi <2 x i64> [ zeroinitializer, %vector.ph1888 ], [ %i.us, %vector.body1890 ]
  %i.ul = getelementptr inbounds nuw i8, ptr %i.rw, i64 %index1891 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 2
  %wide.load1894 = load <2 x i8>, ptr %i.ul, align 1, !alias.scope !178
  %wide.load1895 = load <2 x i8>, ptr %i.um, align 1, !alias.scope !178
  %i.un = icmp slt <2 x i8> %wide.load1894, splat (i8 -64)
  %i.uo = icmp slt <2 x i8> %wide.load1895, splat (i8 -64)
  %i.up = zext <2 x i1> %i.un to <2 x i64>
  %i.uq = zext <2 x i1> %i.uo to <2 x i64>
  %i.ur = add <2 x i64> %vec.phi1892, %i.up       ; 2 uses
  %i.us = add <2 x i64> %vec.phi1893, %i.uq       ; 2 uses
  %index.next1896 = add nuw i64 %index1891, 4     ; 2 uses
  %i.ut = icmp eq i64 %index.next1896, %n.vec1889
  br i1 %i.ut, label %middle.block1897, label %vector.body1890, !llvm.loop !181

middle.block1897:                                 ; preds = %vector.body1890
  %bin.rdx1898 = add <2 x i64> %i.us, %i.ur
  %i.uu = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1898) ; 2 uses
  %cmp.n1899 = icmp eq i64 %i.ry, %n.vec1889
  br i1 %cmp.n1899, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit537, label %.preheader.i532.preheader2152

.preheader.i532.preheader2152:                    ; preds = %.preheader.i532.preheader, %middle.block1897
  %.sroa.04.0.i.i533.ph = phi i64 [ 0, %.preheader.i532.preheader ], [ %n.vec1889, %middle.block1897 ]
  %.sroa.02.0.i.i534.ph = phi i64 [ 0, %.preheader.i532.preheader ], [ %i.uu, %middle.block1897 ]
  br label %.preheader.i532

.preheader.i532:                                  ; preds = %.preheader.i532.preheader2152, %.preheader.i532
  %.sroa.04.0.i.i533 = phi i64 [ %i.uz, %.preheader.i532 ], [ %.sroa.04.0.i.i533.ph, %.preheader.i532.preheader2152 ] ; 2 uses
  %.sroa.02.0.i.i534 = phi i64 [ %i.uy, %.preheader.i532 ], [ %.sroa.02.0.i.i534.ph, %.preheader.i532.preheader2152 ]
  %i.uv = getelementptr inbounds nuw i8, ptr %i.rw, i64 %.sroa.04.0.i.i533
  %.val.i.i535 = load i8, ptr %i.uv, align 1, !alias.scope !178, !noundef !8
  %i.uw = icmp slt i8 %.val.i.i535, -64
  %i.ux = zext i1 %i.uw to i64
  %i.uy = add i64 %.sroa.02.0.i.i534, %i.ux       ; 2 uses
  %i.uz = add nuw i64 %.sroa.04.0.i.i533, 1       ; 2 uses
  %i.va = icmp eq i64 %i.uz, %i.ry
  br i1 %i.va, label %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit537, label %.preheader.i532, !llvm.loop !182

_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit537: ; preds = %.preheader.i532, %middle.block1897, %._crit_edge1465
  %.sroa.0.0.i.i536 = phi i64 [ 0, %._crit_edge1465 ], [ %i.uu, %middle.block1897 ], [ %i.uy, %.preheader.i532 ] ; 2 uses
  %i.vb = icmp ule i64 %.sroa.0.0.i.i536, %i.ry
  call void @llvm.assume(i1 %i.vb)
  %i.vc = add i64 %.sroa.01.0.i.lcssa, %.sroa.0.8.vec.extract.i271
  %i.vd = add i64 %i.vc, %.sroa.0.0.vec.extract.i270
  %i.ve = add i64 %i.vd, %.sroa.0.0.i.i536
  %i.vf = sub i64 %i.qx, %i.ve
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

.lr.ph1459:                                       ; preds = %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit526, %.lr.ph1459
  %.sroa.01.0.i1458 = phi i64 [ %i.wc, %.lr.ph1459 ], [ %.sroa.0.0.i.i525, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit526 ]
  %.sroa.06.0.i1457 = phi ptr [ %i.vg, %.lr.ph1459 ], [ %i.rs, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit526 ] ; 5 uses
  %.sroa.5.0.i1456 = phi i64 [ %i.vh, %.lr.ph1459 ], [ %i.sr, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit526 ]
  %i.vg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1457, i64 64
  %i.vh = add i64 %.sroa.5.0.i1456, -4            ; 2 uses
  %i.vi = load <16 x i8>, ptr %.sroa.06.0.i1457, align 16
  %i.vj = icmp slt <16 x i8> %i.vi, splat (i8 -64)
  %i.vk = zext <16 x i1> %i.vj to <16 x i8>
  %i.vl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1457, i64 16
  %i.vm = load <16 x i8>, ptr %i.vl, align 16
  %i.vn = icmp slt <16 x i8> %i.vm, splat (i8 -64)
  %i.vo = zext <16 x i1> %i.vn to <16 x i8>
  %i.vp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1457, i64 32
  %i.vq = load <16 x i8>, ptr %i.vp, align 16
  %i.vr = icmp slt <16 x i8> %i.vq, splat (i8 -64)
  %i.vs = zext <16 x i1> %i.vr to <16 x i8>
  %i.vt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1457, i64 48
  %i.vu = load <16 x i8>, ptr %i.vt, align 16
  %i.vv = icmp slt <16 x i8> %i.vu, splat (i8 -64)
  %i.vw = zext <16 x i1> %i.vv to <16 x i8>
  %i.vx = add nuw nsw <16 x i8> %i.vo, %i.vk
  %i.vy = add nuw nsw <16 x i8> %i.vx, %i.vs
  %i.vz = add nuw nsw <16 x i8> %i.vy, %i.vw
  %i.wa = call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %i.vz, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i272 = extractelement <2 x i64> %i.wa, i64 0
  %.sroa.0.8.vec.extract.i273 = extractelement <2 x i64> %i.wa, i64 1
  %i.wb = add i64 %.sroa.0.8.vec.extract.i273, %.sroa.01.0.i1458
  %i.wc = add i64 %i.wb, %.sroa.0.0.vec.extract.i272 ; 2 uses
  %.not.i = icmp eq i64 %i.vh, 0
  br i1 %.not.i, label %._crit_edge1460, label %.lr.ph1459

_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %scalar.ph1902, %middle.block1913, %bb.bt, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit537
  %.sroa.0.0.i = phi i64 [ %i.vf, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterhENCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBb_9core_arch3x867___m128iEs0_0ENtNtNtB9_6traits8iterator8Iterator5countCs2wCc12Mnjqg_5ropey.exit537 ], [ 0, %bb.bt ], [ %27, %middle.block1913 ], [ %i.sw, %scalar.ph1902 ]
  %i.wd = call { ptr, i64 } @_RNvXs5_NtNtCs2wCc12Mnjqg_5ropey4tree9node_textNtB5_8NodeTextNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1000) %i.pj) ; 2 uses
  %i.we = extractvalue { ptr, i64 } %i.wd, 0      ; 4 uses
  %i.wf = extractvalue { ptr, i64 } %i.wd, 1      ; 4 uses
  %i.wg = icmp ugt i64 %.sroa.060.0.lcssa, %i.wf
  br i1 %i.wg, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit228.thread1357, label %bb.bu, !prof !60

bb.bu:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.wh = icmp eq i64 %.sroa.037.0.lcssa, %i.wf
  br i1 %i.wh, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit228.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.pn, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bx, %bb.bv
  %i.wi = icmp eq i64 %.sroa.060.0.lcssa, %i.wf
  br i1 %i.wi, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit228.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit228

bb.bx:                                            ; preds = %bb.bv
  %i.wj = getelementptr inbounds nuw i8, ptr %i.we, i64 %.sroa.037.0.lcssa
  %i.wk = load i8, ptr %i.wj, align 1, !alias.scope !183, !noundef !8
  %i.wl = icmp sgt i8 %i.wk, -65
  br i1 %i.wl, label %bb.bw, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit228.thread1357, !prof !64

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit228: ; preds = %bb.bw
  %i.wm = getelementptr inbounds nuw i8, ptr %i.we, i64 %.sroa.060.0.lcssa
  %i.wn = load i8, ptr %i.wm, align 1, !alias.scope !183, !noundef !8
  %i.wo = icmp sgt i8 %i.wn, -65
  br i1 %i.wo, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit228.thread, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit228.thread1357, !prof !65

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit228.thread1357: ; preds = %bb.bx, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit228
  call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.we, i64 noundef %i.wf, i64 noundef %.sroa.037.0.lcssa, i64 noundef %.sroa.060.0.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #15
  unreachable

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit228.thread: ; preds = %bb.bw, %bb.bu, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit228
  %i.wp = icmp samesign ult i64 %i.qx, 4
  br i1 %i.wp, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.by

bb.by:                                            ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit228.thread
  %i.wq = getelementptr inbounds nuw i8, ptr %i.we, i64 %.sroa.037.0.lcssa
  %i.wr = add nsw i64 %i.qx, -3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !186
  call void @_RINvMNtCskKLDkoKarTP_4core5sliceSh8align_toNtNtNtB5_9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.wq, i64 noundef %i.wr)
  %i.ws = load ptr, ptr %i.f, align 8, !noalias !186, !nonnull !8, !noundef !8 ; 4 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.wu = load i64, ptr %i.wt, align 8, !noalias !186, !noundef !8 ; 5 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ww = load ptr, ptr %i.wv, align 8, !noalias !186, !nonnull !8, !align !22, !noundef !8
  %i.wx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.wy = load i64, ptr %i.wx, align 8, !noalias !186, !noundef !8 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.xa = load ptr, ptr %i.wz, align 8, !noalias !186, !nonnull !8, !noundef !8 ; 4 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.xc = load i64, ptr %i.xb, align 8, !noalias !186, !noundef !8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !186
  %i.xd = getelementptr inbounds nuw i8, ptr %i.ws, i64 %i.wu
  %i.xe = icmp samesign eq i64 %i.wu, 0
  br i1 %i.xe, label %.preheader1404, label %.lr.ph1470.preheader

.lr.ph1470.preheader:                             ; preds = %bb.by
  %min.iters.check1919.a = icmp ult i64 %i.wu, 4
  br i1 %min.iters.check1919.a, label %.lr.ph1470.preheader2145, label %vector.ph1920.a

vector.ph1920.a:                                  ; preds = %.lr.ph1470.preheader
  %n.vec1921.a = and i64 %i.wu, -4                ; 3 uses
  %i.xf = getelementptr i8, ptr %i.ws, i64 %n.vec1921.a
  br label %vector.body1922.a

vector.body1922.a:                                ; preds = %vector.body1922.a, %vector.ph1920.a
  %index1923.a = phi i64 [ 0, %vector.ph1920.a ], [ %index.next1928, %vector.body1922.a ] ; 2 uses
  %vec.phi1924.a = phi <2 x i64> [ zeroinitializer, %vector.ph1920.a ], [ %i.xl, %vector.body1922.a ]
  %vec.phi1925.a = phi <2 x i64> [ zeroinitializer, %vector.ph1920.a ], [ %i.xm, %vector.body1922.a ]
  %next.gep = getelementptr i8, ptr %i.ws, i64 %index1923.a ; 2 uses
  %i.xg = getelementptr i8, ptr %next.gep, i64 2
  %wide.load1926 = load <2 x i8>, ptr %next.gep, align 1
  %wide.load1927.a = load <2 x i8>, ptr %i.xg, align 1
  %i.xh = icmp ugt <2 x i8> %wide.load1926, splat (i8 -17)
  %i.xi = icmp ugt <2 x i8> %wide.load1927.a, splat (i8 -17)
  %i.xj = zext <2 x i1> %i.xh to <2 x i64>
  %i.xk = zext <2 x i1> %i.xi to <2 x i64>
  %i.xl = add <2 x i64> %vec.phi1924.a, %i.xj     ; 2 uses
  %i.xm = add <2 x i64> %vec.phi1925.a, %i.xk     ; 2 uses
  %index.next1928 = add nuw i64 %index1923.a, 4   ; 2 uses
  %i.xn = icmp eq i64 %index.next1928, %n.vec1921.a
  br i1 %i.xn, label %middle.block1929, label %vector.body1922.a, !llvm.loop !189

middle.block1929:                                 ; preds = %vector.body1922.a
  %bin.rdx1930 = add <2 x i64> %i.xm, %i.xl
  %i.xo = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1930) ; 2 uses
  %cmp.n1931 = icmp eq i64 %i.wu, %n.vec1921.a
  br i1 %cmp.n1931, label %.preheader1404, label %.lr.ph1470.preheader2145

.lr.ph1470.preheader2145:                         ; preds = %.lr.ph1470.preheader, %middle.block1929
  %.sroa.0.0.i1761468.ph = phi i64 [ 0, %.lr.ph1470.preheader ], [ %i.xo, %middle.block1929 ]
  %.sroa.04.0.i1467.ph = phi ptr [ %i.ws, %.lr.ph1470.preheader ], [ %i.xf, %middle.block1929 ]
  br label %.lr.ph1470

.preheader1404:                                   ; preds = %.lr.ph1470, %middle.block1929, %bb.by
  %.sroa.0.0.i176.lcssa = phi i64 [ 0, %bb.by ], [ %i.xo, %middle.block1929 ], [ %i.xu, %.lr.ph1470 ] ; 2 uses
  %i.xp = icmp eq i64 %i.wy, 0
  br i1 %i.xp, label %._crit_edge1481, label %.lr.ph1474.preheader

.lr.ph1470:                                       ; preds = %.lr.ph1470.preheader2145, %.lr.ph1470
  %.sroa.0.0.i1761468 = phi i64 [ %i.xu, %.lr.ph1470 ], [ %.sroa.0.0.i1761468.ph, %.lr.ph1470.preheader2145 ]
  %.sroa.04.0.i1467 = phi ptr [ %i.xq, %.lr.ph1470 ], [ %.sroa.04.0.i1467.ph, %.lr.ph1470.preheader2145 ] ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i1467, i64 1 ; 2 uses
  %i.xr = load i8, ptr %.sroa.04.0.i1467, align 1, !noundef !8
  %i.xs = icmp ugt i8 %i.xr, -17
  %i.xt = zext i1 %i.xs to i64
  %i.xu = add i64 %.sroa.0.0.i1761468, %i.xt      ; 2 uses
  %i.xv = icmp eq ptr %i.xq, %i.xd
  br i1 %i.xv, label %.preheader1404, label %.lr.ph1470, !llvm.loop !190

.lr.ph1474.preheader:                             ; preds = %.preheader1404, %._crit_edge1475
  %.sroa.0.1.i1771479 = phi i64 [ %i.aaa, %._crit_edge1475 ], [ %.sroa.0.0.i176.lcssa, %.preheader1404 ]
  %.sroa.5856.01478 = phi i64 [ %i.xx, %._crit_edge1475 ], [ %i.wy, %.preheader1404 ] ; 2 uses
  %.sroa.0855.01477 = phi ptr [ %i.xw, %._crit_edge1475 ], [ %i.ww, %.preheader1404 ] ; 4 uses
  %..i.i539 = call noundef i64 @llvm.umin.i64(i64 %.sroa.5856.01478, i64 255) ; 3 uses
  %i.xw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0855.01477, i64 %..i.i539
  %i.xx = sub nuw nsw i64 %.sroa.5856.01478, %..i.i539 ; 2 uses
  %.idx1562 = shl nuw nsw i64 %..i.i539, 4        ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.sroa.0855.01477, i64 %.idx1562
  %i.xz = add nsw i64 %.idx1562, -16              ; 2 uses
  %i.ya = lshr exact i64 %i.xz, 4
  %i.yb = add nuw nsw i64 %i.ya, 1
  %xtraiter2183 = and i64 %i.yb, 3                ; 2 uses
  %lcmp.mod2184.not = icmp eq i64 %xtraiter2183, 0
  br i1 %lcmp.mod2184.not, label %.lr.ph1474.prol.loopexit, label %.lr.ph1474.prol

.lr.ph1474.prol:                                  ; preds = %.lr.ph1474.preheader, %.lr.ph1474.prol
  %.sroa.016.0.i1472.prol = phi ptr [ %i.yd, %.lr.ph1474.prol ], [ %.sroa.0855.01477, %.lr.ph1474.preheader ] ; 2 uses
  %i.yc = phi <16 x i8> [ %i.yh, %.lr.ph1474.prol ], [ zeroinitializer, %.lr.ph1474.preheader ]
  %prol.iter2185 = phi i64 [ %prol.iter2185.next, %.lr.ph1474.prol ], [ 0, %.lr.ph1474.preheader ]
  %i.yd = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i1472.prol, i64 16 ; 2 uses
  %i.ye = load <16 x i8>, ptr %.sroa.016.0.i1472.prol, align 16, !alias.scope !191, !noalias !194
  %i.yf = icmp ugt <16 x i8> %i.ye, splat (i8 -17)
  %i.yg = zext <16 x i1> %i.yf to <16 x i8>
  %i.yh = add <16 x i8> %i.yc, %i.yg              ; 3 uses
  %prol.iter2185.next = add i64 %prol.iter2185, 1 ; 2 uses
  %prol.iter2185.cmp.not = icmp eq i64 %prol.iter2185.next, %xtraiter2183
  br i1 %prol.iter2185.cmp.not, label %.lr.ph1474.prol.loopexit, label %.lr.ph1474.prol, !llvm.loop !197

.lr.ph1474.prol.loopexit:                         ; preds = %.lr.ph1474.prol, %.lr.ph1474.preheader
  %.lcssa2143.unr = phi <16 x i8> [ poison, %.lr.ph1474.preheader ], [ %i.yh, %.lr.ph1474.prol ]
  %.sroa.016.0.i1472.unr = phi ptr [ %.sroa.0855.01477, %.lr.ph1474.preheader ], [ %i.yd, %.lr.ph1474.prol ]
  %.unr2186 = phi <16 x i8> [ zeroinitializer, %.lr.ph1474.preheader ], [ %i.yh, %.lr.ph1474.prol ]
  %i.yi = icmp ult i64 %i.xz, 48
  br i1 %i.yi, label %._crit_edge1475, label %.lr.ph1474

._crit_edge1481:                                  ; preds = %._crit_edge1475, %.preheader1404
  %.sroa.0.1.i177.lcssa = phi i64 [ %.sroa.0.0.i176.lcssa, %.preheader1404 ], [ %i.aaa, %._crit_edge1475 ] ; 3 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.xc
  %i.yk = icmp samesign eq i64 %i.xc, 0
  br i1 %i.yk, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph1486.preheader

.lr.ph1486.preheader:                             ; preds = %._crit_edge1481
  %min.iters.check1935 = icmp ult i64 %i.xc, 4
  br i1 %min.iters.check1935, label %.lr.ph1486.preheader2139, label %vector.ph1936

vector.ph1936:                                    ; preds = %.lr.ph1486.preheader
  %n.vec1937 = and i64 %i.xc, -4                  ; 3 uses
  %i.yl = getelementptr i8, ptr %i.xa, i64 %n.vec1937
  %i.ym = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.0.1.i177.lcssa, i64 0
  br label %vector.body1938

vector.body1938:                                  ; preds = %vector.body1938, %vector.ph1936
  %index1939 = phi i64 [ 0, %vector.ph1936 ], [ %index.next1945.a, %vector.body1938 ] ; 2 uses
  %vec.phi1940 = phi <2 x i64> [ %i.ym, %vector.ph1936 ], [ %i.ys, %vector.body1938 ]
  %vec.phi1941.a = phi <2 x i64> [ zeroinitializer, %vector.ph1936 ], [ %i.yt, %vector.body1938 ]
  %next.gep1942 = getelementptr i8, ptr %i.xa, i64 %index1939 ; 2 uses
  %i.yn = getelementptr i8, ptr %next.gep1942, i64 2
  %wide.load1943.a = load <2 x i8>, ptr %next.gep1942, align 1
  %wide.load1944.a = load <2 x i8>, ptr %i.yn, align 1
  %i.yo = icmp ugt <2 x i8> %wide.load1943.a, splat (i8 -17)
  %i.yp = icmp ugt <2 x i8> %wide.load1944.a, splat (i8 -17)
  %i.yq = zext <2 x i1> %i.yo to <2 x i64>
  %i.yr = zext <2 x i1> %i.yp to <2 x i64>
  %i.ys = add <2 x i64> %vec.phi1940, %i.yq       ; 2 uses
  %i.yt = add <2 x i64> %vec.phi1941.a, %i.yr     ; 2 uses
  %index.next1945.a = add nuw i64 %index1939, 4   ; 2 uses
  %i.yu = icmp eq i64 %index.next1945.a, %n.vec1937
  br i1 %i.yu, label %middle.block1946.a, label %vector.body1938, !llvm.loop !198

middle.block1946.a:                               ; preds = %vector.body1938
  %bin.rdx1947.a = add <2 x i64> %i.yt, %i.ys
  %i.yv = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1947.a) ; 2 uses
  %cmp.n1948.a = icmp eq i64 %i.xc, %n.vec1937
  br i1 %cmp.n1948.a, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph1486.preheader2139

.lr.ph1486.preheader2139:                         ; preds = %.lr.ph1486.preheader, %middle.block1946.a
  %.sroa.0.2.i1484.ph = phi i64 [ %.sroa.0.1.i177.lcssa, %.lr.ph1486.preheader ], [ %i.yv, %middle.block1946.a ]
  %.sroa.012.0.i1791483.ph = phi ptr [ %i.xa, %.lr.ph1486.preheader ], [ %i.yl, %middle.block1946.a ]
  br label %.lr.ph1486

.lr.ph1486:                                       ; preds = %.lr.ph1486.preheader2139, %.lr.ph1486
  %.sroa.0.2.i1484 = phi i64 [ %i.za, %.lr.ph1486 ], [ %.sroa.0.2.i1484.ph, %.lr.ph1486.preheader2139 ]
  %.sroa.012.0.i1791483 = phi ptr [ %i.yw, %.lr.ph1486 ], [ %.sroa.012.0.i1791483.ph, %.lr.ph1486.preheader2139 ] ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i1791483, i64 1 ; 2 uses
  %i.yx = load i8, ptr %.sroa.012.0.i1791483, align 1, !noundef !8
  %i.yy = icmp ugt i8 %i.yx, -17
  %i.yz = zext i1 %i.yy to i64
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #8

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { noinline noreturn }
attributes #16 = { inlinehint }
attributes #17 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{i64 -1, i64 -9223372036854775808}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter10ChunksEnumEBF_: argument 0"}
!7 = distinct !{!7, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter10ChunksEnumEBF_"}
!8 = !{}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultTRejjjENtCs2wCc12Mnjqg_5ropey5ErrorE6unwrapBQ_: argument 0"}
!11 = distinct !{!11, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultTRejjjENtCs2wCc12Mnjqg_5ropey5ErrorE6unwrapBQ_"}
!12 = !{!13}
!13 = distinct !{!13, !11, !"_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultTRejjjENtCs2wCc12Mnjqg_5ropey5ErrorE6unwrapBQ_: argument 1"}
!14 = !{i64 -1, i64 10}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{!10, !13}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = !{i8 0, i8 2}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!21 = distinct !{!21, !"_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!22 = !{i64 16}
!23 = distinct !{!23, !24, !25}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = distinct !{!26, !25, !24}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand: argument 1"}
!29 = distinct !{!29, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand"}
!30 = !{!31, !32}
!31 = distinct !{!31, !29, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand: argument 0"}
!32 = distinct !{!32, !29, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand: argument 2"}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = distinct !{!35, !24, !25}
!36 = distinct !{!36, !25, !24}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to: argument 0"}
!39 = distinct !{!39, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to"}
!40 = !{!"branch_weights", !"expected", i32 2145766520, i32 1717128}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 1"}
!43 = distinct !{!43, !"_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!44 = !{!45}
!45 = distinct !{!45, !43, !"_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to: argument 0"}
!48 = distinct !{!48, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!51 = distinct !{!51, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!52 = !{!"branch_weights", i32 -2147483648, i32 -2147483648}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!55 = distinct !{!55, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!56 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!59 = distinct !{!59, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!60 = !{!"branch_weights", i32 1073205, i32 2146410443}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!63 = distinct !{!63, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!64 = !{!"branch_weights", i32 2146410443, i32 1073205}
!65 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!68 = distinct !{!68, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!71 = distinct !{!71, !"_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!72 = distinct !{!72, !24, !25}
!73 = distinct !{!73, !25, !24}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand: argument 1"}
!76 = distinct !{!76, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand"}
!77 = !{!78, !79}
!78 = distinct !{!78, !76, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand: argument 0"}
!79 = distinct !{!79, !76, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand: argument 2"}
!80 = distinct !{!80, !34}
!81 = distinct !{!81, !24, !25}
!82 = distinct !{!82, !25, !24}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!85 = distinct !{!85, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to: argument 0"}
!88 = distinct !{!88, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 1"}
!91 = distinct !{!91, !"_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!92 = !{!93}
!93 = distinct !{!93, !91, !"_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to: argument 0"}
!96 = distinct !{!96, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to"}
!97 = !{!98, !100}
!98 = distinct !{!98, !99, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info: argument 0"}
!99 = distinct !{!99, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info"}
!100 = distinct !{!100, !99, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info: argument 1"}
!101 = !{!98}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!104 = distinct !{!104, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!105 = !{!103, !98, !100}
!106 = !{!107, !109}
!107 = distinct !{!107, !108, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info: argument 0"}
!108 = distinct !{!108, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info"}
!109 = distinct !{!109, !108, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17char_to_text_info: argument 1"}
!110 = !{!107}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!113 = distinct !{!113, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!114 = !{!112, !107, !109}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!117 = distinct !{!117, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs_0E0Cs2wCc12Mnjqg_5ropey: argument 0"}
!120 = distinct !{!120, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs_0E0Cs2wCc12Mnjqg_5ropey"}
!121 = distinct !{!121, !24, !25}
!122 = distinct !{!122, !25, !24}
!123 = distinct !{!123, !34}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs0_0E0Cs2wCc12Mnjqg_5ropey: argument 0"}
!126 = distinct !{!126, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs0_0E0Cs2wCc12Mnjqg_5ropey"}
!127 = distinct !{!127, !24, !25}
!128 = distinct !{!128, !25, !24}
!129 = distinct !{!129, !34}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!132 = distinct !{!132, !"_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!133 = distinct !{!133, !24, !25}
!134 = distinct !{!134, !25, !24}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand: argument 1"}
!137 = distinct !{!137, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand"}
!138 = !{!139, !140}
!139 = distinct !{!139, !137, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand: argument 0"}
!140 = distinct !{!140, !137, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand: argument 2"}
!141 = distinct !{!141, !34}
!142 = distinct !{!142, !24, !25}
!143 = distinct !{!143, !25, !24}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to: argument 0"}
!146 = distinct !{!146, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to"}
!147 = !{!"branch_weights", !"expected", i32 2145370260, i32 2113388}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 1"}
!150 = distinct !{!150, !"_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!151 = !{!152}
!152 = distinct !{!152, !150, !"_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to: argument 0"}
!155 = distinct !{!155, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!158 = distinct !{!158, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!159 = !{!"branch_weights", !"expected", i32 2146658011, i32 825637}
!160 = !{!"branch_weights", i32 825637, i32 2146658011}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!163 = distinct !{!163, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!164 = !{!"branch_weights", i32 2146658011, i32 825637}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!167 = distinct !{!167, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!168 = !{!169}
!169 = distinct !{!169, !170, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!170 = distinct !{!170, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!171 = !{!172}
!172 = distinct !{!172, !173, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs_0E0Cs2wCc12Mnjqg_5ropey: argument 0"}
!173 = distinct !{!173, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs_0E0Cs2wCc12Mnjqg_5ropey"}
!174 = distinct !{!174, !24, !25}
!175 = distinct !{!175, !25, !24}
!176 = distinct !{!176, !25, !24}
!177 = distinct !{!177, !34}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs0_0E0Cs2wCc12Mnjqg_5ropey: argument 0"}
!180 = distinct !{!180, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs0_0E0Cs2wCc12Mnjqg_5ropey"}
!181 = distinct !{!181, !24, !25}
!182 = distinct !{!182, !25, !24}
!183 = !{!184}
!184 = distinct !{!184, !185, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!185 = distinct !{!185, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!188 = distinct !{!188, !"_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!189 = distinct !{!189, !24, !25}
!190 = distinct !{!190, !25, !24}
!191 = !{!192}
!192 = distinct !{!192, !193, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand: argument 1"}
!193 = distinct !{!193, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand"}
!194 = !{!195, !196}
!195 = distinct !{!195, !193, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand: argument 0"}
!196 = distinct !{!196, !193, !"_RNvXs_NtCsk17MtNlfUKQ_11str_indices10byte_chunkNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iNtB4_9ByteChunk6bitand: argument 2"}
!197 = distinct !{!197, !34}
!198 = distinct !{!198, !24, !25}
!199 = distinct !{!199, !25, !24}
!200 = !{!201}
!201 = distinct !{!201, !202, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!202 = distinct !{!202, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!203 = !{!204}
!204 = distinct !{!204, !205, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to: argument 0"}
!205 = distinct !{!205, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to"}
!206 = !{!207}
!207 = distinct !{!207, !208, !"_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 1"}
!208 = distinct !{!208, !"_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!209 = !{!210}
!210 = distinct !{!210, !208, !"_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!211 = !{!212}
!212 = distinct !{!212, !213, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to: argument 0"}
!213 = distinct !{!213, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to"}
!214 = !{!215, !217}
!215 = distinct !{!215, !216, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17byte_to_text_info: argument 0"}
!216 = distinct !{!216, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17byte_to_text_info"}
!217 = distinct !{!217, !216, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17byte_to_text_info: argument 1"}
!218 = !{!215}
!219 = !{!220}
!220 = distinct !{!220, !221, !"_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx: argument 0"}
!221 = distinct !{!221, !"_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx"}
!222 = !{!223, !220, !215}
!223 = distinct !{!223, !224, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!224 = distinct !{!224, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!225 = !{!226}
!226 = distinct !{!226, !227, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs_0E0Cs2wCc12Mnjqg_5ropey: argument 0"}
!227 = distinct !{!227, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs_0E0Cs2wCc12Mnjqg_5ropey"}
!228 = distinct !{!228, !24, !25}
!229 = distinct !{!229, !25, !24}
!230 = distinct !{!230, !34}
!231 = !{!232}
!232 = distinct !{!232, !233, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs0_0E0Cs2wCc12Mnjqg_5ropey: argument 0"}
!233 = distinct !{!233, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs0_0E0Cs2wCc12Mnjqg_5ropey"}
!234 = distinct !{!234, !24, !25}
!235 = distinct !{!235, !25, !24}
!236 = distinct !{!236, !34}
!237 = !{!238, !240}
!238 = distinct !{!238, !239, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17byte_to_text_info: argument 0"}
!239 = distinct !{!239, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17byte_to_text_info"}
!240 = distinct !{!240, !239, !"_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node17byte_to_text_info: argument 1"}
!241 = !{!238}
!242 = !{!243}
!243 = distinct !{!243, !244, !"_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx: argument 0"}
!244 = distinct !{!244, !"_RNvNtCsk17MtNlfUKQ_11str_indices5chars13from_byte_idx"}
!245 = !{!246, !243, !238}
!246 = distinct !{!246, !247, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!247 = distinct !{!247, !"_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!248 = !{!249}
!249 = distinct !{!249, !250, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs_0E0Cs2wCc12Mnjqg_5ropey: argument 0"}
!250 = distinct !{!250, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs_0E0Cs2wCc12Mnjqg_5ropey"}
!251 = distinct !{!251, !24, !25}
!252 = distinct !{!252, !25, !24}
!253 = distinct !{!253, !34}
!254 = !{!255}
!255 = distinct !{!255, !256, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs0_0E0Cs2wCc12Mnjqg_5ropey: argument 0"}
!256 = distinct !{!256, !"_RNCINvNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters6filterINtBa_6FilterppENtNtNtBe_6traits8iterator8Iterator5count8to_usizeRhNCINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtBg_9core_arch3x867___m128iEs0_0E0Cs2wCc12Mnjqg_5ropey"}
!257 = distinct !{!257, !24, !25}
!258 = distinct !{!258, !25, !24}
!259 = distinct !{!259, !34}
!260 = !{!261}
!261 = distinct !{!261, !262, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!262 = distinct !{!262, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!263 = !{!264}
!264 = distinct !{!264, !265, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!265 = distinct !{!265, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!266 = !{!267}
!267 = distinct !{!267, !268, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range: argument 0"}
!268 = distinct !{!268, !"_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range"}
!269 = !{!"branch_weights", i32 5070053, i32 2142413595}
!270 = !{!271}
!271 = distinct !{!271, !272, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to: argument 0"}
!272 = distinct !{!272, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to"}
!273 = !{!"branch_weights", !"expected", i32 2144944528, i32 2539120}
!274 = !{!275}
!275 = distinct !{!275, !276, !"_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 1"}
!276 = distinct !{!276, !"_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey"}
!277 = !{!278}
!278 = distinct !{!278, !276, !"_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey: argument 0"}
!279 = !{!280}
!280 = distinct !{!280, !281, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to: argument 0"}
!281 = distinct !{!281, !"_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to"}
!282 = !{!283}
!283 = distinct !{!283, !284, !"_RNvCsk17MtNlfUKQ_11str_indices18is_not_crlf_middle: argument 0"}
!284 = distinct !{!284, !"_RNvCsk17MtNlfUKQ_11str_indices18is_not_crlf_middle"}
!285 = !{!286}
!286 = distinct !{!286, !287, !"_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice6chunks: argument 0"}
!287 = distinct !{!287, !"_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice6chunks"}
!288 = !{!289}
!289 = distinct !{!289, !287, !"_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice6chunks: argument 1"}
!290 = !{!286, !289}
!291 = !{!292}
!292 = distinct !{!292, !293, !"_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice6chunks: argument 0"}
!293 = distinct !{!293, !"_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice6chunks"}
!294 = !{!295}
!295 = distinct !{!295, !293, !"_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice6chunks: argument 1"}
!296 = !{!292, !295}
!297 = !{!298}
!298 = distinct !{!298, !299, !"_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice6chunks: argument 0"}
!299 = distinct !{!299, !"_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice6chunks"}
!300 = !{!301}
!301 = distinct !{!301, !299, !"_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice6chunks: argument 1"}
!302 = !{!298, !301}
!303 = !{!304, !306}
!304 = distinct !{!304, !305, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter10ChunksEnumEBF_: argument 0"}
!305 = distinct !{!305, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter10ChunksEnumEBF_"}
!306 = distinct !{!306, !307, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_: argument 0"}
!307 = distinct !{!307, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_"}
!308 = !{!309, !311}
!309 = distinct !{!309, !310, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter10ChunksEnumEBF_: argument 0"}
!310 = distinct !{!310, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter10ChunksEnumEBF_"}
!311 = distinct !{!311, !312, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_: argument 0"}
!312 = distinct !{!312, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_"}
!313 = !{!314}
!314 = distinct !{!314, !315, !"_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice6chunks: argument 0"}
!315 = distinct !{!315, !"_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice6chunks"}
!316 = !{!317}
!317 = distinct !{!317, !315, !"_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice6chunks: argument 1"}
!318 = !{!314, !317}
!319 = !{!320}
!320 = distinct !{!320, !321, !"_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice6chunks: argument 0"}
!321 = distinct !{!321, !"_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice6chunks"}
!322 = !{!323}
!323 = distinct !{!323, !321, !"_RNvMNtCs2wCc12Mnjqg_5ropey5sliceNtB2_9RopeSlice6chunks: argument 1"}
!324 = !{!320, !323}
!325 = !{!326, !328}
!326 = distinct !{!326, !327, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter10ChunksEnumEBF_: argument 0"}
!327 = distinct !{!327, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter10ChunksEnumEBF_"}
!328 = distinct !{!328, !329, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_: argument 0"}
!329 = distinct !{!329, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_"}
!330 = !{!331, !333}
!331 = distinct !{!331, !332, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter10ChunksEnumEBF_: argument 0"}
!332 = distinct !{!332, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter10ChunksEnumEBF_"}
!333 = distinct !{!333, !334, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_: argument 0"}
!334 = distinct !{!334, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_"}
!335 = !{!336, !338}
!336 = distinct !{!336, !337, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter10ChunksEnumEBF_: argument 0"}
!337 = distinct !{!337, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter10ChunksEnumEBF_"}
!338 = distinct !{!338, !339, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_: argument 0"}
!339 = distinct !{!339, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_"}
!340 = !{!341, !343}
!341 = distinct !{!341, !342, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter10ChunksEnumEBF_: argument 0"}
!342 = distinct !{!342, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter10ChunksEnumEBF_"}
!343 = distinct !{!343, !344, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_: argument 0"}
!344 = distinct !{!344, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2wCc12Mnjqg_5ropey4iter6ChunksEBF_"}
end_hunk_1
