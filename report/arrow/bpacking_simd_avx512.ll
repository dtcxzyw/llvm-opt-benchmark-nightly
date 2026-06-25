inline.NumInlined: 10913
inline.NumDeleted: 449
begin_hunk_0_@_ZN5arrow8internalL11unpack_jumpINS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT0_iii:bb.a
  %i.ctb = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 32 ; 2 uses
  %i.ctc = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 36
  %i.ctd = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 40
  %i.cte = load i32, ptr %i.ctb, align 1
  %i.ctf = load <2 x i32>, ptr %i.ctb, align 1
  %i.ctg = tail call i32 @llvm.fshl.i32(i32 %i.cte, i32 %i.csy, i32 3)
  %i.cth = load i32, ptr %i.ctd, align 1          ; 2 uses
  %i.cti = load <2 x i32>, ptr %i.ctc, align 1
  %i.ctj = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cti, <2 x i32> %i.ctf, <2 x i32> <i32 12, i32 21>)
  %i.ctk = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 44 ; 2 uses
  %i.ctl = load i32, ptr %i.ctk, align 1
  %i.ctm = tail call i32 @llvm.fshl.i32(i32 %i.ctl, i32 %i.cth, i32 7)
  %i.ctn = shufflevector <2 x i32> %i.csi, <2 x i32> %i.csl, <16 x i32> <i32 0, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cto = lshr i32 %i.csj, 5
  %i.ctp = insertelement <16 x i32> %i.ctn, i32 %i.cto, i64 3
  %i.ctq = insertelement <16 x i32> %i.ctp, i32 %i.csu, i64 4
  %i.ctr = shufflevector <2 x i32> %i.csx, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cts = shufflevector <16 x i32> %i.ctq, <16 x i32> %i.ctr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ctt = lshr i32 %i.csv, 1
  %i.ctu = insertelement <16 x i32> %i.cts, i32 %i.ctt, i64 7
  %i.ctv = shufflevector <2 x i32> %i.cta, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ctw = shufflevector <16 x i32> %i.ctu, <16 x i32> %i.ctv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ctx = lshr i32 %i.csy, 6
  %i.cty = insertelement <16 x i32> %i.ctw, i32 %i.ctx, i64 10
  %i.ctz = insertelement <16 x i32> %i.cty, i32 %i.ctg, i64 11
  %i.cua = shufflevector <2 x i32> %i.ctj, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cub = shufflevector <16 x i32> %i.ctz, <16 x i32> %i.cua, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 poison, i32 poison>
  %i.cuc = lshr i32 %i.cth, 2
  %i.cud = insertelement <16 x i32> %i.cub, i32 %i.cuc, i64 14
  %.sroa.0131.60.vec.insert.i.i590 = insertelement <16 x i32> %i.cud, i32 %i.ctm, i64 15
  %i.cue = bitcast <16 x i32> %.sroa.0131.60.vec.insert.i.i590 to <8 x i64>
  %i.cuf = and <8 x i64> %i.cue, splat (i64 36028792732385279)
  store <8 x i64> %i.cuf, ptr %.02630.i589, align 1, !tbaa !15
  %i.cug = load i32, ptr %i.ctk, align 1
  %i.cuh = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 48
  %i.cui = load i32, ptr %i.cuh, align 1          ; 3 uses
  %i.cuj = tail call i32 @llvm.fshl.i32(i32 %i.cui, i32 %i.cug, i32 16)
  %i.cuk = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 52 ; 2 uses
  %i.cul = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 56
  %i.cum = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 60 ; 2 uses
  %i.cun = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 64
  %i.cuo = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 68
  %i.cup = load <2 x i32>, ptr %i.cum, align 1
  %i.cuq = load i32, ptr %i.cuk, align 1
  %i.cur = load <2 x i32>, ptr %i.cuk, align 1
  %i.cus = tail call i32 @llvm.fshl.i32(i32 %i.cuq, i32 %i.cui, i32 2)
  %i.cut = load i32, ptr %i.cum, align 1
  %i.cuu = load <2 x i32>, ptr %i.cul, align 1
  %i.cuv = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cuu, <2 x i32> %i.cur, <2 x i32> <i32 11, i32 20>)
  %i.cuw = load i32, ptr %i.cuo, align 1          ; 2 uses
  %i.cux = load <2 x i32>, ptr %i.cun, align 1
  %i.cuy = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cux, <2 x i32> %i.cup, <2 x i32> <i32 6, i32 15>)
  %i.cuz = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 72
  %i.cva = load i32, ptr %i.cuz, align 1          ; 2 uses
  %i.cvb = tail call i32 @llvm.fshl.i32(i32 %i.cva, i32 %i.cuw, i32 1)
  %i.cvc = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 76
  %i.cvd = load i32, ptr %i.cvc, align 1          ; 2 uses
  %i.cve = tail call i32 @llvm.fshl.i32(i32 %i.cvd, i32 %i.cva, i32 10)
  %i.cvf = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 80 ; 2 uses
  %i.cvg = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 84
  %i.cvh = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 88
  %i.cvi = load i32, ptr %i.cvf, align 1          ; 2 uses
  %i.cvj = load <2 x i32>, ptr %i.cvf, align 1
  %i.cvk = tail call i32 @llvm.fshl.i32(i32 %i.cvi, i32 %i.cvd, i32 19)
  %i.cvl = load i32, ptr %i.cvh, align 1
  %i.cvm = load <2 x i32>, ptr %i.cvg, align 1
  %i.cvn = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.cvm, <2 x i32> %i.cvj, <2 x i32> <i32 5, i32 14>)
  %i.cvo = insertelement <16 x i32> poison, i32 %i.cuj, i64 0
  %i.cvp = lshr i32 %i.cui, 7
  %i.cvq = insertelement <16 x i32> %i.cvo, i32 %i.cvp, i64 1
  %i.cvr = insertelement <16 x i32> %i.cvq, i32 %i.cus, i64 2
  %i.cvs = shufflevector <2 x i32> %i.cuv, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cvt = shufflevector <16 x i32> %i.cvr, <16 x i32> %i.cvs, <16 x i32> <i32 0, i32 1, i32 2, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cvu = lshr i32 %i.cut, 3
  %i.cvv = insertelement <16 x i32> %i.cvt, i32 %i.cvu, i64 5
  %i.cvw = shufflevector <2 x i32> %i.cuy, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cvx = shufflevector <16 x i32> %i.cvv, <16 x i32> %i.cvw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cvy = lshr i32 %i.cuw, 8
  %i.cvz = insertelement <16 x i32> %i.cvx, i32 %i.cvy, i64 8
  %i.cwa = insertelement <16 x i32> %i.cvz, i32 %i.cvb, i64 9
  %i.cwb = insertelement <16 x i32> %i.cwa, i32 %i.cve, i64 10
  %i.cwc = insertelement <16 x i32> %i.cwb, i32 %i.cvk, i64 11
  %i.cwd = lshr i32 %i.cvi, 4
  %i.cwe = insertelement <16 x i32> %i.cwc, i32 %i.cwd, i64 12
  %i.cwf = shufflevector <2 x i32> %i.cvn, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cwg = shufflevector <16 x i32> %i.cwe, <16 x i32> %i.cwf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 17, i32 poison>
  %i.cwh = lshr i32 %i.cvl, 9
  %.sroa.0151.60.vec.insert.i.i = insertelement <16 x i32> %i.cwg, i32 %i.cwh, i64 15
  %i.cwi = getelementptr inbounds nuw i8, ptr %.02630.i589, i64 64
  %i.cwj = bitcast <16 x i32> %.sroa.0151.60.vec.insert.i.i to <8 x i64>
  %i.cwk = and <8 x i64> %i.cwj, splat (i64 36028792732385279)
  store <8 x i64> %i.cwk, ptr %i.cwi, align 1, !tbaa !15
  %i.cwl = getelementptr inbounds nuw i8, ptr %.02531.i588, i64 92 ; 2 uses
  %i.cwm = getelementptr inbounds nuw i8, ptr %.02630.i589, i64 128 ; 2 uses
  %i.cwn = add nuw nsw i32 %.032.i587, 1          ; 2 uses
  %exitcond.not.i591 = icmp eq i32 %i.cwn, %i.crj
  br i1 %exitcond.not.i591, label %._crit_edge.i578, label %.lr.ph.i586, !llvm.loop !180

