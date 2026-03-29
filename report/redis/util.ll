begin_hunk_0
  store i8 %i.ct, ptr %i.g, align 4, !tbaa !13
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.ph
  %i.cu = extractelement <16 x i1> %i.cr, i64 1
  br i1 %i.cu, label %pred.store.if143, label %pred.store.continue144

end_hunk_0
begin_hunk_1
  store i8 %i.cv, ptr %next.gep, align 1, !tbaa !13
  br label %pred.store.continue144

pred.store.continue144:                           ; preds = %pred.store.if143, %pred.store.continue
  %i.cw = extractelement <16 x i1> %i.cr, i64 2
  br i1 %i.cw, label %pred.store.if145, label %pred.store.continue146

end_hunk_1
begin_hunk_2
  store i8 %i.cx, ptr %next.gep115, align 2, !tbaa !13
  br label %pred.store.continue146

pred.store.continue146:                           ; preds = %pred.store.if145, %pred.store.continue144
  %i.cy = extractelement <16 x i1> %i.cr, i64 3
  br i1 %i.cy, label %pred.store.if147, label %pred.store.continue148

end_hunk_2
begin_hunk_3
  store i8 %i.cz, ptr %next.gep116, align 1, !tbaa !13
  br label %pred.store.continue148

pred.store.continue148:                           ; preds = %pred.store.if147, %pred.store.continue146
  %i.da = extractelement <16 x i1> %i.cr, i64 4
  br i1 %i.da, label %pred.store.if149, label %pred.store.continue150

end_hunk_3
begin_hunk_4
  store i8 %i.db, ptr %next.gep117, align 16, !tbaa !13
  br label %pred.store.continue150

pred.store.continue150:                           ; preds = %pred.store.if149, %pred.store.continue148
  %i.dc = extractelement <16 x i1> %i.cr, i64 5
  br i1 %i.dc, label %pred.store.if151, label %pred.store.continue152

end_hunk_4
begin_hunk_5
  store i8 %i.dd, ptr %next.gep118, align 1, !tbaa !13
  br label %pred.store.continue152

pred.store.continue152:                           ; preds = %pred.store.if151, %pred.store.continue150
  %i.de = extractelement <16 x i1> %i.cr, i64 6
  br i1 %i.de, label %pred.store.if153, label %pred.store.continue154

end_hunk_5
begin_hunk_6
  store i8 %i.df, ptr %next.gep119, align 2, !tbaa !13
  br label %pred.store.continue154

pred.store.continue154:                           ; preds = %pred.store.if153, %pred.store.continue152
  %i.dg = extractelement <16 x i1> %i.cr, i64 7
  br i1 %i.dg, label %pred.store.if155, label %pred.store.continue156

end_hunk_6
begin_hunk_7
  store i8 %i.dh, ptr %next.gep120, align 1, !tbaa !13
  br label %pred.store.continue156

pred.store.continue156:                           ; preds = %pred.store.if155, %pred.store.continue154
  %i.di = extractelement <16 x i1> %i.cr, i64 8
  br i1 %i.di, label %pred.store.if157, label %pred.store.continue158

end_hunk_7
begin_hunk_8
  store i8 %i.dj, ptr %next.gep121, align 4, !tbaa !13
  br label %pred.store.continue158

pred.store.continue158:                           ; preds = %pred.store.if157, %pred.store.continue156
  %i.dk = extractelement <16 x i1> %i.cr, i64 9
  br i1 %i.dk, label %pred.store.if159, label %pred.store.continue160

end_hunk_8
begin_hunk_9
  store i8 %i.dl, ptr %next.gep122, align 1, !tbaa !13
  br label %pred.store.continue160

pred.store.continue160:                           ; preds = %pred.store.if159, %pred.store.continue158
  %i.dm = extractelement <16 x i1> %i.cr, i64 10
  br i1 %i.dm, label %pred.store.if161, label %pred.store.continue162

end_hunk_9
begin_hunk_10
  store i8 %i.dn, ptr %next.gep123, align 2, !tbaa !13
  br label %pred.store.continue162

pred.store.continue162:                           ; preds = %pred.store.if161, %pred.store.continue160
  %i.do = extractelement <16 x i1> %i.cr, i64 11
  br i1 %i.do, label %pred.store.if163, label %pred.store.continue164

end_hunk_10
begin_hunk_11
  store i8 %i.dp, ptr %next.gep124, align 1, !tbaa !13
  br label %pred.store.continue164

pred.store.continue164:                           ; preds = %pred.store.if163, %pred.store.continue162
  %i.dq = extractelement <16 x i1> %i.cr, i64 12
  br i1 %i.dq, label %pred.store.if165, label %pred.store.continue166

end_hunk_11
begin_hunk_12
  store i8 %i.dr, ptr %next.gep125, align 8, !tbaa !13
  br label %pred.store.continue166

pred.store.continue166:                           ; preds = %pred.store.if165, %pred.store.continue164
  %i.ds = extractelement <16 x i1> %i.cr, i64 13
  br i1 %i.ds, label %pred.store.if167, label %pred.store.continue168

end_hunk_12
begin_hunk_13
  store i8 %i.dt, ptr %next.gep126, align 1, !tbaa !13
  br label %pred.store.continue168

pred.store.continue168:                           ; preds = %pred.store.if167, %pred.store.continue166
  %i.du = extractelement <16 x i1> %i.cr, i64 14
  br i1 %i.du, label %pred.store.if169, label %pred.store.continue170

end_hunk_13
begin_hunk_14
  store i8 %i.dv, ptr %next.gep127, align 2, !tbaa !13
  br label %pred.store.continue170

pred.store.continue170:                           ; preds = %pred.store.if169, %pred.store.continue168
  %i.dw = extractelement <16 x i1> %i.cr, i64 15
  br i1 %i.dw, label %pred.store.if171, label %i2string_async_signal_safe.exit

end_hunk_14
begin_hunk_15
  store i8 %i.dx, ptr %next.gep128, align 1, !tbaa !13
  br label %i2string_async_signal_safe.exit

i2string_async_signal_safe.exit:                  ; preds = %pred.store.continue170, %pred.store.if171, %bb.ae
  %.3.i = phi ptr [ %.151.i, %bb.ae ], [ %i.h, %pred.store.if171 ], [ %i.h, %pred.store.continue170 ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.3.i, i64 1
  br label %u2string_async_signal_safe.exit

end_hunk_15
