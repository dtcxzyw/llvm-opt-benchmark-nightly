inline.NumInlined: 15
inline.NumDeleted: 8
begin_hunk_0_@main:bb.a
  %indvars.iv57.i31 = phi i64 [ %indvars.iv.next58.i36, %bb.f ], [ 0, %middle.block106 ] ; 7 uses
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i, %bb.f ], [ 1, %middle.block106 ] ; 9 uses
  %i.ck = mul nuw nsw i64 %indvars.iv57.i31, 9600
  %scevgep = getelementptr nuw i8, ptr %i.f, i64 %i.ck
  %i.cl = mul nuw nsw i64 %indvars.iv57.i31, 9608
  %i.cm = getelementptr i8, ptr %i.f, i64 %i.cl
  %scevgep108 = getelementptr i8, ptr %i.cm, i64 8
  %i.cn = mul nuw nsw i64 %indvars.iv57.i31, 8000 ; 3 uses
  %scevgep109 = getelementptr i8, ptr %i.t, i64 %i.cn
  %i.co = add nuw i64 %i.cn, 8000                 ; 2 uses
  %scevgep110 = getelementptr i8, ptr %i.t, i64 %i.co
  %scevgep111 = getelementptr i8, ptr %i.aa, i64 %i.co
  %scevgep112 = getelementptr i8, ptr %i.aa, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [9600 x i8], ptr %i.f, i64 %indvars.iv57.i31 ; 4 uses
  %min.iters.check135 = icmp samesign ult i64 %indvars.iv55.i, 4
end_hunk_0
begin_hunk_1_@main:bb.a
.preheader35.i:                                   ; preds = %scalar.ph134, %middle.block144
  %i.cv = getelementptr inbounds nuw [8000 x i8], ptr %i.aa, i64 %indvars.iv57.i31
  %i.cw = getelementptr inbounds nuw [8000 x i8], ptr %i.t, i64 %indvars.iv57.i31
  %2 = insertelement <4 x ptr> poison, ptr %scevgep, i64 0 ; 2 uses
  %3 = insertelement <4 x ptr> %2, ptr %i.t, i64 1
  %4 = insertelement <4 x ptr> %3, ptr %i.aa, i64 2
  %5 = insertelement <4 x ptr> %4, ptr %scevgep112, i64 3
  %6 = insertelement <4 x ptr> poison, ptr %scevgep110, i64 0
  %7 = insertelement <4 x ptr> %6, ptr %scevgep108, i64 1 ; 2 uses
  %8 = shufflevector <4 x ptr> %7, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %9 = shufflevector <4 x ptr> %2, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %10 = insertelement <4 x ptr> %9, ptr %scevgep109, i64 0
  %11 = insertelement <4 x ptr> poison, ptr %scevgep111, i64 0
  %12 = shufflevector <4 x ptr> %7, <4 x ptr> %11, <4 x i32> <i32 1, i32 0, i32 4, i32 4>
  %min.iters.check = icmp samesign ult i64 %indvars.iv55.i, 2
  %13 = icmp ult <4 x ptr> %5, %8
  %14 = icmp ult <4 x ptr> %10, %12
  %15 = and <4 x i1> %14, %13
  %16 = bitcast <4 x i1> %15 to i4
  %.not = icmp eq i4 %16, 0
  %n.vec = and i64 %indvars.iv55.i, 9223372036854775806 ; 3 uses
  %cmp.n = icmp eq i64 %indvars.iv55.i, %n.vec
  br label %.preheader.i35
end_hunk_1
begin_hunk_2_@main:bb.a
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv51.i ; 2 uses
  %invariant.gep38.i = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv51.i ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv51.i ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = select i1 %min.iters.check, i1 true, i1 %.not.not
  br i1 %brmerge, label %scalar.ph124.preheader, label %vector.ph125

