begin_hunk_0
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !55  ; 25 uses
  %i.bt = getelementptr i8, ptr %0, i64 72        ; 6 uses
  %.val = load ptr, ptr %i.bt, align 8, !tbaa !26 ; 2 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !27 ; 26 uses
  %i.bu = getelementptr i8, ptr %.val, i64 8
  %.val.val33 = load i64, ptr %i.bu, align 8, !tbaa !65 ; 13 uses
  %.not1.i = icmp eq i64 %.val.val33, 0
end_hunk_0
begin_hunk_1

vector.body:                                      ; preds = %pred.store.continue91, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue91 ] ; 2 uses
  %i.bw = sub i64 %.val.val33, %index             ; 16 uses
  %i.bx = getelementptr i8, ptr %.val.val, i64 %i.bw ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 -16
  %wide.load = load <16 x i8>, ptr %i.by, align 1, !tbaa !8
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
end_hunk_1
begin_hunk_2
  br i1 %i.ca, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.cb = getelementptr i8, ptr %i.bx, i64 -1
  store i8 %i.bs, ptr %i.cb, align 1, !tbaa !8
  br label %pred.store.continue

pred.store.continue:                              ; preds = %vector.body, %pred.store.if
  %i.cc = extractelement <16 x i1> %i.bz, i64 1
  br i1 %i.cc, label %pred.store.if62, label %pred.store.continue63

end_hunk_2
begin_hunk_3
  store i8 %i.bs, ptr %i.ce, align 1, !tbaa !8
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.continue, %pred.store.if62
  %i.cf = extractelement <16 x i1> %i.bz, i64 2
  br i1 %i.cf, label %pred.store.if64, label %pred.store.continue65

end_hunk_3
begin_hunk_4
  store i8 %i.bs, ptr %i.ch, align 1, !tbaa !8
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.continue63, %pred.store.if64
  %i.ci = extractelement <16 x i1> %i.bz, i64 3
  br i1 %i.ci, label %pred.store.if66, label %pred.store.continue67

end_hunk_4
begin_hunk_5
  store i8 %i.bs, ptr %i.ck, align 1, !tbaa !8
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.continue65, %pred.store.if66
  %i.cl = extractelement <16 x i1> %i.bz, i64 4
  br i1 %i.cl, label %pred.store.if68, label %pred.store.continue69

end_hunk_5
begin_hunk_6
  store i8 %i.bs, ptr %i.cn, align 1, !tbaa !8
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.continue67, %pred.store.if68
  %i.co = extractelement <16 x i1> %i.bz, i64 5
  br i1 %i.co, label %pred.store.if70, label %pred.store.continue71

end_hunk_6
begin_hunk_7
  store i8 %i.bs, ptr %i.cq, align 1, !tbaa !8
  br label %pred.store.continue71

pred.store.continue71:                            ; preds = %pred.store.continue69, %pred.store.if70
  %i.cr = extractelement <16 x i1> %i.bz, i64 6
  br i1 %i.cr, label %pred.store.if72, label %pred.store.continue73

end_hunk_7
begin_hunk_8
  store i8 %i.bs, ptr %i.ct, align 1, !tbaa !8
  br label %pred.store.continue73

pred.store.continue73:                            ; preds = %pred.store.continue71, %pred.store.if72
  %i.cu = extractelement <16 x i1> %i.bz, i64 7
  br i1 %i.cu, label %pred.store.if74, label %pred.store.continue75

end_hunk_8
begin_hunk_9
  store i8 %i.bs, ptr %i.cw, align 1, !tbaa !8
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.continue73, %pred.store.if74
  %i.cx = extractelement <16 x i1> %i.bz, i64 8
  br i1 %i.cx, label %pred.store.if76, label %pred.store.continue77

end_hunk_9
begin_hunk_10
  store i8 %i.bs, ptr %i.cz, align 1, !tbaa !8
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.continue75, %pred.store.if76
  %i.da = extractelement <16 x i1> %i.bz, i64 9
  br i1 %i.da, label %pred.store.if78, label %pred.store.continue79

end_hunk_10
begin_hunk_11
  store i8 %i.bs, ptr %i.dc, align 1, !tbaa !8
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.continue77, %pred.store.if78
  %i.dd = extractelement <16 x i1> %i.bz, i64 10
  br i1 %i.dd, label %pred.store.if80, label %pred.store.continue81

