Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/iff?download=true
inline.NumInlined: 31
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 18
begin_hunk_0_@decode_frame:bb.a

bb.ia:                                            ; preds = %bb.hz
  %i.cmq = and i32 %i.cmn, 32767                  ; 2 uses
  %.not58141.us.i = icmp eq i32 %i.cmq, 0
  br i1 %.not58141.us.i, label %.critedge2.us.i, label %.lr.ph.us.i1042

.lr.ph.us.i1042:                                  ; preds = %bb.ia, %bytestream2_put_be16.exit.us.i1049
  %.1145.us.i1043 = phi i32 [ %i.cnj, %bytestream2_put_be16.exit.us.i1049 ], [ %i.cmq, %bb.ia ]
  %.2144.us.i1044 = phi i32 [ %i.cni, %bytestream2_put_be16.exit.us.i1049 ], [ %.051161.us.i, %bb.ia ] ; 5 uses
  %.sroa.0.4143.us.i = phi ptr [ %.sroa.0.7.us.i, %bytestream2_put_be16.exit.us.i1049 ], [ %.sroa.0.2160.us.i, %bb.ia ] ; 2 uses
  %.sroa.098.2142.us.i = phi ptr [ %.sroa.098.4.us.i, %bytestream2_put_be16.exit.us.i1049 ], [ %i.cmk, %bb.ia ] ; 4 uses
  %i.cmr = ptrtoint ptr %.sroa.098.2142.us.i to i64
  %i.cms = sub i64 %i.clv, %i.cmr                 ; 2 uses
  %i.cmt = trunc i64 %i.cms to i32
  %i.cmu = icmp sgt i32 %i.cmt, 1
  %i.cmv = ptrtoint ptr %.sroa.0.4143.us.i to i64
  %i.cmw = sub i64 %i.clg, %i.cmv
  %i.cmx = trunc i64 %i.cmw to i32
  %i.cmy = icmp sgt i32 %i.cmx, 1
  %or.cond139.us.i = select i1 %i.cmu, i1 %i.cmy, i1 false
  br i1 %or.cond139.us.i, label %bytestream2_seek_p.exit.us.i1046, label %.critedge2.us.i

bytestream2_seek_p.exit.us.i1046:                 ; preds = %.lr.ph.us.i1042
  %i.cmz = icmp sge i32 %i.ckq, %.2144.us.i1044
  %i.cna = icmp slt i32 %.2144.us.i1044, 0
  %..i76.us.i = tail call i32 @llvm.smin.i32(i32 %.2144.us.i1044, i32 %i.ckq)
  %.0.i77.us.i1047 = select i1 %i.cna, i32 0, i32 %..i76.us.i
  %i.cnb = sext i32 %.0.i77.us.i1047 to i64       ; 2 uses
  %i.cnc = getelementptr inbounds i8, ptr %i.ckk, i64 %i.cnb ; 3 uses
  %i.cnd = icmp slt i64 %i.cms, 2
  br i1 %i.cnd, label %bytestream2_get_be16.exit.us.i1048, label %bb.ib

bb.ib:                                            ; preds = %bytestream2_seek_p.exit.us.i1046
  %i.cne = getelementptr inbounds nuw i8, ptr %.sroa.098.2142.us.i, i64 2
  %i.cnf = load i16, ptr %.sroa.098.2142.us.i, align 1, !tbaa !33
  br label %bytestream2_get_be16.exit.us.i1048

bytestream2_get_be16.exit.us.i1048:               ; preds = %bb.ib, %bytestream2_seek_p.exit.us.i1046
  %.sroa.098.4.us.i = phi ptr [ %i.cne, %bb.ib ], [ %i.clt, %bytestream2_seek_p.exit.us.i1046 ] ; 2 uses
  %.0.i62.us.i = phi i16 [ %i.cnf, %bb.ib ], [ 0, %bytestream2_seek_p.exit.us.i1046 ]
  %i.cng = icmp sgt i64 %invariant.op.i1032, %i.cnb
  %or.cond128.us.i = select i1 %i.cmz, i1 %i.cng, i1 false
  br i1 %or.cond128.us.i, label %bb.ic, label %bytestream2_put_be16.exit.us.i1049

bb.ic:                                            ; preds = %bytestream2_get_be16.exit.us.i1048
  store i16 %.0.i62.us.i, ptr %i.cnc, align 1, !tbaa !33
  %i.cnh = getelementptr inbounds nuw i8, ptr %i.cnc, i64 2
  br label %bytestream2_put_be16.exit.us.i1049

bytestream2_put_be16.exit.us.i1049:               ; preds = %bb.ic, %bytestream2_get_be16.exit.us.i1048
  %.sroa.0.7.us.i = phi ptr [ %i.cnh, %bb.ic ], [ %i.cnc, %bytestream2_get_be16.exit.us.i1048 ] ; 2 uses
  %i.cni = add i32 %.2144.us.i1044, %i.cku        ; 2 uses
  %i.cnj = add nsw i32 %.1145.us.i1043, -1        ; 2 uses
  %.not58.us.i = icmp eq i32 %i.cnj, 0
  br i1 %.not58.us.i, label %.critedge2.us.i, label %.lr.ph.us.i1042, !llvm.loop !135

bb.id:                                            ; preds = %bb.hz
  %i.cnk = mul i32 %i.cku, %i.cmn
  %i.cnl = add i32 %i.cnk, %.051161.us.i
  br label %.critedge2.us.i

bytestream2_get_be16.exit68.thread.us.i:          ; preds = %bytestream2_get_be16.exit68.us.bytestream2_get_be16.exit68.thread.us_crit_edge.i, %bb.hy
  %.pre-phi187.i = phi i64 [ %.pre186.i, %bytestream2_get_be16.exit68.us.bytestream2_get_be16.exit68.thread.us_crit_edge.i ], [ %i.clv, %bb.hy ]
  %.sroa.098.7124.us.i = phi ptr [ %i.cmk, %bytestream2_get_be16.exit68.us.bytestream2_get_be16.exit68.thread.us_crit_edge.i ], [ %i.clt, %bb.hy ] ; 2 uses
  %i.cnm = sub i64 %i.clv, %.pre-phi187.i
  %i.cnn = icmp slt i64 %i.cnm, 2
  br i1 %i.cnn, label %bytestream2_get_be16.exit66.us.i, label %bb.ie

bb.ie:                                            ; preds = %bytestream2_get_be16.exit68.thread.us.i
  %i.cno = getelementptr inbounds nuw i8, ptr %.sroa.098.7124.us.i, i64 2 ; 2 uses
  %i.cnp = load i16, ptr %.sroa.098.7124.us.i, align 1, !tbaa !33
  %i.cnq = tail call i16 @llvm.bswap.i16(i16 %i.cnp)
  %i.cnr = zext i16 %i.cnq to i32
  %.pre.i1050 = ptrtoint ptr %i.cno to i64
  br label %bytestream2_get_be16.exit66.us.i

bytestream2_get_be16.exit66.us.i:                 ; preds = %bb.ie, %bytestream2_get_be16.exit68.thread.us.i
  %.pre-phi.i1051 = phi i64 [ %.pre.i1050, %bb.ie ], [ %i.clv, %bytestream2_get_be16.exit68.thread.us.i ]
  %.sroa.098.6.us.i = phi ptr [ %i.cno, %bb.ie ], [ %i.clt, %bytestream2_get_be16.exit68.thread.us.i ] ; 2 uses
  %.0.i65.us.i = phi i32 [ %i.cnr, %bb.ie ], [ 0, %bytestream2_get_be16.exit68.thread.us.i ] ; 2 uses
  %i.cns = sub i64 %i.clv, %.pre-phi.i1051
  %i.cnt = icmp slt i64 %i.cns, 2
  br i1 %i.cnt, label %bytestream2_get_be16.exit64.us.i, label %bb.if

bb.if:                                            ; preds = %bytestream2_get_be16.exit66.us.i
  %i.cnu = getelementptr inbounds nuw i8, ptr %.sroa.098.6.us.i, i64 2
  %i.cnv = load i16, ptr %.sroa.098.6.us.i, align 1, !tbaa !33
  br label %bytestream2_get_be16.exit64.us.i

bytestream2_get_be16.exit64.us.i:                 ; preds = %bb.if, %bytestream2_get_be16.exit66.us.i
  %.sroa.098.5.us.i = phi ptr [ %i.cnu, %bb.if ], [ %i.clt, %bytestream2_get_be16.exit66.us.i ] ; 2 uses
  %.0.i63.us.i = phi i16 [ %i.cnv, %bb.if ], [ 0, %bytestream2_get_be16.exit66.us.i ]
  %.not59153.us.i = icmp ne i32 %.0.i65.us.i, 0
  %i.cnw = ptrtoint ptr %.sroa.0.2160.us.i to i64
  %i.cnx = sub i64 %i.clg, %i.cnw
  %i.cny = trunc i64 %i.cnx to i32
  %i.cnz = icmp sgt i32 %i.cny, 1
  %or.cond134154.us.i = select i1 %.not59153.us.i, i1 %i.cnz, i1 false
  br i1 %or.cond134154.us.i, label %bytestream2_seek_p.exit72.us.i, label %.critedge2.us.i

