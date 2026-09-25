Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_jit_compile?download=true
inline.NumInlined: 5888
inline.NumDeleted: 131
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 17
begin_hunk_0_@compile_iterator_matchingpath:bb.a
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !136 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.0.i.ph.i, i64 8
  store i64 %i.id, ptr %i.ie, align 8, !tbaa !145
  %i.if = add i64 %i.id, 15
  store i64 %i.if, ptr %i.ic, align 8, !tbaa !136
  %i.ig = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 3 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !124 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8 ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !134 ; 2 uses
  %i.ik = add i64 %i.ij, 1                        ; 2 uses
  %i.il = icmp ult i64 %i.ik, 4081
  br i1 %i.il, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %set_jump.exit.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ij
  store i64 %i.ik, ptr %i.ii, align 8, !tbaa !134
  br label %sljit_emit_jump.exit

bb.bi:                                            ; preds = %set_jump.exit.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !123 ; 2 uses
  %.val.i21.i = load ptr, ptr %i.ip, align 8, !tbaa !100
  %i.iq = getelementptr i8, ptr %i.ip, i64 16
  %.val18.i22.i = load ptr, ptr %i.iq, align 8, !tbaa !101
  %i.ir = tail call ptr %.val.i21.i(i64 noundef 4096, ptr noundef %.val18.i22.i) #20, !inline_history !8 ; 5 uses
  %.not.i23.i = icmp eq ptr %i.ir, null
  br i1 %.not.i23.i, label %bb.bk, label %bb.bj, !prof !61

bb.bj:                                            ; preds = %bb.bi
  %i.is = load ptr, ptr %i.ig, align 8, !tbaa !124
  store ptr %i.is, ptr %i.ir, align 8, !tbaa !135
  store ptr %i.ir, ptr %i.ig, align 8, !tbaa !124
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store i64 1, ptr %i.it, align 8, !tbaa !134
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  br label %sljit_emit_jump.exit

bb.bk:                                            ; preds = %bb.bi
  store i32 2, ptr %i.h, align 8, !tbaa !129
  br label %sljit_set_label.exit

sljit_emit_jump.exit:                             ; preds = %bb.bh, %bb.bj
  %.0.i24.ph.i = phi ptr [ %i.iu, %bb.bj ], [ %i.in, %bb.bh ]
  store i8 -2, ptr %.0.i24.ph.i, align 1, !tbaa !97
  %.not6.i = icmp eq ptr %i.he, null
  br i1 %.not6.i, label %sljit_set_label.exit, label %bb.bl, !prof !146

bb.bl:                                            ; preds = %sljit_emit_jump.exit
  %i.iv = load i64, ptr %i.hx, align 8, !tbaa !142
  %i.iw = and i64 %i.iv, -2
  store i64 %i.iw, ptr %i.hx, align 8, !tbaa !142
  store ptr %i.he, ptr %i.hy, align 8, !tbaa !97
  br label %sljit_set_label.exit

bb.bm:                                            ; preds = %switch.early.test, %switch.early.test, %bb.ab, %bb.aa
  %i.ix = load i32, ptr %i.h, align 8, !tbaa !129
  %.not.i509 = icmp eq i32 %i.ix, 0
  br i1 %.not.i509, label %bb.bn, label %sljit_emit_op1.exit514, !prof !130

bb.bn:                                            ; preds = %bb.bm
  %i.iy = zext i32 %i.dm to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  store i32 0, ptr %i.iz, align 8, !tbaa !132
  %i.ja = tail call fastcc i32 @emit_mov(ptr noundef nonnull %i.h, i32 noundef %., i64 noundef range(i64 -2147483648, 2147483664) %.482, i32 noundef 127, i64 noundef %i.iy) ; 0 uses
  br label %sljit_emit_op1.exit514

sljit_emit_op1.exit514:                           ; preds = %bb.bn, %bb.bm
  %i.jb = tail call fastcc ptr @sljit_emit_label(ptr noundef nonnull %i.h) ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.0.i.ph1873, i64 24
  %i.jd = tail call fastcc ptr @compile_char1_matchingpath(ptr noundef %0, i8 noundef zeroext %i.dl, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.jc, i32 noundef 1) ; 0 uses
  %i.je = load i32, ptr %i.h, align 8, !tbaa !129
  %.not.i515 = icmp eq i32 %i.je, 0
  br i1 %.not.i515, label %sljit_emit_op2.exit518, label %sljit_set_label.exit, !prof !130

sljit_emit_op2.exit518:                           ; preds = %sljit_emit_op1.exit514
  %i.jf = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  store i32 0, ptr %i.jf, align 8, !tbaa !132
  %i.jg = tail call fastcc i32 @emit_non_cum_binary(ptr noundef nonnull %i.h, i32 noundef 757803304, i32 noundef range(i32 1, 143) %., i64 noundef range(i64 -2147483648, 2147483648) %.482, i32 noundef %., i64 noundef %.482, i32 noundef 127, i64 noundef 1) ; 0 uses
  %.pr1413 = load i32, ptr %i.h, align 8, !tbaa !129
  %.not.i519 = icmp eq i32 %.pr1413, 0
  br i1 %.not.i519, label %bb.bo, label %sljit_set_label.exit, !prof !139

bb.bo:                                            ; preds = %sljit_emit_op2.exit518
  %i.jh = load ptr, ptr %i.aa, align 8, !tbaa !125 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8 ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !134 ; 2 uses
  %i.jk = add i64 %i.jj, 32                       ; 2 uses
  %i.jl = icmp ult i64 %i.jk, 4081
  br i1 %i.jl, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jj
  store i64 %i.jk, ptr %i.ji, align 8, !tbaa !134
  br label %bb.bt

bb.bq:                                            ; preds = %bb.bo
  %i.jo = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !123 ; 2 uses
  %.val.i.i521 = load ptr, ptr %i.jp, align 8, !tbaa !100
  %i.jq = getelementptr i8, ptr %i.jp, i64 16
  %.val18.i.i522 = load ptr, ptr %i.jq, align 8, !tbaa !101
  %i.jr = tail call ptr %.val.i.i521(i64 noundef 4096, ptr noundef %.val18.i.i522) #20, !inline_history !7 ; 5 uses
  %.not.i.i523 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i523, label %bb.bs, label %bb.br, !prof !61

bb.br:                                            ; preds = %bb.bq
  %i.js = load ptr, ptr %i.aa, align 8, !tbaa !125
  store ptr %i.js, ptr %i.jr, align 8, !tbaa !135
  store ptr %i.jr, ptr %i.aa, align 8, !tbaa !125
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store i64 32, ptr %i.jt, align 8, !tbaa !134
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  store i32 2, ptr %i.h, align 8, !tbaa !129
  br label %sljit_set_label.exit

bb.bt:                                            ; preds = %bb.br, %bb.bp
  %.0.i.ph.i524 = phi ptr [ %i.ju, %bb.br ], [ %i.jn, %bb.bp ] ; 7 uses
  store ptr null, ptr %.0.i.ph.i524, align 8, !tbaa !141
  %i.jv = getelementptr inbounds nuw i8, ptr %.0.i.ph.i524, i64 16 ; 3 uses
  store i64 8192, ptr %i.jv, align 8, !tbaa !142
  %i.jw = getelementptr inbounds nuw i8, ptr %.0.i.ph.i524, i64 24 ; 2 uses
  store ptr null, ptr %i.jw, align 8, !tbaa !97
  %i.jx = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !143 ; 2 uses
  %.not.i20.i525 = icmp eq ptr %i.jy, null
  br i1 %.not.i20.i525, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store ptr %.0.i.ph.i524, ptr %i.jy, align 8, !tbaa !141
  br label %set_jump.exit.i526

bb.bv:                                            ; preds = %bb.bt
  %i.jz = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %.0.i.ph.i524, ptr %i.jz, align 8, !tbaa !144
  br label %set_jump.exit.i526

set_jump.exit.i526:                               ; preds = %bb.bv, %bb.bu
  store ptr %.0.i.ph.i524, ptr %i.jx, align 8, !tbaa !143
  %i.ka = getelementptr inbounds nuw i8, ptr %i.h, i64 120 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !136 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.0.i.ph.i524, i64 8
  store i64 %i.kb, ptr %i.kc, align 8, !tbaa !145
  %i.kd = add i64 %i.kb, 15
  store i64 %i.kd, ptr %i.ka, align 8, !tbaa !136
  %i.ke = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 3 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !124 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8 ; 2 uses
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !134 ; 2 uses
  %i.ki = add i64 %i.kh, 1                        ; 2 uses
  %i.kj = icmp ult i64 %i.ki, 4081
  br i1 %i.kj, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %set_jump.exit.i526
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.kh
  store i64 %i.ki, ptr %i.kg, align 8, !tbaa !134
  br label %sljit_emit_jump.exit531

bb.bx:                                            ; preds = %set_jump.exit.i526
  %i.km = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !123 ; 2 uses
  %.val.i21.i527 = load ptr, ptr %i.kn, align 8, !tbaa !100
  %i.ko = getelementptr i8, ptr %i.kn, i64 16
  %.val18.i22.i528 = load ptr, ptr %i.ko, align 8, !tbaa !101
  %i.kp = tail call ptr %.val.i21.i527(i64 noundef 4096, ptr noundef %.val18.i22.i528) #20, !inline_history !8 ; 5 uses
  %.not.i23.i529 = icmp eq ptr %i.kp, null
  br i1 %.not.i23.i529, label %bb.bz, label %bb.by, !prof !61

bb.by:                                            ; preds = %bb.bx
  %i.kq = load ptr, ptr %i.ke, align 8, !tbaa !124
  store ptr %i.kq, ptr %i.kp, align 8, !tbaa !135
  store ptr %i.kp, ptr %i.ke, align 8, !tbaa !124
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store i64 1, ptr %i.kr, align 8, !tbaa !134
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  br label %sljit_emit_jump.exit531

bb.bz:                                            ; preds = %bb.bx
  store i32 2, ptr %i.h, align 8, !tbaa !129
  br label %sljit_set_label.exit

sljit_emit_jump.exit531:                          ; preds = %bb.bw, %bb.by
  %.0.i24.ph.i530 = phi ptr [ %i.ks, %bb.by ], [ %i.kl, %bb.bw ]
  store i8 -2, ptr %.0.i24.ph.i530, align 1, !tbaa !97
  %.not6.i533 = icmp eq ptr %i.jb, null
  br i1 %.not6.i533, label %sljit_set_label.exit, label %bb.ca, !prof !146

