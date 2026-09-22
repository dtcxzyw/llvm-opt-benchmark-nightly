Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yyjson/original/yyjson?download=true
inline.NumInlined: 38
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 114
loop-unroll.NumUnrolled: 115
begin_hunk_0_@yyjson_val_write_opts:bb.a
  %i.clo = lshr i64 %i.byx, 32
  %i.clp = trunc nuw i64 %i.clo to i32            ; 2 uses
  %i.clq = or i32 %1, %i.clp                      ; 3 uses
  %.not38.i610 = icmp ult i32 %i.clq, 16777216
  br i1 %.not38.i610, label %bb.lm, label %bb.ln, !prof !62

bb.lm:                                            ; preds = %bb.ll
  %i.clr = tail call fastcc ptr @write_f64_raw(ptr noundef %.0.i748.lcssa, i64 noundef %i.bza, i32 noundef %1)
  br label %write_num.exit662

bb.ln:                                            ; preds = %bb.ll
  %.not39.i611 = icmp ult i32 %i.clq, 268435456
  br i1 %.not39.i611, label %bb.lp, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.cls = lshr i32 %i.clp, 28                    ; 2 uses
  %.not41.i612 = icmp eq i32 %i.cls, 0
  %i.clt = select i1 %.not41.i612, i32 %i.asb, i32 %i.cls
  %i.clu = tail call fastcc ptr @write_f64_raw_fixed(ptr noundef %.0.i748.lcssa, i64 noundef %i.bza, i32 noundef %1, i32 noundef %i.clt)
  br label %write_num.exit662

bb.lp:                                            ; preds = %bb.ln
  %.not40.i614 = icmp samesign ult i32 %i.clq, 134217728
  br i1 %.not40.i614, label %bb.lr, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.clv = tail call fastcc ptr @write_f32_raw(ptr noundef %.0.i748.lcssa, i64 noundef %i.bza, i32 noundef %1)
  br label %write_num.exit662

bb.lr:                                            ; preds = %bb.lp
  %i.clw = tail call fastcc ptr @write_f64_raw(ptr noundef %.0.i748.lcssa, i64 noundef %i.bza, i32 noundef %1)
  br label %write_num.exit662

write_num.exit662:                                ; preds = %bb.lm, %bb.lo, %bb.lq, %bb.lr
  %.1.i613 = phi ptr [ %i.clw, %bb.lr ], [ %i.clr, %bb.lm ], [ %i.clu, %bb.lo ], [ %i.clv, %bb.lq ] ; 2 uses
  %.not591.i = icmp eq ptr %.1.i613, null
  br i1 %.not591.i, label %bb.mp, label %write_num.exit662.thread, !prof !153

write_num.exit662.thread:                         ; preds = %bb.kz, %bb.ky, %bb.kw, %bb.ku, %write_u32_len_1_to_8.exit55.i639, %write_u32_len_5_to_8.exit.i623, %write_num.exit662
  %.1.i6131145 = phi ptr [ %.1.i613, %write_num.exit662 ], [ %i.ccq, %bb.kz ], [ %i.cbi, %bb.ky ], [ %i.cai, %bb.kw ], [ %i.bzq, %bb.ku ], [ %i.chj, %write_u32_len_1_to_8.exit55.i639 ], [ %i.cln, %write_u32_len_5_to_8.exit.i623 ] ; 3 uses
  %i.clx = getelementptr inbounds nuw i8, ptr %.1.i6131145, i64 1
  store i8 44, ptr %.1.i6131145, align 1, !tbaa !100
  %i.cly = getelementptr inbounds nuw i8, ptr %.1.i6131145, i64 2
  store i8 10, ptr %i.clx, align 1, !tbaa !100
  br label %bb.mf

bb.ls:                                            ; preds = %bb.fx
  %i.clz = and i8 %i.aso, 6
  %i.cma = icmp eq i8 %i.clz, 6
  br i1 %i.cma, label %bb.lt, label %bb.ly

bb.lt:                                            ; preds = %bb.ls
  %i.cmb = trunc i64 %.01041 to i32
  %i.cmc = and i32 %i.asc, %i.cmb
  %.not583.i = icmp ne i32 %i.cmc, 0              ; 4 uses
  %i.cmd = lshr i64 %i.asn, 8                     ; 2 uses
  %i.cme = icmp eq i8 %i.asp, 7                   ; 4 uses
  %i.cmf = icmp eq i64 %i.cmd, 0
  br i1 %i.cmf, label %bb.lu, label %bb.lw, !prof !45

bb.lu:                                            ; preds = %bb.lt
  %i.cmg = select i1 %.not583.i, i64 16, i64 %i.asf ; 2 uses
  %i.cmh = getelementptr inbounds nuw i8, ptr %.0523.i, i64 %i.cmg
  %.not586.i = icmp ult ptr %i.cmh, %.0493.i
  br i1 %.not586.i, label %bb.lv, label %size_align_up.exit626.i, !prof !62

size_align_up.exit626.i:                          ; preds = %bb.lu
  %i.cmi = lshr i64 %.0484.i, 1
  %i.cmj = tail call i64 @llvm.umax.i64(i64 %i.cmi, i64 %i.cmg)
  %i.cmk = add i64 %i.cmj, 7
  %i.cml = and i64 %i.cmk, -8
  %i.cmm = add i64 %i.cml, %.0484.i               ; 4 uses
  %i.cmn = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0542.i, i64 noundef %.0484.i, i64 noundef %i.cmm) #33, !inline_history !371 ; 6 uses
  %.not587.i = icmp eq ptr %i.cmn, null
  br i1 %.not587.i, label %.loopexit1398, label %.thread1146, !prof !45

.thread1146:                                      ; preds = %size_align_up.exit626.i
  %i.cmo = ptrtoint ptr %.0504.i to i64
  %i.cmp = ptrtoint ptr %.0493.i to i64           ; 2 uses
  %i.cmq = sub i64 %i.cmo, %i.cmp                 ; 2 uses
  %i.cmr = ptrtoint ptr %.0523.i to i64
  %i.cms = ptrtoint ptr %.0542.i to i64           ; 2 uses
  %i.cmt = sub i64 %i.cmr, %i.cms
  %i.cmu = sub i64 %i.cmp, %i.cms
  %i.cmv = sub i64 %i.cmm, %i.cmq
  %i.cmw = getelementptr inbounds nuw i8, ptr %i.cmn, i64 %i.cmv ; 2 uses
  %i.cmx = getelementptr inbounds nuw i8, ptr %i.cmn, i64 %i.cmu
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cmw, ptr nonnull align 1 %i.cmx, i64 %i.cmq, i1 false)
  %i.cmy = getelementptr inbounds nuw i8, ptr %i.cmn, i64 %i.cmt
  %i.cmz = getelementptr inbounds nuw i8, ptr %i.cmn, i64 %i.cmm
  br label %bb.lv

bb.lv:                                            ; preds = %.thread1146, %bb.lu
  %.6548.i = phi ptr [ %i.cmn, %.thread1146 ], [ %.0542.i, %bb.lu ]
  %.7530.i = phi ptr [ %i.cmy, %.thread1146 ], [ %.0523.i, %bb.lu ] ; 3 uses
  %.6510.i = phi ptr [ %i.cmz, %.thread1146 ], [ %.0504.i, %bb.lu ]
  %.6499.i = phi ptr [ %i.cmw, %.thread1146 ], [ %.0493.i, %bb.lu ]
  %.3487.i = phi i64 [ %i.cmm, %.thread1146 ], [ %.0484.i, %bb.lu ]
  %.not.i7222456 = select i1 %.not583.i, i1 true, i1 %.not.i72224563294
  br i1 %.not.i7222456, label %write_indent.exit, label %select.unfold1152.preheader

select.unfold1152.preheader:                      ; preds = %bb.lv
  br i1 %lcmp.mod5972.not, label %select.unfold1152.prol.loopexit, label %select.unfold1152.prol

select.unfold1152.prol:                           ; preds = %select.unfold1152.preheader, %select.unfold1152.prol
  %.0.i7212458.prol = phi ptr [ %i.cnb, %select.unfold1152.prol ], [ %.7530.i, %select.unfold1152.preheader ] ; 2 uses
  %.04.i2457.prol = phi i64 [ %i.cna, %select.unfold1152.prol ], [ %.0482.i.ph, %select.unfold1152.preheader ]
  %prol.iter5973 = phi i64 [ %prol.iter5973.next, %select.unfold1152.prol ], [ 0, %select.unfold1152.preheader ]
  %i.cna = add i64 %.04.i2457.prol, -1            ; 2 uses
  store i32 538976288, ptr %.0.i7212458.prol, align 1
  %i.cnb = getelementptr inbounds nuw i8, ptr %.0.i7212458.prol, i64 %i.arh ; 3 uses
  %prol.iter5973.next = add i64 %prol.iter5973, 1 ; 2 uses
  %prol.iter5973.cmp.not = icmp eq i64 %prol.iter5973.next, %xtraiter5971
  br i1 %prol.iter5973.cmp.not, label %select.unfold1152.prol.loopexit, label %select.unfold1152.prol, !llvm.loop !382

select.unfold1152.prol.loopexit:                  ; preds = %select.unfold1152.prol, %select.unfold1152.preheader
  %.lcssa5877.unr = phi ptr [ poison, %select.unfold1152.preheader ], [ %i.cnb, %select.unfold1152.prol ]
  %.0.i7212458.unr = phi ptr [ %.7530.i, %select.unfold1152.preheader ], [ %i.cnb, %select.unfold1152.prol ]
  %.04.i2457.unr = phi i64 [ %.0482.i.ph, %select.unfold1152.preheader ], [ %i.cna, %select.unfold1152.prol ]
  br i1 %i.asm, label %write_indent.exit, label %select.unfold1152

select.unfold1152:                                ; preds = %select.unfold1152.prol.loopexit, %select.unfold1152
  %.0.i7212458 = phi ptr [ %i.cnk, %select.unfold1152 ], [ %.0.i7212458.unr, %select.unfold1152.prol.loopexit ] ; 2 uses
  %.04.i2457 = phi i64 [ %i.cnj, %select.unfold1152 ], [ %.04.i2457.unr, %select.unfold1152.prol.loopexit ]
  store i32 538976288, ptr %.0.i7212458, align 1
  %i.cnc = getelementptr inbounds nuw i8, ptr %.0.i7212458, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cnc, align 1
  %i.cnd = getelementptr inbounds nuw i8, ptr %i.cnc, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cnd, align 1
  %i.cne = getelementptr inbounds nuw i8, ptr %i.cnd, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cne, align 1
  %i.cnf = getelementptr inbounds nuw i8, ptr %i.cne, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cnf, align 1
  %i.cng = getelementptr inbounds nuw i8, ptr %i.cnf, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cng, align 1
  %i.cnh = getelementptr inbounds nuw i8, ptr %i.cng, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cnh, align 1
  %i.cni = getelementptr inbounds nuw i8, ptr %i.cnh, i64 %i.arh ; 2 uses
  %i.cnj = add i64 %.04.i2457, -8                 ; 2 uses
  store i32 538976288, ptr %i.cni, align 1
  %i.cnk = getelementptr inbounds nuw i8, ptr %i.cni, i64 %i.arh ; 2 uses
  %.not.i722.7 = icmp eq i64 %i.cnj, 0
  br i1 %.not.i722.7, label %write_indent.exit, label %select.unfold1152, !llvm.loop !27

write_indent.exit:                                ; preds = %select.unfold1152.prol.loopexit, %select.unfold1152, %bb.lv
  %.0.i721.lcssa = phi ptr [ %.7530.i, %bb.lv ], [ %.lcssa5877.unr, %select.unfold1152.prol.loopexit ], [ %i.cnk, %select.unfold1152 ] ; 5 uses
  %i.cnl = select i1 %i.cme, i8 32, i8 0          ; 2 uses
  %i.cnm = or disjoint i8 %i.cnl, 91
  %i.cnn = getelementptr inbounds nuw i8, ptr %.0.i721.lcssa, i64 1
  store i8 %i.cnm, ptr %.0.i721.lcssa, align 1, !tbaa !100
  %i.cno = or disjoint i8 %i.cnl, 93
  %i.cnp = getelementptr inbounds nuw i8, ptr %.0.i721.lcssa, i64 2
  store i8 %i.cno, ptr %i.cnn, align 1, !tbaa !100
  %i.cnq = getelementptr inbounds nuw i8, ptr %.0.i721.lcssa, i64 3
  store i8 44, ptr %i.cnp, align 1, !tbaa !100
  %i.cnr = getelementptr inbounds nuw i8, ptr %.0.i721.lcssa, i64 4
  store i8 10, ptr %i.cnq, align 1, !tbaa !100
  br label %bb.mf

bb.lw:                                            ; preds = %bb.lt
  %i.cns = zext i1 %i.cme to i8
  %i.cnt = add i64 %i.asd, 32
  %i.cnu = select i1 %.not583.i, i64 32, i64 %i.cnt ; 2 uses
  %i.cnv = getelementptr inbounds nuw i8, ptr %.0523.i, i64 %i.cnu
  %.not584.i = icmp ult ptr %i.cnv, %.0493.i
  br i1 %.not584.i, label %bb.lx, label %size_align_up.exit624.i, !prof !62

size_align_up.exit624.i:                          ; preds = %bb.lw
  %i.cnw = lshr i64 %.0484.i, 1
  %i.cnx = tail call i64 @llvm.umax.i64(i64 %i.cnw, i64 %i.cnu)
  %i.cny = add i64 %i.cnx, 7
  %i.cnz = and i64 %i.cny, -8
  %i.coa = add i64 %i.cnz, %.0484.i               ; 4 uses
  %i.cob = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0542.i, i64 noundef %.0484.i, i64 noundef %i.coa) #33, !inline_history !371 ; 6 uses
  %.not585.i = icmp eq ptr %i.cob, null
  br i1 %.not585.i, label %.loopexit1398, label %.thread1153, !prof !45

.thread1153:                                      ; preds = %size_align_up.exit624.i
  %i.coc = ptrtoint ptr %.0504.i to i64
  %i.cod = ptrtoint ptr %.0493.i to i64           ; 2 uses
  %i.coe = sub i64 %i.coc, %i.cod                 ; 2 uses
  %i.cof = ptrtoint ptr %.0523.i to i64
  %i.cog = ptrtoint ptr %.0542.i to i64           ; 2 uses
  %i.coh = sub i64 %i.cof, %i.cog
  %i.coi = sub i64 %i.cod, %i.cog
  %i.coj = sub i64 %i.coa, %i.coe
  %i.cok = getelementptr inbounds nuw i8, ptr %i.cob, i64 %i.coj ; 2 uses
  %i.col = getelementptr inbounds nuw i8, ptr %i.cob, i64 %i.coi
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cok, ptr nonnull align 1 %i.col, i64 %i.coe, i1 false)
  %i.com = getelementptr inbounds nuw i8, ptr %i.cob, i64 %i.coh
  %i.con = getelementptr inbounds nuw i8, ptr %i.cob, i64 %i.coa
  br label %bb.lx

