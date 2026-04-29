inline.NumInlined: 16
inline.NumDeleted: 7
begin_hunk_0_@Q__align:bb.a
  br i1 %found.conflict1072, label %.lr.ph.i526.preheader, label %vector.ph1075

vector.ph1075:                                    ; preds = %vector.memcheck1067
  %n.vec1077 = and i64 %i.n, 4294967288           ; 4 uses
  %i.xu = shl nuw nsw i64 %n.vec1077, 2           ; 2 uses
  %i.xv = getelementptr i8, ptr %i.xo, i64 %i.xu
  %.cast = trunc nuw i64 %n.vec1077 to i32
  %i.xw = sub i32 %i.o, %.cast
  %i.xx = getelementptr i8, ptr %i.vi, i64 %i.xu
  br label %vector.body1078

vector.body1078:                                  ; preds = %vector.body1078, %vector.ph1075
  %index1079 = phi i64 [ 0, %vector.ph1075 ], [ %index.next1086, %vector.body1078 ] ; 2 uses
  %offset.idx = shl i64 %index1079, 2             ; 2 uses
  %next.gep = getelementptr i8, ptr %i.xo, i64 %offset.idx ; 2 uses
  %next.gep1081 = getelementptr i8, ptr %i.vi, i64 %offset.idx ; 3 uses
  %i.xy = getelementptr i8, ptr %next.gep, i64 16
  %wide.load1082.a = load <4 x float>, ptr %next.gep, align 4, !tbaa !14, !alias.scope !111
  %wide.load1083.a = load <4 x float>, ptr %i.xy, align 4, !tbaa !14, !alias.scope !111
end_hunk_0
begin_hunk_1_@Q__align:bb.a
  %i.aho = zext i32 %i.ahk to i64
  %i.ahp = add nuw nsw i64 %i.aho, 1              ; 2 uses
  %min.iters.check1220 = icmp ult i32 %i.ahk, 7
  %n.vec1223 = and i64 %i.ahp, 8589934584         ; 4 uses
  %i.ahq = shl nuw nsw i64 %n.vec1223, 2          ; 2 uses
  %.cast1224 = trunc i64 %n.vec1223 to i32
  %i.ahr = sub i32 %i.o, %.cast1224
  %cmp.n1237 = icmp eq i64 %i.ahp, %n.vec1223
  br label %bb.z

end_hunk_1
begin_hunk_2_@Q__align:bb.a

vector.ph1221:                                    ; preds = %vector.memcheck1213
  %i.ahz = getelementptr i8, ptr %i.ahy, i64 %i.ahq
  %i.aia = getelementptr i8, ptr %.0466625, i64 %i.ahq
  br label %vector.body1225

vector.body1225:                                  ; preds = %vector.body1225, %vector.ph1221
  %index1226 = phi i64 [ 0, %vector.ph1221 ], [ %index.next1235, %vector.body1225 ] ; 2 uses
  %offset.idx1227 = shl i64 %index1226, 2         ; 2 uses
  %next.gep1228 = getelementptr i8, ptr %i.ahy, i64 %offset.idx1227 ; 2 uses
  %next.gep1230 = getelementptr i8, ptr %.0466625, i64 %offset.idx1227 ; 3 uses
  %i.aib = getelementptr i8, ptr %next.gep1228, i64 16
  %wide.load1231 = load <4 x float>, ptr %next.gep1228, align 4, !tbaa !14, !alias.scope !149
  %wide.load1232 = load <4 x float>, ptr %i.aib, align 4, !tbaa !14, !alias.scope !149
end_hunk_2
begin_hunk_3_@Q__align:bb.a

vector.ph1322:                                    ; preds = %vector.main.loop.iter.check
  %n.mod.vf1323 = and i64 %i.asz, 28
  %n.vec1324 = and i64 %i.asz, 4294967264         ; 5 uses
  %.cast1325 = trunc nuw i64 %n.vec1324 to i32
  %i.atb = sub i32 %i.asy, %.cast1325
  %i.atc = sub nsw i64 0, %n.vec1324              ; 2 uses
  %i.atd = getelementptr i8, ptr %.012639.i, i64 %i.atc ; 2 uses
  %i.ate = getelementptr i8, ptr %.013238.i, i64 %i.atc ; 2 uses
  br label %vector.body1326