bb.ca:                                            ; preds = %sljit_emit_jump.exit531
  %i.kt = load i64, ptr %i.jv, align 8, !tbaa !142
  %i.ku = and i64 %i.kt, -2
  store i64 %i.ku, ptr %i.jv, align 8, !tbaa !142
  store ptr %i.jb, ptr %i.jw, align 8, !tbaa !97
  br label %sljit_set_label.exit

bb.cb:                                            ; preds = %add_jump.exit
  %i.kv = icmp eq i32 %i.dm, 0
  br i1 %i.kv, label %sljit_set_label.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kw = getelementptr inbounds nuw i8, ptr %.0.i.ph1873, i64 24
  %i.kx = tail call fastcc ptr @compile_char1_matchingpath(ptr noundef %0, i8 noundef zeroext %i.dl, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.kw, i32 noundef 1) ; 0 uses
  br label %sljit_set_label.exit

sljit_set_label.exit:                             ; preds = %sljit_emit_op1.exit514, %sljit_emit_op2.exit518, %bb.bz, %bb.bs, %sljit_emit_op1.exit, %sljit_emit_op2.exit502, %bb.bk, %bb.bd, %bb.ca, %sljit_emit_jump.exit531, %bb.bl, %sljit_emit_jump.exit, %bb.cb, %bb.cc
  %i.ky = icmp eq i32 %.04491378, 2
  br i1 %i.ky, label %bb.cd, label %sljit_emit_op1.exit572

bb.cd:                                            ; preds = %sljit_set_label.exit
  %i.kz = sext i32 %.04501377 to i64              ; 2 uses
  %i.la = load i32, ptr %i.h, align 8, !tbaa !129
  %.not.i536 = icmp eq i32 %i.la, 0
  br i1 %.not.i536, label %bb.ce, label %sljit_emit_op1.exit572, !prof !130

bb.ce:                                            ; preds = %bb.cd
  %i.lb = getelementptr inbounds nuw i8, ptr %i.h, i64 144 ; 3 uses
  store i32 0, ptr %i.lb, align 8, !tbaa !132
  %i.lc = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.h, i64 noundef 1, i32 noundef 1, i64 noundef 0, i32 noundef 142, i64 noundef %i.kz) ; 2 uses
  %.not66.i = icmp eq ptr %i.lc, null
  br i1 %.not66.i, label %emit_mov.exit, label %sljit_emit_op1.exit540, !prof !61

emit_mov.exit:                                    ; preds = %bb.ce
  %i.ld = load i32, ptr %i.h, align 8, !tbaa !129
  %.not112.i538 = icmp eq i32 %i.ld, 0
  br i1 %.not112.i538, label %sljit_emit_op1.exit540.thread, label %sljit_emit_op1.exit572, !prof !137

sljit_emit_op1.exit540:                           ; preds = %bb.ce
  store i8 -117, ptr %i.lc, align 1, !tbaa !97
  %.pre = load i32, ptr %i.h, align 8, !tbaa !129
  %i.le = icmp eq i32 %.pre, 0
  br i1 %i.le, label %sljit_emit_op1.exit540.thread, label %sljit_emit_op1.exit572, !prof !139

sljit_emit_op1.exit540.thread:                    ; preds = %emit_mov.exit, %sljit_emit_op1.exit540
  %.in1933 = add nsw i32 %.04501377, 8
  %i.lf = sext i32 %.in1933 to i64                ; 2 uses
  store i32 0, ptr %i.lb, align 8, !tbaa !132
  %i.lg = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.h, i64 noundef 1, i32 noundef 4, i64 noundef 0, i32 noundef 142, i64 noundef %i.lf) ; 2 uses
  %.not66.i1130 = icmp eq ptr %i.lg, null
  br i1 %.not66.i1130, label %emit_mov.exit1132, label %sljit_emit_op1.exit545, !prof !61

emit_mov.exit1132:                                ; preds = %sljit_emit_op1.exit540.thread
  %i.lh = load i32, ptr %i.h, align 8, !tbaa !129
  %.not112.i543 = icmp eq i32 %i.lh, 0
  br i1 %.not112.i543, label %sljit_emit_op1.exit545.thread, label %sljit_emit_op1.exit572, !prof !137

sljit_emit_op1.exit545:                           ; preds = %sljit_emit_op1.exit540.thread
  store i8 -117, ptr %i.lg, align 1, !tbaa !97
  %.pre1644 = load i32, ptr %i.h, align 8, !tbaa !129
  %i.li = icmp eq i32 %.pre1644, 0
  br i1 %i.li, label %sljit_emit_op1.exit545.thread, label %sljit_emit_op1.exit572, !prof !139

sljit_emit_op1.exit545.thread:                    ; preds = %emit_mov.exit1132, %sljit_emit_op1.exit545
  store i32 0, ptr %i.lb, align 8, !tbaa !132
  %i.lj = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 3 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !124 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8 ; 2 uses
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !134 ; 2 uses
  %i.ln = add i64 %i.lm, 4                        ; 2 uses
  %i.lo = icmp ult i64 %i.ln, 4081
  br i1 %i.lo, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %sljit_emit_op1.exit545.thread
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lm
  store i64 %i.ln, ptr %i.ll, align 8, !tbaa !134
  br label %sljit_emit_op2.exit548

bb.cg:                                            ; preds = %sljit_emit_op1.exit545.thread
  %i.lr = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !123 ; 2 uses
  %.val.i.i1310 = load ptr, ptr %i.ls, align 8, !tbaa !100
  %i.lt = getelementptr i8, ptr %i.ls, i64 16
  %.val18.i.i1311 = load ptr, ptr %i.lt, align 8, !tbaa !101
  %i.lu = tail call ptr %.val.i.i1310(i64 noundef 4096, ptr noundef %.val18.i.i1311) #20, !inline_history !4 ; 5 uses
  %.not.i.i1312 = icmp eq ptr %i.lu, null
  br i1 %.not.i.i1312, label %bb.ci, label %bb.ch, !prof !61

bb.ch:                                            ; preds = %bb.cg
  %i.lv = load ptr, ptr %i.lj, align 8, !tbaa !124
  store ptr %i.lv, ptr %i.lu, align 8, !tbaa !135
  store ptr %i.lu, ptr %i.lj, align 8, !tbaa !124
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  store i64 4, ptr %i.lw, align 8, !tbaa !134
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  br label %sljit_emit_op2.exit548

bb.ci:                                            ; preds = %bb.cg
  store i32 2, ptr %i.h, align 8, !tbaa !129
  br label %sljit_emit_op1.exit572

sljit_emit_op2.exit548:                           ; preds = %bb.cf, %bb.ch
  %.0.i269.ph.i1313 = phi ptr [ %i.lx, %bb.ch ], [ %i.lq, %bb.cf ] ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i1313, i64 1
  store i8 3, ptr %.0.i269.ph.i1313, align 1, !tbaa !97
  %i.lz = getelementptr inbounds nuw i8, ptr %i.h, i64 120 ; 2 uses
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !136
  %i.mb = add i64 %i.ma, 3
  store i64 %i.mb, ptr %i.lz, align 8, !tbaa !136
  %i.mc = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i1313, i64 2
  store i8 72, ptr %i.ly, align 1, !tbaa !97
  %i.md = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i1313, i64 3
  store i8 -63, ptr %i.md, align 1, !tbaa !97
  store i8 43, ptr %i.mc, align 1, !tbaa !97
  %.pr1435.pre = load i32, ptr %i.h, align 8, !tbaa !129
  %i.me = icmp eq i32 %.pr1435.pre, 0
  br i1 %i.me, label %bb.cj, label %sljit_emit_op1.exit572, !prof !139

bb.cj:                                            ; preds = %sljit_emit_op2.exit548
  %i.mf = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  store i32 0, ptr %i.mf, align 8, !tbaa !132
  %i.mg = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 3 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !124 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8 ; 2 uses
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !134 ; 2 uses
  %i.mk = add i64 %i.mj, 4                        ; 2 uses
  %i.ml = icmp ult i64 %i.mk, 4081
  br i1 %i.ml, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mj
  store i64 %i.mk, ptr %i.mi, align 8, !tbaa !134
  br label %emit_non_cum_binary.exit1137.thread

bb.cl:                                            ; preds = %bb.cj
  %i.mo = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !123 ; 2 uses
  %.val.i.i1323 = load ptr, ptr %i.mp, align 8, !tbaa !100
  %i.mq = getelementptr i8, ptr %i.mp, i64 16
  %.val18.i.i1324 = load ptr, ptr %i.mq, align 8, !tbaa !101
  %i.mr = tail call ptr %.val.i.i1323(i64 noundef 4096, ptr noundef %.val18.i.i1324) #20, !inline_history !4 ; 5 uses
  %.not.i.i1325 = icmp eq ptr %i.mr, null
  br i1 %.not.i.i1325, label %emit_non_cum_binary.exit1137, label %bb.cm, !prof !61

bb.cm:                                            ; preds = %bb.cl
  %i.ms = load ptr, ptr %i.mg, align 8, !tbaa !124
  store ptr %i.ms, ptr %i.mr, align 8, !tbaa !135
  store ptr %i.mr, ptr %i.mg, align 8, !tbaa !124
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store i64 4, ptr %i.mt, align 8, !tbaa !134
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  br label %emit_non_cum_binary.exit1137.thread

emit_non_cum_binary.exit1137.thread:              ; preds = %bb.ck, %bb.cm
  %.0.i269.ph.i1326 = phi ptr [ %i.mu, %bb.cm ], [ %i.mn, %bb.ck ] ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i1326, i64 1
  store i8 3, ptr %.0.i269.ph.i1326, align 1, !tbaa !97
  %i.mw = getelementptr inbounds nuw i8, ptr %i.h, i64 120 ; 2 uses
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !136
  %i.my = add i64 %i.mx, 3
  store i64 %i.my, ptr %i.mw, align 8, !tbaa !136
  %i.mz = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i1326, i64 2
  store i8 72, ptr %i.mv, align 1, !tbaa !97
  %i.na = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i1326, i64 3
  store i8 -50, ptr %i.na, align 1, !tbaa !97
  store i8 43, ptr %i.mz, align 1, !tbaa !97
  %i.nb = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.h, i64 noundef 1, i32 noundef 0, i64 noundef 0, i32 noundef 4, i64 noundef 0) ; 3 uses
  %.not45.i = icmp eq ptr %i.nb, null
  br i1 %.not45.i, label %sljit_emit_op2.exit551, label %bb.cn, !prof !61

emit_non_cum_binary.exit1137:                     ; preds = %bb.cl
  store i32 2, ptr %i.h, align 8, !tbaa !129
  br label %sljit_emit_op1.exit572

