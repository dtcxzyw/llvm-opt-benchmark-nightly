inline.NumInlined: 461
inline.NumDeleted: 172
begin_hunk_0_@_ZN5Hydro7doCycleEd:bb.a
  br i1 %conflict.rdx369, label %.lr.ph.i.i.i.i.i.preheader615, label %vector.ph372

vector.ph372:                                     ; preds = %vector.memcheck352
  %n.vec374 = and i64 %i.ci, 9223372036854775806  ; 3 uses
  %i.cn = and i64 %i.ci, 1
  %i.co = shl i64 %n.vec374, 4                    ; 2 uses
  %i.cp = getelementptr i8, ptr %i.ck, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cl, i64 %i.co
  br label %vector.body375

vector.body375:                                   ; preds = %vector.body375, %vector.ph372
  %index376 = phi i64 [ 0, %vector.ph372 ], [ %index.next385, %vector.body375 ] ; 2 uses
  %offset.idx377 = shl i64 %index376, 4           ; 3 uses
  %2 = or disjoint i64 %offset.idx377, 16         ; 2 uses
  %next.gep379 = getelementptr i8, ptr %i.ck, i64 %offset.idx377
  %next.gep381 = getelementptr i8, ptr %i.ck, i64 %2
  %i.cr = getelementptr i8, ptr %i.cl, i64 %offset.idx377
  %next.gep382 = getelementptr i8, ptr %i.cl, i64 %2
  %wide.load383 = load <2 x double>, ptr %i.cr, align 8
  %wide.load384 = load <2 x double>, ptr %next.gep382, align 8
  store <2 x double> %wide.load383, ptr %next.gep379, align 8
  store <2 x double> %wide.load384, ptr %next.gep381, align 8
  %index.next385 = add nuw i64 %index376, 2       ; 2 uses
  %i.cs = icmp eq i64 %index.next385, %n.vec374
  br i1 %i.cs, label %middle.block386, label %vector.body375, !llvm.loop !142
end_hunk_0
begin_hunk_1_@_ZN5Hydro7doCycleEd:bb.a
  br i1 %conflict.rdx331, label %.lr.ph.i.i.i.i.i159.preheader614, label %vector.ph334

vector.ph334:                                     ; preds = %vector.memcheck314
  %n.vec336 = and i64 %i.ci, 9223372036854775806  ; 3 uses
  %i.db = and i64 %i.ci, 1
  %i.dc = shl i64 %n.vec336, 4                    ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cy, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.cz, i64 %i.dc
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph334
  %index338 = phi i64 [ 0, %vector.ph334 ], [ %index.next346, %vector.body337 ] ; 2 uses
  %offset.idx339 = shl i64 %index338, 4           ; 3 uses
  %3 = or disjoint i64 %offset.idx339, 16         ; 2 uses
  %next.gep340.a = getelementptr i8, ptr %i.cy, i64 %offset.idx339
  %next.gep342 = getelementptr i8, ptr %i.cy, i64 %3
  %i.df = getelementptr i8, ptr %i.cz, i64 %offset.idx339
  %next.gep343 = getelementptr i8, ptr %i.cz, i64 %3
  %wide.load344 = load <2 x double>, ptr %i.df, align 8
  %wide.load345 = load <2 x double>, ptr %next.gep343, align 8
  store <2 x double> %wide.load344, ptr %next.gep340.a, align 8
  store <2 x double> %wide.load345, ptr %next.gep342, align 8
  %index.next346 = add nuw i64 %index338, 2       ; 2 uses
  %i.dg = icmp eq i64 %index.next346, %n.vec336
  br i1 %i.dg, label %middle.block347, label %vector.body337, !llvm.loop !144
end_hunk_1
