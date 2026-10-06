Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/bpacking_simd_avx512?download=true
inline.NumInlined: 11107
inline.NumDeleted: 458
loop-unroll.NumCompletelyUnrolled: 589
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 595
begin_hunk_0_@_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT0_iii:bb.a
  %i.cuu = shufflevector <2 x i32> %i.cur, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cuv = shufflevector <4 x i32> %i.cut, <4 x i32> %i.cuu, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cuw = shufflevector <2 x i32> %i.cum, <2 x i32> %i.cup, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cux = shufflevector <4 x i32> %i.cuw, <4 x i32> %i.cuu, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cuy = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cuv, <4 x i32> %i.cux, <4 x i32> <i32 2, i32 1, i32 10, i32 19>)
  %i.cuz = load i32, ptr %i.cuk, align 1
  %i.cva = load <2 x i32>, ptr %i.cuj, align 1
  %i.cvb = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cva, <2 x i32> %i.cul, <2 x i32> <i32 5, i32 14>)
  %i.cvc = insertelement <16 x i32> poison, i32 %i.cuo, i64 0
  %i.cvd = lshr i32 %i.cun, 7
  %i.cve = insertelement <16 x i32> %i.cvc, i32 %i.cvd, i64 1
  %i.cvf = shufflevector <4 x i32> %i.cuy, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.cvg = shufflevector <16 x i32> %i.cve, <16 x i32> %i.cvf, <16 x i32> <i32 0, i32 1, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cvh = shufflevector <2 x i32> %i.cue, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cvi = shufflevector <16 x i32> %i.cvg, <16 x i32> %i.cvh, <16 x i32> <i32 0, i32 1, i32 2, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cvj = lshr i32 %i.cuc, 3
  %i.cvk = insertelement <16 x i32> %i.cvi, i32 %i.cvj, i64 5
  %i.cvl = shufflevector <2 x i32> %i.cug, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cvm = shufflevector <16 x i32> %i.cvk, <16 x i32> %i.cvl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cvn = lshr i32 %i.cuq, 8
  %i.cvo = insertelement <16 x i32> %i.cvm, i32 %i.cvn, i64 8
  %i.cvp = shufflevector <16 x i32> %i.cvo, <16 x i32> %i.cvf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cvq = lshr i32 %i.cus, 4
  %i.cvr = insertelement <16 x i32> %i.cvp, i32 %i.cvq, i64 12
  %i.cvs = shufflevector <2 x i32> %i.cvb, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cvt = shufflevector <16 x i32> %i.cvr, <16 x i32> %i.cvs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 17, i32 poison>
  %i.cvu = lshr i32 %i.cuz, 9
  %.sroa.0153.60.vec.insert.i.i = insertelement <16 x i32> %i.cvt, i32 %i.cvu, i64 15
  %i.cvv = getelementptr inbounds nuw i8, ptr %.02630.i589, i64 64
  %i.cvw = bitcast <16 x i32> %.sroa.0153.60.vec.insert.i.i to <8 x i64>
  %i.cvx = and <8 x i64> %i.cvw, splat (i64 36028792732385279)
  store <8 x i64> %i.cvx, ptr %i.cvv, align 1, !tbaa !11
  %i.cvy = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 92 ; 2 uses
  %i.cvz = getelementptr inbounds nuw i8, ptr %.02630.i589, i64 128 ; 2 uses
  %i.cwa = add nuw nsw i32 %.032.i587, 1          ; 2 uses
  %exitcond.not.i591 = icmp eq i32 %i.cwa, %i.cqw
  br i1 %exitcond.not.i591, label %._crit_edge.i578, label %.lr.ph.i586, !llvm.loop !235

bb.aw:                                            ; preds = %bb.a
  %i.cwb = mul nsw i32 %2, 24
  %i.cwc = add nsw i32 %4, %i.cwb
  %i.cwd = icmp sgt i32 %2, 0
  br i1 %i.cwd, label %.lr.ph.i.i615, label %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i615:                                    ; preds = %bb.aw, %bb.ax
  %.026.i.i616 = phi ptr [ %i.cwt, %bb.ax ], [ %1, %bb.aw ] ; 2 uses
  %.02325.i.i617 = phi i32 [ %i.cwg, %bb.ax ], [ %4, %bb.aw ] ; 5 uses
  %i.cwe = srem i32 %.02325.i.i617, 8             ; 2 uses
  %i.cwf = sdiv i32 %.02325.i.i617, 8             ; 2 uses
  %.not.i.i618 = icmp eq i32 %i.cwe, 0
  br i1 %.not.i.i618, label %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i615
  %i.cwg = add nsw i32 %.02325.i.i617, 24         ; 3 uses
  %i.cwh = add nsw i32 %.02325.i.i617, 23
  %i.cwi = sdiv i32 %i.cwh, 8
  %i.cwj = sub nsw i32 %i.cwi, %i.cwf             ; 2 uses
  %i.cwk = add nsw i32 %i.cwj, 1
  %i.cwl = icmp slt i32 %i.cwj, 4
  tail call void @llvm.assume(i1 %i.cwl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8, !tbaa !13
  %i.cwm = sext i32 %i.cwf to i64
  %i.cwn = getelementptr inbounds i8, ptr %0, i64 %i.cwm
  %i.cwo = sext i32 %i.cwk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 1 %i.cwn, i64 %i.cwo, i1 false)
  %.0..0..0..0..0..0..0..0..i.i619 = load i64, ptr %i.p, align 8, !tbaa !13
  %i.cwp = zext nneg i32 %i.cwe to i64
  %i.cwq = lshr i64 %.0..0..0..0..0..0..0..0..i.i619, %i.cwp
  %i.cwr = trunc i64 %i.cwq to i32
  %i.cws = and i32 %i.cwr, 16777215
  store i32 %i.cws, ptr %.026.i.i616, align 4, !tbaa !6
  %i.cwt = getelementptr inbounds nuw i8, ptr %.026.i.i616, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.cwu = icmp slt i32 %i.cwg, %i.cwc
  br i1 %i.cwu, label %.lr.ph.i.i615, label %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !236

_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.ax, %.lr.ph.i.i615, %bb.aw
  %.023.lcssa.i.i597 = phi i32 [ %4, %bb.aw ], [ %i.cwg, %bb.ax ], [ %.02325.i.i617, %.lr.ph.i.i615 ]
  %i.cwv = sub nsw i32 %.023.lcssa.i.i597, %4
  %i.cww = sdiv i32 %i.cwv, 24                    ; 3 uses
  %i.cwx = mul nsw i32 %i.cww, 24
  %i.cwy = add nsw i32 %i.cwx, %4
  %i.cwz = sub nsw i32 %2, %i.cww                 ; 4 uses
  %i.cxa = sdiv i32 %i.cwy, 8
  %i.cxb = sext i32 %i.cxa to i64
  %i.cxc = getelementptr inbounds i8, ptr %0, i64 %i.cxb ; 2 uses
  %i.cxd = sext i32 %i.cww to i64
  %i.cxe = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cxd ; 2 uses
  %i.cxf = sdiv i32 %i.cwz, 32                    ; 2 uses
  %i.cxg = icmp sgt i32 %i.cwz, 31
  br i1 %i.cxg, label %.lr.ph.i608, label %._crit_edge.i598

