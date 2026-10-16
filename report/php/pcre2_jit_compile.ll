Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_jit_compile?download=true
inline.NumInlined: 5888
inline.NumDeleted: 131
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 17
begin_hunk_0_@jit_compile:bb.a
  %i.abr = call ptr %.val.i.1.i(i64 noundef 4096, ptr noundef %.val18.i.1.i) #20, !inline_history !275 ; 5 uses
  %.not.i.1.i = icmp eq ptr %i.abr, null
  br i1 %.not.i.1.i, label %bb.ev, label %bb.ey, !prof !61

bb.ey:                                            ; preds = %bb.ex
  %i.abs = load ptr, ptr %i.yu, align 8, !tbaa !124
  store ptr %i.abs, ptr %i.abr, align 8, !tbaa !135
  store ptr %i.abr, ptr %i.yu, align 8, !tbaa !124
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abr, i64 8
  store i64 3, ptr %i.abt, align 8, !tbaa !134
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abr, i64 16
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ew
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abk, i64 16
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 %i.abm
  store i64 %i.abn, ptr %i.abl, align 8, !tbaa !134
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.0.i.ph.1.i = phi ptr [ %i.abu, %bb.ey ], [ %i.abw, %bb.ez ] ; 3 uses
  store i8 2, ptr %.0.i.ph.1.i, align 1, !tbaa !97
  %i.abx = load i64, ptr %i.aat, align 8, !tbaa !136
  %i.aby = add i64 %i.abx, 2
  store i64 %i.aby, ptr %i.aat, align 8, !tbaa !136
  %i.abz = getelementptr inbounds nuw i8, ptr %.0.i.ph.1.i, i64 1
  store i8 65, ptr %i.abz, align 1, !tbaa !97
  %i.aca = getelementptr inbounds nuw i8, ptr %.0.i.ph.1.i, i64 2
  store i8 87, ptr %i.aca, align 1, !tbaa !97
  %i.acb = load ptr, ptr %i.yu, align 8, !tbaa !124 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 8 ; 2 uses
  %i.acd = load i64, ptr %i.acc, align 8, !tbaa !134 ; 2 uses
  %i.ace = add i64 %i.acd, 3                      ; 2 uses
  %i.acf = icmp ult i64 %i.ace, 4081
  br i1 %i.acf, label %bb.fd, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.acg = load ptr, ptr %i.ys, align 8, !tbaa !123 ; 2 uses
  %.val.i.2.i = load ptr, ptr %i.acg, align 8, !tbaa !100
  %i.ach = getelementptr i8, ptr %i.acg, i64 16
  %.val18.i.2.i = load ptr, ptr %i.ach, align 8, !tbaa !101
  %i.aci = call ptr %.val.i.2.i(i64 noundef 4096, ptr noundef %.val18.i.2.i) #20, !inline_history !275 ; 5 uses
  %.not.i.2.i = icmp eq ptr %i.aci, null
  br i1 %.not.i.2.i, label %bb.ev, label %bb.fc, !prof !61

bb.fc:                                            ; preds = %bb.fb
  %i.acj = load ptr, ptr %i.yu, align 8, !tbaa !124
  store ptr %i.acj, ptr %i.aci, align 8, !tbaa !135
  store ptr %i.aci, ptr %i.yu, align 8, !tbaa !124
  %i.ack = getelementptr inbounds nuw i8, ptr %i.aci, i64 8
  store i64 3, ptr %i.ack, align 8, !tbaa !134
  %i.acl = getelementptr inbounds nuw i8, ptr %i.aci, i64 16
  br label %bb.fe