bytestream2_seek_p.exit72.us.i:                   ; preds = %bytestream2_get_be16.exit64.us.i, %bytestream2_put_be16.exit74.us.i
  %.050156.us.i = phi i32 [ %i.coh, %bytestream2_put_be16.exit74.us.i ], [ %.0.i65.us.i, %bytestream2_get_be16.exit64.us.i ]
  %.152155.us.i = phi i32 [ %i.cog, %bytestream2_put_be16.exit74.us.i ], [ %.051161.us.i, %bytestream2_get_be16.exit64.us.i ] ; 4 uses
  %i.coa = icmp sge i32 %i.ckq, %.152155.us.i
  %i.cob = icmp slt i32 %.152155.us.i, 0
  %..i.us.i1052 = tail call i32 @llvm.smin.i32(i32 %.152155.us.i, i32 %i.ckq)
  %.0.i75.us.i1053 = select i1 %i.cob, i32 0, i32 %..i.us.i1052
  %i.coc = sext i32 %.0.i75.us.i1053 to i64       ; 2 uses
  %i.cod = getelementptr inbounds i8, ptr %i.ckk, i64 %i.coc ; 3 uses
  %i.coe = icmp sgt i64 %invariant.op.i1032, %i.coc
  %or.cond.us.i1054 = select i1 %i.coa, i1 %i.coe, i1 false
  br i1 %or.cond.us.i1054, label %bb.ig, label %bytestream2_put_be16.exit74.us.i

bb.ig:                                            ; preds = %bytestream2_seek_p.exit72.us.i
  store i16 %.0.i63.us.i, ptr %i.cod, align 1, !tbaa !33
  %i.cof = getelementptr inbounds nuw i8, ptr %i.cod, i64 2
  br label %bytestream2_put_be16.exit74.us.i

bytestream2_put_be16.exit74.us.i:                 ; preds = %bb.ig, %bytestream2_seek_p.exit72.us.i
  %.sroa.0.8.us.i = phi ptr [ %i.cof, %bb.ig ], [ %i.cod, %bytestream2_seek_p.exit72.us.i ] ; 2 uses
  %i.cog = add i32 %.152155.us.i, %i.cku          ; 2 uses
  %i.coh = add nsw i32 %.050156.us.i, -1          ; 2 uses
  %.not59.us.i = icmp ne i32 %i.coh, 0
  %i.coi = ptrtoint ptr %.sroa.0.8.us.i to i64
  %i.coj = sub i64 %i.clg, %i.coi
  %i.cok = trunc i64 %i.coj to i32
  %i.col = icmp sgt i32 %i.cok, 1
  %or.cond134.us.i = select i1 %.not59.us.i, i1 %i.col, i1 false
  br i1 %or.cond134.us.i, label %bytestream2_seek_p.exit72.us.i, label %.critedge2.us.i, !llvm.loop !136

.critedge2.us.i:                                  ; preds = %bytestream2_put_be16.exit.us.i1049, %.lr.ph.us.i1042, %bytestream2_put_be16.exit74.us.i, %bytestream2_get_be16.exit64.us.i, %bb.id, %bb.ia
  %.sroa.098.3.us.i = phi ptr [ %i.cmk, %bb.id ], [ %.sroa.098.5.us.i, %bytestream2_get_be16.exit64.us.i ], [ %.sroa.098.5.us.i, %bytestream2_put_be16.exit74.us.i ], [ %i.cmk, %bb.ia ], [ %.sroa.098.4.us.i, %bytestream2_put_be16.exit.us.i1049 ], [ %.sroa.098.2142.us.i, %.lr.ph.us.i1042 ] ; 2 uses
  %.sroa.0.5.us.i = phi ptr [ %.sroa.0.2160.us.i, %bb.id ], [ %.sroa.0.2160.us.i, %bytestream2_get_be16.exit64.us.i ], [ %.sroa.0.8.us.i, %bytestream2_put_be16.exit74.us.i ], [ %.sroa.0.2160.us.i, %bb.ia ], [ %.sroa.0.7.us.i, %bytestream2_put_be16.exit.us.i1049 ], [ %.sroa.0.4143.us.i, %.lr.ph.us.i1042 ] ; 2 uses
  %.3.us.i1045 = phi i32 [ %i.cnl, %bb.id ], [ %.051161.us.i, %bytestream2_get_be16.exit64.us.i ], [ %i.cog, %bytestream2_put_be16.exit74.us.i ], [ %.051161.us.i, %bb.ia ], [ %i.cni, %bytestream2_put_be16.exit.us.i1049 ], [ %.2144.us.i1044, %.lr.ph.us.i1042 ]
  %i.com = add nsw i32 %.049162.us.i, -1
  %i.con = icmp sgt i32 %.049162.us.i, 1
  br i1 %i.con, label %.lr.ph163.us.i, label %.critedge.us.i, !llvm.loop !137

.critedge.us.i:                                   ; preds = %.critedge2.us.i, %.lr.ph163.us.i, %bytestream2_get_be16.exit70.us.i, %bb.hx
  %.sroa.098.1.lcssa.us.i = phi ptr [ %i.clz, %bytestream2_get_be16.exit70.us.i ], [ %i.clt, %bb.hx ], [ %.sroa.098.1159.us.i, %.lr.ph163.us.i ], [ %.sroa.098.3.us.i, %.critedge2.us.i ]
  %.sroa.0.2.lcssa.us.i = phi ptr [ %.sroa.0.1170.us.i, %bytestream2_get_be16.exit70.us.i ], [ %.sroa.0.1170.us.i, %bb.hx ], [ %.sroa.0.2160.us.i, %.lr.ph163.us.i ], [ %.sroa.0.5.us.i, %.critedge2.us.i ] ; 2 uses
  %i.coo = add nuw nsw i32 %.048171.us.i, 1       ; 2 uses
  %exitcond184.not.i = icmp eq i32 %i.coo, %i.cks
  br i1 %exitcond184.not.i, label %bytestream2_get_be32.exit.thread.us.i1040, label %bb.hx, !llvm.loop !138

bytestream2_get_be32.exit.thread.us.i1040:        ; preds = %.critedge.us.i, %bb.hv, %bytestream2_get_be32.exit.us.i1038, %.lr.ph178.split.us.i
  %.sroa.0116.1121.us.i = phi ptr [ %i.clk, %bytestream2_get_be32.exit.us.i1038 ], [ %i.cky, %.lr.ph178.split.us.i ], [ %i.clk, %bb.hv ], [ %i.clk, %.critedge.us.i ]
  %.sroa.0.6.us.i = phi ptr [ %.sroa.0.0175.us.i, %bytestream2_get_be32.exit.us.i1038 ], [ %.sroa.0.0175.us.i, %.lr.ph178.split.us.i ], [ %.sroa.0.0175.us.i, %bb.hv ], [ %.sroa.0.2.lcssa.us.i, %.critedge.us.i ]
  %i.cop = add nuw nsw i32 %.0176.us.i, 1         ; 2 uses
  %exitcond185.not.i = icmp eq i32 %i.cop, %i.cko
  br i1 %exitcond185.not.i, label %decode_short_horizontal_delta.exit, label %.lr.ph178.split.us.i, !llvm.loop !139

.lr.ph178.split.i:                                ; preds = %.lr.ph178.i1031, %bytestream2_get_be32.exit.thread.i1035
  %.0176.i = phi i32 [ %i.cpa, %bytestream2_get_be32.exit.thread.i1035 ], [ 0, %.lr.ph178.i1031 ]
  %.sroa.0116.0174.i = phi ptr [ %.sroa.0116.1121.i, %bytestream2_get_be32.exit.thread.i1035 ], [ %i.dz, %.lr.ph178.i1031 ] ; 3 uses
  %i.coq = ptrtoint ptr %.sroa.0116.0174.i to i64
  %i.cor = sub i64 %i.cle, %i.coq
  %i.cos = icmp slt i64 %i.cor, 4
  br i1 %i.cos, label %bytestream2_get_be32.exit.thread.i1035, label %bytestream2_get_be32.exit.i1033

bytestream2_get_be32.exit.i1033:                  ; preds = %.lr.ph178.split.i
  %i.cot = getelementptr inbounds nuw i8, ptr %.sroa.0116.0174.i, i64 4 ; 3 uses
  %i.cou = load i32, ptr %.sroa.0116.0174.i, align 1, !tbaa !33 ; 2 uses
  %.not.i1034 = icmp eq i32 %i.cou, 0
  br i1 %.not.i1034, label %bytestream2_get_be32.exit.thread.i1035, label %bb.ih

bb.ih:                                            ; preds = %bytestream2_get_be32.exit.i1033
  %i.cov = tail call i32 @llvm.bswap.i32(i32 %i.cou)
  %i.cow = zext i32 %i.cov to i64                 ; 2 uses
  %.not57.i = icmp sgt i64 %gepdiff1126.a, %i.cow
  br i1 %.not57.i, label %bb.ii, label %bytestream2_get_be32.exit.thread.i1035

bb.ii:                                            ; preds = %bb.ih
  %i.cox = add i64 %i.dw, %i.cow
  %gepdiff1127 = sub i64 %i.g, %i.cox
  %i.coy = and i64 %gepdiff1127, 2147483648
  %i.coz = icmp eq i64 %i.coy, 0
  br i1 %i.coz, label %bytestream2_get_be32.exit.thread.i1035, label %.split.us.i1037

.split.us.i1037:                                  ; preds = %bb.ii, %bb.hw
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 141) #10
  tail call void @abort() #11
  unreachable

bytestream2_get_be32.exit.thread.i1035:           ; preds = %bb.ii, %bb.ih, %bytestream2_get_be32.exit.i1033, %.lr.ph178.split.i
  %.sroa.0116.1121.i = phi ptr [ %i.cot, %bytestream2_get_be32.exit.i1033 ], [ %i.cky, %.lr.ph178.split.i ], [ %i.cot, %bb.ih ], [ %i.cot, %bb.ii ]
  %i.cpa = add nuw nsw i32 %.0176.i, 1            ; 2 uses
  %exitcond.not.i1036 = icmp eq i32 %i.cpa, %i.cko
  br i1 %exitcond.not.i1036, label %decode_short_horizontal_delta.exit, label %.lr.ph178.split.i, !llvm.loop !139