bb.cn:                                            ; preds = %emit_non_cum_binary.exit1137.thread
  store i8 -9, ptr %i.nb, align 1, !tbaa !97
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 1 ; 2 uses
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !97
  %i.ne = or i8 %i.nd, 24
  store i8 %i.ne, ptr %i.nc, align 1, !tbaa !97
  br label %sljit_emit_op2.exit551

sljit_emit_op2.exit551:                           ; preds = %bb.cn, %emit_non_cum_binary.exit1137.thread
  %.pr1888.pr = load i32, ptr %i.h, align 8, !tbaa !129
  %i.nf = getelementptr inbounds nuw i8, ptr %.0.i.ph1873, i64 24 ; 4 uses
  %.not.i552 = icmp eq i32 %.pr1888.pr, 0
  br i1 %.not.i552, label %bb.co, label %sljit_emit_op1.exit572, !prof !139

bb.co:                                            ; preds = %sljit_emit_op2.exit551
  %i.ng = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  store i32 0, ptr %i.ng, align 8, !tbaa !132
  %i.nh = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 6 uses
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !124 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8 ; 2 uses
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !134 ; 2 uses
  %i.nl = add i64 %i.nk, 4                        ; 2 uses
  %i.nm = icmp ult i64 %i.nl, 4081
  br i1 %i.nm, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.nk
  store i64 %i.nl, ptr %i.nj, align 8, !tbaa !134
  br label %bb.cs

bb.cq:                                            ; preds = %bb.co
  %i.np = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !123 ; 2 uses
end_hunk_0
begin_hunk_1_@compile_xclass_matchingpath:bb.a
  br label %sljit_emit_op2u.exit2262

bb.aoq:                                           ; preds = %bb.aoo, %bb.aom
  %.0.i269.ph.i2762 = phi ptr [ %i.eoe, %bb.aoo ], [ %i.eny, %bb.aom ] ; 2 uses
  %i.eof = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i2762, i64 1
  store i8 4, ptr %.0.i269.ph.i2762, align 1, !tbaa !97
  %i.eog = load i64, ptr %i.bvj, align 8, !tbaa !136
  %i.eoh = add i64 %i.eog, 4
  store i64 %i.eoh, ptr %i.bvj, align 8, !tbaa !136
  store <4 x i8> <i8 72, i8 -125, i8 -7, i8 0>, ptr %i.eof, align 1, !tbaa !97
  br label %sljit_emit_op2u.exit2262

sljit_emit_op2u.exit2262:                         ; preds = %sljit_set_label.exit2258, %bb.aop, %bb.aoq
  %i.eoi = xor i32 %.41220, 1
  %i.eoj = call fastcc ptr @sljit_emit_jump(ptr noundef nonnull %i.b, i32 noundef %i.eoi)
  br label %sljit_emit_cmp.exit2027

sljit_emit_cmp.exit2027:                          ; preds = %sljit_emit_op2u.exit, %sljit_emit_op2u.exit4502, %sljit_emit_op2u.exit4502.thread, %sljit_set_label.exit2122, %sljit_emit_op2u.exit.thread, %sljit_set_label.exit2022, %bb.xo, %sljit_emit_op2u.exit2262, %sljit_emit_op_flags.exit2159, %sljit_emit_op_flags.exit1897, %._crit_edge3864, %sljit_emit_op_flags.exit1787, %bb.xp
  %.11251 = phi i64 [ %.012503867, %bb.xo ], [ %.012503867, %bb.xp ], [ 9, %sljit_emit_op_flags.exit1787 ], [ %.012503867, %._crit_edge3864 ], [ 0, %sljit_emit_op_flags.exit1897 ], [ 65296, %sljit_emit_op2u.exit2262 ], [ %.012503867, %sljit_emit_op2u.exit.thread ], [ 0, %sljit_emit_op_flags.exit2159 ], [ %.012503867, %sljit_set_label.exit2022 ], [ %.012503867, %sljit_emit_op2u.exit ], [ %.012503867, %sljit_set_label.exit2122 ], [ %.012503867, %sljit_emit_op2u.exit4502 ], [ %.012503867, %sljit_emit_op2u.exit4502.thread ]
  %.31233 = phi ptr [ null, %bb.xo ], [ null, %bb.xp ], [ %i.cpy, %sljit_emit_op_flags.exit1787 ], [ %i.cub, %._crit_edge3864 ], [ %i.day, %sljit_emit_op_flags.exit1897 ], [ %i.eoj, %sljit_emit_op2u.exit2262 ], [ %i.dmp, %sljit_emit_op2u.exit.thread ], [ %i.dzq, %sljit_emit_op_flags.exit2159 ], [ null, %sljit_set_label.exit2022 ], [ null, %sljit_emit_op2u.exit ], [ null, %sljit_set_label.exit2122 ], [ null, %sljit_emit_op2u.exit4502 ], [ %i.dvk, %sljit_emit_op2u.exit4502.thread ]
  %.24 = phi i32 [ %i.bvo, %bb.xo ], [ %.233873, %bb.xp ], [ %i.bvo, %sljit_emit_op_flags.exit1787 ], [ %i.bvo, %._crit_edge3864 ], [ %i.bvo, %sljit_emit_op_flags.exit1897 ], [ %i.bvo, %sljit_emit_op2u.exit2262 ], [ %i.bvo, %sljit_emit_op2u.exit.thread ], [ %i.bvo, %sljit_emit_op_flags.exit2159 ], [ %i.bvo, %sljit_set_label.exit2022 ], [ %i.bvo, %sljit_emit_op2u.exit ], [ %i.bvo, %sljit_set_label.exit2122 ], [ %i.bvo, %sljit_emit_op2u.exit4502 ], [ %i.bvo, %sljit_emit_op2u.exit4502.thread ]
  %i.eok = getelementptr inbounds nuw i8, ptr %.2412833866, i64 3
  br label %sljit_emit_cmp.exit1717

sljit_emit_cmp.exit1717:                          ; preds = %bb.xm, %bb.vu, %sljit_emit_cmp.exit2027, %sljit_emit_op_flags.exit1733, %sljit_emit_op_flags.exit
  %.28 = phi ptr [ %.251284, %bb.vu ], [ %.251284, %sljit_emit_op_flags.exit ], [ %i.eok, %sljit_emit_cmp.exit2027 ], [ %.27, %bb.xm ], [ %.27, %sljit_emit_op_flags.exit1733 ] ; 4 uses
  %.21252 = phi i64 [ %.012503867, %bb.vu ], [ %.012503867, %sljit_emit_op_flags.exit ], [ %.11251, %sljit_emit_cmp.exit2027 ], [ %.41257, %bb.xm ], [ %.41257, %sljit_emit_op_flags.exit1733 ] ; 4 uses
  %.41234 = phi ptr [ %i.cba, %bb.vu ], [ %i.caw, %sljit_emit_op_flags.exit ], [ %.31233, %sljit_emit_cmp.exit2027 ], [ %i.cjy, %bb.xm ], [ %i.cjt, %sljit_emit_op_flags.exit1733 ] ; 2 uses
  %.25 = phi i32 [ %i.bvo, %bb.vu ], [ %i.bvo, %sljit_emit_op_flags.exit ], [ %.24, %sljit_emit_cmp.exit2027 ], [ %i.bvo, %bb.xm ], [ %i.bvo, %sljit_emit_op_flags.exit1733 ] ; 5 uses
  %.11215 = phi i32 [ 0, %bb.vu ], [ 0, %sljit_emit_op_flags.exit ], [ %.012143874, %sljit_emit_cmp.exit2027 ], [ 0, %bb.xm ], [ 0, %sljit_emit_op_flags.exit1733 ] ; 4 uses
  %.not1361 = icmp eq ptr %.41234, null
  br i1 %.not1361, label %add_jump.exit2269, label %bb.aor

bb.aor:                                           ; preds = %sljit_emit_cmp.exit1717
  %i.eol = icmp sgt i32 %.25, 0
  %i.eom = select i1 %i.eol, ptr %i.f, ptr %2     ; 2 uses
  %i.eon = load i32, ptr %i.b, align 8, !tbaa !129
  %.not.i.i2263 = icmp eq i32 %i.eon, 0
  br i1 %.not.i.i2263, label %bb.aos, label %add_jump.exit2269, !prof !130

bb.aos:                                           ; preds = %bb.aor
  %i.eoo = load ptr, ptr %i.bvk, align 8, !tbaa !125 ; 2 uses
  %i.eop = getelementptr inbounds nuw i8, ptr %i.eoo, i64 8 ; 2 uses
  %i.eoq = load i64, ptr %i.eop, align 8, !tbaa !134 ; 2 uses
  %i.eor = add i64 %i.eoq, 16                     ; 2 uses
  %i.eos = icmp ult i64 %i.eor, 4081
  br i1 %i.eos, label %bb.aot, label %bb.aou

bb.aot:                                           ; preds = %bb.aos
  %i.eot = getelementptr inbounds nuw i8, ptr %i.eoo, i64 16
  %i.eou = getelementptr inbounds nuw i8, ptr %i.eot, i64 %i.eoq
  store i64 %i.eor, ptr %i.eop, align 8, !tbaa !134
  br label %sljit_alloc_memory.exit.i2267

bb.aou:                                           ; preds = %bb.aos
  %i.eov = load ptr, ptr %i.bvi, align 8, !tbaa !123 ; 2 uses
  %.val.i.i.i2264 = load ptr, ptr %i.eov, align 8, !tbaa !100
  %i.eow = getelementptr i8, ptr %i.eov, i64 16
  %.val18.i.i.i2265 = load ptr, ptr %i.eow, align 8, !tbaa !101
  %i.eox = call ptr %.val.i.i.i2264(i64 noundef 4096, ptr noundef %.val18.i.i.i2265) #20, !inline_history !17 ; 5 uses
  %.not.i.i.i2266 = icmp eq ptr %i.eox, null
  br i1 %.not.i.i.i2266, label %bb.aov, label %bb.aow, !prof !61

bb.aov:                                           ; preds = %bb.aou
  store i32 2, ptr %i.b, align 8, !tbaa !129
  br label %add_jump.exit2269

bb.aow:                                           ; preds = %bb.aou
  %i.eoy = load ptr, ptr %i.bvk, align 8, !tbaa !125
  store ptr %i.eoy, ptr %i.eox, align 8, !tbaa !135
  store ptr %i.eox, ptr %i.bvk, align 8, !tbaa !125
  %i.eoz = getelementptr inbounds nuw i8, ptr %i.eox, i64 8
  store i64 16, ptr %i.eoz, align 8, !tbaa !134
  %i.epa = getelementptr inbounds nuw i8, ptr %i.eox, i64 16
  br label %sljit_alloc_memory.exit.i2267