._crit_edge.i598:                                 ; preds = %.lr.ph.i608, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i599 = phi ptr [ %i.cxe, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.dbm, %.lr.ph.i608 ] ; 6 uses
  %.025.lcssa.i600 = phi ptr [ %i.cxc, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.dbl, %.lr.ph.i608 ] ; 11 uses
  %i.cxh = shl nsw i32 %i.cxf, 5                  ; 2 uses
  %i.cxi = sub nsw i32 %i.cwz, %i.cxh             ; 2 uses
  %i.cxj = icmp samesign ult i32 %i.cxi, 32
  tail call void @llvm.assume(i1 %i.cxj)
  %.not.i601 = icmp eq i32 %i.cwz, %i.cxh
  br i1 %.not.i601, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.preheader.i602

.lr.ph.i28.preheader.i602:                        ; preds = %._crit_edge.i598
  %i.cxk = mul nuw nsw i32 %i.cxi, 24
  %i.cxl = zext nneg i32 %i.cxk to i64            ; 2 uses
  %i.cxm = add nsw i64 %i.cxl, -8                 ; 2 uses
  %i.cxn = udiv i64 %i.cxm, 24                    ; 3 uses
  %i.cxo = add nuw nsw i64 %i.cxn, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.cxm, 552
  br i1 %min.iters.check, label %.lr.ph.i28.i603.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader.i602
  %i.cxp = shl nuw nsw i64 %i.cxn, 2
  %i.cxq = getelementptr i8, ptr %.026.lcssa.i599, i64 %i.cxp
  %i.cxr = getelementptr i8, ptr %i.cxq, i64 4
  %i.cxs = mul nuw nsw i64 %i.cxn, 3
  %i.cxt = getelementptr i8, ptr %.025.lcssa.i600, i64 %i.cxs
  %i.cxu = getelementptr i8, ptr %i.cxt, i64 3
  %bound0 = icmp ult ptr %.026.lcssa.i599, %i.cxu
  %bound1 = icmp ult ptr %.025.lcssa.i600, %i.cxr
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.i603.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cxo, 2305843009213693944    ; 4 uses
  %i.cxv = mul i64 %n.vec, 24
  %i.cxw = shl nuw nsw i64 %n.vec, 2
  %i.cxx = getelementptr i8, ptr %.026.lcssa.i599, i64 %i.cxw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 24, i64 48, i64 72, i64 96, i64 120, i64 144, i64 168>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.cxy = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.026.lcssa.i599, i64 %i.cxy
  %i.cxz = lshr exact <8 x i64> %vec.ind, splat (i64 3) ; 8 uses
  %i.cya = extractelement <8 x i64> %i.cxz, i64 0
  %i.cyb = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.cya
  %i.cyc = extractelement <8 x i64> %i.cxz, i64 1
  %i.cyd = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.cyc
  %i.cye = extractelement <8 x i64> %i.cxz, i64 2
  %i.cyf = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.cye
  %i.cyg = extractelement <8 x i64> %i.cxz, i64 3
  %i.cyh = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.cyg
  %i.cyi = extractelement <8 x i64> %i.cxz, i64 4
  %i.cyj = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.cyi
  %i.cyk = extractelement <8 x i64> %i.cxz, i64 5
  %i.cyl = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.cyk
  %i.cym = extractelement <8 x i64> %i.cxz, i64 6
  %i.cyn = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.cym
  %i.cyo = extractelement <8 x i64> %i.cxz, i64 7
  %i.cyp = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.cyo
  %i.cyq = load i24, ptr %i.cyb, align 1, !alias.scope !275
  %i.cyr = load i24, ptr %i.cyd, align 1, !alias.scope !275
  %i.cys = load i24, ptr %i.cyf, align 1, !alias.scope !275
  %i.cyt = load i24, ptr %i.cyh, align 1, !alias.scope !275
  %i.cyu = load i24, ptr %i.cyj, align 1, !alias.scope !275
  %i.cyv = load i24, ptr %i.cyl, align 1, !alias.scope !275
  %i.cyw = load i24, ptr %i.cyn, align 1, !alias.scope !275
  %i.cyx = load i24, ptr %i.cyp, align 1, !alias.scope !275
  %i.cyy = insertelement <8 x i24> poison, i24 %i.cyq, i64 0
  %i.cyz = insertelement <8 x i24> %i.cyy, i24 %i.cyr, i64 1
  %i.cza = insertelement <8 x i24> %i.cyz, i24 %i.cys, i64 2
  %i.czb = insertelement <8 x i24> %i.cza, i24 %i.cyt, i64 3
  %i.czc = insertelement <8 x i24> %i.czb, i24 %i.cyu, i64 4
  %i.czd = insertelement <8 x i24> %i.czc, i24 %i.cyv, i64 5
  %i.cze = insertelement <8 x i24> %i.czd, i24 %i.cyw, i64 6
  %i.czf = insertelement <8 x i24> %i.cze, i24 %i.cyx, i64 7
  %i.czg = zext <8 x i24> %i.czf to <8 x i32>
  store <8 x i32> %i.czg, ptr %next.gep, align 4, !tbaa !6, !alias.scope !276, !noalias !275
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 192)
  %i.czh = icmp eq i64 %index.next, %n.vec
  br i1 %i.czh, label %middle.block, label %vector.body, !llvm.loop !240

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cxo, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i603.preheader

.lr.ph.i28.i603.preheader:                        ; preds = %vector.memcheck, %.lr.ph.i28.preheader.i602, %middle.block
  %indvars.iv.i604.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i28.preheader.i602 ], [ %i.cxv, %middle.block ]
  %.024.i.i605.ph = phi ptr [ %.026.lcssa.i599, %vector.memcheck ], [ %.026.lcssa.i599, %.lr.ph.i28.preheader.i602 ], [ %i.cxx, %middle.block ]
  br label %.lr.ph.i28.i603