bb.ij:                                            ; preds = %bb.hr
  tail call fastcc void @decode_long_vertical_delta2(ptr noundef %i.ckk, ptr noundef nonnull %i.dz, ptr noundef nonnull %i.h, i32 noundef %i.ckm, i32 noundef %i.cko, i32 noundef %i.ckq)
  br label %decode_short_horizontal_delta.exit

bb.ik:                                            ; preds = %thread-pre-split, %thread-pre-split
  %i.cpb = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.cpc = load ptr, ptr %i.cpb, align 8, !tbaa !43 ; 4 uses
  %i.cpd = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cpe = load i32, ptr %i.cpd, align 8, !tbaa !36 ; 4 uses
  %i.cpf = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cpg = load i32, ptr %i.cpf, align 8, !tbaa !41 ; 9 uses
  %i.cph = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.cpi = load i32, ptr %i.cph, align 8, !tbaa !42 ; 3 uses
  %i.cpj = add nsw i32 %i.cpe, 7
  %i.cpk = sdiv i32 %i.cpj, 8                     ; 4 uses
  %i.cpl = add nsw i32 %i.cpe, 15
  %i.cpm = sdiv i32 %i.cpl, 16
  %i.cpn = shl nsw i32 %i.cpm, 1                  ; 5 uses
  %i.cpo = mul i32 %i.cpn, %i.cpg                 ; 6 uses
  %i.cpp = icmp slt i32 %i.cpe, 320
  %i.cpq = sub nsw i32 320, %i.cpe
  %i.cpr = lshr i32 %i.cpq, 4
  %i.cps = select i1 %i.cpp, i32 %i.cpr, i32 0    ; 3 uses
  %gepdiff1125.a = sub nsw i64 %i.g, %i.dy        ; 3 uses
  %i.cpt = and i64 %gepdiff1125.a, 2147483648
  %i.cpu = icmp eq i64 %i.cpt, 0
  br i1 %i.cpu, label %bytestream2_init.exit.i1055, label %bb.il

bb.il:                                            ; preds = %bb.ik
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 141) #10
  tail call void @abort() #11
  unreachable

bytestream2_init.exit.i1055:                      ; preds = %bb.ik
  %i.cpv = and i64 %gepdiff1125.a, 2147483647     ; 2 uses
  %i.cpw = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.cpv ; 14 uses
  %i.cpx = ptrtoint ptr %i.cpw to i64             ; 26 uses
  %i.cpy = trunc i64 %gepdiff1125.a to i32
  %i.cpz = icmp slt i32 %i.cpy, 2
  %i.cqa = icmp samesign ult i64 %i.cpv, 2
  %or.cond315.i = or i1 %i.cqa, %i.cpz
  br i1 %or.cond315.i, label %decode_short_horizontal_delta.exit, label %bytestream2_get_be16.exit143.lr.ph.i

bytestream2_get_be16.exit143.lr.ph.i:             ; preds = %bytestream2_init.exit.i1055
  %.not117.i = icmp eq i32 %i.cps, 0              ; 2 uses
  %i.cqb = icmp slt i32 %i.cpg, 1                 ; 2 uses
  %i.cqc = zext i32 %i.cpi to i64                 ; 2 uses
  br label %bytestream2_get_be16.exit143.i

bytestream2_get_be16.exit143.i:                   ; preds = %.loopexit.i1065, %bytestream2_get_be16.exit143.lr.ph.i
  %.sroa.0.0316.i = phi ptr [ %i.dz, %bytestream2_get_be16.exit143.lr.ph.i ], [ %.sroa.0.10.i, %.loopexit.i1065 ] ; 4 uses
  %i.cqd = getelementptr inbounds nuw i8, ptr %.sroa.0.0316.i, i64 2 ; 4 uses
  %i.cqe = load i16, ptr %.sroa.0.0316.i, align 1, !tbaa !33
  %i.cqf = tail call i16 @llvm.bswap.i16(i16 %i.cqe)
  switch i16 %i.cqf, label %decode_short_horizontal_delta.exit [
    i16 2, label %bb.jc
    i16 1, label %bb.im
  ]

bb.im:                                            ; preds = %bytestream2_get_be16.exit143.i
  %i.cqg = ptrtoint ptr %i.cqd to i64
  %i.cqh = sub i64 %i.cpx, %i.cqg
  %i.cqi = icmp slt i64 %i.cqh, 2
  br i1 %i.cqi, label %bytestream2_get_be16.exit141.i1056, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.cqj = getelementptr inbounds nuw i8, ptr %.sroa.0.0316.i, i64 4 ; 2 uses
  %i.cqk = load i16, ptr %i.cqd, align 1, !tbaa !33
  %.fr319.i = freeze i16 %i.cqk
  %i.cql = icmp eq i16 %.fr319.i, 0
  %.pre377.i = ptrtoint ptr %i.cqj to i64
  br label %bytestream2_get_be16.exit141.i1056

bytestream2_get_be16.exit141.i1056:               ; preds = %bb.in, %bb.im
  %.pre-phi378.i = phi i64 [ %i.cpx, %bb.im ], [ %.pre377.i, %bb.in ]
  %.sroa.0.21.i = phi ptr [ %i.cpw, %bb.im ], [ %i.cqj, %bb.in ] ; 2 uses
  %.0.i140.i = phi i1 [ true, %bb.im ], [ %i.cql, %bb.in ]
  %i.cqm = sub i64 %i.cpx, %.pre-phi378.i
  %i.cqn = icmp slt i64 %i.cqm, 2
  br i1 %i.cqn, label %bytestream2_get_be16.exit139.i1057, label %bb.io

bb.io:                                            ; preds = %bytestream2_get_be16.exit141.i1056
  %i.cqo = getelementptr inbounds nuw i8, ptr %.sroa.0.21.i, i64 2 ; 2 uses
  %i.cqp = load i16, ptr %.sroa.0.21.i, align 1, !tbaa !33
  %i.cqq = tail call i16 @llvm.bswap.i16(i16 %i.cqp)
  %i.cqr = zext i16 %i.cqq to i32
  %.pre379.i = ptrtoint ptr %i.cqo to i64
  br label %bytestream2_get_be16.exit139.i1057

bytestream2_get_be16.exit139.i1057:               ; preds = %bb.io, %bytestream2_get_be16.exit141.i1056
  %.pre-phi380.i = phi i64 [ %i.cpx, %bytestream2_get_be16.exit141.i1056 ], [ %.pre379.i, %bb.io ]
  %.sroa.0.20.i = phi ptr [ %i.cpw, %bytestream2_get_be16.exit141.i1056 ], [ %i.cqo, %bb.io ] ; 2 uses
  %.0.i138.i = phi i32 [ 0, %bytestream2_get_be16.exit141.i1056 ], [ %i.cqr, %bb.io ] ; 5 uses
  %i.cqs = sub i64 %i.cpx, %.pre-phi380.i
  %i.cqt = icmp slt i64 %i.cqs, 2
  br i1 %i.cqt, label %.loopexit.i1065, label %bytestream2_get_be16.exit137.i1058

bytestream2_get_be16.exit137.i1058:               ; preds = %bytestream2_get_be16.exit139.i1057
  %i.cqu = getelementptr inbounds nuw i8, ptr %.sroa.0.20.i, i64 2 ; 2 uses
  %i.cqv = load i16, ptr %.sroa.0.20.i, align 1, !tbaa !33 ; 2 uses
  %i.cqw = tail call i16 @llvm.bswap.i16(i16 %i.cqv)
  %i.cqx = zext i16 %i.cqw to i32
  %.not317.i = icmp eq i16 %i.cqv, 0
  br i1 %.not317.i, label %.loopexit.i1065, label %.lr.ph.i1059

.lr.ph.i1059:                                     ; preds = %bytestream2_get_be16.exit137.i1058
  %i.cqy = mul i32 %.0.i138.i, %i.cpg             ; 2 uses
  %i.cqz = add i32 %i.cqy, -1
  %.not318.i = icmp eq i32 %.0.i138.i, 0
  %i.cra = and i32 %i.cqy, 1
  %.not118.i = icmp eq i32 %i.cra, 0
  %brmerge.i = or i1 %i.cqb, %.not318.i
  br label %bb.ip

bb.ip:                                            ; preds = %._crit_edge240.i, %.lr.ph.i1059
  %.0100255.i = phi i32 [ 0, %.lr.ph.i1059 ], [ %i.csr, %._crit_edge240.i ]
  %.sroa.0.1254.i = phi ptr [ %i.cqu, %.lr.ph.i1059 ], [ %.sroa.0.4.i, %._crit_edge240.i ] ; 3 uses
  %i.crb = ptrtoint ptr %.sroa.0.1254.i to i64
  %i.crc = sub i64 %i.cpx, %i.crb
  %i.crd = icmp slt i64 %i.crc, 2
  br i1 %i.crd, label %bytestream2_get_be16.exit135.i1060, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.cre = getelementptr inbounds nuw i8, ptr %.sroa.0.1254.i, i64 2 ; 2 uses
  %i.crf = load i16, ptr %.sroa.0.1254.i, align 1, !tbaa !33
  %i.crg = tail call i16 @llvm.bswap.i16(i16 %i.crf)
  %i.crh = zext i16 %i.crg to i32
  %.pre381.i = ptrtoint ptr %i.cre to i64
  br label %bytestream2_get_be16.exit135.i1060

