inline.NumInlined: 1132
inline.NumDeleted: 755
begin_hunk_0_@_ZN6Assimp11MMDImporter10CreateMeshEPKN3pmx8PmxModelEii:bb.a
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader1121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.gq, 4611686018427387900     ; 3 uses
  %i.gs = shl i64 %n.vec, 3                       ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gi, i64 %i.gs  ; 2 uses
  %i.gu = getelementptr i8, ptr %i.fx, i64 %i.gs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gi, i64 %offset.idx ; 2 uses
  %next.gep866 = getelementptr i8, ptr %i.fx, i64 %offset.idx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.gv = getelementptr i8, ptr %next.gep866, i64 16
end_hunk_0
begin_hunk_1_@_ZN6Assimp11MMDImporter10CreateMeshEPKN3pmx8PmxModelEii:bb.a
  br i1 %or.cond1109, label %.lr.ph.i.i.i.i.i172.preheader1123, label %vector.ph893

vector.ph893:                                     ; preds = %.lr.ph.i.i.i.i.i172.preheader
  %n.vec895 = and i64 %i.is, 4611686018427387900  ; 3 uses
  %i.iu = shl i64 %n.vec895, 3                    ; 2 uses
  %i.iv = getelementptr i8, ptr %i.ij, i64 %i.iu  ; 2 uses
  %i.iw = getelementptr i8, ptr %i.hy, i64 %i.iu
  br label %vector.body896

vector.body896:                                   ; preds = %vector.body896, %vector.ph893
  %index897 = phi i64 [ 0, %vector.ph893 ], [ %index.next904, %vector.body896 ] ; 2 uses
  %offset.idx898 = shl i64 %index897, 3           ; 2 uses
  %next.gep899 = getelementptr i8, ptr %i.ij, i64 %offset.idx898 ; 2 uses
  %next.gep901 = getelementptr i8, ptr %i.hy, i64 %offset.idx898 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.ix = getelementptr i8, ptr %next.gep901, i64 16
end_hunk_1
begin_hunk_2_@_ZN6Assimp11MMDImporter10CreateMeshEPKN3pmx8PmxModelEii:bb.a
  br i1 %or.cond1110, label %.lr.ph.i.i.i.i.i201.preheader1122, label %vector.ph873

vector.ph873:                                     ; preds = %.lr.ph.i.i.i.i.i201.preheader
  %n.vec875 = and i64 %i.kt, 4611686018427387900  ; 3 uses
  %i.kv = shl i64 %n.vec875, 3                    ; 2 uses
  %i.kw = getelementptr i8, ptr %i.kl, i64 %i.kv  ; 2 uses
  %i.kx = getelementptr i8, ptr %i.ka, i64 %i.kv
  br label %vector.body876

vector.body876:                                   ; preds = %vector.body876, %vector.ph873
  %index877 = phi i64 [ 0, %vector.ph873 ], [ %index.next884, %vector.body876 ] ; 2 uses
  %offset.idx878 = shl i64 %index877, 3           ; 2 uses
  %next.gep879 = getelementptr i8, ptr %i.kl, i64 %offset.idx878 ; 2 uses
  %next.gep881 = getelementptr i8, ptr %i.ka, i64 %offset.idx878 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %i.ky = getelementptr i8, ptr %next.gep881, i64 16
end_hunk_2
begin_hunk_3_@_ZN6Assimp11MMDImporter10CreateMeshEPKN3pmx8PmxModelEii:bb.a
  br i1 %or.cond1111, label %.lr.ph.i.i.i.i.i232.preheader1127, label %vector.ph973

vector.ph973:                                     ; preds = %.lr.ph.i.i.i.i.i232.preheader
  %n.vec975 = and i64 %i.mv, 4611686018427387900  ; 3 uses
  %i.mx = shl i64 %n.vec975, 3                    ; 2 uses
  %i.my = getelementptr i8, ptr %i.mm, i64 %i.mx  ; 2 uses
  %i.mz = getelementptr i8, ptr %i.mb, i64 %i.mx
  br label %vector.body976

