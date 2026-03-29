begin_hunk_0
  store i8 10, ptr %i.p, align 1, !tbaa !8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %vector.body85, %pred.store.if
  %i.y = extractelement <16 x i1> %i.v, i64 1
  br i1 %i.y, label %pred.store.if88, label %pred.store.continue89

end_hunk_0
begin_hunk_1
  store i8 10, ptr %i.aa, align 1, !tbaa !8
  br label %pred.store.continue89

pred.store.continue89:                            ; preds = %pred.store.continue, %pred.store.if88
  %i.ab = extractelement <16 x i1> %i.v, i64 2
  br i1 %i.ab, label %pred.store.if90, label %pred.store.continue91

end_hunk_1
begin_hunk_2
  store i8 10, ptr %i.ad, align 1, !tbaa !8
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.continue89, %pred.store.if90
  %i.ae = extractelement <16 x i1> %i.v, i64 3
  br i1 %i.ae, label %pred.store.if92, label %pred.store.continue93

end_hunk_2
begin_hunk_3
  store i8 10, ptr %i.ag, align 1, !tbaa !8
  br label %pred.store.continue93

pred.store.continue93:                            ; preds = %pred.store.continue91, %pred.store.if92
  %i.ah = extractelement <16 x i1> %i.v, i64 4
  br i1 %i.ah, label %pred.store.if94, label %pred.store.continue95

end_hunk_3
begin_hunk_4
  store i8 10, ptr %i.aj, align 1, !tbaa !8
  br label %pred.store.continue95

pred.store.continue95:                            ; preds = %pred.store.continue93, %pred.store.if94
  %i.ak = extractelement <16 x i1> %i.v, i64 5
  br i1 %i.ak, label %pred.store.if96, label %pred.store.continue97

end_hunk_4
begin_hunk_5
  store i8 10, ptr %i.am, align 1, !tbaa !8
  br label %pred.store.continue97

pred.store.continue97:                            ; preds = %pred.store.continue95, %pred.store.if96
  %i.an = extractelement <16 x i1> %i.v, i64 6
  br i1 %i.an, label %pred.store.if98, label %pred.store.continue99

end_hunk_5
begin_hunk_6
  store i8 10, ptr %i.ap, align 1, !tbaa !8
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.continue97, %pred.store.if98
  %i.aq = extractelement <16 x i1> %i.v, i64 7
  br i1 %i.aq, label %pred.store.if100, label %pred.store.continue101

end_hunk_6
begin_hunk_7
  store i8 10, ptr %i.as, align 1, !tbaa !8
  br label %pred.store.continue101

pred.store.continue101:                           ; preds = %pred.store.continue99, %pred.store.if100
  %i.at = extractelement <16 x i1> %i.v, i64 8
  br i1 %i.at, label %pred.store.if102, label %pred.store.continue103

end_hunk_7
begin_hunk_8
  store i8 10, ptr %i.av, align 1, !tbaa !8
  br label %pred.store.continue103

pred.store.continue103:                           ; preds = %pred.store.continue101, %pred.store.if102
  %i.aw = extractelement <16 x i1> %i.v, i64 9
  br i1 %i.aw, label %pred.store.if104, label %pred.store.continue105

end_hunk_8
begin_hunk_9
  store i8 10, ptr %i.ay, align 1, !tbaa !8
  br label %pred.store.continue105

pred.store.continue105:                           ; preds = %pred.store.continue103, %pred.store.if104
  %i.az = extractelement <16 x i1> %i.v, i64 10
  br i1 %i.az, label %pred.store.if106, label %pred.store.continue107

end_hunk_9
begin_hunk_10
  store i8 10, ptr %i.bb, align 1, !tbaa !8
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.continue105, %pred.store.if106
  %i.bc = extractelement <16 x i1> %i.v, i64 11
  br i1 %i.bc, label %pred.store.if108, label %pred.store.continue109

end_hunk_10
begin_hunk_11
  store i8 10, ptr %i.be, align 1, !tbaa !8
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.continue107, %pred.store.if108
  %i.bf = extractelement <16 x i1> %i.v, i64 12
  br i1 %i.bf, label %pred.store.if110, label %pred.store.continue111

end_hunk_11
begin_hunk_12
  store i8 10, ptr %i.bh, align 1, !tbaa !8
  br label %pred.store.continue111