vector.body1326:                                  ; preds = %vector.body1326, %vector.ph1322
  %index1327 = phi i64 [ 0, %vector.ph1322 ], [ %index.next1332, %vector.body1326 ] ; 2 uses
  %offset.idx1328 = sub i64 0, %index1327         ; 2 uses
  %next.gep1329 = getelementptr i8, ptr %.012639.i, i64 %offset.idx1328 ; 2 uses
  %next.gep1331 = getelementptr i8, ptr %.013238.i, i64 %offset.idx1328 ; 2 uses
  %i.atf = getelementptr inbounds i8, ptr %next.gep1331, i64 -16
  %i.atg = getelementptr inbounds i8, ptr %next.gep1331, i64 -32
  store <16 x i8> splat (i8 111), ptr %i.atf, align 1, !tbaa !18
end_hunk_3
begin_hunk_4_@Q__align:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1324, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1339 = and i64 %i.asz, 4294967292         ; 4 uses
  %.cast1340 = trunc nuw i64 %n.vec1339 to i32
  %i.atk = sub i32 %i.asy, %.cast1340
  %i.atl = sub nsw i64 0, %n.vec1339              ; 2 uses
  %i.atm = getelementptr i8, ptr %.012639.i, i64 %i.atl ; 2 uses
  %i.atn = getelementptr i8, ptr %.013238.i, i64 %i.atl ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1341 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1344, %vec.epilog.vector.body ] ; 2 uses
  %i.ato = sub i64 0, %index1341                  ; 2 uses
  %next.gep1342 = getelementptr i8, ptr %.012639.i, i64 %i.ato
  %next.gep1343 = getelementptr i8, ptr %.013238.i, i64 %i.ato
  %i.atp = getelementptr inbounds i8, ptr %next.gep1343, i64 -4
  store <4 x i8> splat (i8 111), ptr %i.atp, align 1, !tbaa !18
  %i.atq = getelementptr inbounds i8, ptr %next.gep1342, i64 -4
end_hunk_4
begin_hunk_5_@Q__align:bb.a
  br i1 %or.cond1350, label %.lr.ph29.i.preheader, label %vector.ph1298

vector.ph1298:                                    ; preds = %.lr.ph29.preheader.i
  %n.vec1300 = and i64 %i.auu, 2147483640         ; 4 uses
  %.cast1301 = trunc nuw nsw i64 %n.vec1300 to i32
  %i.auw = sub nsw i32 %i.aut, %.cast1301
  %i.aux = sub nsw i64 0, %n.vec1300              ; 2 uses
  %i.auy = getelementptr i8, ptr %.1127.lcssa.i, i64 %i.aux ; 2 uses
  %i.auz = getelementptr i8, ptr %.1133.lcssa.i, i64 %i.aux ; 2 uses
  %i.ava = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1141.lcssa.i, i64 0
  br label %vector.body1302

vector.body1302:                                  ; preds = %vector.body1302, %vector.ph1298
  %index1303 = phi i64 [ 0, %vector.ph1298 ], [ %index.next1309, %vector.body1302 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ava, %vector.ph1298 ], [ %i.avf, %vector.body1302 ]
  %vec.phi1304 = phi <4 x i32> [ zeroinitializer, %vector.ph1298 ], [ %i.avg, %vector.body1302 ]
  %offset.idx1305 = sub i64 0, %index1303         ; 2 uses
  %next.gep1306 = getelementptr i8, ptr %.1127.lcssa.i, i64 %offset.idx1305 ; 2 uses
  %next.gep1308 = getelementptr i8, ptr %.1133.lcssa.i, i64 %offset.idx1305 ; 2 uses
  %i.avb = getelementptr inbounds i8, ptr %next.gep1308, i64 -4
  %i.avc = getelementptr inbounds i8, ptr %next.gep1308, i64 -8
  store <4 x i8> splat (i8 45), ptr %i.avb, align 1, !tbaa !18
