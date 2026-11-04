Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/ir_emit?download=true
inline.NumInlined: 520
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@ir_emit_code:bb.a
  br i1 %.not.i.i.i.i1603, label %bb.dxp, label %bb.dxo

bb.dxo:                                           ; preds = %bb.dxn
  %i.hpo = load i32, ptr %i.aeb, align 4, !tbaa !138
  %i.hpp = zext i32 %i.hpk to i64
  %i.hpq = and i32 %i.hpo, 255
  %i.hpr = zext nneg i32 %i.hpq to i64
  %i.hps = shl nuw nsw i64 %i.hpr, 32
  %i.hpt = or disjoint i64 %i.hps, %i.hpp
  br label %ir_ref_spill_slot.exit.i.i1604

bb.dxp:                                           ; preds = %bb.dxn
  %i.hpu = load i32, ptr %i.g, align 8, !tbaa !80
  %i.hpv = and i32 %i.hpu, 2048
  %.not14.i.i.i.i1609 = icmp eq i32 %i.hpv, 0
  br i1 %.not14.i.i.i.i1609, label %bb.dxr, label %bb.dxq

bb.dxq:                                           ; preds = %bb.dxp
  %i.hpw = load i32, ptr %i.aec, align 8, !tbaa !99
  %i.hpx = sub nsw i32 %i.hpk, %i.hpw
  br label %bb.dxs

bb.dxr:                                           ; preds = %bb.dxp
  %i.hpy = load i32, ptr %i.aed, align 4, !tbaa !110
  %i.hpz = add nsw i32 %i.hpy, %i.hpk
  br label %bb.dxs

bb.dxs:                                           ; preds = %bb.dxr, %bb.dxq
  %i.hqa = phi i64 [ 21474836480, %bb.dxq ], [ 17179869184, %bb.dxr ]
  %i.hqb = phi i32 [ %i.hpx, %bb.dxq ], [ %i.hpz, %bb.dxr ]
  %i.hqc = zext i32 %i.hqb to i64
  %i.hqd = or disjoint i64 %i.hqa, %i.hqc
  br label %ir_ref_spill_slot.exit.i.i1604

ir_ref_spill_slot.exit.i.i1604:                   ; preds = %bb.dxs, %bb.dxo
  %.0.in.i.i.i.i1605 = phi i64 [ %i.hpt, %bb.dxo ], [ %i.hqd, %bb.dxs ]
  %.0.i.i.i.i1606 = or disjoint i64 %.0.in.i.i.i.i1605, 561850441793536 ; 2 uses
  %i.hqe = icmp ult i8 %i.hmi, 12
  br i1 %i.hqe, label %bb.dxt, label %bb.dxu

bb.dxt:                                           ; preds = %ir_ref_spill_slot.exit.i.i1604
  %.val.i.i.i1608 = load ptr, ptr %i.q, align 8, !tbaa !22
  call fastcc void @ir_emit_store_mem_int(ptr %.val.i.i.i1608, i32 noundef range(i32 0, 256) %i.hmj, i64 noundef %.0.i.i.i.i1606, i8 noundef signext %spec.select.i1591)
  br label %ir_emit_lea.exit

bb.dxu:                                           ; preds = %ir_ref_spill_slot.exit.i.i1604
  call fastcc void @ir_emit_store_mem_fp(ptr noundef nonnull readonly %0, i32 noundef range(i32 0, 256) %i.hmj, i64 noundef %.0.i.i.i.i1606, i8 noundef signext %spec.select.i1591)
  br label %ir_emit_lea.exit

bb.dxv:                                           ; preds = %bb.fg
  %i.hqf = load ptr, ptr %i.q, align 8, !tbaa !22 ; 2 uses
  %i.hqg = getelementptr inbounds nuw i8, ptr %i.hqf, i64 32 ; 58 uses
  %i.hqh = load ptr, ptr %i.ady, align 8, !tbaa !125
  %i.hqi = sext i32 %.06832372 to i64
  %i.hqj = getelementptr inbounds [4 x i8], ptr %i.hqh, i64 %i.hqi ; 2 uses
  %i.hqk = getelementptr inbounds nuw i8, ptr %i.hqj, i64 2
  %i.hql = load i8, ptr %i.hqk, align 1, !tbaa !22 ; 4 uses
  %i.hqm = getelementptr inbounds nuw i8, ptr %i.hqj, i64 3
  %i.hqn = load i8, ptr %i.hqm, align 1, !tbaa !22 ; 3 uses
  %i.hqo = load ptr, ptr %0, align 8, !tbaa !42
  %i.hqp = getelementptr inbounds nuw i8, ptr %.06812376, i64 8 ; 2 uses
  %i.hqq = load i32, ptr %i.hqp, align 8, !tbaa !22
  %i.hqr = sext i32 %i.hqq to i64
  %i.hqs = getelementptr inbounds [16 x i8], ptr %i.hqo, i64 %i.hqr
  %i.hqt = getelementptr inbounds nuw i8, ptr %i.hqs, i64 1
  %i.hqu = load i8, ptr %i.hqt, align 1, !tbaa !22 ; 4 uses
  %i.hqv = zext i8 %i.hqu to i32
  %i.hqw = add i8 %i.hqu, -7
  %or.cond.i1614 = icmp ult i8 %i.hqw, 5          ; 12 uses
  %..i1615 = select i1 %or.cond.i1614, i64 9223372036854775807, i64 -1 ; 2 uses
  %.557.i = select i1 %or.cond.i1614, i64 -9223372036854775808, i64 0 ; 2 uses
  %i.hqx = load ptr, ptr %i.adv, align 8, !tbaa !129
  %i.hqy = zext i32 %.12396 to i64
  %i.hqz = getelementptr inbounds nuw [52 x i8], ptr %i.hqx, i64 %i.hqy ; 2 uses
  %i.hra = getelementptr inbounds nuw i8, ptr %i.hqz, i64 12 ; 3 uses
  %i.hrb = getelementptr inbounds nuw i8, ptr %i.hqz, i64 16 ; 3 uses
  %i.hrc = load i32, ptr %i.hrb, align 4, !tbaa !151 ; 2 uses
  %.not540571.i = icmp eq i32 %i.hrc, 0
  br i1 %.not540571.i, label %._crit_edge.i1618, label %.lr.ph.preheader.i1616

.lr.ph.preheader.i1616:                           ; preds = %bb.dxv
  %i.hrd = load ptr, ptr %i.aet, align 8, !tbaa !152
  %i.hre = load i32, ptr %i.hra, align 4, !tbaa !153
  %i.hrf = zext i32 %i.hre to i64
  %i.hrg = getelementptr inbounds nuw [4 x i8], ptr %i.hrd, i64 %i.hrf
  br label %.lr.ph.i1617