bb.lx:                                            ; preds = %.thread1153, %bb.lw
  %.8550.i = phi ptr [ %i.cob, %.thread1153 ], [ %.0542.i, %bb.lw ]
  %.9532.i = phi ptr [ %i.com, %.thread1153 ], [ %.0523.i, %bb.lw ] ; 3 uses
  %.8512.i = phi ptr [ %i.con, %.thread1153 ], [ %.0504.i, %bb.lw ]
  %.8501.i = phi ptr [ %i.cok, %.thread1153 ], [ %.0493.i, %bb.lw ]
  %.4488.i = phi i64 [ %i.coa, %.thread1153 ], [ %.0484.i, %bb.lw ]
  %i.coo = getelementptr inbounds i8, ptr %.8501.i, i64 -8 ; 2 uses
  %6 = zext nneg i8 %.01040.ph to i64
  %7 = shl i64 %.01041, 1
  %i.cop = or disjoint i64 %7, %6
  store i64 %i.cop, ptr %i.coo, align 8, !tbaa !398
  %i.coq = zext i1 %i.cme to i64
  %i.cor = shl nuw nsw i64 %i.cmd, %i.coq
  %.not.i72524633293 = icmp eq i64 %.0482.i.ph, 0
  %.not.i7252463 = select i1 %.not583.i, i1 true, i1 %.not.i72524633293
  br i1 %.not.i7252463, label %write_indent.exit726, label %select.unfold1159.preheader

select.unfold1159.preheader:                      ; preds = %bb.lx
  %xtraiter5974 = and i64 %.0482.i.ph, 7          ; 2 uses
  %lcmp.mod5975.not = icmp eq i64 %xtraiter5974, 0
  br i1 %lcmp.mod5975.not, label %select.unfold1159.prol.loopexit, label %select.unfold1159.prol

select.unfold1159.prol:                           ; preds = %select.unfold1159.preheader, %select.unfold1159.prol
  %.0.i7242465.prol = phi ptr [ %i.cot, %select.unfold1159.prol ], [ %.9532.i, %select.unfold1159.preheader ] ; 2 uses
  %.04.i7232464.prol = phi i64 [ %i.cos, %select.unfold1159.prol ], [ %.0482.i.ph, %select.unfold1159.preheader ]
  %prol.iter5976 = phi i64 [ %prol.iter5976.next, %select.unfold1159.prol ], [ 0, %select.unfold1159.preheader ]
  %i.cos = add i64 %.04.i7232464.prol, -1         ; 2 uses
  store i32 538976288, ptr %.0.i7242465.prol, align 1
  %i.cot = getelementptr inbounds nuw i8, ptr %.0.i7242465.prol, i64 %i.arh ; 3 uses
  %prol.iter5976.next = add i64 %prol.iter5976, 1 ; 2 uses
  %prol.iter5976.cmp.not = icmp eq i64 %prol.iter5976.next, %xtraiter5974
  br i1 %prol.iter5976.cmp.not, label %select.unfold1159.prol.loopexit, label %select.unfold1159.prol, !llvm.loop !383

select.unfold1159.prol.loopexit:                  ; preds = %select.unfold1159.prol, %select.unfold1159.preheader
  %.lcssa5925.unr = phi ptr [ poison, %select.unfold1159.preheader ], [ %i.cot, %select.unfold1159.prol ]
  %.0.i7242465.unr = phi ptr [ %.9532.i, %select.unfold1159.preheader ], [ %i.cot, %select.unfold1159.prol ]
  %.04.i7232464.unr = phi i64 [ %.0482.i.ph, %select.unfold1159.preheader ], [ %i.cos, %select.unfold1159.prol ]
  %i.cou = icmp ult i64 %i.asg, 7
  br i1 %i.cou, label %write_indent.exit726, label %select.unfold1159

select.unfold1159:                                ; preds = %select.unfold1159.prol.loopexit, %select.unfold1159
  %.0.i7242465 = phi ptr [ %i.cpd, %select.unfold1159 ], [ %.0.i7242465.unr, %select.unfold1159.prol.loopexit ] ; 2 uses
  %.04.i7232464 = phi i64 [ %i.cpc, %select.unfold1159 ], [ %.04.i7232464.unr, %select.unfold1159.prol.loopexit ]
  store i32 538976288, ptr %.0.i7242465, align 1
  %i.cov = getelementptr inbounds nuw i8, ptr %.0.i7242465, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cov, align 1
  %i.cow = getelementptr inbounds nuw i8, ptr %i.cov, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cow, align 1
  %i.cox = getelementptr inbounds nuw i8, ptr %i.cow, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cox, align 1
  %i.coy = getelementptr inbounds nuw i8, ptr %i.cox, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.coy, align 1
  %i.coz = getelementptr inbounds nuw i8, ptr %i.coy, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.coz, align 1
  %i.cpa = getelementptr inbounds nuw i8, ptr %i.coz, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cpa, align 1
  %i.cpb = getelementptr inbounds nuw i8, ptr %i.cpa, i64 %i.arh ; 2 uses
  %i.cpc = add i64 %.04.i7232464, -8              ; 2 uses
  store i32 538976288, ptr %i.cpb, align 1
  %i.cpd = getelementptr inbounds nuw i8, ptr %i.cpb, i64 %i.arh ; 2 uses
  %.not.i725.7 = icmp eq i64 %i.cpc, 0
  br i1 %.not.i725.7, label %write_indent.exit726, label %select.unfold1159, !llvm.loop !27

write_indent.exit726:                             ; preds = %select.unfold1159.prol.loopexit, %select.unfold1159, %bb.lx
  %.0.i724.lcssa = phi ptr [ %.9532.i, %bb.lx ], [ %.lcssa5925.unr, %select.unfold1159.prol.loopexit ], [ %i.cpd, %select.unfold1159 ] ; 3 uses
  %i.cpe = add i64 %.0482.i.ph, 1
  %i.cpf = select i1 %i.cme, i8 123, i8 91
  %i.cpg = getelementptr inbounds nuw i8, ptr %.0.i724.lcssa, i64 1
  store i8 %i.cpf, ptr %.0.i724.lcssa, align 1, !tbaa !100
  %i.cph = getelementptr inbounds nuw i8, ptr %.0.i724.lcssa, i64 2
  store i8 10, ptr %i.cpg, align 1, !tbaa !100
  %i.cpi = getelementptr inbounds nuw i8, ptr %.0565.i, i64 16
  br label %.outer1403.backedge

.outer1403.backedge:                              ; preds = %bb.mh, %write_indent.exit726
  %.01041.ph.be = phi i64 [ %i.cor, %write_indent.exit726 ], [ %i.cvo, %bb.mh ]
  %.01040.ph.be = phi i8 [ %i.cns, %write_indent.exit726 ], [ %i.cvn, %bb.mh ]
  %.0565.i.ph.be = phi ptr [ %i.cpi, %write_indent.exit726 ], [ %i.cts, %bb.mh ]
  %.0542.i.ph.be = phi ptr [ %.8550.i, %write_indent.exit726 ], [ %.18560.i, %bb.mh ]
  %.0523.i.ph.be = phi ptr [ %i.cph, %write_indent.exit726 ], [ %i.cvq, %bb.mh ]
  %.0504.i.ph.be = phi ptr [ %.8512.i, %write_indent.exit726 ], [ %.18522.i, %bb.mh ]
  %.0493.i.ph.be = phi ptr [ %i.coo, %write_indent.exit726 ], [ %i.cvj, %bb.mh ]
  %.0484.i.ph.be = phi i64 [ %.4488.i, %write_indent.exit726 ], [ %.10.i, %bb.mh ]
  %.0482.i.ph.be = phi i64 [ %i.cpe, %write_indent.exit726 ], [ %i.cut, %bb.mh ]
  br label %.outer1403

bb.ly:                                            ; preds = %bb.ls
  switch i8 %i.asp, label %bb.mn [
    i8 3, label %bb.lz
    i8 2, label %bb.mb
    i8 1, label %bb.md
  ]

bb.lz:                                            ; preds = %bb.ly
  %i.cpj = trunc i64 %.01041 to i32
  %i.cpk = and i32 %i.asc, %i.cpj
  %.not580.i = icmp ne i32 %i.cpk, 0              ; 2 uses
  %i.cpl = select i1 %.not580.i, i64 16, i64 %i.asf ; 2 uses
  %i.cpm = getelementptr inbounds nuw i8, ptr %.0523.i, i64 %i.cpl
  %.not581.i = icmp ult ptr %i.cpm, %.0493.i
  br i1 %.not581.i, label %bb.ma, label %size_align_up.exit622.i, !prof !62

size_align_up.exit622.i:                          ; preds = %bb.lz
  %i.cpn = lshr i64 %.0484.i, 1
  %i.cpo = tail call i64 @llvm.umax.i64(i64 %i.cpn, i64 %i.cpl)
  %i.cpp = add i64 %i.cpo, 7
  %i.cpq = and i64 %i.cpp, -8
  %i.cpr = add i64 %i.cpq, %.0484.i               ; 4 uses
  %i.cps = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0542.i, i64 noundef %.0484.i, i64 noundef %i.cpr) #33, !inline_history !371 ; 6 uses
  %.not582.i = icmp eq ptr %i.cps, null
  br i1 %.not582.i, label %.loopexit1398, label %.thread1160, !prof !45

.thread1160:                                      ; preds = %size_align_up.exit622.i
  %i.cpt = ptrtoint ptr %.0504.i to i64
  %i.cpu = ptrtoint ptr %.0493.i to i64           ; 2 uses
  %i.cpv = sub i64 %i.cpt, %i.cpu                 ; 2 uses
  %i.cpw = ptrtoint ptr %.0523.i to i64
  %i.cpx = ptrtoint ptr %.0542.i to i64           ; 2 uses
  %i.cpy = sub i64 %i.cpw, %i.cpx
  %i.cpz = sub i64 %i.cpu, %i.cpx
  %i.cqa = sub i64 %i.cpr, %i.cpv
  %i.cqb = getelementptr inbounds nuw i8, ptr %i.cps, i64 %i.cqa ; 2 uses
  %i.cqc = getelementptr inbounds nuw i8, ptr %i.cps, i64 %i.cpz
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cqb, ptr nonnull align 1 %i.cqc, i64 %i.cpv, i1 false)
  %i.cqd = getelementptr inbounds nuw i8, ptr %i.cps, i64 %i.cpy
  %i.cqe = getelementptr inbounds nuw i8, ptr %i.cps, i64 %i.cpr
  br label %bb.ma

bb.ma:                                            ; preds = %.thread1160, %bb.lz
  %.10552.i = phi ptr [ %i.cps, %.thread1160 ], [ %.0542.i, %bb.lz ]
  %.11534.i = phi ptr [ %i.cqd, %.thread1160 ], [ %.0523.i, %bb.lz ] ; 3 uses
  %.10514.i = phi ptr [ %i.cqe, %.thread1160 ], [ %.0504.i, %bb.lz ]
  %.10503.i = phi ptr [ %i.cqb, %.thread1160 ], [ %.0493.i, %bb.lz ]
  %.5489.i = phi i64 [ %i.cpr, %.thread1160 ], [ %.0484.i, %bb.lz ]
  %.not.i7292450 = select i1 %.not580.i, i1 true, i1 %.not.i72924503292
  br i1 %.not.i7292450, label %write_indent.exit730, label %select.unfold1166.preheader

select.unfold1166.preheader:                      ; preds = %bb.ma
  br i1 %lcmp.mod5969.not, label %select.unfold1166.prol.loopexit, label %select.unfold1166.prol

select.unfold1166.prol:                           ; preds = %select.unfold1166.preheader, %select.unfold1166.prol
  %.0.i7282452.prol = phi ptr [ %i.cqg, %select.unfold1166.prol ], [ %.11534.i, %select.unfold1166.preheader ] ; 2 uses
  %.04.i7272451.prol = phi i64 [ %i.cqf, %select.unfold1166.prol ], [ %.0482.i.ph, %select.unfold1166.preheader ]
  %prol.iter5970 = phi i64 [ %prol.iter5970.next, %select.unfold1166.prol ], [ 0, %select.unfold1166.preheader ]
  %i.cqf = add i64 %.04.i7272451.prol, -1         ; 2 uses
  store i32 538976288, ptr %.0.i7282452.prol, align 1
  %i.cqg = getelementptr inbounds nuw i8, ptr %.0.i7282452.prol, i64 %i.arh ; 3 uses
  %prol.iter5970.next = add i64 %prol.iter5970, 1 ; 2 uses
  %prol.iter5970.cmp.not = icmp eq i64 %prol.iter5970.next, %xtraiter5968
  br i1 %prol.iter5970.cmp.not, label %select.unfold1166.prol.loopexit, label %select.unfold1166.prol, !llvm.loop !384

select.unfold1166.prol.loopexit:                  ; preds = %select.unfold1166.prol, %select.unfold1166.preheader
  %.lcssa5876.unr = phi ptr [ poison, %select.unfold1166.preheader ], [ %i.cqg, %select.unfold1166.prol ]
  %.0.i7282452.unr = phi ptr [ %.11534.i, %select.unfold1166.preheader ], [ %i.cqg, %select.unfold1166.prol ]
  %.04.i7272451.unr = phi i64 [ %.0482.i.ph, %select.unfold1166.preheader ], [ %i.cqf, %select.unfold1166.prol ]
  br i1 %i.asl, label %write_indent.exit730, label %select.unfold1166

select.unfold1166:                                ; preds = %select.unfold1166.prol.loopexit, %select.unfold1166
  %.0.i7282452 = phi ptr [ %i.cqp, %select.unfold1166 ], [ %.0.i7282452.unr, %select.unfold1166.prol.loopexit ] ; 2 uses
  %.04.i7272451 = phi i64 [ %i.cqo, %select.unfold1166 ], [ %.04.i7272451.unr, %select.unfold1166.prol.loopexit ]
  store i32 538976288, ptr %.0.i7282452, align 1
  %i.cqh = getelementptr inbounds nuw i8, ptr %.0.i7282452, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cqh, align 1
  %i.cqi = getelementptr inbounds nuw i8, ptr %i.cqh, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cqi, align 1
  %i.cqj = getelementptr inbounds nuw i8, ptr %i.cqi, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cqj, align 1
  %i.cqk = getelementptr inbounds nuw i8, ptr %i.cqj, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cqk, align 1
  %i.cql = getelementptr inbounds nuw i8, ptr %i.cqk, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cql, align 1
  %i.cqm = getelementptr inbounds nuw i8, ptr %i.cql, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cqm, align 1
  %i.cqn = getelementptr inbounds nuw i8, ptr %i.cqm, i64 %i.arh ; 2 uses
  %i.cqo = add i64 %.04.i7272451, -8              ; 2 uses
  store i32 538976288, ptr %i.cqn, align 1
  %i.cqp = getelementptr inbounds nuw i8, ptr %i.cqn, i64 %i.arh ; 2 uses
  %.not.i729.7 = icmp eq i64 %i.cqo, 0
  br i1 %.not.i729.7, label %write_indent.exit730, label %select.unfold1166, !llvm.loop !27

write_indent.exit730:                             ; preds = %select.unfold1166.prol.loopexit, %select.unfold1166, %bb.ma
  %.0.i728.lcssa = phi ptr [ %.11534.i, %bb.ma ], [ %.lcssa5876.unr, %select.unfold1166.prol.loopexit ], [ %i.cqp, %select.unfold1166 ] ; 2 uses
  %i.cqq = load i64, ptr %.0565.i, align 8, !tbaa !99
  %i.cqr = and i64 %i.cqq, 24
  %i.cqs = icmp ne i64 %i.cqr, 0                  ; 2 uses
  %.1307 = select i1 %i.cqs, i64 11185797034612, i64 2863564006908262
  store i64 %.1307, ptr %.0.i728.lcssa, align 1
  %.neg.i717 = sext i1 %i.cqs to i64
  %i.cqt = getelementptr i8, ptr %.0.i728.lcssa, i64 %.neg.i717
  %i.cqu = getelementptr i8, ptr %i.cqt, i64 7
  br label %bb.mf

