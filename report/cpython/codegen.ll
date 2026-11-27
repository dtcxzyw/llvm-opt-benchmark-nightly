Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/codegen?download=true
inline.NumInlined: 724
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@codegen_pattern:bb.a
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !341
  %.not167.i = icmp eq ptr %i.wl, null
  br i1 %.not167.i, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.wm = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !610
  %i.wn = load i32, ptr %i.tq, align 8, !tbaa !385
  %i.wo = load i32, ptr %i.ts, align 8, !tbaa !386
  %i.wp = load i32, ptr %i.tu, align 4, !tbaa !387
  %i.wq = load i32, ptr %i.tw, align 4, !tbaa !388
  %.sroa.2.0.insert.ext.i151 = zext i32 %i.wo to i64
  %.sroa.2.0.insert.shift.i152 = shl nuw i64 %.sroa.2.0.insert.ext.i151, 32
  %.sroa.0.0.insert.ext.i153 = zext i32 %i.wn to i64
  %.sroa.0.0.insert.insert.i154 = or disjoint i64 %.sroa.2.0.insert.shift.i152, %.sroa.0.0.insert.ext.i153
  %.sroa.5.8.insert.ext.i155 = zext i32 %i.wq to i64
  %.sroa.5.8.insert.shift.i156 = shl nuw i64 %.sroa.5.8.insert.ext.i155, 32
  %.sroa.3.8.insert.ext.i157 = zext i32 %i.wp to i64
  %.sroa.3.8.insert.insert.i158 = or disjoint i64 %.sroa.5.8.insert.shift.i156, %.sroa.3.8.insert.ext.i157
  %i.wr = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.wm, i32 noundef 31, i32 noundef 0, i64 %.sroa.0.0.insert.insert.i154, i64 %.sroa.3.8.insert.insert.i158) #10
  %i.ws = icmp eq i32 %i.wr, -1
  br i1 %i.ws, label %codegen_pattern_value.exit, label %bb.dt

bb.ds:                                            ; preds = %bb.dq, %bb.dp
  %i.wt = load i32, ptr %i.wb, align 8, !tbaa !390
  store i32 1, ptr %i.wb, align 8, !tbaa !390
  %i.wu = tail call fastcc i32 @codegen_pattern(ptr noundef %0, ptr noundef nonnull %.0153.i, ptr noundef nonnull %2), !inline_history !612
  %i.wv = icmp eq i32 %i.wu, -1
  br i1 %i.wv, label %codegen_pattern_value.exit, label %codegen_pattern_subpattern.exit308

codegen_pattern_subpattern.exit308:               ; preds = %bb.ds
  store i32 %i.wt, ptr %i.wb, align 8, !tbaa !390
  br label %bb.dt

bb.dt:                                            ; preds = %codegen_pattern_subpattern.exit308, %bb.dr
  %i.ww = add nuw nsw i64 %.1157.i420, 1          ; 2 uses
  %exitcond465.not = icmp eq i64 %i.ww, %i.ry
  br i1 %exitcond465.not, label %codegen_pattern_value.exit, label %bb.dp, !llvm.loop !613

bb.du:                                            ; preds = %bb.a
  %i.wx = getelementptr i8, ptr %1, i64 40
  %i.wy = load i32, ptr %i.wx, align 8, !tbaa !385
  %i.wz = getelementptr i8, ptr %1, i64 48
  %i.xa = load i32, ptr %i.wz, align 8, !tbaa !386
  %i.xb = getelementptr i8, ptr %1, i64 44
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !387
  %i.xd = getelementptr i8, ptr %1, i64 52
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !388
  %i.xf = getelementptr i8, ptr %1, i64 8
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !341
  %.sroa.2.0.insert.ext.i168 = zext i32 %i.xa to i64
  %.sroa.2.0.insert.shift.i169 = shl nuw i64 %.sroa.2.0.insert.ext.i168, 32
  %.sroa.0.0.insert.ext.i170 = zext i32 %i.wy to i64
  %.sroa.0.0.insert.insert.i171 = or disjoint i64 %.sroa.2.0.insert.shift.i169, %.sroa.0.0.insert.ext.i170
  %.sroa.5.8.insert.ext.i172 = zext i32 %i.xe to i64
  %.sroa.5.8.insert.shift.i173 = shl nuw i64 %.sroa.5.8.insert.ext.i172, 32
  %.sroa.3.8.insert.ext.i174 = zext i32 %i.xc to i64
  %.sroa.3.8.insert.insert.i175 = or disjoint i64 %.sroa.5.8.insert.shift.i173, %.sroa.3.8.insert.ext.i174
  %i.xh = tail call fastcc i32 @codegen_pattern_helper_store_name(ptr noundef %0, i64 %.sroa.0.0.insert.insert.i171, i64 %.sroa.3.8.insert.insert.i175, ptr noundef %i.xg, ptr noundef nonnull readonly %2)
  %i.xi = icmp eq i32 %i.xh, -1
  %..i176 = sext i1 %i.xi to i32
  br label %codegen_pattern_value.exit

bb.dv:                                            ; preds = %bb.a
  %i.xj = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !341
  %i.xl = icmp eq ptr %i.xk, null
  br i1 %i.xl, label %bb.dw, label %bb.eb

bb.dw:                                            ; preds = %bb.dv
  %i.xm = getelementptr i8, ptr %2, i64 8
  %i.xn = load i32, ptr %i.xm, align 8, !tbaa !390
  %.not.i195 = icmp eq i32 %i.xn, 0
  br i1 %.not.i195, label %bb.dx, label %bb.ea