vector.ph125:                                     ; preds = %.preheader.i35
end_hunk_2
begin_hunk_3_@main:bb.a
  %indvars.iv57.i38 = phi i64 [ %indvars.iv.next58.i55, %bb.g ], [ 0, %bb.f ] ; 7 uses
  %indvars.iv55.i39 = phi i64 [ %indvars.iv.next56.i56, %bb.g ], [ 1, %bb.f ] ; 9 uses
  %i.ej = mul nuw nsw i64 %indvars.iv57.i38, 9600
  %scevgep148 = getelementptr nuw i8, ptr %i.m, i64 %i.ej
  %i.ek = mul nuw nsw i64 %indvars.iv57.i38, 9608
  %i.el = getelementptr i8, ptr %i.m, i64 %i.ek
  %scevgep149 = getelementptr i8, ptr %i.el, i64 8
  %i.em = mul nuw nsw i64 %indvars.iv57.i38, 8000 ; 3 uses
  %scevgep150 = getelementptr i8, ptr %i.t, i64 %i.em
  %i.en = add nuw i64 %i.em, 8000                 ; 2 uses
  %scevgep151 = getelementptr i8, ptr %i.t, i64 %i.en
  %scevgep152 = getelementptr i8, ptr %i.aa, i64 %i.en
  %scevgep153 = getelementptr i8, ptr %i.aa, i64 %i.em
  %i.eo = getelementptr inbounds nuw [9600 x i8], ptr %i.m, i64 %indvars.iv57.i38 ; 4 uses
  %min.iters.check186 = icmp samesign ult i64 %indvars.iv55.i39, 4
end_hunk_3
begin_hunk_4_@main:bb.a
.preheader35.i43:                                 ; preds = %scalar.ph185, %middle.block195
  %i.eu = getelementptr inbounds nuw [8000 x i8], ptr %i.aa, i64 %indvars.iv57.i38
  %i.ev = getelementptr inbounds nuw [8000 x i8], ptr %i.t, i64 %indvars.iv57.i38
  %17 = insertelement <4 x ptr> poison, ptr %scevgep148, i64 0 ; 2 uses
  %18 = insertelement <4 x ptr> %17, ptr %i.t, i64 1
  %19 = insertelement <4 x ptr> %18, ptr %i.aa, i64 2
  %20 = insertelement <4 x ptr> %19, ptr %scevgep153, i64 3
  %21 = insertelement <4 x ptr> poison, ptr %scevgep151, i64 0
  %22 = insertelement <4 x ptr> %21, ptr %scevgep149, i64 1 ; 2 uses
  %23 = shufflevector <4 x ptr> %22, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %24 = shufflevector <4 x ptr> %17, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %25 = insertelement <4 x ptr> %24, ptr %scevgep150, i64 0
  %26 = insertelement <4 x ptr> poison, ptr %scevgep152, i64 0
  %27 = shufflevector <4 x ptr> %22, <4 x ptr> %26, <4 x i32> <i32 1, i32 0, i32 4, i32 4>
  %min.iters.check170 = icmp samesign ult i64 %indvars.iv55.i39, 2
  %28 = icmp ult <4 x ptr> %20, %23
  %29 = icmp ult <4 x ptr> %25, %27
  %30 = and <4 x i1> %29, %28
  %31 = bitcast <4 x i1> %30 to i4
  %.not201 = icmp eq i4 %31, 0
  %n.vec173 = and i64 %indvars.iv55.i39, 9223372036854775806 ; 3 uses
  %cmp.n183 = icmp eq i64 %indvars.iv55.i39, %n.vec173
  br label %.preheader.i44
end_hunk_4
begin_hunk_5_@main:bb.a
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv51.i45 ; 2 uses
  %invariant.gep38.i47 = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv51.i45 ; 3 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv51.i45 ; 2 uses
  %.not201.not = xor i1 %.not201, true
  %brmerge209 = select i1 %min.iters.check170, i1 true, i1 %.not201.not
  br i1 %brmerge209, label %scalar.ph169.preheader, label %vector.ph171

vector.ph171:                                     ; preds = %.preheader.i44
end_hunk_5