sljit_alloc_memory.exit.i2267:                    ; preds = %bb.aow, %bb.aot
  %.0.i.i2268 = phi ptr [ %i.epa, %bb.aow ], [ %i.eou, %bb.aot ] ; 3 uses
  %i.epb = load ptr, ptr %i.eom, align 8, !tbaa !151
  %i.epc = getelementptr inbounds nuw i8, ptr %.0.i.i2268, i64 8
  store ptr %i.epb, ptr %i.epc, align 8, !tbaa !157
  store ptr %.41234, ptr %.0.i.i2268, align 8, !tbaa !156
  store ptr %.0.i.i2268, ptr %i.eom, align 8, !tbaa !151
  br label %add_jump.exit2269

add_jump.exit2269:                                ; preds = %bb.xl, %bb.xk, %bb.vs, %bb.vt, %bb.ww, %bb.ve, %sljit_alloc_memory.exit.i2267, %bb.aov, %bb.aor, %sljit_emit_cmp.exit1717
  %.112153744 = phi i32 [ %.11215, %sljit_alloc_memory.exit.i2267 ], [ %.11215, %sljit_emit_cmp.exit1717 ], [ %.11215, %bb.aor ], [ %.11215, %bb.aov ], [ 0, %bb.xl ], [ 0, %bb.xk ], [ 0, %bb.vt ], [ 0, %bb.vs ], [ %i.cie, %bb.ww ], [ %i.bzh, %bb.ve ]
  %.253743 = phi i32 [ %.25, %sljit_alloc_memory.exit.i2267 ], [ %.25, %sljit_emit_cmp.exit1717 ], [ %.25, %bb.aor ], [ %.25, %bb.aov ], [ %i.bvo, %bb.xl ], [ %i.bvo, %bb.xk ], [ %i.bvo, %bb.vt ], [ %i.bvo, %bb.vs ], [ %i.bvo, %bb.ww ], [ %i.bvo, %bb.ve ]
  %.212523742 = phi i64 [ %.21252, %sljit_alloc_memory.exit.i2267 ], [ %.21252, %sljit_emit_cmp.exit1717 ], [ %.21252, %bb.aor ], [ %.21252, %bb.aov ], [ %.41257, %bb.xl ], [ %.41257, %bb.xk ], [ %.012503867, %bb.vt ], [ %.012503867, %bb.vs ], [ %.41257, %bb.ww ], [ %.012503867, %bb.ve ]
  %.283741 = phi ptr [ %.28, %sljit_alloc_memory.exit.i2267 ], [ %.28, %sljit_emit_cmp.exit1717 ], [ %.28, %bb.aor ], [ %.28, %bb.aov ], [ %.27, %bb.xl ], [ %.27, %bb.xk ], [ %.251284, %bb.vt ], [ %.251284, %bb.vs ], [ %.27, %bb.ww ], [ %.251284, %bb.ve ] ; 2 uses
  %i.epd = load i8, ptr %.283741, align 1, !tbaa !97 ; 2 uses
  %.not1349 = icmp eq i8 %i.epd, 0
  br i1 %.not1349, label %._crit_edge3876, label %bb.ur, !llvm.loop !635

._crit_edge3876:                                  ; preds = %add_jump.exit2269, %add_jump.exit1709
  %i.epe = load ptr, ptr %i.a, align 8, !tbaa !151 ; 2 uses
  %.not1350 = icmp eq ptr %i.epe, null
  br i1 %.not1350, label %add_jump.exit, label %bb.aox

bb.aox:                                           ; preds = %._crit_edge3876
  %i.epf = call fastcc ptr @sljit_emit_label(ptr noundef %i.b) ; 2 uses
  %.not6.i.i = icmp eq ptr %i.epf, null
  br i1 %.not6.i.i, label %add_jump.exit, label %.lr.ph.split.i, !prof !154

.lr.ph.split.i:                                   ; preds = %bb.aox, %sljit_set_label.exit.i
  %.05.i = phi ptr [ %i.epm, %sljit_set_label.exit.i ], [ %i.epe, %bb.aox ] ; 2 uses
  %i.epg = load ptr, ptr %.05.i, align 8, !tbaa !156 ; 3 uses
  %.not.i.i2271 = icmp eq ptr %i.epg, null
  br i1 %.not.i.i2271, label %sljit_set_label.exit.i, label %bb.aoy, !prof !153

bb.aoy:                                           ; preds = %.lr.ph.split.i
  %i.eph = getelementptr inbounds nuw i8, ptr %i.epg, i64 16 ; 2 uses
  %i.epi = load i64, ptr %i.eph, align 8, !tbaa !142
  %i.epj = and i64 %i.epi, -2
  store i64 %i.epj, ptr %i.eph, align 8, !tbaa !142
  %i.epk = getelementptr inbounds nuw i8, ptr %i.epg, i64 24
  store ptr %i.epf, ptr %i.epk, align 8, !tbaa !97
  br label %sljit_set_label.exit.i

sljit_set_label.exit.i:                           ; preds = %bb.aoy, %.lr.ph.split.i
  %i.epl = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.epm = load ptr, ptr %i.epl, align 8, !tbaa !157 ; 2 uses
  %.not.i2272 = icmp eq ptr %i.epm, null
  br i1 %.not.i2272, label %add_jump.exit, label %.lr.ph.split.i, !llvm.loop !5

add_jump.exit:                                    ; preds = %sljit_set_label.exit.i, %bb.ck, %bb.cd, %bb.by, %bb.bo, %bb.bh, %bb.bc, %bb.aox, %sljit_alloc_memory.exit.i1405, %bb.co, %sljit_emit_jump.exit1400, %sljit_alloc_memory.exit.i, %bb.bs, %sljit_emit_jump.exit, %._crit_edge3876, %compile_char1_matchingpath.exit1387, %compile_char1_matchingpath.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal ptr @do_extuni_utf_invalid(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address, ret: address, provenance) %1) #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !201  ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.ac, %bb.a
  %.0139 = phi ptr [ %1, %bb.a ], [ %.1140, %bb.ac ] ; 7 uses
  %.0136 = phi i32 [ undef, %bb.a ], [ %.2138, %bb.ac ] ; 5 uses
  %.0133 = phi ptr [ %1, %bb.a ], [ %.1134, %bb.ac ] ; 3 uses
  %.0131 = phi ptr [ null, %bb.a ], [ %.1140, %bb.ac ] ; 12 uses
  %.not = phi i1 [ false, %bb.a ], [ true, %bb.ac ]
  %.0125 = phi i32 [ 0, %bb.a ], [ %.1126, %bb.ac ] ; 2 uses
  %i.e = load i8, ptr %.0139, align 1, !tbaa !97  ; 5 uses
  %i.f = zext i8 %i.e to i32                      ; 4 uses
  %i.g = icmp sgt i8 %i.e, -1
  %i.h = getelementptr inbounds nuw i8, ptr %.0139, i64 1 ; 3 uses
  br i1 %i.g, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult ptr %i.h, %i.d
  br i1 %i.i, label %bb.d, label %bb.ad

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.h, align 1, !tbaa !97    ; 2 uses
  %or.cond171 = icmp slt i8 %i.j, -64
  br i1 %or.cond171, label %bb.e, label %bb.ad

bb.e:                                             ; preds = %bb.d
  %i.k = zext i8 %i.j to i32
  %i.l = add nsw i32 %i.k, -128                   ; 2 uses
  %i.m = add nsw i8 %i.e, 62
  %or.cond172 = icmp ult i8 %i.m, 30
  br i1 %or.cond172, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = shl nuw nsw i32 %i.f, 6
  %i.o = add nsw i32 %i.n, -12288
  %i.p = or disjoint i32 %i.l, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.0139, i64 2
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.0139, i64 2 ; 2 uses
  %i.s = icmp ult ptr %i.r, %i.d
  br i1 %i.s, label %bb.h, label %bb.ad

bb.h:                                             ; preds = %bb.g
  %i.t = load i8, ptr %i.r, align 1, !tbaa !97    ; 2 uses
  %or.cond173 = icmp slt i8 %i.t, -64
  br i1 %or.cond173, label %bb.i, label %bb.ad

bb.i:                                             ; preds = %bb.h
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.l, 6
  %i.w = add nsw i32 %i.u, -128
  %i.x = or disjoint i32 %i.w, %i.v               ; 2 uses
  %i.y = and i8 %i.e, -16
  %or.cond174 = icmp eq i8 %i.y, -32
  br i1 %or.cond174, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = shl nuw nsw i32 %i.f, 12
  %i.aa = add nsw i32 %i.z, -917504
  %i.ab = or disjoint i32 %i.x, %i.aa             ; 3 uses
  %i.ac = icmp samesign ult i32 %i.ab, 2048
  %i.ad = getelementptr inbounds nuw i8, ptr %.0139, i64 3
  %i.ae = and i32 %i.ab, 63488
  %or.cond = icmp eq i32 %i.ae, 55296
  %or.cond176 = or i1 %i.ac, %or.cond
  br i1 %or.cond176, label %bb.ad, label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0139, i64 3 ; 2 uses
  %i.ag = icmp ult ptr %i.af, %i.d
  br i1 %i.ag, label %bb.l, label %bb.ad

bb.l:                                             ; preds = %bb.k
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !97  ; 2 uses
  %or.cond177 = icmp slt i8 %i.ah, -64
  %i.ai = add nsw i8 %i.e, 16
  %or.cond178 = icmp ult i8 %i.ai, 5
  %or.cond186 = select i1 %or.cond177, i1 %or.cond178, i1 false
  br i1 %or.cond186, label %bb.m, label %bb.ad

bb.m:                                             ; preds = %bb.l
  %i.aj = shl nuw nsw i32 %i.x, 6
  %i.ak = zext i8 %i.ah to i32
  %i.al = add nsw i32 %i.ak, -128
  %i.am = or disjoint i32 %i.al, %i.aj
  %i.an = shl nuw nsw i32 %i.f, 18
  %i.ao = add nsw i32 %i.an, -62914560
  %i.ap = or i32 %i.am, %i.ao                     ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0139, i64 4
  %i.ar = add nsw i32 %i.ap, -1114112
  %or.cond3 = icmp ult i32 %i.ar, -1048576
  br i1 %or.cond3, label %bb.ad, label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.j, %bb.m, %bb.f
  %.1140 = phi ptr [ %i.aq, %bb.m ], [ %i.q, %bb.f ], [ %i.ad, %bb.j ], [ %i.h, %bb.b ] ; 4 uses
  %.0 = phi i32 [ %i.ap, %bb.m ], [ %i.p, %bb.f ], [ %i.ab, %bb.j ], [ %i.f, %bb.b ] ; 2 uses
  %i.as = lshr i32 %.0, 7
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr @_pcre2_ucd_stage1_8, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !158
  %i.aw = zext i16 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 7
  %i.ay = and i32 %.0, 127
  %i.az = or disjoint i32 %i.ax, %i.ay
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr @_pcre2_ucd_stage2_8, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !158
  %i.bd = zext i16 %i.bc to i64
  %i.be = getelementptr inbounds nuw [12 x i8], ptr @_pcre2_ucd_records_8, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !267 ; 5 uses
  %i.bh = zext i8 %i.bg to i32                    ; 3 uses
  br i1 %.not, label %bb.o, label %bb.ac