end_hunk_11
begin_hunk_12
  store i8 %i.bs, ptr %i.df, align 1, !tbaa !8
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.continue79, %pred.store.if80
  %i.dg = extractelement <16 x i1> %i.bz, i64 11
  br i1 %i.dg, label %pred.store.if82, label %pred.store.continue83

end_hunk_12
begin_hunk_13
  store i8 %i.bs, ptr %i.di, align 1, !tbaa !8
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.continue81, %pred.store.if82
  %i.dj = extractelement <16 x i1> %i.bz, i64 12
  br i1 %i.dj, label %pred.store.if84, label %pred.store.continue85

end_hunk_13
begin_hunk_14
  store i8 %i.bs, ptr %i.dl, align 1, !tbaa !8
  br label %pred.store.continue85

pred.store.continue85:                            ; preds = %pred.store.continue83, %pred.store.if84
  %i.dm = extractelement <16 x i1> %i.bz, i64 13
  br i1 %i.dm, label %pred.store.if86, label %pred.store.continue87

end_hunk_14
begin_hunk_15
  store i8 %i.bs, ptr %i.do, align 1, !tbaa !8
  br label %pred.store.continue87

pred.store.continue87:                            ; preds = %pred.store.continue85, %pred.store.if86
  %i.dp = extractelement <16 x i1> %i.bz, i64 14
  br i1 %i.dp, label %pred.store.if88, label %pred.store.continue89

end_hunk_15
begin_hunk_16
  store i8 %i.bs, ptr %i.dr, align 1, !tbaa !8
  br label %pred.store.continue89

pred.store.continue89:                            ; preds = %pred.store.continue87, %pred.store.if88
  %i.ds = extractelement <16 x i1> %i.bz, i64 15
  br i1 %i.ds, label %pred.store.if90, label %pred.store.continue91

end_hunk_16
begin_hunk_17
  store i8 %i.bs, ptr %i.du, align 1, !tbaa !8
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.continue89, %pred.store.if90
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !73
end_hunk_17
begin_hunk_18

vec.epilog.vector.body:                           ; preds = %pred.store.continue112, %vec.epilog.ph
  %index94 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next113, %pred.store.continue112 ] ; 2 uses
  %offset.idx = sub i64 %.val.val33, %index94     ; 8 uses
  %i.dx = getelementptr i8, ptr %.val.val, i64 %offset.idx ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 -8
  %wide.load95 = load <8 x i8>, ptr %i.dy, align 1, !tbaa !8
  %reverse96 = shufflevector <8 x i8> %wide.load95, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
end_hunk_18
begin_hunk_19
  br i1 %i.ea, label %pred.store.if97, label %pred.store.continue98

pred.store.if97:                                  ; preds = %vec.epilog.vector.body
  %i.eb = getelementptr i8, ptr %i.dx, i64 -1
  store i8 %i.bs, ptr %i.eb, align 1, !tbaa !8
  br label %pred.store.continue98

pred.store.continue98:                            ; preds = %vec.epilog.vector.body, %pred.store.if97
  %i.ec = extractelement <8 x i1> %i.dz, i64 1
  br i1 %i.ec, label %pred.store.if99, label %pred.store.continue100

end_hunk_19
begin_hunk_20
  store i8 %i.bs, ptr %i.ee, align 1, !tbaa !8
  br label %pred.store.continue100

pred.store.continue100:                           ; preds = %pred.store.continue98, %pred.store.if99
  %i.ef = extractelement <8 x i1> %i.dz, i64 2
  br i1 %i.ef, label %pred.store.if101, label %pred.store.continue102

end_hunk_20
begin_hunk_21
  store i8 %i.bs, ptr %i.eh, align 1, !tbaa !8
  br label %pred.store.continue102

pred.store.continue102:                           ; preds = %pred.store.continue100, %pred.store.if101
  %i.ei = extractelement <8 x i1> %i.dz, i64 3
  br i1 %i.ei, label %pred.store.if103, label %pred.store.continue104

end_hunk_21
begin_hunk_22
  store i8 %i.bs, ptr %i.ek, align 1, !tbaa !8
  br label %pred.store.continue104

pred.store.continue104:                           ; preds = %pred.store.continue102, %pred.store.if103
  %i.el = extractelement <8 x i1> %i.dz, i64 4
  br i1 %i.el, label %pred.store.if105, label %pred.store.continue106