bb.mb:                                            ; preds = %bb.ly
  %i.cqv = trunc i64 %.01041 to i32
  %i.cqw = and i32 %i.asc, %i.cqv
  %.not577.i = icmp ne i32 %i.cqw, 0              ; 2 uses
  %i.cqx = select i1 %.not577.i, i64 16, i64 %i.asf ; 2 uses
  %i.cqy = getelementptr inbounds nuw i8, ptr %.0523.i, i64 %i.cqx
  %.not578.i = icmp ult ptr %i.cqy, %.0493.i
  br i1 %.not578.i, label %bb.mc, label %size_align_up.exit620.i, !prof !62

size_align_up.exit620.i:                          ; preds = %bb.mb
  %i.cqz = lshr i64 %.0484.i, 1
  %i.cra = tail call i64 @llvm.umax.i64(i64 %i.cqz, i64 %i.cqx)
  %i.crb = add i64 %i.cra, 7
  %i.crc = and i64 %i.crb, -8
  %i.crd = add i64 %i.crc, %.0484.i               ; 4 uses
  %i.cre = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0542.i, i64 noundef %.0484.i, i64 noundef %i.crd) #33, !inline_history !371 ; 6 uses
  %.not579.i = icmp eq ptr %i.cre, null
  br i1 %.not579.i, label %.loopexit1398, label %.thread1167, !prof !45
end_hunk_0
begin_hunk_1_@yyjson_val_write_opts:bb.a
  %.neg41.i.i = mul nsw i32 %i.emn, -100
  %i.emq = add nsw i32 %.neg41.i.i, %i.emk
  %.neg42.i.i = mul nsw i32 %i.emp, -100
  %i.emr = add nsw i32 %.neg42.i.i, %i.eml
  %i.ems = icmp ult i64 %i.ecy, -8446744073709551616 ; 2 uses
  %i.emt = shl nuw nsw i32 %i.emn, 1
  %i.emu = zext nneg i32 %i.emt to i64
  %i.emv = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.emu
  %.neg43.i.i = sext i1 %i.ems to i64
  %i.emw = zext i1 %i.ems to i64
  %i.emx = getelementptr inbounds nuw i8, ptr %i.emv, i64 %i.emw
  %i.emy = load i16, ptr %i.emx, align 1
  store i16 %i.emy, ptr %i.ecz, align 1
  %i.emz = getelementptr inbounds i8, ptr %i.ecz, i64 %.neg43.i.i ; 4 uses
  %i.ena = getelementptr inbounds nuw i8, ptr %i.emz, i64 2
  %i.enb = shl nsw i32 %i.emq, 1
  %i.enc = zext i32 %i.enb to i64
  %i.end = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.enc
  %i.ene = load i16, ptr %i.end, align 2
  store i16 %i.ene, ptr %i.ena, align 1
  %i.enf = getelementptr inbounds nuw i8, ptr %i.emz, i64 4
  %i.eng = shl nuw nsw i32 %i.emp, 1
  %i.enh = zext nneg i32 %i.eng to i64
  %i.eni = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.enh
  %i.enj = load i16, ptr %i.eni, align 2
  store i16 %i.enj, ptr %i.enf, align 1
  %i.enk = getelementptr inbounds nuw i8, ptr %i.emz, i64 6
  %i.enl = shl nsw i32 %i.emr, 1
  %i.enm = zext i32 %i.enl to i64
  %i.enn = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.enm
  %i.eno = load i16, ptr %i.enn, align 2
  store i16 %i.eno, ptr %i.enk, align 1
  %i.enp = getelementptr inbounds nuw i8, ptr %i.emz, i64 8
  br label %write_u32_len_5_to_8.exit.i

write_u32_len_5_to_8.exit.i:                      ; preds = %bb.sj, %bb.si
  %.0.i61.i = phi ptr [ %i.emh, %bb.si ], [ %i.enp, %bb.sj ] ; 7 uses
  %i.enq = mul i32 %i.elh, 5243
  %i.enr = lshr i32 %i.enq, 19                    ; 2 uses
  %.neg.i62.i = mul i32 %i.enr, 2147483548
  %i.ens = add i32 %.neg.i62.i, %i.elh
  %i.ent = shl nuw nsw i32 %i.enr, 1
  %i.enu = zext nneg i32 %i.ent to i64
  %i.env = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.enu
  %i.enw = load i16, ptr %i.env, align 2
  store i16 %i.enw, ptr %.0.i61.i, align 1
  %i.enx = getelementptr inbounds nuw i8, ptr %.0.i61.i, i64 2
  %i.eny = shl i32 %i.ens, 1
  %i.enz = zext i32 %i.eny to i64
  %i.eoa = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.enz
  %i.eob = load i16, ptr %i.eoa, align 2
  store i16 %i.eob, ptr %i.enx, align 1
  %i.eoc = getelementptr inbounds nuw i8, ptr %.0.i61.i, i64 4
  %i.eod = and i64 %i.egn, 4294967295
  %i.eoe = mul nuw nsw i64 %i.eod, 109951163
  %i.eof = lshr i64 %i.eoe, 40
  %i.eog = trunc nuw nsw i64 %i.eof to i32        ; 3 uses
  %.neg.i57.i = mul i32 %i.eog, -10000
  %i.eoh = add i32 %.neg.i57.i, %i.ego            ; 2 uses
  %i.eoi = mul nuw i32 %i.eog, 5243
  %i.eoj = lshr i32 %i.eoi, 19                    ; 2 uses
  %i.eok = mul i32 %i.eoh, 5243
  %i.eol = lshr i32 %i.eok, 19                    ; 2 uses
  %.neg17.i58.i = mul nsw i32 %i.eoj, -100
  %i.eom = add nsw i32 %.neg17.i58.i, %i.eog
  %.neg18.i59.i = mul i32 %i.eol, 2147483548
  %i.eon = add i32 %.neg18.i59.i, %i.eoh
  %i.eoo = shl nuw nsw i32 %i.eoj, 1
  %i.eop = zext nneg i32 %i.eoo to i64
  %i.eoq = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.eop
  %i.eor = load i16, ptr %i.eoq, align 2
  store i16 %i.eor, ptr %i.eoc, align 1
  %i.eos = getelementptr inbounds nuw i8, ptr %.0.i61.i, i64 6
  %i.eot = shl nsw i32 %i.eom, 1
  %i.eou = zext i32 %i.eot to i64
  %i.eov = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.eou
  %i.eow = load i16, ptr %i.eov, align 2
  store i16 %i.eow, ptr %i.eos, align 1
  %i.eox = getelementptr inbounds nuw i8, ptr %.0.i61.i, i64 8
  %i.eoy = shl nuw nsw i32 %i.eol, 1
  %i.eoz = zext nneg i32 %i.eoy to i64
  %i.epa = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.eoz
  %i.epb = load i16, ptr %i.epa, align 2
  store i16 %i.epb, ptr %i.eox, align 1
  %i.epc = getelementptr inbounds nuw i8, ptr %.0.i61.i, i64 10
  %i.epd = shl i32 %i.eon, 1
  %i.epe = zext i32 %i.epd to i64
  %i.epf = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.epe
  %i.epg = load i16, ptr %i.epf, align 2
  store i16 %i.epg, ptr %i.epc, align 1
  %i.eph = getelementptr inbounds nuw i8, ptr %.0.i61.i, i64 12
  br label %write_num.exit.thread

bb.sk:                                            ; preds = %bb.rq
  %i.epi = lshr i64 %i.ecr, 32
  %i.epj = trunc nuw i64 %i.epi to i32            ; 2 uses
  %i.epk = or i32 %1, %i.epj                      ; 3 uses
  %.not38.i = icmp ult i32 %i.epk, 16777216
  br i1 %.not38.i, label %bb.sl, label %bb.sm, !prof !62

bb.sl:                                            ; preds = %bb.sk
  %i.epl = tail call fastcc ptr @write_f64_raw(ptr noundef %.5390.i, i64 noundef %i.ecu, i32 noundef %1)
  br label %write_num.exit

bb.sm:                                            ; preds = %bb.sk
  %.not39.i = icmp ult i32 %i.epk, 268435456
  br i1 %.not39.i, label %bb.so, label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  %i.epm = lshr i32 %i.epj, 28                    ; 2 uses
  %.not41.i = icmp eq i32 %i.epm, 0
  %i.epn = select i1 %.not41.i, i32 %i.cxi, i32 %i.epm
  %i.epo = tail call fastcc ptr @write_f64_raw_fixed(ptr noundef %.5390.i, i64 noundef %i.ecu, i32 noundef %1, i32 noundef %i.epn)
  br label %write_num.exit

bb.so:                                            ; preds = %bb.sm
  %.not40.i = icmp samesign ult i32 %i.epk, 134217728
  br i1 %.not40.i, label %bb.sq, label %bb.sp

bb.sp:                                            ; preds = %bb.so
  %i.epp = tail call fastcc ptr @write_f32_raw(ptr noundef %.5390.i, i64 noundef %i.ecu, i32 noundef %1)
  br label %write_num.exit

bb.sq:                                            ; preds = %bb.so
  %i.epq = tail call fastcc ptr @write_f64_raw(ptr noundef %.5390.i, i64 noundef %i.ecu, i32 noundef %1)
  br label %write_num.exit

write_num.exit:                                   ; preds = %bb.sl, %bb.sn, %bb.sp, %bb.sq
  %.1.i607 = phi ptr [ %i.epq, %bb.sq ], [ %i.epl, %bb.sl ], [ %i.epo, %bb.sn ], [ %i.epp, %bb.sp ] ; 2 uses
  %.not437.i = icmp eq ptr %.1.i607, null
  br i1 %.not437.i, label %bb.tl, label %write_num.exit.thread, !prof !153

write_num.exit.thread:                            ; preds = %bb.ry, %bb.rx, %bb.rv, %bb.rt, %write_u32_len_1_to_8.exit55.i, %write_u32_len_5_to_8.exit.i, %write_num.exit
  %.1.i6071247 = phi ptr [ %.1.i607, %write_num.exit ], [ %i.egk, %bb.ry ], [ %i.efc, %bb.rx ], [ %i.eec, %bb.rv ], [ %i.edk, %bb.rt ], [ %i.eld, %write_u32_len_1_to_8.exit55.i ], [ %i.eph, %write_u32_len_5_to_8.exit.i ] ; 2 uses
  %i.epr = getelementptr inbounds nuw i8, ptr %.1.i6071247, i64 1
  store i8 44, ptr %.1.i6071247, align 1, !tbaa !100
  br label %bb.tc

bb.sr:                                            ; preds = %bb.mw
  %i.eps = and i8 %i.cxl, 6
  %i.ept = icmp eq i8 %i.eps, 6
  br i1 %i.ept, label %bb.ss, label %bb.sw

bb.ss:                                            ; preds = %bb.sr
  %i.epu = lshr i64 %i.cxk, 8                     ; 2 uses
  %i.epv = icmp eq i8 %i.cxm, 7                   ; 4 uses
  %i.epw = getelementptr inbounds nuw i8, ptr %.0385.i, i64 16
  %.not433.i = icmp ult ptr %i.epw, %.0363.i
  br i1 %.not433.i, label %bb.st, label %size_align_up.exit463.i, !prof !62

size_align_up.exit463.i:                          ; preds = %bb.ss
  %i.epx = lshr i64 %.0356.i, 1
  %i.epy = tail call i64 @llvm.umax.i64(i64 %i.epx, i64 16)
  %i.epz = add nuw i64 %i.epy, 7
  %i.eqa = and i64 %i.epz, -8
  %i.eqb = add i64 %i.eqa, %.0356.i               ; 4 uses
  %i.eqc = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0400.i, i64 noundef %.0356.i, i64 noundef %i.eqb) #33, !inline_history !388 ; 6 uses
  %.not434.i = icmp eq ptr %i.eqc, null
  br i1 %.not434.i, label %.loopexit1368, label %.thread1248, !prof !45

.thread1248:                                      ; preds = %size_align_up.exit463.i
  %i.eqd = ptrtoint ptr %.0371.i to i64
  %i.eqe = ptrtoint ptr %.0363.i to i64           ; 2 uses
  %i.eqf = sub i64 %i.eqd, %i.eqe                 ; 2 uses
  %i.eqg = ptrtoint ptr %.0385.i to i64
  %i.eqh = ptrtoint ptr %.0400.i to i64           ; 2 uses
  %i.eqi = sub i64 %i.eqg, %i.eqh
  %i.eqj = sub i64 %i.eqe, %i.eqh
  %i.eqk = sub i64 %i.eqb, %i.eqf
  %i.eql = getelementptr inbounds nuw i8, ptr %i.eqc, i64 %i.eqk ; 2 uses
  %i.eqm = getelementptr inbounds nuw i8, ptr %i.eqc, i64 %i.eqj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.eql, ptr nonnull align 1 %i.eqm, i64 %i.eqf, i1 false)
  %i.eqn = getelementptr inbounds nuw i8, ptr %i.eqc, i64 %i.eqi
  %i.eqo = getelementptr inbounds nuw i8, ptr %i.eqc, i64 %i.eqb
  br label %bb.st

bb.st:                                            ; preds = %.thread1248, %bb.ss
  %.6406.i = phi ptr [ %i.eqc, %.thread1248 ], [ %.0400.i, %bb.ss ] ; 2 uses
  %.7392.i = phi ptr [ %i.eqn, %.thread1248 ], [ %.0385.i, %bb.ss ] ; 6 uses
  %.6377.i = phi ptr [ %i.eqo, %.thread1248 ], [ %.0371.i, %bb.ss ] ; 2 uses
  %.6369.i = phi ptr [ %i.eql, %.thread1248 ], [ %.0363.i, %bb.ss ] ; 2 uses
  %.3359.i = phi i64 [ %i.eqb, %.thread1248 ], [ %.0356.i, %bb.ss ] ; 2 uses
  %i.eqp = icmp eq i64 %i.epu, 0
  br i1 %i.eqp, label %bb.su, label %bb.sv, !prof !45

bb.su:                                            ; preds = %bb.st
  %i.eqq = select i1 %i.epv, i8 32, i8 0          ; 2 uses
  %i.eqr = or disjoint i8 %i.eqq, 91
  %i.eqs = getelementptr inbounds nuw i8, ptr %.7392.i, i64 1
  store i8 %i.eqr, ptr %.7392.i, align 1, !tbaa !100
  %i.eqt = or disjoint i8 %i.eqq, 93
  %i.equ = getelementptr inbounds nuw i8, ptr %.7392.i, i64 2
  store i8 %i.eqt, ptr %i.eqs, align 1, !tbaa !100
  %i.eqv = getelementptr inbounds nuw i8, ptr %.7392.i, i64 3
  store i8 44, ptr %i.equ, align 1, !tbaa !100
  br label %bb.tc

bb.sv:                                            ; preds = %bb.st
  %i.eqw = zext i1 %i.epv to i8
  %i.eqx = getelementptr inbounds i8, ptr %.6369.i, i64 -8 ; 2 uses
  %8 = zext nneg i8 %.01042.ph to i64
  %9 = shl i64 %.01044, 1
  %i.eqy = or disjoint i64 %9, %8
  store i64 %i.eqy, ptr %i.eqx, align 8, !tbaa !398
  %i.eqz = zext i1 %i.epv to i64
  %i.era = shl nuw nsw i64 %i.epu, %i.eqz
  %i.erb = select i1 %i.epv, i8 123, i8 91
  %i.erc = getelementptr inbounds nuw i8, ptr %.7392.i, i64 1
  store i8 %i.erb, ptr %.7392.i, align 1, !tbaa !100
  %i.erd = getelementptr inbounds nuw i8, ptr %.0418.i, i64 16
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.td, %bb.sv
  %.01044.ph.be = phi i64 [ %i.era, %bb.sv ], [ %i.euh, %bb.td ]
  %.01042.ph.be = phi i8 [ %i.eqw, %bb.sv ], [ %i.eug, %bb.td ]
  %.0418.i.ph.be = phi ptr [ %i.erd, %bb.sv ], [ %i.etv, %bb.td ]
  %.0400.i.ph.be = phi ptr [ %.6406.i, %bb.sv ], [ %.13413.i, %bb.td ]
  %.0385.i.ph.be = phi ptr [ %i.erc, %bb.sv ], [ %i.eub, %bb.td ]
  %.0371.i.ph.be = phi ptr [ %.6377.i, %bb.sv ], [ %.13384.i, %bb.td ]
  %.0363.i.ph.be = phi ptr [ %i.eqx, %bb.sv ], [ %i.euc, %bb.td ]
  %.0356.i.ph.be = phi i64 [ %.3359.i, %bb.sv ], [ %.7.i38, %bb.td ]
  br label %.outer