.lr.ph.i1617:                                     ; preds = %bb.dye, %.lr.ph.preheader.i1616
  %.0498578.i = phi i1 [ %.1499.i, %bb.dye ], [ false, %.lr.ph.preheader.i1616 ] ; 2 uses
  %.sroa.0.1577.i = phi i64 [ %.sroa.0.4.i, %bb.dye ], [ %.557.i, %.lr.ph.preheader.i1616 ] ; 5 uses
  %.sroa.0198.1576.i = phi i64 [ %.sroa.0198.4.i, %bb.dye ], [ %..i1615, %.lr.ph.preheader.i1616 ] ; 5 uses
  %.0501575.i = phi i32 [ %.1502.i, %bb.dye ], [ 0, %.lr.ph.preheader.i1616 ] ; 4 uses
  %.0503574.i = phi i32 [ %.1504.i, %bb.dye ], [ 0, %.lr.ph.preheader.i1616 ] ; 3 uses
  %.0507573.i = phi ptr [ %i.hsp, %bb.dye ], [ %i.hrg, %.lr.ph.preheader.i1616 ] ; 2 uses
  %.0509572.i = phi i32 [ %i.hsq, %bb.dye ], [ %i.hrc, %.lr.ph.preheader.i1616 ]
  %i.hrh = load i32, ptr %.0507573.i, align 4, !tbaa !63 ; 2 uses
  %i.hri = load ptr, ptr %0, align 8, !tbaa !42   ; 4 uses
  %i.hrj = load ptr, ptr %i.adv, align 8, !tbaa !129
  %i.hrk = zext i32 %i.hrh to i64
  %i.hrl = getelementptr inbounds nuw [52 x i8], ptr %i.hrj, i64 %i.hrk
  %i.hrm = getelementptr inbounds nuw i8, ptr %i.hrl, i64 4
  %i.hrn = load i32, ptr %i.hrm, align 4, !tbaa !131
  %i.hro = sext i32 %i.hrn to i64
  %i.hrp = getelementptr inbounds [16 x i8], ptr %i.hri, i64 %i.hro ; 4 uses
  %i.hrq = load i8, ptr %i.hrp, align 8, !tbaa !22
  switch i8 %i.hrq, label %bb.dyd [
    i8 104, label %bb.dxw
    i8 105, label %bb.dya
  ]

bb.dxw:                                           ; preds = %.lr.ph.i1617
  %i.hrr = getelementptr inbounds nuw i8, ptr %i.hrp, i64 8
  %i.hrs = load i32, ptr %i.hrr, align 8, !tbaa !22
  %i.hrt = sext i32 %i.hrs to i64
  %i.hru = getelementptr inbounds [16 x i8], ptr %i.hri, i64 %i.hrt
  %i.hrv = getelementptr inbounds nuw i8, ptr %i.hru, i64 8
  %i.hrw = load i64, ptr %i.hrv, align 8, !tbaa !22 ; 4 uses
  br i1 %or.cond.i1614, label %bb.dxx, label %bb.dxy

bb.dxx:                                           ; preds = %bb.dxw
  %.sroa.0198.1..i = call i64 @llvm.smin.i64(i64 %.sroa.0198.1576.i, i64 %i.hrw)
  %i.hrx = call i64 @llvm.smax.i64(i64 %.sroa.0.1577.i, i64 %i.hrw)
  br label %bb.dxz

bb.dxy:                                           ; preds = %bb.dxw
  %.sroa.0198.1.558.i = call i64 @llvm.umin.i64(i64 %.sroa.0198.1576.i, i64 %i.hrw)
  %i.hry = call i64 @llvm.umax.i64(i64 %.sroa.0.1577.i, i64 %i.hrw)
  br label %bb.dxz

bb.dxz:                                           ; preds = %bb.dxy, %bb.dxx
  %.sroa.0198.2.i = phi i64 [ %.sroa.0198.1..i, %bb.dxx ], [ %.sroa.0198.1.558.i, %bb.dxy ]
  %.sroa.0.2.i = phi i64 [ %i.hrx, %bb.dxx ], [ %i.hry, %bb.dxy ]
  %i.hrz = add nsw i32 %.0501575.i, 1
  br label %bb.dye

bb.dya:                                           ; preds = %.lr.ph.i1617
  %i.hsa = getelementptr inbounds nuw i8, ptr %i.hrp, i64 8
  %i.hsb = load i32, ptr %i.hsa, align 8, !tbaa !22
  %i.hsc = sext i32 %i.hsb to i64
  %i.hsd = getelementptr inbounds [16 x i8], ptr %i.hri, i64 %i.hsc
  %i.hse = getelementptr inbounds nuw i8, ptr %i.hrp, i64 12
  %i.hsf = load i32, ptr %i.hse, align 4, !tbaa !22
  %i.hsg = sext i32 %i.hsf to i64
  %i.hsh = getelementptr inbounds [16 x i8], ptr %i.hri, i64 %i.hsg
  %i.hsi = getelementptr inbounds nuw i8, ptr %i.hsd, i64 8
  %i.hsj = load i64, ptr %i.hsi, align 8, !tbaa !22 ; 2 uses
  %i.hsk = getelementptr inbounds nuw i8, ptr %i.hsh, i64 8
  %i.hsl = load i64, ptr %i.hsk, align 8, !tbaa !22 ; 2 uses
  br i1 %or.cond.i1614, label %bb.dyb, label %bb.dyc

bb.dyb:                                           ; preds = %bb.dya
  %.sroa.0198.1.559.i = call i64 @llvm.smin.i64(i64 %.sroa.0198.1576.i, i64 %i.hsj)
  %i.hsm = call i64 @llvm.smax.i64(i64 %.sroa.0.1577.i, i64 %i.hsl)
  br label %bb.dye

bb.dyc:                                           ; preds = %bb.dya
  %.sroa.0198.1.560.i = call i64 @llvm.umin.i64(i64 %.sroa.0198.1576.i, i64 %i.hsj)
  %i.hsn = call i64 @llvm.umax.i64(i64 %.sroa.0.1577.i, i64 %i.hsl)
  br label %bb.dye

bb.dyd:                                           ; preds = %.lr.ph.i1617
  %i.hso = call i32 @ir_skip_empty_target_blocks(ptr noundef nonnull %0, i32 noundef %i.hrh) #23
  br label %bb.dye

bb.dye:                                           ; preds = %bb.dyd, %bb.dyc, %bb.dyb, %bb.dxz
  %.1504.i = phi i32 [ %.0503574.i, %bb.dxz ], [ %i.hso, %bb.dyd ], [ %.0503574.i, %bb.dyc ], [ %.0503574.i, %bb.dyb ] ; 2 uses
  %.1502.i = phi i32 [ %i.hrz, %bb.dxz ], [ %.0501575.i, %bb.dyd ], [ %.0501575.i, %bb.dyc ], [ %.0501575.i, %bb.dyb ] ; 2 uses
  %.sroa.0198.4.i = phi i64 [ %.sroa.0198.2.i, %bb.dxz ], [ %.sroa.0198.1576.i, %bb.dyd ], [ %.sroa.0198.1.560.i, %bb.dyc ], [ %.sroa.0198.1.559.i, %bb.dyb ] ; 2 uses
  %.sroa.0.4.i = phi i64 [ %.sroa.0.2.i, %bb.dxz ], [ %.sroa.0.1577.i, %bb.dyd ], [ %i.hsn, %bb.dyc ], [ %i.hsm, %bb.dyb ] ; 2 uses
  %.1499.i = phi i1 [ %.0498578.i, %bb.dxz ], [ %.0498578.i, %bb.dyd ], [ true, %bb.dyc ], [ true, %bb.dyb ] ; 2 uses
  %i.hsp = getelementptr inbounds nuw i8, ptr %.0507573.i, i64 4
  %i.hsq = add i32 %.0509572.i, -1                ; 2 uses
  %.not540.i = icmp eq i32 %i.hsq, 0
  br i1 %.not540.i, label %._crit_edge.i1618, label %.lr.ph.i1617, !llvm.loop !209

