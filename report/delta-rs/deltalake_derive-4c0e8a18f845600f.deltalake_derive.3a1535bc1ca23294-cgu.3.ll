inline.NumInlined: 14
inline.NumDeleted: 12
begin_hunk_0_@_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern15is_contained_inCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [1 x i8], align 1                 ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [104 x i8], align 8               ; 17 uses
end_hunk_0
begin_hunk_1_@_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern15is_contained_inCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  br i1 %i.dk, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %4 = load ptr, ptr %i.k, align 8                ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 %storemerge.i
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = insertelement <16 x i8> poison, i8 %i.dm, i64 0
  %i.do = shufflevector <16 x i8> %i.dn, <16 x i8> poison, <16 x i32> zeroinitializer
  store <16 x i8> %i.do, ptr %i.e, align 16
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 1
  store ptr %2, ptr %i.d, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %3, ptr %i.dq, align 8
end_hunk_1