pred.store.continue111:                           ; preds = %pred.store.continue109, %pred.store.if110
  %i.bi = extractelement <16 x i1> %i.v, i64 13
  br i1 %i.bi, label %pred.store.if112, label %pred.store.continue113

end_hunk_12
begin_hunk_13
  store i8 10, ptr %i.bk, align 1, !tbaa !8
  br label %pred.store.continue113

pred.store.continue113:                           ; preds = %pred.store.continue111, %pred.store.if112
  %i.bl = extractelement <16 x i1> %i.v, i64 14
  br i1 %i.bl, label %pred.store.if114, label %pred.store.continue115

end_hunk_13
begin_hunk_14
  store i8 10, ptr %i.bn, align 1, !tbaa !8
  br label %pred.store.continue115

pred.store.continue115:                           ; preds = %pred.store.continue113, %pred.store.if114
  %i.bo = extractelement <16 x i1> %i.v, i64 15
  br i1 %i.bo, label %pred.store.if116, label %pred.store.continue117

end_hunk_14
begin_hunk_15
  store i8 10, ptr %i.bq, align 1, !tbaa !8
  br label %pred.store.continue117

pred.store.continue117:                           ; preds = %pred.store.continue115, %pred.store.if116
  %i.br = extractelement <16 x i1> %i.w, i64 0
  br i1 %i.br, label %pred.store.if118, label %pred.store.continue119

end_hunk_15
begin_hunk_16
  store i8 10, ptr %i.bt, align 1, !tbaa !8
  br label %pred.store.continue119

pred.store.continue119:                           ; preds = %pred.store.continue117, %pred.store.if118
  %i.bu = extractelement <16 x i1> %i.w, i64 1
  br i1 %i.bu, label %pred.store.if120, label %pred.store.continue121

end_hunk_16
begin_hunk_17
  store i8 10, ptr %i.bw, align 1, !tbaa !8
  br label %pred.store.continue121

pred.store.continue121:                           ; preds = %pred.store.continue119, %pred.store.if120
  %i.bx = extractelement <16 x i1> %i.w, i64 2
  br i1 %i.bx, label %pred.store.if122, label %pred.store.continue123

end_hunk_17
begin_hunk_18
  store i8 10, ptr %i.bz, align 1, !tbaa !8
  br label %pred.store.continue123

pred.store.continue123:                           ; preds = %pred.store.continue121, %pred.store.if122
  %i.ca = extractelement <16 x i1> %i.w, i64 3
  br i1 %i.ca, label %pred.store.if124, label %pred.store.continue125

end_hunk_18
begin_hunk_19
  store i8 10, ptr %i.cc, align 1, !tbaa !8
  br label %pred.store.continue125

pred.store.continue125:                           ; preds = %pred.store.continue123, %pred.store.if124
  %i.cd = extractelement <16 x i1> %i.w, i64 4
  br i1 %i.cd, label %pred.store.if126, label %pred.store.continue127

end_hunk_19
begin_hunk_20
  store i8 10, ptr %i.cf, align 1, !tbaa !8
  br label %pred.store.continue127

pred.store.continue127:                           ; preds = %pred.store.continue125, %pred.store.if126
  %i.cg = extractelement <16 x i1> %i.w, i64 5
  br i1 %i.cg, label %pred.store.if128, label %pred.store.continue129

end_hunk_20
begin_hunk_21
  store i8 10, ptr %i.ci, align 1, !tbaa !8
  br label %pred.store.continue129

pred.store.continue129:                           ; preds = %pred.store.continue127, %pred.store.if128
  %i.cj = extractelement <16 x i1> %i.w, i64 6
  br i1 %i.cj, label %pred.store.if130, label %pred.store.continue131

end_hunk_21
begin_hunk_22
  store i8 10, ptr %i.cl, align 1, !tbaa !8
  br label %pred.store.continue131

pred.store.continue131:                           ; preds = %pred.store.continue129, %pred.store.if130
  %i.cm = extractelement <16 x i1> %i.w, i64 7
  br i1 %i.cm, label %pred.store.if132, label %pred.store.continue133

end_hunk_22
begin_hunk_23
  store i8 10, ptr %i.co, align 1, !tbaa !8
  br label %pred.store.continue133

