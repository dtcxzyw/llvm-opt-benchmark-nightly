inline.NumInlined: 5790
inline.NumDeleted: 1347
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 158
loop-unroll.NumUnrolled: 176
begin_hunk_0_@_ZNK10duckdb_fmt2v68internal12float_writerIwE8prettifyIPwEET_S6_:bb.a
  store i32 %i.hx, ptr %i.hu, align 4, !tbaa !126
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !18
  %i.ib = sext i8 %i.ia to i32
  store i32 %i.ib, ptr %i.hy, align 4, !tbaa !126
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hp, i64 12 ; 2 uses
  %i.id = add nuw nsw i32 %.0103257, 3            ; 2 uses
  %i.ie = icmp slt i32 %i.id, %i.e
  br i1 %i.ie, label %.peel.newph, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit181, !llvm.loop !3387

bb.y:                                             ; preds = %bb.x
  %i.if = load ptr, ptr %0, align 8, !tbaa !3332  ; 6 uses
  %i.ig = zext nneg i32 %i.e to i64               ; 7 uses
  %min.iters.check448 = icmp ult i32 %i.e, 12
  br i1 %min.iters.check448, label %.lr.ph.i.i.i.i.i.i177.preheader, label %vector.memcheck441

vector.memcheck441:                               ; preds = %bb.y
  %i.ih = shl nuw nsw i64 %i.ig, 2
  %scevgep442.a = getelementptr i8, ptr %1, i64 %i.ih
  %scevgep443 = getelementptr i8, ptr %i.if, i64 %i.ig
  %bound0444 = icmp ult ptr %1, %scevgep443
  %bound1445 = icmp ult ptr %i.if, %scevgep442.a
  %found.conflict446 = and i1 %bound0444, %bound1445
  br i1 %found.conflict446, label %.lr.ph.i.i.i.i.i.i177.preheader, label %vector.ph449

vector.ph449:                                     ; preds = %vector.memcheck441
  %n.vec451 = and i64 %i.ig, 2147483640           ; 4 uses
  %i.ii = and i64 %i.ig, 7
  %i.ij = shl nuw nsw i64 %n.vec451, 2
  %i.ik = getelementptr i8, ptr %1, i64 %i.ij     ; 2 uses
  %i.il = getelementptr i8, ptr %i.if, i64 %n.vec451
  br label %vector.body452

vector.body452:                                   ; preds = %vector.body452, %vector.ph449
  %index453 = phi i64 [ 0, %vector.ph449 ], [ %index.next458, %vector.body452 ] ; 3 uses
  %i.im = shl i64 %index453, 2
  %next.gep454.a = getelementptr i8, ptr %1, i64 %i.im ; 2 uses
  %next.gep455 = getelementptr i8, ptr %i.if, i64 %index453 ; 2 uses
  %i.in = getelementptr i8, ptr %next.gep455, i64 4
  %wide.load456.a = load <4 x i8>, ptr %next.gep455, align 1, !tbaa !18, !alias.scope !3388
  %wide.load457 = load <4 x i8>, ptr %i.in, align 1, !tbaa !18, !alias.scope !3388
  %i.io = sext <4 x i8> %wide.load456.a to <4 x i32>
  %i.ip = sext <4 x i8> %wide.load457 to <4 x i32>
  %i.iq = getelementptr i8, ptr %next.gep454.a, i64 16
  store <4 x i32> %i.io, ptr %next.gep454.a, align 4, !tbaa !126, !alias.scope !3391, !noalias !3388
  store <4 x i32> %i.ip, ptr %i.iq, align 4, !tbaa !126, !alias.scope !3391, !noalias !3388
  %index.next458 = add nuw i64 %index453, 8       ; 2 uses
  %i.ir = icmp eq i64 %index.next458, %n.vec451
  br i1 %i.ir, label %middle.block459, label %vector.body452, !llvm.loop !3393