bb.fd:                                            ; preds = %bb.fa
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acb, i64 16
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 %i.acd
  store i64 %i.ace, ptr %i.acc, align 8, !tbaa !134
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %.0.i.ph.2.i = phi ptr [ %i.acl, %bb.fc ], [ %i.acn, %bb.fd ] ; 3 uses
  store i8 2, ptr %.0.i.ph.2.i, align 1, !tbaa !97
  %i.aco = load i64, ptr %i.aat, align 8, !tbaa !136
  %i.acp = add i64 %i.aco, 2
  store i64 %i.acp, ptr %i.aat, align 8, !tbaa !136
  %i.acq = getelementptr inbounds nuw i8, ptr %.0.i.ph.2.i, i64 1
  store i8 65, ptr %i.acq, align 1, !tbaa !97
  %i.acr = getelementptr inbounds nuw i8, ptr %.0.i.ph.2.i, i64 2
  store i8 86, ptr %i.acr, align 1, !tbaa !97
  %i.acs = load ptr, ptr %i.yu, align 8, !tbaa !124 ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 8 ; 2 uses
  %i.acu = load i64, ptr %i.act, align 8, !tbaa !134 ; 2 uses
  %i.acv = add i64 %i.acu, 3                      ; 2 uses
  %i.acw = icmp ult i64 %i.acv, 4081
  br i1 %i.acw, label %bb.fh, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.acx = load ptr, ptr %i.ys, align 8, !tbaa !123 ; 2 uses
  %.val.i.3.i = load ptr, ptr %i.acx, align 8, !tbaa !100
  %i.acy = getelementptr i8, ptr %i.acx, i64 16
  %.val18.i.3.i = load ptr, ptr %i.acy, align 8, !tbaa !101
  %i.acz = call ptr %.val.i.3.i(i64 noundef 4096, ptr noundef %.val18.i.3.i) #20, !inline_history !275 ; 5 uses
  %.not.i.3.i = icmp eq ptr %i.acz, null
  br i1 %.not.i.3.i, label %bb.ev, label %bb.fg, !prof !61

bb.fg:                                            ; preds = %bb.ff
  %i.ada = load ptr, ptr %i.yu, align 8, !tbaa !124
  store ptr %i.ada, ptr %i.acz, align 8, !tbaa !135
  store ptr %i.acz, ptr %i.yu, align 8, !tbaa !124
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acz, i64 8
  store i64 3, ptr %i.adb, align 8, !tbaa !134
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acz, i64 16
  br label %bb.fi

bb.fh:                                            ; preds = %bb.fe
  %i.add = getelementptr inbounds nuw i8, ptr %i.acs, i64 16
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 %i.acu
  store i64 %i.acv, ptr %i.act, align 8, !tbaa !134
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %.0.i.ph.3.i = phi ptr [ %i.adc, %bb.fg ], [ %i.ade, %bb.fh ] ; 3 uses
  store i8 2, ptr %.0.i.ph.3.i, align 1, !tbaa !97
  %i.adf = load i64, ptr %i.aat, align 8, !tbaa !136
  %i.adg = add i64 %i.adf, 2
  store i64 %i.adg, ptr %i.aat, align 8, !tbaa !136
  %i.adh = getelementptr inbounds nuw i8, ptr %.0.i.ph.3.i, i64 1
  store i8 65, ptr %i.adh, align 1, !tbaa !97
  %i.adi = getelementptr inbounds nuw i8, ptr %.0.i.ph.3.i, i64 2
  store i8 85, ptr %i.adi, align 1, !tbaa !97
  %i.adj = load ptr, ptr %i.yu, align 8, !tbaa !124 ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 8 ; 2 uses
  %i.adl = load i64, ptr %i.adk, align 8, !tbaa !134 ; 2 uses
  %i.adm = add i64 %i.adl, 2                      ; 2 uses
  %i.adn = icmp ult i64 %i.adm, 4081
  br i1 %i.adn, label %bb.fl, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ado = load ptr, ptr %i.ys, align 8, !tbaa !123 ; 2 uses
  %.val.i.4.i = load ptr, ptr %i.ado, align 8, !tbaa !100
  %i.adp = getelementptr i8, ptr %i.ado, i64 16
  %.val18.i.4.i = load ptr, ptr %i.adp, align 8, !tbaa !101
  %i.adq = call ptr %.val.i.4.i(i64 noundef 4096, ptr noundef %.val18.i.4.i) #20, !inline_history !275 ; 5 uses
  %.not.i.4.i = icmp eq ptr %i.adq, null
  br i1 %.not.i.4.i, label %bb.ev, label %bb.fk, !prof !61