bytestream2_get_be16.exit135.i1060:               ; preds = %bb.iq, %bb.ip
  %.pre-phi382.i = phi i64 [ %i.cpx, %bb.ip ], [ %.pre381.i, %bb.iq ]
  %.sroa.0.18.i = phi ptr [ %i.cpw, %bb.ip ], [ %i.cre, %bb.iq ] ; 3 uses
  %.0.i134.i1061 = phi i32 [ 0, %bb.ip ], [ %i.crh, %bb.iq ] ; 3 uses
  %i.cri = sub i64 %i.cpx, %.pre-phi382.i
  %.fr.i = freeze i64 %i.cri
  %i.crj = trunc i64 %.fr.i to i32
  %or.cond207.not.i = icmp ult i32 %i.cqz, %i.crj
  br i1 %or.cond207.not.i, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bytestream2_get_be16.exit135.i1060
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %.0.i138.i, i32 noundef %i.cpg) #10
  br label %decode_short_horizontal_delta.exit

bb.is:                                            ; preds = %bytestream2_get_be16.exit135.i1060
  br i1 %.not117.i, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %bb.is
  %.lhs.trunc200.i = trunc nuw i32 %.0.i134.i1061 to i16 ; 2 uses
  %i.crk = udiv i16 %.lhs.trunc200.i, 40
  %.zext201.i = zext nneg i16 %i.crk to i32
  %i.crl = mul i32 %i.cpo, %.zext201.i
  %i.crm = urem i16 %.lhs.trunc200.i, 40
  %.zext203.i = zext nneg i16 %i.crm to i32
  %i.crn = sub nsw i32 %.zext203.i, %i.cps
  %i.cro = add i32 %i.crn, %i.crl
  br label %bb.iv

bb.iu:                                            ; preds = %bb.is
  %i.crp = udiv i32 %.0.i134.i1061, %i.cpk
  %i.crq = mul i32 %i.crp, %i.cpo
  %i.crr = urem i32 %.0.i134.i1061, %i.cpk
  %i.crs = add i32 %i.crq, %i.crr
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %bb.it
  %.0104.i1063 = phi i32 [ %i.cro, %bb.it ], [ %i.crs, %bb.iu ] ; 2 uses
  br i1 %brmerge.i, label %._crit_edge240.i, label %.preheader214.lr.ph.split.us.i

.preheader214.lr.ph.split.us.i:                   ; preds = %bb.iv
  br i1 %.0.i140.i, label %.preheader214.us.us.i, label %.preheader214.us.i

.preheader214.us.us.i:                            ; preds = %.preheader214.lr.ph.split.us.i, %._crit_edge.split.us.us.us.i
  %.0102239.us.us.i = phi i32 [ %i.csc, %._crit_edge.split.us.us.us.i ], [ 0, %.preheader214.lr.ph.split.us.i ]
  %.1105238.us.us.i = phi i32 [ %i.csa, %._crit_edge.split.us.us.us.i ], [ %.0104.i1063, %.preheader214.lr.ph.split.us.i ]
  %.sroa.0.2237.us.us.i = phi ptr [ %.sroa.0.12.us.us.us.i, %._crit_edge.split.us.us.us.i ], [ %.sroa.0.18.i, %.preheader214.lr.ph.split.us.i ]
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iy, %.preheader214.us.us.i
  %.097234.us.us.us.i = phi i32 [ 0, %.preheader214.us.us.i ], [ %i.csb, %bb.iy ]
  %.2106233.us.us.us.i = phi i32 [ %.1105238.us.us.i, %.preheader214.us.us.i ], [ %i.csa, %bb.iy ] ; 3 uses
  %.sroa.0.3232.us.us.us.i = phi ptr [ %.sroa.0.2237.us.us.i, %.preheader214.us.us.i ], [ %.sroa.0.12.us.us.us.i, %bb.iy ] ; 3 uses
  %i.crt = ptrtoint ptr %.sroa.0.3232.us.us.us.i to i64
  %i.cru = sub i64 %i.cpx, %i.crt
  %i.crv = icmp slt i64 %i.cru, 1
  br i1 %i.crv, label %bytestream2_get_byte.exit124.us.us.us.i, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.crw = getelementptr inbounds nuw i8, ptr %.sroa.0.3232.us.us.us.i, i64 1
  %i.crx = load i8, ptr %.sroa.0.3232.us.us.us.i, align 1, !tbaa !33
  br label %bytestream2_get_byte.exit124.us.us.us.i

bytestream2_get_byte.exit124.us.us.us.i:          ; preds = %bb.ix, %bb.iw
  %.sroa.0.12.us.us.us.i = phi ptr [ %i.crw, %bb.ix ], [ %i.cpw, %bb.iw ] ; 3 uses
  %.0.i123.us.us.us.i = phi i8 [ %i.crx, %bb.ix ], [ 0, %bb.iw ]
  %.not119.us.us.us.i = icmp ult i32 %.2106233.us.us.us.i, %i.cpi
  br i1 %.not119.us.us.us.i, label %bb.iy, label %decode_short_horizontal_delta.exit

bb.iy:                                            ; preds = %bytestream2_get_byte.exit124.us.us.us.i
  %i.cry = zext i32 %.2106233.us.us.us.i to i64
  %i.crz = getelementptr inbounds nuw i8, ptr %i.cpc, i64 %i.cry
  store i8 %.0.i123.us.us.us.i, ptr %i.crz, align 1, !tbaa !33
  %i.csa = add i32 %.2106233.us.us.us.i, %i.cpn   ; 2 uses
  %i.csb = add nuw nsw i32 %.097234.us.us.us.i, 1 ; 2 uses
  %exitcond351.not.i = icmp eq i32 %i.csb, %i.cpg
  br i1 %exitcond351.not.i, label %._crit_edge.split.us.us.us.i, label %bb.iw, !llvm.loop !140

._crit_edge.split.us.us.us.i:                     ; preds = %bb.iy
  %i.csc = add nuw nsw i32 %.0102239.us.us.i, 1   ; 2 uses
  %exitcond352.not.i = icmp eq i32 %i.csc, %.0.i138.i
  br i1 %exitcond352.not.i, label %._crit_edge240.i, label %.preheader214.us.us.i, !llvm.loop !141

.preheader214.us.i:                               ; preds = %.preheader214.lr.ph.split.us.i, %._crit_edge.split.us250.i
  %.0102239.us.i = phi i32 [ %i.cso, %._crit_edge.split.us250.i ], [ 0, %.preheader214.lr.ph.split.us.i ]
  %.1105238.us.i = phi i32 [ %i.csm, %._crit_edge.split.us250.i ], [ %.0104.i1063, %.preheader214.lr.ph.split.us.i ]
  %.sroa.0.2237.us.i = phi ptr [ %.sroa.0.12.us247.i, %._crit_edge.split.us250.i ], [ %.sroa.0.18.i, %.preheader214.lr.ph.split.us.i ]
  br label %bb.iz

bb.iz:                                            ; preds = %bb.jb, %.preheader214.us.i
  %.097234.us243.i = phi i32 [ 0, %.preheader214.us.i ], [ %i.csn, %bb.jb ]
  %.2106233.us244.i = phi i32 [ %.1105238.us.i, %.preheader214.us.i ], [ %i.csm, %bb.jb ] ; 3 uses
  %.sroa.0.3232.us245.i = phi ptr [ %.sroa.0.2237.us.i, %.preheader214.us.i ], [ %.sroa.0.12.us247.i, %bb.jb ] ; 3 uses
  %i.csd = ptrtoint ptr %.sroa.0.3232.us245.i to i64
  %i.cse = sub i64 %i.cpx, %i.csd
  %i.csf = icmp slt i64 %i.cse, 1
  br i1 %i.csf, label %bytestream2_get_byte.exit124.us246.i, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.csg = getelementptr inbounds nuw i8, ptr %.sroa.0.3232.us245.i, i64 1
  %i.csh = load i8, ptr %.sroa.0.3232.us245.i, align 1, !tbaa !33
  br label %bytestream2_get_byte.exit124.us246.i

bytestream2_get_byte.exit124.us246.i:             ; preds = %bb.ja, %bb.iz
  %.sroa.0.12.us247.i = phi ptr [ %i.csg, %bb.ja ], [ %i.cpw, %bb.iz ] ; 3 uses
  %.0.i123.us248.i = phi i8 [ %i.csh, %bb.ja ], [ 0, %bb.iz ]
  %.not119.us249.i = icmp ult i32 %.2106233.us244.i, %i.cpi
  br i1 %.not119.us249.i, label %bb.jb, label %decode_short_horizontal_delta.exit

bb.jb:                                            ; preds = %bytestream2_get_byte.exit124.us246.i
  %i.csi = zext i32 %.2106233.us244.i to i64
  %i.csj = getelementptr inbounds nuw i8, ptr %i.cpc, i64 %i.csi ; 2 uses
  %i.csk = load i8, ptr %i.csj, align 1, !tbaa !33
  %i.csl = xor i8 %i.csk, %.0.i123.us248.i
  store i8 %i.csl, ptr %i.csj, align 1, !tbaa !33
  %i.csm = add i32 %.2106233.us244.i, %i.cpn      ; 2 uses
  %i.csn = add nuw nsw i32 %.097234.us243.i, 1    ; 2 uses
  %exitcond.not.i1064 = icmp eq i32 %i.csn, %i.cpg
  br i1 %exitcond.not.i1064, label %._crit_edge.split.us250.i, label %bb.iz, !llvm.loop !140