._crit_edge.i1618:                                ; preds = %bb.dye, %bb.dxv
  %.0503.lcssa.i = phi i32 [ 0, %bb.dxv ], [ %.1504.i, %bb.dye ] ; 8 uses
  %.0501.lcssa.i = phi i32 [ 0, %bb.dxv ], [ %.1502.i, %bb.dye ] ; 2 uses
  %.sroa.0198.1.lcssa.i = phi i64 [ %..i1615, %bb.dxv ], [ %.sroa.0198.4.i, %bb.dye ] ; 7 uses
  %.sroa.0.1.lcssa.i = phi i64 [ %.557.i, %bb.dxv ], [ %.sroa.0.4.i, %bb.dye ] ; 4 uses
  %.0498.lcssa.i = phi i1 [ false, %bb.dxv ], [ %.1499.i, %bb.dye ]
  %i.hsr = sub i64 0, %.sroa.0198.1.lcssa.i       ; 4 uses
  %.not541.i = icmp ult i8 %i.hql, 64
  br i1 %.not541.i, label %bb.dyg, label %bb.dyf

bb.dyf:                                           ; preds = %._crit_edge.i1618
  %i.hss = icmp eq i8 %i.hql, -1
  %i.hst = and i8 %i.hql, 63
  %i.hsu = select i1 %i.hss, i8 -1, i8 %i.hst     ; 2 uses
  %i.hsv = load i32, ptr %i.hqp, align 8, !tbaa !22
  call fastcc void @ir_emit_load(ptr noundef nonnull %0, i32 noundef %i.hqv, i8 noundef signext %i.hsu, i32 noundef %i.hsv)
  br label %bb.dyg

bb.dyg:                                           ; preds = %bb.dyf, %._crit_edge.i1618
  %.0500.i = phi i8 [ %i.hsu, %bb.dyf ], [ %i.hql, %._crit_edge.i1618 ] ; 12 uses
  %i.hsw = icmp slt i32 %.0501.lcssa.i, 3
  %or.cond8.not.i = select i1 %.0498.lcssa.i, i1 true, i1 %i.hsw
  br i1 %or.cond8.not.i, label %bb.eag, label %bb.dyh

bb.dyh:                                           ; preds = %bb.dyg
  %i.hsx = sub nsw i64 %.sroa.0.1.lcssa.i, %.sroa.0198.1.lcssa.i ; 4 uses
  %i.hsy = shl nuw nsw i32 %.0501.lcssa.i, 3
  %i.hsz = zext nneg i32 %i.hsy to i64
  %i.hta = icmp slt i64 %i.hsx, %i.hsz
  br i1 %i.hta, label %bb.dyi, label %bb.eag

bb.dyi:                                           ; preds = %bb.dyh
  %i.htb = shl i64 %i.hsx, 2
  %i.htc = add i64 %i.htb, 4
  %i.htd = call noalias ptr @_emalloc(i64 noundef %i.htc) #25 ; 5 uses
  %.not544583.i = icmp slt i64 %i.hsx, 0          ; 2 uses
  br i1 %.not544583.i, label %._crit_edge587.i, label %.lr.ph586.i.preheader.a

.lr.ph586.i.preheader.a:                          ; preds = %bb.dyi
  %i.hte = add i64 %.sroa.0.1.lcssa.i, 1
  %i.htf = sub i64 %i.hte, %.sroa.0198.1.lcssa.i  ; 4 uses
  %min.iters.check2872 = icmp ult i64 %i.htf, 8
  br i1 %min.iters.check2872, label %.lr.ph586.i.preheader3109, label %vector.ph2873

vector.ph2873:                                    ; preds = %.lr.ph586.i.preheader.a
  %n.vec2874 = and i64 %i.htf, -8                 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0503.lcssa.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body2875

vector.body2875:                                  ; preds = %vector.body2875, %vector.ph2873
  %index2876 = phi i64 [ 0, %vector.ph2873 ], [ %index.next2877, %vector.body2875 ] ; 2 uses
  %i.htg = getelementptr inbounds nuw [4 x i8], ptr %i.htd, i64 %index2876 ; 2 uses
  %i.hth = getelementptr inbounds nuw i8, ptr %i.htg, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.htg, align 4, !tbaa !63
  store <4 x i32> %broadcast.splat, ptr %i.hth, align 4, !tbaa !63
  %index.next2877 = add nuw i64 %index2876, 8     ; 2 uses
  %i.hti = icmp eq i64 %index.next2877, %n.vec2874
  br i1 %i.hti, label %middle.block2878, label %vector.body2875, !llvm.loop !210

middle.block2878:                                 ; preds = %vector.body2875
  %cmp.n2879 = icmp eq i64 %i.htf, %n.vec2874
  br i1 %cmp.n2879, label %._crit_edge587.i, label %.lr.ph586.i.preheader3109

.lr.ph586.i.preheader3109:                        ; preds = %.lr.ph586.i.preheader.a, %middle.block2878
  %indvars.iv.i1621.ph = phi i64 [ 0, %.lr.ph586.i.preheader.a ], [ %n.vec2874, %middle.block2878 ]
  br label %.lr.ph586.i

.lr.ph586.i:                                      ; preds = %.lr.ph586.i.preheader3109, %.lr.ph586.i
  %indvars.iv.i1621 = phi i64 [ %indvars.iv.next.i1622, %.lr.ph586.i ], [ %indvars.iv.i1621.ph, %.lr.ph586.i.preheader3109 ] ; 2 uses
  %i.htj = getelementptr inbounds nuw [4 x i8], ptr %i.htd, i64 %indvars.iv.i1621
  store i32 %.0503.lcssa.i, ptr %i.htj, align 4, !tbaa !63
  %indvars.iv.next.i1622 = add nuw nsw i64 %indvars.iv.i1621, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i1622, %i.htf
  br i1 %exitcond.i, label %._crit_edge587.i, label %.lr.ph586.i, !llvm.loop !211

._crit_edge587.i:                                 ; preds = %.lr.ph586.i, %middle.block2878, %bb.dyi
  %i.htk = load i32, ptr %i.hrb, align 4, !tbaa !151 ; 2 uses
  %.not545588.i = icmp eq i32 %i.htk, 0
  br i1 %.not545588.i, label %._crit_edge593.i, label %.lr.ph592.preheader.i