middle.block459:                                  ; preds = %vector.body452
  %cmp.n460 = icmp eq i64 %n.vec451, %i.ig
  br i1 %cmp.n460, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit181, label %.lr.ph.i.i.i.i.i.i177.preheader

.lr.ph.i.i.i.i.i.i177.preheader:                  ; preds = %vector.memcheck441, %bb.y, %middle.block459
  %.012.i.i.i.i.i.i178.ph = phi i64 [ %i.ig, %vector.memcheck441 ], [ %i.ig, %bb.y ], [ %i.ii, %middle.block459 ]
  %.0811.i.i.i.i.i.i179.ph = phi ptr [ %1, %vector.memcheck441 ], [ %1, %bb.y ], [ %i.ik, %middle.block459 ]
  %.0910.i.i.i.i.i.i180.ph = phi ptr [ %i.if, %vector.memcheck441 ], [ %i.if, %bb.y ], [ %i.il, %middle.block459 ]
  br label %.lr.ph.i.i.i.i.i.i177

.lr.ph.i.i.i.i.i.i177:                            ; preds = %.lr.ph.i.i.i.i.i.i177.preheader, %.lr.ph.i.i.i.i.i.i177
  %.012.i.i.i.i.i.i178 = phi i64 [ %i.iw, %.lr.ph.i.i.i.i.i.i177 ], [ %.012.i.i.i.i.i.i178.ph, %.lr.ph.i.i.i.i.i.i177.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i179 = phi ptr [ %i.iv, %.lr.ph.i.i.i.i.i.i177 ], [ %.0811.i.i.i.i.i.i179.ph, %.lr.ph.i.i.i.i.i.i177.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i180 = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.i.i177 ], [ %.0910.i.i.i.i.i.i180.ph, %.lr.ph.i.i.i.i.i.i177.preheader ] ; 2 uses
  %i.is = load i8, ptr %.0910.i.i.i.i.i.i180, align 1, !tbaa !18
  %i.it = sext i8 %i.is to i32
  store i32 %i.it, ptr %.0811.i.i.i.i.i.i179, align 4, !tbaa !126
  %i.iu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i180, i64 1
  %i.iv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i179, i64 4 ; 2 uses
  %i.iw = add nsw i64 %.012.i.i.i.i.i.i178, -1
  %i.ix = icmp samesign ugt i64 %.012.i.i.i.i.i.i178, 1
  br i1 %i.ix, label %.lr.ph.i.i.i.i.i.i177, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit181, !llvm.loop !3394

_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit181: ; preds = %.lr.ph.i.i.i.i.i.i177, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit175.peel, %.peel.newph, %middle.block459
  %.11 = phi ptr [ %i.ic, %.peel.newph ], [ %i.ik, %middle.block459 ], [ %.lcssa569.peel, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit175.peel ], [ %i.iv, %.lr.ph.i.i.i.i.i.i177 ] ; 6 uses
  %i.iy = load i32, ptr %i.g, align 4
  %i.iz = and i32 %i.iy, 536870912
  %.not = icmp eq i32 %i.iz, 0
  br i1 %.not, label %.lr.ph, label %.lr.ph.i.i.i.i.i.i189.preheader

.lr.ph:                                           ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit181
  %i.ja = load ptr, ptr %0, align 8, !tbaa !3332
  %i.jb = sext i32 %i.b to i64
  %i.jc = zext nneg i32 %i.e to i64               ; 2 uses
  %i.jd = add i32 %i.b, -1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.jd)
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ %i.jb, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 3 uses
  %i.je = getelementptr i8, ptr %i.ja, i64 %indvars.iv
  %i.jf = getelementptr i8, ptr %i.je, i64 -1
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !18
  %i.jh = icmp eq i8 %i.jg, 48
  br i1 %i.jh, label %bb.aa, label %.critedge.split.loop.exit

bb.aa:                                            ; preds = %bb.z
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ji = icmp sgt i64 %indvars.iv.next, %i.jc
  br i1 %i.ji, label %bb.z, label %.critedge, !llvm.loop !3395