bb.fk:                                            ; preds = %bb.fj
  %i.adr = load ptr, ptr %i.yu, align 8, !tbaa !124
  store ptr %i.adr, ptr %i.adq, align 8, !tbaa !135
  store ptr %i.adq, ptr %i.yu, align 8, !tbaa !124
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adq, i64 8
  store i64 2, ptr %i.ads, align 8, !tbaa !134
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adq, i64 16
  br label %.preheader.i750

bb.fl:                                            ; preds = %bb.fi
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adj, i64 16
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 %i.adl
  store i64 %i.adm, ptr %i.adk, align 8, !tbaa !134
  br label %.preheader.i750

.preheader.i750:                                  ; preds = %bb.fl, %bb.fk
  %.0.i.ph.4.i = phi ptr [ %i.adt, %bb.fk ], [ %i.adv, %bb.fl ] ; 2 uses
  store i8 1, ptr %.0.i.ph.4.i, align 1, !tbaa !97
  %i.adw = load i64, ptr %i.aat, align 8, !tbaa !136
  %i.adx = add i64 %i.adw, 1
  store i64 %i.adx, ptr %i.aat, align 8, !tbaa !136
  %i.ady = getelementptr inbounds nuw i8, ptr %.0.i.ph.4.i, i64 1
  store i8 85, ptr %i.ady, align 1, !tbaa !97
  %i.adz = load i32, ptr %i.aas, align 8, !tbaa !132
  %.not.i3223 = icmp eq i32 %i.adz, 0             ; 2 uses
  %spec.select267.i3227 = select i1 %.not.i3223, i64 3, i64 2 ; 3 uses
  %i.aea = add nuw nsw i64 %spec.select267.i3227, 1 ; 2 uses
  %i.aeb = load ptr, ptr %i.yu, align 8, !tbaa !124 ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8 ; 2 uses
  %i.aed = load i64, ptr %i.aec, align 8, !tbaa !134 ; 2 uses
  %i.aee = add i64 %i.aea, %i.aed                 ; 2 uses
  %i.aef = icmp ult i64 %i.aee, 4081
  br i1 %i.aef, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %.preheader.i750
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aeb, i64 16
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 %i.aed
  store i64 %i.aee, ptr %i.aec, align 8, !tbaa !134
  br label %bb.fp

bb.fn:                                            ; preds = %.preheader.i750
  %i.aei = load ptr, ptr %i.ys, align 8, !tbaa !123 ; 2 uses
  %.val.i.i3228 = load ptr, ptr %i.aei, align 8, !tbaa !100
  %i.aej = getelementptr i8, ptr %i.aei, i64 16
  %.val18.i.i3229 = load ptr, ptr %i.aej, align 8, !tbaa !101
  %i.aek = call ptr %.val.i.i3228(i64 noundef 4096, ptr noundef %.val18.i.i3229) #20, !inline_history !4 ; 5 uses
  %.not.i.i3230 = icmp eq ptr %i.aek, null
  br i1 %.not.i.i3230, label %emit_mov.exit.a, label %bb.fo, !prof !61

bb.fo:                                            ; preds = %bb.fn
  %i.ael = load ptr, ptr %i.yu, align 8, !tbaa !124
  store ptr %i.ael, ptr %i.aek, align 8, !tbaa !135
  store ptr %i.aek, ptr %i.yu, align 8, !tbaa !124
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aek, i64 8
  store i64 %i.aea, ptr %i.aem, align 8, !tbaa !134
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aek, i64 16
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fm
  %.0.i269.ph.i3231 = phi ptr [ %i.aen, %bb.fo ], [ %i.aeh, %bb.fm ] ; 3 uses
  %i.aeo = trunc nuw nsw i64 %spec.select267.i3227 to i8
  %i.aep = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i3231, i64 1 ; 2 uses
  store i8 %i.aeo, ptr %.0.i269.ph.i3231, align 1, !tbaa !97
  %i.aeq = load i64, ptr %i.aat, align 8, !tbaa !136
  %i.aer = add i64 %i.aeq, %spec.select267.i3227
  store i64 %i.aer, ptr %i.aat, align 8, !tbaa !136
  br i1 %.not.i3223, label %bb.fq, label %emit_mov.exit.thread.a