.lr.ph592.preheader.i:                            ; preds = %._crit_edge587.i
  %i.htl = load ptr, ptr %i.aet, align 8, !tbaa !152
  %i.htm = load i32, ptr %i.hra, align 4, !tbaa !153
  %i.htn = zext i32 %i.htm to i64
  %i.hto = getelementptr inbounds nuw [4 x i8], ptr %i.htl, i64 %i.htn
  br label %.lr.ph592.i

.lr.ph592.i:                                      ; preds = %bb.dyk, %.lr.ph592.preheader.i
  %.1508590.i = phi ptr [ %i.huj, %bb.dyk ], [ %i.hto, %.lr.ph592.preheader.i ] ; 2 uses
  %.1510589.i = phi i32 [ %i.huk, %bb.dyk ], [ %i.htk, %.lr.ph592.preheader.i ]
  %i.htp = load i32, ptr %.1508590.i, align 4, !tbaa !63 ; 2 uses
  %i.htq = load ptr, ptr %0, align 8, !tbaa !42   ; 2 uses
  %i.htr = load ptr, ptr %i.adv, align 8, !tbaa !129
  %i.hts = zext i32 %i.htp to i64
  %i.htt = getelementptr inbounds nuw [52 x i8], ptr %i.htr, i64 %i.hts
  %i.htu = getelementptr inbounds nuw i8, ptr %i.htt, i64 4
  %i.htv = load i32, ptr %i.htu, align 4, !tbaa !131
  %i.htw = sext i32 %i.htv to i64
  %i.htx = getelementptr inbounds [16 x i8], ptr %i.htq, i64 %i.htw ; 2 uses
  %i.hty = load i8, ptr %i.htx, align 8, !tbaa !22
  %i.htz = icmp eq i8 %i.hty, 104
  br i1 %i.htz, label %bb.dyj, label %bb.dyk

bb.dyj:                                           ; preds = %.lr.ph592.i
  %i.hua = getelementptr inbounds nuw i8, ptr %i.htx, i64 8
  %i.hub = load i32, ptr %i.hua, align 8, !tbaa !22
  %i.huc = sext i32 %i.hub to i64
  %i.hud = getelementptr inbounds [16 x i8], ptr %i.htq, i64 %i.huc
  %i.hue = call i32 @ir_skip_empty_target_blocks(ptr noundef nonnull %0, i32 noundef %i.htp) #23
  %i.huf = getelementptr inbounds nuw i8, ptr %i.hud, i64 8
  %i.hug = load i64, ptr %i.huf, align 8, !tbaa !22
  %i.huh = sub nsw i64 %i.hug, %.sroa.0198.1.lcssa.i
  %i.hui = getelementptr inbounds [4 x i8], ptr %i.htd, i64 %i.huh
  store i32 %i.hue, ptr %i.hui, align 4, !tbaa !63
  br label %bb.dyk

bb.dyk:                                           ; preds = %bb.dyj, %.lr.ph592.i
  %i.huj = getelementptr inbounds nuw i8, ptr %.1508590.i, i64 4
  %i.huk = add i32 %.1510589.i, -1                ; 2 uses
  %.not545.i = icmp eq i32 %i.huk, 0
  br i1 %.not545.i, label %._crit_edge593.i, label %.lr.ph592.i, !llvm.loop !212

._crit_edge593.i:                                 ; preds = %bb.dyk, %._crit_edge587.i
  %i.hul = zext i8 %i.hqu to i64
  %i.hum = getelementptr inbounds nuw i8, ptr @ir_type_size, i64 %i.hul
  %i.hun = load i8, ptr %i.hum, align 1, !tbaa !22
  %i.huo = zext i8 %i.hun to i32                  ; 2 uses
  %i.hup = call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.huo)
  %i.huq = icmp eq i32 %i.hup, 1
  br i1 %i.huq, label %.split.i1630, label %bb.dyl

.split.i1630:                                     ; preds = %._crit_edge593.i
  %i.hur = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.huo, i1 true)
  switch i32 %i.hur, label %bb.dyl [
    i32 3, label %bb.dyw
    i32 1, label %bb.dyo
    i32 2, label %bb.dyr
  ]

bb.dyl:                                           ; preds = %.split.i1630, %._crit_edge593.i
  %i.hus = sext i8 %.0500.i to i32                ; 4 uses
  br i1 %or.cond.i1614, label %bb.dym, label %bb.dyn

bb.dym:                                           ; preds = %bb.dyl
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 23307, i32 noundef %i.hus, i32 noundef %i.hus)
  br label %bb.dyw

bb.dyn:                                           ; preds = %bb.dyl
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 23891, i32 noundef %i.hus, i32 noundef %i.hus)
  br label %bb.dyw

bb.dyo:                                           ; preds = %.split.i1630
  %i.hut = sext i8 %.0500.i to i32                ; 4 uses
  br i1 %or.cond.i1614, label %bb.dyp, label %bb.dyq

bb.dyp:                                           ; preds = %bb.dyo
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 23316, i32 noundef %i.hut, i32 noundef %i.hut)
  br label %bb.dyw

bb.dyq:                                           ; preds = %bb.dyo
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 23900, i32 noundef %i.hut, i32 noundef %i.hut)
  br label %bb.dyw

bb.dyr:                                           ; preds = %.split.i1630
  br i1 %or.cond.i1614, label %bb.dys, label %bb.dyv

bb.dys:                                           ; preds = %bb.dyr
  %i.huu = icmp eq i8 %.0500.i, 0
  br i1 %i.huu, label %bb.dyt, label %bb.dyu

bb.dyt:                                           ; preds = %bb.dys
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 23325)
  br label %bb.dyw

bb.dyu:                                           ; preds = %bb.dys
  %i.huv = sext i8 %.0500.i to i32                ; 2 uses
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 23328, i32 noundef %i.huv, i32 noundef %i.huv)
  br label %bb.dyw

bb.dyv:                                           ; preds = %bb.dyr
  %i.huw = sext i8 %.0500.i to i32                ; 2 uses
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 2157, i32 noundef %i.huw, i32 noundef %i.huw)
  br label %bb.dyw

bb.dyw:                                           ; preds = %bb.dyv, %bb.dyu, %bb.dyt, %bb.dyq, %bb.dyp, %bb.dyn, %bb.dym, %.split.i1630
  %.not546.i = icmp eq i64 %.sroa.0198.1.lcssa.i, 0
  br i1 %.not546.i, label %bb.dzh, label %bb.dyx

bb.dyx:                                           ; preds = %bb.dyw
  %i.hux = add i64 %.sroa.0198.1.lcssa.i, 2147483647
  %or.cond16.i = icmp ult i64 %i.hux, 4294967296
  %i.huy = sext i8 %i.hqn to i32                  ; 7 uses
  br i1 %or.cond16.i, label %bb.dyy, label %bb.dyz

bb.dyy:                                           ; preds = %bb.dyx
  %i.huz = sext i8 %.0500.i to i32
  %i.hva = trunc nsw i64 %i.hsr to i32
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 953, i32 noundef %i.huy, i32 noundef %i.huz, i32 noundef %i.hva)
  br label %bb.dza