bb.dx:                                            ; preds = %bb.dw
  %i.xo = getelementptr i8, ptr %1, i64 16
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !341 ; 2 uses
  %.not57.i = icmp eq ptr %i.xp, null
  %i.xq = getelementptr i8, ptr %1, i64 40
  %i.xr = load i32, ptr %i.xq, align 8, !tbaa !385
  %i.xs = getelementptr i8, ptr %1, i64 48
  %i.xt = load i32, ptr %i.xs, align 8, !tbaa !386
  %i.xu = getelementptr i8, ptr %1, i64 44
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !387
  %i.xw = getelementptr i8, ptr %1, i64 52
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !388
  %.sroa.210.0.insert.ext.i212 = zext i32 %i.xt to i64
  %.sroa.210.0.insert.shift.i213 = shl nuw i64 %.sroa.210.0.insert.ext.i212, 32
  %.sroa.09.0.insert.ext.i214 = zext i32 %i.xr to i64
  %.sroa.09.0.insert.insert.i215 = or disjoint i64 %.sroa.210.0.insert.shift.i213, %.sroa.09.0.insert.ext.i214 ; 2 uses
  %.sroa.512.8.insert.ext.i216 = zext i32 %i.xx to i64
  %.sroa.512.8.insert.shift.i217 = shl nuw i64 %.sroa.512.8.insert.ext.i216, 32
  %.sroa.311.8.insert.ext.i218 = zext i32 %i.xv to i64
  %.sroa.311.8.insert.insert.i219 = or disjoint i64 %.sroa.512.8.insert.shift.i217, %.sroa.311.8.insert.ext.i218 ; 2 uses
  br i1 %.not57.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.xy = tail call i32 (ptr, i64, i64, ptr, ...) @_PyCompile_Error(ptr noundef %0, i64 %.sroa.09.0.insert.insert.i215, i64 %.sroa.311.8.insert.insert.i219, ptr noundef nonnull @.str.267, ptr noundef nonnull %i.xp) #10, !inline_history !614
  br label %codegen_pattern_value.exit

bb.dz:                                            ; preds = %bb.dx
  %i.xz = tail call i32 (ptr, i64, i64, ptr, ...) @_PyCompile_Error(ptr noundef %0, i64 %.sroa.09.0.insert.insert.i215, i64 %.sroa.311.8.insert.insert.i219, ptr noundef nonnull @.str.268) #10, !inline_history !614
  br label %codegen_pattern_value.exit

bb.ea:                                            ; preds = %bb.dw
  %i.ya = getelementptr i8, ptr %1, i64 40
  %i.yb = load i32, ptr %i.ya, align 8, !tbaa !385
  %i.yc = getelementptr i8, ptr %1, i64 48
  %i.yd = load i32, ptr %i.yc, align 8, !tbaa !386
  %i.ye = getelementptr i8, ptr %1, i64 44
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !387
  %i.yg = getelementptr i8, ptr %1, i64 52
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !388
  %i.yi = getelementptr i8, ptr %1, i64 16
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !341
  %.sroa.26.0.insert.ext.i196 = zext i32 %i.yd to i64
  %.sroa.26.0.insert.shift.i197 = shl nuw i64 %.sroa.26.0.insert.ext.i196, 32
  %.sroa.05.0.insert.ext.i198 = zext i32 %i.yb to i64
  %.sroa.05.0.insert.insert.i199 = or disjoint i64 %.sroa.26.0.insert.shift.i197, %.sroa.05.0.insert.ext.i198
  %.sroa.58.8.insert.ext.i200 = zext i32 %i.yh to i64
  %.sroa.58.8.insert.shift.i201 = shl nuw i64 %.sroa.58.8.insert.ext.i200, 32
  %.sroa.37.8.insert.ext.i202 = zext i32 %i.yf to i64
  %.sroa.37.8.insert.insert.i203 = or disjoint i64 %.sroa.58.8.insert.shift.i201, %.sroa.37.8.insert.ext.i202
  %i.yk = tail call fastcc i32 @codegen_pattern_helper_store_name(ptr noundef %0, i64 %.sroa.05.0.insert.insert.i199, i64 %.sroa.37.8.insert.insert.i203, ptr noundef %i.yj, ptr noundef nonnull %2), !inline_history !614
  br label %codegen_pattern_value.exit

bb.eb:                                            ; preds = %bb.dv
  %i.yl = getelementptr i8, ptr %2, i64 32        ; 4 uses
  %i.ym = load i64, ptr %i.yl, align 8, !tbaa !432
  %i.yn = add i64 %i.ym, 1
  store i64 %i.yn, ptr %i.yl, align 8, !tbaa !432
  %i.yo = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !614
  %i.yp = getelementptr i8, ptr %1, i64 40        ; 2 uses
  %i.yq = load i32, ptr %i.yp, align 8, !tbaa !385
  %i.yr = getelementptr i8, ptr %1, i64 48        ; 2 uses
  %i.ys = load i32, ptr %i.yr, align 8, !tbaa !386
  %i.yt = getelementptr i8, ptr %1, i64 44        ; 2 uses
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !387
  %i.yv = getelementptr i8, ptr %1, i64 52        ; 2 uses
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !388
  %.sroa.22.0.insert.ext.i177 = zext i32 %i.ys to i64
  %.sroa.22.0.insert.shift.i178 = shl nuw i64 %.sroa.22.0.insert.ext.i177, 32
  %.sroa.01.0.insert.ext.i179 = zext i32 %i.yq to i64
  %.sroa.01.0.insert.insert.i180 = or disjoint i64 %.sroa.22.0.insert.shift.i178, %.sroa.01.0.insert.ext.i179
  %.sroa.54.8.insert.ext.i181 = zext i32 %i.yw to i64
  %.sroa.54.8.insert.shift.i182 = shl nuw i64 %.sroa.54.8.insert.ext.i181, 32
  %.sroa.33.8.insert.ext.i183 = zext i32 %i.yu to i64
  %.sroa.33.8.insert.insert.i184 = or disjoint i64 %.sroa.54.8.insert.shift.i182, %.sroa.33.8.insert.ext.i183
  %i.yx = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.yo, i32 noundef 59, i32 noundef 1, i64 %.sroa.01.0.insert.insert.i180, i64 %.sroa.33.8.insert.insert.i184) #10
  %i.yy = icmp eq i32 %i.yx, -1
  br i1 %i.yy, label %codegen_pattern_value.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.yz = load ptr, ptr %i.xj, align 8, !tbaa !341
  %i.za = tail call fastcc i32 @codegen_pattern(ptr noundef %0, ptr noundef %i.yz, ptr noundef nonnull %2), !inline_history !614
  %i.zb = icmp eq i32 %i.za, -1
  br i1 %i.zb, label %codegen_pattern_value.exit, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.zc = load i64, ptr %i.yl, align 8, !tbaa !432
  %i.zd = add i64 %i.zc, -1
  store i64 %i.zd, ptr %i.yl, align 8, !tbaa !432
  %i.ze = load i32, ptr %i.yp, align 8, !tbaa !385
  %i.zf = load i32, ptr %i.yr, align 8, !tbaa !386
  %i.zg = load i32, ptr %i.yt, align 4, !tbaa !387
  %i.zh = load i32, ptr %i.yv, align 4, !tbaa !388
  %i.zi = getelementptr i8, ptr %1, i64 16
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !341
  %.sroa.2.0.insert.ext.i185 = zext i32 %i.zf to i64
  %.sroa.2.0.insert.shift.i186 = shl nuw i64 %.sroa.2.0.insert.ext.i185, 32
  %.sroa.0.0.insert.ext.i187 = zext i32 %i.ze to i64
  %.sroa.0.0.insert.insert.i188 = or disjoint i64 %.sroa.2.0.insert.shift.i186, %.sroa.0.0.insert.ext.i187
  %.sroa.5.8.insert.ext.i189 = zext i32 %i.zh to i64
  %.sroa.5.8.insert.shift.i190 = shl nuw i64 %.sroa.5.8.insert.ext.i189, 32
  %.sroa.3.8.insert.ext.i191 = zext i32 %i.zg to i64
  %.sroa.3.8.insert.insert.i192 = or disjoint i64 %.sroa.5.8.insert.shift.i190, %.sroa.3.8.insert.ext.i191
  %i.zk = tail call fastcc i32 @codegen_pattern_helper_store_name(ptr noundef %0, i64 %.sroa.0.0.insert.insert.i188, i64 %.sroa.3.8.insert.insert.i192, ptr noundef %i.zj, ptr noundef nonnull %2), !inline_history !614
  %i.zl = icmp eq i32 %i.zk, -1
  %..i193 = sext i1 %i.zl to i32
  br label %codegen_pattern_value.exit