bb.aw:                                            ; preds = %bb.a
  %i.cwo = mul nsw i32 %2, 24
  %i.cwp = add nsw i32 %4, %i.cwo
  %i.cwq = icmp sgt i32 %2, 0
  br i1 %i.cwq, label %.lr.ph.i.i615, label %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i615:                                    ; preds = %bb.aw, %bb.ax
  %.026.i.i616 = phi ptr [ %i.cxg, %bb.ax ], [ %1, %bb.aw ] ; 2 uses
  %.02325.i.i617 = phi i32 [ %i.cwt, %bb.ax ], [ %4, %bb.aw ] ; 5 uses
  %i.cwr = srem i32 %.02325.i.i617, 8             ; 2 uses
  %i.cws = sdiv i32 %.02325.i.i617, 8             ; 2 uses
  %.not.i.i618 = icmp eq i32 %i.cwr, 0
  br i1 %.not.i.i618, label %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i615
  %i.cwt = add nsw i32 %.02325.i.i617, 24         ; 3 uses
  %i.cwu = add nsw i32 %.02325.i.i617, 23
  %i.cwv = sdiv i32 %i.cwu, 8
  %i.cww = sub nsw i32 %i.cwv, %i.cws             ; 2 uses
  %i.cwx = add nsw i32 %i.cww, 1
  %i.cwy = icmp slt i32 %i.cww, 4
  tail call void @llvm.assume(i1 %i.cwy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8, !tbaa !19
  %i.cwz = sext i32 %i.cws to i64
  %i.cxa = getelementptr inbounds i8, ptr %0, i64 %i.cwz
  %i.cxb = sext i32 %i.cwx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 1 %i.cxa, i64 %i.cxb, i1 false)
  %.0..0..0..0..0..0..0..0..i.i619 = load i64, ptr %i.p, align 8, !tbaa !19
  %i.cxc = zext nneg i32 %i.cwr to i64
  %i.cxd = lshr i64 %.0..0..0..0..0..0..0..0..i.i619, %i.cxc
  %i.cxe = trunc i64 %i.cxd to i32
  %i.cxf = and i32 %i.cxe, 16777215
  store i32 %i.cxf, ptr %.026.i.i616, align 4, !tbaa !3
  %i.cxg = getelementptr inbounds nuw i8, ptr %.026.i.i616, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.cxh = icmp slt i32 %i.cwt, %i.cwp
  br i1 %i.cxh, label %.lr.ph.i.i615, label %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !181