vector.body976:                                   ; preds = %vector.body976, %vector.ph973
  %index977 = phi i64 [ 0, %vector.ph973 ], [ %index.next984, %vector.body976 ] ; 2 uses
  %offset.idx978 = shl i64 %index977, 3           ; 2 uses
  %next.gep979 = getelementptr i8, ptr %i.mm, i64 %offset.idx978 ; 2 uses
  %next.gep981 = getelementptr i8, ptr %i.mb, i64 %offset.idx978 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.na = getelementptr i8, ptr %next.gep981, i64 16
end_hunk_3
begin_hunk_4_@_ZN6Assimp11MMDImporter10CreateMeshEPKN3pmx8PmxModelEii:bb.a
  br i1 %or.cond1112, label %.lr.ph.i.i.i.i.i263.preheader1126, label %vector.ph953

vector.ph953:                                     ; preds = %.lr.ph.i.i.i.i.i263.preheader
  %n.vec955 = and i64 %i.ox, 4611686018427387900  ; 3 uses
  %i.oz = shl i64 %n.vec955, 3                    ; 2 uses
  %i.pa = getelementptr i8, ptr %i.oo, i64 %i.oz  ; 2 uses
  %i.pb = getelementptr i8, ptr %i.od, i64 %i.oz
  br label %vector.body956

vector.body956:                                   ; preds = %vector.body956, %vector.ph953
  %index957 = phi i64 [ 0, %vector.ph953 ], [ %index.next964, %vector.body956 ] ; 2 uses
  %offset.idx958 = shl i64 %index957, 3           ; 2 uses
  %next.gep959 = getelementptr i8, ptr %i.oo, i64 %offset.idx958 ; 2 uses
  %next.gep961 = getelementptr i8, ptr %i.od, i64 %offset.idx958 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.pc = getelementptr i8, ptr %next.gep961, i64 16
end_hunk_4
begin_hunk_5_@_ZN6Assimp11MMDImporter10CreateMeshEPKN3pmx8PmxModelEii:bb.a
  br i1 %or.cond1113, label %.lr.ph.i.i.i.i.i294.preheader1125, label %vector.ph933

vector.ph933:                                     ; preds = %.lr.ph.i.i.i.i.i294.preheader
  %n.vec935 = and i64 %i.qz, 4611686018427387900  ; 3 uses
  %i.rb = shl i64 %n.vec935, 3                    ; 2 uses
  %i.rc = getelementptr i8, ptr %i.qq, i64 %i.rb  ; 2 uses
  %i.rd = getelementptr i8, ptr %i.qf, i64 %i.rb
  br label %vector.body936

vector.body936:                                   ; preds = %vector.body936, %vector.ph933
  %index937 = phi i64 [ 0, %vector.ph933 ], [ %index.next944, %vector.body936 ] ; 2 uses
  %offset.idx938 = shl i64 %index937, 3           ; 2 uses
  %next.gep939 = getelementptr i8, ptr %i.qq, i64 %offset.idx938 ; 2 uses
  %next.gep941 = getelementptr i8, ptr %i.qf, i64 %offset.idx938 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.re = getelementptr i8, ptr %next.gep941, i64 16
end_hunk_5
begin_hunk_6_@_ZN6Assimp11MMDImporter10CreateMeshEPKN3pmx8PmxModelEii:bb.a
  br i1 %or.cond1114, label %.lr.ph.i.i.i.i.i325.preheader1124, label %vector.ph913

vector.ph913:                                     ; preds = %.lr.ph.i.i.i.i.i325.preheader
  %n.vec915 = and i64 %i.tb, 4611686018427387900  ; 3 uses
  %i.td = shl i64 %n.vec915, 3                    ; 2 uses
  %i.te = getelementptr i8, ptr %i.ss, i64 %i.td  ; 2 uses
  %i.tf = getelementptr i8, ptr %i.sh, i64 %i.td
  br label %vector.body916

vector.body916:                                   ; preds = %vector.body916, %vector.ph913
  %index917 = phi i64 [ 0, %vector.ph913 ], [ %index.next924, %vector.body916 ] ; 2 uses
  %offset.idx918 = shl i64 %index917, 3           ; 2 uses
  %next.gep919 = getelementptr i8, ptr %i.ss, i64 %offset.idx918 ; 2 uses
  %next.gep921 = getelementptr i8, ptr %i.sh, i64 %offset.idx918 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.tg = getelementptr i8, ptr %next.gep921, i64 16