bb.ee:                                            ; preds = %bb.a
  %i.zm = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !615
  %i.zn = tail call i32 @_PyInstructionSequence_NewLabel(ptr noundef %i.zm) #10, !inline_history !615 ; 3 uses
  %i.zo = icmp eq i32 %i.zn, -1
  br i1 %i.zo, label %codegen_pattern_value.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.zp = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !341 ; 2 uses
  %i.zr = icmp eq ptr %i.zq, null
  br i1 %i.zr, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.zs = load i64, ptr %i.zq, align 8, !tbaa !346
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.zt = phi i64 [ %i.zs, %bb.eg ], [ 0, %bb.ef ] ; 3 uses
  %.sroa.0105.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !343 ; 11 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %3 = load <2 x i32>, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.6.0.copyload.i.a = load i32, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !22
  %.sroa.7112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %.sroa.7112.0.copyload.i = load ptr, ptr %.sroa.7112.0..sroa_idx.i, align 8, !tbaa !400 ; 12 uses
  %.sroa.9.0..sroa_idx.i = getelementptr i8, ptr %2, i64 24 ; 2 uses
  %.sroa.9.i.sroa.0.0.copyload = load <2 x i64>, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !372
  %i.zu = load i32, ptr %.sroa.0105.0.copyload.i, align 8, !tbaa !341 ; 2 uses
  %i.zv = icmp ugt i32 %i.zu, -1073741825
  br i1 %i.zv, label %Py_INCREF.exit239.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.zw = add nuw i32 %i.zu, 1
  store i32 %i.zw, ptr %.sroa.0105.0.copyload.i, align 8, !tbaa !341
  br label %Py_INCREF.exit239.i

Py_INCREF.exit239.i:                              ; preds = %bb.ei, %bb.eh
  %i.zx = icmp sgt i64 %i.zt, 0
  br i1 %i.zx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Py_INCREF.exit239.i
  %i.zy = add nsw i64 %i.zt, -1
  %i.zz = icmp ne i32 %.sroa.6.0.copyload.i.a, 0
  br label %bb.ek

bb.ej:                                            ; preds = %bb.fh
  %i.aaa = add nuw nsw i64 %.0200.i412, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.aaa, %i.zt
  br i1 %exitcond.not, label %._crit_edge, label %bb.ek, !llvm.loop !616

bb.ek:                                            ; preds = %.lr.ph, %bb.ej
  %.0195.i413 = phi ptr [ null, %.lr.ph ], [ %.1196.i, %bb.ej ] ; 13 uses
  %.0200.i412 = phi i64 [ 0, %.lr.ph ], [ %i.aaa, %bb.ej ] ; 4 uses
  %i.aab = load ptr, ptr %i.zp, align 8, !tbaa !341
  %i.aac = getelementptr i8, ptr %i.aab, i64 16
  %i.aad = getelementptr [8 x i8], ptr %i.aac, i64 %.0200.i412
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !431 ; 5 uses
  %i.aaf = tail call ptr @PyList_New(i64 noundef 0) #10, !inline_history !615 ; 2 uses
  %i.aag = icmp eq ptr %i.aaf, null
  br i1 %i.aag, label %.thread375, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.aah = load ptr, ptr %2, align 8, !tbaa !343  ; 3 uses
  store ptr %i.aaf, ptr %2, align 8, !tbaa !343
  %i.aai = load i32, ptr %i.aah, align 8, !tbaa !341 ; 2 uses
  %.not.i232.i = icmp sgt i32 %i.aai, -1
  br i1 %.not.i232.i, label %bb.em, label %Py_DECREF.exit233.i

bb.em:                                            ; preds = %bb.el
  %i.aaj = add nsw i32 %i.aai, -1                 ; 2 uses
  store i32 %i.aaj, ptr %i.aah, align 8, !tbaa !341
  %i.aak = icmp eq i32 %i.aaj, 0
  br i1 %i.aak, label %bb.en, label %Py_DECREF.exit233.i

bb.en:                                            ; preds = %bb.em
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aah) #10, !inline_history !615
  br label %Py_DECREF.exit233.i