bb.dyz:                                           ; preds = %bb.dyx
  %i.hvb = trunc i64 %i.hsr to i32
  %i.hvc = lshr i64 %i.hsr, 32
  %i.hvd = trunc nuw i64 %i.hvc to i32
  %i.hve = sext i8 %.0500.i to i32
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 28000, i32 noundef %i.huy, i32 noundef %i.hvb, i32 noundef %i.hvd, i32 noundef %i.hve, i32 noundef %i.huy)
  br label %bb.dza

bb.dza:                                           ; preds = %bb.dyz, %bb.dyy
  %.not549.i = icmp eq i32 %.0503.lcssa.i, 0
  br i1 %.not549.i, label %bb.dzc, label %bb.dzb

bb.dzb:                                           ; preds = %bb.dza
  %i.hvf = trunc i64 %i.hsx to i32
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 28014, i32 noundef %i.huy, i32 noundef %i.hvf, i32 noundef %.0503.lcssa.i)
  br label %bb.dzc

bb.dzc:                                           ; preds = %bb.dzb, %bb.dza
  %i.hvg = load ptr, ptr %i.aeg, align 8, !tbaa !147 ; 3 uses
  %.not550.i = icmp eq ptr %i.hvg, null
  br i1 %.not550.i, label %bb.dzg, label %bb.dzd

bb.dzd:                                           ; preds = %bb.dzc
  %i.hvh = load ptr, ptr %i.hvg, align 8, !tbaa !149 ; 2 uses
  %i.hvi = icmp slt ptr %i.hvh, inttoptr (i64 2147483648 to ptr)
  %i.hvj = icmp sgt ptr %i.hvh, inttoptr (i64 -2147483649 to ptr)
  %or.cond561.i = and i1 %i.hvi, %i.hvj
  br i1 %or.cond561.i, label %bb.dze, label %bb.dzg

bb.dze:                                           ; preds = %bb.dzd
  %i.hvk = getelementptr inbounds nuw i8, ptr %i.hvg, i64 8
  %i.hvl = load ptr, ptr %i.hvk, align 8, !tbaa !150 ; 2 uses
  %i.hvm = icmp slt ptr %i.hvl, inttoptr (i64 2147483648 to ptr)
  %i.hvn = icmp sgt ptr %i.hvl, inttoptr (i64 -2147483649 to ptr)
  %or.cond562.i = and i1 %i.hvm, %i.hvn
  br i1 %or.cond562.i, label %bb.dzf, label %bb.dzg

bb.dzf:                                           ; preds = %bb.dze
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 28025, i32 noundef %i.huy)
  br label %bb.dzo

bb.dzg:                                           ; preds = %bb.dze, %bb.dzd, %bb.dzc
  %i.hvo = shl nsw i64 %i.hsr, 3
  %i.hvp = sext i8 %.0500.i to i32
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 28035, i32 noundef %i.huy, i32 noundef %i.hvp, i32 noundef %i.huy, i64 noundef %i.hvo)
  br label %bb.dzo

bb.dzh:                                           ; preds = %bb.dyw
  %.not547.i = icmp eq i32 %.0503.lcssa.i, 0
  br i1 %.not547.i, label %bb.dzj, label %bb.dzi

bb.dzi:                                           ; preds = %bb.dzh
  %i.hvq = sext i8 %.0500.i to i32
  %i.hvr = trunc i64 %.sroa.0.1.lcssa.i to i32
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 28014, i32 noundef %i.hvq, i32 noundef %i.hvr, i32 noundef %.0503.lcssa.i)
  br label %bb.dzj

bb.dzj:                                           ; preds = %bb.dzi, %bb.dzh
  %i.hvs = load ptr, ptr %i.aeg, align 8, !tbaa !147 ; 3 uses
  %.not548.i = icmp eq ptr %i.hvs, null
  br i1 %.not548.i, label %bb.dzn, label %bb.dzk

bb.dzk:                                           ; preds = %bb.dzj
  %i.hvt = load ptr, ptr %i.hvs, align 8, !tbaa !149 ; 2 uses
  %i.hvu = icmp slt ptr %i.hvt, inttoptr (i64 2147483648 to ptr)
  %i.hvv = icmp sgt ptr %i.hvt, inttoptr (i64 -2147483649 to ptr)
  %or.cond563.i = and i1 %i.hvu, %i.hvv
  br i1 %or.cond563.i, label %bb.dzl, label %bb.dzn

bb.dzl:                                           ; preds = %bb.dzk
  %i.hvw = getelementptr inbounds nuw i8, ptr %i.hvs, i64 8
  %i.hvx = load ptr, ptr %i.hvw, align 8, !tbaa !150 ; 2 uses
  %i.hvy = icmp slt ptr %i.hvx, inttoptr (i64 2147483648 to ptr)
  %i.hvz = icmp sgt ptr %i.hvx, inttoptr (i64 -2147483649 to ptr)
  %or.cond564.i = and i1 %i.hvy, %i.hvz
  br i1 %or.cond564.i, label %bb.dzm, label %bb.dzn

bb.dzm:                                           ; preds = %bb.dzl
  %i.hwa = sext i8 %.0500.i to i32
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 28025, i32 noundef %i.hwa)
  br label %bb.dzo

bb.dzn:                                           ; preds = %bb.dzl, %bb.dzk, %bb.dzj
  %i.hwb = sext i8 %i.hqn to i32                  ; 2 uses
  %i.hwc = sext i8 %.0500.i to i32
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 28035, i32 noundef %i.hwb, i32 noundef %i.hwc, i32 noundef %i.hwb, i32 noundef 0)
  br label %bb.dzo

bb.dzo:                                           ; preds = %bb.dzn, %bb.dzm, %bb.dzg, %bb.dzf
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 28054)
  %i.hwd = getelementptr inbounds nuw i8, ptr %i.hqf, i64 52 ; 2 uses
  %i.hwe = load i32, ptr %i.hwd, align 4, !tbaa !262
  %.not551.i = icmp eq i32 %i.hwe, 0
  br i1 %.not551.i, label %bb.dzp, label %bb.dzq

bb.dzp:                                           ; preds = %bb.dzo
  %i.hwf = load i32, ptr %i.td, align 4, !tbaa !128
  %i.hwg = load i32, ptr %i.tf, align 8, !tbaa !136
  %i.hwh = add i32 %i.hwf, 3
  %i.hwi = add i32 %i.hwh, %i.hwg                 ; 2 uses
  store i32 %i.hwi, ptr %i.hwd, align 4, !tbaa !262
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 15825, i32 noundef %i.hwi)
  br label %bb.dzq

bb.dzq:                                           ; preds = %bb.dzp, %bb.dzo
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 28056)
  br i1 %.not544583.i, label %._crit_edge598.i, label %.lr.ph597.i.preheader

.lr.ph597.i.preheader:                            ; preds = %bb.dzq
  %i.hwj = add i64 %.sroa.0.1.lcssa.i, 1
  %i.hwk = sub i64 %i.hwj, %.sroa.0198.1.lcssa.i
  br label %.lr.ph597.i