.critedge.split.loop.exit:                        ; preds = %bb.z
  %i.jj = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.aa, %.critedge.split.loop.exit
  %.0102.lcssa.ph = phi i32 [ %i.jj, %.critedge.split.loop.exit ], [ %smin, %bb.aa ] ; 2 uses
  %.not126 = icmp eq i32 %.0102.lcssa.ph, %i.e
  br i1 %.not126, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.critedge
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !3336
  %i.jm = getelementptr inbounds nuw i8, ptr %.11, i64 4
  store i32 %i.jl, ptr %.11, align 4, !tbaa !126
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.critedge
  %.12 = phi ptr [ %i.jm, %bb.ab ], [ %.11, %.critedge ] ; 7 uses
  %i.jn = zext nneg i32 %i.e to i64               ; 2 uses
  %i.jo = sext i32 %.0102.lcssa.ph to i64         ; 3 uses
  %gepdiff235 = sub nsw i64 %i.jo, %i.jn          ; 7 uses
  %i.jp = icmp sgt i64 %gepdiff235, 0
  br i1 %i.jp, label %.lr.ph.i.i.i.i.i.i183.preheader, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187

.lr.ph.i.i.i.i.i.i183.preheader:                  ; preds = %bb.ac
  %i.jq = load ptr, ptr %0, align 8, !tbaa !3332  ; 2 uses
  %i.jr = getelementptr i8, ptr %i.jq, i64 %i.jn  ; 5 uses
  %min.iters.check508 = icmp ult i64 %gepdiff235, 16
  br i1 %min.iters.check508, label %.lr.ph.i.i.i.i.i.i183.preheader563, label %vector.memcheck501

vector.memcheck501:                               ; preds = %.lr.ph.i.i.i.i.i.i183.preheader
  %i.js = sub nsw i64 %i.jo, %i.jc
  %i.jt = shl nsw i64 %i.js, 2
  %scevgep502 = getelementptr i8, ptr %.12, i64 %i.jt
  %scevgep503 = getelementptr i8, ptr %i.jq, i64 %i.jo
  %bound0504 = icmp ult ptr %.12, %scevgep503
  %bound1505 = icmp ult ptr %i.jr, %scevgep502
  %found.conflict506 = and i1 %bound0504, %bound1505
  br i1 %found.conflict506, label %.lr.ph.i.i.i.i.i.i183.preheader563, label %vector.ph509

vector.ph509:                                     ; preds = %vector.memcheck501
  %n.vec511 = and i64 %gepdiff235, 9223372036854775800 ; 4 uses
  %i.ju = and i64 %gepdiff235, 7
  %i.jv = shl i64 %n.vec511, 2
  %i.jw = getelementptr i8, ptr %.12, i64 %i.jv   ; 2 uses
  %i.jx = getelementptr i8, ptr %i.jr, i64 %n.vec511
  br label %vector.body512

vector.body512:                                   ; preds = %vector.body512, %vector.ph509
  %index513 = phi i64 [ 0, %vector.ph509 ], [ %index.next518, %vector.body512 ] ; 3 uses
  %i.jy = shl i64 %index513, 2
  %next.gep514 = getelementptr i8, ptr %.12, i64 %i.jy ; 2 uses
  %next.gep515 = getelementptr i8, ptr %i.jr, i64 %index513 ; 2 uses
  %i.jz = getelementptr i8, ptr %next.gep515, i64 4
  %wide.load516 = load <4 x i8>, ptr %next.gep515, align 1, !tbaa !18, !alias.scope !3396
  %wide.load517 = load <4 x i8>, ptr %i.jz, align 1, !tbaa !18, !alias.scope !3396
  %i.ka = sext <4 x i8> %wide.load516 to <4 x i32>
  %i.kb = sext <4 x i8> %wide.load517 to <4 x i32>
  %i.kc = getelementptr i8, ptr %next.gep514, i64 16
  store <4 x i32> %i.ka, ptr %next.gep514, align 4, !tbaa !126, !alias.scope !3399, !noalias !3396
  store <4 x i32> %i.kb, ptr %i.kc, align 4, !tbaa !126, !alias.scope !3399, !noalias !3396
  %index.next518 = add nuw i64 %index513, 8       ; 2 uses
  %i.kd = icmp eq i64 %index.next518, %n.vec511
  br i1 %i.kd, label %middle.block519, label %vector.body512, !llvm.loop !3401