Py_DECREF.exit233.i:                              ; preds = %bb.en, %bb.em, %bb.el
  %i.aal = icmp eq i64 %.0200.i412, %i.zy
  %4 = select i1 %i.aal, i1 %i.zz, i1 false
  %i.aam = zext i1 %4 to i32
  store i32 %i.aam, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !390
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7112.0..sroa_idx.i, i8 0, i64 24, i1 false)
  %i.aan = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !615
  %i.aao = getelementptr i8, ptr %i.aae, i64 40   ; 4 uses
  %i.aap = load i32, ptr %i.aao, align 8, !tbaa !385
  %i.aaq = getelementptr i8, ptr %i.aae, i64 48   ; 4 uses
  %i.aar = load i32, ptr %i.aaq, align 8, !tbaa !386
  %i.aas = getelementptr i8, ptr %i.aae, i64 44   ; 4 uses
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !387
  %i.aau = getelementptr i8, ptr %i.aae, i64 52   ; 4 uses
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !388
  %.sroa.269.0.insert.ext.i = zext i32 %i.aar to i64
  %.sroa.269.0.insert.shift.i = shl nuw i64 %.sroa.269.0.insert.ext.i, 32
  %.sroa.068.0.insert.ext.i = zext i32 %i.aap to i64
  %.sroa.068.0.insert.insert.i = or disjoint i64 %.sroa.269.0.insert.shift.i, %.sroa.068.0.insert.ext.i
  %.sroa.571.8.insert.ext.i = zext i32 %i.aav to i64
  %.sroa.571.8.insert.shift.i = shl nuw i64 %.sroa.571.8.insert.ext.i, 32
  %.sroa.370.8.insert.ext.i = zext i32 %i.aat to i64
  %.sroa.370.8.insert.insert.i = or disjoint i64 %.sroa.571.8.insert.shift.i, %.sroa.370.8.insert.ext.i
  %i.aaw = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.aan, i32 noundef 59, i32 noundef 1, i64 %.sroa.068.0.insert.insert.i, i64 %.sroa.370.8.insert.insert.i) #10
  %i.aax = icmp slt i32 %i.aaw, 0
  br i1 %i.aax, label %.thread375, label %bb.eo

bb.eo:                                            ; preds = %Py_DECREF.exit233.i
  %i.aay = tail call fastcc i32 @codegen_pattern(ptr noundef %0, ptr noundef nonnull %i.aae, ptr noundef nonnull %2), !inline_history !615
  %i.aaz = icmp slt i32 %i.aay, 0
  br i1 %i.aaz, label %.thread375, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.aba = load ptr, ptr %2, align 8, !tbaa !389  ; 5 uses
  %i.abb = getelementptr i8, ptr %i.aba, i64 16
  %.val240.i = load i64, ptr %i.abb, align 8, !tbaa !361 ; 3 uses
  %.not.i267 = icmp eq i64 %.0200.i412, 0
  br i1 %.not.i267, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %bb.ep
  %i.abc = load i32, ptr %i.aba, align 8, !tbaa !341 ; 2 uses
  %i.abd = icmp ugt i32 %i.abc, -1073741825
  br i1 %i.abd, label %_Py_NewRef.exit322, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.abe = add nuw i32 %i.abc, 1
  store i32 %i.abe, ptr %i.aba, align 8, !tbaa !341
  br label %_Py_NewRef.exit322

bb.es:                                            ; preds = %bb.ep
  %i.abf = getelementptr i8, ptr %.0195.i413, i64 16
  %.0195.val.i = load i64, ptr %i.abf, align 8, !tbaa !361
  %.not213.i = icmp eq i64 %.val240.i, %.0195.val.i
  br i1 %.not213.i, label %bb.et, label %.loopexit

bb.et:                                            ; preds = %bb.es
  %.not214.i = icmp eq i64 %.val240.i, 0
  br i1 %.not214.i, label %_Py_NewRef.exit322, label %.preheader394

.preheader394:                                    ; preds = %bb.et
  %i.abg = getelementptr i8, ptr %.0195.i413, i64 24
  br label %bb.eu

bb.eu:                                            ; preds = %.preheader394, %Py_XDECREF.exit320
  %.0201.i411 = phi i64 [ %.val240.i, %.preheader394 ], [ %i.abh, %Py_XDECREF.exit320 ] ; 3 uses
  %i.abh = add i64 %.0201.i411, -1                ; 5 uses
  %i.abi = load ptr, ptr %i.abg, align 8, !tbaa !364
  %i.abj = getelementptr [8 x i8], ptr %i.abi, i64 %i.abh
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !343
  %i.abl = load ptr, ptr %2, align 8, !tbaa !389
  %i.abm = tail call i64 @PySequence_Index(ptr noundef %i.abl, ptr noundef %i.abk) #10, !inline_history !615 ; 4 uses
  %i.abn = icmp slt i64 %i.abm, 0
  br i1 %i.abn, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  tail call void @PyErr_Clear() #10, !inline_history !615
  br label %.loopexit

bb.ew:                                            ; preds = %bb.eu
  %.not216.i = icmp eq i64 %i.abh, %i.abm
  br i1 %.not216.i, label %Py_XDECREF.exit320, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.abo = add nuw i64 %i.abm, 1                  ; 3 uses
  %i.abp = load ptr, ptr %2, align 8, !tbaa !389
  %i.abq = tail call ptr @PyList_GetSlice(ptr noundef %i.abp, i64 noundef 0, i64 noundef %i.abo) #10, !inline_history !615 ; 8 uses
  %i.abr = icmp eq ptr %i.abq, null
  br i1 %i.abr, label %.thread375, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.abs = load ptr, ptr %2, align 8, !tbaa !389
  %i.abt = tail call i32 @PyList_SetSlice(ptr noundef %i.abs, i64 noundef 0, i64 noundef %i.abo, ptr noundef null) #10, !inline_history !615
  %.not217.i = icmp eq i32 %i.abt, 0
  br i1 %.not217.i, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.abu = load ptr, ptr %2, align 8, !tbaa !389
  %i.abv = sub i64 %i.abh, %i.abm                 ; 2 uses
  %i.abw = tail call i32 @PyList_SetSlice(ptr noundef %i.abu, i64 noundef %i.abv, i64 noundef %i.abv, ptr noundef nonnull %i.abq) #10, !inline_history !615
  %.not218.i = icmp eq i32 %i.abw, 0
  br i1 %.not218.i, label %bb.fd, label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %i.abx = load i32, ptr %i.abq, align 8, !tbaa !341 ; 2 uses
  %.not.i.i318 = icmp sgt i32 %i.abx, -1
  br i1 %.not.i.i318, label %bb.fb, label %.thread375

bb.fb:                                            ; preds = %bb.fa
  %i.aby = add nsw i32 %i.abx, -1                 ; 2 uses
  store i32 %i.aby, ptr %i.abq, align 8, !tbaa !341
  %i.abz = icmp eq i32 %i.aby, 0
  br i1 %i.abz, label %bb.fc, label %.thread375

