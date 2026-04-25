inline.NumInlined: 2854
inline.NumDeleted: 714
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl23accum3d_sample_bilinearERKN9Imath_3_14Vec3IfEEiRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiifPfSD_SD_SD_:bb.a
  %i.bly = fsub float 1.000000e+00, %i.bf         ; 3 uses
  %i.blz = fsub float 1.000000e+00, %i.az         ; 5 uses
  %wide.trip.count153.i398 = zext nneg i32 %7 to i64 ; 4 uses
  %i.bma = load <8 x ptr>, ptr %i.e, align 16, !tbaa !95 ; 19 uses
  %min.iters.check1035 = icmp ult i32 %7, 12
  br i1 %min.iters.check1035, label %scalar.ph1034.preheader, label %vector.memcheck915

vector.memcheck915:                               ; preds = %.lr.ph148.i397
  %i.bmb = shl nuw nsw i64 %wide.trip.count153.i398, 2 ; 11 uses
  %scevgep916 = getelementptr i8, ptr %10, i64 %i.bmb ; 3 uses
  %scevgep917 = getelementptr i8, ptr %11, i64 %i.bmb ; 3 uses
  %scevgep918 = getelementptr i8, ptr %12, i64 %i.bmb
  %i.bmc = extractelement <8 x ptr> %i.bma, i64 1 ; 2 uses
  %scevgep919 = getelementptr i8, ptr %i.bmc, i64 %i.bmb ; 2 uses
  %i.bmd = extractelement <8 x ptr> %i.bma, i64 0 ; 2 uses
  %scevgep920 = getelementptr i8, ptr %i.bmd, i64 %i.bmb ; 2 uses
  %i.bme = extractelement <8 x ptr> %i.bma, i64 3 ; 2 uses
  %scevgep921 = getelementptr i8, ptr %i.bme, i64 %i.bmb ; 2 uses
  %i.bmf = extractelement <8 x ptr> %i.bma, i64 2 ; 2 uses
  %scevgep922 = getelementptr i8, ptr %i.bmf, i64 %i.bmb ; 2 uses
  %i.bmg = extractelement <8 x ptr> %i.bma, i64 5 ; 2 uses
  %scevgep923 = getelementptr i8, ptr %i.bmg, i64 %i.bmb ; 2 uses
  %i.bmh = extractelement <8 x ptr> %i.bma, i64 4 ; 2 uses
  %scevgep924 = getelementptr i8, ptr %i.bmh, i64 %i.bmb ; 2 uses
  %i.bmi = extractelement <8 x ptr> %i.bma, i64 7 ; 2 uses
  %scevgep925 = getelementptr i8, ptr %i.bmi, i64 %i.bmb ; 2 uses
  %i.bmj = extractelement <8 x ptr> %i.bma, i64 6 ; 4 uses
  %scevgep926 = getelementptr i8, ptr %i.bmj, i64 %i.bmb ; 3 uses
  %bound0927 = icmp ult ptr %10, %scevgep917
  %bound1928 = icmp ult ptr %11, %scevgep916
  %found.conflict929 = and i1 %bound0927, %bound1928
  %i.bmk = insertelement <8 x ptr> poison, ptr %10, i64 0
  %i.bml = shufflevector <8 x ptr> %i.bmk, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bmm = insertelement <8 x ptr> poison, ptr %scevgep918, i64 0 ; 2 uses
  %i.bmn = insertelement <8 x ptr> %i.bmm, ptr %scevgep919, i64 1
  %i.bmo = insertelement <8 x ptr> %i.bmn, ptr %scevgep920, i64 2
  %i.bmp = insertelement <8 x ptr> %i.bmo, ptr %scevgep921, i64 3
  %i.bmq = insertelement <8 x ptr> %i.bmp, ptr %scevgep922, i64 4
  %i.bmr = insertelement <8 x ptr> %i.bmq, ptr %scevgep923, i64 5
  %i.bms = insertelement <8 x ptr> %i.bmr, ptr %scevgep924, i64 6
  %i.bmt = insertelement <8 x ptr> %i.bms, ptr %scevgep925, i64 7 ; 2 uses
  %i.bmu = icmp ult <8 x ptr> %i.bml, %i.bmt
  %21 = shufflevector <8 x ptr> %i.bma, <8 x ptr> poison, <8 x i32> <i32 poison, i32 1, i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bmv = insertelement <8 x ptr> %21, ptr %12, i64 0
  %22 = shufflevector <8 x ptr> %i.bmv, <8 x ptr> %i.bma, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 10, i32 13, i32 12, i32 15> ; 2 uses
  %i.bmw = insertelement <8 x ptr> poison, ptr %scevgep916, i64 0
  %i.bmx = shufflevector <8 x ptr> %i.bmw, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bmy = icmp ult <8 x ptr> %22, %i.bmx
  %i.bmz = and <8 x i1> %i.bmu, %i.bmy
  %bound0962 = icmp ult ptr %10, %scevgep926
  %bound1963 = icmp ult ptr %i.bmj, %scevgep916
  %found.conflict964 = and i1 %bound0962, %bound1963
  %i.bna = insertelement <8 x ptr> poison, ptr %11, i64 0
  %i.bnb = shufflevector <8 x ptr> %i.bna, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bnc = icmp ult <8 x ptr> %i.bnb, %i.bmt
  %i.bnd = insertelement <8 x ptr> poison, ptr %scevgep917, i64 0
  %i.bne = shufflevector <8 x ptr> %i.bnd, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bnf = icmp ult <8 x ptr> %22, %i.bne
  %i.bng = and <8 x i1> %i.bnc, %i.bnf
  %bound0998 = icmp ult ptr %11, %scevgep926
  %bound1999 = icmp ult ptr %i.bmj, %scevgep917
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_117TextureSystemImpl23accum3d_sample_bilinearERKN9Imath_3_14Vec3IfEEiRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiifPfSD_SD_SD_:bb.a
  %i.bnp = insertelement <8 x ptr> %i.bno, ptr %scevgep926, i64 6
  %i.bnq = insertelement <8 x ptr> %i.bnp, ptr %scevgep925, i64 7
  %i.bnr = icmp ult <8 x ptr> %i.bni, %i.bnq
  %i.bns = shufflevector <8 x ptr> %i.bmm, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bnt = icmp ult <8 x ptr> %i.bma, %i.bns
  %i.bnu = and <8 x i1> %i.bnr, %i.bnt
  %rdx.op = or <8 x i1> %i.bmz, %i.bng
  %rdx.op1088 = or <8 x i1> %rdx.op, %i.bnu
  %i.bnv = bitcast <8 x i1> %rdx.op1088 to i8
  %i.bnw = icmp ne i8 %i.bnv, 0
  %op.rdx = or i1 %i.bnw, %found.conflict929
  %op.rdx1089 = or i1 %found.conflict964, %found.conflict1000
  %op.rdx1090 = or i1 %op.rdx, %op.rdx1089
  br i1 %op.rdx1090, label %scalar.ph1034.preheader, label %vector.ph1036
end_hunk_1
