begin_hunk_0
  %i.ez = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.fb = sext i32 %i.eu to i64
  br label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i

_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i: ; preds = %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i, %.lr.ph.i11.i
end_hunk_0
begin_hunk_1
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !3
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %indvars.iv.i12.i
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3
  %18 = sub nsw i32 %i.fd, %.sroa.016.0.extract.trunc.i
  %reass.sub60 = sub i32 %i.ff, %.sroa.016.0.extract.trunc.i
  %i.fg = add i32 %reass.sub60, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
end_hunk_1
begin_hunk_2
  store ptr %i.dm, ptr %17, align 8, !tbaa !371
  store ptr %i.e, ptr %i.ez, align 8, !tbaa !200
  store i8 1, ptr %i.fa, align 8, !tbaa !373
  %i.fh = call noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %18, i32 noundef %i.fg, ptr noundef nonnull byval(%class.anon.202) align 8 %16, ptr noundef nonnull byval(%class.anon.204) align 8 %17) ; 0 uses
  %i.fi = load i32, ptr %i.e, align 4, !tbaa !3   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
end_hunk_2
begin_hunk_3
  %i.gk = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gl = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %15, i64 16
  br label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i.i.i.i.i

_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i.i.i.i.i: ; preds = %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
end_hunk_3
begin_hunk_4
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !3
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.gq
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !3
  %19 = sub nsw i32 %i.gs, %.sroa.016.0.extract.trunc.i
  %reass.sub59 = sub i32 %i.gu, %.sroa.016.0.extract.trunc.i
  %i.gv = add i32 %reass.sub59, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
end_hunk_4
begin_hunk_5
  store ptr %i.dm, ptr %15, align 8, !tbaa !371
  store ptr %i.d, ptr %i.gl, align 8, !tbaa !200
  store i8 1, ptr %i.gm, align 8, !tbaa !373
  %i.gw = call noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %19, i32 noundef %i.gv, ptr noundef nonnull byval(%class.anon.202) align 8 %14, ptr noundef nonnull byval(%class.anon.204) align 8 %15) ; 0 uses
  %i.gx = load i32, ptr %i.d, align 4, !tbaa !3   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
end_hunk_5
begin_hunk_6
  %i.hr = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.hs = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ht = getelementptr inbounds nuw i8, ptr %13, i64 16
  br label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i39.i.i.i.i.i

_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i39.i.i.i.i.i: ; preds = %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i39.i.i.i.i.i, %.preheader.i37.i.i.i.i.i
end_hunk_6
begin_hunk_7
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !3
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.hx
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !3
  %20 = sub nsw i32 %i.hz, %.sroa.016.0.extract.trunc.i
  %reass.sub = sub i32 %i.ib, %.sroa.016.0.extract.trunc.i
  %i.ic = add i32 %reass.sub, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
end_hunk_7
begin_hunk_8
  store ptr %i.dm, ptr %13, align 8, !tbaa !371
  store ptr %i.c, ptr %i.hs, align 8, !tbaa !200
  store i8 1, ptr %i.ht, align 8, !tbaa !373
  %i.id = call noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %20, i32 noundef %i.ic, ptr noundef nonnull byval(%class.anon.202) align 8 %12, ptr noundef nonnull byval(%class.anon.204) align 8 %13) ; 0 uses
  %i.ie = load i32, ptr %i.c, align 4, !tbaa !3   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
end_hunk_8
begin_hunk_9
  %i.in = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.io = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.w

._crit_edge.i.i.i.i.i:                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUliE_clEi.exit.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS5_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESH_EUlT_E_EEvPKmiibSI_ENKUlimE_clEim.exit41.i.i.i.i.i
end_hunk_9
begin_hunk_10
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !3
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %.021.i.i.i.i.i.i
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !3
  %21 = sub nsw i32 %i.jc, %.sroa.016.0.extract.trunc.i
  %reass.sub57 = sub i32 %i.je, %.sroa.016.0.extract.trunc.i
  %i.jf = add i32 %reass.sub57, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
