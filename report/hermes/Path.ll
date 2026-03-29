begin_hunk_0
  store i8 92, ptr %next.gep, align 1, !tbaa !12
  br label %pred.store.continue

pred.store.continue:                              ; preds = %vector.body, %pred.store.if
  %i.ap = extractelement <16 x i1> %i.am, i64 1
  br i1 %i.ap, label %pred.store.if82, label %pred.store.continue83

end_hunk_0
begin_hunk_1
  store i8 92, ptr %next.gep50, align 1, !tbaa !12
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.continue, %pred.store.if82
  %i.aq = extractelement <16 x i1> %i.am, i64 2
  br i1 %i.aq, label %pred.store.if84, label %pred.store.continue85

end_hunk_1
begin_hunk_2
  store i8 92, ptr %next.gep51, align 1, !tbaa !12
  br label %pred.store.continue85

pred.store.continue85:                            ; preds = %pred.store.continue83, %pred.store.if84
  %i.ar = extractelement <16 x i1> %i.am, i64 3
  br i1 %i.ar, label %pred.store.if86, label %pred.store.continue87

end_hunk_2
begin_hunk_3
  store i8 92, ptr %next.gep52, align 1, !tbaa !12
  br label %pred.store.continue87

pred.store.continue87:                            ; preds = %pred.store.continue85, %pred.store.if86
  %i.as = extractelement <16 x i1> %i.am, i64 4
  br i1 %i.as, label %pred.store.if88, label %pred.store.continue89

end_hunk_3
begin_hunk_4
  store i8 92, ptr %next.gep53, align 1, !tbaa !12
  br label %pred.store.continue89

pred.store.continue89:                            ; preds = %pred.store.continue87, %pred.store.if88
  %i.at = extractelement <16 x i1> %i.am, i64 5
  br i1 %i.at, label %pred.store.if90, label %pred.store.continue91

end_hunk_4
begin_hunk_5
  store i8 92, ptr %next.gep54, align 1, !tbaa !12
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.continue89, %pred.store.if90
  %i.au = extractelement <16 x i1> %i.am, i64 6
  br i1 %i.au, label %pred.store.if92, label %pred.store.continue93

end_hunk_5
begin_hunk_6
  store i8 92, ptr %next.gep55, align 1, !tbaa !12
  br label %pred.store.continue93

pred.store.continue93:                            ; preds = %pred.store.continue91, %pred.store.if92
  %i.av = extractelement <16 x i1> %i.am, i64 7
  br i1 %i.av, label %pred.store.if94, label %pred.store.continue95

end_hunk_6
begin_hunk_7
  store i8 92, ptr %next.gep56, align 1, !tbaa !12
  br label %pred.store.continue95

pred.store.continue95:                            ; preds = %pred.store.continue93, %pred.store.if94
  %i.aw = extractelement <16 x i1> %i.am, i64 8
  br i1 %i.aw, label %pred.store.if96, label %pred.store.continue97

end_hunk_7
begin_hunk_8
  store i8 92, ptr %next.gep57, align 1, !tbaa !12
  br label %pred.store.continue97

pred.store.continue97:                            ; preds = %pred.store.continue95, %pred.store.if96
  %i.ax = extractelement <16 x i1> %i.am, i64 9
  br i1 %i.ax, label %pred.store.if98, label %pred.store.continue99

end_hunk_8
begin_hunk_9
  store i8 92, ptr %next.gep58, align 1, !tbaa !12
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.continue97, %pred.store.if98
  %i.ay = extractelement <16 x i1> %i.am, i64 10
  br i1 %i.ay, label %pred.store.if100, label %pred.store.continue101

end_hunk_9
begin_hunk_10
  store i8 92, ptr %next.gep59, align 1, !tbaa !12
  br label %pred.store.continue101

pred.store.continue101:                           ; preds = %pred.store.continue99, %pred.store.if100
  %i.az = extractelement <16 x i1> %i.am, i64 11
  br i1 %i.az, label %pred.store.if102, label %pred.store.continue103

end_hunk_10
begin_hunk_11
  store i8 92, ptr %next.gep60, align 1, !tbaa !12
  br label %pred.store.continue103

pred.store.continue103:                           ; preds = %pred.store.continue101, %pred.store.if102
  %i.ba = extractelement <16 x i1> %i.am, i64 12
  br i1 %i.ba, label %pred.store.if104, label %pred.store.continue105