middle.block519:                                  ; preds = %vector.body512
  %cmp.n520 = icmp eq i64 %gepdiff235, %n.vec511
  br i1 %cmp.n520, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, label %.lr.ph.i.i.i.i.i.i183.preheader563

.lr.ph.i.i.i.i.i.i183.preheader563:               ; preds = %vector.memcheck501, %.lr.ph.i.i.i.i.i.i183.preheader, %middle.block519
  %.012.i.i.i.i.i.i184.ph = phi i64 [ %gepdiff235, %vector.memcheck501 ], [ %gepdiff235, %.lr.ph.i.i.i.i.i.i183.preheader ], [ %i.ju, %middle.block519 ]
  %.0811.i.i.i.i.i.i185.ph = phi ptr [ %.12, %vector.memcheck501 ], [ %.12, %.lr.ph.i.i.i.i.i.i183.preheader ], [ %i.jw, %middle.block519 ]
  %.0910.i.i.i.i.i.i186.ph = phi ptr [ %i.jr, %vector.memcheck501 ], [ %i.jr, %.lr.ph.i.i.i.i.i.i183.preheader ], [ %i.jx, %middle.block519 ]
  br label %.lr.ph.i.i.i.i.i.i183

.lr.ph.i.i.i.i.i.i183:                            ; preds = %.lr.ph.i.i.i.i.i.i183.preheader563, %.lr.ph.i.i.i.i.i.i183
  %.012.i.i.i.i.i.i184 = phi i64 [ %i.ki, %.lr.ph.i.i.i.i.i.i183 ], [ %.012.i.i.i.i.i.i184.ph, %.lr.ph.i.i.i.i.i.i183.preheader563 ] ; 2 uses
  %.0811.i.i.i.i.i.i185 = phi ptr [ %i.kh, %.lr.ph.i.i.i.i.i.i183 ], [ %.0811.i.i.i.i.i.i185.ph, %.lr.ph.i.i.i.i.i.i183.preheader563 ] ; 2 uses
  %.0910.i.i.i.i.i.i186 = phi ptr [ %i.kg, %.lr.ph.i.i.i.i.i.i183 ], [ %.0910.i.i.i.i.i.i186.ph, %.lr.ph.i.i.i.i.i.i183.preheader563 ] ; 2 uses
  %i.ke = load i8, ptr %.0910.i.i.i.i.i.i186, align 1, !tbaa !18
  %i.kf = sext i8 %i.ke to i32
  store i32 %i.kf, ptr %.0811.i.i.i.i.i.i185, align 4, !tbaa !126
  %i.kg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i186, i64 1
  %i.kh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i185, i64 4 ; 2 uses
  %i.ki = add nsw i64 %.012.i.i.i.i.i.i184, -1
  %i.kj = icmp samesign ugt i64 %.012.i.i.i.i.i.i184, 1
  br i1 %i.kj, label %.lr.ph.i.i.i.i.i.i183, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, !llvm.loop !3402