end_hunk_22
begin_hunk_23
  store i8 %i.bs, ptr %i.en, align 1, !tbaa !8
  br label %pred.store.continue106

pred.store.continue106:                           ; preds = %pred.store.continue104, %pred.store.if105
  %i.eo = extractelement <8 x i1> %i.dz, i64 5
  br i1 %i.eo, label %pred.store.if107, label %pred.store.continue108

end_hunk_23
begin_hunk_24
  store i8 %i.bs, ptr %i.eq, align 1, !tbaa !8
  br label %pred.store.continue108

pred.store.continue108:                           ; preds = %pred.store.continue106, %pred.store.if107
  %i.er = extractelement <8 x i1> %i.dz, i64 6
  br i1 %i.er, label %pred.store.if109, label %pred.store.continue110

end_hunk_24
begin_hunk_25
  store i8 %i.bs, ptr %i.et, align 1, !tbaa !8
  br label %pred.store.continue110

pred.store.continue110:                           ; preds = %pred.store.continue108, %pred.store.if109
  %i.eu = extractelement <8 x i1> %i.dz, i64 7
  br i1 %i.eu, label %pred.store.if111, label %pred.store.continue112

end_hunk_25
begin_hunk_26
  store i8 %i.bs, ptr %i.ew, align 1, !tbaa !8
  br label %pred.store.continue112

pred.store.continue112:                           ; preds = %pred.store.continue110, %pred.store.if111
  %index.next113 = add nuw i64 %index94, 8        ; 2 uses
  %i.ex = icmp eq i64 %index.next113, %n.vec93
  br i1 %i.ex, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !77
end_hunk_26
begin_hunk_27
  %i.fi = phi i8 [ %i.fh, %bb.s ], [ 46, %bb.r ]  ; 26 uses
  store i8 %i.fi, ptr %i.br, align 8, !tbaa !55
  %.val12.i = load ptr, ptr %i.bt, align 8, !tbaa !26 ; 2 uses
  %.val12.val.i = load ptr, ptr %.val12.i, align 8, !tbaa !27 ; 26 uses
  %i.fj = getelementptr i8, ptr %.val12.i, i64 8
  %.val12.val13.i = load i64, ptr %i.fj, align 8, !tbaa !65 ; 13 uses
  %.not1.i.i = icmp eq i64 %.val12.val13.i, 0
end_hunk_27
begin_hunk_28

vector.body124:                                   ; preds = %pred.store.continue159, %vector.ph121
  %index125 = phi i64 [ 0, %vector.ph121 ], [ %index.next160, %pred.store.continue159 ] ; 2 uses
  %i.fl = sub i64 %.val12.val13.i, %index125      ; 16 uses
  %i.fm = getelementptr i8, ptr %.val12.val.i, i64 %i.fl ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 -16
  %wide.load126 = load <16 x i8>, ptr %i.fn, align 1, !tbaa !8
  %reverse127 = shufflevector <16 x i8> %wide.load126, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
end_hunk_28
begin_hunk_29
  br i1 %i.fp, label %pred.store.if128, label %pred.store.continue129

pred.store.if128:                                 ; preds = %vector.body124
  %i.fq = getelementptr i8, ptr %i.fm, i64 -1
  store i8 %i.fi, ptr %i.fq, align 1, !tbaa !8
  br label %pred.store.continue129

pred.store.continue129:                           ; preds = %vector.body124, %pred.store.if128
  %i.fr = extractelement <16 x i1> %i.fo, i64 1
  br i1 %i.fr, label %pred.store.if130, label %pred.store.continue131

end_hunk_29
begin_hunk_30
  store i8 %i.fi, ptr %i.ft, align 1, !tbaa !8
  br label %pred.store.continue131

pred.store.continue131:                           ; preds = %pred.store.continue129, %pred.store.if130
  %i.fu = extractelement <16 x i1> %i.fo, i64 2
  br i1 %i.fu, label %pred.store.if132, label %pred.store.continue133

end_hunk_30
begin_hunk_31
  store i8 %i.fi, ptr %i.fw, align 1, !tbaa !8
  br label %pred.store.continue133

pred.store.continue133:                           ; preds = %pred.store.continue131, %pred.store.if132
  %i.fx = extractelement <16 x i1> %i.fo, i64 3
  br i1 %i.fx, label %pred.store.if134, label %pred.store.continue135