end_hunk_6
begin_hunk_7_@_ZN6Assimp11MMDImporter10CreateMeshEPKN3pmx8PmxModelEii:bb.a
  br i1 %or.cond1115, label %.lr.ph.i.i.i.i.i356.preheader1129, label %vector.ph1013

vector.ph1013:                                    ; preds = %.lr.ph.i.i.i.i.i356.preheader
  %n.vec1015 = and i64 %i.vd, 4611686018427387900 ; 3 uses
  %i.vf = shl i64 %n.vec1015, 3                   ; 2 uses
  %i.vg = getelementptr i8, ptr %i.uu, i64 %i.vf  ; 2 uses
  %i.vh = getelementptr i8, ptr %i.uj, i64 %i.vf
  br label %vector.body1016

vector.body1016:                                  ; preds = %vector.body1016, %vector.ph1013
  %index1017 = phi i64 [ 0, %vector.ph1013 ], [ %index.next1024, %vector.body1016 ] ; 2 uses
  %offset.idx1018 = shl i64 %index1017, 3         ; 2 uses
  %next.gep1019 = getelementptr i8, ptr %i.uu, i64 %offset.idx1018 ; 2 uses
  %next.gep1021.a = getelementptr i8, ptr %i.uj, i64 %offset.idx1018 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.vi = getelementptr i8, ptr %next.gep1021.a, i64 16
end_hunk_7
begin_hunk_8_@_ZN6Assimp11MMDImporter10CreateMeshEPKN3pmx8PmxModelEii:bb.a
  br i1 %or.cond1116, label %.lr.ph.i.i.i.i.i387.preheader1128, label %vector.ph993

vector.ph993:                                     ; preds = %.lr.ph.i.i.i.i.i387.preheader
  %n.vec995 = and i64 %i.xe, 4611686018427387900  ; 3 uses
  %i.xg = shl i64 %n.vec995, 3                    ; 2 uses
  %i.xh = getelementptr i8, ptr %i.ww, i64 %i.xg  ; 2 uses
  %i.xi = getelementptr i8, ptr %i.wl, i64 %i.xg
  br label %vector.body996

vector.body996:                                   ; preds = %vector.body996, %vector.ph993
  %index997 = phi i64 [ 0, %vector.ph993 ], [ %index.next1004, %vector.body996 ] ; 2 uses
  %offset.idx998 = shl i64 %index997, 3           ; 2 uses
  %next.gep999 = getelementptr i8, ptr %i.ww, i64 %offset.idx998 ; 2 uses
  %next.gep1001 = getelementptr i8, ptr %i.wl, i64 %offset.idx998 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.xj = getelementptr i8, ptr %next.gep1001, i64 16
end_hunk_8
begin_hunk_9_@_ZN6Assimp11MMDImporter10CreateMeshEPKN3pmx8PmxModelEii:bb.a
  br i1 %or.cond1117, label %.lr.ph.i.i.i.i.i418.preheader1133, label %vector.ph1093

vector.ph1093:                                    ; preds = %.lr.ph.i.i.i.i.i418.preheader
  %n.vec1095 = and i64 %i.zi, 4611686018427387900 ; 3 uses
  %i.zk = shl i64 %n.vec1095, 3                   ; 2 uses
  %i.zl = getelementptr i8, ptr %i.yz, i64 %i.zk  ; 2 uses
  %i.zm = getelementptr i8, ptr %i.yo, i64 %i.zk
  br label %vector.body1096

vector.body1096:                                  ; preds = %vector.body1096, %vector.ph1093
  %index1097 = phi i64 [ 0, %vector.ph1093 ], [ %index.next1104, %vector.body1096 ] ; 2 uses
  %offset.idx1098 = shl i64 %index1097, 3         ; 2 uses
  %next.gep1099 = getelementptr i8, ptr %i.yz, i64 %offset.idx1098 ; 2 uses
  %next.gep1101 = getelementptr i8, ptr %i.yo, i64 %offset.idx1098 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93)
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.zn = getelementptr i8, ptr %next.gep1101, i64 16
end_hunk_9
begin_hunk_10_@_ZN6Assimp11MMDImporter10CreateMeshEPKN3pmx8PmxModelEii:bb.a
  br i1 %or.cond1118, label %.lr.ph.i.i.i.i.i449.preheader1132, label %vector.ph1073

