Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/adpcm?download=true
inline.NumInlined: 172
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 19
begin_hunk_0_@adpcm_decode_frame:bb.a
  %.sroa.02376.115.us.14 = getelementptr inbounds nuw i8, ptr %.sroa.02376.1133029, i64 30
  %i.ffk = sext i16 %i.ffj to i32
  %i.ffl = getelementptr inbounds nuw i8, ptr %i.fbl, i64 56
  store i32 %i.ffk, ptr %i.ffl, align 8, !tbaa !118
  %i.ffm = load i16, ptr %.sroa.02376.115.us.14, align 1, !tbaa !13
  br label %.split3027.us

._crit_edge3031:                                  ; preds = %.split3027.us
  %i.ffn = getelementptr inbounds nuw i8, ptr %i.m, i64 508 ; 2 uses
  %i.ffo = load i32, ptr %i.ffn, align 4, !tbaa !166
  %.not1794 = icmp eq i32 %i.ffo, 0
  br i1 %.not1794, label %.lr.ph3035, label %bb.kv

.lr.ph3035:                                       ; preds = %._crit_edge3031
  %i.ffp = icmp eq i32 %i.ju, 69668
  %wide.trip.count3814 = zext nneg i32 %i.o to i64
  br label %bb.kr

.split3027.us:                                    ; preds = %.preheader2843.split.preheader, %.preheader2843.split.us.preheader
  %.sink4504 = phi i16 [ %i.fdu, %.preheader2843.split.preheader ], [ %i.ffm, %.preheader2843.split.us.preheader ]
  %i.ffq = sext i16 %.sink4504 to i32
  %i.ffr = getelementptr inbounds nuw i8, ptr %i.fbl, i64 60
  store i32 %i.ffq, ptr %i.ffr, align 4, !tbaa !118
  %.us-phi3028 = getelementptr inbounds nuw i8, ptr %.sroa.02376.1133029, i64 32 ; 4 uses
  %indvars.iv.next3807 = add nuw nsw i64 %indvars.iv3806, 1 ; 2 uses
  %exitcond3810.not = icmp eq i64 %indvars.iv.next3807, %wide.trip.count3809
  br i1 %exitcond3810.not, label %._crit_edge3031, label %.preheader2843, !llvm.loop !167

._crit_edge3036:                                  ; preds = %bb.ku
  store i32 1, ptr %i.ffn, align 4, !tbaa !166
  br label %.lr.ph3052

bb.kr:                                            ; preds = %.lr.ph3035, %bb.ku
  %indvars.iv3811 = phi i64 [ 0, %.lr.ph3035 ], [ %indvars.iv.next3812, %bb.ku ] ; 4 uses
  %.sroa.02376.1163033 = phi ptr [ %.us-phi3028, %.lr.ph3035 ], [ %.sroa.02376.118, %bb.ku ] ; 3 uses
  %i.ffs = getelementptr inbounds nuw i8, ptr %.sroa.02376.1163033, i64 2 ; 2 uses
  %i.fft = load i16, ptr %.sroa.02376.1163033, align 1, !tbaa !13 ; 2 uses
  br i1 %i.ffp, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  %i.ffu = sext i16 %i.fft to i32
  %i.ffv = getelementptr inbounds nuw [36 x i8], ptr %i.m, i64 %indvars.iv3811
  %i.ffw = getelementptr inbounds nuw i8, ptr %i.ffv, i64 16
  store i32 %i.ffu, ptr %i.ffw, align 4, !tbaa !15
  %i.ffx = load i16, ptr %i.ffs, align 1, !tbaa !13
  br label %bb.ku

bb.kt:                                            ; preds = %bb.kr
  %i.ffy = tail call i16 @llvm.bswap.i16(i16 %i.fft)
  %i.ffz = sext i16 %i.ffy to i32
  %i.fga = getelementptr inbounds nuw [36 x i8], ptr %i.m, i64 %indvars.iv3811
  %i.fgb = getelementptr inbounds nuw i8, ptr %i.fga, i64 16
  store i32 %i.ffz, ptr %i.fgb, align 4, !tbaa !15
  %i.fgc = load i16, ptr %i.ffs, align 1, !tbaa !13
  %i.fgd = tail call i16 @llvm.bswap.i16(i16 %i.fgc)
  br label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %bb.ks
  %.in2729 = phi i16 [ %i.ffx, %bb.ks ], [ %i.fgd, %bb.kt ]
  %i.fge = getelementptr inbounds nuw [36 x i8], ptr %i.m, i64 %indvars.iv3811
  %.sroa.02376.118 = getelementptr inbounds nuw i8, ptr %.sroa.02376.1163033, i64 4 ; 2 uses
  %i.fgf = sext i16 %.in2729 to i32
  %i.fgg = getelementptr inbounds nuw i8, ptr %i.fge, i64 20
  store i32 %i.fgf, ptr %i.fgg, align 4, !tbaa !16
  %indvars.iv.next3812 = add nuw nsw i64 %indvars.iv3811, 1 ; 2 uses
  %exitcond3815.not = icmp eq i64 %indvars.iv.next3812, %wide.trip.count3814
  br i1 %exitcond3815.not, label %._crit_edge3036, label %bb.kr, !llvm.loop !168