bb.o:                                             ; preds = %bb.n
  %i.bi = sext i32 %.0136 to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr @_pcre2_ucp_gbtable_8, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !46
  %i.bl = shl nuw i32 1, %i.bh
  %i.bm = and i32 %i.bk, %i.bl
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.ad, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = icmp ne i32 %.0136, 13
  %i.bp = icmp ne i8 %i.bg, 14
  %or.cond5.not168 = select i1 %i.bo, i1 true, i1 %i.bp
  %i.bq = icmp ne i32 %.0125, 0
  %or.cond7 = select i1 %or.cond5.not168, i1 true, i1 %i.bq
  br i1 %or.cond7, label %bb.q, label %bb.ad

bb.q:                                             ; preds = %bb.p
  %i.br = icmp eq i32 %.0136, 11
  %i.bs = icmp eq i8 %i.bg, 11
  %or.cond9 = select i1 %i.br, i1 %i.bs, i1 false
  %i.bt = icmp ugt ptr %.0133, %i.b
  %or.cond218 = select i1 %or.cond9, i1 %i.bt, i1 false
  br i1 %or.cond218, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.q, %bb.ab
  %.0129190 = phi ptr [ %.1130, %bb.ab ], [ %.0133, %bb.q ] ; 4 uses
  %.0135189 = phi i32 [ %i.dw, %bb.ab ], [ 0, %bb.q ] ; 8 uses
  %i.bu = getelementptr inbounds i8, ptr %.0129190, i64 -1 ; 3 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !97  ; 3 uses
  %i.bw = zext i8 %i.bv to i32                    ; 2 uses
  %i.bx = icmp sgt i8 %i.bv, -1
  br i1 %i.bx, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %i.by = icmp ugt ptr %i.bu, %i.b
  %i.bz = icmp samesign ult i8 %i.bv, -64
  %or.cond179 = and i1 %i.by, %i.bz
  br i1 %or.cond179, label %bb.s, label %._crit_edge

bb.s:                                             ; preds = %bb.r
  %i.ca = add nsw i32 %i.bw, -128                 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %.0129190, i64 -2 ; 3 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !97  ; 3 uses
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  %i.ce = add i8 %i.cc, 62
  %or.cond180 = icmp ult i8 %i.ce, 30
  br i1 %or.cond180, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cf = shl nuw nsw i32 %i.cd, 6
  %i.cg = add nsw i32 %i.cf, -12288
  %i.ch = or i32 %i.cg, %i.ca
  br label %bb.aa

bb.u:                                             ; preds = %bb.s
  %i.ci = icmp ugt ptr %i.cb, %i.b
  %or.cond181 = icmp slt i8 %i.cc, -64
  %or.cond187 = and i1 %i.ci, %or.cond181
  br i1 %or.cond187, label %bb.v, label %._crit_edge

bb.v:                                             ; preds = %bb.u
  %i.cj = shl nuw nsw i32 %i.ca, 6
  %i.ck = add nsw i32 %i.cd, -128
  %i.cl = or disjoint i32 %i.ck, %i.cj            ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %.0129190, i64 -3 ; 3 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !97  ; 3 uses
  %i.co = zext i8 %i.cn to i32                    ; 2 uses
  %i.cp = and i8 %i.cn, -16
  %or.cond182 = icmp eq i8 %i.cp, -32
  br i1 %or.cond182, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cq = shl nuw nsw i32 %i.co, 12
  %i.cr = add nsw i32 %i.cq, -917504
  %i.cs = or i32 %i.cr, %i.cl                     ; 3 uses
  %i.ct = icmp samesign ult i32 %i.cs, 2048
  %i.cu = and i32 %i.cs, 63488
  %or.cond11 = icmp eq i32 %i.cu, 55296
  %or.cond183 = or i1 %i.ct, %or.cond11
  br i1 %or.cond183, label %._crit_edge, label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.cv = icmp ugt ptr %i.cm, %i.b
  %or.cond184 = icmp slt i8 %i.cn, -64
  %or.cond188 = and i1 %i.cv, %or.cond184
  br i1 %or.cond188, label %bb.y, label %._crit_edge

bb.y:                                             ; preds = %bb.x
  %i.cw = getelementptr inbounds i8, ptr %.0129190, i64 -4 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !97  ; 2 uses
  %i.cy = add i8 %i.cx, 16
  %or.cond185 = icmp ult i8 %i.cy, 5
  br i1 %or.cond185, label %bb.z, label %._crit_edge

bb.z:                                             ; preds = %bb.y
  %i.cz = zext i8 %i.cx to i32
  %i.da = shl nuw nsw i32 %i.cl, 6
  %i.db = add nsw i32 %i.co, -128
  %i.dc = or disjoint i32 %i.db, %i.da
  %i.dd = shl nuw nsw i32 %i.cz, 18
  %i.de = add nsw i32 %i.dd, -62914560
  %i.df = or i32 %i.de, %i.dc                     ; 2 uses
  %i.dg = add nsw i32 %i.df, -1114112
  %or.cond13 = icmp ult i32 %i.dg, -1048576
  br i1 %or.cond13, label %._crit_edge, label %bb.aa

bb.aa:                                            ; preds = %bb.w, %.lr.ph, %bb.z, %bb.t
  %.1130 = phi ptr [ %i.cw, %bb.z ], [ %i.cb, %bb.t ], [ %i.cm, %bb.w ], [ %i.bu, %.lr.ph ] ; 2 uses
  %.1 = phi i32 [ %i.df, %bb.z ], [ %i.ch, %bb.t ], [ %i.cs, %bb.w ], [ %i.bw, %.lr.ph ] ; 2 uses
  %i.dh = lshr i32 %.1, 7
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr @_pcre2_ucd_stage1_8, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !158
  %i.dl = zext i16 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 7
  %i.dn = and i32 %.1, 127
  %i.do = or disjoint i32 %i.dm, %i.dn
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr @_pcre2_ucd_stage2_8, i64 %i.dp
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !158
  %i.ds = zext i16 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr @_pcre2_ucd_records_8, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  %i.dv = load i8, ptr %i.du, align 2, !tbaa !267
  %.not169 = icmp eq i8 %i.dv, 11
  br i1 %.not169, label %bb.ab, label %._crit_edge

bb.ab:                                            ; preds = %bb.aa
  %i.dw = add nuw nsw i32 %.0135189, 1            ; 2 uses
  %i.dx = icmp ugt ptr %.1130, %i.b
  br i1 %i.dx, label %.lr.ph, label %._crit_edge, !llvm.loop !639

._crit_edge:                                      ; preds = %bb.ab, %bb.w, %bb.z, %bb.y, %bb.x, %bb.u, %bb.r, %bb.aa
  %.0135.lcssa.ph = phi i32 [ %i.dw, %bb.ab ], [ %.0135189, %bb.w ], [ %.0135189, %bb.z ], [ %.0135189, %bb.y ], [ %.0135189, %bb.x ], [ %.0135189, %bb.u ], [ %.0135189, %bb.r ], [ %.0135189, %bb.aa ]
  %i.dy = and i32 %.0135.lcssa.ph, 1
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %._crit_edge.thread, label %bb.ad

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.q
  %i.ea = icmp eq i32 %.0136, 14
  %i.eb = icmp eq i8 %i.bg, 13
  %i.ec = select i1 %i.ea, i1 %i.eb, i1 false
  %i.ed = zext i1 %i.ec to i32
  %i.ee = icmp ne i8 %i.bg, 3
  %i.ef = icmp ne i32 %.0136, 14
  %or.cond15 = select i1 %i.ee, i1 true, i1 %i.ef
  %spec.select = select i1 %or.cond15, i32 %i.bh, i32 14
  br label %bb.ac

bb.ac:                                            ; preds = %bb.n, %._crit_edge.thread
  %.2138 = phi i32 [ %spec.select, %._crit_edge.thread ], [ %i.bh, %bb.n ]
  %.1134 = phi ptr [ %.0131, %._crit_edge.thread ], [ %.0133, %bb.n ]
  %.1126 = phi i32 [ %i.ed, %._crit_edge.thread ], [ %.0125, %bb.n ]
  %i.eg = icmp ult ptr %.1140, %i.d
  br i1 %i.eg, label %bb.b, label %bb.ad, !llvm.loop !640

bb.ad:                                            ; preds = %._crit_edge, %bb.p, %bb.o, %bb.c, %bb.d, %bb.g, %bb.h, %bb.k, %bb.l, %bb.m, %bb.j, %bb.ac
  %.2 = phi ptr [ %.1140, %bb.ac ], [ %.0131, %bb.o ], [ %.0131, %._crit_edge ], [ %.0131, %bb.p ], [ %.0131, %bb.j ], [ %.0131, %bb.c ], [ %.0131, %bb.m ], [ %.0131, %bb.h ], [ %.0131, %bb.d ], [ %.0131, %bb.g ], [ %.0131, %bb.l ], [ %.0131, %bb.k ]
  ret ptr %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal ptr @do_extuni_utf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address, ret: address, provenance) %1) #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !201
  br label %bb.b