._crit_edge.split.us250.i:                        ; preds = %bb.jb
  %i.cso = add nuw nsw i32 %.0102239.us.i, 1      ; 2 uses
  %exitcond350.not.i = icmp eq i32 %i.cso, %.0.i138.i
  br i1 %exitcond350.not.i, label %._crit_edge240.i, label %.preheader214.us.i, !llvm.loop !141

._crit_edge240.i:                                 ; preds = %._crit_edge.split.us250.i, %._crit_edge.split.us.us.us.i, %bb.iv
  %.sroa.0.2.lcssa.i = phi ptr [ %.sroa.0.18.i, %bb.iv ], [ %.sroa.0.12.us.us.us.i, %._crit_edge.split.us.us.us.i ], [ %.sroa.0.12.us247.i, %._crit_edge.split.us250.i ] ; 2 uses
  %i.csp = ptrtoint ptr %.sroa.0.2.lcssa.i to i64
  %i.csq = sub i64 %i.cpx, %i.csp
  %..i122.i = tail call i64 @llvm.smin.i64(i64 %i.csq, i64 1)
  %.sroa.0.4.idx.i = select i1 %.not118.i, i64 0, i64 %..i122.i
  %.sroa.0.4.i = getelementptr inbounds i8, ptr %.sroa.0.2.lcssa.i, i64 %.sroa.0.4.idx.i ; 2 uses
  %i.csr = add nuw nsw i32 %.0100255.i, 1         ; 2 uses
  %exitcond353.not.i = icmp eq i32 %i.csr, %i.cqx
  br i1 %exitcond353.not.i, label %.loopexit.i1065, label %bb.ip, !llvm.loop !142

bb.jc:                                            ; preds = %bytestream2_get_be16.exit143.i
  %i.css = ptrtoint ptr %i.cqd to i64
  %i.cst = sub i64 %i.cpx, %i.css
  %i.csu = icmp slt i64 %i.cst, 2
  br i1 %i.csu, label %bytestream2_get_be16.exit133.i, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.csv = getelementptr inbounds nuw i8, ptr %.sroa.0.0316.i, i64 4 ; 2 uses
  %i.csw = load i16, ptr %i.cqd, align 1, !tbaa !33
  %.fr322.i = freeze i16 %i.csw
  %i.csx = icmp eq i16 %.fr322.i, 0
  %.pre.i1067 = ptrtoint ptr %i.csv to i64
  br label %bytestream2_get_be16.exit133.i

bytestream2_get_be16.exit133.i:                   ; preds = %bb.jd, %bb.jc
  %.pre-phi.i1068 = phi i64 [ %i.cpx, %bb.jc ], [ %.pre.i1067, %bb.jd ]
  %.sroa.0.17.i = phi ptr [ %i.cpw, %bb.jc ], [ %i.csv, %bb.jd ] ; 2 uses
  %.0.i132.i = phi i1 [ true, %bb.jc ], [ %i.csx, %bb.jd ]
  %i.csy = sub i64 %i.cpx, %.pre-phi.i1068
  %i.csz = icmp slt i64 %i.csy, 2
  br i1 %i.csz, label %bytestream2_get_be16.exit131.i, label %bb.je

bb.je:                                            ; preds = %bytestream2_get_be16.exit133.i
  %i.cta = getelementptr inbounds nuw i8, ptr %.sroa.0.17.i, i64 2 ; 2 uses
  %i.ctb = load i16, ptr %.sroa.0.17.i, align 1, !tbaa !33
  %i.ctc = tail call i16 @llvm.bswap.i16(i16 %i.ctb)
  %i.ctd = zext i16 %i.ctc to i32
  %.pre373.i = ptrtoint ptr %i.cta to i64
  br label %bytestream2_get_be16.exit131.i

bytestream2_get_be16.exit131.i:                   ; preds = %bb.je, %bytestream2_get_be16.exit133.i
  %.pre-phi374.i = phi i64 [ %i.cpx, %bytestream2_get_be16.exit133.i ], [ %.pre373.i, %bb.je ]
  %.sroa.0.16.i = phi ptr [ %i.cpw, %bytestream2_get_be16.exit133.i ], [ %i.cta, %bb.je ] ; 2 uses
  %.0.i130.i = phi i32 [ 0, %bytestream2_get_be16.exit133.i ], [ %i.ctd, %bb.je ] ; 4 uses
  %i.cte = sub i64 %i.cpx, %.pre-phi374.i
  %i.ctf = icmp slt i64 %i.cte, 2
  br i1 %i.ctf, label %bytestream2_get_be16.exit129.i, label %bb.jf

bb.jf:                                            ; preds = %bytestream2_get_be16.exit131.i
  %i.ctg = getelementptr inbounds nuw i8, ptr %.sroa.0.16.i, i64 2 ; 2 uses
  %i.cth = load i16, ptr %.sroa.0.16.i, align 1, !tbaa !33
  %.fr324.i = freeze i16 %i.cth
  %i.cti = tail call i16 @llvm.bswap.i16(i16 %.fr324.i)
  %i.ctj = zext i16 %i.cti to i32
  %.pre375.i = ptrtoint ptr %i.ctg to i64
  br label %bytestream2_get_be16.exit129.i

bytestream2_get_be16.exit129.i:                   ; preds = %bb.jf, %bytestream2_get_be16.exit131.i
  %.pre-phi376.i = phi i64 [ %i.cpx, %bytestream2_get_be16.exit131.i ], [ %.pre375.i, %bb.jf ]
  %.sroa.0.15.i = phi ptr [ %i.cpw, %bytestream2_get_be16.exit131.i ], [ %i.ctg, %bb.jf ] ; 2 uses
  %.0.i128.i = phi i32 [ 0, %bytestream2_get_be16.exit131.i ], [ %i.ctj, %bb.jf ] ; 6 uses
  %i.ctk = sub i64 %i.cpx, %.pre-phi376.i
  %i.ctl = icmp slt i64 %i.ctk, 2
  br i1 %i.ctl, label %.loopexit.i1065, label %bytestream2_get_be16.exit127.i

bytestream2_get_be16.exit127.i:                   ; preds = %bytestream2_get_be16.exit129.i
  %i.ctm = getelementptr inbounds nuw i8, ptr %.sroa.0.15.i, i64 2 ; 2 uses
  %i.ctn = load i16, ptr %.sroa.0.15.i, align 1, !tbaa !33 ; 2 uses
  %i.cto = tail call i16 @llvm.bswap.i16(i16 %i.ctn)
  %i.ctp = zext i16 %i.cto to i32
  %.not320.i = icmp eq i16 %i.ctn, 0
  br i1 %.not320.i, label %.loopexit.i1065, label %.lr.ph313.i

.lr.ph313.i:                                      ; preds = %bytestream2_get_be16.exit127.i
  %.not321.i = icmp eq i32 %.0.i130.i, 0
  %i.ctq = add nsw i32 %.0.i128.i, -1             ; 3 uses
  %.not325.i = icmp eq i32 %.0.i128.i, 0
  %factor.op.mul.i = mul i32 %.0.i130.i, %i.cpg
  %.reass.i = mul i32 %factor.op.mul.i, %.0.i128.i
  %i.ctr = and i32 %.reass.i, 1
  %.not113.i1069 = icmp eq i32 %i.ctr, 0
  %brmerge426.i = or i1 %i.cqb, %.not321.i
  br label %bb.jg

bb.jg:                                            ; preds = %._crit_edge.i1075, %.lr.ph313.i
  %.1101312.i = phi i32 [ 0, %.lr.ph313.i ], [ %i.cvl, %._crit_edge.i1075 ]
  %.sroa.0.5311.i = phi ptr [ %i.ctm, %.lr.ph313.i ], [ %.sroa.0.9.i, %._crit_edge.i1075 ] ; 3 uses
  %i.cts = ptrtoint ptr %.sroa.0.5311.i to i64
  %i.ctt = sub i64 %i.cpx, %i.cts
  %i.ctu = icmp slt i64 %i.ctt, 2
  br i1 %i.ctu, label %bytestream2_get_be16.exit.i1070, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.ctv = getelementptr inbounds nuw i8, ptr %.sroa.0.5311.i, i64 2
  %i.ctw = load i16, ptr %.sroa.0.5311.i, align 1, !tbaa !33
  %i.ctx = tail call i16 @llvm.bswap.i16(i16 %i.ctw)
  %i.cty = zext i16 %i.ctx to i32
  br label %bytestream2_get_be16.exit.i1070

bytestream2_get_be16.exit.i1070:                  ; preds = %bb.jh, %bb.jg
  %.sroa.0.13.i = phi ptr [ %i.ctv, %bb.jh ], [ %i.cpw, %bb.jg ] ; 5 uses
  %.0.i125.i1071 = phi i32 [ %i.cty, %bb.jh ], [ 0, %bb.jg ] ; 3 uses
  br i1 %.not117.i, label %bb.jj, label %bb.ji

bb.ji:                                            ; preds = %bytestream2_get_be16.exit.i1070
  %.lhs.trunc.i = trunc nuw i32 %.0.i125.i1071 to i16 ; 2 uses
  %i.ctz = udiv i16 %.lhs.trunc.i, 40
  %.zext.i = zext nneg i16 %i.ctz to i32
  %i.cua = mul i32 %i.cpo, %.zext.i
  %i.cub = urem i16 %.lhs.trunc.i, 40
  %.zext199.i = zext nneg i16 %i.cub to i32
  %i.cuc = sub nsw i32 %.zext199.i, %i.cps
  %i.cud = add i32 %i.cuc, %i.cua
  br label %bb.jk