pred.store.continue133:                           ; preds = %pred.store.continue131, %pred.store.if132
  %i.cp = extractelement <16 x i1> %i.w, i64 8
  br i1 %i.cp, label %pred.store.if134, label %pred.store.continue135

end_hunk_23
begin_hunk_24
  store i8 10, ptr %i.cr, align 1, !tbaa !8
  br label %pred.store.continue135

pred.store.continue135:                           ; preds = %pred.store.continue133, %pred.store.if134
  %i.cs = extractelement <16 x i1> %i.w, i64 9
  br i1 %i.cs, label %pred.store.if136, label %pred.store.continue137

end_hunk_24
begin_hunk_25
  store i8 10, ptr %i.cu, align 1, !tbaa !8
  br label %pred.store.continue137

pred.store.continue137:                           ; preds = %pred.store.continue135, %pred.store.if136
  %i.cv = extractelement <16 x i1> %i.w, i64 10
  br i1 %i.cv, label %pred.store.if138, label %pred.store.continue139

end_hunk_25
begin_hunk_26
  store i8 10, ptr %i.cx, align 1, !tbaa !8
  br label %pred.store.continue139

pred.store.continue139:                           ; preds = %pred.store.continue137, %pred.store.if138
  %i.cy = extractelement <16 x i1> %i.w, i64 11
  br i1 %i.cy, label %pred.store.if140, label %pred.store.continue141

end_hunk_26
begin_hunk_27
  store i8 10, ptr %i.da, align 1, !tbaa !8
  br label %pred.store.continue141

pred.store.continue141:                           ; preds = %pred.store.continue139, %pred.store.if140
  %i.db = extractelement <16 x i1> %i.w, i64 12
  br i1 %i.db, label %pred.store.if142, label %pred.store.continue143

end_hunk_27
begin_hunk_28
  store i8 10, ptr %i.dd, align 1, !tbaa !8
  br label %pred.store.continue143

pred.store.continue143:                           ; preds = %pred.store.continue141, %pred.store.if142
  %i.de = extractelement <16 x i1> %i.w, i64 13
  br i1 %i.de, label %pred.store.if144, label %pred.store.continue145

end_hunk_28
begin_hunk_29
  store i8 10, ptr %i.dg, align 1, !tbaa !8
  br label %pred.store.continue145

pred.store.continue145:                           ; preds = %pred.store.continue143, %pred.store.if144
  %i.dh = extractelement <16 x i1> %i.w, i64 14
  br i1 %i.dh, label %pred.store.if146, label %pred.store.continue147

end_hunk_29
begin_hunk_30
  store i8 10, ptr %i.dj, align 1, !tbaa !8
  br label %pred.store.continue147

pred.store.continue147:                           ; preds = %pred.store.continue145, %pred.store.if146
  %i.dk = extractelement <16 x i1> %i.w, i64 15
  br i1 %i.dk, label %pred.store.if148, label %pred.store.continue149

end_hunk_30
begin_hunk_31
  store i8 10, ptr %i.dm, align 1, !tbaa !8
  br label %pred.store.continue149

pred.store.continue149:                           ; preds = %pred.store.continue147, %pred.store.if148
  %index.next150 = add nuw i64 %index86, 32       ; 2 uses
  %i.dn = icmp eq i64 %index.next150, %n.vec84
  br i1 %i.dn, label %middle.block151, label %vector.body85, !llvm.loop !42
end_hunk_31
begin_hunk_32
  store i8 10, ptr %i.do, align 1, !tbaa !8
  br label %pred.store.continue158

pred.store.continue158:                           ; preds = %vec.epilog.vector.body, %pred.store.if157
  %i.dt = extractelement <8 x i1> %i.dr, i64 1
  br i1 %i.dt, label %pred.store.if159, label %pred.store.continue160

end_hunk_32
begin_hunk_33
  store i8 10, ptr %i.dv, align 1, !tbaa !8
  br label %pred.store.continue160

pred.store.continue160:                           ; preds = %pred.store.continue158, %pred.store.if159
  %i.dw = extractelement <8 x i1> %i.dr, i64 2
  br i1 %i.dw, label %pred.store.if161, label %pred.store.continue162

end_hunk_33
begin_hunk_34
  store i8 10, ptr %i.dy, align 1, !tbaa !8
  br label %pred.store.continue162