bb.sw:                                            ; preds = %bb.sr
  switch i8 %i.cxm, label %bb.tj [
    i8 3, label %bb.sx
    i8 2, label %bb.sy
    i8 1, label %bb.ta
  ]

bb.sx:                                            ; preds = %bb.sw
  %i.ere = getelementptr inbounds nuw i8, ptr %.0385.i, i64 16
  %.not431.i = icmp ult ptr %i.ere, %.0363.i
  br i1 %.not431.i, label %write_bool.exit, label %size_align_up.exit461.i, !prof !62

size_align_up.exit461.i:                          ; preds = %bb.sx
  %i.erf = lshr i64 %.0356.i, 1
  %i.erg = tail call i64 @llvm.umax.i64(i64 %i.erf, i64 16)
  %i.erh = add nuw i64 %i.erg, 7
  %i.eri = and i64 %i.erh, -8
  %i.erj = add i64 %i.eri, %.0356.i               ; 4 uses
  %i.erk = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0400.i, i64 noundef %.0356.i, i64 noundef %i.erj) #33, !inline_history !388 ; 6 uses
  %.not432.i = icmp eq ptr %i.erk, null
  br i1 %.not432.i, label %.loopexit1368, label %.thread1254, !prof !45

.thread1254:                                      ; preds = %size_align_up.exit461.i
  %i.erl = ptrtoint ptr %.0371.i to i64
  %i.erm = ptrtoint ptr %.0363.i to i64           ; 2 uses
  %i.ern = sub i64 %i.erl, %i.erm                 ; 2 uses
  %i.ero = ptrtoint ptr %.0385.i to i64
  %i.erp = ptrtoint ptr %.0400.i to i64           ; 2 uses
  %i.erq = sub i64 %i.ero, %i.erp
  %i.err = sub i64 %i.erm, %i.erp
  %i.ers = sub i64 %i.erj, %i.ern
  %i.ert = getelementptr inbounds nuw i8, ptr %i.erk, i64 %i.ers ; 2 uses
  %i.eru = getelementptr inbounds nuw i8, ptr %i.erk, i64 %i.err
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ert, ptr nonnull align 1 %i.eru, i64 %i.ern, i1 false)
  %i.erv = getelementptr inbounds nuw i8, ptr %i.erk, i64 %i.erq
  %i.erw = getelementptr inbounds nuw i8, ptr %i.erk, i64 %i.erj
  %.pre3182 = load i64, ptr %.0418.i, align 8, !tbaa !99
  br label %write_bool.exit

write_bool.exit:                                  ; preds = %.thread1254, %bb.sx
  %i.erx = phi i64 [ %.pre3182, %.thread1254 ], [ %i.cxk, %bb.sx ]
  %.8408.i = phi ptr [ %i.erk, %.thread1254 ], [ %.0400.i, %bb.sx ]
  %.9394.i = phi ptr [ %i.erv, %.thread1254 ], [ %.0385.i, %bb.sx ] ; 2 uses
  %.8379.i = phi ptr [ %i.erw, %.thread1254 ], [ %.0371.i, %bb.sx ]
  %.8.i56 = phi ptr [ %i.ert, %.thread1254 ], [ %.0363.i, %bb.sx ]
  %.4360.i = phi i64 [ %i.erj, %.thread1254 ], [ %.0356.i, %bb.sx ]
  %i.ery = and i64 %i.erx, 24
  %i.erz = icmp ne i64 %i.ery, 0                  ; 2 uses
  %.1308 = select i1 %i.erz, i64 11185797034612, i64 2863564006908262
  store i64 %.1308, ptr %.9394.i, align 1
  %.neg.i = sext i1 %i.erz to i64
  %i.esa = getelementptr i8, ptr %.9394.i, i64 %.neg.i
  %i.esb = getelementptr i8, ptr %i.esa, i64 6
  br label %bb.tc

bb.sy:                                            ; preds = %bb.sw
  %i.esc = getelementptr inbounds nuw i8, ptr %.0385.i, i64 16
  %.not429.i = icmp ult ptr %i.esc, %.0363.i
  br i1 %.not429.i, label %bb.sz, label %size_align_up.exit459.i, !prof !62

size_align_up.exit459.i:                          ; preds = %bb.sy
  %i.esd = lshr i64 %.0356.i, 1
  %i.ese = tail call i64 @llvm.umax.i64(i64 %i.esd, i64 16)
  %i.esf = add nuw i64 %i.ese, 7
  %i.esg = and i64 %i.esf, -8
  %i.esh = add i64 %i.esg, %.0356.i               ; 4 uses
  %i.esi = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0400.i, i64 noundef %.0356.i, i64 noundef %i.esh) #33, !inline_history !388 ; 6 uses
  %.not430.i = icmp eq ptr %i.esi, null
  br i1 %.not430.i, label %.loopexit1368, label %.thread1260, !prof !45

.thread1260:                                      ; preds = %size_align_up.exit459.i
  %i.esj = ptrtoint ptr %.0371.i to i64
  %i.esk = ptrtoint ptr %.0363.i to i64           ; 2 uses
  %i.esl = sub i64 %i.esj, %i.esk                 ; 2 uses
  %i.esm = ptrtoint ptr %.0385.i to i64
  %i.esn = ptrtoint ptr %.0400.i to i64           ; 2 uses
  %i.eso = sub i64 %i.esm, %i.esn
  %i.esp = sub i64 %i.esk, %i.esn
  %i.esq = sub i64 %i.esh, %i.esl
  %i.esr = getelementptr inbounds nuw i8, ptr %i.esi, i64 %i.esq ; 2 uses
  %i.ess = getelementptr inbounds nuw i8, ptr %i.esi, i64 %i.esp
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.esr, ptr nonnull align 1 %i.ess, i64 %i.esl, i1 false)
  %i.est = getelementptr inbounds nuw i8, ptr %i.esi, i64 %i.eso
  %i.esu = getelementptr inbounds nuw i8, ptr %i.esi, i64 %i.esh
  br label %bb.sz

bb.sz:                                            ; preds = %.thread1260, %bb.sy
  %.10410.i = phi ptr [ %i.esi, %.thread1260 ], [ %.0400.i, %bb.sy ]
  %.11396.i = phi ptr [ %i.est, %.thread1260 ], [ %.0385.i, %bb.sy ] ; 2 uses
  %.10381.i = phi ptr [ %i.esu, %.thread1260 ], [ %.0371.i, %bb.sy ]
  %.10.i54 = phi ptr [ %i.esr, %.thread1260 ], [ %.0363.i, %bb.sy ]
  %.5361.i = phi i64 [ %i.esh, %.thread1260 ], [ %.0356.i, %bb.sy ]
  store i64 11185913886062, ptr %.11396.i, align 1
  %i.esv = getelementptr inbounds nuw i8, ptr %.11396.i, i64 5
  br label %bb.tc

bb.ta:                                            ; preds = %bb.sw
  %i.esw = lshr i64 %i.cxk, 8                     ; 3 uses
  %i.esx = getelementptr inbounds nuw i8, ptr %.0418.i, i64 8
  %i.esy = load ptr, ptr %i.esx, align 8, !tbaa !100
  %i.esz = add nuw nsw i64 %i.esw, 2              ; 2 uses
  %i.eta = getelementptr inbounds nuw i8, ptr %.0385.i, i64 %i.esz
  %.not427.i = icmp ult ptr %i.eta, %.0363.i
  br i1 %.not427.i, label %bb.tb, label %size_align_up.exit457.i, !prof !62

size_align_up.exit457.i:                          ; preds = %bb.ta
  %i.etb = lshr i64 %.0356.i, 1
  %i.etc = tail call i64 @llvm.umax.i64(i64 %i.etb, i64 %i.esz)
  %i.etd = add nuw i64 %i.etc, 7
  %i.ete = and i64 %i.etd, -8
  %i.etf = add i64 %i.ete, %.0356.i               ; 4 uses
  %i.etg = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0400.i, i64 noundef %.0356.i, i64 noundef %i.etf) #33, !inline_history !388 ; 6 uses
  %.not428.i = icmp eq ptr %i.etg, null
  br i1 %.not428.i, label %.loopexit1368, label %.thread1266, !prof !45

.thread1266:                                      ; preds = %size_align_up.exit457.i
  %i.eth = ptrtoint ptr %.0371.i to i64
  %i.eti = ptrtoint ptr %.0363.i to i64           ; 2 uses
  %i.etj = sub i64 %i.eth, %i.eti                 ; 2 uses
  %i.etk = ptrtoint ptr %.0385.i to i64
  %i.etl = ptrtoint ptr %.0400.i to i64           ; 2 uses
  %i.etm = sub i64 %i.etk, %i.etl
  %i.etn = sub i64 %i.eti, %i.etl
  %i.eto = sub i64 %i.etf, %i.etj
  %i.etp = getelementptr inbounds nuw i8, ptr %i.etg, i64 %i.eto ; 2 uses
  %i.etq = getelementptr inbounds nuw i8, ptr %i.etg, i64 %i.etn
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.etp, ptr nonnull align 1 %i.etq, i64 %i.etj, i1 false)
  %i.etr = getelementptr inbounds nuw i8, ptr %i.etg, i64 %i.etm
  %i.ets = getelementptr inbounds nuw i8, ptr %i.etg, i64 %i.etf
  br label %bb.tb

bb.tb:                                            ; preds = %.thread1266, %bb.ta
  %.12412.i = phi ptr [ %i.etg, %.thread1266 ], [ %.0400.i, %bb.ta ]
  %.13398.i = phi ptr [ %i.etr, %.thread1266 ], [ %.0385.i, %bb.ta ] ; 2 uses
  %.12383.i = phi ptr [ %i.ets, %.thread1266 ], [ %.0371.i, %bb.ta ]
  %.12.i51 = phi ptr [ %i.etp, %.thread1266 ], [ %.0363.i, %bb.ta ]
  %.6362.i = phi i64 [ %i.etf, %.thread1266 ], [ %.0356.i, %bb.ta ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.13398.i, ptr align 1 %i.esy, i64 range(i64 0, 72057594037927936) %i.esw, i1 false)
  %i.ett = getelementptr inbounds nuw i8, ptr %.13398.i, i64 %i.esw ; 2 uses
  %i.etu = getelementptr inbounds nuw i8, ptr %i.ett, i64 1
  store i8 44, ptr %i.ett, align 1, !tbaa !100
  br label %bb.tc

bb.tc:                                            ; preds = %bb.tb, %bb.sz, %write_bool.exit, %bb.su, %write_num.exit.thread, %write_str.exit209
  %.13413.i = phi ptr [ %.2402.i, %write_str.exit209 ], [ %.4404.i, %write_num.exit.thread ], [ %.6406.i, %bb.su ], [ %.8408.i, %write_bool.exit ], [ %.10410.i, %bb.sz ], [ %.12412.i, %bb.tb ] ; 7 uses
  %.14399.i = phi ptr [ %i.ebx, %write_str.exit209 ], [ %i.epr, %write_num.exit.thread ], [ %i.eqv, %bb.su ], [ %i.esb, %write_bool.exit ], [ %i.esv, %bb.sz ], [ %i.etu, %bb.tb ] ; 2 uses
  %.13384.i = phi ptr [ %.2373.i, %write_str.exit209 ], [ %.4375.i, %write_num.exit.thread ], [ %.6377.i, %bb.su ], [ %.8379.i, %write_bool.exit ], [ %.10381.i, %bb.sz ], [ %.12383.i, %bb.tb ] ; 4 uses
  %.13.i37 = phi ptr [ %.2365.i, %write_str.exit209 ], [ %.4367.i, %write_num.exit.thread ], [ %.6369.i, %bb.su ], [ %.8.i56, %write_bool.exit ], [ %.10.i54, %bb.sz ], [ %.12.i51, %bb.tb ] ; 2 uses
  %.7.i38 = phi i64 [ %.1357.i, %write_str.exit209 ], [ %.2358.i, %write_num.exit.thread ], [ %.3359.i, %bb.su ], [ %.4360.i, %write_bool.exit ], [ %.5361.i, %bb.sz ], [ %.6362.i, %bb.tb ] ; 5 uses
  %i.etv = getelementptr inbounds nuw i8, ptr %.0418.i, i64 16 ; 2 uses
  %i.etw = add i64 %.01044, -1                    ; 2 uses
  %i.etx = icmp eq i64 %i.etw, 0
  br i1 %i.etx, label %.preheader1364, label %bb.mw, !prof !45

.preheader1364:                                   ; preds = %bb.tc, %bb.td
  %.11043 = phi i8 [ %i.eug, %bb.td ], [ %.01042.ph, %bb.tc ]
  %.15.i39 = phi ptr [ %i.eub, %bb.td ], [ %.14399.i, %bb.tc ] ; 5 uses
  %.14.i40 = phi ptr [ %i.euc, %bb.td ], [ %.13.i37, %bb.tc ] ; 5 uses
  %i.ety = getelementptr inbounds i8, ptr %.15.i39, i64 -1
  %i.etz = shl nuw nsw i8 %.11043, 5
  %i.eua = add nuw nsw i8 %i.etz, 93
  store i8 %i.eua, ptr %i.ety, align 1, !tbaa !100
  %i.eub = getelementptr inbounds nuw i8, ptr %.15.i39, i64 1 ; 4 uses
  store i8 44, ptr %.15.i39, align 1, !tbaa !100
  %.not445.i = icmp ult ptr %.14.i40, %.13384.i
  br i1 %.not445.i, label %bb.td, label %bb.te, !prof !62

bb.td:                                            ; preds = %.preheader1364
  %i.euc = getelementptr inbounds nuw i8, ptr %.14.i40, i64 8 ; 2 uses
  %i.eud = load i64, ptr %.14.i40, align 8, !tbaa !398 ; 2 uses
  %i.eue = lshr i64 %i.eud, 1
  %i.euf = trunc i64 %i.eud to i8
  %i.eug = and i8 %i.euf, 1                       ; 2 uses
  %i.euh = add nsw i64 %i.eue, -1                 ; 2 uses
  %.not446.i = icmp eq i64 %i.euh, 0
  br i1 %.not446.i, label %.preheader1364, label %.outer.backedge, !prof !45

bb.te:                                            ; preds = %.preheader1364
  br i1 %.not1295, label %bb.th, label %bb.tf

end_hunk_1
begin_hunk_2_@yyjson_mut_write_opts_impl:bb.a
  %i.clp = lshr i64 %i.byy, 32
  %i.clq = trunc nuw i64 %i.clp to i32            ; 2 uses
  %i.clr = or i32 %2, %i.clq                      ; 3 uses
  %.not38.i.i34 = icmp ult i32 %i.clr, 16777216
  br i1 %.not38.i.i34, label %bb.lq, label %bb.lr, !prof !62