end_hunk_31
begin_hunk_32
  store i8 %i.fi, ptr %i.fz, align 1, !tbaa !8
  br label %pred.store.continue135

pred.store.continue135:                           ; preds = %pred.store.continue133, %pred.store.if134
  %i.ga = extractelement <16 x i1> %i.fo, i64 4
  br i1 %i.ga, label %pred.store.if136, label %pred.store.continue137

end_hunk_32
begin_hunk_33
  store i8 %i.fi, ptr %i.gc, align 1, !tbaa !8
  br label %pred.store.continue137

pred.store.continue137:                           ; preds = %pred.store.continue135, %pred.store.if136
  %i.gd = extractelement <16 x i1> %i.fo, i64 5
  br i1 %i.gd, label %pred.store.if138, label %pred.store.continue139

end_hunk_33
begin_hunk_34
  store i8 %i.fi, ptr %i.gf, align 1, !tbaa !8
  br label %pred.store.continue139

pred.store.continue139:                           ; preds = %pred.store.continue137, %pred.store.if138
  %i.gg = extractelement <16 x i1> %i.fo, i64 6
  br i1 %i.gg, label %pred.store.if140, label %pred.store.continue141

end_hunk_34
begin_hunk_35
  store i8 %i.fi, ptr %i.gi, align 1, !tbaa !8
  br label %pred.store.continue141

pred.store.continue141:                           ; preds = %pred.store.continue139, %pred.store.if140
  %i.gj = extractelement <16 x i1> %i.fo, i64 7
  br i1 %i.gj, label %pred.store.if142, label %pred.store.continue143

end_hunk_35
begin_hunk_36
  store i8 %i.fi, ptr %i.gl, align 1, !tbaa !8
  br label %pred.store.continue143

pred.store.continue143:                           ; preds = %pred.store.continue141, %pred.store.if142
  %i.gm = extractelement <16 x i1> %i.fo, i64 8
  br i1 %i.gm, label %pred.store.if144, label %pred.store.continue145

end_hunk_36
begin_hunk_37
  store i8 %i.fi, ptr %i.go, align 1, !tbaa !8
  br label %pred.store.continue145

pred.store.continue145:                           ; preds = %pred.store.continue143, %pred.store.if144
  %i.gp = extractelement <16 x i1> %i.fo, i64 9
  br i1 %i.gp, label %pred.store.if146, label %pred.store.continue147

end_hunk_37
begin_hunk_38
  store i8 %i.fi, ptr %i.gr, align 1, !tbaa !8
  br label %pred.store.continue147

pred.store.continue147:                           ; preds = %pred.store.continue145, %pred.store.if146
  %i.gs = extractelement <16 x i1> %i.fo, i64 10
  br i1 %i.gs, label %pred.store.if148, label %pred.store.continue149

end_hunk_38
begin_hunk_39
  store i8 %i.fi, ptr %i.gu, align 1, !tbaa !8
  br label %pred.store.continue149

pred.store.continue149:                           ; preds = %pred.store.continue147, %pred.store.if148
  %i.gv = extractelement <16 x i1> %i.fo, i64 11
  br i1 %i.gv, label %pred.store.if150, label %pred.store.continue151

end_hunk_39
begin_hunk_40
  store i8 %i.fi, ptr %i.gx, align 1, !tbaa !8
  br label %pred.store.continue151

pred.store.continue151:                           ; preds = %pred.store.continue149, %pred.store.if150
  %i.gy = extractelement <16 x i1> %i.fo, i64 12
  br i1 %i.gy, label %pred.store.if152, label %pred.store.continue153

end_hunk_40
begin_hunk_41
  store i8 %i.fi, ptr %i.ha, align 1, !tbaa !8
  br label %pred.store.continue153

pred.store.continue153:                           ; preds = %pred.store.continue151, %pred.store.if152
  %i.hb = extractelement <16 x i1> %i.fo, i64 13
  br i1 %i.hb, label %pred.store.if154, label %pred.store.continue155

end_hunk_41
begin_hunk_42
  store i8 %i.fi, ptr %i.hd, align 1, !tbaa !8
  br label %pred.store.continue155