pred.store.continue162:                           ; preds = %pred.store.continue160, %pred.store.if161
  %i.dz = extractelement <8 x i1> %i.dr, i64 3
  br i1 %i.dz, label %pred.store.if163, label %pred.store.continue164

end_hunk_34
begin_hunk_35
  store i8 10, ptr %i.eb, align 1, !tbaa !8
  br label %pred.store.continue164

pred.store.continue164:                           ; preds = %pred.store.continue162, %pred.store.if163
  %i.ec = extractelement <8 x i1> %i.dr, i64 4
  br i1 %i.ec, label %pred.store.if165, label %pred.store.continue166

end_hunk_35
begin_hunk_36
  store i8 10, ptr %i.ee, align 1, !tbaa !8
  br label %pred.store.continue166

pred.store.continue166:                           ; preds = %pred.store.continue164, %pred.store.if165
  %i.ef = extractelement <8 x i1> %i.dr, i64 5
  br i1 %i.ef, label %pred.store.if167, label %pred.store.continue168

end_hunk_36
begin_hunk_37
  store i8 10, ptr %i.eh, align 1, !tbaa !8
  br label %pred.store.continue168

pred.store.continue168:                           ; preds = %pred.store.continue166, %pred.store.if167
  %i.ei = extractelement <8 x i1> %i.dr, i64 6
  br i1 %i.ei, label %pred.store.if169, label %pred.store.continue170

end_hunk_37
begin_hunk_38
  store i8 10, ptr %i.ek, align 1, !tbaa !8
  br label %pred.store.continue170

pred.store.continue170:                           ; preds = %pred.store.continue168, %pred.store.if169
  %i.el = extractelement <8 x i1> %i.dr, i64 7
  br i1 %i.el, label %pred.store.if171, label %pred.store.continue172

end_hunk_38
begin_hunk_39
  store i8 10, ptr %i.en, align 1, !tbaa !8
  br label %pred.store.continue172

pred.store.continue172:                           ; preds = %pred.store.continue170, %pred.store.if171
  %index.next173 = add nuw i64 %index155, 8       ; 2 uses
  %i.eo = icmp eq i64 %index.next173, %n.vec154
  br i1 %i.eo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !44
end_hunk_39
begin_hunk_40
  store i8 %i.f, ptr %i.m, align 8, !tbaa !8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %vector.body, %pred.store.if
  %i.q = extractelement <16 x i1> %i.o, i64 1
  br i1 %i.q, label %pred.store.if54, label %pred.store.continue55

end_hunk_40
begin_hunk_41
  store i8 %i.f, ptr %i.s, align 1, !tbaa !8
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.continue, %pred.store.if54
  %i.t = extractelement <16 x i1> %i.o, i64 2
  br i1 %i.t, label %pred.store.if56, label %pred.store.continue57

end_hunk_41
begin_hunk_42
  store i8 %i.f, ptr %i.v, align 2, !tbaa !8
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.continue55, %pred.store.if56
  %i.w = extractelement <16 x i1> %i.o, i64 3
  br i1 %i.w, label %pred.store.if58, label %pred.store.continue59

end_hunk_42
begin_hunk_43
  store i8 %i.f, ptr %i.y, align 1, !tbaa !8
  br label %pred.store.continue59

pred.store.continue59:                            ; preds = %pred.store.continue57, %pred.store.if58
  %i.z = extractelement <16 x i1> %i.o, i64 4
  br i1 %i.z, label %pred.store.if60, label %pred.store.continue61

end_hunk_43
begin_hunk_44
  store i8 %i.f, ptr %i.ab, align 4, !tbaa !8
  br label %pred.store.continue61

pred.store.continue61:                            ; preds = %pred.store.continue59, %pred.store.if60
  %i.ac = extractelement <16 x i1> %i.o, i64 5
  br i1 %i.ac, label %pred.store.if62, label %pred.store.continue63

end_hunk_44
begin_hunk_45
  store i8 %i.f, ptr %i.ae, align 1, !tbaa !8
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.continue61, %pred.store.if62
  %i.af = extractelement <16 x i1> %i.o, i64 6
  br i1 %i.af, label %pred.store.if64, label %pred.store.continue65