bb.fq:                                            ; preds = %bb.fp
  %i.aes = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i3231, i64 2
  store i8 72, ptr %i.aep, align 1, !tbaa !97
  br label %emit_mov.exit.thread.a

emit_mov.exit.thread.a:                           ; preds = %bb.fq, %bb.fp
  %.1197.i3234 = phi ptr [ %i.aes, %bb.fq ], [ %i.aep, %bb.fp ] ; 2 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %.1197.i3234, i64 1
  store i8 -5, ptr %i.aet, align 1, !tbaa !97
  store i8 -119, ptr %.1197.i3234, align 1, !tbaa !97
  %i.aeu = add nsw i32 %.0104.lcssa.i, 63
  %i.aev = and i32 %i.aeu, -16                    ; 2 uses
  %i.aew = add nsw i32 %i.aev, -48                ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.yr, i64 112
  store i32 %i.aew, ptr %i.aex, align 8, !tbaa !417
  %i.aey = icmp sgt i32 %i.aev, 48
  br i1 %i.aey, label %bb.fr, label %sljit_emit_enter.exit

emit_mov.exit.a:                                  ; preds = %bb.fn
  store i32 2, ptr %i.yr, align 8, !tbaa !129
  br label %sljit_emit_enter.exit

bb.fr:                                            ; preds = %emit_mov.exit.thread.a
  %i.aez = zext nneg i32 %i.aew to i64
  %i.afa = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.yr, i64 noundef 17, i32 noundef 127, i64 noundef %i.aez, i32 noundef 14, i64 noundef 0) ; 2 uses
  %.not94.i = icmp eq ptr %i.afa, null
  br i1 %.not94.i, label %sljit_emit_enter.exit, label %bb.fs, !prof !61

bb.fs:                                            ; preds = %bb.fr
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 1 ; 2 uses
  %i.afc = load i8, ptr %i.afb, align 1, !tbaa !97
  %i.afd = or i8 %i.afc, 40
  store i8 %i.afd, ptr %i.afb, align 1, !tbaa !97
  br label %sljit_emit_enter.exit

sljit_emit_enter.exit:                            ; preds = %bb.fr, %emit_mov.exit.a, %sljit_create_compiler.exit, %bb.ev, %emit_mov.exit.thread.a, %bb.fs
  %i.afe = load i16, ptr %i.cm, align 8, !tbaa !99 ; 2 uses
  %i.aff = zext i16 %i.afe to i32
  %i.afg = shl nuw nsw i32 %i.aff, 1              ; 2 uses
  %i.afh = load ptr, ptr %4, align 8, !tbaa !128  ; 37 uses
  %i.afi = load i32, ptr %i.afh, align 8, !tbaa !129
  %.not.i.i751 = icmp eq i32 %i.afi, 0
  br i1 %.not.i.i751, label %bb.ft, label %sljit_emit_op2.exit.i, !prof !130

bb.ft:                                            ; preds = %sljit_emit_enter.exit
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afh, i64 144 ; 2 uses
  store i32 0, ptr %i.afj, align 8, !tbaa !132
  %i.afk = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.afh, i64 noundef 1, i32 noundef 1, i64 noundef 0, i32 noundef 141, i64 noundef 16) ; 2 uses
  %.not66.i.i = icmp eq ptr %i.afk, null
  br i1 %.not66.i.i, label %emit_mov.exit90.i, label %emit_mov.exit90.thread.i, !prof !61

emit_mov.exit90.thread.i:                         ; preds = %bb.ft
  store i8 -117, ptr %i.afk, align 1, !tbaa !97
  br label %bb.fu