.lr.ph.i28.i603:                                  ; preds = %.lr.ph.i28.i603.preheader, %.lr.ph.i28.i603
  %indvars.iv.i604 = phi i64 [ %indvars.iv.next.i606, %.lr.ph.i28.i603 ], [ %indvars.iv.i604.ph, %.lr.ph.i28.i603.preheader ] ; 2 uses
  %.024.i.i605 = phi ptr [ %i.czl, %.lr.ph.i28.i603 ], [ %.024.i.i605.ph, %.lr.ph.i28.i603.preheader ] ; 2 uses
  %i.czi = lshr exact i64 %indvars.iv.i604, 3
  %indvars.iv.next.i606 = add nuw nsw i64 %indvars.iv.i604, 24 ; 2 uses
  %i.czj = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.czi
  %.0.copyload = load i24, ptr %i.czj, align 1
  %i.czk = zext i24 %.0.copyload to i32
  store i32 %i.czk, ptr %.024.i.i605, align 4, !tbaa !6
  %i.czl = getelementptr inbounds nuw i8, ptr %.024.i.i605, i64 4
  %i.czm = icmp samesign ult i64 %indvars.iv.next.i606, %i.cxl
  br i1 %i.czm, label %.lr.ph.i28.i603, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !241

.lr.ph.i608:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i608
  %.032.i609 = phi i32 [ %i.dbn, %.lr.ph.i608 ], [ 0, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i610 = phi ptr [ %i.dbl, %.lr.ph.i608 ], [ %i.cxc, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ] ; 25 uses
  %.02630.i611 = phi ptr [ %i.dbm, %.lr.ph.i608 ], [ %i.cxe, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.czn = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 4
  %i.czo = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 8
  %i.czp = load <2 x i32>, ptr %.02531.i610, align 1 ; 2 uses
  %5 = load i32, ptr %i.czo, align 1
  %i.czq = load <2 x i32>, ptr %i.czn, align 1
  %i.czr = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.czq, <2 x i32> %i.czp, <2 x i32> <i32 8, i32 16>)
  %6 = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 12
  %i.czs = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 16
  %i.czt = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 20
  %i.czu = load <2 x i32>, ptr %6, align 1        ; 2 uses
  %7 = load i32, ptr %i.czt, align 1
  %i.czv = load <2 x i32>, ptr %i.czs, align 1
  %i.czw = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.czv, <2 x i32> %i.czu, <2 x i32> <i32 8, i32 16>)
  %8 = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 24
  %i.czx = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 28
  %i.czy = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 32
  %i.czz = load <2 x i32>, ptr %8, align 1        ; 2 uses
  %9 = load i32, ptr %i.czy, align 1
  %i.daa = load <2 x i32>, ptr %i.czx, align 1
  %i.dab = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.daa, <2 x i32> %i.czz, <2 x i32> <i32 8, i32 16>)
  %10 = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 36
  %i.dac = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 40
  %i.dad = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 44
  %i.dae = load <2 x i32>, ptr %10, align 1       ; 2 uses
  %11 = load i32, ptr %i.dad, align 1
  %i.daf = load <2 x i32>, ptr %i.dac, align 1
  %i.dag = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.daf, <2 x i32> %i.dae, <2 x i32> <i32 8, i32 16>)
  %i.dah = shufflevector <2 x i32> %i.czp, <2 x i32> %i.czr, <16 x i32> <i32 0, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %12 = lshr i32 %5, 8
  %13 = insertelement <16 x i32> %i.dah, i32 %12, i64 3
  %i.dai = shufflevector <2 x i32> %i.czu, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %14 = shufflevector <16 x i32> %13, <16 x i32> %i.dai, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = shufflevector <2 x i32> %i.czw, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %16 = shufflevector <16 x i32> %14, <16 x i32> %15, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %17 = lshr i32 %7, 8
  %18 = insertelement <16 x i32> %16, i32 %17, i64 7
  %19 = shufflevector <2 x i32> %i.czz, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %20 = shufflevector <16 x i32> %18, <16 x i32> %19, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <2 x i32> %i.dab, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %22 = shufflevector <16 x i32> %20, <16 x i32> %21, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %23 = lshr i32 %9, 8
  %24 = insertelement <16 x i32> %22, i32 %23, i64 11
  %25 = shufflevector <2 x i32> %i.dae, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %26 = shufflevector <16 x i32> %24, <16 x i32> %25, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 poison, i32 poison, i32 poison>
  %27 = shufflevector <2 x i32> %i.dag, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %28 = shufflevector <16 x i32> %26, <16 x i32> %27, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 17, i32 poison>
  %29 = lshr i32 %11, 8
  %.sroa.0127.60.vec.insert.i.i612 = insertelement <16 x i32> %28, i32 %29, i64 15
  %i.daj = bitcast <16 x i32> %.sroa.0127.60.vec.insert.i.i612 to <8 x i64>
  %i.dak = and <8 x i64> %i.daj, splat (i64 72057589759737855)
  store <8 x i64> %i.dak, ptr %.02630.i611, align 1, !tbaa !11
  %i.dal = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 48
  %i.dam = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 52
  %i.dan = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 56
  %i.dao = load <2 x i32>, ptr %i.dal, align 1    ; 2 uses
  %30 = load i32, ptr %i.dan, align 1
  %i.dap = load <2 x i32>, ptr %i.dam, align 1
  %i.daq = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dap, <2 x i32> %i.dao, <2 x i32> <i32 8, i32 16>)
  %31 = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 60
  %i.dar = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 64
  %i.das = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 68
  %i.dat = load <2 x i32>, ptr %31, align 1       ; 2 uses
  %32 = load i32, ptr %i.das, align 1
  %i.dau = load <2 x i32>, ptr %i.dar, align 1
  %i.dav = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dau, <2 x i32> %i.dat, <2 x i32> <i32 8, i32 16>)
  %33 = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 72
  %i.daw = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 76
  %i.dax = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 80
  %i.day = load <2 x i32>, ptr %33, align 1       ; 2 uses
  %34 = load i32, ptr %i.dax, align 1
  %i.daz = load <2 x i32>, ptr %i.daw, align 1
  %i.dba = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.daz, <2 x i32> %i.day, <2 x i32> <i32 8, i32 16>)
  %35 = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 84
  %i.dbb = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 88
  %i.dbc = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 92
  %i.dbd = load <2 x i32>, ptr %35, align 1       ; 2 uses
  %36 = load i32, ptr %i.dbc, align 1
  %i.dbe = load <2 x i32>, ptr %i.dbb, align 1
  %i.dbf = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dbe, <2 x i32> %i.dbd, <2 x i32> <i32 8, i32 16>)
  %i.dbg = shufflevector <2 x i32> %i.dao, <2 x i32> %i.daq, <16 x i32> <i32 0, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %37 = lshr i32 %30, 8
  %38 = insertelement <16 x i32> %i.dbg, i32 %37, i64 3
  %i.dbh = shufflevector <2 x i32> %i.dat, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %39 = shufflevector <16 x i32> %38, <16 x i32> %i.dbh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %40 = shufflevector <2 x i32> %i.dav, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %41 = shufflevector <16 x i32> %39, <16 x i32> %40, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %42 = lshr i32 %32, 8
  %43 = insertelement <16 x i32> %41, i32 %42, i64 7
  %44 = shufflevector <2 x i32> %i.day, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %45 = shufflevector <16 x i32> %43, <16 x i32> %44, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %46 = shufflevector <2 x i32> %i.dba, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %47 = shufflevector <16 x i32> %45, <16 x i32> %46, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %48 = lshr i32 %34, 8
  %49 = insertelement <16 x i32> %47, i32 %48, i64 11
  %50 = shufflevector <2 x i32> %i.dbd, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %51 = shufflevector <16 x i32> %49, <16 x i32> %50, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 poison, i32 poison, i32 poison>
  %52 = shufflevector <2 x i32> %i.dbf, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %53 = shufflevector <16 x i32> %51, <16 x i32> %52, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 17, i32 poison>
  %54 = lshr i32 %36, 8
  %.sroa.0147.60.vec.insert.i.i613 = insertelement <16 x i32> %53, i32 %54, i64 15
  %i.dbi = getelementptr inbounds nuw i8, ptr %.02630.i611, i64 64
  %i.dbj = bitcast <16 x i32> %.sroa.0147.60.vec.insert.i.i613 to <8 x i64>
  %i.dbk = and <8 x i64> %i.dbj, splat (i64 72057589759737855)
  store <8 x i64> %i.dbk, ptr %i.dbi, align 1, !tbaa !11
  %i.dbl = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 96 ; 2 uses
  %i.dbm = getelementptr inbounds nuw i8, ptr %.02630.i611, i64 128 ; 2 uses
  %i.dbn = add nuw nsw i32 %.032.i609, 1          ; 2 uses
  %exitcond.not.i614 = icmp eq i32 %i.dbn, %i.cxf
  br i1 %exitcond.not.i614, label %._crit_edge.i598, label %.lr.ph.i608, !llvm.loop !242