end_hunk_45
begin_hunk_46
  store i8 %i.f, ptr %i.ah, align 2, !tbaa !8
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.continue63, %pred.store.if64
  %i.ai = extractelement <16 x i1> %i.o, i64 7
  br i1 %i.ai, label %pred.store.if66, label %pred.store.continue67

end_hunk_46
begin_hunk_47
  store i8 %i.f, ptr %i.ak, align 1, !tbaa !8
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.continue65, %pred.store.if66
  %i.al = extractelement <16 x i1> %i.o, i64 8
  br i1 %i.al, label %pred.store.if68, label %pred.store.continue69

end_hunk_47
begin_hunk_48
  store i8 %i.f, ptr %i.an, align 8, !tbaa !8
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.continue67, %pred.store.if68
  %i.ao = extractelement <16 x i1> %i.o, i64 9
  br i1 %i.ao, label %pred.store.if70, label %pred.store.continue71

end_hunk_48
begin_hunk_49
  store i8 %i.f, ptr %i.aq, align 1, !tbaa !8
  br label %pred.store.continue71

pred.store.continue71:                            ; preds = %pred.store.continue69, %pred.store.if70
  %i.ar = extractelement <16 x i1> %i.o, i64 10
  br i1 %i.ar, label %pred.store.if72, label %pred.store.continue73

end_hunk_49
begin_hunk_50
  store i8 %i.f, ptr %i.at, align 2, !tbaa !8
  br label %pred.store.continue73

pred.store.continue73:                            ; preds = %pred.store.continue71, %pred.store.if72
  %i.au = extractelement <16 x i1> %i.o, i64 11
  br i1 %i.au, label %pred.store.if74, label %pred.store.continue75

end_hunk_50
begin_hunk_51
  store i8 %i.f, ptr %i.aw, align 1, !tbaa !8
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.continue73, %pred.store.if74
  %i.ax = extractelement <16 x i1> %i.o, i64 12
  br i1 %i.ax, label %pred.store.if76, label %pred.store.continue77

end_hunk_51
begin_hunk_52
  store i8 %i.f, ptr %i.az, align 4, !tbaa !8
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.continue75, %pred.store.if76
  %i.ba = extractelement <16 x i1> %i.o, i64 13
  br i1 %i.ba, label %pred.store.if78, label %pred.store.continue79

end_hunk_52
begin_hunk_53
  store i8 %i.f, ptr %i.bc, align 1, !tbaa !8
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.continue77, %pred.store.if78
  %i.bd = extractelement <16 x i1> %i.o, i64 14
  br i1 %i.bd, label %pred.store.if80, label %pred.store.continue81

end_hunk_53
begin_hunk_54
  store i8 %i.f, ptr %i.bf, align 2, !tbaa !8
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.continue79, %pred.store.if80
  %i.bg = extractelement <16 x i1> %i.o, i64 15
  br i1 %i.bg, label %pred.store.if82, label %pred.store.continue83

end_hunk_54
begin_hunk_55
  store i8 %i.f, ptr %i.bi, align 1, !tbaa !8
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.continue81, %pred.store.if82
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bj = icmp eq i64 %index.next, 256
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !79
end_hunk_55
begin_hunk_56
  store i8 %i.u, ptr %i.ab, align 8, !tbaa !8
  br label %pred.store.continue180

pred.store.continue180:                           ; preds = %vector.body176, %pred.store.if179
  %i.af = extractelement <16 x i1> %i.ad, i64 1
  br i1 %i.af, label %pred.store.if181, label %pred.store.continue182

end_hunk_56
begin_hunk_57
  store i8 %i.u, ptr %i.ah, align 1, !tbaa !8
  br label %pred.store.continue182

pred.store.continue182:                           ; preds = %pred.store.continue180, %pred.store.if181
  %i.ai = extractelement <16 x i1> %i.ad, i64 2
  br i1 %i.ai, label %pred.store.if183, label %pred.store.continue184

end_hunk_57
begin_hunk_58
  store i8 %i.u, ptr %i.ak, align 2, !tbaa !8
  br label %pred.store.continue184

pred.store.continue184:                           ; preds = %pred.store.continue182, %pred.store.if183
  %i.al = extractelement <16 x i1> %i.ad, i64 3
  br i1 %i.al, label %pred.store.if185, label %pred.store.continue186