end_hunk_10
begin_hunk_11
  store ptr %i.dm, ptr %11, align 8, !tbaa !371
  store ptr %i.b, ptr %i.io, align 8, !tbaa !200
  store i8 1, ptr %i.ip, align 8, !tbaa !373
  %i.jg = call noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %21, i32 noundef %i.jf, ptr noundef nonnull byval(%class.anon.202) align 8 %10, ptr noundef nonnull byval(%class.anon.204) align 8 %11) ; 0 uses
  %i.jh = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
end_hunk_11
begin_hunk_12
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !3
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.jr
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !3
  %22 = sub nsw i32 %i.jt, %.sroa.016.0.extract.trunc.i ; 6 uses
  %reass.sub56.i = sub i32 %i.jv, %.sroa.016.0.extract.trunc.i
  %i.jw = add i32 %reass.sub56.i, 1               ; 9 uses
  %.not.i51.i.i.i.i.i = icmp slt i32 %22, %i.jw
  br i1 %.not.i51.i.i.i.i.i, label %bb.z, label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i42.i.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.jx = add i32 %22, 63                         ; 2 uses
  %i.jy = srem i32 %i.jx, 64
  %i.jz = sub nsw i32 %i.jx, %i.jy                ; 5 uses
  %i.ka = and i32 %i.jw, -64                      ; 3 uses
end_hunk_12
begin_hunk_13
  %i.ke = zext nneg i32 %i.kd to i64
  %notmask.i.i52.i.i.i.i.i = shl nsw i64 -1, %i.ke
  %i.kf = xor i64 %notmask.i.i52.i.i.i.i.i, -1
  %i.kg = sub nsw i32 %i.jz, %22                  ; 2 uses
  %i.kh = zext nneg i32 %i.kg to i64
  %notmask.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.kh
  %i.ki = xor i64 %notmask.i.i.i.i.i.i.i.i, -1
end_hunk_13
begin_hunk_14
  br label %_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_.exit.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %_ZZN8facebook5velox4bits11findLastBitEPKmiibENKUliE_clEi.exit.i.i.i.i.i.i
  %.not37.i.i.i.i.i.i = icmp eq i32 %22, %i.jz
  br i1 %.not37.i.i.i.i.i.i, label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i42.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.lp = sdiv i32 %22, 64                        ; 2 uses
  %i.lq = sub nsw i32 %i.jz, %22                  ; 2 uses
  %i.lr = zext nneg i32 %i.lq to i64
  %notmask.i.i42.i.i.i.i.i.i = shl nsw i64 -1, %i.lr
  %i.ls = xor i64 %notmask.i.i42.i.i.i.i.i.i, -1
end_hunk_14
begin_hunk_15
  %i.mv = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.mw = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.mx = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i48.i.i.i.i.i

_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i48.i.i.i.i.i: ; preds = %_ZZN8facebook5velox6window9prestosql12_GLOBAL__N_122FirstLastValueFunctionILNS3_9ValueTypeE1EE24setRowNumbersIgnoreNullsERKNS0_17SelectivityVectorERKN5boost13intrusive_ptrINS0_6BufferEEESF_ENKUlT_E_clIiEEDaSG_.exit.i48.i.i.i.i.i, %.preheader.i46.i.i.i.i.i
end_hunk_15
begin_hunk_16
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !3
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.nb
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !3
  %23 = sub nsw i32 %i.nd, %.sroa.016.0.extract.trunc.i
  %reass.sub58 = sub i32 %i.nf, %.sroa.016.0.extract.trunc.i
  %i.ng = add i32 %reass.sub58, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
end_hunk_16
begin_hunk_17
  store ptr %i.dm, ptr %9, align 8, !tbaa !371
  store ptr %i.a, ptr %i.mw, align 8, !tbaa !200
  store i8 1, ptr %i.mx, align 8, !tbaa !373
  %i.nh = call noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %23, i32 noundef %i.ng, ptr noundef nonnull byval(%class.anon.202) align 8 %8, ptr noundef nonnull byval(%class.anon.204) align 8 %9) ; 0 uses
  %i.ni = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
end_hunk_17