pred.store.continue155:                           ; preds = %pred.store.continue153, %pred.store.if154
  %i.he = extractelement <16 x i1> %i.fo, i64 14
  br i1 %i.he, label %pred.store.if156, label %pred.store.continue157

end_hunk_42
begin_hunk_43
  store i8 %i.fi, ptr %i.hg, align 1, !tbaa !8
  br label %pred.store.continue157

pred.store.continue157:                           ; preds = %pred.store.continue155, %pred.store.if156
  %i.hh = extractelement <16 x i1> %i.fo, i64 15
  br i1 %i.hh, label %pred.store.if158, label %pred.store.continue159

end_hunk_43
begin_hunk_44
  store i8 %i.fi, ptr %i.hj, align 1, !tbaa !8
  br label %pred.store.continue159

pred.store.continue159:                           ; preds = %pred.store.continue157, %pred.store.if158
  %index.next160 = add nuw i64 %index125, 16      ; 2 uses
  %i.hk = icmp eq i64 %index.next160, %n.vec123
  br i1 %i.hk, label %middle.block161, label %vector.body124, !llvm.loop !81
end_hunk_44
begin_hunk_45

vec.epilog.vector.body172:                        ; preds = %pred.store.continue192, %vec.epilog.ph167
  %index173 = phi i64 [ %vec.epilog.resume.val163, %vec.epilog.ph167 ], [ %index.next193, %pred.store.continue192 ] ; 2 uses
  %offset.idx174 = sub i64 %.val12.val13.i, %index173 ; 8 uses
  %i.hm = getelementptr i8, ptr %.val12.val.i, i64 %offset.idx174 ; 2 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 -8
  %wide.load175 = load <8 x i8>, ptr %i.hn, align 1, !tbaa !8
  %reverse176 = shufflevector <8 x i8> %wide.load175, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
end_hunk_45
begin_hunk_46
  br i1 %i.hp, label %pred.store.if177, label %pred.store.continue178

pred.store.if177:                                 ; preds = %vec.epilog.vector.body172
  %i.hq = getelementptr i8, ptr %i.hm, i64 -1
  store i8 %i.fi, ptr %i.hq, align 1, !tbaa !8
  br label %pred.store.continue178

pred.store.continue178:                           ; preds = %vec.epilog.vector.body172, %pred.store.if177
  %i.hr = extractelement <8 x i1> %i.ho, i64 1
  br i1 %i.hr, label %pred.store.if179, label %pred.store.continue180

end_hunk_46
begin_hunk_47
  store i8 %i.fi, ptr %i.ht, align 1, !tbaa !8
  br label %pred.store.continue180

pred.store.continue180:                           ; preds = %pred.store.continue178, %pred.store.if179
  %i.hu = extractelement <8 x i1> %i.ho, i64 2
  br i1 %i.hu, label %pred.store.if181, label %pred.store.continue182

end_hunk_47
begin_hunk_48
  store i8 %i.fi, ptr %i.hw, align 1, !tbaa !8
  br label %pred.store.continue182

pred.store.continue182:                           ; preds = %pred.store.continue180, %pred.store.if181
  %i.hx = extractelement <8 x i1> %i.ho, i64 3
  br i1 %i.hx, label %pred.store.if183, label %pred.store.continue184

end_hunk_48
begin_hunk_49
  store i8 %i.fi, ptr %i.hz, align 1, !tbaa !8
  br label %pred.store.continue184

pred.store.continue184:                           ; preds = %pred.store.continue182, %pred.store.if183
  %i.ia = extractelement <8 x i1> %i.ho, i64 4
  br i1 %i.ia, label %pred.store.if185, label %pred.store.continue186

end_hunk_49
begin_hunk_50
  store i8 %i.fi, ptr %i.ic, align 1, !tbaa !8
  br label %pred.store.continue186

pred.store.continue186:                           ; preds = %pred.store.continue184, %pred.store.if185
  %i.id = extractelement <8 x i1> %i.ho, i64 5
  br i1 %i.id, label %pred.store.if187, label %pred.store.continue188

end_hunk_50
begin_hunk_51
  store i8 %i.fi, ptr %i.if, align 1, !tbaa !8
  br label %pred.store.continue188

pred.store.continue188:                           ; preds = %pred.store.continue186, %pred.store.if187
  %i.ig = extractelement <8 x i1> %i.ho, i64 6
  br i1 %i.ig, label %pred.store.if189, label %pred.store.continue190