end_hunk_58
begin_hunk_59
  store i8 %i.u, ptr %i.an, align 1, !tbaa !8
  br label %pred.store.continue186

pred.store.continue186:                           ; preds = %pred.store.continue184, %pred.store.if185
  %i.ao = extractelement <16 x i1> %i.ad, i64 4
  br i1 %i.ao, label %pred.store.if187, label %pred.store.continue188

end_hunk_59
begin_hunk_60
  store i8 %i.u, ptr %i.aq, align 4, !tbaa !8
  br label %pred.store.continue188

pred.store.continue188:                           ; preds = %pred.store.continue186, %pred.store.if187
  %i.ar = extractelement <16 x i1> %i.ad, i64 5
  br i1 %i.ar, label %pred.store.if189, label %pred.store.continue190

end_hunk_60
begin_hunk_61
  store i8 %i.u, ptr %i.at, align 1, !tbaa !8
  br label %pred.store.continue190

pred.store.continue190:                           ; preds = %pred.store.continue188, %pred.store.if189
  %i.au = extractelement <16 x i1> %i.ad, i64 6
  br i1 %i.au, label %pred.store.if191, label %pred.store.continue192

end_hunk_61
begin_hunk_62
  store i8 %i.u, ptr %i.aw, align 2, !tbaa !8
  br label %pred.store.continue192

pred.store.continue192:                           ; preds = %pred.store.continue190, %pred.store.if191
  %i.ax = extractelement <16 x i1> %i.ad, i64 7
  br i1 %i.ax, label %pred.store.if193, label %pred.store.continue194

end_hunk_62
begin_hunk_63
  store i8 %i.u, ptr %i.az, align 1, !tbaa !8
  br label %pred.store.continue194

pred.store.continue194:                           ; preds = %pred.store.continue192, %pred.store.if193
  %i.ba = extractelement <16 x i1> %i.ad, i64 8
  br i1 %i.ba, label %pred.store.if195, label %pred.store.continue196

end_hunk_63
begin_hunk_64
  store i8 %i.u, ptr %i.bc, align 8, !tbaa !8
  br label %pred.store.continue196

pred.store.continue196:                           ; preds = %pred.store.continue194, %pred.store.if195
  %i.bd = extractelement <16 x i1> %i.ad, i64 9
  br i1 %i.bd, label %pred.store.if197, label %pred.store.continue198

end_hunk_64
begin_hunk_65
  store i8 %i.u, ptr %i.bf, align 1, !tbaa !8
  br label %pred.store.continue198

pred.store.continue198:                           ; preds = %pred.store.continue196, %pred.store.if197
  %i.bg = extractelement <16 x i1> %i.ad, i64 10
  br i1 %i.bg, label %pred.store.if199, label %pred.store.continue200

end_hunk_65
begin_hunk_66
  store i8 %i.u, ptr %i.bi, align 2, !tbaa !8
  br label %pred.store.continue200

pred.store.continue200:                           ; preds = %pred.store.continue198, %pred.store.if199
  %i.bj = extractelement <16 x i1> %i.ad, i64 11
  br i1 %i.bj, label %pred.store.if201, label %pred.store.continue202

end_hunk_66
begin_hunk_67
  store i8 %i.u, ptr %i.bl, align 1, !tbaa !8
  br label %pred.store.continue202

pred.store.continue202:                           ; preds = %pred.store.continue200, %pred.store.if201
  %i.bm = extractelement <16 x i1> %i.ad, i64 12
  br i1 %i.bm, label %pred.store.if203, label %pred.store.continue204

end_hunk_67
begin_hunk_68
  store i8 %i.u, ptr %i.bo, align 4, !tbaa !8
  br label %pred.store.continue204

pred.store.continue204:                           ; preds = %pred.store.continue202, %pred.store.if203
  %i.bp = extractelement <16 x i1> %i.ad, i64 13
  br i1 %i.bp, label %pred.store.if205, label %pred.store.continue206

end_hunk_68
begin_hunk_69
  store i8 %i.u, ptr %i.br, align 1, !tbaa !8
  br label %pred.store.continue206

pred.store.continue206:                           ; preds = %pred.store.continue204, %pred.store.if205
  %i.bs = extractelement <16 x i1> %i.ad, i64 14
  br i1 %i.bs, label %pred.store.if207, label %pred.store.continue208

