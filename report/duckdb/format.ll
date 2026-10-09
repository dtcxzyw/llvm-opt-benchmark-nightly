Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/format?download=true
inline.NumInlined: 5789
inline.NumDeleted: 1347
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 158
loop-unroll.NumUnrolled: 176
begin_hunk_0_@_ZNK10duckdb_fmt2v68internal12float_writerIwE8prettifyIPwEET_S6_:bb.a
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 1
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !64
  %i.ic = sext i8 %i.ib to i32
  store i32 %i.ic, ptr %i.hz, align 4, !tbaa !112
  %i.id = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hw, i64 2
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !64
  %i.ig = sext i8 %i.if to i32
  store i32 %i.ig, ptr %i.id, align 4, !tbaa !112
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hu, i64 12 ; 2 uses
  %i.ii = add nuw nsw i32 %.0103257, 3            ; 2 uses
  %i.ij = icmp slt i32 %i.ii, %i.e
  br i1 %i.ij, label %.peel.newph, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit181, !llvm.loop !3394

bb.y:                                             ; preds = %bb.x
  %i.ik = load ptr, ptr %0, align 8, !tbaa !653   ; 6 uses
  %i.il = zext nneg i32 %i.e to i64               ; 7 uses
  %min.iters.check443 = icmp ult i32 %i.e, 12
  br i1 %min.iters.check443, label %.lr.ph.i.i.i.i.i.i177.preheader, label %vector.memcheck444

vector.memcheck444:                               ; preds = %bb.y
  %i.im = shl nuw nsw i64 %i.il, 2
  %i.in = getelementptr i8, ptr %1, i64 %i.im
  %i.io = getelementptr i8, ptr %i.ik, i64 %i.il
  %bound0445 = icmp ult ptr %1, %i.io
  %bound1446 = icmp ult ptr %i.ik, %i.in
  %found.conflict447 = and i1 %bound0445, %bound1446
  br i1 %found.conflict447, label %.lr.ph.i.i.i.i.i.i177.preheader, label %vector.ph448

vector.ph448:                                     ; preds = %vector.memcheck444
  %n.vec449 = and i64 %i.il, 2147483640           ; 4 uses
  %i.ip = and i64 %i.il, 7
  %i.iq = shl nuw nsw i64 %n.vec449, 2
  %i.ir = getelementptr i8, ptr %1, i64 %i.iq     ; 2 uses
  %i.is = getelementptr i8, ptr %i.ik, i64 %n.vec449
  br label %vector.body450

vector.body450:                                   ; preds = %vector.body450, %vector.ph448
  %index451 = phi i64 [ 0, %vector.ph448 ], [ %index.next456, %vector.body450 ] ; 3 uses
  %i.it = shl i64 %index451, 2
  %next.gep452 = getelementptr i8, ptr %1, i64 %i.it ; 2 uses
  %next.gep453 = getelementptr i8, ptr %i.ik, i64 %index451 ; 2 uses
  %i.iu = getelementptr i8, ptr %next.gep453, i64 4
  %wide.load454 = load <4 x i8>, ptr %next.gep453, align 1, !tbaa !64, !alias.scope !3426
  %wide.load455 = load <4 x i8>, ptr %i.iu, align 1, !tbaa !64, !alias.scope !3426
  %i.iv = sext <4 x i8> %wide.load454 to <4 x i32>
  %i.iw = sext <4 x i8> %wide.load455 to <4 x i32>
  %i.ix = getelementptr i8, ptr %next.gep452, i64 16
  store <4 x i32> %i.iv, ptr %next.gep452, align 4, !tbaa !112, !alias.scope !3427, !noalias !3426
  store <4 x i32> %i.iw, ptr %i.ix, align 4, !tbaa !112, !alias.scope !3427, !noalias !3426
  %index.next456 = add nuw i64 %index451, 8       ; 2 uses
  %i.iy = icmp eq i64 %index.next456, %n.vec449
  br i1 %i.iy, label %middle.block457, label %vector.body450, !llvm.loop !3398