.lr.ph.i.i.i.i.i.i189.preheader:                  ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit181
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !3336
  %i.km = getelementptr i8, ptr %.11, i64 4       ; 5 uses
  store i32 %i.kl, ptr %.11, align 4, !tbaa !126
  %i.kn = load ptr, ptr %0, align 8, !tbaa !3332  ; 2 uses
  %i.ko = zext nneg i32 %i.e to i64               ; 4 uses
  %i.kp = getelementptr i8, ptr %i.kn, i64 %i.ko  ; 5 uses
  %i.kq = sext i32 %i.b to i64                    ; 4 uses
  %gepdiff = sub nsw i64 %i.kq, %i.ko             ; 5 uses
  %2 = icmp ne i64 %gepdiff, 0
  %.neg = sext i1 %2 to i64
  %3 = sub nsw i64 %.neg, %i.ko
  %i.kr = add nsw i64 %3, %i.kq
  %4 = add nsw i64 %i.kr, 1                       ; 3 uses
  %min.iters.check473 = icmp ult i64 %4, 28
  br i1 %min.iters.check473, label %.lr.ph.i.i.i.i.i.i189.preheader567, label %vector.memcheck464

vector.memcheck464:                               ; preds = %.lr.ph.i.i.i.i.i.i189.preheader
  %i.ks = icmp ne i64 %gepdiff, 0
  %umin465 = zext i1 %i.ks to i64                 ; 2 uses
  %i.kt = add nuw nsw i64 %umin465, %i.ko
  %i.ku = sub nsw i64 %i.kq, %i.kt
  %i.kv = shl nsw i64 %i.ku, 2
  %i.kw = getelementptr i8, ptr %.11, i64 %i.kv
  %scevgep466.a = getelementptr i8, ptr %i.kw, i64 8
  %i.kx = add nsw i64 %i.kq, 1
  %i.ky = sub nsw i64 %i.kx, %umin465
  %scevgep467 = getelementptr i8, ptr %i.kn, i64 %i.ky
  %bound0468 = icmp ult ptr %i.km, %scevgep467
  %bound1469 = icmp ult ptr %i.kp, %scevgep466.a
  %found.conflict470 = and i1 %bound0468, %bound1469
  br i1 %found.conflict470, label %.lr.ph.i.i.i.i.i.i189.preheader567, label %vector.ph474

vector.ph474:                                     ; preds = %vector.memcheck464
  %n.vec476 = and i64 %4, -8                      ; 5 uses
  %i.kz = sub nsw i64 %gepdiff, %n.vec476
  %i.la = shl nsw i64 %n.vec476, 2
  %i.lb = getelementptr i8, ptr %i.km, i64 %i.la  ; 2 uses
  %i.lc = getelementptr i8, ptr %i.kp, i64 %n.vec476
  br label %vector.body477

vector.body477:                                   ; preds = %vector.body477, %vector.ph474
  %index478 = phi i64 [ 0, %vector.ph474 ], [ %index.next483, %vector.body477 ] ; 3 uses
  %i.ld = shl i64 %index478, 2
  %next.gep479 = getelementptr i8, ptr %i.km, i64 %i.ld ; 2 uses
  %next.gep480 = getelementptr i8, ptr %i.kp, i64 %index478 ; 2 uses
  %i.le = getelementptr i8, ptr %next.gep480, i64 4
  %wide.load481 = load <4 x i8>, ptr %next.gep480, align 1, !tbaa !18, !alias.scope !3403
  %wide.load482 = load <4 x i8>, ptr %i.le, align 1, !tbaa !18, !alias.scope !3403
  %i.lf = sext <4 x i8> %wide.load481 to <4 x i32>
  %i.lg = sext <4 x i8> %wide.load482 to <4 x i32>
  %i.lh = getelementptr i8, ptr %next.gep479, i64 16
  store <4 x i32> %i.lf, ptr %next.gep479, align 4, !tbaa !126, !alias.scope !3406, !noalias !3403
  store <4 x i32> %i.lg, ptr %i.lh, align 4, !tbaa !126, !alias.scope !3406, !noalias !3403
  %index.next483 = add nuw i64 %index478, 8       ; 2 uses
  %i.li = icmp eq i64 %index.next483, %n.vec476
  br i1 %i.li, label %middle.block484, label %vector.body477, !llvm.loop !3408