emit_mov.exit90.i:                                ; preds = %bb.ft
  %i.afl = load i32, ptr %i.afh, align 8, !tbaa !129
  %.not165.i.i = icmp eq i32 %i.afl, 0
  br i1 %.not165.i.i, label %bb.fu, label %sljit_emit_op2.exit.i, !prof !137

bb.fu:                                            ; preds = %emit_mov.exit90.i, %emit_mov.exit90.thread.i
  %i.afm = load i32, ptr %i.afj, align 8, !tbaa !132
  %.not.i2728 = icmp eq i32 %i.afm, 0             ; 2 uses
  %spec.select267.i2732 = select i1 %.not.i2728, i64 4, i64 3 ; 3 uses
  %i.afn = add nuw nsw i64 %spec.select267.i2732, 1 ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afh, i64 72 ; 3 uses
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !124 ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 8 ; 2 uses
  %i.afr = load i64, ptr %i.afq, align 8, !tbaa !134 ; 2 uses
  %i.afs = add i64 %i.afn, %i.afr                 ; 2 uses
  %i.aft = icmp ult i64 %i.afs, 4081
  br i1 %i.aft, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afp, i64 16
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 %i.afr
  store i64 %i.afs, ptr %i.afq, align 8, !tbaa !134
  br label %bb.fy

bb.fw:                                            ; preds = %bb.fu
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afh, i64 56
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !123 ; 2 uses
  %.val.i.i2733 = load ptr, ptr %i.afx, align 8, !tbaa !100
  %i.afy = getelementptr i8, ptr %i.afx, i64 16
  %.val18.i.i2734 = load ptr, ptr %i.afy, align 8, !tbaa !101
  %i.afz = call ptr %.val.i.i2733(i64 noundef 4096, ptr noundef %.val18.i.i2734) #20, !inline_history !4 ; 5 uses
  %.not.i.i2735 = icmp eq ptr %i.afz, null
  br i1 %.not.i.i2735, label %emit_x86_instruction.exit2745.thread, label %bb.fx, !prof !61

bb.fx:                                            ; preds = %bb.fw
  %i.aga = load ptr, ptr %i.afo, align 8, !tbaa !124
  store ptr %i.aga, ptr %i.afz, align 8, !tbaa !135
  store ptr %i.afz, ptr %i.afo, align 8, !tbaa !124
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afz, i64 8
  store i64 %i.afn, ptr %i.agb, align 8, !tbaa !134
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afz, i64 16
  br label %bb.fy

emit_x86_instruction.exit2745.thread:             ; preds = %bb.fw
  store i32 2, ptr %i.afh, align 8, !tbaa !129
  br label %sljit_emit_op2.exit.i

bb.fy:                                            ; preds = %bb.fx, %bb.fv
  %.0.i269.ph.i2736 = phi ptr [ %i.agc, %bb.fx ], [ %i.afv, %bb.fv ] ; 3 uses
  %i.agd = trunc nuw nsw i64 %spec.select267.i2732 to i8
  %i.age = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i2736, i64 1 ; 2 uses
  store i8 %i.agd, ptr %.0.i269.ph.i2736, align 1, !tbaa !97
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afh, i64 120 ; 2 uses
  %i.agg = load i64, ptr %i.agf, align 8, !tbaa !136
  %i.agh = add i64 %i.agg, %spec.select267.i2732
  store i64 %i.agh, ptr %i.agf, align 8, !tbaa !136
  br i1 %.not.i2728, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.agi = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i2736, i64 2
  store i8 72, ptr %i.age, align 1, !tbaa !97
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %.1197.i2739 = phi ptr [ %i.agi, %bb.fz ], [ %i.age, %bb.fy ] ; 3 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %.1197.i2739, i64 1 ; 2 uses
  store i8 -125, ptr %.1197.i2739, align 1, !tbaa !97
  store i8 -64, ptr %i.agj, align 1, !tbaa !97
  %i.agk = getelementptr inbounds nuw i8, ptr %.1197.i2739, i64 2
  store i8 1, ptr %i.agk, align 1, !tbaa !97
  store i8 -24, ptr %i.agj, align 1, !tbaa !97
  br label %sljit_emit_op2.exit.i