end_hunk_51
begin_hunk_52
  store i8 %i.fi, ptr %i.ii, align 1, !tbaa !8
  br label %pred.store.continue190

pred.store.continue190:                           ; preds = %pred.store.continue188, %pred.store.if189
  %i.ij = extractelement <8 x i1> %i.ho, i64 7
  br i1 %i.ij, label %pred.store.if191, label %pred.store.continue192

end_hunk_52
begin_hunk_53
  store i8 %i.fi, ptr %i.il, align 1, !tbaa !8
  br label %pred.store.continue192

pred.store.continue192:                           ; preds = %pred.store.continue190, %pred.store.if191
  %index.next193 = add nuw i64 %index173, 8       ; 2 uses
  %i.im = icmp eq i64 %index.next193, %n.vec169
  br i1 %i.im, label %vec.epilog.middle.block194, label %vec.epilog.vector.body172, !llvm.loop !82
end_hunk_53
begin_hunk_54
bb.w:                                             ; preds = %buffreplace.exit.i
  %i.it = load i8, ptr %i.br, align 8, !tbaa !55  ; 3 uses
  %.val.i = load ptr, ptr %i.bt, align 8, !tbaa !26 ; 2 uses
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !27 ; 25 uses
  %i.iu = getelementptr i8, ptr %.val.i, i64 8
  %.val.val14.i = load i64, ptr %i.iu, align 8, !tbaa !65 ; 13 uses
  %.not1.i15.i = icmp eq i64 %.val.val14.i, 0
end_hunk_54
begin_hunk_55

vector.body207:                                   ; preds = %pred.store.continue242, %vector.ph202
  %index208 = phi i64 [ 0, %vector.ph202 ], [ %index.next243, %pred.store.continue242 ] ; 2 uses
  %i.iw = sub i64 %.val.val14.i, %index208        ; 16 uses
  %i.ix = getelementptr i8, ptr %.val.val.i, i64 %i.iw ; 2 uses
  %i.iy = getelementptr i8, ptr %i.ix, i64 -16
  %wide.load209 = load <16 x i8>, ptr %i.iy, align 1, !tbaa !8
  %reverse210 = shufflevector <16 x i8> %wide.load209, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
end_hunk_55
begin_hunk_56
  br i1 %i.ja, label %pred.store.if211, label %pred.store.continue212

pred.store.if211:                                 ; preds = %vector.body207
  %i.jb = getelementptr i8, ptr %i.ix, i64 -1
  store i8 46, ptr %i.jb, align 1, !tbaa !8
  br label %pred.store.continue212

pred.store.continue212:                           ; preds = %vector.body207, %pred.store.if211
  %i.jc = extractelement <16 x i1> %i.iz, i64 1
  br i1 %i.jc, label %pred.store.if213, label %pred.store.continue214

end_hunk_56
begin_hunk_57
  store i8 46, ptr %i.je, align 1, !tbaa !8
  br label %pred.store.continue214

pred.store.continue214:                           ; preds = %pred.store.continue212, %pred.store.if213
  %i.jf = extractelement <16 x i1> %i.iz, i64 2
  br i1 %i.jf, label %pred.store.if215, label %pred.store.continue216

end_hunk_57
begin_hunk_58
  store i8 46, ptr %i.jh, align 1, !tbaa !8
  br label %pred.store.continue216

pred.store.continue216:                           ; preds = %pred.store.continue214, %pred.store.if215
  %i.ji = extractelement <16 x i1> %i.iz, i64 3
  br i1 %i.ji, label %pred.store.if217, label %pred.store.continue218

end_hunk_58
begin_hunk_59
  store i8 46, ptr %i.jk, align 1, !tbaa !8
  br label %pred.store.continue218

pred.store.continue218:                           ; preds = %pred.store.continue216, %pred.store.if217
  %i.jl = extractelement <16 x i1> %i.iz, i64 4
  br i1 %i.jl, label %pred.store.if219, label %pred.store.continue220

end_hunk_59
begin_hunk_60
  store i8 46, ptr %i.jn, align 1, !tbaa !8
  br label %pred.store.continue220

pred.store.continue220:                           ; preds = %pred.store.continue218, %pred.store.if219
  %i.jo = extractelement <16 x i1> %i.iz, i64 5
  br i1 %i.jo, label %pred.store.if221, label %pred.store.continue222