bb.ay:                                            ; preds = %bb.a
  %i.dbo = mul nsw i32 %2, 25
  %i.dbp = add nsw i32 %4, %i.dbo
  %i.dbq = icmp sgt i32 %2, 0
  br i1 %i.dbq, label %.lr.ph.i.i635, label %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i635:                                    ; preds = %bb.ay, %bb.az
  %.026.i.i636 = phi ptr [ %i.dcg, %bb.az ], [ %1, %bb.ay ] ; 2 uses
  %.02325.i.i637 = phi i32 [ %i.dbt, %bb.az ], [ %4, %bb.ay ] ; 5 uses
  %i.dbr = srem i32 %.02325.i.i637, 8             ; 2 uses
  %i.dbs = sdiv i32 %.02325.i.i637, 8             ; 2 uses
  %.not.i.i638 = icmp eq i32 %i.dbr, 0
  br i1 %.not.i.i638, label %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i635
  %i.dbt = add nsw i32 %.02325.i.i637, 25         ; 3 uses
  %i.dbu = add nsw i32 %.02325.i.i637, 24
  %i.dbv = sdiv i32 %i.dbu, 8
  %i.dbw = sub nsw i32 %i.dbv, %i.dbs             ; 2 uses
  %i.dbx = add nsw i32 %i.dbw, 1
  %i.dby = icmp slt i32 %i.dbw, 4
  tail call void @llvm.assume(i1 %i.dby)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 0, ptr %i.o, align 8, !tbaa !13
  %i.dbz = sext i32 %i.dbs to i64
  %i.dca = getelementptr inbounds i8, ptr %0, i64 %i.dbz
  %i.dcb = sext i32 %i.dbx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr readonly align 1 %i.dca, i64 %i.dcb, i1 false)
  %.0..0..0..0..0..0..0..0..i.i639 = load i64, ptr %i.o, align 8, !tbaa !13
  %i.dcc = zext nneg i32 %i.dbr to i64
  %i.dcd = lshr i64 %.0..0..0..0..0..0..0..0..i.i639, %i.dcc
  %i.dce = trunc i64 %i.dcd to i32
  %i.dcf = and i32 %i.dce, 33554431
  store i32 %i.dcf, ptr %.026.i.i636, align 4, !tbaa !6
  %i.dcg = getelementptr inbounds nuw i8, ptr %.026.i.i636, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.dch = icmp slt i32 %i.dbt, %i.dbp
  br i1 %i.dch, label %.lr.ph.i.i635, label %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !243

_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.az, %.lr.ph.i.i635, %bb.ay
  %.023.lcssa.i.i620 = phi i32 [ %4, %bb.ay ], [ %i.dbt, %bb.az ], [ %.02325.i.i637, %.lr.ph.i.i635 ]
  %i.dci = sub nsw i32 %.023.lcssa.i.i620, %4
  %i.dcj = sdiv i32 %i.dci, 25                    ; 3 uses
  %i.dck = mul nsw i32 %i.dcj, 25
  %i.dcl = add nsw i32 %i.dck, %4
  %i.dcm = sub nsw i32 %2, %i.dcj                 ; 4 uses
  %i.dcn = sdiv i32 %i.dcl, 8
  %i.dco = sext i32 %i.dcn to i64
  %i.dcp = getelementptr inbounds i8, ptr %0, i64 %i.dco ; 2 uses
  %i.dcq = sext i32 %i.dcj to i64
  %i.dcr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dcq ; 2 uses
  %i.dcs = sdiv i32 %i.dcm, 32                    ; 2 uses
  %i.dct = icmp sgt i32 %i.dcm, 31
  br i1 %i.dct, label %.lr.ph.i629, label %._crit_edge.i621

._crit_edge.i621:                                 ; preds = %.lr.ph.i629, %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i622 = phi ptr [ %i.dcr, %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.dhg, %.lr.ph.i629 ]
  %.025.lcssa.i623 = phi ptr [ %i.dcp, %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.dhf, %.lr.ph.i629 ]
  %i.dcu = shl nsw i32 %i.dcs, 5                  ; 2 uses
  %i.dcv = sub nsw i32 %i.dcm, %i.dcu             ; 2 uses
  %i.dcw = icmp samesign ult i32 %i.dcv, 32
  tail call void @llvm.assume(i1 %i.dcw)
  %i.dcx = mul nuw nsw i32 %i.dcv, 25
  %.not.i624 = icmp eq i32 %i.dcm, %i.dcu
  br i1 %.not.i624, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i625