_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.ax, %.lr.ph.i.i615, %bb.aw
  %.023.lcssa.i.i597 = phi i32 [ %4, %bb.aw ], [ %i.cwt, %bb.ax ], [ %.02325.i.i617, %.lr.ph.i.i615 ]
  %i.cxi = sub nsw i32 %.023.lcssa.i.i597, %4
  %i.cxj = sdiv i32 %i.cxi, 24                    ; 3 uses
  %i.cxk = mul nsw i32 %i.cxj, 24
  %i.cxl = add nsw i32 %i.cxk, %4
  %i.cxm = sub nsw i32 %2, %i.cxj                 ; 4 uses
  %i.cxn = sdiv i32 %i.cxl, 8
  %i.cxo = sext i32 %i.cxn to i64
  %i.cxp = getelementptr inbounds i8, ptr %0, i64 %i.cxo ; 2 uses
  %i.cxq = sext i32 %i.cxj to i64
  %i.cxr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cxq ; 2 uses
  %i.cxs = sdiv i32 %i.cxm, 32                    ; 2 uses
  %i.cxt = icmp sgt i32 %i.cxm, 31
  br i1 %i.cxt, label %.lr.ph.i608, label %._crit_edge.i598

._crit_edge.i598:                                 ; preds = %.lr.ph.i608, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i
  %.026.lcssa.i599 = phi ptr [ %i.cxr, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.ddp, %.lr.ph.i608 ] ; 6 uses
  %.025.lcssa.i600 = phi ptr [ %i.cxp, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ], [ %i.ddo, %.lr.ph.i608 ] ; 11 uses
  %i.cxu = shl nsw i32 %i.cxs, 5                  ; 2 uses
  %i.cxv = sub nsw i32 %i.cxm, %i.cxu             ; 2 uses
  %i.cxw = icmp samesign ult i32 %i.cxv, 32
  tail call void @llvm.assume(i1 %i.cxw)
  %.not.i601 = icmp eq i32 %i.cxm, %i.cxu
  br i1 %.not.i601, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.preheader.i602