sljit_emit_op2.exit.i:                            ; preds = %emit_x86_instruction.exit2745.thread, %bb.ga, %emit_mov.exit90.i, %sljit_emit_enter.exit
  %i.agl = icmp ult i16 %i.afe, 3
  br i1 %i.agl, label %.preheader.i753, label %bb.gc

.preheader.i753:                                  ; preds = %sljit_emit_op2.exit.i
  %i.agm = getelementptr inbounds nuw i8, ptr %i.afh, i64 144
  %i.agn = load i32, ptr %i.afh, align 8, !tbaa !129
  %i.ago = icmp eq i32 %i.agn, 0
  br i1 %i.ago, label %.preheader.split.i.preheader, label %reset_ovector.exit, !prof !130

.preheader.split.i.preheader:                     ; preds = %.preheader.i753
  %i.agp = or disjoint i32 %i.afg, 1
  br label %.preheader.split.i

.preheader.splitthread-pre-split.i:               ; preds = %sljit_emit_op1.exit.i
  %i.agq = add nuw nsw i32 %.0127.i, 1
  %.pr.i754 = load i32, ptr %i.afh, align 8, !tbaa !129
  br label %.preheader.split.i

.preheader.split.i:                               ; preds = %.preheader.split.i.preheader, %.preheader.splitthread-pre-split.i
  %i.agr = phi i32 [ %.pr.i754, %.preheader.splitthread-pre-split.i ], [ 0, %.preheader.split.i.preheader ]
  %.0127.i = phi i32 [ %i.agq, %.preheader.splitthread-pre-split.i ], [ 1, %.preheader.split.i.preheader ] ; 3 uses
  %.not.i30.i = icmp eq i32 %i.agr, 0
  br i1 %.not.i30.i, label %bb.gb, label %sljit_emit_op1.exit.i, !prof !130

bb.gb:                                            ; preds = %.preheader.split.i
  %i.ags = load i32, ptr %i.cl, align 4, !tbaa !98
  %i.agt = shl nuw nsw i32 %.0127.i, 3
  %i.agu = add nsw i32 %i.ags, %i.agt
  %i.agv = sext i32 %i.agu to i64
  store i32 0, ptr %i.agm, align 8, !tbaa !132
  %i.agw = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.afh, i64 noundef 1, i32 noundef 1, i64 noundef 0, i32 noundef 142, i64 noundef range(i64 -2147483648, 2147483664) %i.agv) ; 2 uses
  %.not73.i.i = icmp eq ptr %i.agw, null
  br i1 %.not73.i.i, label %sljit_emit_op1.exit.i, label %emit_mov.exit.thread.i, !prof !61

emit_mov.exit.thread.i:                           ; preds = %bb.gb
  store i8 -119, ptr %i.agw, align 1, !tbaa !97
  br label %sljit_emit_op1.exit.i

sljit_emit_op1.exit.i:                            ; preds = %emit_mov.exit.thread.i, %bb.gb, %.preheader.split.i
  %exitcond.not.i = icmp eq i32 %.0127.i, %i.agp
  br i1 %exitcond.not.i, label %reset_ovector.exit, label %.preheader.splitthread-pre-split.i, !llvm.loop !276

bb.gc:                                            ; preds = %sljit_emit_op2.exit.i
  %i.agx = load i32, ptr %i.cl, align 4, !tbaa !98
  %i.agy = sext i32 %i.agx to i64
  %i.agz = add nsw i64 %i.agy, 8
  call fastcc void @sljit_get_local_base(ptr noundef nonnull %i.afh, i32 noundef 2, i64 noundef %i.agz)
  %i.aha = load i32, ptr %i.afh, align 8, !tbaa !129
  %.not.i44.i = icmp eq i32 %i.aha, 0
  br i1 %.not.i44.i, label %bb.gd, label %sljit_emit_op1.exit48.i, !prof !130