end_hunk_60
begin_hunk_61
  store i8 46, ptr %i.jq, align 1, !tbaa !8
  br label %pred.store.continue222

pred.store.continue222:                           ; preds = %pred.store.continue220, %pred.store.if221
  %i.jr = extractelement <16 x i1> %i.iz, i64 6
  br i1 %i.jr, label %pred.store.if223, label %pred.store.continue224

end_hunk_61
begin_hunk_62
  store i8 46, ptr %i.jt, align 1, !tbaa !8
  br label %pred.store.continue224

pred.store.continue224:                           ; preds = %pred.store.continue222, %pred.store.if223
  %i.ju = extractelement <16 x i1> %i.iz, i64 7
  br i1 %i.ju, label %pred.store.if225, label %pred.store.continue226

end_hunk_62
begin_hunk_63
  store i8 46, ptr %i.jw, align 1, !tbaa !8
  br label %pred.store.continue226

pred.store.continue226:                           ; preds = %pred.store.continue224, %pred.store.if225
  %i.jx = extractelement <16 x i1> %i.iz, i64 8
  br i1 %i.jx, label %pred.store.if227, label %pred.store.continue228

end_hunk_63
begin_hunk_64
  store i8 46, ptr %i.jz, align 1, !tbaa !8
  br label %pred.store.continue228

pred.store.continue228:                           ; preds = %pred.store.continue226, %pred.store.if227
  %i.ka = extractelement <16 x i1> %i.iz, i64 9
  br i1 %i.ka, label %pred.store.if229, label %pred.store.continue230

end_hunk_64
begin_hunk_65
  store i8 46, ptr %i.kc, align 1, !tbaa !8
  br label %pred.store.continue230

pred.store.continue230:                           ; preds = %pred.store.continue228, %pred.store.if229
  %i.kd = extractelement <16 x i1> %i.iz, i64 10
  br i1 %i.kd, label %pred.store.if231, label %pred.store.continue232

end_hunk_65
begin_hunk_66
  store i8 46, ptr %i.kf, align 1, !tbaa !8
  br label %pred.store.continue232

pred.store.continue232:                           ; preds = %pred.store.continue230, %pred.store.if231
  %i.kg = extractelement <16 x i1> %i.iz, i64 11
  br i1 %i.kg, label %pred.store.if233, label %pred.store.continue234

end_hunk_66
begin_hunk_67
  store i8 46, ptr %i.ki, align 1, !tbaa !8
  br label %pred.store.continue234

pred.store.continue234:                           ; preds = %pred.store.continue232, %pred.store.if233
  %i.kj = extractelement <16 x i1> %i.iz, i64 12
  br i1 %i.kj, label %pred.store.if235, label %pred.store.continue236

end_hunk_67
begin_hunk_68
  store i8 46, ptr %i.kl, align 1, !tbaa !8
  br label %pred.store.continue236

pred.store.continue236:                           ; preds = %pred.store.continue234, %pred.store.if235
  %i.km = extractelement <16 x i1> %i.iz, i64 13
  br i1 %i.km, label %pred.store.if237, label %pred.store.continue238

end_hunk_68
begin_hunk_69
  store i8 46, ptr %i.ko, align 1, !tbaa !8
  br label %pred.store.continue238

pred.store.continue238:                           ; preds = %pred.store.continue236, %pred.store.if237
  %i.kp = extractelement <16 x i1> %i.iz, i64 14
  br i1 %i.kp, label %pred.store.if239, label %pred.store.continue240

end_hunk_69
begin_hunk_70
  store i8 46, ptr %i.kr, align 1, !tbaa !8
  br label %pred.store.continue240

pred.store.continue240:                           ; preds = %pred.store.continue238, %pred.store.if239
  %i.ks = extractelement <16 x i1> %i.iz, i64 15
  br i1 %i.ks, label %pred.store.if241, label %pred.store.continue242

end_hunk_70
begin_hunk_71
  store i8 46, ptr %i.ku, align 1, !tbaa !8
  br label %pred.store.continue242

pred.store.continue242:                           ; preds = %pred.store.continue240, %pred.store.if241
  %index.next243 = add nuw i64 %index208, 16      ; 2 uses
  %i.kv = icmp eq i64 %index.next243, %n.vec204
  br i1 %i.kv, label %middle.block244, label %vector.body207, !llvm.loop !84