bb.fc:                                            ; preds = %bb.fb
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.abq) #10
  br label %.thread375

bb.fd:                                            ; preds = %bb.ez
  %i.aca = load i32, ptr %i.abq, align 8, !tbaa !341 ; 2 uses
  %.not.i230.i = icmp sgt i32 %i.aca, -1
  br i1 %.not.i230.i, label %bb.fe, label %Py_DECREF.exit231.i.preheader

bb.fe:                                            ; preds = %bb.fd
  %i.acb = add nsw i32 %i.aca, -1                 ; 2 uses
  store i32 %i.acb, ptr %i.abq, align 8, !tbaa !341
  %i.acc = icmp eq i32 %i.acb, 0
  br i1 %i.acc, label %bb.ff, label %Py_DECREF.exit231.i.preheader

bb.ff:                                            ; preds = %bb.fe
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.abq) #10, !inline_history !615
  br label %Py_DECREF.exit231.i.preheader

Py_DECREF.exit231.i.preheader:                    ; preds = %bb.ff, %bb.fe, %bb.fd
  %i.acd = icmp sgt i64 %.0201.i411, 1
  br label %Py_DECREF.exit231.i

codegen_pattern_helper_rotate.exit316.loopexit:   ; preds = %bb.fg, %Py_DECREF.exit231.i
  %.not219.i = icmp eq i64 %i.ace, 0
  br i1 %.not219.i, label %Py_XDECREF.exit320, label %Py_DECREF.exit231.i, !llvm.loop !617

Py_DECREF.exit231.i:                              ; preds = %Py_DECREF.exit231.i.preheader, %codegen_pattern_helper_rotate.exit316.loopexit
  %.0203.i410 = phi i64 [ %i.ace, %codegen_pattern_helper_rotate.exit316.loopexit ], [ %i.abo, %Py_DECREF.exit231.i.preheader ]
  %i.ace = add i64 %.0203.i410, -1                ; 2 uses
  %i.acf = load i32, ptr %i.aao, align 8, !tbaa !385
  %i.acg = load i32, ptr %i.aaq, align 8, !tbaa !386
  %i.ach = load i32, ptr %i.aas, align 4, !tbaa !387
  %i.aci = load i32, ptr %i.aau, align 4, !tbaa !388
  %.sroa.243.0.insert.ext.i = zext i32 %i.acg to i64
  %.sroa.243.0.insert.shift.i = shl nuw i64 %.sroa.243.0.insert.ext.i, 32
  %.sroa.042.0.insert.ext.i = zext i32 %i.acf to i64
  %.sroa.042.0.insert.insert.i = or disjoint i64 %.sroa.243.0.insert.shift.i, %.sroa.042.0.insert.ext.i
  %.sroa.545.8.insert.ext.i = zext i32 %i.aci to i64
  %.sroa.545.8.insert.shift.i = shl nuw i64 %.sroa.545.8.insert.ext.i, 32
  %.sroa.344.8.insert.ext.i = zext i32 %i.ach to i64
  %.sroa.344.8.insert.insert.i = or disjoint i64 %.sroa.545.8.insert.shift.i, %.sroa.344.8.insert.ext.i
  br i1 %i.acd, label %.lr.ph568, label %codegen_pattern_helper_rotate.exit316.loopexit

bb.fg:                                            ; preds = %.lr.ph568
  %i.acj = add nsw i64 %.0.i314566, -1
  %i.ack = icmp sgt i64 %.0.i314566, 2
  br i1 %i.ack, label %.lr.ph568, label %codegen_pattern_helper_rotate.exit316.loopexit, !llvm.loop !7

.lr.ph568:                                        ; preds = %Py_DECREF.exit231.i, %bb.fg
  %.0.i314566 = phi i64 [ %i.acj, %bb.fg ], [ %.0201.i411, %Py_DECREF.exit231.i ] ; 3 uses
  %i.acl = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.acm = trunc i64 %.0.i314566 to i32
  %i.acn = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.acl, i32 noundef 117, i32 noundef %i.acm, i64 %.sroa.042.0.insert.insert.i, i64 %.sroa.344.8.insert.insert.i) #10
  %i.aco = icmp eq i32 %i.acn, -1
  br i1 %i.aco, label %.thread375, label %bb.fg, !llvm.loop !7

Py_XDECREF.exit320:                               ; preds = %codegen_pattern_helper_rotate.exit316.loopexit, %bb.ew
  %.not215.i = icmp eq i64 %i.abh, 0
  br i1 %.not215.i, label %_Py_NewRef.exit322, label %bb.eu, !llvm.loop !618

_Py_NewRef.exit322:                               ; preds = %Py_XDECREF.exit320, %bb.er, %bb.eq, %bb.et
  %.1196.i = phi ptr [ %i.aba, %bb.er ], [ %.0195.i413, %bb.et ], [ %i.aba, %bb.eq ], [ %.0195.i413, %Py_XDECREF.exit320 ] ; 4 uses
  %i.acp = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !615
  %i.acq = load i32, ptr %i.aao, align 8, !tbaa !385
  %i.acr = load i32, ptr %i.aaq, align 8, !tbaa !386
  %i.acs = load i32, ptr %i.aas, align 4, !tbaa !387
  %i.act = load i32, ptr %i.aau, align 4, !tbaa !388
  %.sroa.239.0.insert.ext.i272 = zext i32 %i.acr to i64
  %.sroa.239.0.insert.shift.i273 = shl nuw i64 %.sroa.239.0.insert.ext.i272, 32
  %.sroa.038.0.insert.ext.i274 = zext i32 %i.acq to i64
  %.sroa.038.0.insert.insert.i275 = or disjoint i64 %.sroa.239.0.insert.shift.i273, %.sroa.038.0.insert.ext.i274
  %.sroa.541.8.insert.ext.i276 = zext i32 %i.act to i64
  %.sroa.541.8.insert.shift.i277 = shl nuw i64 %.sroa.541.8.insert.ext.i276, 32
  %.sroa.340.8.insert.ext.i278 = zext i32 %i.acs to i64
  %.sroa.340.8.insert.insert.i279 = or disjoint i64 %.sroa.541.8.insert.shift.i277, %.sroa.340.8.insert.ext.i278
  %i.acu = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.acp, i32 noundef 257, i32 noundef %i.zn, i64 %.sroa.038.0.insert.insert.i275, i64 %.sroa.340.8.insert.insert.i279) #10
  %i.acv = icmp slt i32 %i.acu, 0
  br i1 %i.acv, label %.thread375, label %bb.fh