bb.lq:                                            ; preds = %bb.lp
  %i.cls = tail call fastcc ptr @write_f64_raw(ptr noundef %.0.i770.i.lcssa, i64 noundef %i.bzb, i32 noundef %2)
  br label %write_num.exit.i37

bb.lr:                                            ; preds = %bb.lp
  %.not39.i.i35 = icmp ult i32 %i.clr, 268435456
  br i1 %.not39.i.i35, label %bb.lt, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.clt = lshr i32 %i.clq, 28                    ; 2 uses
  %.not41.i.i36 = icmp eq i32 %i.clt, 0
  %i.clu = select i1 %.not41.i.i36, i32 %i.asc, i32 %i.clt
  %i.clv = tail call fastcc ptr @write_f64_raw_fixed(ptr noundef %.0.i770.i.lcssa, i64 noundef %i.bzb, i32 noundef %2, i32 noundef %i.clu)
  br label %write_num.exit.i37

bb.lt:                                            ; preds = %bb.lr
  %.not40.i.i39 = icmp samesign ult i32 %i.clr, 134217728
  br i1 %.not40.i.i39, label %bb.lv, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.clw = tail call fastcc ptr @write_f32_raw(ptr noundef %.0.i770.i.lcssa, i64 noundef %i.bzb, i32 noundef %2)
  br label %write_num.exit.i37

bb.lv:                                            ; preds = %bb.lt
  %i.clx = tail call fastcc ptr @write_f64_raw(ptr noundef %.0.i770.i.lcssa, i64 noundef %i.bzb, i32 noundef %2)
  br label %write_num.exit.i37

write_num.exit.i37:                               ; preds = %bb.lv, %bb.lu, %bb.ls, %bb.lq
  %.1.i746.i = phi ptr [ %i.clx, %bb.lv ], [ %i.cls, %bb.lq ], [ %i.clv, %bb.ls ], [ %i.clw, %bb.lu ] ; 2 uses
  %.not598.i = icmp eq ptr %.1.i746.i, null
  br i1 %.not598.i, label %bb.nd, label %write_num.exit.i37.thread, !prof !153

write_num.exit.i37.thread:                        ; preds = %bb.ld, %bb.lc, %bb.la, %bb.ky, %write_u32_len_1_to_8.exit55.i.i64, %write_u32_len_5_to_8.exit.i.i48, %write_num.exit.i37
  %.1.i746.i796 = phi ptr [ %.1.i746.i, %write_num.exit.i37 ], [ %i.ccr, %bb.ld ], [ %i.cbj, %bb.lc ], [ %i.caj, %bb.la ], [ %i.bzr, %bb.ky ], [ %i.chk, %write_u32_len_1_to_8.exit55.i.i64 ], [ %i.clo, %write_u32_len_5_to_8.exit.i.i48 ] ; 3 uses
  %i.cly = getelementptr inbounds nuw i8, ptr %.1.i746.i796, i64 1
  store i8 44, ptr %.1.i746.i796, align 1, !tbaa !100
  %i.clz = getelementptr inbounds nuw i8, ptr %.1.i746.i796, i64 2
  store i8 10, ptr %i.cly, align 1, !tbaa !100
  br label %bb.mq

bb.lw:                                            ; preds = %bb.fz
  %i.cma = and i8 %i.asp, 6
  %i.cmb = icmp eq i8 %i.cma, 6
  br i1 %i.cmb, label %bb.lx, label %bb.mg

bb.lx:                                            ; preds = %bb.lw
  %i.cmc = trunc i64 %.0688 to i32
  %i.cmd = and i32 %i.asd, %i.cmc
  %.not588.i = icmp ne i32 %i.cmd, 0              ; 4 uses
  %i.cme = lshr i64 %i.aso, 8                     ; 2 uses
  %i.cmf = icmp eq i8 %i.asq, 7                   ; 5 uses
  %i.cmg = icmp eq i64 %i.cme, 0
  br i1 %i.cmg, label %bb.ly, label %bb.mb, !prof !45

bb.ly:                                            ; preds = %bb.lx
  %i.cmh = select i1 %.not588.i, i64 16, i64 %i.asg ; 2 uses
  %i.cmi = getelementptr inbounds nuw i8, ptr %.0528.i, i64 %i.cmh
  %.not593.i = icmp ult ptr %i.cmi, %.0498.i
  br i1 %.not593.i, label %bb.ma, label %bb.lz, !prof !62

bb.lz:                                            ; preds = %bb.ly
  %i.cmj = lshr i64 %.0489.i, 1
  %i.cmk = tail call i64 @llvm.umax.i64(i64 %i.cmj, i64 %i.cmh)
  %i.cml = add i64 %i.cmk, 15
  %i.cmm = and i64 %i.cml, -16
  %i.cmn = add i64 %i.cmm, %.0489.i               ; 4 uses
  %i.cmo = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0547.i, i64 noundef %.0489.i, i64 noundef %i.cmn) #33, !inline_history !409 ; 6 uses
  %.not594.i = icmp eq ptr %i.cmo, null
  br i1 %.not594.i, label %.loopexit1049, label %.thread797, !prof !45

.thread797:                                       ; preds = %bb.lz
  %i.cmp = ptrtoint ptr %.0509.i to i64
  %i.cmq = ptrtoint ptr %.0498.i to i64           ; 2 uses
  %i.cmr = sub i64 %i.cmp, %i.cmq                 ; 2 uses
  %i.cms = ptrtoint ptr %.0528.i to i64
  %i.cmt = ptrtoint ptr %.0547.i to i64           ; 2 uses
  %i.cmu = sub i64 %i.cms, %i.cmt
  %i.cmv = sub i64 %i.cmq, %i.cmt
  %i.cmw = sub i64 %i.cmn, %i.cmr
  %i.cmx = getelementptr inbounds nuw i8, ptr %i.cmo, i64 %i.cmw ; 2 uses
  %i.cmy = getelementptr inbounds nuw i8, ptr %i.cmo, i64 %i.cmv
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cmx, ptr nonnull align 1 %i.cmy, i64 %i.cmr, i1 false)
  %i.cmz = getelementptr inbounds nuw i8, ptr %i.cmo, i64 %i.cmu
  %i.cna = getelementptr inbounds nuw i8, ptr %i.cmo, i64 %i.cmn
  br label %bb.ma

bb.ma:                                            ; preds = %.thread797, %bb.ly
  %.6553.i = phi ptr [ %i.cmo, %.thread797 ], [ %.0547.i, %bb.ly ]
  %.7535.i = phi ptr [ %i.cmz, %.thread797 ], [ %.0528.i, %bb.ly ] ; 3 uses
  %.6515.i = phi ptr [ %i.cna, %.thread797 ], [ %.0509.i, %bb.ly ]
  %.6504.i = phi ptr [ %i.cmx, %.thread797 ], [ %.0498.i, %bb.ly ]
  %.3492.i = phi i64 [ %i.cmn, %.thread797 ], [ %.0489.i, %bb.ly ]
  %.not.i767.i2109 = select i1 %.not588.i, i1 true, i1 %.not.i767.i21092953
  br i1 %.not.i767.i2109, label %write_indent.exit768.i, label %select.unfold803.preheader

select.unfold803.preheader:                       ; preds = %bb.ma
  br i1 %lcmp.mod5637.not, label %select.unfold803.prol.loopexit, label %select.unfold803.prol

select.unfold803.prol:                            ; preds = %select.unfold803.preheader, %select.unfold803.prol
  %.0.i766.i2111.prol = phi ptr [ %i.cnc, %select.unfold803.prol ], [ %.7535.i, %select.unfold803.preheader ] ; 2 uses
  %.04.i765.i2110.prol = phi i64 [ %i.cnb, %select.unfold803.prol ], [ %.0487.i.ph, %select.unfold803.preheader ]
  %prol.iter5638 = phi i64 [ %prol.iter5638.next, %select.unfold803.prol ], [ 0, %select.unfold803.preheader ]
  %i.cnb = add i64 %.04.i765.i2110.prol, -1       ; 2 uses
  store i32 538976288, ptr %.0.i766.i2111.prol, align 1
  %i.cnc = getelementptr inbounds nuw i8, ptr %.0.i766.i2111.prol, i64 %i.arh ; 3 uses
  %prol.iter5638.next = add i64 %prol.iter5638, 1 ; 2 uses
  %prol.iter5638.cmp.not = icmp eq i64 %prol.iter5638.next, %xtraiter5636
  br i1 %prol.iter5638.cmp.not, label %select.unfold803.prol.loopexit, label %select.unfold803.prol, !llvm.loop !420

select.unfold803.prol.loopexit:                   ; preds = %select.unfold803.prol, %select.unfold803.preheader
  %.lcssa5541.unr = phi ptr [ poison, %select.unfold803.preheader ], [ %i.cnc, %select.unfold803.prol ]
  %.0.i766.i2111.unr = phi ptr [ %.7535.i, %select.unfold803.preheader ], [ %i.cnc, %select.unfold803.prol ]
  %.04.i765.i2110.unr = phi i64 [ %.0487.i.ph, %select.unfold803.preheader ], [ %i.cnb, %select.unfold803.prol ]
  br i1 %i.asn, label %write_indent.exit768.i, label %select.unfold803

select.unfold803:                                 ; preds = %select.unfold803.prol.loopexit, %select.unfold803
  %.0.i766.i2111 = phi ptr [ %i.cnl, %select.unfold803 ], [ %.0.i766.i2111.unr, %select.unfold803.prol.loopexit ] ; 2 uses
  %.04.i765.i2110 = phi i64 [ %i.cnk, %select.unfold803 ], [ %.04.i765.i2110.unr, %select.unfold803.prol.loopexit ]
  store i32 538976288, ptr %.0.i766.i2111, align 1
  %i.cnd = getelementptr inbounds nuw i8, ptr %.0.i766.i2111, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cnd, align 1
  %i.cne = getelementptr inbounds nuw i8, ptr %i.cnd, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cne, align 1
  %i.cnf = getelementptr inbounds nuw i8, ptr %i.cne, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cnf, align 1
  %i.cng = getelementptr inbounds nuw i8, ptr %i.cnf, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cng, align 1
  %i.cnh = getelementptr inbounds nuw i8, ptr %i.cng, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cnh, align 1
  %i.cni = getelementptr inbounds nuw i8, ptr %i.cnh, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cni, align 1
  %i.cnj = getelementptr inbounds nuw i8, ptr %i.cni, i64 %i.arh ; 2 uses
  %i.cnk = add i64 %.04.i765.i2110, -8            ; 2 uses
  store i32 538976288, ptr %i.cnj, align 1
  %i.cnl = getelementptr inbounds nuw i8, ptr %i.cnj, i64 %i.arh ; 2 uses
  %.not.i767.i.7 = icmp eq i64 %i.cnk, 0
  br i1 %.not.i767.i.7, label %write_indent.exit768.i, label %select.unfold803, !llvm.loop !27

write_indent.exit768.i:                           ; preds = %select.unfold803.prol.loopexit, %select.unfold803, %bb.ma
  %.0.i766.i.lcssa = phi ptr [ %.7535.i, %bb.ma ], [ %.lcssa5541.unr, %select.unfold803.prol.loopexit ], [ %i.cnl, %select.unfold803 ] ; 5 uses
  %i.cnm = select i1 %i.cmf, i8 32, i8 0          ; 2 uses
  %i.cnn = or disjoint i8 %i.cnm, 91
  %i.cno = getelementptr inbounds nuw i8, ptr %.0.i766.i.lcssa, i64 1
  store i8 %i.cnn, ptr %.0.i766.i.lcssa, align 1, !tbaa !100
  %i.cnp = or disjoint i8 %i.cnm, 93
  %i.cnq = getelementptr inbounds nuw i8, ptr %.0.i766.i.lcssa, i64 2
  store i8 %i.cnp, ptr %i.cno, align 1, !tbaa !100
  %i.cnr = getelementptr inbounds nuw i8, ptr %.0.i766.i.lcssa, i64 3
  store i8 44, ptr %i.cnq, align 1, !tbaa !100
  %i.cns = getelementptr inbounds nuw i8, ptr %.0.i766.i.lcssa, i64 4
  store i8 10, ptr %i.cnr, align 1, !tbaa !100
  br label %bb.mq

bb.mb:                                            ; preds = %bb.lx
  %i.cnt = zext i1 %i.cmf to i8
  %i.cnu = add i64 %i.ase, 32
  %i.cnv = select i1 %.not588.i, i64 32, i64 %i.cnu ; 2 uses
  %i.cnw = getelementptr inbounds nuw i8, ptr %.0528.i, i64 %i.cnv
  %.not589.i = icmp ult ptr %i.cnw, %.0498.i
  br i1 %.not589.i, label %bb.md, label %bb.mc, !prof !62

bb.mc:                                            ; preds = %bb.mb
  %i.cnx = lshr i64 %.0489.i, 1
  %i.cny = tail call i64 @llvm.umax.i64(i64 %i.cnx, i64 %i.cnv)
  %i.cnz = add i64 %i.cny, 15
  %i.coa = and i64 %i.cnz, -16
  %i.cob = add i64 %i.coa, %.0489.i               ; 4 uses
  %i.coc = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0547.i, i64 noundef %.0489.i, i64 noundef %i.cob) #33, !inline_history !409 ; 6 uses
  %.not590.i = icmp eq ptr %i.coc, null
  br i1 %.not590.i, label %.loopexit1049, label %.thread804, !prof !45

.thread804:                                       ; preds = %bb.mc
  %i.cod = ptrtoint ptr %.0509.i to i64
  %i.coe = ptrtoint ptr %.0498.i to i64           ; 2 uses
  %i.cof = sub i64 %i.cod, %i.coe                 ; 2 uses
  %i.cog = ptrtoint ptr %.0528.i to i64
  %i.coh = ptrtoint ptr %.0547.i to i64           ; 2 uses
  %i.coi = sub i64 %i.cog, %i.coh
  %i.coj = sub i64 %i.coe, %i.coh
  %i.cok = sub i64 %i.cob, %i.cof
  %i.col = getelementptr inbounds nuw i8, ptr %i.coc, i64 %i.cok ; 2 uses
  %i.com = getelementptr inbounds nuw i8, ptr %i.coc, i64 %i.coj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.col, ptr nonnull align 1 %i.com, i64 %i.cof, i1 false)
  %i.con = getelementptr inbounds nuw i8, ptr %i.coc, i64 %i.coi
  %i.coo = getelementptr inbounds nuw i8, ptr %i.coc, i64 %i.cob
  br label %bb.md

bb.md:                                            ; preds = %.thread804, %bb.mb
  %.8555.i = phi ptr [ %i.coc, %.thread804 ], [ %.0547.i, %bb.mb ]
  %.9537.i = phi ptr [ %i.con, %.thread804 ], [ %.0528.i, %bb.mb ] ; 3 uses
  %.8517.i = phi ptr [ %i.coo, %.thread804 ], [ %.0509.i, %bb.mb ]
  %.8506.i = phi ptr [ %i.col, %.thread804 ], [ %.0498.i, %bb.mb ] ; 2 uses
  %.4493.i = phi i64 [ %i.cob, %.thread804 ], [ %.0489.i, %bb.mb ]
  %i.cop = getelementptr inbounds i8, ptr %.8506.i, i64 -16 ; 2 uses
  %7 = zext nneg i8 %.0687.ph to i64
  %8 = shl i64 %.0688, 1
  %i.coq = or disjoint i64 %8, %7
  store i64 %i.coq, ptr %i.cop, align 8, !tbaa !436
  %i.cor = getelementptr inbounds i8, ptr %.8506.i, i64 -8
  store ptr %.0689.ph, ptr %i.cor, align 8, !tbaa !437
  %i.cos = zext i1 %i.cmf to i64
  %i.cot = shl nuw nsw i64 %i.cme, %i.cos
  %.not.i763.i21162952 = icmp eq i64 %.0487.i.ph, 0
  %.not.i763.i2116 = select i1 %.not588.i, i1 true, i1 %.not.i763.i21162952
  br i1 %.not.i763.i2116, label %write_indent.exit764.i, label %select.unfold810.preheader