.lr.ph597.i:                                      ; preds = %bb.eaf, %.lr.ph597.i.preheader
  %indvars.iv606.i = phi i64 [ 0, %.lr.ph597.i.preheader ], [ %indvars.iv.next607.i, %bb.eaf ] ; 2 uses
  %i.hwl = getelementptr inbounds nuw [4 x i8], ptr %i.htd, i64 %indvars.iv606.i
  %i.hwm = load i32, ptr %i.hwl, align 4, !tbaa !63 ; 3 uses
  %.not553.i = icmp eq i32 %i.hwm, 0
  br i1 %.not553.i, label %bb.eae, label %bb.dzr

bb.dzr:                                           ; preds = %.lr.ph597.i
  %i.hwn = load ptr, ptr %i.adv, align 8, !tbaa !129
  %i.hwo = sext i32 %i.hwm to i64
  %i.hwp = getelementptr inbounds [52 x i8], ptr %i.hwn, i64 %i.hwo ; 4 uses
  %i.hwq = load ptr, ptr %0, align 8, !tbaa !42   ; 3 uses
  %i.hwr = getelementptr inbounds nuw i8, ptr %i.hwp, i64 8
  %i.hws = load i32, ptr %i.hwr, align 4, !tbaa !132
  %i.hwt = sext i32 %i.hws to i64                 ; 2 uses
  %i.hwu = getelementptr inbounds [16 x i8], ptr %i.hwq, i64 %i.hwt ; 3 uses
  %i.hwv = load i8, ptr %i.hwu, align 8, !tbaa !22
  %i.hww = icmp eq i8 %i.hwv, 114
  br i1 %i.hww, label %bb.dzs, label %.critedge.i1623

bb.dzs:                                           ; preds = %bb.dzr
  %i.hwx = getelementptr inbounds nuw i8, ptr %i.hwu, i64 8
  %i.hwy = load i32, ptr %i.hwx, align 8, !tbaa !22 ; 2 uses
  %i.hwz = icmp slt i32 %i.hwy, 0
  br i1 %i.hwz, label %bb.dzt, label %.critedge.i1623

bb.dzt:                                           ; preds = %bb.dzs
  %i.hxa = load ptr, ptr %i.aev, align 8, !tbaa !154 ; 2 uses
  %i.hxb = getelementptr inbounds [4 x i8], ptr %i.hxa, i64 %i.hwt
  %i.hxc = load i32, ptr %i.hxb, align 4, !tbaa !63 ; 2 uses
  %i.hxd = getelementptr inbounds nuw i8, ptr %i.hwp, i64 4 ; 2 uses
  %i.hxe = load i32, ptr %i.hxd, align 4, !tbaa !131 ; 2 uses
  %.not554.i = icmp eq i32 %i.hxc, %i.hxe
  br i1 %.not554.i, label %.critedge570.i, label %bb.dzu

bb.dzu:                                           ; preds = %bb.dzt
  %i.hxf = sext i32 %i.hxc to i64                 ; 2 uses
  %i.hxg = getelementptr inbounds [16 x i8], ptr %i.hwq, i64 %i.hxf
  %i.hxh = load i8, ptr %i.hxg, align 8, !tbaa !22
  %i.hxi = icmp eq i8 %i.hxh, 98
  br i1 %i.hxi, label %bb.dzv, label %.critedge.i1623

bb.dzv:                                           ; preds = %bb.dzu
  %i.hxj = getelementptr inbounds [4 x i8], ptr %i.hxa, i64 %i.hxf
  %i.hxk = load i32, ptr %i.hxj, align 4, !tbaa !63
  %i.hxl = icmp eq i32 %i.hxk, %i.hxe
  br i1 %i.hxl, label %.critedge570.i, label %.critedge.i1623

.critedge570.i:                                   ; preds = %bb.dzv, %bb.dzt
  %i.hxm = sext i32 %i.hwy to i64
  %i.hxn = getelementptr inbounds [16 x i8], ptr %i.hwq, i64 %i.hxm ; 3 uses
  %i.hxo = load i8, ptr %i.hxn, align 8, !tbaa !22
  %i.hxp = icmp eq i8 %i.hxo, 70
  %i.hxq = getelementptr inbounds nuw i8, ptr %i.hxn, i64 8 ; 2 uses
  br i1 %i.hxp, label %bb.dzw, label %bb.eaa

bb.dzw:                                           ; preds = %.critedge570.i
  %i.hxr = load i32, ptr %i.hxq, align 8, !tbaa !22
  %i.hxs = call ptr @ir_get_str(ptr noundef nonnull %0, i32 noundef %i.hxr) #23 ; 2 uses
  %i.hxt = load ptr, ptr %i.aef, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i.i1628 = icmp eq ptr %i.hxt, null
  br i1 %.not.i.i.i.i1628, label %bb.dzz, label %bb.dzx

bb.dzx:                                           ; preds = %bb.dzw
  %i.hxu = getelementptr inbounds nuw i8, ptr %i.hxt, i64 104
  %i.hxv = load ptr, ptr %i.hxu, align 8, !tbaa !91 ; 2 uses
  %.not11.i.i.i.i1629 = icmp eq ptr %i.hxv, null
  br i1 %.not11.i.i.i.i1629, label %bb.dzz, label %bb.dzy

bb.dzy:                                           ; preds = %bb.dzx
  %i.hxw = load i8, ptr %i.hxn, align 8, !tbaa !22
  %i.hxx = icmp eq i8 %i.hxw, 70
  %i.hxy = zext i1 %i.hxx to i32
  %i.hxz = call ptr %i.hxv(ptr noundef nonnull %i.hxt, ptr noundef %i.hxs, i32 noundef %i.hxy) #23, !inline_history !213
  br label %ir_call_addr.exit.i.i1624

bb.dzz:                                           ; preds = %bb.dzx, %bb.dzw
  %i.hya = call ptr @dlsym(ptr noundef null, ptr noundef %i.hxs) #23
  br label %ir_call_addr.exit.i.i1624

bb.eaa:                                           ; preds = %.critedge570.i
  %i.hyb = load i64, ptr %i.hxq, align 8, !tbaa !22
  %i.hyc = inttoptr i64 %i.hyb to ptr
  br label %ir_call_addr.exit.i.i1624

ir_call_addr.exit.i.i1624:                        ; preds = %bb.eaa, %bb.dzz, %bb.dzy
  %.0.i.i.i1625 = phi ptr [ %i.hyc, %bb.eaa ], [ %i.hxz, %bb.dzy ], [ %i.hya, %bb.dzz ] ; 2 uses
  %i.hyd = load ptr, ptr %0, align 8, !tbaa !42
  %i.hye = getelementptr inbounds nuw i8, ptr %i.hwu, i64 4
  %i.hyf = load i32, ptr %i.hye, align 4, !tbaa !22 ; 2 uses
  %i.hyg = sext i32 %i.hyf to i64
  %i.hyh = getelementptr inbounds [16 x i8], ptr %i.hyd, i64 %i.hyg ; 2 uses
  %i.hyi = load i8, ptr %i.hyh, align 8, !tbaa !22
  %i.hyj = icmp eq i8 %i.hyi, 98
  br i1 %i.hyj, label %bb.eab, label %ir_jmp_addr.exit.i1626