bb.fh:                                            ; preds = %_Py_NewRef.exit322
  %i.acw = load i32, ptr %i.aao, align 8, !tbaa !385
  %i.acx = load i32, ptr %i.aaq, align 8, !tbaa !386
  %i.acy = load i32, ptr %i.aas, align 4, !tbaa !387
  %i.acz = load i32, ptr %i.aau, align 4, !tbaa !388
  %.sroa.235.0.insert.ext.i280 = zext i32 %i.acx to i64
  %.sroa.235.0.insert.shift.i281 = shl nuw i64 %.sroa.235.0.insert.ext.i280, 32
  %.sroa.034.0.insert.ext.i282 = zext i32 %i.acw to i64
  %.sroa.034.0.insert.insert.i283 = or disjoint i64 %.sroa.235.0.insert.shift.i281, %.sroa.034.0.insert.ext.i282
  %.sroa.537.8.insert.ext.i284 = zext i32 %i.acz to i64
  %.sroa.537.8.insert.shift.i285 = shl nuw i64 %.sroa.537.8.insert.ext.i284, 32
  %.sroa.336.8.insert.ext.i286 = zext i32 %i.acy to i64
  %.sroa.336.8.insert.insert.i287 = or disjoint i64 %.sroa.537.8.insert.shift.i285, %.sroa.336.8.insert.ext.i286
  %i.ada = tail call fastcc i32 @emit_and_reset_fail_pop(ptr noundef %0, i64 %.sroa.034.0.insert.insert.i283, i64 %.sroa.336.8.insert.insert.i287, ptr noundef nonnull %2), !inline_history !615
  %i.adb = icmp slt i32 %i.ada, 0
  br i1 %i.adb, label %.thread375, label %bb.ej

._crit_edge:                                      ; preds = %bb.ej, %Py_INCREF.exit239.i
  %.0195.i.lcssa = phi ptr [ null, %Py_INCREF.exit239.i ], [ %.1196.i, %bb.ej ] ; 11 uses
  %i.adc = load ptr, ptr %2, align 8, !tbaa !389  ; 3 uses
  %i.add = load i32, ptr %i.adc, align 8, !tbaa !341 ; 2 uses
  %.not.i228.i = icmp sgt i32 %i.add, -1
  br i1 %.not.i228.i, label %bb.fi, label %Py_DECREF.exit229.i

bb.fi:                                            ; preds = %._crit_edge
  %i.ade = add nsw i32 %i.add, -1                 ; 2 uses
  store i32 %i.ade, ptr %i.adc, align 8, !tbaa !341
  %i.adf = icmp eq i32 %i.ade, 0
  br i1 %i.adf, label %bb.fj, label %Py_DECREF.exit229.i

bb.fj:                                            ; preds = %bb.fi
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.adc) #10, !inline_history !615
  br label %Py_DECREF.exit229.i

Py_DECREF.exit229.i:                              ; preds = %bb.fj, %bb.fi, %._crit_edge
  store ptr %.sroa.0105.0.copyload.i, ptr %2, align 8, !tbaa !343
  store <2 x i32> %3, ptr %.sroa.6.0..sroa_idx.i, align 8
  store ptr %.sroa.7112.0.copyload.i, ptr %.sroa.7112.0..sroa_idx.i, align 8, !tbaa !400
  store <2 x i64> %.sroa.9.i.sroa.0.0.copyload, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !372
  %i.adg = load i32, ptr %.sroa.0105.0.copyload.i, align 8, !tbaa !341 ; 2 uses
  %i.adh = icmp ugt i32 %i.adg, -1073741825
  br i1 %i.adh, label %Py_INCREF.exit.i, label %bb.fk

bb.fk:                                            ; preds = %Py_DECREF.exit229.i
  %i.adi = add nuw i32 %i.adg, 1
  store i32 %i.adi, ptr %.sroa.0105.0.copyload.i, align 8, !tbaa !341
  br label %Py_INCREF.exit.i

Py_INCREF.exit.i:                                 ; preds = %bb.fk, %Py_DECREF.exit229.i
  %i.adj = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !615
  %i.adk = getelementptr i8, ptr %1, i64 40       ; 5 uses
  %i.adl = load i32, ptr %i.adk, align 8, !tbaa !385
  %i.adm = getelementptr i8, ptr %1, i64 48       ; 5 uses
  %i.adn = load i32, ptr %i.adm, align 8, !tbaa !386
  %i.ado = getelementptr i8, ptr %1, i64 44       ; 5 uses
  %i.adp = load i32, ptr %i.ado, align 4, !tbaa !387
  %i.adq = getelementptr i8, ptr %1, i64 52       ; 5 uses
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !388
  %.sroa.231.0.insert.ext.i233 = zext i32 %i.adn to i64
  %.sroa.231.0.insert.shift.i234 = shl nuw i64 %.sroa.231.0.insert.ext.i233, 32
  %.sroa.030.0.insert.ext.i235 = zext i32 %i.adl to i64
  %.sroa.030.0.insert.insert.i236 = or disjoint i64 %.sroa.231.0.insert.shift.i234, %.sroa.030.0.insert.ext.i235
  %.sroa.533.8.insert.ext.i237 = zext i32 %i.adr to i64
  %.sroa.533.8.insert.shift.i238 = shl nuw i64 %.sroa.533.8.insert.ext.i237, 32
  %.sroa.332.8.insert.ext.i239 = zext i32 %i.adp to i64
  %.sroa.332.8.insert.insert.i240 = or disjoint i64 %.sroa.533.8.insert.shift.i238, %.sroa.332.8.insert.ext.i239
  %i.ads = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.adj, i32 noundef 31, i32 noundef 0, i64 %.sroa.030.0.insert.insert.i236, i64 %.sroa.332.8.insert.insert.i240) #10
  %i.adt = icmp slt i32 %i.ads, 0
  br i1 %i.adt, label %.thread375, label %bb.fl