select.unfold810.preheader:                       ; preds = %bb.md
  %xtraiter5639 = and i64 %.0487.i.ph, 7          ; 2 uses
  %lcmp.mod5640.not = icmp eq i64 %xtraiter5639, 0
  br i1 %lcmp.mod5640.not, label %select.unfold810.prol.loopexit, label %select.unfold810.prol

select.unfold810.prol:                            ; preds = %select.unfold810.preheader, %select.unfold810.prol
  %.0.i762.i2118.prol = phi ptr [ %i.cov, %select.unfold810.prol ], [ %.9537.i, %select.unfold810.preheader ] ; 2 uses
  %.04.i761.i2117.prol = phi i64 [ %i.cou, %select.unfold810.prol ], [ %.0487.i.ph, %select.unfold810.preheader ]
  %prol.iter5641 = phi i64 [ %prol.iter5641.next, %select.unfold810.prol ], [ 0, %select.unfold810.preheader ]
  %i.cou = add i64 %.04.i761.i2117.prol, -1       ; 2 uses
  store i32 538976288, ptr %.0.i762.i2118.prol, align 1
  %i.cov = getelementptr inbounds nuw i8, ptr %.0.i762.i2118.prol, i64 %i.arh ; 3 uses
  %prol.iter5641.next = add i64 %prol.iter5641, 1 ; 2 uses
  %prol.iter5641.cmp.not = icmp eq i64 %prol.iter5641.next, %xtraiter5639
  br i1 %prol.iter5641.cmp.not, label %select.unfold810.prol.loopexit, label %select.unfold810.prol, !llvm.loop !421

select.unfold810.prol.loopexit:                   ; preds = %select.unfold810.prol, %select.unfold810.preheader
  %.lcssa5588.unr = phi ptr [ poison, %select.unfold810.preheader ], [ %i.cov, %select.unfold810.prol ]
  %.0.i762.i2118.unr = phi ptr [ %.9537.i, %select.unfold810.preheader ], [ %i.cov, %select.unfold810.prol ]
  %.04.i761.i2117.unr = phi i64 [ %.0487.i.ph, %select.unfold810.preheader ], [ %i.cou, %select.unfold810.prol ]
  %i.cow = icmp ult i64 %i.ash, 7
  br i1 %i.cow, label %write_indent.exit764.i, label %select.unfold810

select.unfold810:                                 ; preds = %select.unfold810.prol.loopexit, %select.unfold810
  %.0.i762.i2118 = phi ptr [ %i.cpf, %select.unfold810 ], [ %.0.i762.i2118.unr, %select.unfold810.prol.loopexit ] ; 2 uses
  %.04.i761.i2117 = phi i64 [ %i.cpe, %select.unfold810 ], [ %.04.i761.i2117.unr, %select.unfold810.prol.loopexit ]
  store i32 538976288, ptr %.0.i762.i2118, align 1
  %i.cox = getelementptr inbounds nuw i8, ptr %.0.i762.i2118, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cox, align 1
  %i.coy = getelementptr inbounds nuw i8, ptr %i.cox, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.coy, align 1
  %i.coz = getelementptr inbounds nuw i8, ptr %i.coy, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.coz, align 1
  %i.cpa = getelementptr inbounds nuw i8, ptr %i.coz, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cpa, align 1
  %i.cpb = getelementptr inbounds nuw i8, ptr %i.cpa, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cpb, align 1
  %i.cpc = getelementptr inbounds nuw i8, ptr %i.cpb, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cpc, align 1
  %i.cpd = getelementptr inbounds nuw i8, ptr %i.cpc, i64 %i.arh ; 2 uses
  %i.cpe = add i64 %.04.i761.i2117, -8            ; 2 uses
  store i32 538976288, ptr %i.cpd, align 1
  %i.cpf = getelementptr inbounds nuw i8, ptr %i.cpd, i64 %i.arh ; 2 uses
  %.not.i763.i.7 = icmp eq i64 %i.cpe, 0
  br i1 %.not.i763.i.7, label %write_indent.exit764.i, label %select.unfold810, !llvm.loop !27

write_indent.exit764.i:                           ; preds = %select.unfold810.prol.loopexit, %select.unfold810, %bb.md
  %.0.i762.i.lcssa = phi ptr [ %.9537.i, %bb.md ], [ %.lcssa5588.unr, %select.unfold810.prol.loopexit ], [ %i.cpf, %select.unfold810 ] ; 3 uses
  %i.cpg = add i64 %.0487.i.ph, 1
  %i.cph = select i1 %i.cmf, i8 123, i8 91
  %i.cpi = getelementptr inbounds nuw i8, ptr %.0.i762.i.lcssa, i64 1
  store i8 %i.cph, ptr %.0.i762.i.lcssa, align 1, !tbaa !100
  %i.cpj = getelementptr inbounds nuw i8, ptr %.0.i762.i.lcssa, i64 2
  store i8 10, ptr %i.cpi, align 1, !tbaa !100
  %i.cpk = getelementptr inbounds nuw i8, ptr %.0570.i, i64 8
  %i.cpl = load ptr, ptr %i.cpk, align 8, !tbaa !100 ; 2 uses
  br i1 %i.cmf, label %bb.me, label %bb.mf

bb.me:                                            ; preds = %write_indent.exit764.i
  %i.cpm = getelementptr inbounds nuw i8, ptr %i.cpl, i64 16
  %i.cpn = load ptr, ptr %i.cpm, align 8, !tbaa !104
  br label %bb.mf

bb.mf:                                            ; preds = %bb.me, %write_indent.exit764.i
  %.pn592.i = phi ptr [ %i.cpn, %bb.me ], [ %i.cpl, %write_indent.exit764.i ]
  %.in591.i = getelementptr inbounds nuw i8, ptr %.pn592.i, i64 16
  %i.cpo = load ptr, ptr %.in591.i, align 8, !tbaa !104
  br label %.outer1054.backedge

.outer1054.backedge:                              ; preds = %bb.mu, %bb.mf
  %.0689.ph.be = phi ptr [ %.0570.i, %bb.mf ], [ %i.cvy, %bb.mu ]
  %.0688.ph.be = phi i64 [ %i.cot, %bb.mf ], [ %i.cvz, %bb.mu ]
  %.0687.ph.be = phi i8 [ %i.cnt, %bb.mf ], [ %i.cvw, %bb.mu ]
  %.0570.i.ph.be = phi ptr [ %i.cpo, %bb.mf ], [ %i.cvr, %bb.mu ]
  %.0547.i.ph.be = phi ptr [ %.8555.i, %bb.mf ], [ %.18565.i, %bb.mu ]
  %.0528.i.ph.be = phi ptr [ %i.cpj, %bb.mf ], [ %i.cwb, %bb.mu ]
  %.0509.i.ph.be = phi ptr [ %.8517.i, %bb.mf ], [ %.18527.i, %bb.mu ]
  %.0498.i.ph.be = phi ptr [ %i.cop, %bb.mf ], [ %i.cvs, %bb.mu ]
  %.0489.i.ph.be = phi i64 [ %.4493.i, %bb.mf ], [ %.10.i, %bb.mu ]
  %.0487.i.ph.be = phi i64 [ %i.cpg, %bb.mf ], [ %i.cva, %bb.mu ]
  br label %.outer1054

bb.mg:                                            ; preds = %bb.lw
  switch i8 %i.asq, label %bb.nb [
    i8 3, label %bb.mh
    i8 2, label %bb.mk
    i8 1, label %bb.mn
  ]

bb.mh:                                            ; preds = %bb.mg
  %i.cpp = trunc i64 %.0688 to i32
  %i.cpq = and i32 %i.asd, %i.cpp
  %.not585.i = icmp ne i32 %i.cpq, 0              ; 2 uses
  %i.cpr = select i1 %.not585.i, i64 16, i64 %i.asg ; 2 uses
  %i.cps = getelementptr inbounds nuw i8, ptr %.0528.i, i64 %i.cpr
  %.not586.i = icmp ult ptr %i.cps, %.0498.i
  br i1 %.not586.i, label %bb.mj, label %bb.mi, !prof !62

bb.mi:                                            ; preds = %bb.mh
  %i.cpt = lshr i64 %.0489.i, 1
  %i.cpu = tail call i64 @llvm.umax.i64(i64 %i.cpt, i64 %i.cpr)
  %i.cpv = add i64 %i.cpu, 15
  %i.cpw = and i64 %i.cpv, -16
  %i.cpx = add i64 %i.cpw, %.0489.i               ; 4 uses
  %i.cpy = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0547.i, i64 noundef %.0489.i, i64 noundef %i.cpx) #33, !inline_history !409 ; 6 uses
  %.not587.i = icmp eq ptr %i.cpy, null
  br i1 %.not587.i, label %.loopexit1049, label %.thread811, !prof !45

.thread811:                                       ; preds = %bb.mi
  %i.cpz = ptrtoint ptr %.0509.i to i64
  %i.cqa = ptrtoint ptr %.0498.i to i64           ; 2 uses
  %i.cqb = sub i64 %i.cpz, %i.cqa                 ; 2 uses
  %i.cqc = ptrtoint ptr %.0528.i to i64
  %i.cqd = ptrtoint ptr %.0547.i to i64           ; 2 uses
  %i.cqe = sub i64 %i.cqc, %i.cqd
  %i.cqf = sub i64 %i.cqa, %i.cqd
  %i.cqg = sub i64 %i.cpx, %i.cqb
  %i.cqh = getelementptr inbounds nuw i8, ptr %i.cpy, i64 %i.cqg ; 2 uses
  %i.cqi = getelementptr inbounds nuw i8, ptr %i.cpy, i64 %i.cqf
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cqh, ptr nonnull align 1 %i.cqi, i64 %i.cqb, i1 false)
  %i.cqj = getelementptr inbounds nuw i8, ptr %i.cpy, i64 %i.cqe
  %i.cqk = getelementptr inbounds nuw i8, ptr %i.cpy, i64 %i.cpx
  br label %bb.mj

bb.mj:                                            ; preds = %.thread811, %bb.mh
  %.10557.i = phi ptr [ %i.cpy, %.thread811 ], [ %.0547.i, %bb.mh ]
  %.11539.i = phi ptr [ %i.cqj, %.thread811 ], [ %.0528.i, %bb.mh ] ; 3 uses
  %.10519.i = phi ptr [ %i.cqk, %.thread811 ], [ %.0509.i, %bb.mh ]
  %.10508.i = phi ptr [ %i.cqh, %.thread811 ], [ %.0498.i, %bb.mh ]
  %.5494.i = phi i64 [ %i.cpx, %.thread811 ], [ %.0489.i, %bb.mh ]
  %.not.i759.i2103 = select i1 %.not585.i, i1 true, i1 %.not.i759.i21032951
  br i1 %.not.i759.i2103, label %write_indent.exit760.i, label %select.unfold817.preheader

select.unfold817.preheader:                       ; preds = %bb.mj
  br i1 %lcmp.mod5634.not, label %select.unfold817.prol.loopexit, label %select.unfold817.prol

select.unfold817.prol:                            ; preds = %select.unfold817.preheader, %select.unfold817.prol
  %.0.i758.i2105.prol = phi ptr [ %i.cqm, %select.unfold817.prol ], [ %.11539.i, %select.unfold817.preheader ] ; 2 uses
  %.04.i757.i2104.prol = phi i64 [ %i.cql, %select.unfold817.prol ], [ %.0487.i.ph, %select.unfold817.preheader ]
  %prol.iter5635 = phi i64 [ %prol.iter5635.next, %select.unfold817.prol ], [ 0, %select.unfold817.preheader ]
  %i.cql = add i64 %.04.i757.i2104.prol, -1       ; 2 uses
  store i32 538976288, ptr %.0.i758.i2105.prol, align 1
  %i.cqm = getelementptr inbounds nuw i8, ptr %.0.i758.i2105.prol, i64 %i.arh ; 3 uses
  %prol.iter5635.next = add i64 %prol.iter5635, 1 ; 2 uses
  %prol.iter5635.cmp.not = icmp eq i64 %prol.iter5635.next, %xtraiter5633
  br i1 %prol.iter5635.cmp.not, label %select.unfold817.prol.loopexit, label %select.unfold817.prol, !llvm.loop !422

select.unfold817.prol.loopexit:                   ; preds = %select.unfold817.prol, %select.unfold817.preheader
  %.lcssa5540.unr = phi ptr [ poison, %select.unfold817.preheader ], [ %i.cqm, %select.unfold817.prol ]
  %.0.i758.i2105.unr = phi ptr [ %.11539.i, %select.unfold817.preheader ], [ %i.cqm, %select.unfold817.prol ]
  %.04.i757.i2104.unr = phi i64 [ %.0487.i.ph, %select.unfold817.preheader ], [ %i.cql, %select.unfold817.prol ]
  br i1 %i.asm, label %write_indent.exit760.i, label %select.unfold817

select.unfold817:                                 ; preds = %select.unfold817.prol.loopexit, %select.unfold817
  %.0.i758.i2105 = phi ptr [ %i.cqv, %select.unfold817 ], [ %.0.i758.i2105.unr, %select.unfold817.prol.loopexit ] ; 2 uses
  %.04.i757.i2104 = phi i64 [ %i.cqu, %select.unfold817 ], [ %.04.i757.i2104.unr, %select.unfold817.prol.loopexit ]
  store i32 538976288, ptr %.0.i758.i2105, align 1
  %i.cqn = getelementptr inbounds nuw i8, ptr %.0.i758.i2105, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cqn, align 1
  %i.cqo = getelementptr inbounds nuw i8, ptr %i.cqn, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cqo, align 1
  %i.cqp = getelementptr inbounds nuw i8, ptr %i.cqo, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cqp, align 1
  %i.cqq = getelementptr inbounds nuw i8, ptr %i.cqp, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cqq, align 1
  %i.cqr = getelementptr inbounds nuw i8, ptr %i.cqq, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cqr, align 1
  %i.cqs = getelementptr inbounds nuw i8, ptr %i.cqr, i64 %i.arh ; 2 uses
  store i32 538976288, ptr %i.cqs, align 1
  %i.cqt = getelementptr inbounds nuw i8, ptr %i.cqs, i64 %i.arh ; 2 uses
  %i.cqu = add i64 %.04.i757.i2104, -8            ; 2 uses
  store i32 538976288, ptr %i.cqt, align 1
  %i.cqv = getelementptr inbounds nuw i8, ptr %i.cqt, i64 %i.arh ; 2 uses
  %.not.i759.i.7 = icmp eq i64 %i.cqu, 0
  br i1 %.not.i759.i.7, label %write_indent.exit760.i, label %select.unfold817, !llvm.loop !27

write_indent.exit760.i:                           ; preds = %select.unfold817.prol.loopexit, %select.unfold817, %bb.mj
  %.0.i758.i.lcssa = phi ptr [ %.11539.i, %bb.mj ], [ %.lcssa5540.unr, %select.unfold817.prol.loopexit ], [ %i.cqv, %select.unfold817 ] ; 2 uses
  %i.cqw = load i64, ptr %.0570.i, align 8, !tbaa !99
  %i.cqx = and i64 %i.cqw, 24
  %i.cqy = icmp ne i64 %i.cqx, 0                  ; 2 uses
  %.958 = select i1 %i.cqy, i64 11185797034612, i64 2863564006908262
  store i64 %.958, ptr %.0.i758.i.lcssa, align 1
  %.neg.i.i193 = sext i1 %i.cqy to i64
  %i.cqz = getelementptr i8, ptr %.0.i758.i.lcssa, i64 %.neg.i.i193
  %i.cra = getelementptr i8, ptr %i.cqz, i64 7
  br label %bb.mq