.lr.ph.i28.preheader.i602:                        ; preds = %._crit_edge.i598
  %i.cxx = mul nuw nsw i32 %i.cxv, 24
  %i.cxy = zext nneg i32 %i.cxx to i64            ; 3 uses
  %i.cxz = add nsw i64 %i.cxy, -8                 ; 2 uses
  %i.cya = udiv i64 %i.cxz, 24
  %i.cyb = add nuw nsw i64 %i.cya, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.cxz, 552
  br i1 %min.iters.check, label %.lr.ph.i28.i603.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.preheader.i602
  %i.cyc = add nsw i64 %i.cxy, -8
  %i.cyd = udiv i64 %i.cyc, 24                    ; 2 uses
  %i.cye = shl nuw nsw i64 %i.cyd, 2
  %i.cyf = getelementptr i8, ptr %.026.lcssa.i599, i64 %i.cye
  %scevgep = getelementptr i8, ptr %i.cyf, i64 4
  %i.cyg = mul nuw nsw i64 %i.cyd, 3
  %i.cyh = getelementptr i8, ptr %.025.lcssa.i600, i64 %i.cyg
  %scevgep1227 = getelementptr i8, ptr %i.cyh, i64 3
  %bound0 = icmp ult ptr %.026.lcssa.i599, %scevgep1227
  %bound1 = icmp ult ptr %.025.lcssa.i600, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.i603.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cyb, 2305843009213693944    ; 4 uses
  %i.cyi = mul i64 %n.vec, 24
  %i.cyj = shl nuw nsw i64 %n.vec, 2
  %i.cyk = getelementptr i8, ptr %.026.lcssa.i599, i64 %i.cyj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 24, i64 48, i64 72, i64 96, i64 120, i64 144, i64 168>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.cyl = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.026.lcssa.i599, i64 %i.cyl
  %i.cym = lshr exact <8 x i64> %vec.ind, splat (i64 3) ; 8 uses
  %i.cyn = extractelement <8 x i64> %i.cym, i64 0
  %5 = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.cyn
  %i.cyo = extractelement <8 x i64> %i.cym, i64 1
  %6 = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.cyo
  %i.cyp = extractelement <8 x i64> %i.cym, i64 2
  %7 = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.cyp
  %i.cyq = extractelement <8 x i64> %i.cym, i64 3
  %8 = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.cyq
  %9 = extractelement <8 x i64> %i.cym, i64 4
  %i.cyr = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %9
  %10 = extractelement <8 x i64> %i.cym, i64 5
  %i.cys = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %10
  %11 = extractelement <8 x i64> %i.cym, i64 6
  %i.cyt = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %11
  %12 = extractelement <8 x i64> %i.cym, i64 7
  %i.cyu = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %12
  %i.cyv = load i24, ptr %5, align 1, !alias.scope !182
  %i.cyw = load i24, ptr %6, align 1, !alias.scope !182
  %i.cyx = load i24, ptr %7, align 1, !alias.scope !182
  %i.cyy = load i24, ptr %8, align 1, !alias.scope !182
  %i.cyz = load i24, ptr %i.cyr, align 1, !alias.scope !182
  %i.cza = load i24, ptr %i.cys, align 1, !alias.scope !182
  %i.czb = load i24, ptr %i.cyt, align 1, !alias.scope !182
  %i.czc = load i24, ptr %i.cyu, align 1, !alias.scope !182
  %i.czd = insertelement <8 x i24> poison, i24 %i.cyv, i64 0
  %i.cze = insertelement <8 x i24> %i.czd, i24 %i.cyw, i64 1
  %i.czf = insertelement <8 x i24> %i.cze, i24 %i.cyx, i64 2
  %i.czg = insertelement <8 x i24> %i.czf, i24 %i.cyy, i64 3
  %i.czh = insertelement <8 x i24> %i.czg, i24 %i.cyz, i64 4
  %i.czi = insertelement <8 x i24> %i.czh, i24 %i.cza, i64 5
  %i.czj = insertelement <8 x i24> %i.czi, i24 %i.czb, i64 6
  %i.czk = insertelement <8 x i24> %i.czj, i24 %i.czc, i64 7
  %i.czl = zext <8 x i24> %i.czk to <8 x i32>
  store <8 x i32> %i.czl, ptr %next.gep, align 4, !tbaa !3, !alias.scope !185, !noalias !182
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 192)
  %i.czm = icmp eq i64 %index.next, %n.vec
  br i1 %i.czm, label %middle.block, label %vector.body, !llvm.loop !187

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cyb, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, label %.lr.ph.i28.i603.preheader