vector.ph1073:                                    ; preds = %.lr.ph.i.i.i.i.i449.preheader
  %n.vec1075 = and i64 %i.abk, 4611686018427387900 ; 3 uses
  %i.abm = shl i64 %n.vec1075, 3                  ; 2 uses
  %i.abn = getelementptr i8, ptr %i.abb, i64 %i.abm ; 2 uses
  %i.abo = getelementptr i8, ptr %i.aaq, i64 %i.abm
  br label %vector.body1076

vector.body1076:                                  ; preds = %vector.body1076, %vector.ph1073
  %index1077 = phi i64 [ 0, %vector.ph1073 ], [ %index.next1084, %vector.body1076 ] ; 2 uses
  %offset.idx1078 = shl i64 %index1077, 3         ; 2 uses
  %next.gep1079 = getelementptr i8, ptr %i.abb, i64 %offset.idx1078 ; 2 uses
  %next.gep1081 = getelementptr i8, ptr %i.aaq, i64 %offset.idx1078 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.abp = getelementptr i8, ptr %next.gep1081, i64 16
end_hunk_10
begin_hunk_11_@_ZN6Assimp11MMDImporter10CreateMeshEPKN3pmx8PmxModelEii:bb.a
  br i1 %or.cond1119, label %.lr.ph.i.i.i.i.i480.preheader1131, label %vector.ph1053

vector.ph1053:                                    ; preds = %.lr.ph.i.i.i.i.i480.preheader
  %n.vec1055 = and i64 %i.adm, 4611686018427387900 ; 3 uses
  %i.ado = shl i64 %n.vec1055, 3                  ; 2 uses
  %i.adp = getelementptr i8, ptr %i.add, i64 %i.ado ; 2 uses
  %i.adq = getelementptr i8, ptr %i.acs, i64 %i.ado
  br label %vector.body1056

vector.body1056:                                  ; preds = %vector.body1056, %vector.ph1053
  %index1057 = phi i64 [ 0, %vector.ph1053 ], [ %index.next1064, %vector.body1056 ] ; 2 uses
  %offset.idx1058 = shl i64 %index1057, 3         ; 2 uses
  %next.gep1059 = getelementptr i8, ptr %i.add, i64 %offset.idx1058 ; 2 uses
  %next.gep1061 = getelementptr i8, ptr %i.acs, i64 %offset.idx1058 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.adr = getelementptr i8, ptr %next.gep1061, i64 16
end_hunk_11
begin_hunk_12_@_ZN6Assimp11MMDImporter10CreateMeshEPKN3pmx8PmxModelEii:bb.a
  br i1 %or.cond1120, label %.lr.ph.i.i.i.i.i511.preheader1130, label %vector.ph1033

vector.ph1033:                                    ; preds = %.lr.ph.i.i.i.i.i511.preheader
  %n.vec1035 = and i64 %i.afo, 4611686018427387900 ; 3 uses
  %i.afq = shl i64 %n.vec1035, 3                  ; 2 uses
  %i.afr = getelementptr i8, ptr %i.aff, i64 %i.afq ; 2 uses
  %i.afs = getelementptr i8, ptr %i.aeu, i64 %i.afq
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %vector.ph1033
  %index1037 = phi i64 [ 0, %vector.ph1033 ], [ %index.next1044, %vector.body1036 ] ; 2 uses
  %offset.idx1038 = shl i64 %index1037, 3         ; 2 uses
  %next.gep1039 = getelementptr i8, ptr %i.aff, i64 %offset.idx1038 ; 2 uses
  %next.gep1041 = getelementptr i8, ptr %i.aeu, i64 %offset.idx1038 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.aft = getelementptr i8, ptr %next.gep1041, i64 16
end_hunk_12