.lr.ph.i28.i625:                                  ; preds = %._crit_edge.i621, %.lr.ph.i28.i625
  %.024.i.i626 = phi ptr [ %i.ddn, %.lr.ph.i28.i625 ], [ %.026.lcssa.i622, %._crit_edge.i621 ] ; 2 uses
  %.02223.i.i627 = phi i32 [ %i.dcz, %.lr.ph.i28.i625 ], [ 0, %._crit_edge.i621 ] ; 4 uses
  %i.dcy = lshr i32 %.02223.i.i627, 3             ; 2 uses
  %i.dcz = add nuw nsw i32 %.02223.i.i627, 25     ; 2 uses
  %i.dda = add nuw nsw i32 %.02223.i.i627, 24
  %i.ddb = lshr i32 %i.dda, 3
  %i.ddc = sub nsw i32 %i.ddb, %i.dcy             ; 2 uses
  %i.ddd = add nsw i32 %i.ddc, 1
  %i.dde = icmp slt i32 %i.ddc, 4
  tail call void @llvm.assume(i1 %i.dde)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8, !tbaa !13
  %i.ddf = zext nneg i32 %i.dcy to i64
  %i.ddg = getelementptr inbounds nuw i8, ptr %.025.lcssa.i623, i64 %i.ddf
  %i.ddh = sext i32 %i.ddd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 1 %i.ddg, i64 %i.ddh, i1 false)
  %.0..0..0..0..0..0..0..0..i29.i628 = load i64, ptr %i.n, align 8, !tbaa !13
  %i.ddi = and i32 %.02223.i.i627, 7
  %i.ddj = zext nneg i32 %i.ddi to i64
  %i.ddk = lshr i64 %.0..0..0..0..0..0..0..0..i29.i628, %i.ddj
  %i.ddl = trunc i64 %i.ddk to i32
  %i.ddm = and i32 %i.ddl, 33554431
  store i32 %i.ddm, ptr %.024.i.i626, align 4, !tbaa !6
  %i.ddn = getelementptr inbounds nuw i8, ptr %.024.i.i626, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ddo = icmp samesign ult i32 %i.dcz, %i.dcx
  br i1 %i.ddo, label %.lr.ph.i28.i625, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !244