middle.block484:                                  ; preds = %vector.body477
  %cmp.n485 = icmp eq i64 %4, %n.vec476
  br i1 %cmp.n485, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit193, label %.lr.ph.i.i.i.i.i.i189.preheader567

.lr.ph.i.i.i.i.i.i189.preheader567:               ; preds = %vector.memcheck464, %.lr.ph.i.i.i.i.i.i189.preheader, %middle.block484
  %.012.i.i.i.i.i.i190.ph = phi i64 [ %gepdiff, %vector.memcheck464 ], [ %gepdiff, %.lr.ph.i.i.i.i.i.i189.preheader ], [ %i.kz, %middle.block484 ]
  %.0811.i.i.i.i.i.i191.ph = phi ptr [ %i.km, %vector.memcheck464 ], [ %i.km, %.lr.ph.i.i.i.i.i.i189.preheader ], [ %i.lb, %middle.block484 ]
  %.0910.i.i.i.i.i.i192.ph = phi ptr [ %i.kp, %vector.memcheck464 ], [ %i.kp, %.lr.ph.i.i.i.i.i.i189.preheader ], [ %i.lc, %middle.block484 ]
  br label %.lr.ph.i.i.i.i.i.i189

.lr.ph.i.i.i.i.i.i189:                            ; preds = %.lr.ph.i.i.i.i.i.i189.preheader567, %.lr.ph.i.i.i.i.i.i189
  %.012.i.i.i.i.i.i190 = phi i64 [ %i.ln, %.lr.ph.i.i.i.i.i.i189 ], [ %.012.i.i.i.i.i.i190.ph, %.lr.ph.i.i.i.i.i.i189.preheader567 ] ; 2 uses
  %.0811.i.i.i.i.i.i191 = phi ptr [ %i.lm, %.lr.ph.i.i.i.i.i.i189 ], [ %.0811.i.i.i.i.i.i191.ph, %.lr.ph.i.i.i.i.i.i189.preheader567 ] ; 2 uses
  %.0910.i.i.i.i.i.i192 = phi ptr [ %i.ll, %.lr.ph.i.i.i.i.i.i189 ], [ %.0910.i.i.i.i.i.i192.ph, %.lr.ph.i.i.i.i.i.i189.preheader567 ] ; 2 uses
  %i.lj = load i8, ptr %.0910.i.i.i.i.i.i192, align 1, !tbaa !18
  %i.lk = sext i8 %i.lj to i32
  store i32 %i.lk, ptr %.0811.i.i.i.i.i.i191, align 4, !tbaa !126
  %i.ll = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i192, i64 1
  %i.lm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i191, i64 4 ; 2 uses
  %i.ln = add nsw i64 %.012.i.i.i.i.i.i190, -1
  %i.lo = icmp samesign ugt i64 %.012.i.i.i.i.i.i190, 1
  br i1 %i.lo, label %.lr.ph.i.i.i.i.i.i189, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit193, !llvm.loop !3409

_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit193: ; preds = %.lr.ph.i.i.i.i.i.i189, %middle.block484
  %.lcssa320 = phi ptr [ %i.lb, %middle.block484 ], [ %i.lm, %.lr.ph.i.i.i.i.i.i189 ] ; 5 uses
  %i.lp = load i32, ptr %i.f, align 8, !tbaa !3354 ; 2 uses
  %i.lq = icmp sgt i32 %i.lp, %i.b
  br i1 %i.lq, label %bb.ad, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187

bb.ad:                                            ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit193
  %i.lr = sub nsw i32 %i.lp, %i.b
  %i.ls = zext nneg i32 %i.lr to i64
  %.idx.i.i194 = shl nuw nsw i64 %i.ls, 2         ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.lcssa320, i64 %.idx.i.i194 ; 3 uses
  %i.lu = add nsw i64 %.idx.i.i194, -4            ; 2 uses
  %i.lv = lshr exact i64 %i.lu, 2
  %i.lw = add nuw nsw i64 %i.lv, 1                ; 2 uses
  %min.iters.check490 = icmp ult i64 %i.lu, 28
  br i1 %min.iters.check490, label %.lr.ph.i.i.i.i195.preheader, label %vector.ph491