end_hunk_69
begin_hunk_70
  store i8 %i.u, ptr %i.bu, align 2, !tbaa !8
  br label %pred.store.continue208

pred.store.continue208:                           ; preds = %pred.store.continue206, %pred.store.if207
  %i.bv = extractelement <16 x i1> %i.ad, i64 15
  br i1 %i.bv, label %pred.store.if209, label %pred.store.continue210

end_hunk_70
begin_hunk_71
  store i8 %i.u, ptr %i.bx, align 1, !tbaa !8
  br label %pred.store.continue210

pred.store.continue210:                           ; preds = %pred.store.continue208, %pred.store.if209
  %index.next211 = add nuw i64 %index177, 16      ; 2 uses
  %i.by = icmp eq i64 %index.next211, 256
  br i1 %i.by, label %middle.block212, label %vector.body176, !llvm.loop !98
end_hunk_71
begin_hunk_72
  store i8 10, ptr %0, align 1, !tbaa !8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %vector.ph, %pred.store.if
  %i.gy = extractelement <16 x i1> %i.gw, i64 1
  br i1 %i.gy, label %pred.store.if131, label %pred.store.continue132

end_hunk_72
begin_hunk_73
  store i8 10, ptr %i.gz, align 1, !tbaa !8
  br label %pred.store.continue132

pred.store.continue132:                           ; preds = %pred.store.continue, %pred.store.if131
  %i.ha = extractelement <16 x i1> %i.gw, i64 2
  br i1 %i.ha, label %pred.store.if133, label %pred.store.continue134

end_hunk_73
begin_hunk_74
  store i8 10, ptr %i.hb, align 1, !tbaa !8
  br label %pred.store.continue134

pred.store.continue134:                           ; preds = %pred.store.continue132, %pred.store.if133
  %i.hc = extractelement <16 x i1> %i.gw, i64 3
  br i1 %i.hc, label %pred.store.if135, label %pred.store.continue136

end_hunk_74
begin_hunk_75
  store i8 10, ptr %i.hd, align 1, !tbaa !8
  br label %pred.store.continue136

pred.store.continue136:                           ; preds = %pred.store.continue134, %pred.store.if135
  %i.he = extractelement <16 x i1> %i.gw, i64 4
  br i1 %i.he, label %pred.store.if137, label %pred.store.continue138

end_hunk_75
begin_hunk_76
  store i8 10, ptr %i.hf, align 1, !tbaa !8
  br label %pred.store.continue138

pred.store.continue138:                           ; preds = %pred.store.continue136, %pred.store.if137
  %i.hg = extractelement <16 x i1> %i.gw, i64 5
  br i1 %i.hg, label %pred.store.if139, label %pred.store.continue140

end_hunk_76
begin_hunk_77
  store i8 10, ptr %i.hh, align 1, !tbaa !8
  br label %pred.store.continue140

pred.store.continue140:                           ; preds = %pred.store.continue138, %pred.store.if139
  %i.hi = extractelement <16 x i1> %i.gw, i64 6
  br i1 %i.hi, label %pred.store.if141, label %pred.store.continue142

end_hunk_77
begin_hunk_78
  store i8 10, ptr %i.hj, align 1, !tbaa !8
  br label %pred.store.continue142

pred.store.continue142:                           ; preds = %pred.store.continue140, %pred.store.if141
  %i.hk = extractelement <16 x i1> %i.gw, i64 7
  br i1 %i.hk, label %pred.store.if143, label %pred.store.continue144

end_hunk_78
begin_hunk_79
  store i8 10, ptr %i.hl, align 1, !tbaa !8
  br label %pred.store.continue144

pred.store.continue144:                           ; preds = %pred.store.continue142, %pred.store.if143
  %i.hm = extractelement <16 x i1> %i.gw, i64 8
  br i1 %i.hm, label %pred.store.if145, label %pred.store.continue146

end_hunk_79
begin_hunk_80
  store i8 10, ptr %i.hn, align 1, !tbaa !8
  br label %pred.store.continue146

pred.store.continue146:                           ; preds = %pred.store.continue144, %pred.store.if145
  %i.ho = extractelement <16 x i1> %i.gw, i64 9
  br i1 %i.ho, label %pred.store.if147, label %pred.store.continue148