middle.block457:                                  ; preds = %vector.body450
  %cmp.n458 = icmp eq i64 %n.vec449, %i.il
  br i1 %cmp.n458, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit181, label %.lr.ph.i.i.i.i.i.i177.preheader

.lr.ph.i.i.i.i.i.i177.preheader:                  ; preds = %vector.memcheck444, %bb.y, %middle.block457
  %.012.i.i.i.i.i.i178.ph = phi i64 [ %i.il, %vector.memcheck444 ], [ %i.il, %bb.y ], [ %i.ip, %middle.block457 ]
  %.0811.i.i.i.i.i.i179.ph = phi ptr [ %1, %vector.memcheck444 ], [ %1, %bb.y ], [ %i.ir, %middle.block457 ]
  %.0910.i.i.i.i.i.i180.ph = phi ptr [ %i.ik, %vector.memcheck444 ], [ %i.ik, %bb.y ], [ %i.is, %middle.block457 ]
  br label %.lr.ph.i.i.i.i.i.i177

.lr.ph.i.i.i.i.i.i177:                            ; preds = %.lr.ph.i.i.i.i.i.i177.preheader, %.lr.ph.i.i.i.i.i.i177
  %.012.i.i.i.i.i.i178 = phi i64 [ %i.jd, %.lr.ph.i.i.i.i.i.i177 ], [ %.012.i.i.i.i.i.i178.ph, %.lr.ph.i.i.i.i.i.i177.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i179 = phi ptr [ %i.jc, %.lr.ph.i.i.i.i.i.i177 ], [ %.0811.i.i.i.i.i.i179.ph, %.lr.ph.i.i.i.i.i.i177.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i180 = phi ptr [ %i.jb, %.lr.ph.i.i.i.i.i.i177 ], [ %.0910.i.i.i.i.i.i180.ph, %.lr.ph.i.i.i.i.i.i177.preheader ] ; 2 uses
  %i.iz = load i8, ptr %.0910.i.i.i.i.i.i180, align 1, !tbaa !64
  %i.ja = sext i8 %i.iz to i32
  store i32 %i.ja, ptr %.0811.i.i.i.i.i.i179, align 4, !tbaa !112
  %i.jb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i180, i64 1
  %i.jc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i179, i64 4 ; 2 uses
  %i.jd = add nsw i64 %.012.i.i.i.i.i.i178, -1
  %i.je = icmp samesign ugt i64 %.012.i.i.i.i.i.i178, 1
  br i1 %i.je, label %.lr.ph.i.i.i.i.i.i177, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit181, !llvm.loop !3399

_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit181: ; preds = %.lr.ph.i.i.i.i.i.i177, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit175.peel, %.peel.newph, %middle.block457
  %.11 = phi ptr [ %i.ih, %.peel.newph ], [ %i.ir, %middle.block457 ], [ %.lcssa571.peel, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit175.peel ], [ %i.jc, %.lr.ph.i.i.i.i.i.i177 ] ; 6 uses
  %i.jf = load i32, ptr %i.g, align 4
  %i.jg = and i32 %i.jf, 536870912
  %.not = icmp eq i32 %i.jg, 0
  br i1 %.not, label %.lr.ph, label %.lr.ph.i.i.i.i.i.i189.preheader

.lr.ph:                                           ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit181
  %i.jh = load ptr, ptr %0, align 8, !tbaa !653
  %i.ji = sext i32 %i.b to i64
  %i.jj = zext nneg i32 %i.e to i64               ; 2 uses
  %i.jk = add i32 %i.b, -1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.jk)
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ %i.ji, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 3 uses
  %i.jl = getelementptr i8, ptr %i.jh, i64 %indvars.iv
  %i.jm = getelementptr i8, ptr %i.jl, i64 -1
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !64
  %i.jo = icmp eq i8 %i.jn, 48
  br i1 %i.jo, label %bb.aa, label %.critedge.split.loop.exit

bb.aa:                                            ; preds = %bb.z
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.jp = icmp sgt i64 %indvars.iv.next, %i.jj
  br i1 %i.jp, label %bb.z, label %.critedge, !llvm.loop !3400

.critedge.split.loop.exit:                        ; preds = %bb.z
  %i.jq = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.aa, %.critedge.split.loop.exit
  %.0102.lcssa.ph = phi i32 [ %i.jq, %.critedge.split.loop.exit ], [ %smin, %bb.aa ] ; 2 uses
  %.not126 = icmp eq i32 %.0102.lcssa.ph, %i.e
  br i1 %.not126, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !656
  %i.jt = getelementptr inbounds nuw i8, ptr %.11, i64 4
  store i32 %i.js, ptr %.11, align 4, !tbaa !112
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.critedge
  %.12 = phi ptr [ %i.jt, %bb.ab ], [ %.11, %.critedge ] ; 7 uses
  %i.ju = zext nneg i32 %i.e to i64               ; 2 uses
  %i.jv = sext i32 %.0102.lcssa.ph to i64         ; 3 uses
  %gepdiff235 = sub nsw i64 %i.jv, %i.ju          ; 7 uses
  %i.jw = icmp sgt i64 %gepdiff235, 0
  br i1 %i.jw, label %.lr.ph.i.i.i.i.i.i183.preheader, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187

.lr.ph.i.i.i.i.i.i183.preheader:                  ; preds = %bb.ac
  %i.jx = load ptr, ptr %0, align 8, !tbaa !653   ; 2 uses
  %i.jy = getelementptr i8, ptr %i.jx, i64 %i.ju  ; 5 uses
  %min.iters.check507 = icmp ult i64 %gepdiff235, 16
  br i1 %min.iters.check507, label %.lr.ph.i.i.i.i.i.i183.preheader565, label %vector.memcheck508

vector.memcheck508:                               ; preds = %.lr.ph.i.i.i.i.i.i183.preheader
  %i.jz = sub nsw i64 %i.jv, %i.jj
  %i.ka = shl nsw i64 %i.jz, 2
  %i.kb = getelementptr i8, ptr %.12, i64 %i.ka
  %i.kc = getelementptr i8, ptr %i.jx, i64 %i.jv
  %bound0509 = icmp ult ptr %.12, %i.kc
  %bound1510 = icmp ult ptr %i.jy, %i.kb
  %found.conflict511 = and i1 %bound0509, %bound1510
  br i1 %found.conflict511, label %.lr.ph.i.i.i.i.i.i183.preheader565, label %vector.ph512

vector.ph512:                                     ; preds = %vector.memcheck508
  %n.vec513 = and i64 %gepdiff235, 9223372036854775800 ; 4 uses
  %i.kd = and i64 %gepdiff235, 7
  %i.ke = shl i64 %n.vec513, 2
  %i.kf = getelementptr i8, ptr %.12, i64 %i.ke   ; 2 uses
  %i.kg = getelementptr i8, ptr %i.jy, i64 %n.vec513
  br label %vector.body514

vector.body514:                                   ; preds = %vector.body514, %vector.ph512
  %index515 = phi i64 [ 0, %vector.ph512 ], [ %index.next520, %vector.body514 ] ; 3 uses
  %i.kh = shl i64 %index515, 2
  %next.gep516 = getelementptr i8, ptr %.12, i64 %i.kh ; 2 uses
  %next.gep517 = getelementptr i8, ptr %i.jy, i64 %index515 ; 2 uses
  %i.ki = getelementptr i8, ptr %next.gep517, i64 4
  %wide.load518 = load <4 x i8>, ptr %next.gep517, align 1, !tbaa !64, !alias.scope !3428
  %wide.load519 = load <4 x i8>, ptr %i.ki, align 1, !tbaa !64, !alias.scope !3428
  %i.kj = sext <4 x i8> %wide.load518 to <4 x i32>
  %i.kk = sext <4 x i8> %wide.load519 to <4 x i32>
  %i.kl = getelementptr i8, ptr %next.gep516, i64 16
  store <4 x i32> %i.kj, ptr %next.gep516, align 4, !tbaa !112, !alias.scope !3429, !noalias !3428
  store <4 x i32> %i.kk, ptr %i.kl, align 4, !tbaa !112, !alias.scope !3429, !noalias !3428
  %index.next520 = add nuw i64 %index515, 8       ; 2 uses
  %i.km = icmp eq i64 %index.next520, %n.vec513
  br i1 %i.km, label %middle.block521, label %vector.body514, !llvm.loop !3404

middle.block521:                                  ; preds = %vector.body514
  %cmp.n522 = icmp eq i64 %gepdiff235, %n.vec513
  br i1 %cmp.n522, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, label %.lr.ph.i.i.i.i.i.i183.preheader565

.lr.ph.i.i.i.i.i.i183.preheader565:               ; preds = %vector.memcheck508, %.lr.ph.i.i.i.i.i.i183.preheader, %middle.block521
  %.012.i.i.i.i.i.i184.ph = phi i64 [ %gepdiff235, %vector.memcheck508 ], [ %gepdiff235, %.lr.ph.i.i.i.i.i.i183.preheader ], [ %i.kd, %middle.block521 ]
  %.0811.i.i.i.i.i.i185.ph = phi ptr [ %.12, %vector.memcheck508 ], [ %.12, %.lr.ph.i.i.i.i.i.i183.preheader ], [ %i.kf, %middle.block521 ]
  %.0910.i.i.i.i.i.i186.ph = phi ptr [ %i.jy, %vector.memcheck508 ], [ %i.jy, %.lr.ph.i.i.i.i.i.i183.preheader ], [ %i.kg, %middle.block521 ]
  br label %.lr.ph.i.i.i.i.i.i183

.lr.ph.i.i.i.i.i.i183:                            ; preds = %.lr.ph.i.i.i.i.i.i183.preheader565, %.lr.ph.i.i.i.i.i.i183
  %.012.i.i.i.i.i.i184 = phi i64 [ %i.kr, %.lr.ph.i.i.i.i.i.i183 ], [ %.012.i.i.i.i.i.i184.ph, %.lr.ph.i.i.i.i.i.i183.preheader565 ] ; 2 uses
  %.0811.i.i.i.i.i.i185 = phi ptr [ %i.kq, %.lr.ph.i.i.i.i.i.i183 ], [ %.0811.i.i.i.i.i.i185.ph, %.lr.ph.i.i.i.i.i.i183.preheader565 ] ; 2 uses
  %.0910.i.i.i.i.i.i186 = phi ptr [ %i.kp, %.lr.ph.i.i.i.i.i.i183 ], [ %.0910.i.i.i.i.i.i186.ph, %.lr.ph.i.i.i.i.i.i183.preheader565 ] ; 2 uses
  %i.kn = load i8, ptr %.0910.i.i.i.i.i.i186, align 1, !tbaa !64
  %i.ko = sext i8 %i.kn to i32
  store i32 %i.ko, ptr %.0811.i.i.i.i.i.i185, align 4, !tbaa !112
  %i.kp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i186, i64 1
  %i.kq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i185, i64 4 ; 2 uses
  %i.kr = add nsw i64 %.012.i.i.i.i.i.i184, -1
  %i.ks = icmp samesign ugt i64 %.012.i.i.i.i.i.i184, 1
  br i1 %i.ks, label %.lr.ph.i.i.i.i.i.i183, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, !llvm.loop !3405

.lr.ph.i.i.i.i.i.i189.preheader:                  ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit181
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !656
  %i.kv = getelementptr i8, ptr %.11, i64 4       ; 5 uses
  store i32 %i.ku, ptr %.11, align 4, !tbaa !112
  %i.kw = load ptr, ptr %0, align 8, !tbaa !653   ; 2 uses
  %i.kx = zext nneg i32 %i.e to i64               ; 3 uses
  %i.ky = getelementptr i8, ptr %i.kw, i64 %i.kx  ; 5 uses
  %i.kz = sext i32 %i.b to i64                    ; 2 uses
  %gepdiff = sub nsw i64 %i.kz, %i.kx             ; 5 uses
  %i.la = icmp ne i64 %gepdiff, 0
  %i.lb = zext i1 %i.la to i64                    ; 2 uses
  %i.lc = add nsw i64 %i.kz, 1
  %i.ld = sub nsw i64 %i.lc, %i.lb                ; 2 uses
  %i.le = sub nsw i64 %i.ld, %i.kx                ; 3 uses
  %min.iters.check470 = icmp ult i64 %i.le, 28
  br i1 %min.iters.check470, label %.lr.ph.i.i.i.i.i.i189.preheader569, label %vector.memcheck471

vector.memcheck471:                               ; preds = %.lr.ph.i.i.i.i.i.i189.preheader
  %i.lf = sub nsw i64 %gepdiff, %i.lb
  %i.lg = shl nsw i64 %i.lf, 2
  %i.lh = getelementptr i8, ptr %.11, i64 %i.lg
  %i.li = getelementptr i8, ptr %i.lh, i64 8
  %i.lj = getelementptr i8, ptr %i.kw, i64 %i.ld
  %bound0472 = icmp ult ptr %i.kv, %i.lj
  %bound1473 = icmp ult ptr %i.ky, %i.li
  %found.conflict474 = and i1 %bound0472, %bound1473
  br i1 %found.conflict474, label %.lr.ph.i.i.i.i.i.i189.preheader569, label %vector.ph475

vector.ph475:                                     ; preds = %vector.memcheck471
  %n.vec476 = and i64 %i.le, -8                   ; 5 uses
  %i.lk = sub nsw i64 %gepdiff, %n.vec476
  %i.ll = shl nsw i64 %n.vec476, 2
  %i.lm = getelementptr i8, ptr %i.kv, i64 %i.ll  ; 2 uses
  %i.ln = getelementptr i8, ptr %i.ky, i64 %n.vec476
  br label %vector.body477

vector.body477:                                   ; preds = %vector.body477, %vector.ph475
  %index478 = phi i64 [ 0, %vector.ph475 ], [ %index.next483, %vector.body477 ] ; 3 uses
  %i.lo = shl i64 %index478, 2
  %next.gep479 = getelementptr i8, ptr %i.kv, i64 %i.lo ; 2 uses
  %next.gep480 = getelementptr i8, ptr %i.ky, i64 %index478 ; 2 uses
  %i.lp = getelementptr i8, ptr %next.gep480, i64 4
  %wide.load481 = load <4 x i8>, ptr %next.gep480, align 1, !tbaa !64, !alias.scope !3430
  %wide.load482 = load <4 x i8>, ptr %i.lp, align 1, !tbaa !64, !alias.scope !3430
  %i.lq = sext <4 x i8> %wide.load481 to <4 x i32>
  %i.lr = sext <4 x i8> %wide.load482 to <4 x i32>
  %i.ls = getelementptr i8, ptr %next.gep479, i64 16
  store <4 x i32> %i.lq, ptr %next.gep479, align 4, !tbaa !112, !alias.scope !3431, !noalias !3430
  store <4 x i32> %i.lr, ptr %i.ls, align 4, !tbaa !112, !alias.scope !3431, !noalias !3430
  %index.next483 = add nuw i64 %index478, 8       ; 2 uses
  %i.lt = icmp eq i64 %index.next483, %n.vec476
  br i1 %i.lt, label %middle.block484, label %vector.body477, !llvm.loop !3409

middle.block484:                                  ; preds = %vector.body477
  %cmp.n485 = icmp eq i64 %i.le, %n.vec476
  br i1 %cmp.n485, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit193, label %.lr.ph.i.i.i.i.i.i189.preheader569

.lr.ph.i.i.i.i.i.i189.preheader569:               ; preds = %vector.memcheck471, %.lr.ph.i.i.i.i.i.i189.preheader, %middle.block484
  %.012.i.i.i.i.i.i190.ph = phi i64 [ %gepdiff, %vector.memcheck471 ], [ %gepdiff, %.lr.ph.i.i.i.i.i.i189.preheader ], [ %i.lk, %middle.block484 ]
  %.0811.i.i.i.i.i.i191.ph = phi ptr [ %i.kv, %vector.memcheck471 ], [ %i.kv, %.lr.ph.i.i.i.i.i.i189.preheader ], [ %i.lm, %middle.block484 ]
  %.0910.i.i.i.i.i.i192.ph = phi ptr [ %i.ky, %vector.memcheck471 ], [ %i.ky, %.lr.ph.i.i.i.i.i.i189.preheader ], [ %i.ln, %middle.block484 ]
  br label %.lr.ph.i.i.i.i.i.i189

.lr.ph.i.i.i.i.i.i189:                            ; preds = %.lr.ph.i.i.i.i.i.i189.preheader569, %.lr.ph.i.i.i.i.i.i189
  %.012.i.i.i.i.i.i190 = phi i64 [ %i.ly, %.lr.ph.i.i.i.i.i.i189 ], [ %.012.i.i.i.i.i.i190.ph, %.lr.ph.i.i.i.i.i.i189.preheader569 ] ; 2 uses
  %.0811.i.i.i.i.i.i191 = phi ptr [ %i.lx, %.lr.ph.i.i.i.i.i.i189 ], [ %.0811.i.i.i.i.i.i191.ph, %.lr.ph.i.i.i.i.i.i189.preheader569 ] ; 2 uses
  %.0910.i.i.i.i.i.i192 = phi ptr [ %i.lw, %.lr.ph.i.i.i.i.i.i189 ], [ %.0910.i.i.i.i.i.i192.ph, %.lr.ph.i.i.i.i.i.i189.preheader569 ] ; 2 uses
  %i.lu = load i8, ptr %.0910.i.i.i.i.i.i192, align 1, !tbaa !64
  %i.lv = sext i8 %i.lu to i32
  store i32 %i.lv, ptr %.0811.i.i.i.i.i.i191, align 4, !tbaa !112
  %i.lw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i192, i64 1
  %i.lx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i191, i64 4 ; 2 uses
  %i.ly = add nsw i64 %.012.i.i.i.i.i.i190, -1
  %i.lz = icmp samesign ugt i64 %.012.i.i.i.i.i.i190, 1
  br i1 %i.lz, label %.lr.ph.i.i.i.i.i.i189, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit193, !llvm.loop !3410

_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit193: ; preds = %.lr.ph.i.i.i.i.i.i189, %middle.block484
  %.lcssa320 = phi ptr [ %i.lm, %middle.block484 ], [ %i.lx, %.lr.ph.i.i.i.i.i.i189 ] ; 5 uses
  %i.ma = load i32, ptr %i.f, align 8, !tbaa !658 ; 2 uses
  %i.mb = icmp sgt i32 %i.ma, %i.b
  br i1 %i.mb, label %bb.ad, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187

bb.ad:                                            ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit193
  %i.mc = sub nuw nsw i32 %i.ma, %i.b
  %i.md = zext nneg i32 %i.mc to i64
  %.idx.i.i194 = shl nuw nsw i64 %i.md, 2         ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.lcssa320, i64 %.idx.i.i194 ; 3 uses
  %i.mf = add nsw i64 %.idx.i.i194, -4            ; 2 uses
  %i.mg = lshr exact i64 %i.mf, 2
  %i.mh = add nuw nsw i64 %i.mg, 1                ; 2 uses
  %min.iters.check490 = icmp ult i64 %i.mf, 28
  br i1 %min.iters.check490, label %.lr.ph.i.i.i.i195.preheader, label %vector.ph491

vector.ph491:                                     ; preds = %bb.ad
  %n.vec492 = and i64 %i.mh, 9223372036854775800  ; 3 uses
  %i.mi = shl i64 %n.vec492, 2
  %i.mj = getelementptr i8, ptr %.lcssa320, i64 %i.mi
  br label %vector.body493

vector.body493:                                   ; preds = %vector.body493, %vector.ph491
  %index494 = phi i64 [ 0, %vector.ph491 ], [ %index.next496, %vector.body493 ] ; 2 uses
  %i.mk = shl i64 %index494, 2
  %next.gep495 = getelementptr i8, ptr %.lcssa320, i64 %i.mk ; 2 uses
  %i.ml = getelementptr i8, ptr %next.gep495, i64 16
  store <4 x i32> splat (i32 48), ptr %next.gep495, align 4, !tbaa !112
  store <4 x i32> splat (i32 48), ptr %i.ml, align 4, !tbaa !112
  %index.next496 = add nuw i64 %index494, 8       ; 2 uses
  %i.mm = icmp eq i64 %index.next496, %n.vec492
  br i1 %i.mm, label %middle.block497, label %vector.body493, !llvm.loop !3411

middle.block497:                                  ; preds = %vector.body493
  %cmp.n498 = icmp eq i64 %i.mh, %n.vec492
  br i1 %cmp.n498, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, label %.lr.ph.i.i.i.i195.preheader

.lr.ph.i.i.i.i195.preheader:                      ; preds = %bb.ad, %middle.block497
  %.06.i.i.i.i196.ph = phi ptr [ %.lcssa320, %bb.ad ], [ %i.mj, %middle.block497 ]
  br label %.lr.ph.i.i.i.i195

.lr.ph.i.i.i.i195:                                ; preds = %.lr.ph.i.i.i.i195.preheader, %.lr.ph.i.i.i.i195
  %.06.i.i.i.i196 = phi ptr [ %i.mn, %.lr.ph.i.i.i.i195 ], [ %.06.i.i.i.i196.ph, %.lr.ph.i.i.i.i195.preheader ] ; 2 uses
  store i32 48, ptr %.06.i.i.i.i196, align 4, !tbaa !112
  %i.mn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i196, i64 4 ; 2 uses
  %.not.i.i.i.i197 = icmp eq ptr %i.mn, %i.me
  br i1 %.not.i.i.i.i197, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, label %.lr.ph.i.i.i.i195, !llvm.loop !3412

bb.ae:                                            ; preds = %bb.w
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 48, ptr %1, align 4, !tbaa !112
  %i.mp = sub nsw i32 0, %i.e                     ; 5 uses
  %i.mq = icmp eq i32 %i.b, 0
  br i1 %i.mq, label %.thread, label %bb.af

.thread:                                          ; preds = %bb.ae
  %i.mr = load i32, ptr %i.f, align 8, !tbaa !658 ; 2 uses
  %i.ms = tail call i32 @llvm.smin.i32(i32 %i.mr, i32 %i.mp)
  %i.mt = icmp slt i32 %i.mr, 0
  %spec.select133 = select i1 %i.mt, i32 %i.mp, i32 %i.ms
  br label %.critedge7

bb.af:                                            ; preds = %bb.ae
  %i.mu = load i32, ptr %i.g, align 4
  %i.mv = and i32 %i.mu, 536870912
  %.not125 = icmp eq i32 %i.mv, 0
  %i.mw = icmp sgt i32 %i.b, 0
  %or.cond11 = select i1 %.not125, i1 %i.mw, i1 false
  br i1 %or.cond11, label %.preheader240, label %.critedge7.thread

.preheader240:                                    ; preds = %bb.af
  %i.mx = load ptr, ptr %0, align 8, !tbaa !653
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader240, %bb.ah
  %.0 = phi i32 [ %i.nd, %bb.ah ], [ %i.b, %.preheader240 ] ; 4 uses
  %i.my = zext nneg i32 %.0 to i64
  %i.mz = getelementptr i8, ptr %i.mx, i64 %i.my
  %i.na = getelementptr i8, ptr %i.mz, i64 -1
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !64
  %i.nc = icmp eq i8 %i.nb, 48
  br i1 %i.nc, label %bb.ah, label %.critedge7.thread

bb.ah:                                            ; preds = %bb.ag
  %i.nd = add nsw i32 %.0, -1
  %.old10 = icmp sgt i32 %.0, 1
  br i1 %.old10, label %bb.ag, label %.critedge7

.critedge7:                                       ; preds = %bb.ah, %.thread
  %.099228 = phi i32 [ %spec.select133, %.thread ], [ %i.mp, %bb.ah ] ; 2 uses
  %.not234 = icmp eq i32 %.099228, 0
  br i1 %.not234, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, label %.critedge7.thread

.critedge7.thread:                                ; preds = %bb.ag, %bb.af, %.critedge7
  %.1233 = phi i32 [ 0, %.critedge7 ], [ %i.b, %bb.af ], [ %.0, %bb.ag ] ; 3 uses
  %.099228232 = phi i32 [ %.099228, %.critedge7 ], [ %i.mp, %bb.af ], [ %i.mp, %bb.ag ] ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !656
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i32 %i.nf, ptr %i.mo, align 4, !tbaa !112
  %i.nh = icmp slt i32 %.099228232, 1
  br i1 %i.nh, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit205, label %bb.ai

bb.ai:                                            ; preds = %.critedge7.thread
  %i.ni = zext nneg i32 %.099228232 to i64
  %.idx.i.i200 = shl nuw nsw i64 %i.ni, 2         ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 %.idx.i.i200 ; 3 uses
  %i.nk = add nsw i64 %.idx.i.i200, -4            ; 2 uses
  %i.nl = lshr exact i64 %i.nk, 2
  %i.nm = add nuw nsw i64 %i.nl, 1                ; 2 uses
  %min.iters.check400 = icmp ult i64 %i.nk, 28
  br i1 %min.iters.check400, label %.lr.ph.i.i.i.i201.preheader, label %vector.ph401

vector.ph401:                                     ; preds = %bb.ai
  %n.vec402 = and i64 %i.nm, 9223372036854775800  ; 3 uses
  %i.nn = shl i64 %n.vec402, 2
  %i.no = getelementptr i8, ptr %i.ng, i64 %i.nn
  br label %vector.body403

vector.body403:                                   ; preds = %vector.body403, %vector.ph401
  %index404 = phi i64 [ 0, %vector.ph401 ], [ %index.next406, %vector.body403 ] ; 2 uses
  %i.np = shl i64 %index404, 2
  %next.gep405 = getelementptr i8, ptr %i.ng, i64 %i.np ; 2 uses
  %i.nq = getelementptr i8, ptr %next.gep405, i64 16
  store <4 x i32> splat (i32 48), ptr %next.gep405, align 4, !tbaa !112
  store <4 x i32> splat (i32 48), ptr %i.nq, align 4, !tbaa !112
  %index.next406 = add nuw i64 %index404, 8       ; 2 uses
  %i.nr = icmp eq i64 %index.next406, %n.vec402
  br i1 %i.nr, label %middle.block407, label %vector.body403, !llvm.loop !3413

middle.block407:                                  ; preds = %vector.body403
  %cmp.n408 = icmp eq i64 %i.nm, %n.vec402
  br i1 %cmp.n408, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit205, label %.lr.ph.i.i.i.i201.preheader

.lr.ph.i.i.i.i201.preheader:                      ; preds = %bb.ai, %middle.block407
  %.06.i.i.i.i202.ph = phi ptr [ %i.ng, %bb.ai ], [ %i.no, %middle.block407 ]
  br label %.lr.ph.i.i.i.i201

.lr.ph.i.i.i.i201:                                ; preds = %.lr.ph.i.i.i.i201.preheader, %.lr.ph.i.i.i.i201
  %.06.i.i.i.i202 = phi ptr [ %i.ns, %.lr.ph.i.i.i.i201 ], [ %.06.i.i.i.i202.ph, %.lr.ph.i.i.i.i201.preheader ] ; 2 uses
  store i32 48, ptr %.06.i.i.i.i202, align 4, !tbaa !112
  %i.ns = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i202, i64 4 ; 2 uses
end_hunk_0
