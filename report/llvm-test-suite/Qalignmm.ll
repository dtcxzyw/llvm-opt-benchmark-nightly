inline.NumInlined: 16
inline.NumDeleted: 7
begin_hunk_0_@Q__align:bb.a

vector.ph1141:                                    ; preds = %vector.memcheck1121
  %n.vec1143 = and i64 %i.abd, -4                 ; 3 uses
  %13 = or disjoint i64 %n.vec1143, 1
  %14 = load float, ptr %i.aay, align 4, !tbaa !14, !alias.scope !120
  %15 = load float, ptr %i.aaz, align 4, !tbaa !14, !alias.scope !123
  %16 = fmul float %14, %15
  %broadcast.splatinsert1147 = insertelement <4 x float> poison, float %16, i64 0
  %broadcast.splat1148 = shufflevector <4 x float> %broadcast.splatinsert1147, <4 x float> poison, <4 x i32> zeroinitializer
  %17 = load float, ptr %i.aba, align 4, !tbaa !14, !alias.scope !120
  %broadcast.splatinsert1147.a = insertelement <4 x float> poison, float %17, i64 0
  %broadcast.splat1148.a = shufflevector <4 x float> %broadcast.splatinsert1147.a, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1144
end_hunk_0
begin_hunk_1_@Q__align:bb.a
  %i.abf = or disjoint i64 %index1145, 1          ; 2 uses
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.aat, i64 %i.abf ; 3 uses
  %wide.load1146 = load <4 x float>, ptr %i.abg, align 4, !tbaa !14, !alias.scope !125, !noalias !127
  %i.abh = fadd <4 x float> %wide.load1146, %broadcast.splat1148 ; 2 uses
  store <4 x float> %i.abh, ptr %i.abg, align 4, !tbaa !14, !alias.scope !125, !noalias !127
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %i.abf
  %wide.load1149 = load <4 x float>, ptr %i.abi, align 4, !tbaa !14, !alias.scope !129
  %i.abj = fmul <4 x float> %broadcast.splat1148.a, %wide.load1149
  %i.abk = fadd <4 x float> %i.abh, %i.abj
  store <4 x float> %i.abk, ptr %i.abg, align 4, !tbaa !14, !alias.scope !125, !noalias !127
  %index.next1152 = add nuw i64 %index1145, 4     ; 2 uses
end_hunk_1
begin_hunk_2_@Q__align:bb.a
  br i1 %cmp.n1154, label %.preheader556, label %scalar.ph1139.preheader

scalar.ph1139.preheader:                          ; preds = %vector.memcheck1121, %.lr.ph586, %middle.block1153
  %indvars.iv679.ph = phi i64 [ 1, %vector.memcheck1121 ], [ 1, %.lr.ph586 ], [ %13, %middle.block1153 ]
  br label %scalar.ph1139

.preheader556:                                    ; preds = %scalar.ph1139, %middle.block1153, %bb.x
end_hunk_2
begin_hunk_3_@Q__align:bb.a

vector.ph1176:                                    ; preds = %vector.memcheck1156
  %n.vec1178 = and i64 %i.abs, -4                 ; 3 uses
  %18 = or disjoint i64 %n.vec1178, 1
  %19 = load float, ptr %i.abn, align 4, !tbaa !14, !alias.scope !131
  %20 = load float, ptr %i.abo, align 4, !tbaa !14, !alias.scope !134
  %21 = fmul float %19, %20
  %broadcast.splatinsert1182 = insertelement <4 x float> poison, float %21, i64 0
  %broadcast.splat1183 = shufflevector <4 x float> %broadcast.splatinsert1182, <4 x float> poison, <4 x i32> zeroinitializer
  %22 = load float, ptr %i.abp, align 4, !tbaa !14, !alias.scope !131
  %broadcast.splatinsert1182.a = insertelement <4 x float> poison, float %22, i64 0
  %broadcast.splat1183.a = shufflevector <4 x float> %broadcast.splatinsert1182.a, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1179
end_hunk_3
begin_hunk_4_@Q__align:bb.a
  %i.abu = or disjoint i64 %index1180, 1          ; 2 uses
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %i.abu ; 3 uses
  %wide.load1181 = load <4 x float>, ptr %i.abv, align 4, !tbaa !14, !alias.scope !136, !noalias !138
  %i.abw = fadd <4 x float> %wide.load1181, %broadcast.splat1183 ; 2 uses
  store <4 x float> %i.abw, ptr %i.abv, align 4, !tbaa !14, !alias.scope !136, !noalias !138
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.abq, i64 %i.abu
  %wide.load1184 = load <4 x float>, ptr %i.abx, align 4, !tbaa !14, !alias.scope !140
  %i.aby = fmul <4 x float> %broadcast.splat1183.a, %wide.load1184
  %i.abz = fadd <4 x float> %i.abw, %i.aby
  store <4 x float> %i.abz, ptr %i.abv, align 4, !tbaa !14, !alias.scope !136, !noalias !138
  %index.next1187 = add nuw i64 %index1180, 4     ; 2 uses
end_hunk_4
begin_hunk_5_@Q__align:bb.a
  br i1 %cmp.n1189, label %.loopexit557.thread765, label %scalar.ph1174.preheader

scalar.ph1174.preheader:                          ; preds = %vector.memcheck1156, %.lr.ph589, %middle.block1188
  %indvars.iv684.ph = phi i64 [ 1, %vector.memcheck1156 ], [ 1, %.lr.ph589 ], [ %18, %middle.block1188 ]
  br label %scalar.ph1174