end_hunk_80
begin_hunk_81
  store i8 10, ptr %i.hp, align 1, !tbaa !8
  br label %pred.store.continue148

pred.store.continue148:                           ; preds = %pred.store.continue146, %pred.store.if147
  %i.hq = extractelement <16 x i1> %i.gw, i64 10
  br i1 %i.hq, label %pred.store.if149, label %pred.store.continue150

end_hunk_81
begin_hunk_82
  store i8 10, ptr %i.hr, align 1, !tbaa !8
  br label %pred.store.continue150

pred.store.continue150:                           ; preds = %pred.store.continue148, %pred.store.if149
  %i.hs = extractelement <16 x i1> %i.gw, i64 11
  br i1 %i.hs, label %pred.store.if151, label %pred.store.continue152

end_hunk_82
begin_hunk_83
  store i8 10, ptr %i.ht, align 1, !tbaa !8
  br label %pred.store.continue152

pred.store.continue152:                           ; preds = %pred.store.continue150, %pred.store.if151
  %i.hu = extractelement <16 x i1> %i.gw, i64 12
  br i1 %i.hu, label %pred.store.if153, label %pred.store.continue154

end_hunk_83
begin_hunk_84
  store i8 10, ptr %i.hv, align 1, !tbaa !8
  br label %pred.store.continue154

pred.store.continue154:                           ; preds = %pred.store.continue152, %pred.store.if153
  %i.hw = extractelement <16 x i1> %i.gw, i64 13
  br i1 %i.hw, label %pred.store.if155, label %pred.store.continue156

end_hunk_84
begin_hunk_85
  store i8 10, ptr %i.hx, align 1, !tbaa !8
  br label %pred.store.continue156

pred.store.continue156:                           ; preds = %pred.store.continue154, %pred.store.if155
  %i.hy = extractelement <16 x i1> %i.gw, i64 14
  br i1 %i.hy, label %pred.store.if157, label %pred.store.continue158

end_hunk_85
begin_hunk_86
  store i8 10, ptr %i.hz, align 1, !tbaa !8
  br label %pred.store.continue158

pred.store.continue158:                           ; preds = %pred.store.continue156, %pred.store.if157
  %i.ia = extractelement <16 x i1> %i.gw, i64 15
  br i1 %i.ia, label %pred.store.if159, label %pred.store.continue160

end_hunk_86
begin_hunk_87
  store i8 10, ptr %i.ib, align 1, !tbaa !8
  br label %pred.store.continue160

pred.store.continue160:                           ; preds = %pred.store.continue158, %pred.store.if159
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader47.i, label %vec.epilog.iter.check

end_hunk_87
begin_hunk_88
  store i8 10, ptr %i.ic, align 1, !tbaa !8
  br label %pred.store.continue166

pred.store.continue166:                           ; preds = %vec.epilog.vector.body, %pred.store.if165
  %i.ih = extractelement <4 x i1> %i.if, i64 1
  br i1 %i.ih, label %pred.store.if167, label %pred.store.continue168

end_hunk_88
begin_hunk_89
  store i8 10, ptr %i.ij, align 1, !tbaa !8
  br label %pred.store.continue168

pred.store.continue168:                           ; preds = %pred.store.continue166, %pred.store.if167
  %i.ik = extractelement <4 x i1> %i.if, i64 2
  br i1 %i.ik, label %pred.store.if169, label %pred.store.continue170

end_hunk_89
begin_hunk_90
  store i8 10, ptr %i.im, align 1, !tbaa !8
  br label %pred.store.continue170

pred.store.continue170:                           ; preds = %pred.store.continue168, %pred.store.if169
  %i.in = extractelement <4 x i1> %i.if, i64 3
  br i1 %i.in, label %pred.store.if171, label %pred.store.continue172

end_hunk_90
begin_hunk_91
  store i8 10, ptr %i.ip, align 1, !tbaa !8
  br label %pred.store.continue172

pred.store.continue172:                           ; preds = %pred.store.continue170, %pred.store.if171
  %index.next173 = add nuw i64 %index163, 4       ; 2 uses
  %i.iq = icmp eq i64 %index.next173, %n.vec162
  br i1 %i.iq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !101
end_hunk_91