bb.eab:                                           ; preds = %ir_call_addr.exit.i.i1624
  %i.hyk = call ptr @zend_jit_snapshot_handler(ptr noundef nonnull %0, i32 noundef %i.hyf, ptr noundef nonnull %i.hyh, ptr noundef %.0.i.i.i1625) #23
  br label %ir_jmp_addr.exit.i1626

ir_jmp_addr.exit.i1626:                           ; preds = %bb.eab, %ir_call_addr.exit.i.i1624
  %.0.i.i1627 = phi ptr [ %i.hyk, %bb.eab ], [ %.0.i.i.i1625, %ir_call_addr.exit.i.i1624 ]
  %i.hyl = ptrtoint ptr %.0.i.i1627 to i64        ; 2 uses
  %i.hym = trunc i64 %i.hyl to i32
  %i.hyn = lshr i64 %i.hyl, 32
  %i.hyo = trunc nuw i64 %i.hyn to i32
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 24, i32 noundef %i.hym, i32 noundef %i.hyo)
  %i.hyp = load ptr, ptr %0, align 8, !tbaa !42
  %i.hyq = load i32, ptr %i.hxd, align 4, !tbaa !131
  %i.hyr = sext i32 %i.hyq to i64
  %i.hys = getelementptr inbounds [16 x i8], ptr %i.hyp, i64 %i.hyr ; 2 uses
  %i.hyt = getelementptr inbounds nuw i8, ptr %i.hys, i64 4
  %i.hyu = load i32, ptr %i.hyt, align 4, !tbaa !22
  %i.hyv = icmp eq i32 %i.hyu, %.06832372
  br i1 %i.hyv, label %bb.eac, label %bb.eaf

bb.eac:                                           ; preds = %ir_jmp_addr.exit.i1626
  %i.hyw = load i8, ptr %i.hys, align 8, !tbaa !22
  %.not555.i = icmp eq i8 %i.hyw, 106
  br i1 %.not555.i, label %bb.eaf, label %bb.ead

bb.ead:                                           ; preds = %bb.eac
  %i.hyx = load i32, ptr %i.hwp, align 4, !tbaa !134
  %i.hyy = or i32 %i.hyx, 64
  store i32 %i.hyy, ptr %i.hwp, align 4, !tbaa !134
  br label %bb.eaf

.critedge.i1623:                                  ; preds = %bb.dzv, %bb.dzu, %bb.dzs, %bb.dzr
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 2287, i32 noundef %i.hwm)
  br label %bb.eaf

bb.eae:                                           ; preds = %.lr.ph597.i
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 28061)
  br label %bb.eaf

bb.eaf:                                           ; preds = %bb.eae, %.critedge.i1623, %bb.ead, %bb.eac, %ir_jmp_addr.exit.i1626
  %indvars.iv.next607.i = add nuw nsw i64 %indvars.iv606.i, 1 ; 2 uses
  %exitcond2454.not = icmp eq i64 %indvars.iv.next607.i, %i.hwk
  br i1 %exitcond2454.not, label %._crit_edge598.i, label %.lr.ph597.i, !llvm.loop !214

._crit_edge598.i:                                 ; preds = %bb.eaf, %bb.dzq
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 15847)
  call void @_efree(ptr noundef %i.htd) #23
  br label %ir_emit_lea.exit

bb.eag:                                           ; preds = %bb.dyh, %bb.dyg
  %i.hyz = load i32, ptr %i.hrb, align 4, !tbaa !151 ; 2 uses
  %.not599.i = icmp eq i32 %i.hyz, 0
  br i1 %.not599.i, label %._crit_edge604.i, label %.lr.ph603.i

.lr.ph603.i:                                      ; preds = %bb.eag
  %i.hza = load ptr, ptr %i.aet, align 8, !tbaa !152
  %i.hzb = load i32, ptr %i.hra, align 4, !tbaa !153
  %i.hzc = zext i32 %i.hzb to i64
  %i.hzd = getelementptr inbounds nuw [4 x i8], ptr %i.hza, i64 %i.hzc
  %i.hze = sext i8 %i.hqn to i32                  ; 15 uses
  %i.hzf = zext i8 %i.hqu to i64
  %i.hzg = getelementptr inbounds nuw i8, ptr @ir_type_size, i64 %i.hzf ; 5 uses
  %i.hzh = sext i8 %.0500.i to i32                ; 32 uses
  %.630.i = select i1 %or.cond.i1614, i32 28070, i32 28075
  %.631.i = select i1 %or.cond.i1614, i32 22874, i32 22882
  br label %bb.eah

bb.eah:                                           ; preds = %bb.ecd, %.lr.ph603.i
  %.2601.i = phi ptr [ %i.hzd, %.lr.ph603.i ], [ %i.icw, %bb.ecd ] ; 2 uses
  %.2511600.i = phi i32 [ %i.hyz, %.lr.ph603.i ], [ %i.icx, %bb.ecd ]
  %i.hzi = load i32, ptr %.2601.i, align 4, !tbaa !63 ; 4 uses
  %i.hzj = load ptr, ptr %0, align 8, !tbaa !42   ; 3 uses
  %i.hzk = load ptr, ptr %i.adv, align 8, !tbaa !129
  %i.hzl = zext i32 %i.hzi to i64
  %i.hzm = getelementptr inbounds nuw [52 x i8], ptr %i.hzk, i64 %i.hzl
  %i.hzn = getelementptr inbounds nuw i8, ptr %i.hzm, i64 4
  %i.hzo = load i32, ptr %i.hzn, align 4, !tbaa !131
  %i.hzp = sext i32 %i.hzo to i64
  %i.hzq = getelementptr inbounds [16 x i8], ptr %i.hzj, i64 %i.hzp ; 4 uses
  %i.hzr = load i8, ptr %i.hzq, align 8, !tbaa !22
  switch i8 %i.hzr, label %bb.ecd [
    i8 104, label %bb.eai
    i8 105, label %bb.ebc
  ]

bb.eai:                                           ; preds = %bb.eah
  %i.hzs = getelementptr inbounds nuw i8, ptr %i.hzq, i64 8
  %i.hzt = load i32, ptr %i.hzs, align 8, !tbaa !22
  %i.hzu = sext i32 %i.hzt to i64
  %i.hzv = getelementptr inbounds [16 x i8], ptr %i.hzj, i64 %i.hzu
  %i.hzw = call i32 @ir_skip_empty_target_blocks(ptr noundef nonnull %0, i32 noundef %i.hzi) #23
  %i.hzx = getelementptr inbounds nuw i8, ptr %i.hzv, i64 8
  %i.hzy = load i64, ptr %i.hzx, align 8          ; 5 uses
  %i.hzz = icmp eq i64 %i.hzy, 0
  %i.iaa = trunc i64 %i.hzy to i32                ; 5 uses
  br i1 %i.hzz, label %bb.eaj, label %bb.eao

bb.eaj:                                           ; preds = %bb.eai
  %i.iab = load i8, ptr %i.hzg, align 1, !tbaa !22
  %i.iac = zext i8 %i.iab to i32                  ; 2 uses
  %i.iad = call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.iac)
  %i.iae = icmp eq i32 %i.iad, 1
  br i1 %i.iae, label %.split17.i, label %bb.eak