bb.fl:                                            ; preds = %Py_INCREF.exit.i
  %i.adu = load i32, ptr %i.adk, align 8, !tbaa !385
  %i.adv = load i32, ptr %i.adm, align 8, !tbaa !386
  %i.adw = load i32, ptr %i.ado, align 4, !tbaa !387
  %i.adx = load i32, ptr %i.adq, align 4, !tbaa !388
  %.sroa.227.0.insert.ext.i241 = zext i32 %i.adv to i64
  %.sroa.227.0.insert.shift.i242 = shl nuw i64 %.sroa.227.0.insert.ext.i241, 32
  %.sroa.026.0.insert.ext.i243 = zext i32 %i.adu to i64
  %.sroa.026.0.insert.insert.i244 = or disjoint i64 %.sroa.227.0.insert.shift.i242, %.sroa.026.0.insert.ext.i243
  %.sroa.529.8.insert.ext.i245 = zext i32 %i.adx to i64
  %.sroa.529.8.insert.shift.i246 = shl nuw i64 %.sroa.529.8.insert.ext.i245, 32
  %.sroa.328.8.insert.ext.i247 = zext i32 %i.adw to i64
  %.sroa.328.8.insert.insert.i248 = or disjoint i64 %.sroa.529.8.insert.shift.i246, %.sroa.328.8.insert.ext.i247
  %i.ady = tail call fastcc i32 @jump_to_fail_pop(ptr noundef %0, i64 %.sroa.026.0.insert.insert.i244, i64 %.sroa.328.8.insert.insert.i248, ptr noundef nonnull %2, i32 noundef 257), !inline_history !615
  %i.adz = icmp slt i32 %i.ady, 0
  br i1 %i.adz, label %.thread375, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.aea = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !615
  %i.aeb = tail call i32 @_PyInstructionSequence_UseLabel(ptr noundef %i.aea, i32 noundef %i.zn) #10, !inline_history !615
  %i.aec = icmp eq i32 %i.aeb, -1
  br i1 %i.aec, label %codegen_pattern_value.exit, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.aed = getelementptr i8, ptr %.0195.i.lcssa, i64 16
  %.4199.val.i = load i64, ptr %i.aed, align 8, !tbaa !361 ; 3 uses
  %i.aee = add i64 %.4199.val.i, 1
  %i.aef = getelementptr i8, ptr %2, i64 32
  %i.aeg = load i64, ptr %i.aef, align 8, !tbaa !432
  %i.aeh = add i64 %i.aee, %i.aeg
  %i.aei = load ptr, ptr %2, align 8, !tbaa !389
  %i.aej = getelementptr i8, ptr %i.aei, i64 16
  %.val.i = load i64, ptr %i.aej, align 8, !tbaa !361
  %i.aek = add i64 %i.aeh, %.val.i                ; 2 uses
  %i.ael = icmp sgt i64 %.4199.val.i, 0
  br i1 %i.ael, label %.lr.ph416, label %.thread386

.lr.ph416:                                        ; preds = %bb.fn
  %i.aem = getelementptr i8, ptr %.0195.i.lcssa, i64 24
  %i.aen = icmp sgt i64 %i.aek, 1
  br label %bb.fp

bb.fo:                                            ; preds = %bb.ft
  %i.aeo = add nuw nsw i64 %.0202.i414, 1         ; 2 uses
  %exitcond463.not = icmp eq i64 %i.aeo, %.4199.val.i
  br i1 %exitcond463.not, label %.thread386, label %bb.fp, !llvm.loop !619

bb.fp:                                            ; preds = %.lr.ph416, %bb.fo
  %.0202.i414 = phi i64 [ 0, %.lr.ph416 ], [ %i.aeo, %bb.fo ] ; 2 uses
  %i.aep = load i32, ptr %i.adk, align 8, !tbaa !385
  %i.aeq = load i32, ptr %i.adm, align 8, !tbaa !386
  %i.aer = load i32, ptr %i.ado, align 4, !tbaa !387
  %i.aes = load i32, ptr %i.adq, align 4, !tbaa !388
  %.sroa.217.0.insert.ext.i = zext i32 %i.aeq to i64
  %.sroa.217.0.insert.shift.i = shl nuw i64 %.sroa.217.0.insert.ext.i, 32
  %.sroa.016.0.insert.ext.i = zext i32 %i.aep to i64
  %.sroa.016.0.insert.insert.i = or disjoint i64 %.sroa.217.0.insert.shift.i, %.sroa.016.0.insert.ext.i
  %.sroa.519.8.insert.ext.i = zext i32 %i.aes to i64
  %.sroa.519.8.insert.shift.i = shl nuw i64 %.sroa.519.8.insert.ext.i, 32
  %.sroa.318.8.insert.ext.i = zext i32 %i.aer to i64
  %.sroa.318.8.insert.insert.i = or disjoint i64 %.sroa.519.8.insert.shift.i, %.sroa.318.8.insert.ext.i
  br i1 %i.aen, label %.lr.ph571, label %codegen_pattern_helper_rotate.exit

bb.fq:                                            ; preds = %.lr.ph571
  %i.aet = add nsw i64 %.0.i313569, -1
  %i.aeu = icmp sgt i64 %.0.i313569, 2
  br i1 %i.aeu, label %.lr.ph571, label %codegen_pattern_helper_rotate.exit, !llvm.loop !7

.lr.ph571:                                        ; preds = %bb.fp, %bb.fq
  %.0.i313569 = phi i64 [ %i.aet, %bb.fq ], [ %i.aek, %bb.fp ] ; 3 uses
  %i.aev = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.aew = trunc i64 %.0.i313569 to i32
  %i.aex = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.aev, i32 noundef 117, i32 noundef %i.aew, i64 %.sroa.016.0.insert.insert.i, i64 %.sroa.318.8.insert.insert.i) #10
  %i.aey = icmp eq i32 %i.aex, -1
  br i1 %i.aey, label %.thread375, label %bb.fq, !llvm.loop !7

codegen_pattern_helper_rotate.exit:               ; preds = %bb.fq, %bb.fp
  %i.aez = load ptr, ptr %i.aem, align 8, !tbaa !364
  %i.afa = getelementptr [8 x i8], ptr %i.aez, i64 %.0202.i414
  %i.afb = load ptr, ptr %i.afa, align 8, !tbaa !343 ; 3 uses
  %i.afc = load ptr, ptr %2, align 8, !tbaa !389
  %i.afd = tail call i32 @PySequence_Contains(ptr noundef %i.afc, ptr noundef %i.afb) #10, !inline_history !615 ; 2 uses
  %i.afe = icmp slt i32 %i.afd, 0
  br i1 %i.afe, label %.thread375, label %bb.fr