bb.kv:                                            ; preds = %._crit_edge3031
  %i.fgh = shl nsw i32 %i.o, 2
  %i.fgi = ptrtoint ptr %i.s to i64
  %i.fgj = ptrtoint ptr %.us-phi3028 to i64
  %i.fgk = sub i64 %i.fgi, %i.fgj
  %i.fgl = zext nneg i32 %i.fgh to i64
  %..i1936 = tail call i64 @llvm.smin.i64(i64 %i.fgk, i64 %i.fgl)
  %i.fgm = getelementptr inbounds i8, ptr %.us-phi3028, i64 %..i1936
  br label %.lr.ph3052

.lr.ph3052:                                       ; preds = %bytestream2_init.exit, %bb.kv, %._crit_edge3036
  %.sroa.02376.119 = phi ptr [ %.sroa.02376.118, %._crit_edge3036 ], [ %i.fgm, %bb.kv ], [ %.sroa.02376.1662659, %bytestream2_init.exit ]
  %i.fgn = add nsw i32 %.01552, 13
  %i.fgo = sdiv i32 %i.fgn, 14
  %i.fgp = icmp sgt i32 %.01552, 0
  %smax = tail call i32 @llvm.smax.i32(i32 %i.fgo, i32 1)
  %wide.trip.count3821 = zext nneg i32 %i.o to i64
  br label %bb.kw

bb.kw:                                            ; preds = %.lr.ph3052, %._crit_edge3047
  %indvars.iv3818 = phi i64 [ 0, %.lr.ph3052 ], [ %indvars.iv.next3819, %._crit_edge3047 ] ; 4 uses
  %.sroa.02376.1203049 = phi ptr [ %.sroa.02376.119, %.lr.ph3052 ], [ %.sroa.02376.121.lcssa, %._crit_edge3047 ] ; 2 uses
  br i1 %i.fgp, label %.lr.ph3046, label %._crit_edge3047

.lr.ph3046:                                       ; preds = %bb.kw
  %i.fgq = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv3818
  %i.fgr = load ptr, ptr %i.fgq, align 8, !tbaa !59
  %i.fgs = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %indvars.iv3818
  %i.fgt = getelementptr inbounds nuw [36 x i8], ptr %i.m, i64 %indvars.iv3818 ; 2 uses
  %i.fgu = getelementptr inbounds nuw i8, ptr %i.fgt, i64 16 ; 2 uses
  %i.fgv = getelementptr inbounds nuw i8, ptr %i.fgt, i64 20 ; 2 uses
  br label %bb.kx

._crit_edge3047:                                  ; preds = %.critedge, %bb.kw
  %.sroa.02376.121.lcssa = phi ptr [ %.sroa.02376.1203049, %bb.kw ], [ %.sroa.02376.122.lcssa, %.critedge ] ; 2 uses
  %indvars.iv.next3819 = add nuw nsw i64 %indvars.iv3818, 1 ; 2 uses
  %exitcond3822.not = icmp eq i64 %indvars.iv.next3819, %wide.trip.count3821
  br i1 %exitcond3822.not, label %._crit_edge3053, label %bb.kw, !llvm.loop !169

bb.kx:                                            ; preds = %.lr.ph3046, %.critedge
  %.014763044 = phi i32 [ 0, %.lr.ph3046 ], [ %i.fhm, %.critedge ] ; 2 uses
  %.4615453043 = phi ptr [ %i.fgr, %.lr.ph3046 ], [ %.471546.lcssa, %.critedge ]
  %.sroa.02376.1213042 = phi ptr [ %.sroa.02376.1203049, %.lr.ph3046 ], [ %.sroa.02376.122.lcssa, %.critedge ] ; 2 uses
  %i.fgw = getelementptr inbounds nuw i8, ptr %.sroa.02376.1213042, i64 1
  %i.fgx = load i8, ptr %.sroa.02376.1213042, align 1, !tbaa !13
  %i.fgy = zext i8 %i.fgx to i32                  ; 3 uses
  %i.fgz = and i32 %i.fgy, 15
  %i.fha = lshr i32 %i.fgy, 3
  %i.fhb = and i32 %i.fha, 14
  %i.fhc = zext nneg i32 %i.fhb to i64
  %i.fhd = getelementptr inbounds nuw [4 x i8], ptr %i.fgs, i64 %i.fhc ; 2 uses
  %i.fhe = load i32, ptr %i.fhd, align 8, !tbaa !118
  %i.fhf = sext i32 %i.fhe to i64
  %i.fhg = getelementptr inbounds nuw i8, ptr %i.fhd, i64 4
  %i.fhh = load i32, ptr %i.fhg, align 4, !tbaa !118
  %i.fhi = sext i32 %i.fhh to i64
  %i.fhj = mul nuw nsw i32 %.014763044, 14
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kx, %bb.lc
  %.014733041 = phi i32 [ 0, %bb.kx ], [ %i.fih, %bb.lc ] ; 3 uses
  %.014743040 = phi i32 [ %i.fgy, %bb.kx ], [ %.11475, %bb.lc ] ; 2 uses
  %.4715463039 = phi ptr [ %.4615453043, %bb.kx ], [ %i.fig, %bb.lc ] ; 3 uses
  %.sroa.02376.1223038 = phi ptr [ %i.fgw, %bb.kx ], [ %.sroa.02376.123, %bb.lc ] ; 4 uses
  %i.fhk = add nuw nsw i32 %.014733041, %i.fhj
  %i.fhl = icmp slt i32 %i.fhk, %.01552
  br i1 %i.fhl, label %bb.kz, label %.critedge

