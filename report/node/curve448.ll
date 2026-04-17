inline.NumInlined: 75
inline.NumDeleted: 30
begin_hunk_0_@point_double_internal:gf_add_RAW.exit23
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.y = load i64, ptr %i.x, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !9
  %i.ab = add i64 %i.aa, %i.y                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 56
end_hunk_0
begin_hunk_1_@point_double_internal:gf_add_RAW.exit23
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.db = load i64, ptr %i.da, align 8, !tbaa !9
  %i.dc = add i64 %i.db, %i.cz                    ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.de = lshr i64 %i.dc, 56                      ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
end_hunk_1
begin_hunk_2_@point_double_internal:gf_add_RAW.exit23
  %i.dh = and i64 %i.dc, 72057594037927935
  %i.di = lshr i64 %i.cw, 56
  %i.dj = add nuw nsw i64 %i.di, %i.dh
  store i64 %i.dj, ptr %7, align 8, !tbaa !9
  %i.dk = and i64 %i.cw, 72057594037927935
  %i.dl = lshr i64 %i.cq, 56
  %i.dm = add nuw nsw i64 %i.dl, %i.dk
end_hunk_2
begin_hunk_3_@point_double_internal:gf_add_RAW.exit23
  %i.io = shl i64 %i.in, 1
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %8 = load i64, ptr %i.iq, align 8, !tbaa !9
  %9 = shl i64 %8, 1                              ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 48
  %10 = load i64, ptr %i.is, align 16, !tbaa !9
  %11 = shl i64 %10, 1                            ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !9
  %12 = shl i64 %i.iv, 1                          ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 184
  %14 = lshr i64 %12, 56                          ; 2 uses
  %15 = add i64 %i.io, %14                        ; 2 uses
  %16 = and i64 %12, 72057594037927934
  %17 = lshr i64 %11, 56
  %18 = add nuw nsw i64 %17, %16                  ; 2 uses
  store i64 %18, ptr %13, align 8, !tbaa !9
  %19 = and i64 %11, 72057594037927934
  %20 = lshr i64 %9, 56
  %21 = add nuw nsw i64 %20, %19                  ; 2 uses
  store i64 %21, ptr %i.it, align 16, !tbaa !9
  %i.iw = and i64 %9, 72057594037927934
  %i.ix = lshr i64 %15, 56
  %22 = add nuw nsw i64 %i.ix, %i.iw              ; 2 uses
  store i64 %22, ptr %i.ir, align 8, !tbaa !9
  %23 = and i64 %15, 72057594037927935
  %24 = load i64, ptr %i.bk, align 16, !tbaa !9
  %25 = load i64, ptr %i.df, align 16, !tbaa !9
  %26 = load i64, ptr %i.gq, align 8, !tbaa !9
  %27 = add nuw nsw i64 %22, 144115188075855870
  %28 = sub i64 %27, %26                          ; 2 uses
  %i.iy = load i64, ptr %i.gr, align 16, !tbaa !9
  %i.iz = add nuw nsw i64 %21, 144115188075855870
  %29 = sub i64 %i.iz, %i.iy                      ; 2 uses
  %30 = load i64, ptr %i.dd, align 8, !tbaa !9
  %31 = add nuw nsw i64 %18, 144115188075855870
  %i.ja = sub i64 %31, %30                        ; 2 uses
  %32 = lshr i64 %i.ja, 56                        ; 2 uses
  %33 = and i64 %i.ja, 72057594037927935
  %i.jb = lshr i64 %29, 56
  %34 = add nuw nsw i64 %33, %i.jb
  store i64 %34, ptr %i.z, align 8, !tbaa !9
  %35 = and i64 %29, 72057594037927935
  %36 = lshr i64 %28, 56
  %37 = add nuw nsw i64 %35, %36
  store i64 %37, ptr %i.v, align 16, !tbaa !9
  %i.jc = and i64 %28, 72057594037927935
  %i.jd = load <2 x i64>, ptr %0, align 16, !tbaa !9
  %i.je = load <2 x i64>, ptr %i.ih, align 8, !tbaa !9
  %i.jf = shl <2 x i64> %i.jd, splat (i64 1)      ; 2 uses
end_hunk_3
begin_hunk_4_@point_double_internal:gf_add_RAW.exit23
  %i.ji = shl <2 x i64> %i.jg, splat (i64 1)      ; 2 uses
  %i.jj = extractelement <2 x i64> %i.ji, i64 1
  %i.jk = lshr i64 %i.jj, 56
  %i.jl = add nuw nsw i64 %i.jk, %23              ; 2 uses
  store i64 %i.jl, ptr %i.ip, align 16, !tbaa !9
  %i.jm = and <2 x i64> %i.ji, splat (i64 72057594037927934)
  %i.jn = lshr <2 x i64> %i.jh, splat (i64 56)
end_hunk_4
begin_hunk_5_@point_double_internal:gf_add_RAW.exit23
  store i64 %i.ju, ptr %i.ii, align 8, !tbaa !9
  %i.jv = extractelement <2 x i64> %i.jf, i64 0
  %i.jw = and i64 %i.jv, 72057594037927934
  %i.jx = add nuw nsw i64 %i.jw, %14              ; 2 uses
  store i64 %i.jx, ptr %i.ig, align 16, !tbaa !9
  %i.jy = add nuw nsw i64 %i.jx, 144115188075855870
  %i.jz = sub i64 %i.jy, %24                      ; 2 uses
  %i.ka = load <2 x i64>, ptr %i.gf, align 8, !tbaa !9
  %i.kb = add nuw nsw <2 x i64> %i.js, splat (i64 144115188075855870)
  %i.kc = load <2 x i64>, ptr %i.gg, align 16, !tbaa !9
end_hunk_5
begin_hunk_6_@point_double_internal:gf_add_RAW.exit23
  %i.ke = sub <2 x i64> %i.kb, %i.ka              ; 2 uses
  %i.kf = sub <2 x i64> %i.kd, %i.kc              ; 2 uses
  %i.kg = add nuw nsw i64 %i.jl, 144115188075855868
  %i.kh = sub i64 %i.kg, %25
  %i.ki = add i64 %32, %i.kh                      ; 2 uses
  %i.kj = lshr i64 %i.ki, 56
  %i.kk = add nuw nsw i64 %i.kj, %i.jc
  store i64 %i.kk, ptr %i.s, align 8, !tbaa !9
end_hunk_6
begin_hunk_7_@point_double_internal:gf_add_RAW.exit23
  %i.kv = add nuw nsw i64 %i.kt, %i.ku
  store i64 %i.kv, ptr %i.c, align 8, !tbaa !9
  %i.kw = and i64 %i.jz, 72057594037927935
  %i.kx = add nuw nsw i64 %32, %i.kw
  store i64 %i.kx, ptr %3, align 16, !tbaa !9
  call void @ossl_gf_mul(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #7
  call void @ossl_gf_mul(ptr noundef nonnull %i.ig, ptr noundef nonnull %i.bk, ptr noundef nonnull %3) #7
end_hunk_7