scalar.ph1139:                                    ; preds = %scalar.ph1139.preheader, %scalar.ph1139
end_hunk_5
begin_hunk_6_@Q__align_gapmap:bb.a

vector.ph1100:                                    ; preds = %vector.memcheck1080
  %n.vec1102 = and i64 %i.abb, -4                 ; 3 uses
  %15 = or disjoint i64 %n.vec1102, 1
  %16 = load float, ptr %i.aaw, align 4, !tbaa !14, !alias.scope !263
  %17 = load float, ptr %i.aax, align 4, !tbaa !14, !alias.scope !266
  %18 = fmul float %16, %17
  %broadcast.splatinsert1106 = insertelement <4 x float> poison, float %18, i64 0
  %broadcast.splat1107 = shufflevector <4 x float> %broadcast.splatinsert1106, <4 x float> poison, <4 x i32> zeroinitializer
  %19 = load float, ptr %i.aay, align 4, !tbaa !14, !alias.scope !263
  %broadcast.splatinsert1106.a = insertelement <4 x float> poison, float %19, i64 0
  %broadcast.splat1107.a = shufflevector <4 x float> %broadcast.splatinsert1106.a, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1103
end_hunk_6
begin_hunk_7_@Q__align_gapmap:bb.a
  %i.abd = or disjoint i64 %index1104, 1          ; 2 uses
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %i.aar, i64 %i.abd ; 3 uses
  %wide.load1105 = load <4 x float>, ptr %i.abe, align 4, !tbaa !14, !alias.scope !268, !noalias !270
  %i.abf = fadd <4 x float> %wide.load1105, %broadcast.splat1107 ; 2 uses
  store <4 x float> %i.abf, ptr %i.abe, align 4, !tbaa !14, !alias.scope !268, !noalias !270
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.aaz, i64 %i.abd
  %wide.load1108 = load <4 x float>, ptr %i.abg, align 4, !tbaa !14, !alias.scope !272
  %i.abh = fmul <4 x float> %broadcast.splat1107.a, %wide.load1108
  %i.abi = fadd <4 x float> %i.abf, %i.abh
  store <4 x float> %i.abi, ptr %i.abe, align 4, !tbaa !14, !alias.scope !268, !noalias !270
  %index.next1111 = add nuw i64 %index1104, 4     ; 2 uses
end_hunk_7
begin_hunk_8_@Q__align_gapmap:bb.a
  br i1 %cmp.n1113, label %.preheader556, label %scalar.ph1098.preheader

scalar.ph1098.preheader:                          ; preds = %vector.memcheck1080, %.lr.ph582, %middle.block1112
  %indvars.iv671.ph = phi i64 [ 1, %vector.memcheck1080 ], [ 1, %.lr.ph582 ], [ %15, %middle.block1112 ]
  br label %scalar.ph1098

.preheader556:                                    ; preds = %scalar.ph1098, %middle.block1112, %bb.w
end_hunk_8
begin_hunk_9_@Q__align_gapmap:bb.a

vector.ph1135:                                    ; preds = %vector.memcheck1115
  %n.vec1137 = and i64 %i.abq, -4                 ; 3 uses
  %20 = or disjoint i64 %n.vec1137, 1
  %21 = load float, ptr %i.abl, align 4, !tbaa !14, !alias.scope !274
  %22 = load float, ptr %i.abm, align 4, !tbaa !14, !alias.scope !277
  %23 = fmul float %21, %22
  %broadcast.splatinsert1141 = insertelement <4 x float> poison, float %23, i64 0
  %broadcast.splat1142 = shufflevector <4 x float> %broadcast.splatinsert1141, <4 x float> poison, <4 x i32> zeroinitializer
  %24 = load float, ptr %i.abn, align 4, !tbaa !14, !alias.scope !274
  %broadcast.splatinsert1141.a = insertelement <4 x float> poison, float %24, i64 0
  %broadcast.splat1142.a = shufflevector <4 x float> %broadcast.splatinsert1141.a, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1138
end_hunk_9
begin_hunk_10_@Q__align_gapmap:bb.a
  %i.abs = or disjoint i64 %index1139, 1          ; 2 uses
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %i.abs ; 3 uses
  %wide.load1140 = load <4 x float>, ptr %i.abt, align 4, !tbaa !14, !alias.scope !279, !noalias !281
  %i.abu = fadd <4 x float> %wide.load1140, %broadcast.splat1142 ; 2 uses
  store <4 x float> %i.abu, ptr %i.abt, align 4, !tbaa !14, !alias.scope !279, !noalias !281
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.abo, i64 %i.abs
  %wide.load1143 = load <4 x float>, ptr %i.abv, align 4, !tbaa !14, !alias.scope !283
  %i.abw = fmul <4 x float> %broadcast.splat1142.a, %wide.load1143
  %i.abx = fadd <4 x float> %i.abu, %i.abw
  store <4 x float> %i.abx, ptr %i.abt, align 4, !tbaa !14, !alias.scope !279, !noalias !281
  %index.next1146 = add nuw i64 %index1139, 4     ; 2 uses
end_hunk_10
begin_hunk_11_@Q__align_gapmap:bb.a
  br i1 %cmp.n1148, label %.loopexit557.thread754, label %scalar.ph1133.preheader

scalar.ph1133.preheader:                          ; preds = %vector.memcheck1115, %.lr.ph585, %middle.block1147
  %indvars.iv676.ph = phi i64 [ 1, %vector.memcheck1115 ], [ 1, %.lr.ph585 ], [ %20, %middle.block1147 ]
  br label %scalar.ph1133

scalar.ph1098:                                    ; preds = %scalar.ph1098.preheader, %scalar.ph1098
end_hunk_11