.critedge:                                        ; preds = %bb.lc, %bb.ky
  %.sroa.02376.122.lcssa = phi ptr [ %.sroa.02376.123, %bb.lc ], [ %.sroa.02376.1223038, %bb.ky ] ; 2 uses
  %.471546.lcssa = phi ptr [ %i.fig, %bb.lc ], [ %.4715463039, %bb.ky ]
  %i.fhm = add nuw nsw i32 %.014763044, 1         ; 2 uses
  %exitcond3817.not = icmp eq i32 %i.fhm, %smax
  br i1 %exitcond3817.not, label %._crit_edge3047, label %bb.kx, !llvm.loop !170

bb.kz:                                            ; preds = %bb.ky
  %i.fhn = and i32 %.014733041, 1
  %.not1796 = icmp eq i32 %i.fhn, 0
  br i1 %.not1796, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.fho = shl i32 %.014743040, 28
  br label %bb.lc

bb.lb:                                            ; preds = %bb.kz
  %i.fhp = getelementptr inbounds nuw i8, ptr %.sroa.02376.1223038, i64 1
  %i.fhq = load i8, ptr %.sroa.02376.1223038, align 1, !tbaa !13
  %i.fhr = zext i8 %i.fhq to i32                  ; 2 uses
  %i.fhs = shl nuw i32 %i.fhr, 24
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %bb.la
  %.sroa.02376.123 = phi ptr [ %i.fhp, %bb.lb ], [ %.sroa.02376.1223038, %bb.la ] ; 2 uses
  %.11475 = phi i32 [ %i.fhr, %bb.lb ], [ %.014743040, %bb.la ]
  %.01472.in = phi i32 [ %i.fhs, %bb.lb ], [ %i.fho, %bb.la ]
  %.01472 = ashr i32 %.01472.in, 28
  %i.fht = load i32, ptr %i.fgu, align 4, !tbaa !15 ; 2 uses
  %i.fhu = sext i32 %i.fht to i64
  %i.fhv = mul nsw i64 %i.fhu, %i.fhf
  %i.fhw = load i32, ptr %i.fgv, align 4, !tbaa !16
  %i.fhx = sext i32 %i.fhw to i64
  %i.fhy = mul nsw i64 %i.fhx, %i.fhi
  %i.fhz = add nsw i64 %i.fhy, %i.fhv
  %i.fia = lshr i64 %i.fhz, 11
  %i.fib = shl nsw i32 %.01472, %i.fgz
  %i.fic = trunc i64 %i.fia to i32
  %i.fid = add i32 %i.fib, %i.fic
  %i.fie = tail call i32 @llvm.smax.i32(i32 %i.fid, i32 -32768)
  %i.fif = tail call i32 @llvm.smin.i32(i32 %i.fie, i32 32767) ; 2 uses
  %.0.i1917 = trunc nsw i32 %i.fif to i16
  store i16 %.0.i1917, ptr %.4715463039, align 2, !tbaa !12
  store i32 %i.fht, ptr %i.fgv, align 4, !tbaa !16
  %i.fig = getelementptr inbounds nuw i8, ptr %.4715463039, i64 2 ; 2 uses
  store i32 %i.fif, ptr %i.fgu, align 4, !tbaa !15
  %i.fih = add nuw nsw i32 %.014733041, 1         ; 2 uses
  %exitcond3816.not = icmp eq i32 %i.fih, 14
  br i1 %exitcond3816.not, label %.critedge, label %bb.ky, !llvm.loop !171

._crit_edge3053:                                  ; preds = %._crit_edge3047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  br label %.critedge1852thread-pre-split

bb.ld:                                            ; preds = %.lr.ph3015, %._crit_edge3010
  %indvars.iv3780 = phi i64 [ 0, %.lr.ph3015 ], [ %indvars.iv.next3781, %._crit_edge3010 ] ; 6 uses
  %.sroa.02376.1243013 = phi ptr [ %.sroa.02376.1662659, %.lr.ph3015 ], [ %spec.select, %._crit_edge3010 ] ; 3 uses
  br i1 %i.kn, label %.lr.ph3009, label %._crit_edge3010

