inline.NumInlined: 2245
inline.NumDeleted: 444
begin_hunk_0_@_ZN5arrow8internal13unpack_scalarIhEEvPKhPT_iii:bb.a
  %.val80.i.i.i.i = load i32, ptr %i.akh, align 1 ; 5 uses
  %.val81.i.i.i.i = load i32, ptr %i.akg, align 1 ; 6 uses
  %.val82.i.i.i.i = load i32, ptr %.02531.i145.i, align 1 ; 5 uses
  %i.akm = tail call i32 @llvm.fshl.i32(i32 %.val80.i.i.i.i, i32 %.val81.i.i.i.i, i32 1)
  %i.akn = tail call i32 @llvm.fshl.i32(i32 %.val81.i.i.i.i, i32 %.val82.i.i.i.i, i32 4)
  %i.ako = lshr i32 %.val80.i.i.i.i, 20
  %i.akp = lshr i32 %.val80.i.i.i.i, 13
  %i.akq = lshr i32 %.val80.i.i.i.i, 6
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal13unpack_scalarIhEEvPKhPT_iii:bb.a
  %i.aky = trunc i32 %i.ako to i8
  %i.akz = trunc i32 %i.akp to i8
  %i.ala = trunc i32 %i.akq to i8
  %i.alb = trunc i32 %i.akm to i8
  %i.alc = trunc nuw i32 %i.akr to i8
  %i.ald = trunc i32 %i.aks to i8
  %i.ale = trunc i32 %i.akt to i8
  %i.alf = trunc i32 %i.aku to i8
  %i.alg = trunc i32 %i.akn to i8
  %i.alh = trunc i32 %i.akv to i8
  %i.ali = trunc i32 %i.akw to i8
  %i.alj = trunc i32 %i.akx to i8
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal13unpack_scalarIhEEvPKhPT_iii:bb.a
  %.val77.i.i.i148.i = load i32, ptr %i.akk, align 1 ; 6 uses
  %.val78.i.i.i147.i = load i32, ptr %i.akj, align 1 ; 5 uses
  %.val79.i.i.i.i = load i32, ptr %i.aki, align 1 ; 6 uses
  %i.alz = tail call i32 @llvm.fshl.i32(i32 %.val79.i.i.i.i, i32 %.val80.i.i.i.i, i32 5)
  %5 = lshr i32 %.val79.i.i.i.i, 9
  %6 = lshr i32 %.val79.i.i.i.i, 2
  %7 = tail call i32 @llvm.fshl.i32(i32 %.val.i.i.i149.i, i32 %.val77.i.i.i148.i, i32 3)
  %8 = tail call i32 @llvm.fshl.i32(i32 %.val77.i.i.i148.i, i32 %.val78.i.i.i147.i, i32 6)
  %i.ama = tail call i32 @llvm.fshl.i32(i32 %.val78.i.i.i147.i, i32 %.val79.i.i.i.i, i32 2)
  %i.amb = lshr i32 %.val.i.i.i149.i, 25
  %i.amc = lshr i32 %.val.i.i.i149.i, 18
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal13unpack_scalarIhEEvPKhPT_iii:bb.a
  %i.amk = lshr i32 %.val78.i.i.i147.i, 5
  %i.aml = lshr i32 %.val79.i.i.i.i, 23
  %i.amm = lshr i32 %.val79.i.i.i.i, 16
  %i.amn = trunc i32 %5 to i8
  %i.amo = trunc i32 %6 to i8
  %i.amp = trunc i32 %i.alz to i8
  %i.amq = insertelement <16 x i8> %i.alx, i8 %i.amp, i64 13
  %i.amr = insertelement <16 x i8> %i.amq, i8 %i.amo, i64 14
  %i.ams = insertelement <16 x i8> %i.amr, i8 %i.amn, i64 15
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal13unpack_scalarIhEEvPKhPT_iii:bb.a
  %i.amv = trunc i32 %i.amc to i8
  %i.amw = trunc i32 %i.amd to i8
  %i.amx = trunc i32 %i.ame to i8
  %i.amy = trunc i32 %7 to i8
  %i.amz = trunc i32 %i.amf to i8
  %i.ana = trunc i32 %i.amg to i8
  %i.anb = trunc i32 %i.amh to i8
  %i.anc = trunc i32 %.val77.i.i.i148.i to i8
  %i.and = trunc i32 %8 to i8
  %i.ane = trunc i32 %i.ami to i8
  %i.anf = trunc i32 %i.amj to i8
  %i.ang = trunc i32 %i.amk to i8