bb.b:                                             ; preds = %bb.ac, %bb.a
  %.0111 = phi ptr [ %1, %bb.a ], [ %.1112, %bb.ac ] ; 14 uses
  %.0108 = phi i32 [ undef, %bb.a ], [ %.2110, %bb.ac ] ; 5 uses
  %.0105 = phi ptr [ %1, %bb.a ], [ %.1106, %bb.ac ] ; 3 uses
  %.0103 = phi ptr [ null, %bb.a ], [ %.1112, %bb.ac ] ; 4 uses
  %.not = phi i1 [ false, %bb.a ], [ true, %bb.ac ]
  %.097 = phi i32 [ 0, %bb.a ], [ %.198, %bb.ac ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0111, i64 1 ; 3 uses
  %i.f = load i8, ptr %.0111, align 1, !tbaa !97  ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 10 uses
  %i.h = icmp ugt i8 %i.f, -65
  br i1 %i.h, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.i = and i32 %i.g, 32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw nsw i32 %i.g, 6
  %i.l = and i32 %i.k, 1984
  %i.m = getelementptr inbounds nuw i8, ptr %.0111, i64 2
  %i.n = load i8, ptr %i.e, align 1, !tbaa !97
  %i.o = and i8 %i.n, 63
  %i.p = zext nneg i8 %i.o to i32
  %i.q = or disjoint i32 %i.l, %i.p
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.r = and i32 %i.g, 16
  %i.s = icmp eq i32 %i.r, 0
  %i.t = load i8, ptr %i.e, align 1, !tbaa !97
  %i.u = and i8 %i.t, 63
  %i.v = zext nneg i8 %i.u to i32                 ; 4 uses
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = shl nuw nsw i32 %i.g, 12
  %i.x = and i32 %i.w, 61440
  %i.y = shl nuw nsw i32 %i.v, 6
  %i.z = or disjoint i32 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %.0111, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !97
  %i.ac = and i8 %i.ab, 63
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.z, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.0111, i64 3
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.ag = and i32 %i.g, 8
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = shl nuw nsw i32 %i.g, 18
  %i.aj = and i32 %i.ai, 1835008
  %i.ak = shl nuw nsw i32 %i.v, 12
  %i.al = or disjoint i32 %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %.0111, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !97
  %i.ao = and i8 %i.an, 63
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 6
  %i.ar = or disjoint i32 %i.al, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.0111, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !97
  %i.au = and i8 %i.at, 63
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = or disjoint i32 %i.ar, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.0111, i64 4
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ay = and i32 %i.g, 4
  %i.az = icmp eq i32 %i.ay, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %.0111, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !97
  %i.bc = and i8 %i.bb, 63
  %i.bd = zext nneg i8 %i.bc to i32               ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0111, i64 3
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !97
  %i.bg = and i8 %i.bf, 63
  %i.bh = zext nneg i8 %i.bg to i32               ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0111, i64 4
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !97
  %i.bk = and i8 %i.bj, 63
  %i.bl = zext nneg i8 %i.bk to i32               ; 2 uses
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bm = shl nuw i32 %i.g, 24
  %i.bn = and i32 %i.bm, 50331648
  %i.bo = shl nuw nsw i32 %i.v, 18
  %i.bp = or disjoint i32 %i.bo, %i.bn
  %i.bq = shl nuw nsw i32 %i.bd, 12
  %i.br = or disjoint i32 %i.bp, %i.bq
  %i.bs = shl nuw nsw i32 %i.bh, 6
  %i.bt = or disjoint i32 %i.br, %i.bs
  %i.bu = or disjoint i32 %i.bt, %i.bl
  %i.bv = getelementptr inbounds nuw i8, ptr %.0111, i64 5
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bw = shl i32 %i.g, 30
  %i.bx = and i32 %i.bw, 1073741824
  %i.by = shl nuw nsw i32 %i.v, 24
end_hunk_1
begin_hunk_2_@compile_bracket_backtrackingpath:bb.a
  store i8 -117, ptr %i.axy, align 1, !tbaa !97
  %.pre2299 = load i32, ptr %i.a, align 8, !tbaa !129
  %i.aya = icmp eq i32 %.pre2299, 0
  br i1 %i.aya, label %sljit_emit_op1.exit944.thread, label %sljit_emit_op1.exit954, !prof !139

sljit_emit_op1.exit944.thread:                    ; preds = %emit_mov.exit1376, %sljit_emit_op1.exit944
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i32 0, ptr %i.ayb, align 8, !tbaa !132
  %i.ayc = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.a, i64 noundef 1, i32 noundef 1, i64 noundef 0, i32 noundef 142, i64 noundef range(i64 -2147483648, 2147483664) %i.axw) ; 2 uses
  %.not73.i1377 = icmp eq ptr %i.ayc, null
  br i1 %.not73.i1377, label %emit_mov.exit1379, label %sljit_emit_op1.exit949, !prof !61

emit_mov.exit1379:                                ; preds = %sljit_emit_op1.exit944.thread
  %i.ayd = load i32, ptr %i.a, align 8, !tbaa !129
  %.not112.i947 = icmp eq i32 %i.ayd, 0
  br i1 %.not112.i947, label %sljit_emit_op1.exit949.thread, label %sljit_emit_op1.exit954, !prof !137

sljit_emit_op1.exit949:                           ; preds = %sljit_emit_op1.exit944.thread
  store i8 -119, ptr %i.ayc, align 1, !tbaa !97
  %.pre2300 = load i32, ptr %i.a, align 8, !tbaa !129
  %i.aye = icmp eq i32 %.pre2300, 0
  br i1 %i.aye, label %sljit_emit_op1.exit949.thread, label %sljit_emit_op1.exit954, !prof !139

sljit_emit_op1.exit949.thread:                    ; preds = %emit_mov.exit1379, %sljit_emit_op1.exit949
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i32 0, ptr %i.ayf, align 8, !tbaa !132
  %i.ayg = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.a, i64 noundef 1, i32 noundef 4, i64 noundef 0, i32 noundef 142, i64 noundef range(i64 -2147483648, 2147483664) %i.axx) ; 2 uses
  %.not73.i1380 = icmp eq ptr %i.ayg, null
  br i1 %.not73.i1380, label %sljit_emit_op1.exit954, label %emit_mov.exit1382.thread, !prof !61

emit_mov.exit1382.thread:                         ; preds = %sljit_emit_op1.exit949.thread
  store i8 -119, ptr %i.ayg, align 1, !tbaa !97
  br label %sljit_emit_op1.exit954

sljit_emit_op1.exit954:                           ; preds = %emit_mov.exit1370, %emit_mov.exit1373, %sljit_emit_op1.exit934, %bb.og, %sljit_emit_op1.exit939, %emit_mov.exit1376, %sljit_emit_op1.exit944, %emit_mov.exit1379, %sljit_emit_op1.exit949.thread, %emit_mov.exit1382.thread, %sljit_emit_op1.exit949
  %.val551.a = load ptr, ptr %0, align 8, !tbaa !128 ; 6 uses
  %i.ayh = load i32, ptr %.val551.a, align 8, !tbaa !129
  %.not.i.i955 = icmp eq i32 %i.ayh, 0
  br i1 %.not.i.i955, label %bb.oi, label %sljit_emit_op1.exit917, !prof !130

bb.oi:                                            ; preds = %sljit_emit_op1.exit954
  %i.ayi = getelementptr inbounds nuw i8, ptr %.val551.a, i64 144
  store i32 0, ptr %i.ayi, align 8, !tbaa !132
  %i.ayj = getelementptr inbounds nuw i8, ptr %.val551.a, i64 72 ; 3 uses
  %i.ayk = load ptr, ptr %i.ayj, align 8, !tbaa !124 ; 2 uses
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayk, i64 8 ; 2 uses
  %i.aym = load i64, ptr %i.ayl, align 8, !tbaa !134 ; 2 uses
  %i.ayn = add i64 %i.aym, 5                      ; 2 uses
  %i.ayo = icmp ult i64 %i.ayn, 4081
  br i1 %i.ayo, label %bb.oj, label %bb.ok

bb.oj:                                            ; preds = %bb.oi
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayk, i64 16
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayp, i64 %i.aym
  store i64 %i.ayn, ptr %i.ayl, align 8, !tbaa !134
  br label %bb.on

bb.ok:                                            ; preds = %bb.oi
  %i.ayr = getelementptr inbounds nuw i8, ptr %.val551.a, i64 56
  %i.ays = load ptr, ptr %i.ayr, align 8, !tbaa !123 ; 2 uses
  %.val.i.i1761 = load ptr, ptr %i.ays, align 8, !tbaa !100
  %i.ayt = getelementptr i8, ptr %i.ays, i64 16
  %.val18.i.i1762 = load ptr, ptr %i.ayt, align 8, !tbaa !101
  %i.ayu = tail call ptr %.val.i.i1761(i64 noundef 4096, ptr noundef %.val18.i.i1762) #20, !inline_history !4 ; 5 uses
  %.not.i.i1763 = icmp eq ptr %i.ayu, null
  br i1 %.not.i.i1763, label %bb.om, label %bb.ol, !prof !61

bb.ol:                                            ; preds = %bb.ok
  %i.ayv = load ptr, ptr %i.ayj, align 8, !tbaa !124
  store ptr %i.ayv, ptr %i.ayu, align 8, !tbaa !135
  store ptr %i.ayu, ptr %i.ayj, align 8, !tbaa !124
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayu, i64 8
  store i64 5, ptr %i.ayw, align 8, !tbaa !134
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayu, i64 16
  br label %bb.on

bb.om:                                            ; preds = %bb.ok
  store i32 2, ptr %.val551.a, align 8, !tbaa !129
  br label %sljit_emit_op1.exit917

bb.on:                                            ; preds = %bb.ol, %bb.oj
  %.0.i269.ph.i1764 = phi ptr [ %i.ayx, %bb.ol ], [ %i.ayq, %bb.oj ] ; 2 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i1764, i64 1
  store i8 4, ptr %.0.i269.ph.i1764, align 1, !tbaa !97
  %i.ayz = getelementptr inbounds nuw i8, ptr %.val551.a, i64 120 ; 2 uses
  %i.aza = load i64, ptr %i.ayz, align 8, !tbaa !136
  %i.azb = add i64 %i.aza, 4
  store i64 %i.azb, ptr %i.ayz, align 8, !tbaa !136
  store <4 x i8> <i8 73, i8 -125, i8 -57, i8 32>, ptr %i.ayy, align 1, !tbaa !97
  br label %sljit_emit_op1.exit917

bb.oo:                                            ; preds = %bb.of, %bb.oe, %bb.oe, %bb.oe, %bb.oe
  %i.azc = sext i32 %i.c to i64
  %i.azd = load i32, ptr %i.a, align 8, !tbaa !129
  %.not.i957 = icmp eq i32 %i.azd, 0
  br i1 %.not.i957, label %bb.op, label %sljit_emit_op1.exit961, !prof !130

bb.op:                                            ; preds = %bb.oo
  %i.aze = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i32 0, ptr %i.aze, align 8, !tbaa !132
  %i.azf = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.a, i64 noundef 1, i32 noundef 15, i64 noundef 0, i32 noundef 140, i64 noundef 0) ; 2 uses
  %.not.i1386 = icmp eq ptr %i.azf, null
  br i1 %.not.i1386, label %sljit_emit_op1.exit961, label %bb.oq, !prof !61