.lr.ph3009:                                       ; preds = %bb.ld
  %i.fii = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv3780
  %i.fij = load ptr, ptr %i.fii, align 8, !tbaa !59 ; 2 uses
  %.not1791 = icmp ne i64 %indvars.iv3780, 0      ; 2 uses
  %spec.select2720.idx = zext i1 %.not1791 to i64 ; 2 uses
  %i.fik = sub nsw i64 3, %indvars.iv3780
  %4 = and i64 %i.fik, 4294967295                 ; 2 uses
  %i.fil = getelementptr inbounds nuw [36 x i8], ptr %i.m, i64 %indvars.iv3780 ; 2 uses
  %i.fim = getelementptr inbounds nuw i8, ptr %i.fil, i64 16 ; 3 uses
  %i.fin = getelementptr inbounds nuw i8, ptr %i.fil, i64 20 ; 3 uses
  %.promoted2994.us.pre = load i32, ptr %i.fim, align 4, !tbaa !15 ; 2 uses
  %.promoted2999.us.pre = load i32, ptr %i.fin, align 4 ; 2 uses
  br i1 %.not1791, label %.split3000.us.us, label %.split3000

.split3000.us.us:                                 ; preds = %.lr.ph3009, %.split3002.us.us
  %.promoted2999.us = phi i32 [ %i.fiv, %.split3002.us.us ], [ %.promoted2999.us.pre, %.lr.ph3009 ]
  %.promoted2998.us = phi i32 [ %i.fjo, %.split3002.us.us ], [ %.promoted2994.us.pre, %.lr.ph3009 ]
  %.014703007.us = phi i32 [ %i.fju, %.split3002.us.us ], [ 0, %.lr.ph3009 ]
  %.4815473006.us = phi ptr [ %i.fjs, %.split3002.us.us ], [ %i.fij, %.lr.ph3009 ]
  %.sroa.02376.1253005.us = phi ptr [ %i.fjg, %.split3002.us.us ], [ %.sroa.02376.1243013, %.lr.ph3009 ]
  %spec.select2720.us = getelementptr inbounds nuw i8, ptr %.sroa.02376.1253005.us, i64 %spec.select2720.idx ; 2 uses
  %i.fio = getelementptr inbounds nuw i8, ptr %spec.select2720.us, i64 1
  %i.fip = load i8, ptr %spec.select2720.us, align 1, !tbaa !13
  %i.fiq = zext i8 %i.fip to i32                  ; 2 uses
  %i.fir = getelementptr inbounds nuw i8, ptr %i.fio, i64 %4
  %i.fis = lshr i32 %i.fiq, 4
  %i.fit = and i32 %i.fiq, 15
  br label %bb.le

bb.le:                                            ; preds = %.thread4320, %.split3000.us.us
  %i.fiu = phi i32 [ %.promoted2999.us, %.split3000.us.us ], [ %i.fiv, %.thread4320 ] ; 2 uses
  %i.fiv = phi i32 [ %.promoted2998.us, %.split3000.us.us ], [ %i.fjo, %.thread4320 ] ; 6 uses
  %.014692997.us.us = phi i32 [ 0, %.split3000.us.us ], [ %i.fjt, %.thread4320 ]
  %.4915482996.us.us = phi ptr [ %.4815473006.us, %.split3000.us.us ], [ %i.fjs, %.thread4320 ] ; 2 uses
  %.sroa.02376.1272995.us.us = phi ptr [ %i.fir, %.split3000.us.us ], [ %i.fjg, %.thread4320 ] ; 2 uses
  switch i32 %i.fis, label %.thread4320 [
    i32 1, label %bb.lh
    i32 2, label %bb.lg
    i32 3, label %bb.lf
  ]

bb.lf:                                            ; preds = %bb.le
  %i.fiw = mul nsw i32 %i.fiv, 98
  %.neg.us.us = mul i32 %i.fiu, -55
  %i.fix = add i32 %.neg.us.us, %i.fiw
  br label %bb.li

bb.lg:                                            ; preds = %bb.le
  %i.fiy = mul nsw i32 %i.fiv, 115
  %.neg1792.us.us = mul i32 %i.fiu, -52
  %i.fiz = add i32 %.neg1792.us.us, %i.fiy
  br label %bb.li

bb.lh:                                            ; preds = %bb.le
  %i.fja = mul nsw i32 %i.fiv, 60
  br label %bb.li

bb.li:                                            ; preds = %bb.lh, %bb.lg, %bb.lf
  %.01467.us.us = phi i32 [ %i.fix, %bb.lf ], [ %i.fja, %bb.lh ], [ %i.fiz, %bb.lg ]
  %.01467.us.us.fr = freeze i32 %.01467.us.us     ; 2 uses
  %i.fjb = add i32 %.01467.us.us.fr, 32
  %i.fjc = ashr i32 %i.fjb, 6                     ; 2 uses
  %i.fjd = add nsw i32 %i.fjc, 2097152
  %.not.i1977.us.us = icmp ult i32 %i.fjd, 4194304
  %i.fje = icmp sgt i32 %.01467.us.us.fr, -33
  %.4505 = select i1 %i.fje, i32 2097151, i32 -2097152
  %spec.select4507 = select i1 %.not.i1977.us.us, i32 %i.fjc, i32 %.4505
  br label %.thread4320