end_hunk_11
begin_hunk_12
  store i8 92, ptr %next.gep61, align 1, !tbaa !12
  br label %pred.store.continue105

pred.store.continue105:                           ; preds = %pred.store.continue103, %pred.store.if104
  %i.bb = extractelement <16 x i1> %i.am, i64 13
  br i1 %i.bb, label %pred.store.if106, label %pred.store.continue107

end_hunk_12
begin_hunk_13
  store i8 92, ptr %next.gep62, align 1, !tbaa !12
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.continue105, %pred.store.if106
  %i.bc = extractelement <16 x i1> %i.am, i64 14
  br i1 %i.bc, label %pred.store.if108, label %pred.store.continue109

end_hunk_13
begin_hunk_14
  store i8 92, ptr %next.gep63, align 1, !tbaa !12
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.continue107, %pred.store.if108
  %i.bd = extractelement <16 x i1> %i.am, i64 15
  br i1 %i.bd, label %pred.store.if110, label %pred.store.continue111

end_hunk_14
begin_hunk_15
  store i8 92, ptr %next.gep64, align 1, !tbaa !12
  br label %pred.store.continue111

pred.store.continue111:                           ; preds = %pred.store.continue109, %pred.store.if110
  %i.be = extractelement <16 x i1> %i.an, i64 0
  br i1 %i.be, label %pred.store.if112, label %pred.store.continue113

end_hunk_15
begin_hunk_16
  store i8 92, ptr %next.gep65, align 1, !tbaa !12
  br label %pred.store.continue113

pred.store.continue113:                           ; preds = %pred.store.continue111, %pred.store.if112
  %i.bf = extractelement <16 x i1> %i.an, i64 1
  br i1 %i.bf, label %pred.store.if114, label %pred.store.continue115

end_hunk_16
begin_hunk_17
  store i8 92, ptr %next.gep66, align 1, !tbaa !12
  br label %pred.store.continue115

pred.store.continue115:                           ; preds = %pred.store.continue113, %pred.store.if114
  %i.bg = extractelement <16 x i1> %i.an, i64 2
  br i1 %i.bg, label %pred.store.if116, label %pred.store.continue117

end_hunk_17
begin_hunk_18
  store i8 92, ptr %next.gep67, align 1, !tbaa !12
  br label %pred.store.continue117

pred.store.continue117:                           ; preds = %pred.store.continue115, %pred.store.if116
  %i.bh = extractelement <16 x i1> %i.an, i64 3
  br i1 %i.bh, label %pred.store.if118, label %pred.store.continue119

end_hunk_18
begin_hunk_19
  store i8 92, ptr %next.gep68, align 1, !tbaa !12
  br label %pred.store.continue119

pred.store.continue119:                           ; preds = %pred.store.continue117, %pred.store.if118
  %i.bi = extractelement <16 x i1> %i.an, i64 4
  br i1 %i.bi, label %pred.store.if120, label %pred.store.continue121

end_hunk_19
begin_hunk_20
  store i8 92, ptr %next.gep69, align 1, !tbaa !12
  br label %pred.store.continue121

pred.store.continue121:                           ; preds = %pred.store.continue119, %pred.store.if120
  %i.bj = extractelement <16 x i1> %i.an, i64 5
  br i1 %i.bj, label %pred.store.if122, label %pred.store.continue123

end_hunk_20
begin_hunk_21
  store i8 92, ptr %next.gep70, align 1, !tbaa !12
  br label %pred.store.continue123

pred.store.continue123:                           ; preds = %pred.store.continue121, %pred.store.if122
  %i.bk = extractelement <16 x i1> %i.an, i64 6
  br i1 %i.bk, label %pred.store.if124, label %pred.store.continue125

end_hunk_21
begin_hunk_22
  store i8 92, ptr %next.gep71, align 1, !tbaa !12
  br label %pred.store.continue125

pred.store.continue125:                           ; preds = %pred.store.continue123, %pred.store.if124
  %i.bl = extractelement <16 x i1> %i.an, i64 7
  br i1 %i.bl, label %pred.store.if126, label %pred.store.continue127

end_hunk_22
begin_hunk_23
  store i8 92, ptr %next.gep72, align 1, !tbaa !12
  br label %pred.store.continue127