bb.oq:                                            ; preds = %bb.op
  store i8 -117, ptr %i.azf, align 1, !tbaa !97
  %i.azg = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.a, i64 noundef 1, i32 noundef 15, i64 noundef 0, i32 noundef 142, i64 noundef range(i64 -2147483648, 2147483664) %i.azc) ; 2 uses
  %.not65.i = icmp eq ptr %i.azg, null
  br i1 %.not65.i, label %sljit_emit_op1.exit961, label %emit_mov.exit1388.thread, !prof !61

emit_mov.exit1388.thread:                         ; preds = %bb.oq
  store i8 -119, ptr %i.azg, align 1, !tbaa !97
  br label %sljit_emit_op1.exit961

sljit_emit_op1.exit961:                           ; preds = %bb.op, %bb.oq, %emit_mov.exit1388.thread, %bb.oo
  %.val550.a = load ptr, ptr %0, align 8, !tbaa !128 ; 6 uses
  %i.azh = load i32, ptr %.val550.a, align 8, !tbaa !129
  %.not.i.i962 = icmp eq i32 %i.azh, 0
  br i1 %.not.i.i962, label %bb.or, label %sljit_emit_op1.exit917, !prof !130

bb.or:                                            ; preds = %sljit_emit_op1.exit961
  %i.azi = getelementptr inbounds nuw i8, ptr %.val550.a, i64 144
  store i32 0, ptr %i.azi, align 8, !tbaa !132
  %i.azj = getelementptr inbounds nuw i8, ptr %.val550.a, i64 72 ; 3 uses
  %i.azk = load ptr, ptr %i.azj, align 8, !tbaa !124 ; 2 uses
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azk, i64 8 ; 2 uses
  %i.azm = load i64, ptr %i.azl, align 8, !tbaa !134 ; 2 uses
  %i.azn = add i64 %i.azm, 5                      ; 2 uses
  %i.azo = icmp ult i64 %i.azn, 4081
  br i1 %i.azo, label %bb.os, label %bb.ot

bb.os:                                            ; preds = %bb.or
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azk, i64 16
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azp, i64 %i.azm
  store i64 %i.azn, ptr %i.azl, align 8, !tbaa !134
  br label %bb.ow

bb.ot:                                            ; preds = %bb.or
  %i.azr = getelementptr inbounds nuw i8, ptr %.val550.a, i64 56
  %i.azs = load ptr, ptr %i.azr, align 8, !tbaa !123 ; 2 uses
  %.val.i.i1776 = load ptr, ptr %i.azs, align 8, !tbaa !100
  %i.azt = getelementptr i8, ptr %i.azs, i64 16
  %.val18.i.i1777 = load ptr, ptr %i.azt, align 8, !tbaa !101
  %i.azu = tail call ptr %.val.i.i1776(i64 noundef 4096, ptr noundef %.val18.i.i1777) #20, !inline_history !4 ; 5 uses
  %.not.i.i1778 = icmp eq ptr %i.azu, null
  br i1 %.not.i.i1778, label %bb.ov, label %bb.ou, !prof !61

bb.ou:                                            ; preds = %bb.ot
  %i.azv = load ptr, ptr %i.azj, align 8, !tbaa !124
  store ptr %i.azv, ptr %i.azu, align 8, !tbaa !135
  store ptr %i.azu, ptr %i.azj, align 8, !tbaa !124
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azu, i64 8
  store i64 5, ptr %i.azw, align 8, !tbaa !134
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azu, i64 16
  br label %bb.ow

bb.ov:                                            ; preds = %bb.ot
  store i32 2, ptr %.val550.a, align 8, !tbaa !129
  br label %sljit_emit_op1.exit917

bb.ow:                                            ; preds = %bb.ou, %bb.os
  %.0.i269.ph.i1779 = phi ptr [ %i.azx, %bb.ou ], [ %i.azq, %bb.os ] ; 2 uses
  %i.azy = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i1779, i64 1
  store i8 4, ptr %.0.i269.ph.i1779, align 1, !tbaa !97
  %i.azz = getelementptr inbounds nuw i8, ptr %.val550.a, i64 120 ; 2 uses
  %i.baa = load i64, ptr %i.azz, align 8, !tbaa !136
  %i.bab = add i64 %i.baa, 4
  store i64 %i.bab, ptr %i.azz, align 8, !tbaa !136
  store <4 x i8> <i8 73, i8 -125, i8 -57, i8 8>, ptr %i.azy, align 1, !tbaa !97
  br label %sljit_emit_op1.exit917

bb.ox:                                            ; preds = %bb.oe
  br i1 %i.cj, label %bb.oy, label %sljit_emit_op1.exit917

bb.oy:                                            ; preds = %bb.ox
  %i.bac = load i8, ptr %i.at, align 1, !tbaa !97
  %i.bad = zext i8 %i.bac to i64
  %i.bae = shl nuw nsw i64 %i.bad, 8
  %i.baf = load i8, ptr %i.ax, align 1, !tbaa !97
  %i.bag = zext i8 %i.baf to i64
  %i.bah = getelementptr inbounds nuw i8, ptr %.0469, i64 %i.bae
  %i.bai = getelementptr inbounds nuw i8, ptr %i.bah, i64 %i.bag ; 2 uses
  %i.baj = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bak = load i32, ptr %i.baj, align 8, !tbaa !97 ; 2 uses
  %i.bal = icmp sgt i32 %i.bak, -1
  br i1 %i.bal, label %bb.oz, label %bb.pc

bb.oz:                                            ; preds = %bb.oy
  br i1 %i.co, label %bb.pb, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.bam = load i8, ptr %i.bai, align 1, !tbaa !97
  %i.ban = icmp eq i8 %i.bam, 120
  %i.bao = select i1 %i.ban, i32 2, i32 1
  br label %bb.pb

bb.pb:                                            ; preds = %bb.pa, %bb.oz
  %i.bap = phi i32 [ 2, %bb.oz ], [ %i.bao, %bb.pa ]
  %i.baq = add nuw nsw i32 %i.bak, %.0463
  %i.bar = add nuw nsw i32 %i.baq, %i.bap
  br label %bb.pf

bb.pc:                                            ; preds = %bb.oy
  br i1 %i.fr, label %.thread2190, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.bas = load i8, ptr %i.bai, align 1, !tbaa !97
  %i.bat = icmp eq i8 %i.bas, 120
  %i.bau = icmp ne i8 %.1466, 123
  %or.cond31 = and i1 %i.bau, %i.bat
  br i1 %or.cond31, label %.thread2190, label %bb.pe

.thread2190:                                      ; preds = %bb.pd, %bb.pc
  %i.bav = add nuw nsw i32 %.0463, 1
  br label %bb.pf

bb.pe:                                            ; preds = %bb.pd
  %.not528 = icmp eq i32 %.0463, 0
  br i1 %.not528, label %free_stack.exit965, label %bb.pf

bb.pf:                                            ; preds = %.thread2190, %bb.pb, %bb.pe
  %.82194 = phi i32 [ 1, %bb.pe ], [ %i.bav, %.thread2190 ], [ %i.bar, %bb.pb ]
  %.val549.a = load ptr, ptr %0, align 8, !tbaa !128 ; 3 uses
  %i.baw = load i32, ptr %.val549.a, align 8, !tbaa !129
  %.not.i.i964 = icmp eq i32 %i.baw, 0
  br i1 %.not.i.i964, label %bb.pg, label %free_stack.exit965, !prof !130

bb.pg:                                            ; preds = %bb.pf
  %i.bax = shl nsw i32 %.82194, 3
  %i.bay = zext nneg i32 %i.bax to i64
  %i.baz = getelementptr inbounds nuw i8, ptr %.val549.a, i64 144
  store i32 0, ptr %i.baz, align 8, !tbaa !132
  %i.bba = tail call fastcc i32 @emit_cum_binary(ptr noundef nonnull %.val549.a, i32 noundef 84082944, i32 noundef 12, i64 noundef 0, i32 noundef 12, i64 noundef 0, i32 noundef 127, i64 noundef %i.bay) ; 0 uses
  br label %free_stack.exit965

free_stack.exit965:                               ; preds = %bb.pg, %bb.pf, %bb.pe
  %i.bbb = tail call fastcc ptr @sljit_emit_label(ptr noundef %i.a) ; 2 uses
  %.not.i966 = icmp eq ptr %.0458, null
  %.not6.i967 = icmp eq ptr %i.bbb, null
  %or.cond.i968 = or i1 %.not.i966, %.not6.i967
  br i1 %or.cond.i968, label %sljit_set_label.exit969, label %bb.ph, !prof !153

bb.ph:                                            ; preds = %free_stack.exit965
  %i.bbc = getelementptr inbounds nuw i8, ptr %.0458, i64 16 ; 2 uses
  %i.bbd = load i64, ptr %i.bbc, align 8, !tbaa !142
  %i.bbe = and i64 %i.bbd, -2
  store i64 %i.bbe, ptr %i.bbc, align 8, !tbaa !142
  %i.bbf = getelementptr inbounds nuw i8, ptr %.0458, i64 24
  store ptr %i.bbb, ptr %i.bbf, align 8, !tbaa !97
  br label %sljit_set_label.exit969

sljit_set_label.exit969:                          ; preds = %free_stack.exit965, %bb.ph
  %i.bbg = load i32, ptr %i.baj, align 8, !tbaa !97 ; 2 uses
  %i.bbh = icmp sgt i32 %i.bbg, -1
  br i1 %i.bbh, label %bb.pi, label %bb.pl

bb.pi:                                            ; preds = %sljit_set_label.exit969
  %i.bbi = sext i32 %i.c to i64
  %i.bbj = load i32, ptr %i.a, align 8, !tbaa !129
  %.not.i970 = icmp eq i32 %i.bbj, 0
  br i1 %.not.i970, label %bb.pj, label %sljit_emit_op1.exit917, !prof !130

bb.pj:                                            ; preds = %bb.pi
  %i.bbk = xor i32 %i.bbg, -1
  %i.bbl = shl nsw i32 %i.bbk, 3
  %i.bbm = sext i32 %i.bbl to i64
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i32 0, ptr %i.bbn, align 8, !tbaa !132
  %i.bbo = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.a, i64 noundef 1, i32 noundef 15, i64 noundef 0, i32 noundef 140, i64 noundef %i.bbm) ; 2 uses
  %.not.i1392 = icmp eq ptr %i.bbo, null
  br i1 %.not.i1392, label %sljit_emit_op1.exit917, label %bb.pk, !prof !61