.thread4320:                                      ; preds = %bb.li, %bb.le
  %i.fjf = phi i32 [ %spec.select4507, %bb.li ], [ 0, %bb.le ]
  %i.fjg = getelementptr inbounds nuw i8, ptr %.sroa.02376.1272995.us.us, i64 1 ; 3 uses
  %i.fjh = load i8, ptr %.sroa.02376.1272995.us.us, align 1, !tbaa !13
  %i.fji = zext i8 %i.fjh to i32
  %i.fjj = shl nuw i32 %i.fji, 24
  %i.fjk = ashr exact i32 %i.fjj, 16
  %i.fjl = and i32 %i.fjk, -4096
  %i.fjm = ashr i32 %i.fjl, %i.fit
  %i.fjn = shl nsw i32 %i.fjm, 6
  %i.fjo = add nsw i32 %i.fjn, %i.fjf             ; 4 uses
  %i.fjp = ashr i32 %i.fjo, 6
  %i.fjq = tail call i32 @llvm.smax.i32(i32 %i.fjp, i32 -32768)
  %i.fjr = tail call i32 @llvm.smin.i32(i32 %i.fjq, i32 32767)
  %.0.i1915.us.us = trunc nsw i32 %i.fjr to i16
  %i.fjs = getelementptr inbounds nuw i8, ptr %.4915482996.us.us, i64 2 ; 2 uses
  store i16 %.0.i1915.us.us, ptr %.4915482996.us.us, align 2, !tbaa !12
  store i32 %i.fiv, ptr %i.fin, align 4, !tbaa !16
  store i32 %i.fjo, ptr %i.fim, align 4, !tbaa !15
  %i.fjt = add nuw nsw i32 %.014692997.us.us, 1   ; 2 uses
  %exitcond3778.not = icmp eq i32 %i.fjt, 28
  br i1 %exitcond3778.not, label %.split3002.us.us, label %bb.le, !llvm.loop !172

.split3002.us.us:                                 ; preds = %.thread4320
  %i.fju = add nuw nsw i32 %.014703007.us, 1      ; 2 uses
  %exitcond3779.not = icmp eq i32 %i.fju, %i.km
  br i1 %exitcond3779.not, label %._crit_edge3010, label %.split3000.us.us, !llvm.loop !173

._crit_edge3010:                                  ; preds = %.split3002, %.split3002.us.us, %bb.ld
  %.sroa.02376.125.lcssa = phi ptr [ %.sroa.02376.1243013, %bb.ld ], [ %i.fjg, %.split3002.us.us ], [ %i.fko, %.split3002 ]
  %.not1790 = icmp eq i64 %indvars.iv3780, 0
  %spec.select = select i1 %.not1790, ptr %i.i, ptr %.sroa.02376.125.lcssa ; 2 uses
  %indvars.iv.next3781 = add nuw nsw i64 %indvars.iv3780, 1 ; 2 uses
  %exitcond3784.not = icmp eq i64 %indvars.iv.next3781, %wide.trip.count3783
  br i1 %exitcond3784.not, label %.critedge1852thread-pre-split, label %bb.ld, !llvm.loop !174

.split3000:                                       ; preds = %.lr.ph3009, %.split3002
  %.promoted2999 = phi i32 [ %i.fkd, %.split3002 ], [ %.promoted2999.us.pre, %.lr.ph3009 ]
  %.promoted2998 = phi i32 [ %i.fkv, %.split3002 ], [ %.promoted2994.us.pre, %.lr.ph3009 ]
  %.014703007 = phi i32 [ %i.fkb, %.split3002 ], [ 0, %.lr.ph3009 ]
  %.4815473006 = phi ptr [ %i.fkz, %.split3002 ], [ %i.fij, %.lr.ph3009 ]
  %.sroa.02376.1253005 = phi ptr [ %i.fko, %.split3002 ], [ %.sroa.02376.1243013, %.lr.ph3009 ]
  %spec.select2720 = getelementptr inbounds nuw i8, ptr %.sroa.02376.1253005, i64 %spec.select2720.idx ; 2 uses
  %i.fjv = getelementptr inbounds nuw i8, ptr %spec.select2720, i64 1
  %i.fjw = load i8, ptr %spec.select2720, align 1, !tbaa !13
  %i.fjx = zext i8 %i.fjw to i32                  ; 2 uses
  %i.fjy = getelementptr inbounds nuw i8, ptr %i.fjv, i64 %4
  %i.fjz = lshr i32 %i.fjx, 4
  %i.fka = and i32 %i.fjx, 15
  br label %bb.lj

.split3002:                                       ; preds = %.thread4333
  %i.fkb = add nuw nsw i32 %.014703007, 1         ; 2 uses
  %exitcond3777.not = icmp eq i32 %i.fkb, %i.km
  br i1 %exitcond3777.not, label %._crit_edge3010, label %.split3000, !llvm.loop !173