pred.store.continue127:                           ; preds = %pred.store.continue125, %pred.store.if126
  %i.bm = extractelement <16 x i1> %i.an, i64 8
  br i1 %i.bm, label %pred.store.if128, label %pred.store.continue129

end_hunk_23
begin_hunk_24
  store i8 92, ptr %next.gep73, align 1, !tbaa !12
  br label %pred.store.continue129

pred.store.continue129:                           ; preds = %pred.store.continue127, %pred.store.if128
  %i.bn = extractelement <16 x i1> %i.an, i64 9
  br i1 %i.bn, label %pred.store.if130, label %pred.store.continue131

end_hunk_24
begin_hunk_25
  store i8 92, ptr %next.gep74, align 1, !tbaa !12
  br label %pred.store.continue131

pred.store.continue131:                           ; preds = %pred.store.continue129, %pred.store.if130
  %i.bo = extractelement <16 x i1> %i.an, i64 10
  br i1 %i.bo, label %pred.store.if132, label %pred.store.continue133

end_hunk_25
begin_hunk_26
  store i8 92, ptr %next.gep75, align 1, !tbaa !12
  br label %pred.store.continue133

pred.store.continue133:                           ; preds = %pred.store.continue131, %pred.store.if132
  %i.bp = extractelement <16 x i1> %i.an, i64 11
  br i1 %i.bp, label %pred.store.if134, label %pred.store.continue135

end_hunk_26
begin_hunk_27
  store i8 92, ptr %next.gep76, align 1, !tbaa !12
  br label %pred.store.continue135

pred.store.continue135:                           ; preds = %pred.store.continue133, %pred.store.if134
  %i.bq = extractelement <16 x i1> %i.an, i64 12
  br i1 %i.bq, label %pred.store.if136, label %pred.store.continue137

end_hunk_27
begin_hunk_28
  store i8 92, ptr %next.gep77, align 1, !tbaa !12
  br label %pred.store.continue137

pred.store.continue137:                           ; preds = %pred.store.continue135, %pred.store.if136
  %i.br = extractelement <16 x i1> %i.an, i64 13
  br i1 %i.br, label %pred.store.if138, label %pred.store.continue139

end_hunk_28
begin_hunk_29
  store i8 92, ptr %next.gep78, align 1, !tbaa !12
  br label %pred.store.continue139

pred.store.continue139:                           ; preds = %pred.store.continue137, %pred.store.if138
  %i.bs = extractelement <16 x i1> %i.an, i64 14
  br i1 %i.bs, label %pred.store.if140, label %pred.store.continue141

end_hunk_29
begin_hunk_30
  store i8 92, ptr %next.gep79, align 1, !tbaa !12
  br label %pred.store.continue141

pred.store.continue141:                           ; preds = %pred.store.continue139, %pred.store.if140
  %i.bt = extractelement <16 x i1> %i.an, i64 15
  br i1 %i.bt, label %pred.store.if142, label %pred.store.continue143

end_hunk_30
begin_hunk_31
  store i8 92, ptr %next.gep80, align 1, !tbaa !12
  br label %pred.store.continue143

pred.store.continue143:                           ; preds = %pred.store.continue141, %pred.store.if142
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !55
end_hunk_31
begin_hunk_32
  store i8 92, ptr %next.gep147, align 1, !tbaa !12
  br label %pred.store.continue157

pred.store.continue157:                           ; preds = %vec.epilog.vector.body, %pred.store.if156
  %i.cf = extractelement <8 x i1> %i.cd, i64 1
  br i1 %i.cf, label %pred.store.if158, label %pred.store.continue159

end_hunk_32
begin_hunk_33
  store i8 92, ptr %next.gep148, align 1, !tbaa !12
  br label %pred.store.continue159

pred.store.continue159:                           ; preds = %pred.store.continue157, %pred.store.if158
  %i.cg = extractelement <8 x i1> %i.cd, i64 2
  br i1 %i.cg, label %pred.store.if160, label %pred.store.continue161

end_hunk_33
begin_hunk_34
  store i8 92, ptr %next.gep149, align 1, !tbaa !12
  br label %pred.store.continue161

pred.store.continue161:                           ; preds = %pred.store.continue159, %pred.store.if160
  %i.ch = extractelement <8 x i1> %i.cd, i64 3
  br i1 %i.ch, label %pred.store.if162, label %pred.store.continue163