bb.jj:                                            ; preds = %bytestream2_get_be16.exit.i1070
  %i.cue = udiv i32 %.0.i125.i1071, %i.cpk
  %i.cuf = mul i32 %i.cue, %i.cpo
  %i.cug = urem i32 %.0.i125.i1071, %i.cpk
  %i.cuh = add i32 %i.cuf, %i.cug
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji
  %.4.i = phi i32 [ %i.cud, %bb.ji ], [ %i.cuh, %bb.jj ] ; 2 uses
  br i1 %brmerge426.i, label %._crit_edge.i1075, label %.preheader213.lr.ph.split.us.i

.preheader213.lr.ph.split.us.i:                   ; preds = %bb.jk
  br i1 %.not325.i, label %.preheader213.lr.ph.split.us.split.i, label %.preheader213.lr.ph.split.us.split.us.i

.preheader213.lr.ph.split.us.split.us.i:          ; preds = %.preheader213.lr.ph.split.us.i
  br i1 %.0.i132.i, label %.preheader213.us.us.us.i, label %.preheader213.us.us.i

.preheader213.us.us.us.i:                         ; preds = %.preheader213.lr.ph.split.us.split.us.i, %._crit_edge265.split.us.split.us.us.us.us.i
  %indvars.iv362.i = phi i32 [ %indvars.iv.next363.i, %._crit_edge265.split.us.split.us.us.us.us.i ], [ %.4.i, %.preheader213.lr.ph.split.us.split.us.i ] ; 2 uses
  %.099284.us.us.us.i = phi i32 [ %6, %._crit_edge265.split.us.split.us.us.us.us.i ], [ 0, %.preheader213.lr.ph.split.us.split.us.i ]
  %.sroa.0.6283.us.us.us.i = phi ptr [ %.sroa.0.11.us.us.us.us.us.us.i, %._crit_edge265.split.us.split.us.us.us.us.i ], [ %.sroa.0.13.i, %.preheader213.lr.ph.split.us.split.us.i ]
  br label %bb.jl

bb.jl:                                            ; preds = %._crit_edge.split.us.us.us280.us.us.us.i, %.preheader213.us.us.us.i
  %indvars.iv364.i = phi i32 [ %indvars.iv.next365.i, %._crit_edge.split.us.us.us280.us.us.us.i ], [ %indvars.iv362.i, %.preheader213.us.us.us.i ] ; 2 uses
  %.198263.us.us.us.us.us.i = phi i32 [ %5, %._crit_edge.split.us.us.us280.us.us.us.i ], [ 0, %.preheader213.us.us.us.i ]
  %.sroa.0.7262.us.us.us.us.us.i = phi ptr [ %.sroa.0.11.us.us.us.us.us.us.i, %._crit_edge.split.us.us.us280.us.us.us.i ], [ %.sroa.0.6283.us.us.us.i, %.preheader213.us.us.us.i ] ; 2 uses
  %i.cui = ptrtoint ptr %.sroa.0.7262.us.us.us.us.us.i to i64
  %i.cuj = sub i64 %i.cpx, %i.cui
  %.fr212.us.us.us.us.us.i = freeze i64 %i.cuj
  %i.cuk = trunc i64 %.fr212.us.us.us.us.us.i to i32
  %or.cond211.not.us.us.us.us.us.i = icmp ult i32 %i.ctq, %i.cuk
  br i1 %or.cond211.not.us.us.us.us.us.i, label %.preheader.us.us.us.us.us.preheader.i, label %.split.us.i1073

.preheader.us.us.us.us.us.preheader.i:            ; preds = %bb.jl
  %i.cul = zext i32 %indvars.iv364.i to i64
  br label %.preheader.us.us.us.us.us.i

.preheader.us.us.us.us.us.i:                      ; preds = %bb.jn, %.preheader.us.us.us.us.us.preheader.i
  %indvars.iv366.i = phi i64 [ %i.cul, %.preheader.us.us.us.us.us.preheader.i ], [ %indvars.iv.next367.i, %bb.jn ] ; 3 uses
  %.1103257.us.us.us.us.us.us.i = phi i32 [ 0, %.preheader.us.us.us.us.us.preheader.i ], [ %i.cus, %bb.jn ]
  %.sroa.0.8256.us.us.us.us.us.us.i = phi ptr [ %.sroa.0.7262.us.us.us.us.us.i, %.preheader.us.us.us.us.us.preheader.i ], [ %.sroa.0.11.us.us.us.us.us.us.i, %bb.jn ] ; 3 uses
  %i.cum = ptrtoint ptr %.sroa.0.8256.us.us.us.us.us.us.i to i64
  %i.cun = sub i64 %i.cpx, %i.cum
  %i.cuo = icmp slt i64 %i.cun, 1
  br i1 %i.cuo, label %bytestream2_get_byte.exit.us.us.us.us.us.us.i, label %bb.jm

bb.jm:                                            ; preds = %.preheader.us.us.us.us.us.i
  %i.cup = getelementptr inbounds nuw i8, ptr %.sroa.0.8256.us.us.us.us.us.us.i, i64 1
  %i.cuq = load i8, ptr %.sroa.0.8256.us.us.us.us.us.us.i, align 1, !tbaa !33
  br label %bytestream2_get_byte.exit.us.us.us.us.us.us.i

bytestream2_get_byte.exit.us.us.us.us.us.us.i:    ; preds = %bb.jm, %.preheader.us.us.us.us.us.i
  %.sroa.0.11.us.us.us.us.us.us.i = phi ptr [ %i.cup, %bb.jm ], [ %i.cpw, %.preheader.us.us.us.us.us.i ] ; 4 uses
  %.0.i.us.us.us.us.us.us.i = phi i8 [ %i.cuq, %bb.jm ], [ 0, %.preheader.us.us.us.us.us.i ]
  %.not115.us.us.us.us.us.us.i = icmp samesign ult i64 %indvars.iv366.i, %i.cqc
  br i1 %.not115.us.us.us.us.us.us.i, label %bb.jn, label %decode_short_horizontal_delta.exit

bb.jn:                                            ; preds = %bytestream2_get_byte.exit.us.us.us.us.us.us.i
  %i.cur = getelementptr inbounds nuw i8, ptr %i.cpc, i64 %indvars.iv366.i
  store i8 %.0.i.us.us.us.us.us.us.i, ptr %i.cur, align 1, !tbaa !33
  %indvars.iv.next367.i = add nuw nsw i64 %indvars.iv366.i, 1
  %i.cus = add nuw nsw i32 %.1103257.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond369.not.i.a = icmp eq i32 %i.cus, %.0.i128.i
  br i1 %exitcond369.not.i.a, label %._crit_edge.split.us.us.us280.us.us.us.i, label %.preheader.us.us.us.us.us.i, !llvm.loop !143

._crit_edge.split.us.us.us280.us.us.us.i:         ; preds = %bb.jn
  %5 = add nuw nsw i32 %.198263.us.us.us.us.us.i, 1 ; 2 uses
  %indvars.iv.next365.i = add i32 %indvars.iv364.i, %i.cpn
  %exitcond370.not.i.a = icmp eq i32 %5, %i.cpg
  br i1 %exitcond370.not.i.a, label %._crit_edge265.split.us.split.us.us.us.us.i, label %bb.jl, !llvm.loop !144

._crit_edge265.split.us.split.us.us.us.us.i:      ; preds = %._crit_edge.split.us.us.us280.us.us.us.i
  %6 = add nuw nsw i32 %.099284.us.us.us.i, 1     ; 2 uses
  %indvars.iv.next363.i = add i32 %indvars.iv362.i, %i.cpo
  %exitcond371.not.i.a = icmp eq i32 %6, %.0.i130.i
  br i1 %exitcond371.not.i.a, label %._crit_edge.i1075, label %.preheader213.us.us.us.i, !llvm.loop !145

.preheader213.us.us.i:                            ; preds = %.preheader213.lr.ph.split.us.split.us.i, %._crit_edge265.split.us.split.us298.us.i
  %indvars.iv.i1072 = phi i32 [ %indvars.iv.next.i1074, %._crit_edge265.split.us.split.us298.us.i ], [ %.4.i, %.preheader213.lr.ph.split.us.split.us.i ] ; 2 uses
  %.099284.us.us.i = phi i32 [ %8, %._crit_edge265.split.us.split.us298.us.i ], [ 0, %.preheader213.lr.ph.split.us.split.us.i ]
  %.sroa.0.6283.us.us.i = phi ptr [ %.sroa.0.11.us272.us.us.i, %._crit_edge265.split.us.split.us298.us.i ], [ %.sroa.0.13.i, %.preheader213.lr.ph.split.us.split.us.i ]
  br label %bb.jo

bb.jo:                                            ; preds = %._crit_edge.split.us275.us.us.i, %.preheader213.us.us.i
  %indvars.iv354.i = phi i32 [ %indvars.iv.next355.i, %._crit_edge.split.us275.us.us.i ], [ %indvars.iv.i1072, %.preheader213.us.us.i ] ; 2 uses
  %.198263.us.us293.us.i = phi i32 [ %7, %._crit_edge.split.us275.us.us.i ], [ 0, %.preheader213.us.us.i ]
  %.sroa.0.7262.us.us294.us.i = phi ptr [ %.sroa.0.11.us272.us.us.i, %._crit_edge.split.us275.us.us.i ], [ %.sroa.0.6283.us.us.i, %.preheader213.us.us.i ] ; 2 uses
  %i.cut = ptrtoint ptr %.sroa.0.7262.us.us294.us.i to i64
  %i.cuu = sub i64 %i.cpx, %i.cut
  %.fr212.us.us295.us.i = freeze i64 %i.cuu
  %i.cuv = trunc i64 %.fr212.us.us295.us.i to i32
  %or.cond211.not.us.us296.us.i = icmp ult i32 %i.ctq, %i.cuv
  br i1 %or.cond211.not.us.us296.us.i, label %.preheader.us.us297.us.preheader.i, label %.split.us.i1073