bb.lj:                                            ; preds = %.split3000, %.thread4333
  %i.fkc = phi i32 [ %.promoted2999, %.split3000 ], [ %i.fkd, %.thread4333 ] ; 2 uses
  %i.fkd = phi i32 [ %.promoted2998, %.split3000 ], [ %i.fkv, %.thread4333 ] ; 6 uses
  %.014692997 = phi i32 [ 0, %.split3000 ], [ %i.fla, %.thread4333 ]
  %.4915482996 = phi ptr [ %.4815473006, %.split3000 ], [ %i.fkz, %.thread4333 ] ; 2 uses
  %.sroa.02376.1272995 = phi ptr [ %i.fjy, %.split3000 ], [ %i.fko, %.thread4333 ] ; 2 uses
  switch i32 %i.fjz, label %.thread4333 [
    i32 1, label %bb.lk
    i32 2, label %bb.ll
    i32 3, label %bb.lm
  ]

bb.lk:                                            ; preds = %bb.lj
  %i.fke = mul nsw i32 %i.fkd, 60
  br label %bb.ln

bb.ll:                                            ; preds = %bb.lj
  %i.fkf = mul nsw i32 %i.fkd, 115
  %.neg1792 = mul i32 %i.fkc, -52
  %i.fkg = add i32 %.neg1792, %i.fkf
  br label %bb.ln

bb.lm:                                            ; preds = %bb.lj
  %i.fkh = mul nsw i32 %i.fkd, 98
  %.neg = mul i32 %i.fkc, -55
  %i.fki = add i32 %.neg, %i.fkh
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.ll, %bb.lk
  %.01467 = phi i32 [ %i.fki, %bb.lm ], [ %i.fke, %bb.lk ], [ %i.fkg, %bb.ll ]
  %.01467.fr = freeze i32 %.01467                 ; 2 uses
  %i.fkj = add i32 %.01467.fr, 32
  %i.fkk = ashr i32 %i.fkj, 6                     ; 2 uses
  %i.fkl = add nsw i32 %i.fkk, 2097152
  %.not.i1977 = icmp ult i32 %i.fkl, 4194304
  %i.fkm = icmp sgt i32 %.01467.fr, -33
  %.4506 = select i1 %i.fkm, i32 2097151, i32 -2097152
  %spec.select4508 = select i1 %.not.i1977, i32 %i.fkk, i32 %.4506
  br label %.thread4333

.thread4333:                                      ; preds = %bb.ln, %bb.lj
  %i.fkn = phi i32 [ %spec.select4508, %bb.ln ], [ 0, %bb.lj ]
  %i.fko = getelementptr inbounds nuw i8, ptr %.sroa.02376.1272995, i64 1 ; 3 uses
  %i.fkp = load i8, ptr %.sroa.02376.1272995, align 1, !tbaa !13
  %i.fkq = zext i8 %i.fkp to i32
  %i.fkr = shl i32 %i.fkq, 28
  %i.fks = ashr exact i32 %i.fkr, 16
  %i.fkt = ashr i32 %i.fks, %i.fka
  %i.fku = shl nsw i32 %i.fkt, 6
  %i.fkv = add nsw i32 %i.fku, %i.fkn             ; 4 uses
  %i.fkw = ashr i32 %i.fkv, 6
  %i.fkx = tail call i32 @llvm.smax.i32(i32 %i.fkw, i32 -32768)
  %i.fky = tail call i32 @llvm.smin.i32(i32 %i.fkx, i32 32767)
  %.0.i1915 = trunc nsw i32 %i.fky to i16
  %i.fkz = getelementptr inbounds nuw i8, ptr %.4915482996, i64 2 ; 2 uses
  store i16 %.0.i1915, ptr %.4915482996, align 2, !tbaa !12
  store i32 %i.fkd, ptr %i.fin, align 4, !tbaa !16
  store i32 %i.fkv, ptr %i.fim, align 4, !tbaa !15
  %i.fla = add nuw nsw i32 %.014692997, 1         ; 2 uses
  %exitcond3776.not = icmp eq i32 %i.fla, 28
  br i1 %exitcond3776.not, label %.split3002, label %bb.lj, !llvm.loop !172

.lr.ph2974:                                       ; preds = %.critedge1911, %.lr.ph2992
  %indvars.iv3771 = phi i64 [ 0, %.lr.ph2992 ], [ %i.flb, %.critedge1911 ] ; 2 uses
  %.sroa.02376.1292990 = phi ptr [ %.sroa.02376.1662659, %.lr.ph2992 ], [ %.us-phi2961.us, %.critedge1911 ]
  %i.flb = add nuw nsw i64 %indvars.iv3771, 1     ; 3 uses
  %i.flc = trunc i64 %i.flb to i32
  %i.fld = mul i32 %i.kk, %i.flc
  %.not1784 = icmp sgt i32 %i.fld, %.01552
  %i.fle = mul nuw nsw i64 %indvars.iv3771, %i.kl
  br i1 %.not1784, label %bb.lt, label %.lr.ph2968.us.preheader