.lr.ph.i28.i603.preheader:                        ; preds = %vector.memcheck, %.lr.ph.i28.preheader.i602, %middle.block
  %indvars.iv.i604.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i28.preheader.i602 ], [ %i.cyi, %middle.block ]
  %.024.i.i605.ph = phi ptr [ %.026.lcssa.i599, %vector.memcheck ], [ %.026.lcssa.i599, %.lr.ph.i28.preheader.i602 ], [ %i.cyk, %middle.block ]
  br label %.lr.ph.i28.i603

.lr.ph.i28.i603:                                  ; preds = %.lr.ph.i28.i603.preheader, %.lr.ph.i28.i603
  %indvars.iv.i604 = phi i64 [ %indvars.iv.next.i606, %.lr.ph.i28.i603 ], [ %indvars.iv.i604.ph, %.lr.ph.i28.i603.preheader ] ; 2 uses
  %.024.i.i605 = phi ptr [ %i.czq, %.lr.ph.i28.i603 ], [ %.024.i.i605.ph, %.lr.ph.i28.i603.preheader ] ; 2 uses
  %i.czn = lshr exact i64 %indvars.iv.i604, 3
  %indvars.iv.next.i606 = add nuw nsw i64 %indvars.iv.i604, 24 ; 2 uses
  %i.czo = getelementptr inbounds nuw i8, ptr %.025.lcssa.i600, i64 %i.czn
  %.0.copyload = load i24, ptr %i.czo, align 1
  %i.czp = zext i24 %.0.copyload to i32
  store i32 %i.czp, ptr %.024.i.i605, align 4, !tbaa !3
  %i.czq = getelementptr inbounds nuw i8, ptr %.024.i.i605, i64 4
  %i.czr = icmp samesign ult i64 %indvars.iv.next.i606, %i.cxy
  br i1 %i.czr, label %.lr.ph.i28.i603, label %_ZN5arrow8internal12unpack_widthILi1ENS0_12_GLOBAL__N_123Simd512UnpackerForWidthEjEEvPKhPT1_ii.exit, !llvm.loop !188

