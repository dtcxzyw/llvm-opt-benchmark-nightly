inline.NumInlined: 58
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dissect_rtp_midi:bb.a
  %i.aje = tail call ptr @proto_tree_add_item(ptr noundef %i.aih, i32 noundef %i.ajd, ptr noundef %0, i32 noundef %.043.i.i.i, i32 noundef %i.ajc, i32 noundef 0) ; 0 uses
  %i.ajf = add i32 %.043.i.i.i, %i.ajc
  br label %decode_sj_chapter_d_f9.exit.i.i

decode_sj_chapter_d_f9.exit.i.i:                  ; preds = %bb.fz, %bb.fy, %.thread.i92.i.i
  %.2.i93.i.i = phi i32 [ %i.ajf, %bb.fz ], [ %.043.i.i.i, %bb.fy ], [ %i.ajb, %.thread.i92.i.i ] ; 2 uses
  %i.ajg = sub i32 %.2.i93.i.i, %.4.i.i           ; 2 uses
  %i.ajh = icmp slt i32 %i.ajg, 0
  br i1 %i.ajh, label %decode_sj_chapter_d.exit.i, label %bb.ga

bb.ga:                                            ; preds = %decode_sj_chapter_d_f9.exit.i.i, %bb.fu
  %.5.i.i = phi i32 [ %.4.i.i, %bb.fu ], [ %.2.i93.i.i, %decode_sj_chapter_d_f9.exit.i.i ] ; 10 uses
  %i.aji = and i32 %i.adx, 1
  %.not78.i.i = icmp eq i32 %i.aji, 0
  br i1 %.not78.i.i, label %bb.gg, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ajj = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.5.i.i) ; 2 uses
  %i.ajk = zext i8 %i.ajj to i32                  ; 2 uses
  %i.ajl = and i8 %i.ajj, 31                      ; 3 uses
  %i.ajm = zext nneg i8 %i.ajl to i32
  %i.ajn = load i32, ptr @ett_rtp_midi_sj_chapter_d_field_z, align 4
  %i.ajo = tail call ptr @proto_tree_add_subtree(ptr noundef %i.adv, ptr noundef %0, i32 noundef %.5.i.i, i32 noundef %i.ajm, i32 noundef %i.ajn, ptr noundef null, ptr noundef nonnull @.str.1179) ; 7 uses
  %i.ajp = load i32, ptr @hf_rtp_midi_sj_chapter_d_sysreal_sflag, align 4
  %i.ajq = tail call ptr @proto_tree_add_item(ptr noundef %i.ajo, i32 noundef %i.ajp, ptr noundef %0, i32 noundef %.5.i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ajr = load i32, ptr @hf_rtp_midi_sj_chapter_d_sysreal_cflag, align 4
  %i.ajs = tail call ptr @proto_tree_add_item(ptr noundef %i.ajo, i32 noundef %i.ajr, ptr noundef %0, i32 noundef %.5.i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ajt = load i32, ptr @hf_rtp_midi_sj_chapter_d_sysreal_lflag, align 4
  %i.aju = tail call ptr @proto_tree_add_item(ptr noundef %i.ajo, i32 noundef %i.ajt, ptr noundef %0, i32 noundef %.5.i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ajv = load i32, ptr @hf_rtp_midi_sj_chapter_d_sysreal_length, align 4
  %i.ajw = tail call ptr @proto_tree_add_item(ptr noundef %i.ajo, i32 noundef %i.ajv, ptr noundef %0, i32 noundef %.5.i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ajx = add i32 %.5.i.i, 1                     ; 2 uses
  %i.ajy = add nsw i8 %i.ajl, -1
  %i.ajz = and i32 %i.ajk, 64
  %.not.i94.i.i = icmp eq i32 %i.ajz, 0
  br i1 %.not.i94.i.i, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.aka = load i32, ptr @hf_rtp_midi_sj_chapter_d_sysreal_count, align 4
  %i.akb = tail call ptr @proto_tree_add_item(ptr noundef %i.ajo, i32 noundef %i.aka, ptr noundef %0, i32 noundef %i.ajx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.akc = add i32 %.5.i.i, 2
  %i.akd = add nsw i8 %i.ajl, -2
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %.043.i95.i.i = phi i32 [ %i.akc, %bb.gc ], [ %i.ajx, %bb.gb ] ; 5 uses
  %.0.i96.i.i = phi i8 [ %i.akd, %bb.gc ], [ %i.ajy, %bb.gb ] ; 3 uses
  %i.ake = and i32 %i.ajk, 32
  %.not46.i97.i.i = icmp eq i32 %i.ake, 0
  br i1 %.not46.i97.i.i, label %bb.ge, label %.thread.i98.i.i

.thread.i98.i.i:                                  ; preds = %bb.gd
  %i.akf = load i32, ptr @hf_rtp_midi_sj_chapter_d_sysreal_legal, align 4
  %i.akg = zext i8 %.0.i96.i.i to i32             ; 2 uses
  %i.akh = tail call ptr @proto_tree_add_item(ptr noundef %i.ajo, i32 noundef %i.akf, ptr noundef %0, i32 noundef %.043.i95.i.i, i32 noundef %i.akg, i32 noundef 0) ; 0 uses
  %i.aki = add i32 %.043.i95.i.i, %i.akg
  br label %decode_sj_chapter_d_fd.exit.i.i

bb.ge:                                            ; preds = %bb.gd
  %.not47.i100.i.i = icmp eq i8 %.0.i96.i.i, 0
  br i1 %.not47.i100.i.i, label %decode_sj_chapter_d_fd.exit.i.i, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.akj = zext i8 %.0.i96.i.i to i32             ; 2 uses
  %i.akk = load i32, ptr @hf_rtp_midi_sj_chapter_d_sysreal_data, align 4
  %i.akl = tail call ptr @proto_tree_add_item(ptr noundef %i.ajo, i32 noundef %i.akk, ptr noundef %0, i32 noundef %.043.i95.i.i, i32 noundef %i.akj, i32 noundef 0) ; 0 uses
  %i.akm = add i32 %.043.i95.i.i, %i.akj
  br label %decode_sj_chapter_d_fd.exit.i.i

decode_sj_chapter_d_fd.exit.i.i:                  ; preds = %bb.gf, %bb.ge, %.thread.i98.i.i
  %.2.i99.i.i = phi i32 [ %i.akm, %bb.gf ], [ %.043.i95.i.i, %bb.ge ], [ %i.aki, %.thread.i98.i.i ] ; 2 uses
  %i.akn = sub i32 %.2.i99.i.i, %.5.i.i           ; 2 uses
  %i.ako = icmp slt i32 %i.akn, 0
  br i1 %i.ako, label %decode_sj_chapter_d.exit.i, label %bb.gg

bb.gg:                                            ; preds = %decode_sj_chapter_d_fd.exit.i.i, %bb.ga
  %.6.i.i = phi i32 [ %.5.i.i, %bb.ga ], [ %.2.i99.i.i, %decode_sj_chapter_d_fd.exit.i.i ]
  %i.akp = sub i32 %.6.i.i, %i.adl                ; 2 uses
  tail call void @proto_item_set_len(ptr noundef %i.adt, i32 noundef %i.akp)
  br label %decode_sj_chapter_d.exit.i

decode_sj_chapter_d.exit.i:                       ; preds = %bb.gg, %decode_sj_chapter_d_fd.exit.i.i, %decode_sj_chapter_d_f9.exit.i.i, %decode_sj_chapter_d_f5.exit.i.i, %decode_sj_chapter_d_f4.exit.i.i
  %.064.i.i = phi i32 [ %i.akp, %bb.gg ], [ %i.agf, %decode_sj_chapter_d_f4.exit.i.i ], [ %i.ahz, %decode_sj_chapter_d_f5.exit.i.i ], [ %i.ajg, %decode_sj_chapter_d_f9.exit.i.i ], [ %i.akn, %decode_sj_chapter_d_fd.exit.i.i ]
  %i.akq = add i32 %.064.i.i, %i.adl
  br label %bb.gh

bb.gh:                                            ; preds = %decode_sj_chapter_d.exit.i, %bb.ew
  %.0.i = phi i32 [ %i.akq, %decode_sj_chapter_d.exit.i ], [ %i.adl, %bb.ew ] ; 3 uses
  %i.akr = and i32 %i.acs, 8192
  %.not78.i = icmp eq i32 %i.akr, 0
  br i1 %.not78.i, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.aks = load i32, ptr @hf_rtp_midi_sj_chapter_v, align 4
  %i.akt = load i32, ptr @ett_rtp_midi_sj_chapter_v, align 4
  %i.aku = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.ado, ptr noundef %0, i32 noundef %.0.i, i32 noundef %i.aks, i32 noundef %i.akt, ptr noundef nonnull @decode_system_journal.v_flags, i32 noundef 0) ; 0 uses
  %i.akv = add i32 %.0.i, 1
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %.1.i147 = phi i32 [ %i.akv, %bb.gi ], [ %.0.i, %bb.gh ] ; 10 uses
  %i.akw = and i32 %i.acs, 4096
  %.not79.i = icmp eq i32 %i.akw, 0
  br i1 %.not79.i, label %decode_sj_chapter_q.exit.i, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.akx = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1.i147) ; 2 uses
  %i.aky = and i8 %i.akx, 16
  %.not.i83.i = icmp eq i8 %i.aky, 0              ; 2 uses
  %spec.select.i.i = select i1 %.not.i83.i, i32 1, i32 3 ; 4 uses
  %.not43.i.i = icmp sgt i8 %i.akx, -1            ; 2 uses
  %i.akz = add nuw nsw i32 %spec.select.i.i, 3
  %.1.i84.i = select i1 %.not43.i.i, i32 %spec.select.i.i, i32 %i.akz
  %i.ala = load i32, ptr @ett_rtp_midi_sj_chapter_q, align 4
  %i.alb = tail call ptr @proto_tree_add_subtree(ptr noundef %i.ado, ptr noundef %0, i32 noundef %.1.i147, i32 noundef %.1.i84.i, i32 noundef %i.ala, ptr noundef null, ptr noundef nonnull @.str.1180) ; 7 uses
  %i.alc = load i32, ptr @hf_rtp_midi_sj_chapter_q_sflag, align 4
  %i.ald = tail call ptr @proto_tree_add_item(ptr noundef %i.alb, i32 noundef %i.alc, ptr noundef %0, i32 noundef %.1.i147, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ale = load i32, ptr @hf_rtp_midi_sj_chapter_q_nflag, align 4
  %i.alf = tail call ptr @proto_tree_add_item(ptr noundef %i.alb, i32 noundef %i.ale, ptr noundef %0, i32 noundef %.1.i147, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.alg = load i32, ptr @hf_rtp_midi_sj_chapter_q_dflag, align 4
  %i.alh = tail call ptr @proto_tree_add_item(ptr noundef %i.alb, i32 noundef %i.alg, ptr noundef %0, i32 noundef %.1.i147, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ali = load i32, ptr @hf_rtp_midi_sj_chapter_q_cflag, align 4
  %i.alj = tail call ptr @proto_tree_add_item(ptr noundef %i.alb, i32 noundef %i.ali, ptr noundef %0, i32 noundef %.1.i147, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.alk = load i32, ptr @hf_rtp_midi_sj_chapter_q_tflag, align 4
  %i.all = tail call ptr @proto_tree_add_item(ptr noundef %i.alb, i32 noundef %i.alk, ptr noundef %0, i32 noundef %.1.i147, i32 noundef 1, i32 noundef 0) ; 0 uses
  %hf_rtp_midi_sj_chapter_q_top.val.i.i = load i32, ptr @hf_rtp_midi_sj_chapter_q_top, align 4
  %hf_rtp_midi_sj_chapter_q_clock.val.i.i = load i32, ptr @hf_rtp_midi_sj_chapter_q_clock, align 4
  %i.alm = select i1 %.not.i83.i, i32 %hf_rtp_midi_sj_chapter_q_top.val.i.i, i32 %hf_rtp_midi_sj_chapter_q_clock.val.i.i
  %i.aln = tail call ptr @proto_tree_add_item(ptr noundef %i.alb, i32 noundef %i.alm, ptr noundef %0, i32 noundef %.1.i147, i32 noundef %spec.select.i.i, i32 noundef 0) ; 0 uses
  %i.alo = add i32 %spec.select.i.i, %.1.i147     ; 3 uses
  br i1 %.not43.i.i, label %decode_sj_chapter_q.exit.i, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.alp = load i32, ptr @hf_rtp_midi_sj_chapter_q_timetools, align 4
  %i.alq = tail call ptr @proto_tree_add_item(ptr noundef %i.alb, i32 noundef %i.alp, ptr noundef %0, i32 noundef %i.alo, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.alr = add i32 %i.alo, 3
  br label %decode_sj_chapter_q.exit.i

decode_sj_chapter_q.exit.i:                       ; preds = %bb.gl, %bb.gk, %bb.gj
  %.2.i = phi i32 [ %.1.i147, %bb.gj ], [ %i.alr, %bb.gl ], [ %i.alo, %bb.gk ] ; 11 uses
  %i.als = and i32 %i.acs, 2048
  %.not80.i = icmp eq i32 %i.als, 0
  br i1 %.not80.i, label %decode_sj_chapter_f.exit.i, label %bb.gm

bb.gm:                                            ; preds = %decode_sj_chapter_q.exit.i
  %i.alt = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.2.i)
  %i.alu = zext i8 %i.alt to i32                  ; 3 uses
  %i.alv = and i32 %i.alu, 64
  %.not.i85.i = icmp eq i32 %i.alv, 0             ; 2 uses
  %spec.select.i86.i = select i1 %.not.i85.i, i32 1, i32 5
  %i.alw = and i32 %i.alu, 32                     ; 2 uses
  %.not47.i.i = icmp eq i32 %i.alw, 0
  %i.alx = lshr exact i32 %i.alw, 3
  %.1.i87.i = add nuw nsw i32 %spec.select.i86.i, %i.alx
  %i.aly = load i32, ptr @ett_rtp_midi_sj_chapter_f, align 4
  %i.alz = tail call ptr @proto_tree_add_subtree(ptr noundef %i.ado, ptr noundef %0, i32 noundef %.2.i, i32 noundef %.1.i87.i, i32 noundef %i.aly, ptr noundef null, ptr noundef nonnull @.str.1181) ; 8 uses
  %i.ama = load i32, ptr @hf_rtp_midi_sj_chapter_f_sflag, align 4
  %i.amb = tail call ptr @proto_tree_add_item(ptr noundef %i.alz, i32 noundef %i.ama, ptr noundef %0, i32 noundef %.2.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.amc = load i32, ptr @hf_rtp_midi_sj_chapter_f_cflag, align 4
  %i.amd = tail call ptr @proto_tree_add_item(ptr noundef %i.alz, i32 noundef %i.amc, ptr noundef %0, i32 noundef %.2.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ame = load i32, ptr @hf_rtp_midi_sj_chapter_f_pflag, align 4
  %i.amf = tail call ptr @proto_tree_add_item(ptr noundef %i.alz, i32 noundef %i.ame, ptr noundef %0, i32 noundef %.2.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.amg = load i32, ptr @hf_rtp_midi_sj_chapter_f_qflag, align 4
  %i.amh = tail call ptr @proto_tree_add_item(ptr noundef %i.alz, i32 noundef %i.amg, ptr noundef %0, i32 noundef %.2.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ami = load i32, ptr @hf_rtp_midi_sj_chapter_f_dflag, align 4
  %i.amj = tail call ptr @proto_tree_add_item(ptr noundef %i.alz, i32 noundef %i.ami, ptr noundef %0, i32 noundef %.2.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.amk = load i32, ptr @hf_rtp_midi_sj_chapter_f_point, align 4
  %i.aml = tail call ptr @proto_tree_add_item(ptr noundef %i.alz, i32 noundef %i.amk, ptr noundef %0, i32 noundef %.2.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.amm = add i32 %.2.i, 1                       ; 2 uses
  br i1 %.not.i85.i, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.amn = and i32 %i.alu, 16
  %.not48.i.i = icmp eq i32 %i.amn, 0
  %i.amo = load i32, ptr @hf_rtp_midi_sj_chapter_f_complete, align 4
  %i.amp = load i32, ptr @ett_rtp_midi_sj_chapter_f_complete, align 4
  %decode_sj_chapter_f.f_flags.decode_sj_chapter_f.fq_flags.i.i = select i1 %.not48.i.i, ptr @decode_sj_chapter_f.f_flags, ptr @decode_sj_chapter_f.fq_flags
  %i.amq = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.alz, ptr noundef %0, i32 noundef %i.amm, i32 noundef %i.amo, i32 noundef %i.amp, ptr noundef nonnull %decode_sj_chapter_f.f_flags.decode_sj_chapter_f.fq_flags.i.i, i32 noundef 0) ; 0 uses
  %i.amr = add i32 %.2.i, 5
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %.045.i.i = phi i32 [ %i.amr, %bb.gn ], [ %i.amm, %bb.gm ] ; 3 uses
  br i1 %.not47.i.i, label %decode_sj_chapter_f.exit.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.ams = load i32, ptr @hf_rtp_midi_sj_chapter_f_partial, align 4
  %i.amt = load i32, ptr @ett_rtp_midi_sj_chapter_f_partial, align 4
  %i.amu = tail call ptr @proto_tree_add_bitmask(ptr noundef %i.alz, ptr noundef %0, i32 noundef %.045.i.i, i32 noundef %i.ams, i32 noundef %i.amt, ptr noundef nonnull @decode_sj_chapter_f.fp_flags, i32 noundef 0) ; 0 uses
  %i.amv = add i32 %.045.i.i, 4
  br label %decode_sj_chapter_f.exit.i

decode_sj_chapter_f.exit.i:                       ; preds = %bb.gp, %bb.go, %decode_sj_chapter_q.exit.i
  %.3.i = phi i32 [ %.2.i, %decode_sj_chapter_q.exit.i ], [ %i.amv, %bb.gp ], [ %.045.i.i, %bb.go ] ; 14 uses
  %i.amw = and i32 %i.acs, 1024
  %.not81.i = icmp eq i32 %i.amw, 0
  br i1 %.not81.i, label %bb.he, label %bb.gq

bb.gq:                                            ; preds = %decode_sj_chapter_f.exit.i
  %.neg.i = sub i32 %i.acp, %.3.i
  %i.amx = add i32 %.neg.i, %i.acu                ; 12 uses
  %i.amy = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.3.i)
  %i.amz = load i32, ptr @ett_rtp_midi_sj_chapter_x, align 4
  %i.ana = tail call ptr @proto_tree_add_subtree(ptr noundef %i.ado, ptr noundef %0, i32 noundef %.3.i, i32 noundef %i.amx, i32 noundef %i.amz, ptr noundef null, ptr noundef nonnull @.str.1182) ; 12 uses
  %i.anb = load i32, ptr @hf_rtp_midi_sj_chapter_x_sflag, align 4
  %i.anc = tail call ptr @proto_tree_add_item(ptr noundef %i.ana, i32 noundef %i.anb, ptr noundef %0, i32 noundef %.3.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.and = load i32, ptr @hf_rtp_midi_sj_chapter_x_tflag, align 4
  %i.ane = tail call ptr @proto_tree_add_item(ptr noundef %i.ana, i32 noundef %i.and, ptr noundef %0, i32 noundef %.3.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.anf = load i32, ptr @hf_rtp_midi_sj_chapter_x_cflag, align 4
  %i.ang = tail call ptr @proto_tree_add_item(ptr noundef %i.ana, i32 noundef %i.anf, ptr noundef %0, i32 noundef %.3.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.anh = load i32, ptr @hf_rtp_midi_sj_chapter_x_fflag, align 4
  %i.ani = tail call ptr @proto_tree_add_item(ptr noundef %i.ana, i32 noundef %i.anh, ptr noundef %0, i32 noundef %.3.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.anj = load i32, ptr @hf_rtp_midi_sj_chapter_x_dflag, align 4
  %i.ank = tail call ptr @proto_tree_add_item(ptr noundef %i.ana, i32 noundef %i.anj, ptr noundef %0, i32 noundef %.3.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.anl = load i32, ptr @hf_rtp_midi_sj_chapter_x_lflag, align 4
  %i.anm = tail call ptr @proto_tree_add_item(ptr noundef %i.ana, i32 noundef %i.anl, ptr noundef %0, i32 noundef %.3.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ann = load i32, ptr @hf_rtp_midi_sj_chapter_x_sta, align 4
  %i.ano = tail call ptr @proto_tree_add_item(ptr noundef %i.ana, i32 noundef %i.ann, ptr noundef %0, i32 noundef %.3.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.anp = add i32 %.3.i, 1                       ; 2 uses
  %i.anq = zext i8 %i.amy to i32                  ; 4 uses
  %i.anr = and i32 %i.anq, 64
  %.not.i88.i = icmp eq i32 %i.anr, 0
  br i1 %.not.i88.i, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.ans = load i32, ptr @hf_rtp_midi_sj_chapter_x_tcount, align 4
  %i.ant = tail call ptr @proto_tree_add_item(ptr noundef %i.ana, i32 noundef %i.ans, ptr noundef %0, i32 noundef %i.anp, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.anu = add i32 %.3.i, 2
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %.0128.i.i = phi i32 [ %i.anu, %bb.gr ], [ %i.anp, %bb.gq ] ; 3 uses
  %.0124.i.i = phi i32 [ 2, %bb.gr ], [ 1, %bb.gq ] ; 2 uses
  %i.anv = and i32 %i.anq, 32
  %.not136.i.i = icmp eq i32 %i.anv, 0
  br i1 %.not136.i.i, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.anw = load i32, ptr @hf_rtp_midi_sj_chapter_x_count, align 4
  %i.anx = tail call ptr @proto_tree_add_item(ptr noundef %i.ana, i32 noundef %i.anw, ptr noundef %0, i32 noundef %.0128.i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.any = add nuw nsw i32 %.0124.i.i, 1
  %i.anz = add i32 %.0128.i.i, 1
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %.1129.i.i = phi i32 [ %i.anz, %bb.gt ], [ %.0128.i.i, %bb.gs ] ; 4 uses
  %.1125.i.i = phi i32 [ %i.any, %bb.gt ], [ %.0124.i.i, %bb.gs ] ; 3 uses
  %i.aoa = and i32 %i.anq, 16
  %.not137.i.i = icmp eq i32 %i.aoa, 0
  br i1 %.not137.i.i, label %bb.gy, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.gu
  %.not138.i.i = icmp ult i32 %.1125.i.i, %i.amx
  br i1 %.not138.i.i, label %.thread231, label %.preheader.split.i.i

.preheader.split.i.i:                             ; preds = %.preheader.i.i, %bb.gv
  %.01183.i.i = phi i32 [ %i.aoi, %bb.gv ], [ 0, %.preheader.i.i ] ; 5 uses
  %.01192.i.i = phi i32 [ %i.aoh, %bb.gv ], [ 0, %.preheader.i.i ]
  %i.aob = add i32 %.01183.i.i, %.1129.i.i        ; 2 uses
  %i.aoc = tail call zeroext i1 @tvb_bytes_exist(ptr noundef %0, i32 noundef %i.aob, i32 noundef 1)
  br i1 %i.aoc, label %bb.gv, label %.thread231

bb.gv:                                            ; preds = %.preheader.split.i.i
  %i.aod = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.aob) ; 2 uses
  %i.aoe = shl i32 %.01192.i.i, 7
  %i.aof = and i8 %i.aod, 127
  %i.aog = zext nneg i8 %i.aof to i32
  %i.aoh = or disjoint i32 %i.aoe, %i.aog         ; 2 uses
  %i.aoi = add nuw nsw i32 %.01183.i.i, 1         ; 4 uses
  %i.aoj = icmp slt i8 %i.aod, 0
  %i.aok = icmp samesign ult i32 %.01183.i.i, 3
  %or.cond.i.i = select i1 %i.aoj, i1 %i.aok, i1 false
  br i1 %or.cond.i.i, label %.preheader.split.i.i, label %bb.gw, !llvm.loop !9

bb.gw:                                            ; preds = %bb.gv
  %i.aol = icmp samesign ult i32 %.01183.i.i, 4
  br i1 %i.aol, label %switch.lookup, label %bb.gx

switch.lookup:                                    ; preds = %bb.gw
  %i.aom = zext nneg i32 %.01183.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dissect_rtp_midi, i64 %i.aom
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.aon = load i32, ptr %switch.load, align 4
  %i.aoo = tail call ptr @proto_tree_add_uint(ptr noundef %i.ana, i32 noundef %i.aon, ptr noundef %0, i32 noundef %.1129.i.i, i32 noundef %i.aoi, i32 noundef %i.aoh) ; 0 uses
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %switch.lookup
  %i.aop = add i32 %i.aoi, %.1125.i.i
  %i.aoq = add i32 %i.aoi, %.1129.i.i
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gu
  %.3131.i.i = phi i32 [ %i.aoq, %bb.gx ], [ %.1129.i.i, %bb.gu ] ; 3 uses
  %.3.i89.i = phi i32 [ %i.aop, %bb.gx ], [ %.1125.i.i, %bb.gu ] ; 6 uses
  %i.aor = and i32 %i.anq, 8
  %.not139.i.i = icmp eq i32 %i.aor, 0
  br i1 %.not139.i.i, label %._crit_edge.thread.i.i, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.aos = sub i32 %i.amx, %.3.i89.i
  %i.aot = load i32, ptr @ett_rtp_midi_sj_chapter_x_data, align 4
  %i.aou = tail call ptr @proto_tree_add_subtree(ptr noundef %i.ana, ptr noundef %0, i32 noundef %.3131.i.i, i32 noundef %i.aos, i32 noundef %i.aot, ptr noundef null, ptr noundef nonnull @.str.1183) ; 2 uses
  %i.aov = icmp ult i32 %.3.i89.i, %i.amx
  br i1 %i.aov, label %.lr.ph.i.outer.i, label %._crit_edge.thread.i.i

.lr.ph.i.outer.i:                                 ; preds = %bb.gz, %.thread.i148
  %.45.i.ph.i = phi i32 [ %i.apc, %.thread.i148 ], [ %.3.i89.i, %bb.gz ]
  %.41324.i.ph.i = phi i32 [ %i.aow, %.thread.i148 ], [ %.3131.i.i, %bb.gz ] ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ha, %.lr.ph.i.outer.i
  %.01226.i.i = phi i32 [ %i.aoy, %bb.ha ], [ 0, %.lr.ph.i.outer.i ] ; 3 uses
  %.45.i.i = phi i32 [ %i.aoz, %bb.ha ], [ %.45.i.ph.i, %.lr.ph.i.outer.i ] ; 2 uses
  %i.aow = add i32 %.01226.i.i, %.41324.i.ph.i    ; 2 uses
  %i.aox = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.aow)
  %.not141.i.i = icmp sgt i8 %i.aox, -1
  br i1 %.not141.i.i, label %bb.ha, label %.thread.i148

bb.ha:                                            ; preds = %.lr.ph.i.i
  %i.aoy = add i32 %.01226.i.i, 1                 ; 3 uses
  %i.aoz = add i32 %.45.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.aoz, %i.amx
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !10

.thread.i148:                                     ; preds = %.lr.ph.i.i
  %i.apa = load i32, ptr @hf_rtp_midi_sj_chapter_x_data, align 4
  %i.apb = tail call ptr @proto_tree_add_item(ptr noundef %i.aou, i32 noundef %i.apa, ptr noundef %0, i32 noundef %.41324.i.ph.i, i32 noundef %.01226.i.i, i32 noundef 0) ; 0 uses
  %i.apc = add i32 %.45.i.i, 1                    ; 2 uses
  %exitcond.not.i3.i = icmp eq i32 %i.apc, %i.amx
  br i1 %exitcond.not.i3.i, label %decode_sj_chapter_x.exit.i, label %.lr.ph.i.outer.i, !llvm.loop !10

._crit_edge.i.i:                                  ; preds = %bb.ha
  %.not140.i.i = icmp eq i32 %i.aoy, 0
  br i1 %.not140.i.i, label %decode_sj_chapter_x.exit.i, label %bb.hb

bb.hb:                                            ; preds = %._crit_edge.i.i
  %i.apd = load i32, ptr @hf_rtp_midi_sj_chapter_x_invalid_data, align 4
  %i.ape = tail call ptr @proto_tree_add_item(ptr noundef %i.aou, i32 noundef %i.apd, ptr noundef %0, i32 noundef %.41324.i.ph.i, i32 noundef %i.aoy, i32 noundef 0) ; 0 uses
  br label %decode_sj_chapter_x.exit.i

._crit_edge.thread.i.i:                           ; preds = %bb.gz, %bb.gy
  %i.apf = icmp ult i32 %.3.i89.i, %i.amx
  br i1 %i.apf, label %bb.hc, label %decode_sj_chapter_x.exit.i

bb.hc:                                            ; preds = %._crit_edge.thread.i.i
  %i.apg = load i32, ptr @hf_rtp_midi_sj_chapter_x_invalid_data, align 4
  %i.aph = sub nuw i32 %i.amx, %.3.i89.i
  %i.api = tail call ptr @proto_tree_add_item(ptr noundef %i.ana, i32 noundef %i.apg, ptr noundef %0, i32 noundef %.3131.i.i, i32 noundef %i.aph, i32 noundef 0) ; 0 uses
  br label %decode_sj_chapter_x.exit.i

decode_sj_chapter_x.exit.i:                       ; preds = %.thread.i148, %bb.hc, %._crit_edge.thread.i.i, %bb.hb, %._crit_edge.i.i
  %.1127.i.i = phi i32 [ %.3.i89.i, %._crit_edge.thread.i.i ], [ %i.amx, %bb.hc ], [ %i.amx, %bb.hb ], [ %i.amx, %._crit_edge.i.i ], [ %i.amx, %.thread.i148 ] ; 4 uses
  %i.apj = icmp slt i32 %.1127.i.i, 0
  br i1 %i.apj, label %decode_system_journal.exit, label %bb.hd

bb.hd:                                            ; preds = %decode_sj_chapter_x.exit.i
  %i.apk = add i32 %.1127.i.i, %.3.i
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %decode_sj_chapter_f.exit.i
  %.4.i = phi i32 [ %i.apk, %bb.hd ], [ %.3.i, %decode_sj_chapter_f.exit.i ]
  %i.apl = sub i32 %.4.i, %i.acp
  %.not82.i = icmp eq i32 %i.apl, %i.acu
  br i1 %.not82.i, label %decode_system_journal.exit.thread, label %.thread231

decode_system_journal.exit:                       ; preds = %decode_sj_chapter_x.exit.i
  %i.apm = icmp eq i32 %.1127.i.i, -1
  br i1 %i.apm, label %.thread231, label %decode_system_journal.exit.thread

decode_system_journal.exit.thread:                ; preds = %bb.he, %decode_system_journal.exit
  %.074.i379 = phi i32 [ %.1127.i.i, %decode_system_journal.exit ], [ %i.acu, %bb.he ]
  %i.apn = add i32 %.074.i379, %i.acp
  br label %bb.hf

bb.hf:                                            ; preds = %decode_system_journal.exit.thread, %bb.ev
  %.6 = phi i32 [ %i.apn, %decode_system_journal.exit.thread ], [ %i.acp, %bb.ev ] ; 2 uses
  %i.apo = and i32 %i.aci, 32
  %.not144 = icmp eq i32 %i.apo, 0
  br i1 %.not144, label %.thread237, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.app = load i32, ptr @ett_rtp_midi_channeljournals, align 4
  %i.apq = tail call ptr @proto_tree_add_subtree(ptr noundef %i.aby, ptr noundef %0, i32 noundef %.6, i32 noundef -1, i32 noundef %i.app, ptr noundef null, ptr noundef nonnull @.str.1152)
  %i.apr = getelementptr i8, ptr %1, i64 416      ; 4 uses
  %narrow = add nuw nsw i8 %i.acj, 1
  %i.aps = zext nneg i8 %narrow to i32
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %decode_channel_journal.exit.thread
  %.0118280 = phi i32 [ 0, %bb.hg ], [ %i.bdp, %decode_channel_journal.exit.thread ]
  %.7279 = phi i32 [ %.6, %bb.hg ], [ %i.bdo, %decode_channel_journal.exit.thread ] ; 22 uses
  %i.apt = tail call i32 @tvb_get_ntoh24(ptr noundef %0, i32 noundef %.7279) ; 10 uses
  %i.apu = lshr i32 %i.apt, 8
  %i.apv = and i32 %i.apu, 1023                   ; 4 uses
  %i.apw = load i32, ptr @ett_rtp_midi_channeljournal, align 4
  %i.apx = load ptr, ptr %i.apr, align 8
  %i.apy = lshr i32 %i.apt, 19
  %i.apz = and i32 %i.apy, 15
  %i.aqa = tail call ptr @val_to_str(ptr noundef %i.apx, i32 noundef %i.apz, ptr noundef nonnull @rtp_midi_channels, ptr noundef nonnull @rtp_midi_unknown_value_hex)
  %i.aqb = tail call ptr @proto_tree_add_subtree(ptr noundef %i.apq, ptr noundef %0, i32 noundef %.7279, i32 noundef %i.apv, i32 noundef %i.apw, ptr noundef null, ptr noundef %i.aqa) ; 13 uses
  %i.aqc = load i32, ptr @hf_rtp_midi_chanjour_sflag, align 4
  %i.aqd = tail call ptr @proto_tree_add_item(ptr noundef %i.aqb, i32 noundef %i.aqc, ptr noundef %0, i32 noundef %.7279, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.aqe = load i32, ptr @hf_rtp_midi_chanjour_chan, align 4
  %i.aqf = tail call ptr @proto_tree_add_item(ptr noundef %i.aqb, i32 noundef %i.aqe, ptr noundef %0, i32 noundef %.7279, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.aqg = load i32, ptr @hf_rtp_midi_chanjour_hflag, align 4
  %i.aqh = tail call ptr @proto_tree_add_item(ptr noundef %i.aqb, i32 noundef %i.aqg, ptr noundef %0, i32 noundef %.7279, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.aqi = load i32, ptr @hf_rtp_midi_chanjour_len, align 4
  %i.aqj = tail call ptr @proto_tree_add_item(ptr noundef %i.aqb, i32 noundef %i.aqi, ptr noundef %0, i32 noundef %.7279, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.aqk = load i32, ptr @hf_rtp_midi_chanjour_toc_p, align 4
  %i.aql = tail call ptr @proto_tree_add_item(ptr noundef %i.aqb, i32 noundef %i.aqk, ptr noundef %0, i32 noundef %.7279, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.aqm = load i32, ptr @hf_rtp_midi_chanjour_toc_c, align 4
  %i.aqn = tail call ptr @proto_tree_add_item(ptr noundef %i.aqb, i32 noundef %i.aqm, ptr noundef %0, i32 noundef %.7279, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.aqo = load i32, ptr @hf_rtp_midi_chanjour_toc_m, align 4
  %i.aqp = tail call ptr @proto_tree_add_item(ptr noundef %i.aqb, i32 noundef %i.aqo, ptr noundef %0, i32 noundef %.7279, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.aqq = load i32, ptr @hf_rtp_midi_chanjour_toc_w, align 4
  %i.aqr = tail call ptr @proto_tree_add_item(ptr noundef %i.aqb, i32 noundef %i.aqq, ptr noundef %0, i32 noundef %.7279, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.aqs = load i32, ptr @hf_rtp_midi_chanjour_toc_n, align 4
  %i.aqt = tail call ptr @proto_tree_add_item(ptr noundef %i.aqb, i32 noundef %i.aqs, ptr noundef %0, i32 noundef %.7279, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.aqu = load i32, ptr @hf_rtp_midi_chanjour_toc_e, align 4
  %i.aqv = tail call ptr @proto_tree_add_item(ptr noundef %i.aqb, i32 noundef %i.aqu, ptr noundef %0, i32 noundef %.7279, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.aqw = load i32, ptr @hf_rtp_midi_chanjour_toc_t, align 4
  %i.aqx = tail call ptr @proto_tree_add_item(ptr noundef %i.aqb, i32 noundef %i.aqw, ptr noundef %0, i32 noundef %.7279, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.aqy = load i32, ptr @hf_rtp_midi_chanjour_toc_a, align 4
  %i.aqz = tail call ptr @proto_tree_add_item(ptr noundef %i.aqb, i32 noundef %i.aqy, ptr noundef %0, i32 noundef %.7279, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.ara = add i32 %.7279, 3                      ; 5 uses
  %i.arb = add nsw i32 %i.apv, -3
  %i.arc = load i32, ptr @ett_rtp_midi_channelchapters, align 4
  %i.ard = tail call ptr @proto_tree_add_subtree(ptr noundef %i.aqb, ptr noundef %0, i32 noundef %i.ara, i32 noundef %i.arb, i32 noundef %i.arc, ptr noundef null, ptr noundef nonnull @.str.1184) ; 8 uses
  %i.are = and i32 %i.apt, 128
  %.not.i149 = icmp eq i32 %i.are, 0
  br i1 %.not.i149, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.arf = load i32, ptr @ett_rtp_midi_cj_chapter_p, align 4
  %i.arg = tail call ptr @proto_tree_add_subtree(ptr noundef %i.ard, ptr noundef %0, i32 noundef %i.ara, i32 noundef 3, i32 noundef %i.arf, ptr noundef null, ptr noundef nonnull @.str.635) ; 6 uses
  %i.arh = load i32, ptr @hf_rtp_midi_cj_chapter_p_sflag, align 4
  %i.ari = tail call ptr @proto_tree_add_item(ptr noundef %i.arg, i32 noundef %i.arh, ptr noundef %0, i32 noundef %i.ara, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.arj = load i32, ptr @hf_rtp_midi_cj_chapter_p_program, align 4
  %i.ark = tail call ptr @proto_tree_add_item(ptr noundef %i.arg, i32 noundef %i.arj, ptr noundef %0, i32 noundef %i.ara, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.arl = load i32, ptr @hf_rtp_midi_cj_chapter_p_bflag, align 4
  %i.arm = add i32 %.7279, 4                      ; 2 uses
  %i.arn = tail call ptr @proto_tree_add_item(ptr noundef %i.arg, i32 noundef %i.arl, ptr noundef %0, i32 noundef %i.arm, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aro = load i32, ptr @hf_rtp_midi_cj_chapter_p_bank_msb, align 4
  %i.arp = tail call ptr @proto_tree_add_item(ptr noundef %i.arg, i32 noundef %i.aro, ptr noundef %0, i32 noundef %i.arm, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.arq = load i32, ptr @hf_rtp_midi_cj_chapter_p_xflag, align 4
  %i.arr = add i32 %.7279, 5                      ; 2 uses
  %i.ars = tail call ptr @proto_tree_add_item(ptr noundef %i.arg, i32 noundef %i.arq, ptr noundef %0, i32 noundef %i.arr, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.art = load i32, ptr @hf_rtp_midi_cj_chapter_p_bank_lsb, align 4
  %i.aru = tail call ptr @proto_tree_add_item(ptr noundef %i.arg, i32 noundef %i.art, ptr noundef %0, i32 noundef %i.arr, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.arv = add i32 %.7279, 6
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %.0157.i = phi i32 [ %i.arv, %bb.hi ], [ %i.ara, %bb.hh ] ; 7 uses
  %.0.i150 = phi i32 [ 6, %bb.hi ], [ 3, %bb.hh ] ; 2 uses
  %i.arw = and i32 %i.apt, 64
  %.not175.i = icmp eq i32 %i.arw, 0
  br i1 %.not175.i, label %bb.hp, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.arx = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0157.i)
  %i.ary = and i8 %i.arx, 127
  %narrow.i.i = add nuw i8 %i.ary, 1
  %i.arz = zext i8 %narrow.i.i to i32             ; 2 uses
  %i.asa = shl nuw nsw i32 %i.arz, 1              ; 2 uses
  %i.asb = or disjoint i32 %i.asa, 1
  %i.asc = load i32, ptr @ett_rtp_midi_cj_chapter_c, align 4
  %i.asd = tail call ptr @proto_tree_add_subtree(ptr noundef %i.ard, ptr noundef %0, i32 noundef %.0157.i, i32 noundef %i.asb, i32 noundef %i.asc, ptr noundef null, ptr noundef nonnull @.str.634) ; 3 uses
  %i.ase = load i32, ptr @hf_rtp_midi_cj_chapter_c_sflag, align 4
  %i.asf = tail call ptr @proto_tree_add_item(ptr noundef %i.asd, i32 noundef %i.ase, ptr noundef %0, i32 noundef %.0157.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.asg = load i32, ptr @hf_rtp_midi_cj_chapter_c_length, align 4
  %i.ash = tail call ptr @proto_tree_add_item(ptr noundef %i.asd, i32 noundef %i.asg, ptr noundef %0, i32 noundef %.0157.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.asi = add i32 %.0157.i, 1                    ; 2 uses
  %i.asj = load i32, ptr @ett_rtp_midi_cj_chapter_c_loglist, align 4
  %i.ask = tail call ptr @proto_tree_add_subtree(ptr noundef %i.asd, ptr noundef %0, i32 noundef %i.asi, i32 noundef %i.asa, i32 noundef %i.asj, ptr noundef null, ptr noundef nonnull @.str.1186)
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hn, %bb.hk
  %.02.i.i = phi i32 [ 0, %bb.hk ], [ %i.ata, %bb.hn ]
  %.0501.i.i = phi i32 [ %i.asi, %bb.hk ], [ %i.asz, %bb.hn ] ; 5 uses
  %i.asl = load i32, ptr @ett_rtp_midi_cj_chapter_c_logitem, align 4
  %i.asm = tail call ptr @proto_tree_add_subtree(ptr noundef %i.ask, ptr noundef %0, i32 noundef %.0501.i.i, i32 noundef 2, i32 noundef %i.asl, ptr noundef null, ptr noundef nonnull @.str.1187) ; 5 uses
  %i.asn = load i32, ptr @hf_rtp_midi_cj_chapter_c_sflag, align 4
  %i.aso = tail call ptr @proto_tree_add_item(ptr noundef %i.asm, i32 noundef %i.asn, ptr noundef %0, i32 noundef %.0501.i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.asp = load i32, ptr @hf_rtp_midi_cj_chapter_c_number, align 4
  %i.asq = tail call ptr @proto_tree_add_item(ptr noundef %i.asm, i32 noundef %i.asp, ptr noundef %0, i32 noundef %.0501.i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.asr = add i32 %.0501.i.i, 1                  ; 4 uses
  %i.ass = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.asr)
  %i.ast = load i32, ptr @hf_rtp_midi_cj_chapter_c_aflag, align 4
  %i.asu = tail call ptr @proto_tree_add_item(ptr noundef %i.asm, i32 noundef %i.ast, ptr noundef %0, i32 noundef %i.asr, i32 noundef 1, i32 noundef 0) ; 0 uses
  %.not.i.i151 = icmp sgt i8 %i.ass, -1
  br i1 %.not.i.i151, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.asv = load i32, ptr @hf_rtp_midi_cj_chapter_c_tflag, align 4
  %i.asw = tail call ptr @proto_tree_add_item(ptr noundef %i.asm, i32 noundef %i.asv, ptr noundef %0, i32 noundef %i.asr, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %hf_rtp_midi_cj_chapter_c_value.sink.i.i = phi ptr [ @hf_rtp_midi_cj_chapter_c_alt, %bb.hm ], [ @hf_rtp_midi_cj_chapter_c_value, %bb.hl ]
  %i.asx = load i32, ptr %hf_rtp_midi_cj_chapter_c_value.sink.i.i, align 4
  %i.asy = tail call ptr @proto_tree_add_item(ptr noundef %i.asm, i32 noundef %i.asx, ptr noundef %0, i32 noundef %i.asr, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.asz = add i32 %.0501.i.i, 2                  ; 3 uses
  %i.ata = add nuw nsw i32 %.02.i.i, 1            ; 2 uses
  %exitcond.not.i.i152 = icmp eq i32 %i.ata, %i.arz
  br i1 %exitcond.not.i.i152, label %decode_cj_chapter_c.exit.i, label %bb.hl, !llvm.loop !11

decode_cj_chapter_c.exit.i:                       ; preds = %bb.hn
  %i.atb = sub i32 %i.asz, %.0157.i               ; 3 uses
  %i.atc = icmp slt i32 %i.atb, 0
  br i1 %i.atc, label %decode_channel_journal.exit, label %bb.ho

bb.ho:                                            ; preds = %decode_cj_chapter_c.exit.i
  %i.atd = add nuw i32 %i.atb, %.0.i150
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hj
  %.1158.i = phi i32 [ %i.asz, %bb.ho ], [ %.0157.i, %bb.hj ] ; 13 uses
  %.1.i153 = phi i32 [ %i.atd, %bb.ho ], [ %.0.i150, %bb.hj ] ; 2 uses
  %i.ate = and i32 %i.apt, 32
  %.not176.i = icmp eq i32 %i.ate, 0
  br i1 %.not176.i, label %bb.ij, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.atf = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %.1158.i)
  %i.atg = zext i16 %i.atf to i32                 ; 4 uses
  %i.ath = and i32 %i.atg, 63                     ; 2 uses
  %i.ati = add nsw i32 %i.ath, -2                 ; 3 uses
  %i.atj = load i32, ptr @ett_rtp_midi_cj_chapter_m, align 4
  %i.atk = tail call ptr @proto_tree_add_subtree(ptr noundef %i.ard, ptr noundef %0, i32 noundef %.1158.i, i32 noundef %i.ati, i32 noundef %i.atj, ptr noundef null, ptr noundef nonnull @.str.1188) ; 10 uses
  %i.atl = load i32, ptr @hf_rtp_midi_cj_chapter_m_sflag, align 4
  %i.atm = tail call ptr @proto_tree_add_item(ptr noundef %i.atk, i32 noundef %i.atl, ptr noundef %0, i32 noundef %.1158.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.atn = load i32, ptr @hf_rtp_midi_cj_chapter_m_pflag, align 4
  %i.ato = tail call ptr @proto_tree_add_item(ptr noundef %i.atk, i32 noundef %i.atn, ptr noundef %0, i32 noundef %.1158.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.atp = load i32, ptr @hf_rtp_midi_cj_chapter_m_eflag, align 4
  %i.atq = tail call ptr @proto_tree_add_item(ptr noundef %i.atk, i32 noundef %i.atp, ptr noundef %0, i32 noundef %.1158.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.atr = load i32, ptr @hf_rtp_midi_cj_chapter_m_uflag, align 4
  %i.ats = tail call ptr @proto_tree_add_item(ptr noundef %i.atk, i32 noundef %i.atr, ptr noundef %0, i32 noundef %.1158.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.att = load i32, ptr @hf_rtp_midi_cj_chapter_m_wflag, align 4
  %i.atu = tail call ptr @proto_tree_add_item(ptr noundef %i.atk, i32 noundef %i.att, ptr noundef %0, i32 noundef %.1158.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.atv = load i32, ptr @hf_rtp_midi_cj_chapter_m_zflag, align 4
  %i.atw = tail call ptr @proto_tree_add_item(ptr noundef %i.atk, i32 noundef %i.atv, ptr noundef %0, i32 noundef %.1158.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.atx = load i32, ptr @hf_rtp_midi_cj_chapter_m_length, align 4
  %i.aty = tail call ptr @proto_tree_add_item(ptr noundef %i.atk, i32 noundef %i.atx, ptr noundef %0, i32 noundef %.1158.i, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.atz = add i32 %.1158.i, 2                    ; 3 uses
  %i.aua = and i32 %i.atg, 16384
  %.not.i183.i = icmp eq i32 %i.aua, 0
  br i1 %.not.i183.i, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.aub = load i32, ptr @hf_rtp_midi_cj_chapter_m_qflag, align 4
  %i.auc = tail call ptr @proto_tree_add_item(ptr noundef %i.atk, i32 noundef %i.aub, ptr noundef %0, i32 noundef %i.atz, i32 noundef 1, i32 noundef 0) ; 0 uses
end_hunk_0