.lr.ph2968.us.preheader:                          ; preds = %.lr.ph2974
  %i.flf = udiv i32 %.1903, %i.kh
  br label %.lr.ph2968.us

.lr.ph2968.us:                                    ; preds = %.lr.ph2968.us.preheader, %..critedge1906_crit_edge.us
  %indvars.iv3766 = phi i64 [ 0, %.lr.ph2968.us.preheader ], [ %indvars.iv.next3767, %..critedge1906_crit_edge.us ] ; 3 uses
  %.sroa.02376.1302971.us = phi ptr [ %.sroa.02376.1292990, %.lr.ph2968.us.preheader ], [ %.us-phi2961.us, %..critedge1906_crit_edge.us ]
  %i.flg = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv3766
  %i.flh = load ptr, ptr %i.flg, align 8, !tbaa !59
  %i.fli = getelementptr inbounds nuw [2 x i8], ptr %i.flh, i64 %i.fle
  %i.flj = getelementptr inbounds nuw [36 x i8], ptr %i.m, i64 %indvars.iv3766 ; 2 uses
  %i.flk = getelementptr inbounds nuw i8, ptr %i.flj, i64 16 ; 3 uses
  %i.fll = getelementptr inbounds nuw i8, ptr %i.flj, i64 20 ; 3 uses
  br label %bb.lo

bb.lo:                                            ; preds = %.lr.ph2968.us, %.split2960.us2984
  %.014642966.us = phi i32 [ 0, %.lr.ph2968.us ], [ %i.fmw, %.split2960.us2984 ]
  %.502965.us = phi ptr [ %i.fli, %.lr.ph2968.us ], [ %.us-phi2962.us, %.split2960.us2984 ] ; 6 uses
  %.sroa.02376.1312964.us = phi ptr [ %.sroa.02376.1302971.us, %.lr.ph2968.us ], [ %.us-phi2961.us, %.split2960.us2984 ] ; 4 uses
  %i.flm = load i8, ptr %.sroa.02376.1312964.us, align 1, !tbaa !13 ; 2 uses
  %i.fln = zext i8 %i.flm to i32                  ; 2 uses
  %i.flo = and i32 %i.fln, 15
  %i.flp = icmp ult i8 %i.flm, 80
  br i1 %i.flp, label %bb.lp, label %.critedge1894

bb.lp:                                            ; preds = %bb.lo
  %i.flq = getelementptr inbounds nuw i8, ptr %.sroa.02376.1312964.us, i64 1
  %i.flr = load i8, ptr %i.flq, align 1, !tbaa !13
  %i.fls = and i8 %i.flr, 7
  %.not1786.us = icmp eq i8 %i.fls, 7
  br i1 %.not1786.us, label %.thread2708.us.us.27, label %.split2958.us2987

bb.lq:                                            ; preds = %.split2958.us2987, %.thread2708.us2981
  %i.flt = phi i32 [ %.promoted2957.us, %.split2958.us2987 ], [ %i.flu, %.thread2708.us2981 ]
  %i.flu = phi i32 [ %.promoted2951.us, %.split2958.us2987 ], [ %.fr.us, %.thread2708.us2981 ] ; 3 uses
  %.014612955.us2976 = phi i32 [ 0, %.split2958.us2987 ], [ %i.fmm, %.thread2708.us2981 ] ; 2 uses
  %.014622954.us2977 = phi i32 [ undef, %.split2958.us2987 ], [ %.11463.us2983, %.thread2708.us2981 ] ; 2 uses
  %.512953.us2978 = phi ptr [ %.502965.us, %.split2958.us2987 ], [ %i.fml, %.thread2708.us2981 ] ; 2 uses
  %.sroa.02376.1322952.us2979 = phi ptr [ %i.fmn, %.split2958.us2987 ], [ %.sroa.02376.133.us2982, %.thread2708.us2981 ] ; 3 uses
  %i.flv = and i32 %.014612955.us2976, 1
  %.not1785.us2980 = icmp eq i32 %i.flv, 0
  br i1 %.not1785.us2980, label %bb.ls, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.flw = shl i32 %.014622954.us2977, 24
  br label %.thread2708.us2981

bb.ls:                                            ; preds = %bb.lq
  %i.flx = getelementptr inbounds nuw i8, ptr %.sroa.02376.1322952.us2979, i64 1
  %i.fly = load i8, ptr %.sroa.02376.1322952.us2979, align 1, !tbaa !13
  %i.flz = zext i8 %i.fly to i32                  ; 2 uses
  %i.fma = shl i32 %i.flz, 28
  br label %.thread2708.us2981