.lr.ph.i629:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i629
  %.032.i630 = phi i32 [ %i.dhh, %.lr.ph.i629 ], [ 0, %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i631 = phi ptr [ %i.dhf, %.lr.ph.i629 ], [ %i.dcp, %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i ] ; 22 uses
  %.02630.i632 = phi ptr [ %i.dhg, %.lr.ph.i629 ], [ %i.dcr, %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.ddp = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 4
  %i.ddq = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 8
  %i.ddr = load <2 x i32>, ptr %.02531.i631, align 1 ; 2 uses
  %i.dds = load i32, ptr %i.ddq, align 1
  %i.ddt = load <2 x i32>, ptr %i.ddp, align 1
  %i.ddu = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.ddt, <2 x i32> %i.ddr, <2 x i32> <i32 7, i32 14>)
  %i.ddv = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 12 ; 2 uses
  %i.ddw = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 16
  %i.ddx = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 28
  %i.ddy = load i32, ptr %i.ddv, align 1          ; 2 uses
  %i.ddz = load <4 x i32>, ptr %i.ddv, align 1
  %i.dea = tail call i32 @llvm.fshl.i32(i32 %i.ddy, i32 %i.dds, i32 21)
  %i.deb = load i32, ptr %i.ddx, align 1          ; 2 uses
  %i.dec = load <4 x i32>, ptr %i.ddw, align 1
  %i.ded = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dec, <4 x i32> %i.ddz, <4 x i32> <i32 3, i32 10, i32 17, i32 24>)
  %i.dee = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 32 ; 2 uses
  %i.def = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 36
  %i.deg = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 40 ; 2 uses
  %i.deh = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 44
  %i.dei = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 48
  %i.dej = load <2 x i32>, ptr %i.deg, align 1
  %i.dek = load i32, ptr %i.dee, align 1
  %i.del = load <2 x i32>, ptr %i.dee, align 1
  %i.dem = tail call i32 @llvm.fshl.i32(i32 %i.dek, i32 %i.deb, i32 6)
  %i.den = load i32, ptr %i.deg, align 1
  %i.deo = load <2 x i32>, ptr %i.def, align 1
  %i.dep = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.deo, <2 x i32> %i.del, <2 x i32> <i32 13, i32 20>)
  %i.deq = load <2 x i32>, ptr %i.deh, align 1
  %i.der = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.deq, <2 x i32> %i.dej, <2 x i32> <i32 2, i32 9>)
  %i.des = shufflevector <2 x i32> %i.ddr, <2 x i32> %i.ddu, <16 x i32> <i32 0, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.det = insertelement <16 x i32> %i.des, i32 %i.dea, i64 3
  %i.deu = lshr i32 %i.ddy, 4
  %i.dev = insertelement <16 x i32> %i.det, i32 %i.deu, i64 4
  %i.dew = shufflevector <4 x i32> %i.ded, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dex = shufflevector <16 x i32> %i.dev, <16 x i32> %i.dew, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dey = lshr i32 %i.deb, 1
  %i.dez = insertelement <16 x i32> %i.dex, i32 %i.dey, i64 9
  %i.dfa = insertelement <16 x i32> %i.dez, i32 %i.dem, i64 10
  %i.dfb = shufflevector <2 x i32> %i.dep, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dfc = shufflevector <16 x i32> %i.dfa, <16 x i32> %i.dfb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 poison, i32 poison, i32 poison>
  %i.dfd = lshr i32 %i.den, 5
  %i.dfe = insertelement <16 x i32> %i.dfc, i32 %i.dfd, i64 13
  %i.dff = shufflevector <2 x i32> %i.der, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.0135.60.vec.insert.i.i6331447 = shufflevector <16 x i32> %i.dfe, <16 x i32> %i.dff, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  %i.dfg = bitcast <16 x i32> %.sroa.0135.60.vec.insert.i.i6331447 to <8 x i64>
  %i.dfh = and <8 x i64> %i.dfg, splat (i64 144115183814443007)
  store <8 x i64> %i.dfh, ptr %.02630.i632, align 1, !tbaa !11
  %i.dfi = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 52
  %i.dfj = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 56
  %i.dfk = load <2 x i32>, ptr %i.dei, align 1
  %i.dfl = load i32, ptr %i.dfj, align 1          ; 2 uses
  %i.dfm = load <2 x i32>, ptr %i.dfi, align 1
  %i.dfn = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dfm, <2 x i32> %i.dfk, <2 x i32> <i32 16, i32 23>)
  %i.dfo = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 60 ; 2 uses
  %i.dfp = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 64
  %i.dfq = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 68 ; 2 uses
  %i.dfr = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 72
  %i.dfs = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 84
  %i.dft = load <4 x i32>, ptr %i.dfq, align 1
  %i.dfu = load i32, ptr %i.dfo, align 1
  %i.dfv = load <2 x i32>, ptr %i.dfo, align 1
  %i.dfw = tail call i32 @llvm.fshl.i32(i32 %i.dfu, i32 %i.dfl, i32 5)
  %i.dfx = load i32, ptr %i.dfq, align 1
  %i.dfy = load <2 x i32>, ptr %i.dfp, align 1
  %i.dfz = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dfy, <2 x i32> %i.dfv, <2 x i32> <i32 12, i32 19>)
  %i.dga = load i32, ptr %i.dfs, align 1          ; 2 uses
  %i.dgb = load <4 x i32>, ptr %i.dfr, align 1
  %i.dgc = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dgb, <4 x i32> %i.dft, <4 x i32> <i32 1, i32 8, i32 15, i32 22>)
  %i.dgd = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 88 ; 2 uses
  %i.dge = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 92
  %i.dgf = getelementptr inbounds nuw i8, ptr %.02531.i631, i64 96
  %i.dgg = load i32, ptr %i.dgd, align 1
  %i.dgh = load <2 x i32>, ptr %i.dgd, align 1
  %i.dgi = tail call i32 @llvm.fshl.i32(i32 %i.dgg, i32 %i.dga, i32 4)
  %i.dgj = load i32, ptr %i.dgf, align 1
  %i.dgk = load <2 x i32>, ptr %i.dge, align 1
  %i.dgl = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dgk, <2 x i32> %i.dgh, <2 x i32> <i32 11, i32 18>)
  %i.dgm = shufflevector <2 x i32> %i.dfn, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dgn = lshr i32 %i.dfl, 2
  %i.dgo = insertelement <16 x i32> %i.dgm, i32 %i.dgn, i64 2
  %i.dgp = insertelement <16 x i32> %i.dgo, i32 %i.dfw, i64 3
  %i.dgq = shufflevector <2 x i32> %i.dfz, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dgr = shufflevector <16 x i32> %i.dgp, <16 x i32> %i.dgq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dgs = lshr i32 %i.dfx, 6
  %i.dgt = insertelement <16 x i32> %i.dgr, i32 %i.dgs, i64 6
  %i.dgu = shufflevector <4 x i32> %i.dgc, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dgv = shufflevector <16 x i32> %i.dgt, <16 x i32> %i.dgu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dgw = lshr i32 %i.dga, 3
  %i.dgx = insertelement <16 x i32> %i.dgv, i32 %i.dgw, i64 11
  %i.dgy = insertelement <16 x i32> %i.dgx, i32 %i.dgi, i64 12
  %i.dgz = shufflevector <2 x i32> %i.dgl, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dha = shufflevector <16 x i32> %i.dgy, <16 x i32> %i.dgz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 17, i32 poison>
  %i.dhb = lshr i32 %i.dgj, 7
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12unpack_widthILi63ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii:bb.a
  %i.bu = load <2 x i64>, ptr %i.bo, align 1
  %i.bv = load i64, ptr %i.bt, align 1
  %i.bw = load <2 x i64>, ptr %i.bs, align 1
  %i.bx = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.bw, <2 x i64> %i.bu, <2 x i64> <i64 5, i64 6>)
  %i.by = getelementptr inbounds nuw i8, ptr %.02535, i64 56 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 1
  %i.ca = tail call i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.bv, i64 7)
  %i.cb = shufflevector <4 x i64> %i.bp, <4 x i64> %i.br, <8 x i32> <i32 0, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison>
  %i.cc = shufflevector <2 x i64> %i.bx, <2 x i64> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cd = shufflevector <8 x i64> %i.cb, <8 x i64> %i.cc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 poison>
  %.sroa.0415.56.vec.insert.i = insertelement <8 x i64> %i.cd, i64 %i.ca, i64 7
  %i.ce = and <8 x i64> %.sroa.0415.56.vec.insert.i, splat (i64 9223372036854775807)
  store <8 x i64> %i.ce, ptr %.02634, align 1, !tbaa !11
  %i.cf = getelementptr inbounds nuw i8, ptr %.02535, i64 64
  %i.cg = getelementptr inbounds nuw i8, ptr %.02535, i64 120
  %i.ch = load <8 x i64>, ptr %i.by, align 1
  %i.ci = load <8 x i64>, ptr %i.cf, align 1
  %i.cj = tail call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.ci, <8 x i64> %i.ch, <8 x i64> <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>)
  %i.ck = getelementptr inbounds nuw i8, ptr %.02634, i64 64
  %i.cl = and <8 x i64> %i.cj, splat (i64 9223372036854775807)
  store <8 x i64> %i.cl, ptr %i.ck, align 1, !tbaa !11
  %i.cm = getelementptr inbounds nuw i8, ptr %.02535, i64 128
  %i.cn = getelementptr inbounds nuw i8, ptr %.02535, i64 184
  %i.co = load <8 x i64>, ptr %i.cg, align 1
  %i.cp = load <8 x i64>, ptr %i.cm, align 1
  %i.cq = tail call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.cp, <8 x i64> %i.co, <8 x i64> <i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23>)
  %i.cr = getelementptr inbounds nuw i8, ptr %.02634, i64 128
  %i.cs = and <8 x i64> %i.cq, splat (i64 9223372036854775807)
  store <8 x i64> %i.cs, ptr %i.cr, align 1, !tbaa !11
  %i.ct = getelementptr inbounds nuw i8, ptr %.02535, i64 192
  %i.cu = getelementptr inbounds nuw i8, ptr %.02535, i64 248
  %i.cv = load <8 x i64>, ptr %i.cn, align 1
  %i.cw = load <8 x i64>, ptr %i.ct, align 1
  %i.cx = tail call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.cw, <8 x i64> %i.cv, <8 x i64> <i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>)
  %i.cy = getelementptr inbounds nuw i8, ptr %.02634, i64 192
  %i.cz = and <8 x i64> %i.cx, splat (i64 9223372036854775807)
  store <8 x i64> %i.cz, ptr %i.cy, align 1, !tbaa !11
  %i.da = getelementptr inbounds nuw i8, ptr %.02535, i64 256
  %i.db = getelementptr inbounds nuw i8, ptr %.02535, i64 312
  %i.dc = load <8 x i64>, ptr %i.cu, align 1
  %i.dd = load <8 x i64>, ptr %i.da, align 1
  %i.de = tail call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.dd, <8 x i64> %i.dc, <8 x i64> <i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39>)
  %i.df = getelementptr inbounds nuw i8, ptr %.02634, i64 256
  %i.dg = and <8 x i64> %i.de, splat (i64 9223372036854775807)
  store <8 x i64> %i.dg, ptr %i.df, align 1, !tbaa !11
  %i.dh = getelementptr inbounds nuw i8, ptr %.02535, i64 320
  %i.di = getelementptr inbounds nuw i8, ptr %.02535, i64 376
  %i.dj = load <8 x i64>, ptr %i.db, align 1
  %i.dk = load <8 x i64>, ptr %i.dh, align 1
  %i.dl = tail call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.dk, <8 x i64> %i.dj, <8 x i64> <i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47>)
  %i.dm = getelementptr inbounds nuw i8, ptr %.02634, i64 320
  %i.dn = and <8 x i64> %i.dl, splat (i64 9223372036854775807)
  store <8 x i64> %i.dn, ptr %i.dm, align 1, !tbaa !11
  %i.do = getelementptr inbounds nuw i8, ptr %.02535, i64 384
  %i.dp = getelementptr inbounds nuw i8, ptr %.02535, i64 440
  %i.dq = load <8 x i64>, ptr %i.di, align 1
  %i.dr = load <8 x i64>, ptr %i.do, align 1
  %i.ds = tail call <8 x i64> @llvm.fshl.v8i64(<8 x i64> %i.dr, <8 x i64> %i.dq, <8 x i64> <i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55>)
  %i.dt = getelementptr inbounds nuw i8, ptr %.02634, i64 384
  %i.du = and <8 x i64> %i.ds, splat (i64 9223372036854775807)
  store <8 x i64> %i.du, ptr %i.dt, align 1, !tbaa !11
  %i.dv = getelementptr inbounds nuw i8, ptr %.02535, i64 448
  %i.dw = getelementptr inbounds nuw i8, ptr %.02535, i64 472
  %i.dx = load <4 x i64>, ptr %i.dp, align 1
  %i.dy = load <4 x i64>, ptr %i.dv, align 1
  %i.dz = tail call <4 x i64> @llvm.fshl.v4i64(<4 x i64> %i.dy, <4 x i64> %i.dx, <4 x i64> <i64 56, i64 57, i64 58, i64 59>)
  %i.ea = getelementptr inbounds nuw i8, ptr %.02535, i64 480
  %i.eb = getelementptr inbounds nuw i8, ptr %.02535, i64 488
  %i.ec = load <2 x i64>, ptr %i.dw, align 1
  %i.ed = load i64, ptr %i.eb, align 1
  %i.ee = load <2 x i64>, ptr %i.ea, align 1
  %i.ef = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.ee, <2 x i64> %i.ec, <2 x i64> <i64 60, i64 61>)
  %i.eg = getelementptr inbounds nuw i8, ptr %.02535, i64 496
  %i.eh = load i64, ptr %i.eg, align 1            ; 2 uses
  %i.ei = tail call i64 @llvm.fshl.i64(i64 %i.eh, i64 %i.ed, i64 62)
  %i.ej = shufflevector <4 x i64> %i.dz, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ek = shufflevector <2 x i64> %i.ef, <2 x i64> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.el = shufflevector <8 x i64> %i.ej, <8 x i64> %i.ek, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.em = insertelement <8 x i64> %i.el, i64 %i.ei, i64 6
  %i.en = lshr i64 %i.eh, 1
  %.sroa.0492.56.vec.insert.i = insertelement <8 x i64> %i.em, i64 %i.en, i64 7
  %i.eo = getelementptr inbounds nuw i8, ptr %.02634, i64 448
  %i.ep = and <8 x i64> %.sroa.0492.56.vec.insert.i, splat (i64 9223372036854775807)
  store <8 x i64> %i.ep, ptr %i.eo, align 1, !tbaa !11
  %i.eq = getelementptr inbounds nuw i8, ptr %.02535, i64 504 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.02634, i64 512 ; 2 uses
  %i.es = add nuw nsw i32 %.036, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.es, %i.al
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !492
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_ZN5arrow8internal12unpack_widthILi64ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEmEEvPKhPT1_ii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = shl nsw i32 %2, 6
  %i.c = add nsw i32 %i.b, %3
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi64ELb1EmEEiPKhPT1_ii.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.02838.i = phi i32 [ %i.g, %bb.d ], [ %3, %bb.a ] ; 5 uses
  %.02937.i = phi ptr [ %i.y, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %i.e = srem i32 %.02838.i, 8                    ; 3 uses
  %i.f = sdiv i32 %.02838.i, 8                    ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN5arrow8internal12unpack_exactILi64ELb1EmEEiPKhPT1_ii.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = add nsw i32 %.02838.i, 64                ; 3 uses
  %i.h = add nsw i32 %.02838.i, 63
  %i.i = sdiv i32 %i.h, 8
  %i.j = sub nsw i32 %i.i, %i.f                   ; 3 uses
  %i.k = icmp slt i32 %i.j, 9
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !13
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l ; 2 uses
  %i.n = tail call i32 @llvm.smin.i32(i32 %i.j, i32 7)
  %.sroa.speculated.i = add nsw i32 %i.n, 1
  %i.o = sext i32 %.sroa.speculated.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %i.m, i64 %i.o, i1 false)
  %.0..0..0..0..0..0..i = load i64, ptr %i.a, align 8, !tbaa !13
  %i.p = zext nneg i32 %i.e to i64
  %i.q = lshr i64 %.0..0..0..0..0..0..i, %i.p     ; 3 uses
  store i64 %i.q, ptr %i.a, align 8, !tbaa !13
  %i.r = icmp sgt i32 %i.j, 7
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.t = load i8, ptr %i.s, align 1
  store i8 %i.t, ptr %i.a, align 8
  %.0..0..0..0..0..0.6.i = load i64, ptr %i.a, align 8, !tbaa !13
  %i.u = sub nsw i32 64, %i.e
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl i64 %.0..0..0..0..0..0.6.i, %i.v
  %i.x = or i64 %i.w, %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i64 [ %i.x, %bb.c ], [ %i.q, %bb.b ]
  store i64 %.0.i, ptr %.02937.i, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %.02937.i, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = icmp slt i32 %i.g, %i.c
  br i1 %i.z, label %.lr.ph.i, label %_ZN5arrow8internal12unpack_exactILi64ELb1EmEEiPKhPT1_ii.exit, !llvm.loop !493