.split17.i:                                       ; preds = %bb.eaj
  %i.iaf = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.iac, i1 true)
  switch i32 %i.iaf, label %bb.eak [
    i32 3, label %bb.ean
    i32 1, label %bb.eal
    i32 2, label %bb.eam
  ]

bb.eak:                                           ; preds = %.split17.i, %bb.eaj
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 8436, i32 noundef %i.hzh, i32 noundef %i.hzh)
  br label %bb.ebb

bb.eal:                                           ; preds = %.split17.i
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 8444, i32 noundef %i.hzh, i32 noundef %i.hzh)
  br label %bb.ebb

bb.eam:                                           ; preds = %.split17.i
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 8445, i32 noundef %i.hzh, i32 noundef %i.hzh)
  br label %bb.ebb

bb.ean:                                           ; preds = %.split17.i
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 8453, i32 noundef %i.hzh, i32 noundef %i.hzh)
  br label %bb.ebb

bb.eao:                                           ; preds = %bb.eai
  br i1 %or.cond.i1614, label %bb.eap, label %bb.eaq

bb.eap:                                           ; preds = %bb.eao
  %i.iag = add i64 %i.hzy, 2147483648
  %or.cond565.i = icmp ult i64 %i.iag, 4294967296
  br i1 %or.cond565.i, label %bb.ear, label %bb.eaw

bb.eaq:                                           ; preds = %bb.eao
  %i.iah = icmp ult i64 %i.hzy, 4294967296
  br i1 %i.iah, label %bb.ear, label %bb.eaw

bb.ear:                                           ; preds = %bb.eaq, %bb.eap
  %i.iai = load i8, ptr %i.hzg, align 1, !tbaa !22
  %i.iaj = zext i8 %i.iai to i32                  ; 2 uses
  %i.iak = call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.iaj)
  %i.ial = icmp eq i32 %i.iak, 1
  br i1 %i.ial, label %.split20.i, label %bb.eas

.split20.i:                                       ; preds = %bb.ear
  %i.iam = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.iaj, i1 true)
  switch i32 %i.iam, label %bb.eas [
    i32 3, label %bb.eav
    i32 1, label %bb.eat
    i32 2, label %bb.eau
  ]

bb.eas:                                           ; preds = %.split20.i, %bb.ear
  %i.ian = and i32 %i.iaa, 255
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 19695, i32 noundef %i.hzh, i32 noundef %i.ian)
  br label %bb.ebb

bb.eat:                                           ; preds = %.split20.i
  %i.iao = and i32 %i.iaa, 65535
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 19703, i32 noundef %i.hzh, i32 noundef %i.iao)
  br label %bb.ebb

bb.eau:                                           ; preds = %.split20.i
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 19712, i32 noundef %i.hzh, i32 noundef %i.iaa)
  br label %bb.ebb

bb.eav:                                           ; preds = %.split20.i
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 19720, i32 noundef %i.hzh, i32 noundef %i.iaa)
  br label %bb.ebb

bb.eaw:                                           ; preds = %bb.eaq, %bb.eap
  %i.iap = lshr i64 %i.hzy, 32
  %i.iaq = trunc nuw i64 %i.iap to i32
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 20, i32 noundef %i.hze, i32 noundef %i.iaa, i32 noundef %i.iaq)
  %i.iar = load i8, ptr %i.hzg, align 1, !tbaa !22
  %i.ias = zext i8 %i.iar to i32                  ; 2 uses
  %i.iat = call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.ias)
  %i.iau = icmp eq i32 %i.iat, 1
  br i1 %i.iau, label %.split21.i, label %bb.eax

.split21.i:                                       ; preds = %bb.eaw
  %i.iav = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ias, i1 true)
  switch i32 %i.iav, label %bb.eax [
    i32 3, label %bb.eba
    i32 1, label %bb.eay
    i32 2, label %bb.eaz
  ]

bb.eax:                                           ; preds = %.split21.i, %bb.eaw
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 4729, i32 noundef %i.hze, i32 noundef %i.hzh)
  br label %bb.ebb

bb.eay:                                           ; preds = %.split21.i
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 4737, i32 noundef %i.hze, i32 noundef %i.hzh)
  br label %bb.ebb

bb.eaz:                                           ; preds = %.split21.i
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 4738, i32 noundef %i.hze, i32 noundef %i.hzh)
  br label %bb.ebb

bb.eba:                                           ; preds = %.split21.i
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 4746, i32 noundef %i.hze, i32 noundef %i.hzh)
  br label %bb.ebb

bb.ebb:                                           ; preds = %bb.eba, %bb.eaz, %bb.eay, %bb.eax, %bb.eav, %bb.eau, %bb.eat, %bb.eas, %bb.ean, %bb.eam, %bb.eal, %bb.eak
  call void (ptr, i32, ...) @dasm_put(ptr noundef nonnull %i.hqg, i32 noundef 22850, i32 noundef %i.hzw)
  br label %bb.ecd

bb.ebc:                                           ; preds = %bb.eah
  %i.iaw = getelementptr inbounds nuw i8, ptr %i.hzq, i64 8
  %i.iax = load i32, ptr %i.iaw, align 8, !tbaa !22
  %i.iay = sext i32 %i.iax to i64
  %i.iaz = getelementptr inbounds [16 x i8], ptr %i.hzj, i64 %i.iay
  %i.iba = call i32 @ir_skip_empty_target_blocks(ptr noundef nonnull %0, i32 noundef %i.hzi) #23 ; 0 uses
  %i.ibb = getelementptr inbounds nuw i8, ptr %i.iaz, i64 8
  %i.ibc = load i64, ptr %i.ibb, align 8          ; 5 uses
  br i1 %or.cond.i1614, label %bb.ebd, label %bb.ebe

bb.ebd:                                           ; preds = %bb.ebc
  %i.ibd = add i64 %i.ibc, 2147483648
  %or.cond566.i = icmp ult i64 %i.ibd, 4294967296
  %i.ibe = trunc i64 %i.ibc to i32                ; 2 uses
  br i1 %or.cond566.i, label %bb.ebf, label %bb.ebk

bb.ebe:                                           ; preds = %bb.ebc
  %i.ibf = icmp ult i64 %i.ibc, 4294967296
  %i.ibg = trunc i64 %i.ibc to i32                ; 2 uses
  br i1 %i.ibf, label %bb.ebf, label %bb.ebk

bb.ebf:                                           ; preds = %bb.ebe, %bb.ebd
  %i.ibh = phi i32 [ %i.ibe, %bb.ebd ], [ %i.ibg, %bb.ebe ] ; 4 uses
  %i.ibi = load i8, ptr %i.hzg, align 1, !tbaa !22 ; 5 uses
  %i.ibj = zext i8 %i.ibi to i32                  ; 2 uses
  %i.ibk = call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.ibj)
  %i.ibl = icmp eq i32 %i.ibk, 1
  br i1 %i.ibl, label %.split24.i, label %bb.ebg

.split24.i:                                       ; preds = %bb.ebf
end_hunk_0