.preheader.us.us297.us.preheader.i:               ; preds = %bb.jo
  %i.cuw = zext i32 %indvars.iv354.i to i64
  br label %.preheader.us.us297.us.i

.preheader.us.us297.us.i:                         ; preds = %bb.jq, %.preheader.us.us297.us.preheader.i
  %indvars.iv356.i.a = phi i64 [ %i.cuw, %.preheader.us.us297.us.preheader.i ], [ %indvars.iv.next357.i.a, %bb.jq ] ; 3 uses
  %.1103257.us269.us.us.i = phi i32 [ 0, %.preheader.us.us297.us.preheader.i ], [ %i.cvf, %bb.jq ]
  %.sroa.0.8256.us270.us.us.i = phi ptr [ %.sroa.0.7262.us.us294.us.i, %.preheader.us.us297.us.preheader.i ], [ %.sroa.0.11.us272.us.us.i, %bb.jq ] ; 3 uses
  %i.cux = ptrtoint ptr %.sroa.0.8256.us270.us.us.i to i64
  %i.cuy = sub i64 %i.cpx, %i.cux
  %i.cuz = icmp slt i64 %i.cuy, 1
  br i1 %i.cuz, label %bytestream2_get_byte.exit.us271.us.us.i, label %bb.jp

bb.jp:                                            ; preds = %.preheader.us.us297.us.i
  %i.cva = getelementptr inbounds nuw i8, ptr %.sroa.0.8256.us270.us.us.i, i64 1
  %i.cvb = load i8, ptr %.sroa.0.8256.us270.us.us.i, align 1, !tbaa !33
  br label %bytestream2_get_byte.exit.us271.us.us.i

bytestream2_get_byte.exit.us271.us.us.i:          ; preds = %bb.jp, %.preheader.us.us297.us.i
  %.sroa.0.11.us272.us.us.i = phi ptr [ %i.cva, %bb.jp ], [ %i.cpw, %.preheader.us.us297.us.i ] ; 4 uses
  %.0.i.us273.us.us.i = phi i8 [ %i.cvb, %bb.jp ], [ 0, %.preheader.us.us297.us.i ]
  %.not115.us274.us.us.i = icmp samesign ult i64 %indvars.iv356.i.a, %i.cqc
  br i1 %.not115.us274.us.us.i, label %bb.jq, label %decode_short_horizontal_delta.exit

bb.jq:                                            ; preds = %bytestream2_get_byte.exit.us271.us.us.i
  %i.cvc = getelementptr inbounds nuw i8, ptr %i.cpc, i64 %indvars.iv356.i.a ; 2 uses
  %i.cvd = load i8, ptr %i.cvc, align 1, !tbaa !33
  %i.cve = xor i8 %i.cvd, %.0.i.us273.us.us.i
  store i8 %i.cve, ptr %i.cvc, align 1, !tbaa !33
  %indvars.iv.next357.i.a = add nuw nsw i64 %indvars.iv356.i.a, 1
  %i.cvf = add nuw nsw i32 %.1103257.us269.us.us.i, 1 ; 2 uses
  %exitcond359.not.i.a = icmp eq i32 %i.cvf, %.0.i128.i
  br i1 %exitcond359.not.i.a, label %._crit_edge.split.us275.us.us.i, label %.preheader.us.us297.us.i, !llvm.loop !143

._crit_edge.split.us275.us.us.i:                  ; preds = %bb.jq
  %7 = add nuw nsw i32 %.198263.us.us293.us.i, 1  ; 2 uses
  %indvars.iv.next355.i = add i32 %indvars.iv354.i, %i.cpn
  %exitcond360.not.i.a = icmp eq i32 %7, %i.cpg
  br i1 %exitcond360.not.i.a, label %._crit_edge265.split.us.split.us298.us.i, label %bb.jo, !llvm.loop !144

._crit_edge265.split.us.split.us298.us.i:         ; preds = %._crit_edge.split.us275.us.us.i
  %8 = add nuw nsw i32 %.099284.us.us.i, 1        ; 2 uses
  %indvars.iv.next.i1074 = add i32 %indvars.iv.i1072, %i.cpo
  %exitcond361.not.i = icmp eq i32 %8, %.0.i130.i
  br i1 %exitcond361.not.i, label %._crit_edge.i1075, label %.preheader213.us.us.i, !llvm.loop !145

.preheader213.lr.ph.split.us.split.i:             ; preds = %.preheader213.lr.ph.split.us.i
  %i.cvg = ptrtoint ptr %.sroa.0.13.i to i64
  %i.cvh = sub i64 %i.cpx, %i.cvg
  %.fr212.us287.i = freeze i64 %i.cvh
  %i.cvi = trunc i64 %.fr212.us287.i to i32
  %or.cond211.not.us288.i = icmp ult i32 %i.ctq, %i.cvi
  br i1 %or.cond211.not.us288.i, label %._crit_edge.i1075, label %.split.us.i1073

.split.us.i1073:                                  ; preds = %.preheader213.lr.ph.split.us.split.i, %bb.jo, %bb.jl
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %.0.i128.i) #10
  br label %decode_short_horizontal_delta.exit

._crit_edge.i1075:                                ; preds = %._crit_edge265.split.us.split.us298.us.i, %._crit_edge265.split.us.split.us.us.us.us.i, %.preheader213.lr.ph.split.us.split.i, %bb.jk
  %.sroa.0.6.lcssa.i = phi ptr [ %.sroa.0.13.i, %bb.jk ], [ %.sroa.0.11.us.us.us.us.us.us.i, %._crit_edge265.split.us.split.us.us.us.us.i ], [ %.sroa.0.13.i, %.preheader213.lr.ph.split.us.split.i ], [ %.sroa.0.11.us272.us.us.i, %._crit_edge265.split.us.split.us298.us.i ] ; 2 uses
  %i.cvj = ptrtoint ptr %.sroa.0.6.lcssa.i to i64
  %i.cvk = sub i64 %i.cpx, %i.cvj
  %..i.i1076 = tail call i64 @llvm.smin.i64(i64 %i.cvk, i64 1)
  %.sroa.0.9.idx.i = select i1 %.not113.i1069, i64 0, i64 %..i.i1076
  %.sroa.0.9.i = getelementptr inbounds i8, ptr %.sroa.0.6.lcssa.i, i64 %.sroa.0.9.idx.i ; 2 uses
  %i.cvl = add nuw nsw i32 %.1101312.i, 1         ; 2 uses
  %exitcond372.not.i = icmp eq i32 %i.cvl, %i.ctp
  br i1 %exitcond372.not.i, label %.loopexit.i1065, label %bb.jg, !llvm.loop !146

.loopexit.i1065:                                  ; preds = %._crit_edge240.i, %._crit_edge.i1075, %bytestream2_get_be16.exit127.i, %bytestream2_get_be16.exit129.i, %bytestream2_get_be16.exit137.i1058, %bytestream2_get_be16.exit139.i1057
  %.sroa.0.10.i = phi ptr [ %i.cpw, %bytestream2_get_be16.exit139.i1057 ], [ %i.ctm, %bytestream2_get_be16.exit127.i ], [ %i.cqu, %bytestream2_get_be16.exit137.i1058 ], [ %i.cpw, %bytestream2_get_be16.exit129.i ], [ %.sroa.0.9.i, %._crit_edge.i1075 ], [ %.sroa.0.4.i, %._crit_edge240.i ] ; 2 uses
  %i.cvm = ptrtoint ptr %.sroa.0.10.i to i64
  %i.cvn = sub i64 %i.cpx, %i.cvm                 ; 2 uses
  %i.cvo = trunc i64 %i.cvn to i32
  %i.cvp = icmp slt i32 %i.cvo, 2
  %i.cvq = icmp slt i64 %i.cvn, 2
  %or.cond.i1066 = or i1 %i.cvq, %i.cvp
  br i1 %or.cond.i1066, label %decode_short_horizontal_delta.exit, label %bytestream2_get_be16.exit143.i, !llvm.loop !147

bb.jr:                                            ; preds = %thread-pre-split, %thread-pre-split
  %i.cvr = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.cvs = load i32, ptr %i.cvr, align 8, !tbaa !61
  %.not805 = icmp eq i32 %i.cvs, 0
  br i1 %.not805, label %bb.jt, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.cvt = load ptr, ptr %i.a, align 8, !tbaa !29 ; 4 uses
  %i.cvu = getelementptr inbounds nuw i8, ptr %i.cvt, i64 48
  %i.cvv = load i32, ptr %i.cvu, align 8, !tbaa !45
  %i.cvw = getelementptr inbounds nuw i8, ptr %i.cvt, i64 64
  %i.cvx = load i32, ptr %i.cvw, align 8, !tbaa !41
  %i.cvy = getelementptr inbounds nuw i8, ptr %i.cvt, i64 68
  %i.cvz = load i32, ptr %i.cvy, align 4, !tbaa !46
  %i.cwa = getelementptr inbounds nuw i8, ptr %i.cvt, i64 56
  %i.cwb = load i32, ptr %i.cwa, align 8, !tbaa !61
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.16, i32 noundef %i.cvv, i32 noundef %i.cvx, i32 noundef %i.cvz, i32 noundef %i.cwb) #10
  br label %parse_packet_header.exit