bb.fr:                                            ; preds = %codegen_pattern_helper_rotate.exit
  %.not220.i = icmp eq i32 %i.afd, 0
  br i1 %.not220.i, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.aff = load i32, ptr %i.adk, align 8, !tbaa !385
  %i.afg = load i32, ptr %i.adm, align 8, !tbaa !386
  %i.afh = load i32, ptr %i.ado, align 4, !tbaa !387
  %i.afi = load i32, ptr %i.adq, align 4, !tbaa !388
  %.sroa.210.0.insert.ext.i257 = zext i32 %i.afg to i64
  %.sroa.210.0.insert.shift.i258 = shl nuw i64 %.sroa.210.0.insert.ext.i257, 32
  %.sroa.09.0.insert.ext.i259 = zext i32 %i.aff to i64
  %.sroa.09.0.insert.insert.i260 = or disjoint i64 %.sroa.210.0.insert.shift.i258, %.sroa.09.0.insert.ext.i259
  %.sroa.512.8.insert.ext.i261 = zext i32 %i.afi to i64
  %.sroa.512.8.insert.shift.i262 = shl nuw i64 %.sroa.512.8.insert.ext.i261, 32
  %.sroa.311.8.insert.ext.i263 = zext i32 %i.afh to i64
  %.sroa.311.8.insert.insert.i264 = or disjoint i64 %.sroa.512.8.insert.shift.i262, %.sroa.311.8.insert.ext.i263
  %i.afj = tail call i32 (ptr, i64, i64, ptr, ...) @_PyCompile_Error(ptr noundef %0, i64 %.sroa.09.0.insert.insert.i260, i64 %.sroa.311.8.insert.insert.i264, ptr noundef nonnull @.str.263, ptr noundef %i.afb) #10 ; 0 uses
  br label %.thread375

bb.ft:                                            ; preds = %bb.fr
  %i.afk = load ptr, ptr %2, align 8, !tbaa !389
  %i.afl = tail call i32 @PyList_Append(ptr noundef %i.afk, ptr noundef %i.afb) #10, !inline_history !615
  %.not221.i = icmp eq i32 %i.afl, 0
  br i1 %.not221.i, label %bb.fo, label %.thread375

.thread386:                                       ; preds = %bb.fo, %bb.fn
  %i.afm = load i32, ptr %.sroa.0105.0.copyload.i, align 8, !tbaa !341 ; 2 uses
  %.not.i226.i = icmp sgt i32 %i.afm, -1
  br i1 %.not.i226.i, label %bb.fu, label %Py_DECREF.exit227.i

bb.fu:                                            ; preds = %.thread386
  %i.afn = add nsw i32 %i.afm, -1                 ; 2 uses
  store i32 %i.afn, ptr %.sroa.0105.0.copyload.i, align 8, !tbaa !341
  %i.afo = icmp eq i32 %i.afn, 0
  br i1 %i.afo, label %bb.fv, label %Py_DECREF.exit227.i

bb.fv:                                            ; preds = %bb.fu
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sroa.0105.0.copyload.i) #10, !inline_history !615
  br label %Py_DECREF.exit227.i

Py_DECREF.exit227.i:                              ; preds = %bb.fv, %bb.fu, %.thread386
  %i.afp = load i32, ptr %.0195.i.lcssa, align 8, !tbaa !341 ; 2 uses
  %.not.i224.i = icmp sgt i32 %i.afp, -1
  br i1 %.not.i224.i, label %bb.fw, label %Py_DECREF.exit225.i

bb.fw:                                            ; preds = %Py_DECREF.exit227.i
  %i.afq = add nsw i32 %i.afp, -1                 ; 2 uses
  store i32 %i.afq, ptr %.0195.i.lcssa, align 8, !tbaa !341
  %i.afr = icmp eq i32 %i.afq, 0
  br i1 %i.afr, label %bb.fx, label %Py_DECREF.exit225.i

bb.fx:                                            ; preds = %bb.fw
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0195.i.lcssa) #10, !inline_history !615
  br label %Py_DECREF.exit225.i

Py_DECREF.exit225.i:                              ; preds = %bb.fx, %bb.fw, %Py_DECREF.exit227.i
  %i.afs = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10, !inline_history !615
  %i.aft = load i32, ptr %i.adk, align 8, !tbaa !385
  %i.afu = load i32, ptr %i.adm, align 8, !tbaa !386
  %i.afv = load i32, ptr %i.ado, align 4, !tbaa !387
  %i.afw = load i32, ptr %i.adq, align 4, !tbaa !388
  %.sroa.26.0.insert.ext.i249 = zext i32 %i.afu to i64
  %.sroa.26.0.insert.shift.i250 = shl nuw i64 %.sroa.26.0.insert.ext.i249, 32
  %.sroa.05.0.insert.ext.i251 = zext i32 %i.aft to i64
  %.sroa.05.0.insert.insert.i252 = or disjoint i64 %.sroa.26.0.insert.shift.i250, %.sroa.05.0.insert.ext.i251
  %.sroa.58.8.insert.ext.i253 = zext i32 %i.afw to i64
  %.sroa.58.8.insert.shift.i254 = shl nuw i64 %.sroa.58.8.insert.ext.i253, 32
  %.sroa.37.8.insert.ext.i255 = zext i32 %i.afv to i64
  %.sroa.37.8.insert.insert.i256 = or disjoint i64 %.sroa.58.8.insert.shift.i254, %.sroa.37.8.insert.ext.i255
  %i.afx = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.afs, i32 noundef 31, i32 noundef 0, i64 %.sroa.05.0.insert.insert.i252, i64 %.sroa.37.8.insert.insert.i256) #10
  %i.afy = icmp eq i32 %i.afx, -1
  %.223.i = sext i1 %i.afy to i32
  br label %codegen_pattern_value.exit

.loopexit:                                        ; preds = %bb.es, %bb.ev
  %i.afz = getelementptr i8, ptr %1, i64 40
  %i.aga = load i32, ptr %i.afz, align 8, !tbaa !385
  %i.agb = getelementptr i8, ptr %1, i64 48
  %i.agc = load i32, ptr %i.agb, align 8, !tbaa !386
  %i.agd = getelementptr i8, ptr %1, i64 44
  %i.age = load i32, ptr %i.agd, align 4, !tbaa !387
end_hunk_0