vector.ph491:                                     ; preds = %bb.ad
  %n.vec493 = and i64 %i.lw, 9223372036854775800  ; 3 uses
  %i.lx = shl i64 %n.vec493, 2
  %i.ly = getelementptr i8, ptr %.lcssa320, i64 %i.lx
  br label %vector.body494

vector.body494:                                   ; preds = %vector.body494, %vector.ph491
  %index495 = phi i64 [ 0, %vector.ph491 ], [ %index.next497, %vector.body494 ] ; 2 uses
  %i.lz = shl i64 %index495, 2
  %next.gep496 = getelementptr i8, ptr %.lcssa320, i64 %i.lz ; 2 uses
  %i.ma = getelementptr i8, ptr %next.gep496, i64 16
  store <4 x i32> splat (i32 48), ptr %next.gep496, align 4, !tbaa !126
  store <4 x i32> splat (i32 48), ptr %i.ma, align 4, !tbaa !126
  %index.next497 = add nuw i64 %index495, 8       ; 2 uses
  %i.mb = icmp eq i64 %index.next497, %n.vec493
  br i1 %i.mb, label %middle.block498, label %vector.body494, !llvm.loop !3410

middle.block498:                                  ; preds = %vector.body494
  %cmp.n499 = icmp eq i64 %i.lw, %n.vec493
  br i1 %cmp.n499, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, label %.lr.ph.i.i.i.i195.preheader

.lr.ph.i.i.i.i195.preheader:                      ; preds = %bb.ad, %middle.block498
  %.06.i.i.i.i196.ph = phi ptr [ %.lcssa320, %bb.ad ], [ %i.ly, %middle.block498 ]
  br label %.lr.ph.i.i.i.i195

.lr.ph.i.i.i.i195:                                ; preds = %.lr.ph.i.i.i.i195.preheader, %.lr.ph.i.i.i.i195
  %.06.i.i.i.i196 = phi ptr [ %i.mc, %.lr.ph.i.i.i.i195 ], [ %.06.i.i.i.i196.ph, %.lr.ph.i.i.i.i195.preheader ] ; 2 uses
  store i32 48, ptr %.06.i.i.i.i196, align 4, !tbaa !126
  %i.mc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i196, i64 4 ; 2 uses
  %.not.i.i.i.i197 = icmp eq ptr %i.mc, %i.lt
  br i1 %.not.i.i.i.i197, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, label %.lr.ph.i.i.i.i195, !llvm.loop !3411

bb.ae:                                            ; preds = %bb.w
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 48, ptr %1, align 4, !tbaa !126
  %i.me = sub nsw i32 0, %i.e                     ; 5 uses
  %i.mf = icmp eq i32 %i.b, 0
  br i1 %i.mf, label %.thread, label %bb.af

.thread:                                          ; preds = %bb.ae
  %i.mg = load i32, ptr %i.f, align 8, !tbaa !3354 ; 2 uses
  %i.mh = tail call i32 @llvm.smin.i32(i32 %i.mg, i32 %i.me)
  %i.mi = icmp slt i32 %i.mg, 0
  %spec.select133 = select i1 %i.mi, i32 %i.me, i32 %i.mh
  br label %.critedge7

bb.af:                                            ; preds = %bb.ae
  %i.mj = load i32, ptr %i.g, align 4
  %i.mk = and i32 %i.mj, 536870912
  %.not125 = icmp eq i32 %i.mk, 0
  %i.ml = icmp sgt i32 %i.b, 0
  %or.cond11 = select i1 %.not125, i1 %i.ml, i1 false
  br i1 %or.cond11, label %.preheader240, label %.critedge7.thread