.lr.ph.i608:                                      ; preds = %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i, %.lr.ph.i608
  %.032.i609 = phi i32 [ %i.ddq, %.lr.ph.i608 ], [ 0, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ]
  %.02531.i610 = phi ptr [ %i.ddo, %.lr.ph.i608 ], [ %i.cxp, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ] ; 25 uses
  %.02630.i611 = phi ptr [ %i.ddp, %.lr.ph.i608 ], [ %i.cxr, %_ZN5arrow8internal12unpack_exactILi24ELb1EjEEiPKhPT1_ii.exit.i ] ; 3 uses
  %i.czs = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 4
  %i.czt = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 8
  %i.czu = load <2 x i32>, ptr %.02531.i610, align 1 ; 2 uses
  %i.czv = load i32, ptr %i.czt, align 1
  %i.czw = load <2 x i32>, ptr %i.czs, align 1
  %i.czx = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.czw, <2 x i32> %i.czu, <2 x i32> <i32 8, i32 16>)
  %i.czy = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 12
  %i.czz = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 16
  %i.daa = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 20
  %i.dab = load <2 x i32>, ptr %i.czy, align 1    ; 2 uses
  %i.dac = load i32, ptr %i.daa, align 1
  %i.dad = load <2 x i32>, ptr %i.czz, align 1
  %i.dae = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dad, <2 x i32> %i.dab, <2 x i32> <i32 8, i32 16>)
  %i.daf = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 24
  %i.dag = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 28
  %i.dah = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 32
  %i.dai = load <2 x i32>, ptr %i.daf, align 1    ; 2 uses
  %i.daj = load i32, ptr %i.dah, align 1
  %i.dak = load <2 x i32>, ptr %i.dag, align 1
  %i.dal = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dak, <2 x i32> %i.dai, <2 x i32> <i32 8, i32 16>)
  %i.dam = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 36
  %i.dan = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 40
  %i.dao = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 44
  %i.dap = load <2 x i32>, ptr %i.dam, align 1    ; 2 uses
  %i.daq = load i32, ptr %i.dao, align 1
  %i.dar = load <2 x i32>, ptr %i.dan, align 1
  %i.das = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dar, <2 x i32> %i.dap, <2 x i32> <i32 8, i32 16>)
  %i.dat = shufflevector <2 x i32> %i.czu, <2 x i32> %i.czx, <16 x i32> <i32 0, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dau = lshr i32 %i.czv, 8
  %i.dav = insertelement <16 x i32> %i.dat, i32 %i.dau, i64 3
  %i.daw = shufflevector <2 x i32> %i.dab, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dax = shufflevector <16 x i32> %i.dav, <16 x i32> %i.daw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.day = shufflevector <2 x i32> %i.dae, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.daz = shufflevector <16 x i32> %i.dax, <16 x i32> %i.day, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dba = lshr i32 %i.dac, 8
  %i.dbb = insertelement <16 x i32> %i.daz, i32 %i.dba, i64 7
  %i.dbc = shufflevector <2 x i32> %i.dai, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dbd = shufflevector <16 x i32> %i.dbb, <16 x i32> %i.dbc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dbe = shufflevector <2 x i32> %i.dal, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dbf = shufflevector <16 x i32> %i.dbd, <16 x i32> %i.dbe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dbg = lshr i32 %i.daj, 8
  %i.dbh = insertelement <16 x i32> %i.dbf, i32 %i.dbg, i64 11
  %i.dbi = shufflevector <2 x i32> %i.dap, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dbj = shufflevector <16 x i32> %i.dbh, <16 x i32> %i.dbi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 poison, i32 poison, i32 poison>
  %i.dbk = shufflevector <2 x i32> %i.das, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dbl = shufflevector <16 x i32> %i.dbj, <16 x i32> %i.dbk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 17, i32 poison>
  %i.dbm = lshr i32 %i.daq, 8
  %.sroa.0125.60.vec.insert.i.i612 = insertelement <16 x i32> %i.dbl, i32 %i.dbm, i64 15
  %i.dbn = bitcast <16 x i32> %.sroa.0125.60.vec.insert.i.i612 to <8 x i64>
  %i.dbo = and <8 x i64> %i.dbn, splat (i64 72057589759737855)
  store <8 x i64> %i.dbo, ptr %.02630.i611, align 1, !tbaa !15
  %i.dbp = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 48
  %i.dbq = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 52
  %i.dbr = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 56
  %i.dbs = load <2 x i32>, ptr %i.dbp, align 1    ; 2 uses
  %i.dbt = load i32, ptr %i.dbr, align 1
  %i.dbu = load <2 x i32>, ptr %i.dbq, align 1
  %i.dbv = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dbu, <2 x i32> %i.dbs, <2 x i32> <i32 8, i32 16>)
  %i.dbw = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 60
  %i.dbx = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 64
  %i.dby = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 68
  %i.dbz = load <2 x i32>, ptr %i.dbw, align 1    ; 2 uses
  %i.dca = load i32, ptr %i.dby, align 1
  %i.dcb = load <2 x i32>, ptr %i.dbx, align 1
  %i.dcc = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dcb, <2 x i32> %i.dbz, <2 x i32> <i32 8, i32 16>)
  %i.dcd = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 72
  %i.dce = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 76
  %i.dcf = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 80
  %i.dcg = load <2 x i32>, ptr %i.dcd, align 1    ; 2 uses
  %i.dch = load i32, ptr %i.dcf, align 1
  %i.dci = load <2 x i32>, ptr %i.dce, align 1
  %i.dcj = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dci, <2 x i32> %i.dcg, <2 x i32> <i32 8, i32 16>)
  %i.dck = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 84
  %i.dcl = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 88
  %i.dcm = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 92
  %i.dcn = load <2 x i32>, ptr %i.dck, align 1    ; 2 uses
  %i.dco = load i32, ptr %i.dcm, align 1
  %i.dcp = load <2 x i32>, ptr %i.dcl, align 1
  %i.dcq = tail call <2 x i32> @llvm.fshl.v2i32(<2 x i32> %i.dcp, <2 x i32> %i.dcn, <2 x i32> <i32 8, i32 16>)
  %i.dcr = shufflevector <2 x i32> %i.dbs, <2 x i32> %i.dbv, <16 x i32> <i32 0, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dcs = lshr i32 %i.dbt, 8
  %i.dct = insertelement <16 x i32> %i.dcr, i32 %i.dcs, i64 3
  %i.dcu = shufflevector <2 x i32> %i.dbz, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dcv = shufflevector <16 x i32> %i.dct, <16 x i32> %i.dcu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dcw = shufflevector <2 x i32> %i.dcc, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dcx = shufflevector <16 x i32> %i.dcv, <16 x i32> %i.dcw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dcy = lshr i32 %i.dca, 8
  %i.dcz = insertelement <16 x i32> %i.dcx, i32 %i.dcy, i64 7
  %i.dda = shufflevector <2 x i32> %i.dcg, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ddb = shufflevector <16 x i32> %i.dcz, <16 x i32> %i.dda, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ddc = shufflevector <2 x i32> %i.dcj, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ddd = shufflevector <16 x i32> %i.ddb, <16 x i32> %i.ddc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dde = lshr i32 %i.dch, 8
  %i.ddf = insertelement <16 x i32> %i.ddd, i32 %i.dde, i64 11
  %i.ddg = shufflevector <2 x i32> %i.dcn, <2 x i32> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ddh = shufflevector <16 x i32> %i.ddf, <16 x i32> %i.ddg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 poison, i32 poison, i32 poison>
  %i.ddi = shufflevector <2 x i32> %i.dcq, <2 x i32> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ddj = shufflevector <16 x i32> %i.ddh, <16 x i32> %i.ddi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 16, i32 17, i32 poison>
  %i.ddk = lshr i32 %i.dco, 8
  %.sroa.0145.60.vec.insert.i.i613 = insertelement <16 x i32> %i.ddj, i32 %i.ddk, i64 15
  %i.ddl = getelementptr inbounds nuw i8, ptr %.02630.i611, i64 64
  %i.ddm = bitcast <16 x i32> %.sroa.0145.60.vec.insert.i.i613 to <8 x i64>
  %i.ddn = and <8 x i64> %i.ddm, splat (i64 72057589759737855)
  store <8 x i64> %i.ddn, ptr %i.ddl, align 1, !tbaa !15
  %i.ddo = getelementptr inbounds nuw i8, ptr %.02531.i610, i64 96 ; 2 uses
  %i.ddp = getelementptr inbounds nuw i8, ptr %.02630.i611, i64 128 ; 2 uses
  %i.ddq = add nuw nsw i32 %.032.i609, 1          ; 2 uses
  %exitcond.not.i614 = icmp eq i32 %i.ddq, %i.cxs
  br i1 %exitcond.not.i614, label %._crit_edge.i598, label %.lr.ph.i608, !llvm.loop !189

