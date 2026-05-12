inline.NumInlined: 6
inline.NumDeleted: 4
begin_hunk_0_@partQ__align:bb.a

vector.ph1223:                                    ; preds = %vector.memcheck1203
  %n.vec1225 = and i64 %i.aao, -4                 ; 3 uses
  %19 = or disjoint i64 %n.vec1225, 1
  %20 = load float, ptr %i.aaj, align 4, !tbaa !14, !alias.scope !132
  %21 = load float, ptr %i.aak, align 4, !tbaa !14, !alias.scope !135
  %22 = fmul float %20, %21
  %broadcast.splatinsert1229 = insertelement <4 x float> poison, float %22, i64 0
  %broadcast.splat1230 = shufflevector <4 x float> %broadcast.splatinsert1229, <4 x float> poison, <4 x i32> zeroinitializer
  %23 = load float, ptr %i.aal, align 4, !tbaa !14, !alias.scope !132
  %broadcast.splatinsert1229.a = insertelement <4 x float> poison, float %23, i64 0
  %broadcast.splat1230.a = shufflevector <4 x float> %broadcast.splatinsert1229.a, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1226
end_hunk_0
begin_hunk_1_@partQ__align:bb.a
  %i.aaq = or disjoint i64 %index1227, 1          ; 2 uses
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %i.aaq ; 3 uses
  %wide.load1228 = load <4 x float>, ptr %i.aar, align 4, !tbaa !14, !alias.scope !137, !noalias !139
  %i.aas = fadd <4 x float> %wide.load1228, %broadcast.splat1230 ; 2 uses
  store <4 x float> %i.aas, ptr %i.aar, align 4, !tbaa !14, !alias.scope !137, !noalias !139
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.aam, i64 %i.aaq
  %wide.load1231 = load <4 x float>, ptr %i.aat, align 4, !tbaa !14, !alias.scope !141
  %i.aau = fmul <4 x float> %broadcast.splat1230.a, %wide.load1231
  %i.aav = fadd <4 x float> %i.aas, %i.aau
  store <4 x float> %i.aav, ptr %i.aar, align 4, !tbaa !14, !alias.scope !137, !noalias !139
  %index.next1234 = add nuw i64 %index1227, 4     ; 2 uses
end_hunk_1
begin_hunk_2_@partQ__align:bb.a
  br i1 %cmp.n1236, label %.preheader638, label %scalar.ph1221.preheader

scalar.ph1221.preheader:                          ; preds = %vector.memcheck1203, %.lr.ph665, %middle.block1235
  %indvars.iv756.ph = phi i64 [ 1, %vector.memcheck1203 ], [ 1, %.lr.ph665 ], [ %19, %middle.block1235 ]
  br label %scalar.ph1221

.preheader638:                                    ; preds = %scalar.ph1221, %middle.block1235, %bb.r
end_hunk_2
begin_hunk_3_@partQ__align:bb.a

vector.ph1258:                                    ; preds = %vector.memcheck1238
  %n.vec1260 = and i64 %i.abd, -4                 ; 3 uses
  %24 = or disjoint i64 %n.vec1260, 1
  %25 = load float, ptr %i.aay, align 4, !tbaa !14, !alias.scope !143
  %26 = load float, ptr %i.aaz, align 4, !tbaa !14, !alias.scope !146
  %27 = fmul float %25, %26
  %broadcast.splatinsert1264 = insertelement <4 x float> poison, float %27, i64 0
  %broadcast.splat1265 = shufflevector <4 x float> %broadcast.splatinsert1264, <4 x float> poison, <4 x i32> zeroinitializer
  %28 = load float, ptr %i.aba, align 4, !tbaa !14, !alias.scope !143
  %broadcast.splatinsert1264.a = insertelement <4 x float> poison, float %28, i64 0
  %broadcast.splat1265.a = shufflevector <4 x float> %broadcast.splatinsert1264.a, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1261
end_hunk_3
begin_hunk_4_@partQ__align:bb.a
  %i.abf = or disjoint i64 %index1262, 1          ; 2 uses
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %i.abf ; 3 uses
  %wide.load1263 = load <4 x float>, ptr %i.abg, align 4, !tbaa !14, !alias.scope !148, !noalias !150
  %i.abh = fadd <4 x float> %wide.load1263, %broadcast.splat1265 ; 2 uses
  store <4 x float> %i.abh, ptr %i.abg, align 4, !tbaa !14, !alias.scope !148, !noalias !150
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %i.abf
  %wide.load1266 = load <4 x float>, ptr %i.abi, align 4, !tbaa !14, !alias.scope !152
  %i.abj = fmul <4 x float> %broadcast.splat1265.a, %wide.load1266
  %i.abk = fadd <4 x float> %i.abh, %i.abj
  store <4 x float> %i.abk, ptr %i.abg, align 4, !tbaa !14, !alias.scope !148, !noalias !150
  %index.next1269 = add nuw i64 %index1262, 4     ; 2 uses
end_hunk_4
begin_hunk_5_@partQ__align:bb.a
  br i1 %cmp.n1271, label %.loopexit639.thread846, label %scalar.ph1256.preheader

scalar.ph1256.preheader:                          ; preds = %vector.memcheck1238, %.lr.ph668, %middle.block1270
  %indvars.iv761.ph = phi i64 [ 1, %vector.memcheck1238 ], [ 1, %.lr.ph668 ], [ %24, %middle.block1270 ]
  br label %scalar.ph1256

scalar.ph1221:                                    ; preds = %scalar.ph1221.preheader, %scalar.ph1221
end_hunk_5