.preheader240:                                    ; preds = %bb.af
  %i.mm = load ptr, ptr %0, align 8, !tbaa !3332
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader240, %bb.ah
  %.0 = phi i32 [ %i.ms, %bb.ah ], [ %i.b, %.preheader240 ] ; 4 uses
  %i.mn = zext nneg i32 %.0 to i64
  %i.mo = getelementptr i8, ptr %i.mm, i64 %i.mn
  %i.mp = getelementptr i8, ptr %i.mo, i64 -1
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !18
  %i.mr = icmp eq i8 %i.mq, 48
  br i1 %i.mr, label %bb.ah, label %.critedge7.thread

bb.ah:                                            ; preds = %bb.ag
  %i.ms = add nsw i32 %.0, -1
  %.old10 = icmp sgt i32 %.0, 1
  br i1 %.old10, label %bb.ag, label %.critedge7

.critedge7:                                       ; preds = %bb.ah, %.thread
  %.099228 = phi i32 [ %spec.select133, %.thread ], [ %i.me, %bb.ah ] ; 2 uses
  %.not234 = icmp eq i32 %.099228, 0
  br i1 %.not234, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, label %.critedge7.thread

.critedge7.thread:                                ; preds = %bb.ag, %bb.af, %.critedge7
  %.1233 = phi i32 [ 0, %.critedge7 ], [ %i.b, %bb.af ], [ %.0, %bb.ag ] ; 3 uses
  %.099228232 = phi i32 [ %.099228, %.critedge7 ], [ %i.me, %bb.af ], [ %i.me, %bb.ag ] ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.mu = load i32, ptr %i.mt, align 8, !tbaa !3336
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i32 %i.mu, ptr %i.md, align 4, !tbaa !126
  %i.mw = icmp slt i32 %.099228232, 1
  br i1 %i.mw, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit205, label %bb.ai

bb.ai:                                            ; preds = %.critedge7.thread
  %i.mx = zext nneg i32 %.099228232 to i64
  %.idx.i.i200 = shl nuw nsw i64 %i.mx, 2         ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 %.idx.i.i200 ; 3 uses
  %i.mz = add nsw i64 %.idx.i.i200, -4            ; 2 uses
  %i.na = lshr exact i64 %i.mz, 2
  %i.nb = add nuw nsw i64 %i.na, 1                ; 2 uses
  %min.iters.check407 = icmp ult i64 %i.mz, 28
  br i1 %min.iters.check407, label %.lr.ph.i.i.i.i201.preheader, label %vector.ph408

vector.ph408:                                     ; preds = %bb.ai
  %n.vec410 = and i64 %i.nb, 9223372036854775800  ; 3 uses
  %i.nc = shl i64 %n.vec410, 2
  %i.nd = getelementptr i8, ptr %i.mv, i64 %i.nc
  br label %vector.body411

vector.body411:                                   ; preds = %vector.body411, %vector.ph408
  %index412 = phi i64 [ 0, %vector.ph408 ], [ %index.next414, %vector.body411 ] ; 2 uses
  %i.ne = shl i64 %index412, 2
  %next.gep413 = getelementptr i8, ptr %i.mv, i64 %i.ne ; 2 uses
  %i.nf = getelementptr i8, ptr %next.gep413, i64 16
  store <4 x i32> splat (i32 48), ptr %next.gep413, align 4, !tbaa !126
  store <4 x i32> splat (i32 48), ptr %i.nf, align 4, !tbaa !126
  %index.next414 = add nuw i64 %index412, 8       ; 2 uses
  %i.ng = icmp eq i64 %index.next414, %n.vec410
  br i1 %i.ng, label %middle.block415, label %vector.body411, !llvm.loop !3412

middle.block415:                                  ; preds = %vector.body411
  %cmp.n416 = icmp eq i64 %i.nb, %n.vec410
end_hunk_0