bb.jt:                                            ; preds = %bb.jr
  %i.cwc = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.cwd = load ptr, ptr %i.cwc, align 8, !tbaa !43
  %i.cwe = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cwf = load i32, ptr %i.cwe, align 8, !tbaa !36
  %i.cwg = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cwh = load i32, ptr %i.cwg, align 8, !tbaa !41
  %i.cwi = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.cwj = load i32, ptr %i.cwi, align 8, !tbaa !42
  tail call fastcc void @decode_delta_d(ptr noundef %i.cwd, ptr noundef nonnull %i.dz, ptr noundef nonnull %i.h, i32 noundef %i.cwf, i32 noundef %i.cwh, i32 noundef %i.cwj)
  br label %decode_short_horizontal_delta.exit

bb.ju:                                            ; preds = %thread-pre-split, %thread-pre-split
  %i.cwk = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.cwl = load i32, ptr %i.cwk, align 8, !tbaa !61
  %.not804 = icmp eq i32 %i.cwl, 0
  br i1 %.not804, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.cwm = load ptr, ptr %i.a, align 8, !tbaa !29 ; 4 uses
  %i.cwn = getelementptr inbounds nuw i8, ptr %i.cwm, i64 48
  %i.cwo = load i32, ptr %i.cwn, align 8, !tbaa !45
  %i.cwp = getelementptr inbounds nuw i8, ptr %i.cwm, i64 64
  %i.cwq = load i32, ptr %i.cwp, align 8, !tbaa !41
  %i.cwr = getelementptr inbounds nuw i8, ptr %i.cwm, i64 68
  %i.cws = load i32, ptr %i.cwr, align 4, !tbaa !46
  %i.cwt = getelementptr inbounds nuw i8, ptr %i.cwm, i64 56
  %i.cwu = load i32, ptr %i.cwt, align 8, !tbaa !61
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.16, i32 noundef %i.cwo, i32 noundef %i.cwq, i32 noundef %i.cws, i32 noundef %i.cwu) #10
  br label %parse_packet_header.exit

bb.jw:                                            ; preds = %bb.ju
  %i.cwv = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.cww = load ptr, ptr %i.cwv, align 8, !tbaa !43
  %i.cwx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cwy = load i32, ptr %i.cwx, align 8, !tbaa !36
  %i.cwz = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cxa = load i32, ptr %i.cwz, align 8, !tbaa !41
  %i.cxb = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.cxc = load i32, ptr %i.cxb, align 8, !tbaa !42
  tail call fastcc void @decode_delta_e(ptr noundef %i.cww, ptr noundef nonnull %i.dz, ptr noundef nonnull %i.h, i32 noundef %i.cwy, i32 noundef %i.cxa, i32 noundef %i.cxc)
  br label %decode_short_horizontal_delta.exit

bb.jx:                                            ; preds = %thread-pre-split, %thread-pre-split
  %i.cxd = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.cxe = load ptr, ptr %i.cxd, align 8, !tbaa !43 ; 4 uses
  %i.cxf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cxg = load i32, ptr %i.cxf, align 8, !tbaa !36 ; 2 uses
  %i.cxh = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.cxi = load i32, ptr %i.cxh, align 4, !tbaa !165
  %i.cxj = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cxk = load i32, ptr %i.cxj, align 8, !tbaa !41 ; 4 uses
  %i.cxl = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.cxm = load i32, ptr %i.cxl, align 8, !tbaa !42 ; 7 uses
  %i.cxn = add nsw i32 %i.cxg, 7
  %i.cxo = sdiv i32 %i.cxn, 8                     ; 3 uses
  %i.cxp = add nsw i32 %i.cxg, 15
  %i.cxq = sdiv i32 %i.cxp, 16
  %i.cxr = shl nsw i32 %i.cxq, 1
  %gepdiff1121 = sub nsw i64 %i.g, %i.dy          ; 5 uses
  %i.cxs = icmp slt i64 %gepdiff1121, 65
  br i1 %i.cxs, label %decode_short_horizontal_delta.exit, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.cxt = and i64 %gepdiff1121, 2147483648
  %i.cxu = icmp eq i64 %i.cxt, 0
  br i1 %i.cxu, label %bytestream2_init.exit83.i, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 141) #10
  tail call void @abort() #11
  unreachable

bytestream2_init.exit83.i:                        ; preds = %bb.jy
  %i.cxv = and i64 %gepdiff1121, 2147483647
  %i.cxw = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.cxv ; 2 uses
  %i.cxx = getelementptr inbounds nuw i8, ptr %i.dz, i64 32 ; 2 uses
  %.neg1139 = add nsw i64 %i.g, -32
  %gepdiff1122 = sub nsw i64 %.neg1139, %i.dy     ; 2 uses
  %i.cxy = and i64 %gepdiff1122, 2147483648
  %i.cxz = icmp eq i64 %i.cxy, 0
  br i1 %i.cxz, label %bytestream2_init.exit81.i, label %bb.ka

bb.ka:                                            ; preds = %bytestream2_init.exit83.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 141) #10
  tail call void @abort() #11
  unreachable

bytestream2_init.exit81.i:                        ; preds = %bytestream2_init.exit83.i
  %i.cya = and i64 %gepdiff1122, 2147483647
  %i.cyb = getelementptr inbounds nuw i8, ptr %i.cxx, i64 %i.cya ; 2 uses
  %i.cyc = icmp ne ptr %i.cxe, null
  %i.cyd = icmp sgt i32 %i.cxm, -1
  %or.cond.i93.i = and i1 %i.cyc, %i.cyd
  br i1 %or.cond.i93.i, label %bytestream2_init_writer.exit.i1077, label %bb.kb

bb.kb:                                            ; preds = %bytestream2_init.exit81.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 151) #10
  tail call void @abort() #11
  unreachable

bytestream2_init_writer.exit.i1077:               ; preds = %bytestream2_init.exit81.i
  %.not.i1078 = icmp eq i32 %i.cxi, 0
  %i.cye = mul nsw i32 %i.cxo, %i.cxk
  %i.cyf = add nsw i32 %i.cye, -2
  %i.cyg = select i1 %.not.i1078, i32 0, i32 %i.cyf ; 3 uses
  %i.cyh = icmp sgt i32 %i.cxk, 0
  br i1 %i.cyh, label %.lr.ph194.i, label %decode_short_horizontal_delta.exit

.lr.ph194.i:                                      ; preds = %bytestream2_init_writer.exit.i1077
  %i.cyi = zext nneg i32 %i.cxm to i64
  %i.cyj = getelementptr inbounds nuw i8, ptr %i.cxe, i64 %i.cyi
  %i.cyk = ptrtoint ptr %i.cxw to i64
  %i.cyl = ptrtoint ptr %i.cyb to i64
  %i.cym = ptrtoint ptr %i.cyj to i64             ; 4 uses
  %i.cyn = zext i32 %i.cyg to i64                 ; 2 uses
  br label %bb.kc

bb.kc:                                            ; preds = %.critedge.i1085, %.lr.ph194.i
  %.065193.i = phi i32 [ 0, %.lr.ph194.i ], [ %.4.i1086, %.critedge.i1085 ] ; 2 uses
  %.066191.i = phi i32 [ 0, %.lr.ph194.i ], [ %i.dcq, %.critedge.i1085 ] ; 2 uses
  %.sroa.0149.0190.i = phi ptr [ %i.cxx, %.lr.ph194.i ], [ %.sroa.0149.1.i, %.critedge.i1085 ] ; 3 uses
  %.sroa.0151.0189.i = phi ptr [ %i.dz, %.lr.ph194.i ], [ %.sroa.0151.1.i, %.critedge.i1085 ] ; 3 uses
  %i.cyo = ptrtoint ptr %.sroa.0151.0189.i to i64
  %i.cyp = sub i64 %i.cyk, %i.cyo
  %i.cyq = icmp slt i64 %i.cyp, 4
  br i1 %i.cyq, label %bytestream2_get_be32.exit85.i, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.cyr = getelementptr inbounds nuw i8, ptr %.sroa.0151.0189.i, i64 4
  %i.cys = load i32, ptr %.sroa.0151.0189.i, align 1, !tbaa !33
  %i.cyt = tail call i32 @llvm.bswap.i32(i32 %i.cys)
  br label %bytestream2_get_be32.exit85.i

bytestream2_get_be32.exit85.i:                    ; preds = %bb.kd, %bb.kc
  %.sroa.0151.1.i = phi ptr [ %i.cyr, %bb.kd ], [ %i.cxw, %bb.kc ]
  %.0.i84.i = phi i32 [ %i.cyt, %bb.kd ], [ 0, %bb.kc ] ; 3 uses
  %i.cyu = ptrtoint ptr %.sroa.0149.0190.i to i64
  %i.cyv = sub i64 %i.cyl, %i.cyu
  %i.cyw = icmp slt i64 %i.cyv, 4
  br i1 %i.cyw, label %bytestream2_get_be32.exit.i1079, label %bb.ke

bb.ke:                                            ; preds = %bytestream2_get_be32.exit85.i
  %i.cyx = getelementptr inbounds nuw i8, ptr %.sroa.0149.0190.i, i64 4
  %i.cyy = load i32, ptr %.sroa.0149.0190.i, align 1, !tbaa !33
  %i.cyz = tail call i32 @llvm.bswap.i32(i32 %i.cyy)
end_hunk_0