bb.mk:                                            ; preds = %bb.mg
  %i.crb = trunc i64 %.0688 to i32
  %i.crc = and i32 %i.asd, %i.crb
end_hunk_2
begin_hunk_3_@yyjson_mut_write_opts_impl:bb.a
  %i.ena = lshr i32 %i.emz, 19                    ; 2 uses
  %.neg41.i.i.i219 = mul nsw i32 %i.emy, -100
  %i.enb = add nsw i32 %.neg41.i.i.i219, %i.emv
  %.neg42.i.i.i220 = mul nsw i32 %i.ena, -100
  %i.enc = add nsw i32 %.neg42.i.i.i220, %i.emw
  %i.end = icmp ult i64 %i.edj, -8446744073709551616 ; 2 uses
  %i.ene = shl nuw nsw i32 %i.emy, 1
  %i.enf = zext nneg i32 %i.ene to i64
  %i.eng = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.enf
  %.neg43.i.i.i221 = sext i1 %i.end to i64
  %i.enh = zext i1 %i.end to i64
  %i.eni = getelementptr inbounds nuw i8, ptr %i.eng, i64 %i.enh
  %i.enj = load i16, ptr %i.eni, align 1
  store i16 %i.enj, ptr %i.edk, align 1
  %i.enk = getelementptr inbounds i8, ptr %i.edk, i64 %.neg43.i.i.i221 ; 4 uses
  %i.enl = getelementptr inbounds nuw i8, ptr %i.enk, i64 2
  %i.enm = shl nsw i32 %i.enb, 1
  %i.enn = zext i32 %i.enm to i64
  %i.eno = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.enn
  %i.enp = load i16, ptr %i.eno, align 2
  store i16 %i.enp, ptr %i.enl, align 1
  %i.enq = getelementptr inbounds nuw i8, ptr %i.enk, i64 4
  %i.enr = shl nuw nsw i32 %i.ena, 1
  %i.ens = zext nneg i32 %i.enr to i64
  %i.ent = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.ens
  %i.enu = load i16, ptr %i.ent, align 2
  store i16 %i.enu, ptr %i.enq, align 1
  %i.env = getelementptr inbounds nuw i8, ptr %i.enk, i64 6
  %i.enw = shl nsw i32 %i.enc, 1
  %i.enx = zext i32 %i.enw to i64
  %i.eny = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.enx
  %i.enz = load i16, ptr %i.eny, align 2
  store i16 %i.enz, ptr %i.env, align 1
  %i.eoa = getelementptr inbounds nuw i8, ptr %i.enk, i64 8
  br label %write_u32_len_5_to_8.exit.i.i222

write_u32_len_5_to_8.exit.i.i222:                 ; preds = %bb.tb, %bb.ta
  %.0.i61.i.i223 = phi ptr [ %i.ems, %bb.ta ], [ %i.eoa, %bb.tb ] ; 7 uses
  %i.eob = mul i32 %i.els, 5243
  %i.eoc = lshr i32 %i.eob, 19                    ; 2 uses
  %.neg.i62.i.i224 = mul i32 %i.eoc, 2147483548
  %i.eod = add i32 %.neg.i62.i.i224, %i.els
  %i.eoe = shl nuw nsw i32 %i.eoc, 1
  %i.eof = zext nneg i32 %i.eoe to i64
  %i.eog = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.eof
  %i.eoh = load i16, ptr %i.eog, align 2
  store i16 %i.eoh, ptr %.0.i61.i.i223, align 1
  %i.eoi = getelementptr inbounds nuw i8, ptr %.0.i61.i.i223, i64 2
  %i.eoj = shl i32 %i.eod, 1
  %i.eok = zext i32 %i.eoj to i64
  %i.eol = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.eok
  %i.eom = load i16, ptr %i.eol, align 2
  store i16 %i.eom, ptr %i.eoi, align 1
  %i.eon = getelementptr inbounds nuw i8, ptr %.0.i61.i.i223, i64 4
  %i.eoo = and i64 %i.egy, 4294967295
  %i.eop = mul nuw nsw i64 %i.eoo, 109951163
  %i.eoq = lshr i64 %i.eop, 40
  %i.eor = trunc nuw nsw i64 %i.eoq to i32        ; 3 uses
  %.neg.i57.i.i225 = mul i32 %i.eor, -10000
  %i.eos = add i32 %.neg.i57.i.i225, %i.egz       ; 2 uses
  %i.eot = mul nuw i32 %i.eor, 5243
  %i.eou = lshr i32 %i.eot, 19                    ; 2 uses
  %i.eov = mul i32 %i.eos, 5243
  %i.eow = lshr i32 %i.eov, 19                    ; 2 uses
  %.neg17.i58.i.i226 = mul nsw i32 %i.eou, -100
  %i.eox = add nsw i32 %.neg17.i58.i.i226, %i.eor
  %.neg18.i59.i.i227 = mul i32 %i.eow, 2147483548
  %i.eoy = add i32 %.neg18.i59.i.i227, %i.eos
  %i.eoz = shl nuw nsw i32 %i.eou, 1
  %i.epa = zext nneg i32 %i.eoz to i64
  %i.epb = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.epa
  %i.epc = load i16, ptr %i.epb, align 2
  store i16 %i.epc, ptr %i.eon, align 1
  %i.epd = getelementptr inbounds nuw i8, ptr %.0.i61.i.i223, i64 6
  %i.epe = shl nsw i32 %i.eox, 1
  %i.epf = zext i32 %i.epe to i64
  %i.epg = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.epf
  %i.eph = load i16, ptr %i.epg, align 2
  store i16 %i.eph, ptr %i.epd, align 1
  %i.epi = getelementptr inbounds nuw i8, ptr %.0.i61.i.i223, i64 8
  %i.epj = shl nuw nsw i32 %i.eow, 1
  %i.epk = zext nneg i32 %i.epj to i64
  %i.epl = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.epk
  %i.epm = load i16, ptr %i.epl, align 2
  store i16 %i.epm, ptr %i.epi, align 1
  %i.epn = getelementptr inbounds nuw i8, ptr %.0.i61.i.i223, i64 10
  %i.epo = shl i32 %i.eoy, 1
  %i.epp = zext i32 %i.epo to i64
  %i.epq = getelementptr inbounds nuw i8, ptr @digit_table, i64 %i.epp
  %i.epr = load i16, ptr %i.epq, align 2
  store i16 %i.epr, ptr %i.epn, align 1
  %i.eps = getelementptr inbounds nuw i8, ptr %.0.i61.i.i223, i64 12
  br label %write_num.exit.i204.thread

bb.tc:                                            ; preds = %bb.si
  %i.ept = lshr i64 %i.edc, 32
  %i.epu = trunc nuw i64 %i.ept to i32            ; 2 uses
  %i.epv = or i32 %2, %i.epu                      ; 3 uses
  %.not38.i.i201 = icmp ult i32 %i.epv, 16777216
  br i1 %.not38.i.i201, label %bb.td, label %bb.te, !prof !62

bb.td:                                            ; preds = %bb.tc
  %i.epw = tail call fastcc ptr @write_f64_raw(ptr noundef %.5395.i, i64 noundef %i.edf, i32 noundef %2)
  br label %write_num.exit.i204

bb.te:                                            ; preds = %bb.tc
  %.not39.i.i202 = icmp ult i32 %i.epv, 268435456
  br i1 %.not39.i.i202, label %bb.tg, label %bb.tf

bb.tf:                                            ; preds = %bb.te
  %i.epx = lshr i32 %i.epu, 28                    ; 2 uses
  %.not41.i.i203 = icmp eq i32 %i.epx, 0
  %i.epy = select i1 %.not41.i.i203, i32 %i.cxt, i32 %i.epx
  %i.epz = tail call fastcc ptr @write_f64_raw_fixed(ptr noundef %.5395.i, i64 noundef %i.edf, i32 noundef %2, i32 noundef %i.epy)
  br label %write_num.exit.i204

bb.tg:                                            ; preds = %bb.te
  %.not40.i.i213 = icmp samesign ult i32 %i.epv, 134217728
  br i1 %.not40.i.i213, label %bb.ti, label %bb.th

bb.th:                                            ; preds = %bb.tg
  %i.eqa = tail call fastcc ptr @write_f32_raw(ptr noundef %.5395.i, i64 noundef %i.edf, i32 noundef %2)
  br label %write_num.exit.i204

bb.ti:                                            ; preds = %bb.tg
  %i.eqb = tail call fastcc ptr @write_f64_raw(ptr noundef %.5395.i, i64 noundef %i.edf, i32 noundef %2)
  br label %write_num.exit.i204

write_num.exit.i204:                              ; preds = %bb.ti, %bb.th, %bb.tf, %bb.td
  %.1.i583.i = phi ptr [ %i.eqb, %bb.ti ], [ %i.epw, %bb.td ], [ %i.epz, %bb.tf ], [ %i.eqa, %bb.th ] ; 2 uses
  %.not444.i = icmp eq ptr %.1.i583.i, null
  br i1 %.not444.i, label %bb.uj, label %write_num.exit.i204.thread, !prof !153

write_num.exit.i204.thread:                       ; preds = %bb.sq, %bb.sp, %bb.sn, %bb.sl, %write_u32_len_1_to_8.exit55.i.i238, %write_u32_len_5_to_8.exit.i.i222, %write_num.exit.i204
  %.1.i583.i898 = phi ptr [ %.1.i583.i, %write_num.exit.i204 ], [ %i.egv, %bb.sq ], [ %i.efn, %bb.sp ], [ %i.een, %bb.sn ], [ %i.edv, %bb.sl ], [ %i.elo, %write_u32_len_1_to_8.exit55.i.i238 ], [ %i.eps, %write_u32_len_5_to_8.exit.i.i222 ] ; 2 uses
  %i.eqc = getelementptr inbounds nuw i8, ptr %.1.i583.i898, i64 1
  store i8 44, ptr %.1.i583.i898, align 1, !tbaa !100
  br label %bb.tz

bb.tj:                                            ; preds = %bb.nm
  %i.eqd = and i8 %i.cxw, 6
  %i.eqe = icmp eq i8 %i.eqd, 6
  br i1 %i.eqe, label %bb.tk, label %bb.tq

bb.tk:                                            ; preds = %bb.tj
  %i.eqf = lshr i64 %i.cxv, 8                     ; 2 uses
  %i.eqg = icmp eq i8 %i.cxx, 7                   ; 4 uses
  %i.eqh = getelementptr inbounds nuw i8, ptr %.0390.i, i64 16
  %.not438.i = icmp ult ptr %i.eqh, %.0368.i
  br i1 %.not438.i, label %bb.tm, label %bb.tl, !prof !62

bb.tl:                                            ; preds = %bb.tk
  %i.eqi = lshr i64 %.0361.i, 1
  %i.eqj = tail call i64 @llvm.umax.i64(i64 %i.eqi, i64 16)
  %i.eqk = add nuw i64 %i.eqj, 15
  %i.eql = and i64 %i.eqk, -16
  %i.eqm = add i64 %i.eql, %.0361.i               ; 4 uses
  %i.eqn = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0405.i, i64 noundef %.0361.i, i64 noundef %i.eqm) #33, !inline_history !426 ; 6 uses
  %.not439.i = icmp eq ptr %i.eqn, null
  br i1 %.not439.i, label %.loopexit1019, label %.thread899, !prof !45

.thread899:                                       ; preds = %bb.tl
  %i.eqo = ptrtoint ptr %.0376.i to i64
  %i.eqp = ptrtoint ptr %.0368.i to i64           ; 2 uses
  %i.eqq = sub i64 %i.eqo, %i.eqp                 ; 2 uses
  %i.eqr = ptrtoint ptr %.0390.i to i64
  %i.eqs = ptrtoint ptr %.0405.i to i64           ; 2 uses
  %i.eqt = sub i64 %i.eqr, %i.eqs
  %i.equ = sub i64 %i.eqp, %i.eqs
  %i.eqv = sub i64 %i.eqm, %i.eqq
  %i.eqw = getelementptr inbounds nuw i8, ptr %i.eqn, i64 %i.eqv ; 2 uses
  %i.eqx = getelementptr inbounds nuw i8, ptr %i.eqn, i64 %i.equ
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.eqw, ptr nonnull align 1 %i.eqx, i64 %i.eqq, i1 false)
  %i.eqy = getelementptr inbounds nuw i8, ptr %i.eqn, i64 %i.eqt
  %i.eqz = getelementptr inbounds nuw i8, ptr %i.eqn, i64 %i.eqm
  br label %bb.tm

bb.tm:                                            ; preds = %.thread899, %bb.tk
  %.6411.i = phi ptr [ %i.eqn, %.thread899 ], [ %.0405.i, %bb.tk ] ; 3 uses
  %.7397.i = phi ptr [ %i.eqy, %.thread899 ], [ %.0390.i, %bb.tk ] ; 6 uses
  %.6382.i = phi ptr [ %i.eqz, %.thread899 ], [ %.0376.i, %bb.tk ] ; 3 uses
  %.6374.i = phi ptr [ %i.eqw, %.thread899 ], [ %.0368.i, %bb.tk ] ; 3 uses
  %.3364.i = phi i64 [ %i.eqm, %.thread899 ], [ %.0361.i, %bb.tk ] ; 3 uses
  %i.era = icmp eq i64 %i.eqf, 0
  br i1 %i.era, label %bb.tn, label %bb.to, !prof !45

bb.tn:                                            ; preds = %bb.tm
  %i.erb = select i1 %i.eqg, i8 32, i8 0          ; 2 uses
  %i.erc = or disjoint i8 %i.erb, 91
  %i.erd = getelementptr inbounds nuw i8, ptr %.7397.i, i64 1
  store i8 %i.erc, ptr %.7397.i, align 1, !tbaa !100
  %i.ere = or disjoint i8 %i.erb, 93
  %i.erf = getelementptr inbounds nuw i8, ptr %.7397.i, i64 2
  store i8 %i.ere, ptr %i.erd, align 1, !tbaa !100
  %i.erg = getelementptr inbounds nuw i8, ptr %.7397.i, i64 3
  store i8 44, ptr %i.erf, align 1, !tbaa !100
  br label %bb.tz