end_hunk_34
begin_hunk_35
  store i8 92, ptr %next.gep150, align 1, !tbaa !12
  br label %pred.store.continue163

pred.store.continue163:                           ; preds = %pred.store.continue161, %pred.store.if162
  %i.ci = extractelement <8 x i1> %i.cd, i64 4
  br i1 %i.ci, label %pred.store.if164, label %pred.store.continue165

end_hunk_35
begin_hunk_36
  store i8 92, ptr %next.gep151, align 1, !tbaa !12
  br label %pred.store.continue165

pred.store.continue165:                           ; preds = %pred.store.continue163, %pred.store.if164
  %i.cj = extractelement <8 x i1> %i.cd, i64 5
  br i1 %i.cj, label %pred.store.if166, label %pred.store.continue167

end_hunk_36
begin_hunk_37
  store i8 92, ptr %next.gep152, align 1, !tbaa !12
  br label %pred.store.continue167

pred.store.continue167:                           ; preds = %pred.store.continue165, %pred.store.if166
  %i.ck = extractelement <8 x i1> %i.cd, i64 6
  br i1 %i.ck, label %pred.store.if168, label %pred.store.continue169

end_hunk_37
begin_hunk_38
  store i8 92, ptr %next.gep153, align 1, !tbaa !12
  br label %pred.store.continue169

pred.store.continue169:                           ; preds = %pred.store.continue167, %pred.store.if168
  %i.cl = extractelement <8 x i1> %i.cd, i64 7
  br i1 %i.cl, label %pred.store.if170, label %pred.store.continue171

end_hunk_38
begin_hunk_39
  store i8 92, ptr %next.gep154, align 1, !tbaa !12
  br label %pred.store.continue171

pred.store.continue171:                           ; preds = %pred.store.continue169, %pred.store.if170
  %index.next172 = add nuw i64 %index146, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next172, %n.vec145
  br i1 %i.cm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !59
end_hunk_39
begin_hunk_40
  store i8 47, ptr %next.gep, align 1, !tbaa !12
  br label %pred.store.continue

pred.store.continue:                              ; preds = %vector.body, %pred.store.if
  %i.bj = extractelement <16 x i1> %i.bg, i64 1
  br i1 %i.bj, label %pred.store.if43, label %pred.store.continue44

end_hunk_40
begin_hunk_41
  store i8 47, ptr %next.gep11, align 1, !tbaa !12
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.continue, %pred.store.if43
  %i.bk = extractelement <16 x i1> %i.bg, i64 2
  br i1 %i.bk, label %pred.store.if45, label %pred.store.continue46

end_hunk_41
begin_hunk_42
  store i8 47, ptr %next.gep12, align 1, !tbaa !12
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.continue44, %pred.store.if45
  %i.bl = extractelement <16 x i1> %i.bg, i64 3
  br i1 %i.bl, label %pred.store.if47, label %pred.store.continue48

end_hunk_42
begin_hunk_43
  store i8 47, ptr %next.gep13, align 1, !tbaa !12
  br label %pred.store.continue48

pred.store.continue48:                            ; preds = %pred.store.continue46, %pred.store.if47
  %i.bm = extractelement <16 x i1> %i.bg, i64 4
  br i1 %i.bm, label %pred.store.if49, label %pred.store.continue50

end_hunk_43
begin_hunk_44
  store i8 47, ptr %next.gep14, align 1, !tbaa !12
  br label %pred.store.continue50

pred.store.continue50:                            ; preds = %pred.store.continue48, %pred.store.if49
  %i.bn = extractelement <16 x i1> %i.bg, i64 5
  br i1 %i.bn, label %pred.store.if51, label %pred.store.continue52

end_hunk_44
begin_hunk_45
  store i8 47, ptr %next.gep15, align 1, !tbaa !12
  br label %pred.store.continue52

pred.store.continue52:                            ; preds = %pred.store.continue50, %pred.store.if51
  %i.bo = extractelement <16 x i1> %i.bg, i64 6
  br i1 %i.bo, label %pred.store.if53, label %pred.store.continue54

end_hunk_45
begin_hunk_46
  store i8 47, ptr %next.gep16, align 1, !tbaa !12
  br label %pred.store.continue54