_ZN5arrow8internal12unpack_exactILi64ELb1EmEEiPKhPT1_ii.exit: ; preds = %.lr.ph.i, %bb.d, %bb.a
  %.028.lcssa.i = phi i32 [ %3, %bb.a ], [ %.02838.i, %.lr.ph.i ], [ %i.g, %bb.d ]
  %i.aa = sub nsw i32 %.028.lcssa.i, %3
  %i.ab = sdiv i32 %i.aa, 64                      ; 3 uses
  %i.ac = shl nsw i32 %i.ab, 6
  %i.ad = add nsw i32 %i.ac, %3
  %i.ae = sub nsw i32 %2, %i.ab
  %i.af = sdiv i32 %i.ad, 8
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %i.ag
  %i.ai = sext i32 %i.ab to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ai
  %i.ak = sext i32 %i.ae to i64
  %i.al = shl nsw i64 %i.ak, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aj, ptr align 1 %i.ah, i64 %i.al, i1 false)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.fshl.v2i32(<2 x i32>, <2 x i32>, <2 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fshl.v4i32(<4 x i32>, <4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x i32> @llvm.fshl.v3i32(<3 x i32>, <3 x i32>, <3 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x i32> @llvm.masked.load.v5i32.p0(ptr captures(none), <5 x i1>, <5 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.fshl.v8i32(<8 x i32>, <8 x i32>, <8 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.fshl.v2i64(<2 x i64>, <2 x i64>, <2 x i64>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.fshl.v4i64(<4 x i64>, <4 x i64>, <4 x i64>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <3 x i64> @llvm.masked.load.v3i64.p0(ptr captures(none), <3 x i1>, <3 x i64>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.fshl.v8i64(<8 x i64>, <8 x i64>, <8 x i64>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = !{!"branch_weights", i32 8, i32 24}
!11 = !{!4, !4, i64 0}
!12 = !{!"long", !4, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"branch_weights", i32 4, i32 12}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, i1 false, !"LVerDomain"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !7, !8, !9}
!20 = distinct !{!20, !7, !8, !9}
!21 = distinct !{!21, !7, !8}
!22 = distinct !{!22, !7}
!23 = !{!"bool", !4, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!17}
!26 = !{!18}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, i1 false, !"LVerDomain"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !7, !8, !9}
!32 = distinct !{!32, !7, !8, !9}
!33 = distinct !{!33, !7, !8}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, i1 false, !"LVerDomain"}
!37 = distinct !{!37, !36}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !7, !8, !9}
!40 = distinct !{!40, !7, !8, !9}
!41 = distinct !{!41, !7, !8}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, i1 false, !"LVerDomain"}
!48 = distinct !{!48, !47}
!49 = distinct !{!49, !47}
!50 = distinct !{!50, !7, !8, !9}
!51 = distinct !{!51, !7, !8}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7}
!55 = distinct !{!55, !7}
!56 = distinct !{!56, !7}
!57 = distinct !{!57, !7}
!58 = distinct !{!58, !7}
!59 = distinct !{!59, !7}
!60 = distinct !{!60, !7}
!61 = distinct !{!61, !7}
!62 = distinct !{!62, !7}
!63 = !{!29}
!64 = !{!30}
!65 = !{!37}
!66 = !{!38}
!67 = !{!48}
!68 = !{!49}
!69 = distinct !{!69, !7}
!70 = distinct !{!70, i1 false, !"LVerDomain"}
!71 = distinct !{!71, !70}
!72 = distinct !{!72, !70}
!73 = distinct !{!73, !7, !8, !9}
!74 = distinct !{!74, !7, !8, !9}
!75 = distinct !{!75, !7, !8}
!76 = distinct !{!76, !7}
!77 = distinct !{!77, !7}
!78 = distinct !{!78, i1 false, !"LVerDomain"}
!79 = distinct !{!79, !78}
!80 = distinct !{!80, !78}
!81 = distinct !{!81, !7, !8, !9}
!82 = distinct !{!82, !7, !8, !9}
!83 = distinct !{!83, !7, !8}
!84 = distinct !{!84, !7}
!85 = distinct !{!85, !7}
!86 = distinct !{!86, !7}
!87 = distinct !{!87, !7}
!88 = distinct !{!88, !7}
!89 = distinct !{!89, i1 false, !"LVerDomain"}
!90 = distinct !{!90, !89}
!91 = distinct !{!91, !89}
!92 = distinct !{!92, !7, !8, !9}
!93 = distinct !{!93, !7, !8, !9}
!94 = distinct !{!94, !7, !8}
!95 = distinct !{!95, !7}
!96 = distinct !{!96, !7}
!97 = distinct !{!97, !7}
!98 = distinct !{!98, !7}
!99 = distinct !{!99, !7}
!100 = distinct !{!100, !7}
!101 = distinct !{!101, !7}
!102 = distinct !{!102, !7}
!103 = distinct !{!103, !7}
!104 = distinct !{!104, !7}
!105 = distinct !{!105, !7}
!106 = distinct !{!106, i1 false, !"LVerDomain"}
!107 = distinct !{!107, !106}
!108 = distinct !{!108, !106}
!109 = distinct !{!109, !7, !8, !9}
!110 = distinct !{!110, !7, !8}
!111 = distinct !{!111, !7}
!112 = distinct !{!112, !7}
!113 = distinct !{!113, !7}
!114 = distinct !{!114, !7}
!115 = distinct !{!115, !7}
!116 = distinct !{!116, !7}
!117 = distinct !{!117, !7}
!118 = distinct !{!118, !7}
!119 = distinct !{!119, !7}
!120 = distinct !{!120, !7}
!121 = distinct !{!121, !7}
!122 = distinct !{!122, !7}
!123 = distinct !{!123, !7}
!124 = distinct !{!124, !7}
!125 = distinct !{!125, !7}
!126 = distinct !{!126, !7}
!127 = distinct !{!127, !7}
!128 = distinct !{!128, !7}
!129 = distinct !{!129, !7}
!130 = distinct !{!130, !7}
!131 = distinct !{!131, !7}
!132 = distinct !{!132, !7}
!133 = distinct !{!133, !7}
!134 = !{!"short", !4, i64 0}
!135 = !{!134, !134, i64 0}
!136 = !{!71}
!137 = !{!72}
!138 = !{!79}
!139 = !{!80}
!140 = !{!90}
!141 = !{!91}
!142 = !{!"branch_weights", i32 8, i32 8}
!143 = !{!107}
!144 = !{!108}
!145 = distinct !{!145, !7}
!146 = distinct !{!146, i1 false, !"LVerDomain"}
!147 = distinct !{!147, !146}
!148 = distinct !{!148, !146}
!149 = distinct !{!149, !7, !8, !9}
!150 = distinct !{!150, !7, !8, !9}
!151 = distinct !{!151, !7, !8}
!152 = distinct !{!152, !7}
!153 = distinct !{!153, !7}
!154 = distinct !{!154, i1 false, !"LVerDomain"}
!155 = distinct !{!155, !154}
!156 = distinct !{!156, !154}
!157 = distinct !{!157, !7, !8, !9}
!158 = distinct !{!158, !7, !8, !9}
!159 = distinct !{!159, !7, !8}
!160 = distinct !{!160, !7}
!161 = distinct !{!161, !7}
!162 = distinct !{!162, !7}
!163 = distinct !{!163, !7}
!164 = distinct !{!164, !7}
!165 = distinct !{!165, i1 false, !"LVerDomain"}
!166 = distinct !{!166, !165}
!167 = distinct !{!167, !165}
!168 = distinct !{!168, !7, !8, !9}
!169 = distinct !{!169, !7, !8}
!170 = distinct !{!170, !7}
!171 = distinct !{!171, !7}
!172 = distinct !{!172, !7}
!173 = distinct !{!173, !7}
end_hunk_1