bb.ay:                                            ; preds = %bb.a
  %i.ddr = mul nsw i32 %2, 25
  %i.dds = add nsw i32 %4, %i.ddr
  %i.ddt = icmp sgt i32 %2, 0
  br i1 %i.ddt, label %.lr.ph.i.i635, label %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i

.lr.ph.i.i635:                                    ; preds = %bb.ay, %bb.az
  %.026.i.i636 = phi ptr [ %i.dej, %bb.az ], [ %1, %bb.ay ] ; 2 uses
  %.02325.i.i637 = phi i32 [ %i.ddw, %bb.az ], [ %4, %bb.ay ] ; 5 uses
  %i.ddu = srem i32 %.02325.i.i637, 8             ; 2 uses
  %i.ddv = sdiv i32 %.02325.i.i637, 8             ; 2 uses
  %.not.i.i638 = icmp eq i32 %i.ddu, 0
  br i1 %.not.i.i638, label %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i635
  %i.ddw = add nsw i32 %.02325.i.i637, 25         ; 3 uses
  %i.ddx = add nsw i32 %.02325.i.i637, 24
  %i.ddy = sdiv i32 %i.ddx, 8
  %i.ddz = sub nsw i32 %i.ddy, %i.ddv             ; 2 uses
  %i.dea = add nsw i32 %i.ddz, 1
  %i.deb = icmp slt i32 %i.ddz, 4
  tail call void @llvm.assume(i1 %i.deb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 0, ptr %i.o, align 8, !tbaa !19
  %i.dec = sext i32 %i.ddv to i64
  %i.ded = getelementptr inbounds i8, ptr %0, i64 %i.dec
  %i.dee = sext i32 %i.dea to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr readonly align 1 %i.ded, i64 %i.dee, i1 false)
  %.0..0..0..0..0..0..0..0..i.i639 = load i64, ptr %i.o, align 8, !tbaa !19
  %i.def = zext nneg i32 %i.ddu to i64
  %i.deg = lshr i64 %.0..0..0..0..0..0..0..0..i.i639, %i.def
  %i.deh = trunc i64 %i.deg to i32
  %i.dei = and i32 %i.deh, 33554431
  store i32 %i.dei, ptr %.026.i.i636, align 4, !tbaa !3
  %i.dej = getelementptr inbounds nuw i8, ptr %.026.i.i636, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.dek = icmp slt i32 %i.ddw, %i.dds
  br i1 %i.dek, label %.lr.ph.i.i635, label %_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i, !llvm.loop !190

_ZN5arrow8internal12unpack_exactILi25ELb1EjEEiPKhPT1_ii.exit.i: ; preds = %bb.az, %.lr.ph.i.i635, %bb.ay
  %.023.lcssa.i.i620 = phi i32 [ %4, %bb.ay ], [ %i.ddw, %bb.az ], [ %.02325.i.i637, %.lr.ph.i.i635 ]
  %i.del = sub nsw i32 %.023.lcssa.i.i620, %4
  %i.dem = sdiv i32 %i.del, 25                    ; 3 uses
  %i.den = mul nsw i32 %i.dem, 25
  %i.deo = add nsw i32 %i.den, %4
  %i.dep = sub nsw i32 %2, %i.dem                 ; 4 uses
  %i.deq = sdiv i32 %i.deo, 8
  %i.der = sext i32 %i.deq to i64
end_hunk_0