pred.store.continue54:                            ; preds = %pred.store.continue52, %pred.store.if53
  %i.bp = extractelement <16 x i1> %i.bg, i64 7
  br i1 %i.bp, label %pred.store.if55, label %pred.store.continue56

end_hunk_46
begin_hunk_47
  store i8 47, ptr %next.gep17, align 1, !tbaa !12
  br label %pred.store.continue56

pred.store.continue56:                            ; preds = %pred.store.continue54, %pred.store.if55
  %i.bq = extractelement <16 x i1> %i.bg, i64 8
  br i1 %i.bq, label %pred.store.if57, label %pred.store.continue58

end_hunk_47
begin_hunk_48
  store i8 47, ptr %next.gep18, align 1, !tbaa !12
  br label %pred.store.continue58

pred.store.continue58:                            ; preds = %pred.store.continue56, %pred.store.if57
  %i.br = extractelement <16 x i1> %i.bg, i64 9
  br i1 %i.br, label %pred.store.if59, label %pred.store.continue60

end_hunk_48
begin_hunk_49
  store i8 47, ptr %next.gep19, align 1, !tbaa !12
  br label %pred.store.continue60

pred.store.continue60:                            ; preds = %pred.store.continue58, %pred.store.if59
  %i.bs = extractelement <16 x i1> %i.bg, i64 10
  br i1 %i.bs, label %pred.store.if61, label %pred.store.continue62

end_hunk_49
begin_hunk_50
  store i8 47, ptr %next.gep20, align 1, !tbaa !12
  br label %pred.store.continue62

pred.store.continue62:                            ; preds = %pred.store.continue60, %pred.store.if61
  %i.bt = extractelement <16 x i1> %i.bg, i64 11
  br i1 %i.bt, label %pred.store.if63, label %pred.store.continue64

end_hunk_50
begin_hunk_51
  store i8 47, ptr %next.gep21, align 1, !tbaa !12
  br label %pred.store.continue64

pred.store.continue64:                            ; preds = %pred.store.continue62, %pred.store.if63
  %i.bu = extractelement <16 x i1> %i.bg, i64 12
  br i1 %i.bu, label %pred.store.if65, label %pred.store.continue66

end_hunk_51
begin_hunk_52
  store i8 47, ptr %next.gep22, align 1, !tbaa !12
  br label %pred.store.continue66

pred.store.continue66:                            ; preds = %pred.store.continue64, %pred.store.if65
  %i.bv = extractelement <16 x i1> %i.bg, i64 13
  br i1 %i.bv, label %pred.store.if67, label %pred.store.continue68

end_hunk_52
begin_hunk_53
  store i8 47, ptr %next.gep23, align 1, !tbaa !12
  br label %pred.store.continue68

pred.store.continue68:                            ; preds = %pred.store.continue66, %pred.store.if67
  %i.bw = extractelement <16 x i1> %i.bg, i64 14
  br i1 %i.bw, label %pred.store.if69, label %pred.store.continue70

end_hunk_53
begin_hunk_54
  store i8 47, ptr %next.gep24, align 1, !tbaa !12
  br label %pred.store.continue70

pred.store.continue70:                            ; preds = %pred.store.continue68, %pred.store.if69
  %i.bx = extractelement <16 x i1> %i.bg, i64 15
  br i1 %i.bx, label %pred.store.if71, label %pred.store.continue72

end_hunk_54
begin_hunk_55
  store i8 47, ptr %next.gep25, align 1, !tbaa !12
  br label %pred.store.continue72

pred.store.continue72:                            ; preds = %pred.store.continue70, %pred.store.if71
  %i.by = extractelement <16 x i1> %i.bh, i64 0
  br i1 %i.by, label %pred.store.if73, label %pred.store.continue74

end_hunk_55
begin_hunk_56
  store i8 47, ptr %next.gep26, align 1, !tbaa !12
  br label %pred.store.continue74

pred.store.continue74:                            ; preds = %pred.store.continue72, %pred.store.if73
  %i.bz = extractelement <16 x i1> %i.bh, i64 1
  br i1 %i.bz, label %pred.store.if75, label %pred.store.continue76

end_hunk_56
begin_hunk_57
  store i8 47, ptr %next.gep27, align 1, !tbaa !12
  br label %pred.store.continue76