.thread2708.us2981:                               ; preds = %bb.ls, %bb.lr
  %.sroa.02376.133.us2982 = phi ptr [ %i.flx, %bb.ls ], [ %.sroa.02376.1322952.us2979, %bb.lr ] ; 2 uses
  %.11463.us2983 = phi i32 [ %i.flz, %bb.ls ], [ %.014622954.us2977, %bb.lr ]
  %.01459.in.us = phi i32 [ %i.fma, %bb.ls ], [ %i.flw, %bb.lr ]
  %i.fmb = ashr exact i32 %.01459.in.us, 16
  %i.fmc = and i32 %i.fmb, -4096
  %i.fmd = ashr i32 %i.fmc, %i.flo
  %i.fme = mul nsw i32 %i.flu, %i.fmt
  %i.fmf = mul nsw i32 %i.flt, %i.fmv
  %i.fmg = add nsw i32 %i.fmf, %i.fme
  %i.fmh = sdiv i32 %i.fmg, 64
  %i.fmi = add nsw i32 %i.fmh, %i.fmd
  %.fr.us = freeze i32 %i.fmi                     ; 3 uses
  %i.fmj = tail call i32 @llvm.smax.i32(i32 %.fr.us, i32 -32768)
  %i.fmk = tail call i32 @llvm.smin.i32(i32 %i.fmj, i32 32767)
  %spec.select2767.us = trunc nsw i32 %i.fmk to i16
  %i.fml = getelementptr inbounds nuw i8, ptr %.512953.us2978, i64 2 ; 2 uses
  store i16 %spec.select2767.us, ptr %.512953.us2978, align 2, !tbaa !12
  store i32 %i.flu, ptr %i.fll, align 4, !tbaa !16
  store i32 %.fr.us, ptr %i.flk, align 4, !tbaa !15
  %i.fmm = add nuw nsw i32 %.014612955.us2976, 1  ; 2 uses
  %exitcond3764.not = icmp eq i32 %i.fmm, 28
  br i1 %exitcond3764.not, label %.split2960.us2984, label %bb.lq, !llvm.loop !175

.split2958.us2987:                                ; preds = %bb.lp
  %.promoted2951.us = load i32, ptr %i.flk, align 4, !tbaa !15
  %i.fmn = getelementptr inbounds nuw i8, ptr %.sroa.02376.1312964.us, i64 2
  %.promoted2957.us = load i32, ptr %i.fll, align 4
  %i.fmo = lshr i32 %i.fln, 4
  %i.fmp = zext nneg i32 %i.fmo to i64
  %i.fmq = getelementptr inbounds nuw [2 x i8], ptr @xa_adpcm_table, i64 %i.fmp ; 2 uses
  %i.fmr = getelementptr inbounds nuw i8, ptr %i.fmq, i64 1
  %i.fms = load i8, ptr %i.fmq, align 1, !tbaa !13
  %i.fmt = sext i8 %i.fms to i32
  %i.fmu = load i8, ptr %i.fmr, align 1, !tbaa !13
  %i.fmv = sext i8 %i.fmu to i32
  br label %bb.lq

.split2960.us2984:                                ; preds = %.thread2708.us2981, %.thread2708.us.us.27
  %.us-phi2961.us = phi ptr [ %i.fna, %.thread2708.us.us.27 ], [ %.sroa.02376.133.us2982, %.thread2708.us2981 ] ; 4 uses
  %.us-phi2962.us = phi ptr [ %i.fnb, %.thread2708.us.us.27 ], [ %i.fml, %.thread2708.us2981 ]
  %i.fmw = add nuw nsw i32 %.014642966.us, 1      ; 2 uses
  %.not1787.us = icmp samesign ult i32 %i.fmw, %i.flf
  br i1 %.not1787.us, label %bb.lo, label %..critedge1906_crit_edge.us, !llvm.loop !176

.thread2708.us.us.27:                             ; preds = %bb.lp
  %i.fmx = getelementptr inbounds nuw i8, ptr %.502965.us, i64 16
  store <8 x i16> zeroinitializer, ptr %.502965.us, align 2, !tbaa !12
  %i.fmy = getelementptr inbounds nuw i8, ptr %.502965.us, i64 32
  store <8 x i16> zeroinitializer, ptr %i.fmx, align 2, !tbaa !12
  %i.fmz = getelementptr inbounds nuw i8, ptr %.502965.us, i64 48
  store <8 x i16> zeroinitializer, ptr %i.fmy, align 2, !tbaa !12
  %i.fna = getelementptr inbounds nuw i8, ptr %.sroa.02376.1312964.us, i64 16
  %i.fnb = getelementptr inbounds nuw i8, ptr %.502965.us, i64 56
  store <4 x i16> zeroinitializer, ptr %i.fmz, align 2, !tbaa !12
  store i32 0, ptr %i.fll, align 4, !tbaa !16
  store i32 0, ptr %i.flk, align 4, !tbaa !15
  br label %.split2960.us2984

..critedge1906_crit_edge.us:                      ; preds = %.split2960.us2984
  %indvars.iv.next3767 = add nuw nsw i64 %indvars.iv3766, 1 ; 2 uses
  %exitcond3770.not = icmp eq i64 %indvars.iv.next3767, %wide.trip.count3769
  br i1 %exitcond3770.not, label %.critedge1911, label %.lr.ph2968.us, !llvm.loop !177

bb.lt:                                            ; preds = %.lr.ph2974
end_hunk_0