bb.to:                                            ; preds = %bb.tm
  %i.erh = getelementptr inbounds i8, ptr %.6374.i, i64 -16 ; 3 uses
  %9 = zext nneg i8 %.0691.ph to i64
  %10 = shl i64 %.0693, 1
  %i.eri = or disjoint i64 %10, %9
  store i64 %i.eri, ptr %i.erh, align 8, !tbaa !436
  %i.erj = getelementptr inbounds i8, ptr %.6374.i, i64 -8
  store ptr %.0694.ph, ptr %i.erj, align 8, !tbaa !437
  %i.erk = zext i1 %i.eqg to i64
  %i.erl = shl nuw nsw i64 %i.eqf, %i.erk         ; 2 uses
  %i.erm = select i1 %i.eqg, i8 123, i8 91
  %i.ern = getelementptr inbounds nuw i8, ptr %.7397.i, i64 1 ; 2 uses
  store i8 %i.erm, ptr %.7397.i, align 1, !tbaa !100
  %i.ero = getelementptr inbounds nuw i8, ptr %.0423.i, i64 8
  %i.erp = load ptr, ptr %i.ero, align 8, !tbaa !100 ; 2 uses
  br i1 %i.eqg, label %bb.tp, label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.ua, %bb.to, %bb.tp
  %.0694.ph.be = phi ptr [ %.0423.i, %bb.to ], [ %.0423.i, %bb.tp ], [ %i.euv, %bb.ua ]
  %.0693.ph.be = phi i64 [ %i.erl, %bb.to ], [ %i.erl, %bb.tp ], [ %i.euw, %bb.ua ]
  %.0691.ph.be = phi i8 [ 0, %bb.to ], [ 1, %bb.tp ], [ %i.eut, %bb.ua ]
  %.pn.i198.pn.be = phi ptr [ %i.erp, %bb.to ], [ %i.err, %bb.tp ], [ %.1695, %bb.ua ]
  %.0405.i.ph.be = phi ptr [ %.6411.i, %bb.to ], [ %.6411.i, %bb.tp ], [ %.13418.i, %bb.ua ]
  %.0390.i.ph.be = phi ptr [ %i.ern, %bb.to ], [ %i.ern, %bb.tp ], [ %i.euo, %bb.ua ]
  %.0376.i.ph.be = phi ptr [ %.6382.i, %bb.to ], [ %.6382.i, %bb.tp ], [ %.13389.i, %bb.ua ]
  %.0368.i.ph.be = phi ptr [ %i.erh, %bb.to ], [ %i.erh, %bb.tp ], [ %i.eup, %bb.ua ]
  %.0361.i.ph.be = phi i64 [ %.3364.i, %bb.to ], [ %.3364.i, %bb.tp ], [ %.7.i206, %bb.ua ]
  br label %.outer

bb.tp:                                            ; preds = %bb.to
  %i.erq = getelementptr inbounds nuw i8, ptr %i.erp, i64 16
  %i.err = load ptr, ptr %i.erq, align 8, !tbaa !104
  br label %.outer.backedge

bb.tq:                                            ; preds = %bb.tj
  switch i8 %i.cxx, label %bb.uh [
    i8 3, label %bb.tr
    i8 2, label %bb.tt
    i8 1, label %bb.tw
  ]

bb.tr:                                            ; preds = %bb.tq
  %i.ers = getelementptr inbounds nuw i8, ptr %.0390.i, i64 16
  %.not436.i = icmp ult ptr %i.ers, %.0368.i
  br i1 %.not436.i, label %write_bool.exit.i377, label %bb.ts, !prof !62

bb.ts:                                            ; preds = %bb.tr
  %i.ert = lshr i64 %.0361.i, 1
  %i.eru = tail call i64 @llvm.umax.i64(i64 %i.ert, i64 16)
  %i.erv = add nuw i64 %i.eru, 15
  %i.erw = and i64 %i.erv, -16
  %i.erx = add i64 %i.erw, %.0361.i               ; 4 uses
  %i.ery = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0405.i, i64 noundef %.0361.i, i64 noundef %i.erx) #33, !inline_history !426 ; 6 uses
  %.not437.i = icmp eq ptr %i.ery, null
  br i1 %.not437.i, label %.loopexit1019, label %.thread905, !prof !45

.thread905:                                       ; preds = %bb.ts
  %i.erz = ptrtoint ptr %.0376.i to i64
  %i.esa = ptrtoint ptr %.0368.i to i64           ; 2 uses
  %i.esb = sub i64 %i.erz, %i.esa                 ; 2 uses
  %i.esc = ptrtoint ptr %.0390.i to i64
  %i.esd = ptrtoint ptr %.0405.i to i64           ; 2 uses
  %i.ese = sub i64 %i.esc, %i.esd
  %i.esf = sub i64 %i.esa, %i.esd
  %i.esg = sub i64 %i.erx, %i.esb
  %i.esh = getelementptr inbounds nuw i8, ptr %i.ery, i64 %i.esg ; 2 uses
  %i.esi = getelementptr inbounds nuw i8, ptr %i.ery, i64 %i.esf
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.esh, ptr nonnull align 1 %i.esi, i64 %i.esb, i1 false)
  %i.esj = getelementptr inbounds nuw i8, ptr %i.ery, i64 %i.ese
  %i.esk = getelementptr inbounds nuw i8, ptr %i.ery, i64 %i.erx
  %.pre2841 = load i64, ptr %.0423.i, align 8, !tbaa !99
  br label %write_bool.exit.i377

write_bool.exit.i377:                             ; preds = %.thread905, %bb.tr
  %i.esl = phi i64 [ %.pre2841, %.thread905 ], [ %i.cxv, %bb.tr ]
  %.8413.i = phi ptr [ %i.ery, %.thread905 ], [ %.0405.i, %bb.tr ]
  %.9399.i = phi ptr [ %i.esj, %.thread905 ], [ %.0390.i, %bb.tr ] ; 2 uses
  %.8384.i = phi ptr [ %i.esk, %.thread905 ], [ %.0376.i, %bb.tr ]
  %.8.i376 = phi ptr [ %i.esh, %.thread905 ], [ %.0368.i, %bb.tr ]
  %.4365.i = phi i64 [ %i.erx, %.thread905 ], [ %.0361.i, %bb.tr ]
  %i.esm = and i64 %i.esl, 24
  %i.esn = icmp ne i64 %i.esm, 0                  ; 2 uses
  %.959 = select i1 %i.esn, i64 11185797034612, i64 2863564006908262
  store i64 %.959, ptr %.9399.i, align 1
  %.neg.i.i378 = sext i1 %i.esn to i64
  %i.eso = getelementptr i8, ptr %.9399.i, i64 %.neg.i.i378
  %i.esp = getelementptr i8, ptr %i.eso, i64 6
  br label %bb.tz

bb.tt:                                            ; preds = %bb.tq
  %i.esq = getelementptr inbounds nuw i8, ptr %.0390.i, i64 16
  %.not434.i = icmp ult ptr %i.esq, %.0368.i
  br i1 %.not434.i, label %bb.tv, label %bb.tu, !prof !62

bb.tu:                                            ; preds = %bb.tt
  %i.esr = lshr i64 %.0361.i, 1
  %i.ess = tail call i64 @llvm.umax.i64(i64 %i.esr, i64 16)
  %i.est = add nuw i64 %i.ess, 15
  %i.esu = and i64 %i.est, -16
  %i.esv = add i64 %i.esu, %.0361.i               ; 4 uses
  %i.esw = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0405.i, i64 noundef %.0361.i, i64 noundef %i.esv) #33, !inline_history !426 ; 6 uses
  %.not435.i = icmp eq ptr %i.esw, null
  br i1 %.not435.i, label %.loopexit1019, label %.thread911, !prof !45

.thread911:                                       ; preds = %bb.tu
  %i.esx = ptrtoint ptr %.0376.i to i64
  %i.esy = ptrtoint ptr %.0368.i to i64           ; 2 uses
  %i.esz = sub i64 %i.esx, %i.esy                 ; 2 uses
  %i.eta = ptrtoint ptr %.0390.i to i64
  %i.etb = ptrtoint ptr %.0405.i to i64           ; 2 uses
  %i.etc = sub i64 %i.eta, %i.etb
  %i.etd = sub i64 %i.esy, %i.etb
  %i.ete = sub i64 %i.esv, %i.esz
  %i.etf = getelementptr inbounds nuw i8, ptr %i.esw, i64 %i.ete ; 2 uses
  %i.etg = getelementptr inbounds nuw i8, ptr %i.esw, i64 %i.etd
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.etf, ptr nonnull align 1 %i.etg, i64 %i.esz, i1 false)
  %i.eth = getelementptr inbounds nuw i8, ptr %i.esw, i64 %i.etc
  %i.eti = getelementptr inbounds nuw i8, ptr %i.esw, i64 %i.esv
  br label %bb.tv

bb.tv:                                            ; preds = %.thread911, %bb.tt
  %.10415.i = phi ptr [ %i.esw, %.thread911 ], [ %.0405.i, %bb.tt ]
  %.11401.i = phi ptr [ %i.eth, %.thread911 ], [ %.0390.i, %bb.tt ] ; 2 uses
  %.10386.i = phi ptr [ %i.eti, %.thread911 ], [ %.0376.i, %bb.tt ]
  %.10.i374 = phi ptr [ %i.etf, %.thread911 ], [ %.0368.i, %bb.tt ]
  %.5366.i = phi i64 [ %i.esv, %.thread911 ], [ %.0361.i, %bb.tt ]
  store i64 11185913886062, ptr %.11401.i, align 1
  %i.etj = getelementptr inbounds nuw i8, ptr %.11401.i, i64 5
  br label %bb.tz

bb.tw:                                            ; preds = %bb.tq
  %i.etk = lshr i64 %i.cxv, 8                     ; 3 uses
  %i.etl = getelementptr inbounds nuw i8, ptr %.0423.i, i64 8
  %i.etm = load ptr, ptr %i.etl, align 8, !tbaa !100
  %i.etn = add nuw nsw i64 %i.etk, 2              ; 2 uses
  %i.eto = getelementptr inbounds nuw i8, ptr %.0390.i, i64 %i.etn
  %.not432.i = icmp ult ptr %i.eto, %.0368.i
  br i1 %.not432.i, label %bb.ty, label %bb.tx, !prof !62

bb.tx:                                            ; preds = %bb.tw
  %i.etp = lshr i64 %.0361.i, 1
  %i.etq = tail call i64 @llvm.umax.i64(i64 %i.etp, i64 %i.etn)
  %i.etr = add nuw i64 %i.etq, 15
  %i.ets = and i64 %i.etr, -16
  %i.ett = add i64 %i.ets, %.0361.i               ; 4 uses
  %i.etu = tail call ptr %.sroa.7.0(ptr noundef %.sroa.9.0, ptr noundef %.0405.i, i64 noundef %.0361.i, i64 noundef %i.ett) #33, !inline_history !426 ; 6 uses
  %.not433.i = icmp eq ptr %i.etu, null
  br i1 %.not433.i, label %.loopexit1019, label %.thread917, !prof !45

.thread917:                                       ; preds = %bb.tx
  %i.etv = ptrtoint ptr %.0376.i to i64
  %i.etw = ptrtoint ptr %.0368.i to i64           ; 2 uses
  %i.etx = sub i64 %i.etv, %i.etw                 ; 2 uses
  %i.ety = ptrtoint ptr %.0390.i to i64
  %i.etz = ptrtoint ptr %.0405.i to i64           ; 2 uses
  %i.eua = sub i64 %i.ety, %i.etz
  %i.eub = sub i64 %i.etw, %i.etz
  %i.euc = sub i64 %i.ett, %i.etx
  %i.eud = getelementptr inbounds nuw i8, ptr %i.etu, i64 %i.euc ; 2 uses
  %i.eue = getelementptr inbounds nuw i8, ptr %i.etu, i64 %i.eub
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.eud, ptr nonnull align 1 %i.eue, i64 %i.etx, i1 false)
  %i.euf = getelementptr inbounds nuw i8, ptr %i.etu, i64 %i.eua
  %i.eug = getelementptr inbounds nuw i8, ptr %i.etu, i64 %i.ett
  br label %bb.ty

bb.ty:                                            ; preds = %.thread917, %bb.tw
  %.12417.i = phi ptr [ %i.etu, %.thread917 ], [ %.0405.i, %bb.tw ]
  %.13403.i = phi ptr [ %i.euf, %.thread917 ], [ %.0390.i, %bb.tw ] ; 2 uses
  %.12388.i = phi ptr [ %i.eug, %.thread917 ], [ %.0376.i, %bb.tw ]
  %.12.i371 = phi ptr [ %i.eud, %.thread917 ], [ %.0368.i, %bb.tw ]
  %.6367.i = phi i64 [ %i.ett, %.thread917 ], [ %.0361.i, %bb.tw ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.13403.i, ptr align 1 %i.etm, i64 range(i64 0, 72057594037927936) %i.etk, i1 false)
  %i.euh = getelementptr inbounds nuw i8, ptr %.13403.i, i64 %i.etk ; 2 uses
  %i.eui = getelementptr inbounds nuw i8, ptr %i.euh, i64 1
  store i8 44, ptr %i.euh, align 1, !tbaa !100
  br label %bb.tz

bb.tz:                                            ; preds = %bb.ty, %bb.tv, %write_bool.exit.i377, %bb.tn, %write_num.exit.i204.thread, %write_str.exit581.i
  %.13418.i = phi ptr [ %.2407.i, %write_str.exit581.i ], [ %.4409.i, %write_num.exit.i204.thread ], [ %.6411.i, %bb.tn ], [ %.8413.i, %write_bool.exit.i377 ], [ %.10415.i, %bb.tv ], [ %.12417.i, %bb.ty ] ; 7 uses
  %.14404.i = phi ptr [ %i.eci, %write_str.exit581.i ], [ %i.eqc, %write_num.exit.i204.thread ], [ %i.erg, %bb.tn ], [ %i.esp, %write_bool.exit.i377 ], [ %i.etj, %bb.tv ], [ %i.eui, %bb.ty ] ; 2 uses
  %.13389.i = phi ptr [ %.2378.i, %write_str.exit581.i ], [ %.4380.i, %write_num.exit.i204.thread ], [ %.6382.i, %bb.tn ], [ %.8384.i, %write_bool.exit.i377 ], [ %.10386.i, %bb.tv ], [ %.12388.i, %bb.ty ] ; 4 uses
  %.13.i205 = phi ptr [ %.2370.i, %write_str.exit581.i ], [ %.4372.i, %write_num.exit.i204.thread ], [ %.6374.i, %bb.tn ], [ %.8.i376, %write_bool.exit.i377 ], [ %.10.i374, %bb.tv ], [ %.12.i371, %bb.ty ] ; 2 uses
  %.7.i206 = phi i64 [ %.1362.i, %write_str.exit581.i ], [ %.2363.i, %write_num.exit.i204.thread ], [ %.3364.i, %bb.tn ], [ %.4365.i, %write_bool.exit.i377 ], [ %.5366.i, %bb.tv ], [ %.6367.i, %bb.ty ] ; 5 uses
  %i.euj = add i64 %.0693, -1                     ; 2 uses
  %i.euk = icmp eq i64 %i.euj, 0
  br i1 %i.euk, label %.preheader1015, label %bb.nm, !prof !45

.preheader1015:                                   ; preds = %bb.tz, %bb.ua
  %.1695 = phi ptr [ %i.euv, %bb.ua ], [ %.0694.ph, %bb.tz ]
  %.1692 = phi i8 [ %i.eut, %bb.ua ], [ %.0691.ph, %bb.tz ]
  %.15.i207 = phi ptr [ %i.euo, %bb.ua ], [ %.14404.i, %bb.tz ] ; 5 uses
  %.14.i208 = phi ptr [ %i.eup, %bb.ua ], [ %.13.i205, %bb.tz ] ; 6 uses
  %i.eul = getelementptr inbounds i8, ptr %.15.i207, i64 -1
  %i.eum = shl nuw nsw i8 %.1692, 5
  %i.eun = add nuw nsw i8 %i.eum, 93
  store i8 %i.eun, ptr %i.eul, align 1, !tbaa !100
  %i.euo = getelementptr inbounds nuw i8, ptr %.15.i207, i64 1 ; 4 uses
  store i8 44, ptr %.15.i207, align 1, !tbaa !100
  %.not452.i = icmp ult ptr %.14.i208, %.13389.i
  br i1 %.not452.i, label %bb.ua, label %bb.ub, !prof !62

bb.ua:                                            ; preds = %.preheader1015
  %i.eup = getelementptr inbounds nuw i8, ptr %.14.i208, i64 16 ; 2 uses
  %i.euq = load i64, ptr %.14.i208, align 8, !tbaa !436 ; 2 uses
  %i.eur = lshr i64 %i.euq, 1
end_hunk_3