pred.store.continue76:                            ; preds = %pred.store.continue74, %pred.store.if75
  %i.ca = extractelement <16 x i1> %i.bh, i64 2
  br i1 %i.ca, label %pred.store.if77, label %pred.store.continue78

end_hunk_57
begin_hunk_58
  store i8 47, ptr %next.gep28, align 1, !tbaa !12
  br label %pred.store.continue78

pred.store.continue78:                            ; preds = %pred.store.continue76, %pred.store.if77
  %i.cb = extractelement <16 x i1> %i.bh, i64 3
  br i1 %i.cb, label %pred.store.if79, label %pred.store.continue80

end_hunk_58
begin_hunk_59
  store i8 47, ptr %next.gep29, align 1, !tbaa !12
  br label %pred.store.continue80

pred.store.continue80:                            ; preds = %pred.store.continue78, %pred.store.if79
  %i.cc = extractelement <16 x i1> %i.bh, i64 4
  br i1 %i.cc, label %pred.store.if81, label %pred.store.continue82

end_hunk_59
begin_hunk_60
  store i8 47, ptr %next.gep30, align 1, !tbaa !12
  br label %pred.store.continue82

pred.store.continue82:                            ; preds = %pred.store.continue80, %pred.store.if81
  %i.cd = extractelement <16 x i1> %i.bh, i64 5
  br i1 %i.cd, label %pred.store.if83, label %pred.store.continue84

end_hunk_60
begin_hunk_61
  store i8 47, ptr %next.gep31, align 1, !tbaa !12
  br label %pred.store.continue84

pred.store.continue84:                            ; preds = %pred.store.continue82, %pred.store.if83
  %i.ce = extractelement <16 x i1> %i.bh, i64 6
  br i1 %i.ce, label %pred.store.if85, label %pred.store.continue86

end_hunk_61
begin_hunk_62
  store i8 47, ptr %next.gep32, align 1, !tbaa !12
  br label %pred.store.continue86

pred.store.continue86:                            ; preds = %pred.store.continue84, %pred.store.if85
  %i.cf = extractelement <16 x i1> %i.bh, i64 7
  br i1 %i.cf, label %pred.store.if87, label %pred.store.continue88

end_hunk_62
begin_hunk_63
  store i8 47, ptr %next.gep33, align 1, !tbaa !12
  br label %pred.store.continue88

pred.store.continue88:                            ; preds = %pred.store.continue86, %pred.store.if87
  %i.cg = extractelement <16 x i1> %i.bh, i64 8
  br i1 %i.cg, label %pred.store.if89, label %pred.store.continue90

end_hunk_63
begin_hunk_64
  store i8 47, ptr %next.gep34, align 1, !tbaa !12
  br label %pred.store.continue90

pred.store.continue90:                            ; preds = %pred.store.continue88, %pred.store.if89
  %i.ch = extractelement <16 x i1> %i.bh, i64 9
  br i1 %i.ch, label %pred.store.if91, label %pred.store.continue92

end_hunk_64
begin_hunk_65
  store i8 47, ptr %next.gep35, align 1, !tbaa !12
  br label %pred.store.continue92

pred.store.continue92:                            ; preds = %pred.store.continue90, %pred.store.if91
  %i.ci = extractelement <16 x i1> %i.bh, i64 10
  br i1 %i.ci, label %pred.store.if93, label %pred.store.continue94

end_hunk_65
begin_hunk_66
  store i8 47, ptr %next.gep36, align 1, !tbaa !12
  br label %pred.store.continue94

pred.store.continue94:                            ; preds = %pred.store.continue92, %pred.store.if93
  %i.cj = extractelement <16 x i1> %i.bh, i64 11
  br i1 %i.cj, label %pred.store.if95, label %pred.store.continue96

end_hunk_66
begin_hunk_67
  store i8 47, ptr %next.gep37, align 1, !tbaa !12
  br label %pred.store.continue96

pred.store.continue96:                            ; preds = %pred.store.continue94, %pred.store.if95
  %i.ck = extractelement <16 x i1> %i.bh, i64 12
  br i1 %i.ck, label %pred.store.if97, label %pred.store.continue98

end_hunk_67
begin_hunk_68
  store i8 47, ptr %next.gep38, align 1, !tbaa !12
  br label %pred.store.continue98

