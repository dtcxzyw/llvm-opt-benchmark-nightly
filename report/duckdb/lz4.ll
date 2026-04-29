inline.NumInlined: 117
inline.NumDeleted: 34
begin_hunk_0_@_ZN10duckdb_lz4L20LZ4_compress_genericEPNS_21LZ4_stream_t_internalEPKcPciPiiNS_23limitedOutput_directiveENS_11tableType_tENS_14dict_directiveENS_19dictIssue_directiveEi:bb.a
  br i1 %or.cond297, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ao
  %n.vec = and i64 %i.fu, 4611686018427387900     ; 3 uses
  %i.fw = shl i64 %n.vec, 3                       ; 2 uses
  %i.fx = getelementptr i8, ptr %.0410.i, i64 %i.fw
  %i.fy = getelementptr i8, ptr %.2416.i, i64 %i.fw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 3                 ; 2 uses
  %next.gep = getelementptr i8, ptr %.0410.i, i64 %offset.idx ; 2 uses
  %next.gep294 = getelementptr i8, ptr %.2416.i, i64 %offset.idx ; 2 uses
  %i.fz = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 1
  %wide.load295 = load <2 x i64>, ptr %i.fz, align 1
end_hunk_0
begin_hunk_1_@_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m:bb.a
  br i1 %or.cond1211, label %.preheader595.preheader1221, label %vector.ph1033

vector.ph1033:                                    ; preds = %.preheader595.preheader
  %n.vec1035 = and i64 %i.gz, 4611686018427387900 ; 3 uses
  %i.hb = shl i64 %n.vec1035, 3                   ; 2 uses
  %i.hc = getelementptr i8, ptr %.6544, i64 %i.hb
  %i.hd = getelementptr i8, ptr %.7, i64 %i.hb
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %vector.ph1033
  %index1037 = phi i64 [ 0, %vector.ph1033 ], [ %index.next1043, %vector.body1036 ] ; 2 uses
  %offset.idx = shl i64 %index1037, 3             ; 2 uses
  %next.gep1038 = getelementptr i8, ptr %.6544, i64 %offset.idx ; 2 uses
  %next.gep1040 = getelementptr i8, ptr %.7, i64 %offset.idx ; 2 uses
  %i.he = getelementptr i8, ptr %next.gep1038, i64 16
  %wide.load1041.a = load <2 x i64>, ptr %next.gep1038, align 1
  %wide.load1042 = load <2 x i64>, ptr %i.he, align 1
end_hunk_1
begin_hunk_2_@_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m:bb.a
  br i1 %diff.check1072, label %.preheader593.preheader1214, label %vector.ph1076

vector.ph1076:                                    ; preds = %vector.memcheck1071
  %n.vec1078 = and i64 %i.oj, 4611686018427387900 ; 3 uses
  %i.om = shl i64 %n.vec1078, 3                   ; 2 uses
  %i.on = getelementptr i8, ptr %.3373, i64 %i.om
  %i.oo = getelementptr i8, ptr %i.ny, i64 %i.om
  br label %vector.body1079

vector.body1079:                                  ; preds = %vector.body1079, %vector.ph1076
  %index1080 = phi i64 [ 0, %vector.ph1076 ], [ %index.next1087, %vector.body1079 ] ; 2 uses
  %offset.idx1081 = shl i64 %index1080, 3         ; 2 uses
  %next.gep1082 = getelementptr i8, ptr %.3373, i64 %offset.idx1081 ; 2 uses
  %next.gep1084 = getelementptr i8, ptr %i.ny, i64 %offset.idx1081 ; 2 uses
  %i.op = getelementptr i8, ptr %next.gep1082, i64 16
  %wide.load1085 = load <2 x i64>, ptr %next.gep1082, align 1
  %wide.load1086 = load <2 x i64>, ptr %i.op, align 1
end_hunk_2
begin_hunk_3_@_ZN10duckdb_lz4L22LZ4_decompress_genericEPKcPciiNS_18earlyEnd_directiveENS_14dict_directiveEPKhS6_m:bb.a
  br i1 %diff.check1050, label %scalar.ph1053.preheader, label %vector.ph1055

vector.ph1055:                                    ; preds = %vector.memcheck1047
  %n.vec1057 = and i64 %i.qc, 4611686018427387900 ; 3 uses
  %i.qf = shl i64 %n.vec1057, 3                   ; 2 uses
  %i.qg = getelementptr i8, ptr %.3373, i64 %i.qf
  %i.qh = getelementptr i8, ptr %i.pw, i64 %i.qf
  br label %vector.body1058

vector.body1058:                                  ; preds = %vector.body1058, %vector.ph1055
  %index1059 = phi i64 [ 0, %vector.ph1055 ], [ %index.next1066, %vector.body1058 ] ; 2 uses
  %offset.idx1060 = shl i64 %index1059, 3         ; 2 uses
  %next.gep1061 = getelementptr i8, ptr %.3373, i64 %offset.idx1060 ; 2 uses
  %next.gep1063 = getelementptr i8, ptr %i.pw, i64 %offset.idx1060 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %next.gep1061, i64 8
  %i.qj = getelementptr inbounds nuw i8, ptr %next.gep1061, i64 24
  %wide.load1064 = load <2 x i64>, ptr %i.qi, align 1
end_hunk_3
begin_hunk_4_@_ZN10duckdb_lz4L23LZ4_memcpy_using_offsetEPhPKhS0_m:bb.a
  br i1 %diff.check, label %scalar.ph38.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %vector.memcheck
  %n.vec42 = and i64 %i.ai, 4611686018427387900   ; 3 uses
  %i.al = shl i64 %n.vec42, 3                     ; 2 uses
  %i.am = getelementptr i8, ptr %.023.i, i64 %i.al
  %i.an = getelementptr i8, ptr %.0.i, i64 %i.al
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph40
  %index44 = phi i64 [ 0, %vector.ph40 ], [ %index.next50, %vector.body43 ] ; 2 uses
  %offset.idx45 = shl i64 %index44, 3             ; 2 uses
  %next.gep46.a = getelementptr i8, ptr %.023.i, i64 %offset.idx45 ; 2 uses
  %next.gep48 = getelementptr i8, ptr %.0.i, i64 %offset.idx45 ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep46.a, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep46.a, align 1
  %wide.load49 = load <2 x i64>, ptr %i.ao, align 1
end_hunk_4
begin_hunk_5_@_ZN10duckdb_lz4L23LZ4_memcpy_using_offsetEPhPKhS0_m:bb.a
  br i1 %min.iters.check, label %.lr.ph.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ba, 4611686018427387900     ; 3 uses
  %i.bb = shl i64 %n.vec, 3                       ; 2 uses
  %i.bc = getelementptr i8, ptr %.025, i64 %i.bb
  %i.bd = getelementptr i8, ptr %0, i64 %i.bb
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.sroa.9.0, i64 0
  %i.be = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body
end_hunk_5