end_hunk_5
begin_hunk_6_@Atracking:bb.a

vector.ph30:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf31 = and i64 %i.dv, 28
  %n.vec32 = and i64 %i.dv, 4294967264            ; 5 uses
  %.cast33 = trunc nuw i64 %n.vec32 to i32
  %i.dx = sub i32 %i.du, %.cast33
  %i.dy = sub nsw i64 0, %n.vec32                 ; 2 uses
  %i.dz = getelementptr i8, ptr %.011839, i64 %i.dy ; 2 uses
  %i.ea = getelementptr i8, ptr %.012438, i64 %i.dy ; 2 uses
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph30
  %index35 = phi i64 [ 0, %vector.ph30 ], [ %index.next40, %vector.body34 ] ; 2 uses
  %offset.idx36 = sub i64 0, %index35             ; 2 uses
  %next.gep37 = getelementptr i8, ptr %.011839, i64 %offset.idx36 ; 2 uses
  %next.gep39 = getelementptr i8, ptr %.012438, i64 %offset.idx36 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %next.gep39, i64 -16
  %i.ec = getelementptr inbounds i8, ptr %next.gep39, i64 -32
  store <16 x i8> splat (i8 111), ptr %i.eb, align 1, !tbaa !18
end_hunk_6
begin_hunk_7_@Atracking:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec32, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec47 = and i64 %i.dv, 4294967292            ; 4 uses
  %.cast48 = trunc nuw i64 %n.vec47 to i32
  %i.eg = sub i32 %i.du, %.cast48
  %i.eh = sub nsw i64 0, %n.vec47                 ; 2 uses
  %i.ei = getelementptr i8, ptr %.011839, i64 %i.eh ; 2 uses
  %i.ej = getelementptr i8, ptr %.012438, i64 %i.eh ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next52, %vec.epilog.vector.body ] ; 2 uses
  %i.ek = sub i64 0, %index49                     ; 2 uses
  %next.gep50 = getelementptr i8, ptr %.011839, i64 %i.ek
  %next.gep51 = getelementptr i8, ptr %.012438, i64 %i.ek
  %i.el = getelementptr inbounds i8, ptr %next.gep51, i64 -4
  store <4 x i8> splat (i8 111), ptr %i.el, align 1, !tbaa !18
  %i.em = getelementptr inbounds i8, ptr %next.gep50, i64 -4
end_hunk_7
begin_hunk_8_@Atracking:bb.a
  br i1 %or.cond58, label %.lr.ph29.preheader59, label %vector.ph9

vector.ph9:                                       ; preds = %.lr.ph29.preheader
  %n.vec11 = and i64 %i.fq, 2147483640            ; 4 uses
  %.cast = trunc nuw nsw i64 %n.vec11 to i32
  %i.fs = sub nsw i32 %i.fp, %.cast
  %i.ft = sub nsw i64 0, %n.vec11                 ; 2 uses
  %i.fu = getelementptr i8, ptr %.1119.lcssa, i64 %i.ft ; 2 uses
  %i.fv = getelementptr i8, ptr %.1125.lcssa, i64 %i.ft ; 2 uses
  %i.fw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1133.lcssa, i64 0
  br label %vector.body12

vector.body12:                                    ; preds = %vector.body12, %vector.ph9
  %index13 = phi i64 [ 0, %vector.ph9 ], [ %index.next17, %vector.body12 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.fw, %vector.ph9 ], [ %i.gb, %vector.body12 ]
  %vec.phi14 = phi <4 x i32> [ zeroinitializer, %vector.ph9 ], [ %i.gc, %vector.body12 ]
  %offset.idx = sub i64 0, %index13               ; 2 uses
  %next.gep = getelementptr i8, ptr %.1119.lcssa, i64 %offset.idx ; 2 uses
  %next.gep16 = getelementptr i8, ptr %.1125.lcssa, i64 %offset.idx ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %next.gep16, i64 -4
  %i.fy = getelementptr inbounds i8, ptr %next.gep16, i64 -8
  store <4 x i8> splat (i8 45), ptr %i.fx, align 1, !tbaa !18
end_hunk_8