pred.store.continue98:                            ; preds = %pred.store.continue96, %pred.store.if97
  %i.cl = extractelement <16 x i1> %i.bh, i64 13
  br i1 %i.cl, label %pred.store.if99, label %pred.store.continue100

end_hunk_68
begin_hunk_69
  store i8 47, ptr %next.gep39, align 1, !tbaa !12
  br label %pred.store.continue100

pred.store.continue100:                           ; preds = %pred.store.continue98, %pred.store.if99
  %i.cm = extractelement <16 x i1> %i.bh, i64 14
  br i1 %i.cm, label %pred.store.if101, label %pred.store.continue102

end_hunk_69
begin_hunk_70
  store i8 47, ptr %next.gep40, align 1, !tbaa !12
  br label %pred.store.continue102

pred.store.continue102:                           ; preds = %pred.store.continue100, %pred.store.if101
  %i.cn = extractelement <16 x i1> %i.bh, i64 15
  br i1 %i.cn, label %pred.store.if103, label %pred.store.continue104

end_hunk_70
begin_hunk_71
  store i8 47, ptr %next.gep41, align 1, !tbaa !12
  br label %pred.store.continue104

pred.store.continue104:                           ; preds = %pred.store.continue102, %pred.store.if103
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !76
end_hunk_71
begin_hunk_72
  store i8 47, ptr %next.gep108, align 1, !tbaa !12
  br label %pred.store.continue118

pred.store.continue118:                           ; preds = %vec.epilog.vector.body, %pred.store.if117
  %i.cz = extractelement <8 x i1> %i.cx, i64 1
  br i1 %i.cz, label %pred.store.if119, label %pred.store.continue120

end_hunk_72
begin_hunk_73
  store i8 47, ptr %next.gep109, align 1, !tbaa !12
  br label %pred.store.continue120

pred.store.continue120:                           ; preds = %pred.store.continue118, %pred.store.if119
  %i.da = extractelement <8 x i1> %i.cx, i64 2
  br i1 %i.da, label %pred.store.if121, label %pred.store.continue122

end_hunk_73
begin_hunk_74
  store i8 47, ptr %next.gep110, align 1, !tbaa !12
  br label %pred.store.continue122

pred.store.continue122:                           ; preds = %pred.store.continue120, %pred.store.if121
  %i.db = extractelement <8 x i1> %i.cx, i64 3
  br i1 %i.db, label %pred.store.if123, label %pred.store.continue124

end_hunk_74
begin_hunk_75
  store i8 47, ptr %next.gep111, align 1, !tbaa !12
  br label %pred.store.continue124

pred.store.continue124:                           ; preds = %pred.store.continue122, %pred.store.if123
  %i.dc = extractelement <8 x i1> %i.cx, i64 4
  br i1 %i.dc, label %pred.store.if125, label %pred.store.continue126

end_hunk_75
begin_hunk_76
  store i8 47, ptr %next.gep112, align 1, !tbaa !12
  br label %pred.store.continue126

pred.store.continue126:                           ; preds = %pred.store.continue124, %pred.store.if125
  %i.dd = extractelement <8 x i1> %i.cx, i64 5
  br i1 %i.dd, label %pred.store.if127, label %pred.store.continue128

end_hunk_76
begin_hunk_77
  store i8 47, ptr %next.gep113, align 1, !tbaa !12
  br label %pred.store.continue128

pred.store.continue128:                           ; preds = %pred.store.continue126, %pred.store.if127
  %i.de = extractelement <8 x i1> %i.cx, i64 6
  br i1 %i.de, label %pred.store.if129, label %pred.store.continue130

end_hunk_77
begin_hunk_78
  store i8 47, ptr %next.gep114, align 1, !tbaa !12
  br label %pred.store.continue130

pred.store.continue130:                           ; preds = %pred.store.continue128, %pred.store.if129
  %i.df = extractelement <8 x i1> %i.cx, i64 7
  br i1 %i.df, label %pred.store.if131, label %pred.store.continue132

end_hunk_78
begin_hunk_79
  store i8 47, ptr %next.gep115, align 1, !tbaa !12
  br label %pred.store.continue132

pred.store.continue132:                           ; preds = %pred.store.continue130, %pred.store.if131
  %index.next133 = add nuw i64 %index107, 8       ; 2 uses
  %i.dg = icmp eq i64 %index.next133, %n.vec106
  br i1 %i.dg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !77
end_hunk_79