bb.pk:                                            ; preds = %bb.pj
  store i8 -117, ptr %i.bbo, align 1, !tbaa !97
  %i.bbp = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.a, i64 noundef 1, i32 noundef 15, i64 noundef 0, i32 noundef 142, i64 noundef range(i64 -2147483648, 2147483664) %i.bbi) ; 2 uses
  %.not65.i1393 = icmp eq ptr %i.bbp, null
  br i1 %.not65.i1393, label %sljit_emit_op1.exit917, label %emit_mov.exit1395.thread, !prof !61

emit_mov.exit1395.thread:                         ; preds = %bb.pk
  store i8 -119, ptr %i.bbp, align 1, !tbaa !97
  br label %sljit_emit_op1.exit917

bb.pl:                                            ; preds = %sljit_set_label.exit969
  %i.bbq = icmp eq i8 %.1466, 123
  br i1 %i.bbq, label %bb.pm, label %sljit_emit_op1.exit917

bb.pm:                                            ; preds = %bb.pl
  %i.bbr = load i32, ptr %i.a, align 8, !tbaa !129
  %.not.i975 = icmp eq i32 %i.bbr, 0
  br i1 %.not.i975, label %bb.pn, label %sljit_emit_op1.exit979, !prof !130

bb.pn:                                            ; preds = %bb.pm
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i32 0, ptr %i.bbs, align 8, !tbaa !132
  %i.bbt = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.a, i64 noundef 1, i32 noundef 1, i64 noundef 0, i32 noundef 140, i64 noundef 8) ; 2 uses
  %.not66.i1396 = icmp eq ptr %i.bbt, null
  br i1 %.not66.i1396, label %sljit_emit_op1.exit979, label %emit_mov.exit1398.thread, !prof !61

emit_mov.exit1398.thread:                         ; preds = %bb.pn
  store i8 -117, ptr %i.bbt, align 1, !tbaa !97
  br label %sljit_emit_op1.exit979

sljit_emit_op1.exit979:                           ; preds = %bb.pn, %emit_mov.exit1398.thread, %bb.pm
  %.val548.a = load ptr, ptr %0, align 8, !tbaa !128
  tail call fastcc void @free_stack(ptr %.val548.a, i32 noundef 2)
  %i.bbu = load i32, ptr %i.a, align 8, !tbaa !129
  %.not.i980 = icmp eq i32 %i.bbu, 0
  br i1 %.not.i980, label %bb.po, label %sljit_emit_op1.exit917, !prof !130

bb.po:                                            ; preds = %sljit_emit_op1.exit979
  %i.bbv = sext i32 %i.c to i64
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i32 0, ptr %i.bbw, align 8, !tbaa !132
  %i.bbx = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.a, i64 noundef 1, i32 noundef 1, i64 noundef 0, i32 noundef 142, i64 noundef range(i64 -2147483648, 2147483664) %i.bbv) ; 2 uses
  %.not73.i1399 = icmp eq ptr %i.bbx, null
  br i1 %.not73.i1399, label %sljit_emit_op1.exit917, label %emit_mov.exit1401.thread, !prof !61

emit_mov.exit1401.thread:                         ; preds = %bb.po
  store i8 -119, ptr %i.bbx, align 1, !tbaa !97
  br label %sljit_emit_op1.exit917

sljit_emit_op1.exit917:                           ; preds = %emit_mov.exit1355, %bb.po, %bb.pj, %bb.pk, %bb.od, %bb.nu, %free_stack.exit907, %sljit_emit_op1.exit979, %emit_mov.exit1401.thread, %bb.pi, %emit_mov.exit1395.thread, %sljit_emit_op1.exit961, %bb.ov, %bb.ow, %sljit_emit_op1.exit954, %bb.om, %bb.on, %free_stack.exit924, %emit_mov.exit1367.thread, %sljit_emit_op1.exit912, %emit_mov.exit1358.thread, %bb.ox, %bb.pl
  %i.bby = icmp eq i32 %.0473, 41
  br i1 %i.bby, label %bb.pp, label %bb.qn

bb.pp:                                            ; preds = %sljit_emit_op1.exit917
  %i.bbz = load i32, ptr %i.a, align 8, !tbaa !129
  %.not.i985 = icmp eq i32 %i.bbz, 0
  br i1 %.not.i985, label %bb.pq, label %sljit_set_label.exit1001, !prof !130

bb.pq:                                            ; preds = %bb.pp
  %i.bca = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 3 uses
  store i32 0, ptr %i.bca, align 8, !tbaa !132
  %i.bcb = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.a, i64 noundef 1, i32 noundef 1, i64 noundef 0, i32 noundef 142, i64 noundef %.0474) ; 2 uses
  %.not66.i1802 = icmp eq ptr %i.bcb, null
  br i1 %.not66.i1802, label %emit_mov.exit1804, label %emit_mov.exit1804.thread, !prof !61

emit_mov.exit1804.thread:                         ; preds = %bb.pq
  store i8 -117, ptr %i.bcb, align 1, !tbaa !97
  br label %bb.pr

emit_mov.exit1804:                                ; preds = %bb.pq
  %i.bcc = load i32, ptr %i.a, align 8, !tbaa !129
  %.not239.i = icmp eq i32 %i.bcc, 0
  br i1 %.not239.i, label %bb.pr, label %sljit_set_label.exit1001, !prof !137

bb.pr:                                            ; preds = %emit_mov.exit1804.thread, %emit_mov.exit1804
  %i.bcd = load i32, ptr %i.bca, align 8, !tbaa !132
  %.not.i1787 = icmp eq i32 %i.bcd, 0             ; 2 uses
  %spec.select267.i1790 = select i1 %.not.i1787, i64 4, i64 3 ; 3 uses
  %i.bce = add nuw nsw i64 %spec.select267.i1790, 1 ; 2 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 3 uses
  %i.bcg = load ptr, ptr %i.bcf, align 8, !tbaa !124 ; 2 uses
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcg, i64 8 ; 2 uses
  %i.bci = load i64, ptr %i.bch, align 8, !tbaa !134 ; 2 uses
  %i.bcj = add i64 %i.bce, %i.bci                 ; 2 uses
  %i.bck = icmp ult i64 %i.bcj, 4081
  br i1 %i.bck, label %bb.ps, label %bb.pt

bb.ps:                                            ; preds = %bb.pr
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bcg, i64 16
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bcl, i64 %i.bci
  store i64 %i.bcj, ptr %i.bch, align 8, !tbaa !134
  br label %bb.pv

bb.pt:                                            ; preds = %bb.pr
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bco = load ptr, ptr %i.bcn, align 8, !tbaa !123 ; 2 uses
  %.val.i.i1791 = load ptr, ptr %i.bco, align 8, !tbaa !100
  %i.bcp = getelementptr i8, ptr %i.bco, i64 16
  %.val18.i.i1792 = load ptr, ptr %i.bcp, align 8, !tbaa !101
  %i.bcq = tail call ptr %.val.i.i1791(i64 noundef 4096, ptr noundef %.val18.i.i1792) #20, !inline_history !4 ; 5 uses
  %.not.i.i1793 = icmp eq ptr %i.bcq, null
  br i1 %.not.i.i1793, label %bb.px, label %bb.pu, !prof !61

bb.pu:                                            ; preds = %bb.pt
  %i.bcr = load ptr, ptr %i.bcf, align 8, !tbaa !124
  store ptr %i.bcr, ptr %i.bcq, align 8, !tbaa !135
  store ptr %i.bcq, ptr %i.bcf, align 8, !tbaa !124
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcq, i64 8
  store i64 %i.bce, ptr %i.bcs, align 8, !tbaa !134
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcq, i64 16
  br label %bb.pv

bb.pv:                                            ; preds = %bb.pu, %bb.ps
  %.0.i269.ph.i1794 = phi ptr [ %i.bct, %bb.pu ], [ %i.bcm, %bb.ps ] ; 3 uses
  %i.bcu = trunc nuw nsw i64 %spec.select267.i1790 to i8
  %i.bcv = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i1794, i64 1 ; 2 uses
  store i8 %i.bcu, ptr %.0.i269.ph.i1794, align 1, !tbaa !97
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  %i.bcx = load i64, ptr %i.bcw, align 8, !tbaa !136
  %i.bcy = add i64 %i.bcx, %spec.select267.i1790
  store i64 %i.bcy, ptr %i.bcw, align 8, !tbaa !136
  br i1 %.not.i1787, label %bb.pw, label %sljit_emit_op2.exit988

bb.pw:                                            ; preds = %bb.pv
  %i.bcz = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i1794, i64 2
  store i8 72, ptr %i.bcv, align 1, !tbaa !97
  br label %sljit_emit_op2.exit988

bb.px:                                            ; preds = %bb.pt
  store i32 2, ptr %i.a, align 8, !tbaa !129
  br label %sljit_set_label.exit1001

sljit_emit_op2.exit988:                           ; preds = %bb.pv, %bb.pw
  %.1197.i1796 = phi ptr [ %i.bcz, %bb.pw ], [ %i.bcv, %bb.pv ] ; 3 uses
  %i.bda = getelementptr inbounds nuw i8, ptr %.1197.i1796, i64 1
  store i8 -125, ptr %.1197.i1796, align 1, !tbaa !97
  store i8 -64, ptr %i.bda, align 1, !tbaa !97
  %i.bdb = getelementptr inbounds nuw i8, ptr %.1197.i1796, i64 2
  store i8 1, ptr %i.bdb, align 1, !tbaa !97
  %.pr2203 = load i32, ptr %i.a, align 8, !tbaa !129
  %i.bdc = icmp eq i32 %.pr2203, 0
  br i1 %i.bdc, label %bb.py, label %sljit_set_label.exit1001, !prof !139

bb.py:                                            ; preds = %sljit_emit_op2.exit988
  store i32 0, ptr %i.bca, align 8, !tbaa !132
  %i.bdd = tail call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.a, i64 noundef 1, i32 noundef 1, i64 noundef 0, i32 noundef 142, i64 noundef range(i64 -2147483648, 2147483664) %.0474) ; 2 uses
  %.not73.i1407 = icmp eq ptr %i.bdd, null
  br i1 %.not73.i1407, label %emit_mov.exit1409, label %sljit_emit_op1.exit993, !prof !61

emit_mov.exit1409:                                ; preds = %bb.py
  %i.bde = load i32, ptr %i.a, align 8, !tbaa !129
  %.not112.i991 = icmp eq i32 %i.bde, 0
  br i1 %.not112.i991, label %sljit_emit_op1.exit993.thread, label %sljit_set_label.exit1001, !prof !137

sljit_emit_op1.exit993:                           ; preds = %bb.py
  store i8 -119, ptr %i.bdd, align 1, !tbaa !97
  %.pre2305.a = load i32, ptr %i.a, align 8, !tbaa !129
end_hunk_2