end_hunk_71
begin_hunk_72

vec.epilog.vector.body255:                        ; preds = %pred.store.continue275, %vec.epilog.ph250
  %index256 = phi i64 [ %vec.epilog.resume.val246, %vec.epilog.ph250 ], [ %index.next276, %pred.store.continue275 ] ; 2 uses
  %offset.idx257 = sub i64 %.val.val14.i, %index256 ; 8 uses
  %i.kx = getelementptr i8, ptr %.val.val.i, i64 %offset.idx257 ; 2 uses
  %i.ky = getelementptr i8, ptr %i.kx, i64 -8
  %wide.load258 = load <8 x i8>, ptr %i.ky, align 1, !tbaa !8
  %reverse259 = shufflevector <8 x i8> %wide.load258, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
end_hunk_72
begin_hunk_73
  br i1 %i.la, label %pred.store.if260, label %pred.store.continue261

pred.store.if260:                                 ; preds = %vec.epilog.vector.body255
  %i.lb = getelementptr i8, ptr %i.kx, i64 -1
  store i8 46, ptr %i.lb, align 1, !tbaa !8
  br label %pred.store.continue261

pred.store.continue261:                           ; preds = %vec.epilog.vector.body255, %pred.store.if260
  %i.lc = extractelement <8 x i1> %i.kz, i64 1
  br i1 %i.lc, label %pred.store.if262, label %pred.store.continue263

end_hunk_73
begin_hunk_74
  store i8 46, ptr %i.le, align 1, !tbaa !8
  br label %pred.store.continue263

pred.store.continue263:                           ; preds = %pred.store.continue261, %pred.store.if262
  %i.lf = extractelement <8 x i1> %i.kz, i64 2
  br i1 %i.lf, label %pred.store.if264, label %pred.store.continue265

end_hunk_74
begin_hunk_75
  store i8 46, ptr %i.lh, align 1, !tbaa !8
  br label %pred.store.continue265

pred.store.continue265:                           ; preds = %pred.store.continue263, %pred.store.if264
  %i.li = extractelement <8 x i1> %i.kz, i64 3
  br i1 %i.li, label %pred.store.if266, label %pred.store.continue267

end_hunk_75
begin_hunk_76
  store i8 46, ptr %i.lk, align 1, !tbaa !8
  br label %pred.store.continue267

pred.store.continue267:                           ; preds = %pred.store.continue265, %pred.store.if266
  %i.ll = extractelement <8 x i1> %i.kz, i64 4
  br i1 %i.ll, label %pred.store.if268, label %pred.store.continue269

end_hunk_76
begin_hunk_77
  store i8 46, ptr %i.ln, align 1, !tbaa !8
  br label %pred.store.continue269

pred.store.continue269:                           ; preds = %pred.store.continue267, %pred.store.if268
  %i.lo = extractelement <8 x i1> %i.kz, i64 5
  br i1 %i.lo, label %pred.store.if270, label %pred.store.continue271

end_hunk_77
begin_hunk_78
  store i8 46, ptr %i.lq, align 1, !tbaa !8
  br label %pred.store.continue271

pred.store.continue271:                           ; preds = %pred.store.continue269, %pred.store.if270
  %i.lr = extractelement <8 x i1> %i.kz, i64 6
  br i1 %i.lr, label %pred.store.if272, label %pred.store.continue273

end_hunk_78
begin_hunk_79
  store i8 46, ptr %i.lt, align 1, !tbaa !8
  br label %pred.store.continue273

pred.store.continue273:                           ; preds = %pred.store.continue271, %pred.store.if272
  %i.lu = extractelement <8 x i1> %i.kz, i64 7
  br i1 %i.lu, label %pred.store.if274, label %pred.store.continue275

end_hunk_79
begin_hunk_80
  store i8 46, ptr %i.lw, align 1, !tbaa !8
  br label %pred.store.continue275

pred.store.continue275:                           ; preds = %pred.store.continue273, %pred.store.if274
  %index.next276 = add nuw i64 %index256, 8       ; 2 uses
  %i.lx = icmp eq i64 %index.next276, %n.vec252
  br i1 %i.lx, label %vec.epilog.middle.block277, label %vec.epilog.vector.body255, !llvm.loop !85
end_hunk_80