bb.gd:                                            ; preds = %bb.gc
  %i.ahb = or disjoint i32 %i.afg, 1
  %i.ahc = zext nneg i32 %i.ahb to i64
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.afh, i64 144
  store i32 0, ptr %i.ahd, align 8, !tbaa !132
  %i.ahe = call fastcc i32 @emit_mov(ptr noundef nonnull %i.afh, i32 noundef 3, i64 noundef 0, i32 noundef 127, i64 noundef %i.ahc) ; 0 uses
  br label %sljit_emit_op1.exit48.i

sljit_emit_op1.exit48.i:                          ; preds = %bb.gd, %bb.gc
  %i.ahf = call fastcc ptr @sljit_emit_label(ptr noundef nonnull %i.afh) ; 2 uses
  %i.ahg = load i32, ptr %i.afh, align 8, !tbaa !129
  %.not.i49.i = icmp eq i32 %i.ahg, 0
  br i1 %.not.i49.i, label %bb.ge, label %reset_ovector.exit, !prof !130

bb.ge:                                            ; preds = %sljit_emit_op1.exit48.i
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.afh, i64 144 ; 3 uses
  store i32 0, ptr %i.ahh, align 8, !tbaa !132
  %i.ahi = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.afh, i64 noundef 1, i32 noundef 1, i64 noundef 0, i32 noundef 130, i64 noundef 0) ; 2 uses
  %.not73.i82.i = icmp eq ptr %i.ahi, null
  br i1 %.not73.i82.i, label %emit_mov.exit84.i, label %sljit_emit_op1.exit53.i, !prof !61

emit_mov.exit84.i:                                ; preds = %bb.ge
  %i.ahj = load i32, ptr %i.afh, align 8, !tbaa !129
  %.not110.i51.i = icmp eq i32 %i.ahj, 0
  br i1 %.not110.i51.i, label %sljit_emit_op2.exit56.i, label %reset_ovector.exit, !prof !137

sljit_emit_op1.exit53.i:                          ; preds = %bb.ge
  store i8 -119, ptr %i.ahi, align 1, !tbaa !97
  %.pre.i752 = load i32, ptr %i.afh, align 8, !tbaa !129
  %i.ahk = icmp eq i32 %.pre.i752, 0
  br i1 %i.ahk, label %sljit_emit_op2.exit56.i, label %reset_ovector.exit, !prof !139

sljit_emit_op2.exit56.i:                          ; preds = %sljit_emit_op1.exit53.i, %emit_mov.exit84.i
  store i32 0, ptr %i.ahh, align 8, !tbaa !132
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.afh, i64 72 ; 9 uses
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !124 ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8 ; 2 uses
  %i.aho = load i64, ptr %i.ahn, align 8, !tbaa !134 ; 2 uses
  %i.ahp = add i64 %i.aho, 5                      ; 2 uses
  %i.ahq = icmp ult i64 %i.ahp, 4081
  br i1 %i.ahq, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %sljit_emit_op2.exit56.i
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahm, i64 16
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 %i.aho
  store i64 %i.ahp, ptr %i.ahn, align 8, !tbaa !134
  br label %emit_x86_instruction.exit

bb.gg:                                            ; preds = %sljit_emit_op2.exit56.i
  %i.aht = getelementptr inbounds nuw i8, ptr %i.afh, i64 56
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !123 ; 2 uses
  %.val.i.i2720 = load ptr, ptr %i.ahu, align 8, !tbaa !100
  %i.ahv = getelementptr i8, ptr %i.ahu, i64 16
  %.val18.i.i2721 = load ptr, ptr %i.ahv, align 8, !tbaa !101
  %i.ahw = call ptr %.val.i.i2720(i64 noundef 4096, ptr noundef %.val18.i.i2721) #20, !inline_history !4 ; 5 uses
  %.not.i.i2722 = icmp eq ptr %i.ahw, null
end_hunk_0