end_hunk_4
begin_hunk_5_@_ZN5arrow8internal13unpack_scalarItEEvPKhPT_iii:bb.a
  %i.ye = getelementptr inbounds nuw i8, ptr %.02531.i134.i, i64 12
  %i.yf = getelementptr inbounds nuw i8, ptr %.02531.i134.i, i64 16
  %.val76.i.i.i.i = load i32, ptr %.02531.i134.i, align 1 ; 5 uses
  %i.yg = lshr i32 %.val76.i.i.i.i, 15
  %i.yh = lshr i32 %.val76.i.i.i.i, 25
  %i.yi = lshr i32 %.val76.i.i.i.i, 20
  %i.yj = trunc nuw nsw i32 %i.yh to i16
  %i.yk = trunc nuw nsw i32 %i.yi to i16
  %i.yl = trunc i32 %i.yg to i16
  %i.ym = trunc i32 %.val76.i.i.i.i to i16        ; 3 uses
  %i.yn = lshr i16 %i.ym, 10
  %i.yo = lshr i16 %i.ym, 5
end_hunk_5
begin_hunk_6_@_ZN5arrow8internal13unpack_scalarItEEvPKhPT_iii:bb.a
  %i.yv = getelementptr inbounds nuw i8, ptr %.02630.i135.i, i64 16
  %.val75.i.i.i.i = load i32, ptr %i.yc, align 1  ; 6 uses
  %i.yw = tail call i32 @llvm.fshl.i32(i32 %.val75.i.i.i.i, i32 %.val76.i.i.i.i, i32 2)
  %i.yx = lshr i32 %.val75.i.i.i.i, 13
  %i.yy = lshr i32 %.val75.i.i.i.i, 23
  %i.yz = lshr i32 %.val75.i.i.i.i, 18
  %i.za = trunc i32 %i.yw to i16
  %i.zb = trunc nuw nsw i32 %i.yy to i16
  %i.zc = trunc nuw nsw i32 %i.yz to i16
  %i.zd = trunc i32 %i.yx to i16
  %i.ze = trunc i32 %.val75.i.i.i.i to i16        ; 2 uses
  %i.zf = lshr i16 %i.ze, 3
  %i.zg = insertelement <8 x i16> %i.yu, i16 %i.za, i64 6
end_hunk_6
begin_hunk_7_@_ZN5arrow8internal13unpack_scalarItEEvPKhPT_iii:bb.a
  %i.aee = getelementptr inbounds nuw i8, ptr %.02531.i154.i, i64 16
  %i.aef = getelementptr inbounds nuw i8, ptr %.02531.i154.i, i64 20
  %.val78.i.i.i.i = load i32, ptr %.02531.i154.i, align 1 ; 5 uses
  %i.aeg = lshr i32 %.val78.i.i.i.i, 12
  %i.aeh = lshr i32 %.val78.i.i.i.i, 24
  %i.aei = lshr i32 %.val78.i.i.i.i, 18
  %i.aej = trunc nuw nsw i32 %i.aeh to i16
  %i.aek = trunc nuw nsw i32 %i.aei to i16
  %i.ael = trunc i32 %i.aeg to i16
  %i.aem = trunc i32 %.val78.i.i.i.i to i16       ; 2 uses
  %i.aen = lshr i16 %i.aem, 6
  %i.aeo = insertelement <8 x i16> poison, i16 %i.aem, i64 0
end_hunk_7
begin_hunk_8_@_ZN5arrow8internal13unpack_scalarItEEvPKhPT_iii:bb.a
  %i.aga = and <8 x i16> %i.afz, <i16 63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 63, i16 -1>
  %i.agb = getelementptr inbounds nuw i8, ptr %.02630.i155.i, i64 32
  %.val75.i.i.i157.i = load i32, ptr %i.aed, align 1 ; 5 uses
  %i.agc = lshr i32 %.val75.i.i.i157.i, 12
  %i.agd = lshr i32 %.val75.i.i.i157.i, 24
  %i.age = lshr i32 %.val75.i.i.i157.i, 18
  %i.agf = trunc nuw nsw i32 %i.agd to i16
  %i.agg = trunc nuw nsw i32 %i.age to i16
  %i.agh = trunc i32 %i.agc to i16
  %i.agi = trunc i32 %.val75.i.i.i157.i to i16    ; 2 uses
  %i.agj = lshr i16 %i.agi, 6
  %i.agk = insertelement <8 x i16> poison, i16 %i.agi, i64 0
end_hunk_8
