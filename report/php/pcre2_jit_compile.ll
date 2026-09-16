Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_jit_compile?download=true
inline.NumInlined: 5888
inline.NumDeleted: 131
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 17
begin_hunk_0_@jit_compile:bb.a
  store i8 -117, ptr %i.amm, align 1, !tbaa !97
  %.pre3866 = load i32, ptr %i.yr, align 8, !tbaa !129
  %i.amo = icmp eq i32 %.pre3866, 0
  br i1 %i.amo, label %sljit_emit_op1.exit780.thread, label %sljit_emit_op1.exit809, !prof !139

sljit_emit_op1.exit780.thread:                    ; preds = %emit_mov.exit2755, %sljit_emit_op1.exit780
  %i.amp = getelementptr inbounds nuw i8, ptr %i.yr, i64 144
  store i32 0, ptr %i.amp, align 8, !tbaa !132
  %i.amq = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.yr, i64 noundef 1, i32 noundef 4, i64 noundef 0, i32 noundef 129, i64 noundef 0) ; 2 uses
  %.not66.i2756 = icmp eq ptr %i.amq, null
  br i1 %.not66.i2756, label %emit_mov.exit2758, label %sljit_emit_op1.exit786, !prof !61

emit_mov.exit2758:                                ; preds = %sljit_emit_op1.exit780.thread
  %i.amr = load i32, ptr %i.yr, align 8, !tbaa !129
  %.not112.i784 = icmp eq i32 %i.amr, 0
  br i1 %.not112.i784, label %sljit_emit_op1.exit786.thread, label %sljit_emit_op1.exit809, !prof !137

sljit_emit_op1.exit786:                           ; preds = %sljit_emit_op1.exit780.thread
  store i8 -117, ptr %i.amq, align 1, !tbaa !97
  %.pre3867 = load i32, ptr %i.yr, align 8, !tbaa !129
  %i.ams = icmp eq i32 %.pre3867, 0
  br i1 %i.ams, label %sljit_emit_op1.exit786.thread, label %sljit_emit_op1.exit809, !prof !139

sljit_emit_op1.exit786.thread:                    ; preds = %emit_mov.exit2758, %sljit_emit_op1.exit786
  %i.amt = getelementptr inbounds nuw i8, ptr %i.yr, i64 144 ; 3 uses
  store i32 1, ptr %i.amt, align 8, !tbaa !132
  %i.amu = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.yr, i64 noundef 1, i32 noundef 1, i64 noundef 0, i32 noundef 129, i64 noundef 80) ; 2 uses
  %.not66.i3273 = icmp eq ptr %i.amu, null
  br i1 %.not66.i3273, label %emit_mov.exit3275, label %sljit_emit_op1.exit790, !prof !61

emit_mov.exit3275:                                ; preds = %sljit_emit_op1.exit786.thread
  %i.amv = load i32, ptr %i.yr, align 8, !tbaa !129
  %.not63.i2759 = icmp eq i32 %i.amv, 0
  br i1 %.not63.i2759, label %sljit_emit_op1.exit790.thread5898, label %sljit_emit_op1.exit809, !prof !137

sljit_emit_op1.exit790.thread5898:                ; preds = %emit_mov.exit3275
  store i32 0, ptr %i.amt, align 8, !tbaa !132
  br label %sljit_emit_op1.exit790.thread

sljit_emit_op1.exit790:                           ; preds = %sljit_emit_op1.exit786.thread
  store i8 -117, ptr %i.amu, align 1, !tbaa !97
  %.pre3868.pre = load i32, ptr %i.yr, align 8, !tbaa !129
  %i.amw = icmp eq i32 %.pre3868.pre, 0
  store i32 0, ptr %i.amt, align 8, !tbaa !132
  br i1 %i.amw, label %sljit_emit_op1.exit790.thread, label %sljit_emit_op1.exit809, !prof !139

sljit_emit_op1.exit790.thread:                    ; preds = %sljit_emit_op1.exit790.thread5898, %sljit_emit_op1.exit790
  %i.amx = getelementptr inbounds nuw i8, ptr %i.yr, i64 144
  store i32 0, ptr %i.amx, align 8, !tbaa !132
  %i.amy = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.yr, i64 noundef 1, i32 noundef 12, i64 noundef 0, i32 noundef 132, i64 noundef 8) ; 2 uses
  %.not66.i2760 = icmp eq ptr %i.amy, null
  br i1 %.not66.i2760, label %emit_mov.exit2762, label %sljit_emit_op1.exit796, !prof !61

emit_mov.exit2762:                                ; preds = %sljit_emit_op1.exit790.thread
  %i.amz = load i32, ptr %i.yr, align 8, !tbaa !129
  %.not112.i794 = icmp eq i32 %i.amz, 0
  br i1 %.not112.i794, label %sljit_emit_op1.exit796.thread, label %sljit_emit_op1.exit809, !prof !137

sljit_emit_op1.exit796:                           ; preds = %sljit_emit_op1.exit790.thread
  store i8 -117, ptr %i.amy, align 1, !tbaa !97
  %.pre3869 = load i32, ptr %i.yr, align 8, !tbaa !129
  %i.ana = icmp eq i32 %.pre3869, 0
  br i1 %i.ana, label %sljit_emit_op1.exit796.thread, label %sljit_emit_op1.exit809, !prof !139

sljit_emit_op1.exit796.thread:                    ; preds = %emit_mov.exit2762, %sljit_emit_op1.exit796
  %i.anb = getelementptr inbounds nuw i8, ptr %i.yr, i64 144
  store i32 0, ptr %i.anb, align 8, !tbaa !132
  %i.anc = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.yr, i64 noundef 1, i32 noundef 11, i64 noundef 0, i32 noundef 132, i64 noundef 16) ; 2 uses
  %.not66.i2763 = icmp eq ptr %i.anc, null
  br i1 %.not66.i2763, label %emit_mov.exit2765, label %sljit_emit_op1.exit802, !prof !61

emit_mov.exit2765:                                ; preds = %sljit_emit_op1.exit796.thread
  %i.and = load i32, ptr %i.yr, align 8, !tbaa !129
  %.not112.i800 = icmp eq i32 %i.and, 0
  br i1 %.not112.i800, label %sljit_emit_op2.exit, label %sljit_emit_op1.exit809, !prof !137

sljit_emit_op1.exit802:                           ; preds = %sljit_emit_op1.exit796.thread
  store i8 -117, ptr %i.anc, align 1, !tbaa !97
  %.pre3870 = load i32, ptr %i.yr, align 8, !tbaa !129
  %i.ane = icmp eq i32 %.pre3870, 0
  br i1 %i.ane, label %sljit_emit_op2.exit, label %sljit_emit_op1.exit809, !prof !139

sljit_emit_op2.exit:                              ; preds = %sljit_emit_op1.exit802, %emit_mov.exit2765
  %i.anf = getelementptr inbounds nuw i8, ptr %i.yr, i64 144
  store i32 0, ptr %i.anf, align 8, !tbaa !132
  %i.ang = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.yr, i64 noundef 17, i32 noundef 127, i64 noundef 1, i32 noundef 1, i64 noundef 0) ; 0 uses
  %.pre3871 = load i32, ptr %i.yr, align 8, !tbaa !129
  %i.anh = icmp eq i32 %.pre3871, 0
  br i1 %i.anh, label %bb.hh, label %sljit_emit_op1.exit809, !prof !139

bb.hh:                                            ; preds = %sljit_emit_op2.exit
  %i.ani = getelementptr inbounds nuw i8, ptr %i.yr, i64 144
  store i32 0, ptr %i.ani, align 8, !tbaa !132
  %i.anj = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.yr, i64 noundef 1, i32 noundef 1, i64 noundef 0, i32 noundef 142, i64 noundef 32) ; 2 uses
  %.not73.i2768 = icmp eq ptr %i.anj, null
  br i1 %.not73.i2768, label %sljit_emit_op1.exit809, label %emit_mov.exit2770.thread, !prof !61

emit_mov.exit2770.thread:                         ; preds = %bb.hh
  store i8 -119, ptr %i.anj, align 1, !tbaa !97
  br label %sljit_emit_op1.exit809

sljit_emit_op1.exit809:                           ; preds = %emit_mov.exit2744, %emit_mov.exit2747, %sljit_emit_op1.exit, %emit_mov.exit2750, %sljit_emit_op1.exit762, %emit_mov.exit2752, %sljit_emit_op1.exit768, %emit_mov.exit2755, %bb.gz, %sljit_emit_op1.exit774, %emit_mov.exit2758, %sljit_emit_op1.exit780, %emit_mov.exit3275, %sljit_emit_op1.exit786, %emit_mov.exit2762, %sljit_emit_op1.exit790, %emit_mov.exit2765, %sljit_emit_op1.exit796, %sljit_emit_op1.exit802, %bb.hh, %emit_mov.exit2770.thread, %sljit_emit_op2.exit
  %i.ank = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.anl = load i32, ptr %i.ank, align 8, !tbaa !147 ; 3 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %4, i64 124 ; 3 uses
  %i.ann = load i32, ptr %i.anm, align 4, !tbaa !148 ; 2 uses
  %i.ano = icmp slt i32 %i.anl, %i.ann
  br i1 %i.ano, label %bb.hi, label %reset_early_fail.exit

bb.hi:                                            ; preds = %sljit_emit_op1.exit809
  %i.anp = load ptr, ptr %4, align 8, !tbaa !128  ; 44 uses
  %i.anq = sub nsw i32 %i.ann, %i.anl             ; 4 uses
  %i.anr = icmp eq i32 %i.anq, 8
  %i.ans = load i32, ptr %i.anp, align 8, !tbaa !129
  %.not.i.i810 = icmp eq i32 %i.ans, 0            ; 2 uses
  br i1 %i.anr, label %bb.hj, label %bb.hl

bb.hj:                                            ; preds = %bb.hi
  br i1 %.not.i.i810, label %bb.hk, label %reset_early_fail.exit, !prof !130

bb.hk:                                            ; preds = %bb.hj
  %i.ant = sext i32 %i.anl to i64
  %i.anu = getelementptr inbounds nuw i8, ptr %i.anp, i64 144
  store i32 0, ptr %i.anu, align 8, !tbaa !132
  %i.anv = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.anp, i64 noundef 1, i32 noundef 127, i64 noundef 0, i32 noundef 142, i64 noundef range(i64 -2147483648, 2147483664) %i.ant) ; 2 uses
  %.not71.i.i = icmp eq ptr %i.anv, null
  br i1 %.not71.i.i, label %reset_early_fail.exit, label %emit_mov.exit.thread.i823, !prof !61

emit_mov.exit.thread.i823:                        ; preds = %bb.hk
  store i8 -57, ptr %i.anv, align 1, !tbaa !97
  br label %reset_early_fail.exit

bb.hl:                                            ; preds = %bb.hi
  br i1 %.not.i.i810, label %bb.hm, label %sljit_emit_op1.exit43.i, !prof !130

bb.hm:                                            ; preds = %bb.hl
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anp, i64 144
  store i32 0, ptr %i.anw, align 8, !tbaa !132
  %i.anx = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.anp, i64 noundef 1, i32 noundef 127, i64 noundef 0, i32 noundef 3, i64 noundef 0) ; 2 uses
  %.not71.i92.i = icmp eq ptr %i.anx, null
  br i1 %.not71.i92.i, label %sljit_emit_op1.exit43.i, label %emit_mov.exit93.thread.i, !prof !61

emit_mov.exit93.thread.i:                         ; preds = %bb.hm
  store i8 -57, ptr %i.anx, align 1, !tbaa !97
  br label %sljit_emit_op1.exit43.i

sljit_emit_op1.exit43.i:                          ; preds = %emit_mov.exit93.thread.i, %bb.hm, %bb.hl
  %i.any = icmp ult i32 %i.anq, 49
  %i.anz = load i32, ptr %i.ank, align 8, !tbaa !147 ; 3 uses
  br i1 %i.any, label %bb.hn, label %bb.hp

bb.hn:                                            ; preds = %sljit_emit_op1.exit43.i
  %i.aoa = load i32, ptr %i.anm, align 4, !tbaa !148 ; 2 uses
  %i.aob = icmp slt i32 %i.anz, %i.aoa
  br i1 %i.aob, label %.lr.ph.i820, label %reset_early_fail.exit

.lr.ph.i820:                                      ; preds = %bb.hn
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.anp, i64 144
  %i.aod = load i32, ptr %i.anp, align 8, !tbaa !129
  %i.aoe = icmp eq i32 %i.aod, 0
  br i1 %i.aoe, label %.lr.ph.split.i, label %reset_early_fail.exit, !prof !130

.lr.ph.splitthread-pre-split.i:                   ; preds = %sljit_emit_op1.exit48.i822
  %.pr156.i = load i32, ptr %i.anp, align 8, !tbaa !129
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i820, %.lr.ph.splitthread-pre-split.i
  %i.aof = phi i32 [ %.pr156.i, %.lr.ph.splitthread-pre-split.i ], [ 0, %.lr.ph.i820 ]
  %i.aog = phi i32 [ %i.aoj, %.lr.ph.splitthread-pre-split.i ], [ %i.aoa, %.lr.ph.i820 ]
  %.0133.i = phi i32 [ %i.aok, %.lr.ph.splitthread-pre-split.i ], [ %i.anz, %.lr.ph.i820 ] ; 2 uses
  %.not.i44.i821 = icmp eq i32 %i.aof, 0
  br i1 %.not.i44.i821, label %.thread.i.i, label %sljit_emit_op1.exit48.i822, !prof !130

.thread.i.i:                                      ; preds = %.lr.ph.split.i
  %i.aoh = sext i32 %.0133.i to i64
  store i32 0, ptr %i.aoc, align 8, !tbaa !132
  %i.aoi = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.anp, i64 noundef 1, i32 noundef 3, i64 noundef 0, i32 noundef 142, i64 noundef range(i64 -2147483648, 2147483664) %i.aoh) ; 2 uses
  %.not73.i2786 = icmp eq ptr %i.aoi, null
  br i1 %.not73.i2786, label %emit_mov.exit2788, label %bb.ho, !prof !61

bb.ho:                                            ; preds = %.thread.i.i
  store i8 -119, ptr %i.aoi, align 1, !tbaa !97
  br label %emit_mov.exit2788

emit_mov.exit2788:                                ; preds = %.thread.i.i, %bb.ho
  %.pre137.i = load i32, ptr %i.anm, align 4, !tbaa !148
  br label %sljit_emit_op1.exit48.i822

sljit_emit_op1.exit48.i822:                       ; preds = %emit_mov.exit2788, %.lr.ph.split.i
  %i.aoj = phi i32 [ %.pre137.i, %emit_mov.exit2788 ], [ %i.aog, %.lr.ph.split.i ] ; 2 uses
  %i.aok = add i32 %.0133.i, 8                    ; 2 uses
  %i.aol = icmp slt i32 %i.aok, %i.aoj
  br i1 %i.aol, label %.lr.ph.splitthread-pre-split.i, label %reset_early_fail.exit, !llvm.loop !280

bb.hp:                                            ; preds = %sljit_emit_op1.exit43.i
  %i.aom = sext i32 %i.anz to i64
  call fastcc void @sljit_get_local_base(ptr noundef nonnull %i.anp, i32 noundef 1, i64 noundef %i.aom)
  %i.aon = lshr i32 %i.anq, 3
  %i.aoo = urem i32 %i.aon, 3                     ; 3 uses
  %i.aop = shl nuw nsw i32 %i.aoo, 3
  %i.aoq = sub nuw i32 %i.anq, %i.aop
  %i.aor = zext i32 %i.aoq to i64                 ; 2 uses
  %i.aos = load i32, ptr %i.anp, align 8, !tbaa !129
  %.not.i49.i811 = icmp eq i32 %i.aos, 0
  br i1 %.not.i49.i811, label %bb.hq, label %sljit_emit_op2.exit.i812, !prof !130

bb.hq:                                            ; preds = %bb.hp
  %i.aot = getelementptr inbounds nuw i8, ptr %i.anp, i64 144
  store i32 0, ptr %i.aot, align 8, !tbaa !132
  %5 = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.anp, i64 noundef 1, i32 noundef 4, i64 noundef 0, i32 noundef 129, i64 noundef %i.aor) ; 2 uses
  %.not61.i.i = icmp eq ptr %5, null
  br i1 %.not61.i.i, label %emit_lea_binary.exit.i, label %emit_lea_binary.exit.thread113.i, !prof !61

emit_lea_binary.exit.thread113.i:                 ; preds = %bb.hq
  store i8 -115, ptr %5, align 1, !tbaa !97
  br label %sljit_emit_op2.exit.i812

emit_lea_binary.exit.i:                           ; preds = %bb.hq
  %i.aou = load i32, ptr %i.anp, align 8, !tbaa !129
  %.not170.i.i = icmp eq i32 %i.aou, 4
  br i1 %.not170.i.i, label %emit_lea_binary.exit.thread.i, label %sljit_emit_op2.exit.i812

emit_lea_binary.exit.thread.i:                    ; preds = %emit_lea_binary.exit.i
  %i.aov = call fastcc i32 @emit_cum_binary(ptr noundef nonnull %i.anp, i32 noundef 84082944, i32 noundef 4, i64 noundef 0, i32 noundef 1, i64 noundef 0, i32 noundef 127, i64 noundef %i.aor) ; 0 uses
  br label %sljit_emit_op2.exit.i812

sljit_emit_op2.exit.i812:                         ; preds = %emit_lea_binary.exit.thread.i, %emit_lea_binary.exit.i, %emit_lea_binary.exit.thread113.i, %bb.hp
  %i.aow = call fastcc ptr @sljit_emit_label(ptr noundef nonnull %i.anp) ; 2 uses
  %i.aox = load i32, ptr %i.anp, align 8, !tbaa !129
  %.not.i50.i = icmp eq i32 %i.aox, 0
  br i1 %.not.i50.i, label %.thread.i52.i, label %sljit_set_label.exit.i, !prof !130

.thread.i52.i:                                    ; preds = %sljit_emit_op2.exit.i812
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.anp, i64 144 ; 5 uses
  store i32 0, ptr %i.aoy, align 8, !tbaa !132
  %i.aoz = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.anp, i64 noundef 1, i32 noundef 3, i64 noundef 0, i32 noundef 129, i64 noundef 0) ; 2 uses
  %.not73.i2783 = icmp eq ptr %i.aoz, null
  br i1 %.not73.i2783, label %emit_mov.exit2785, label %bb.hr, !prof !61

bb.hr:                                            ; preds = %.thread.i52.i
  store i8 -119, ptr %i.aoz, align 1, !tbaa !97
  br label %emit_mov.exit2785

emit_mov.exit2785:                                ; preds = %.thread.i52.i, %bb.hr
  %.pr.i816 = load i32, ptr %i.anp, align 8, !tbaa !129
  %.not.i56.i = icmp eq i32 %.pr.i816, 0
  br i1 %.not.i56.i, label %sljit_emit_op2.exit59.i, label %sljit_set_label.exit.i, !prof !139

sljit_emit_op2.exit59.i:                          ; preds = %emit_mov.exit2785
  store i32 0, ptr %i.aoy, align 8, !tbaa !132
  %i.apa = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.anp, i64 noundef 17, i32 noundef 127, i64 noundef 24, i32 noundef 1, i64 noundef 0) ; 0 uses
  %.pre.i817 = load i32, ptr %i.anp, align 8, !tbaa !129
  %i.apb = icmp eq i32 %.pre.i817, 0
  br i1 %i.apb, label %sljit_emit_op1.exit65.i, label %sljit_set_label.exit.i, !prof !139

sljit_emit_op1.exit65.i:                          ; preds = %sljit_emit_op2.exit59.i
  store i32 0, ptr %i.aoy, align 8, !tbaa !132
  %i.apc = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.anp, i64 noundef 1, i32 noundef 3, i64 noundef 0, i32 noundef 129, i64 noundef -16) ; 2 uses
  %.not73.i2780 = icmp eq ptr %i.apc, null
  br i1 %.not73.i2780, label %emit_mov.exit2782, label %bb.hs, !prof !61

bb.hs:                                            ; preds = %sljit_emit_op1.exit65.i
  store i8 -119, ptr %i.apc, align 1, !tbaa !97
  br label %emit_mov.exit2782

emit_mov.exit2782:                                ; preds = %sljit_emit_op1.exit65.i, %bb.hs
  %.pre135.i = load i32, ptr %i.anp, align 8, !tbaa !129
  %i.apd = icmp eq i32 %.pre135.i, 0
  br i1 %i.apd, label %sljit_emit_op1.exit71.i, label %sljit_set_label.exit.i, !prof !139

sljit_emit_op1.exit71.i:                          ; preds = %emit_mov.exit2782
  store i32 0, ptr %i.aoy, align 8, !tbaa !132
  %i.ape = call fastcc ptr @emit_x86_instruction(ptr noundef nonnull %i.anp, i64 noundef 1, i32 noundef 3, i64 noundef 0, i32 noundef 129, i64 noundef -8) ; 2 uses
  %.not73.i2777 = icmp eq ptr %i.ape, null
  br i1 %.not73.i2777, label %emit_mov.exit2779, label %bb.ht, !prof !61

bb.ht:                                            ; preds = %sljit_emit_op1.exit71.i
  store i8 -119, ptr %i.ape, align 1, !tbaa !97
  br label %emit_mov.exit2779

emit_mov.exit2779:                                ; preds = %sljit_emit_op1.exit71.i, %bb.ht
  %.pre136.i = load i32, ptr %i.anp, align 8, !tbaa !129
  %i.apf = icmp eq i32 %.pre136.i, 0
  br i1 %i.apf, label %bb.hu, label %sljit_set_label.exit.i, !prof !139

bb.hu:                                            ; preds = %emit_mov.exit2779
  store i32 0, ptr %i.aoy, align 8, !tbaa !132
  %i.apg = getelementptr inbounds nuw i8, ptr %i.anp, i64 72 ; 6 uses
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !124 ; 2 uses
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 8 ; 2 uses
  %i.apj = load i64, ptr %i.api, align 8, !tbaa !134 ; 2 uses
  %i.apk = add i64 %i.apj, 4                      ; 2 uses
  %i.apl = icmp ult i64 %i.apk, 4081
  br i1 %i.apl, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  %i.apm = getelementptr inbounds nuw i8, ptr %i.aph, i64 16
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apm, i64 %i.apj
  store i64 %i.apk, ptr %i.api, align 8, !tbaa !134
  br label %bb.hy

bb.hw:                                            ; preds = %bb.hu
  %i.apo = getelementptr inbounds nuw i8, ptr %i.anp, i64 56
  %i.app = load ptr, ptr %i.apo, align 8, !tbaa !123 ; 2 uses
  %.val.i.i102.i = load ptr, ptr %i.app, align 8, !tbaa !100
  %i.apq = getelementptr i8, ptr %i.app, i64 16
  %.val18.i.i103.i = load ptr, ptr %i.apq, align 8, !tbaa !101
  %i.apr = call ptr %.val.i.i102.i(i64 noundef 4096, ptr noundef %.val18.i.i103.i) #20, !inline_history !281 ; 5 uses
  %.not.i.i104.i = icmp eq ptr %i.apr, null
  br i1 %.not.i.i104.i, label %sljit_emit_op2u.exit.i, label %bb.hx, !prof !61

bb.hx:                                            ; preds = %bb.hw
  %i.aps = load ptr, ptr %i.apg, align 8, !tbaa !124
  store ptr %i.aps, ptr %i.apr, align 8, !tbaa !135
  store ptr %i.apr, ptr %i.apg, align 8, !tbaa !124
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apr, i64 8
  store i64 4, ptr %i.apt, align 8, !tbaa !134
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apr, i64 16
  br label %bb.hy

sljit_emit_op2u.exit.i:                           ; preds = %bb.hw
  store i32 2, ptr %i.anp, align 8, !tbaa !129
  br label %sljit_set_label.exit.i

bb.hy:                                            ; preds = %bb.hx, %bb.hv
  %.0.i269.ph.i.i = phi ptr [ %i.apu, %bb.hx ], [ %i.apn, %bb.hv ] ; 4 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i.i, i64 1
  store i8 3, ptr %.0.i269.ph.i.i, align 1, !tbaa !97
  %i.apw = getelementptr inbounds nuw i8, ptr %i.anp, i64 120 ; 4 uses
  %i.apx = load i64, ptr %i.apw, align 8, !tbaa !136
  %i.apy = add i64 %i.apx, 3
  store i64 %i.apy, ptr %i.apw, align 8, !tbaa !136
  %i.apz = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i.i, i64 2
  store i8 72, ptr %i.apv, align 1, !tbaa !97
  %i.aqa = getelementptr inbounds nuw i8, ptr %.0.i269.ph.i.i, i64 3
  store i8 -63, ptr %i.aqa, align 1, !tbaa !97
  store i8 59, ptr %i.apz, align 1, !tbaa !97
  %.pr127.i = load i32, ptr %i.anp, align 8, !tbaa !129
  %.not.i98.i = icmp eq i32 %.pr127.i, 0
  br i1 %.not.i98.i, label %.thread.i818, label %sljit_set_label.exit.i, !prof !149

.thread.i818:                                     ; preds = %bb.hy
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.anp, i64 80 ; 3 uses
  %i.aqc = load ptr, ptr %i.aqb, align 8, !tbaa !125 ; 2 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 8 ; 2 uses
  %i.aqe = load i64, ptr %i.aqd, align 8, !tbaa !134 ; 2 uses
  %i.aqf = add i64 %i.aqe, 32                     ; 2 uses
  %i.aqg = icmp ult i64 %i.aqf, 4081
  br i1 %i.aqg, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %.thread.i818
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqc, i64 16
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqh, i64 %i.aqe
  store i64 %i.aqf, ptr %i.aqd, align 8, !tbaa !134
  br label %bb.id

bb.ia:                                            ; preds = %.thread.i818
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.anp, i64 56
  %i.aqk = load ptr, ptr %i.aqj, align 8, !tbaa !123 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.aqk, align 8, !tbaa !100
  %i.aql = getelementptr i8, ptr %i.aqk, i64 16
  %.val18.i.i.i = load ptr, ptr %i.aql, align 8, !tbaa !101
  %i.aqm = call ptr %.val.i.i.i(i64 noundef 4096, ptr noundef %.val18.i.i.i) #20, !inline_history !282 ; 5 uses
  %.not.i.i.i819 = icmp eq ptr %i.aqm, null
  br i1 %.not.i.i.i819, label %bb.ic, label %bb.ib, !prof !61

bb.ib:                                            ; preds = %bb.ia
  %i.aqn = load ptr, ptr %i.aqb, align 8, !tbaa !125
  store ptr %i.aqn, ptr %i.aqm, align 8, !tbaa !135
  store ptr %i.aqm, ptr %i.aqb, align 8, !tbaa !125
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqm, i64 8
  store i64 32, ptr %i.aqo, align 8, !tbaa !134
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqm, i64 16
  br label %bb.id

bb.ic:                                            ; preds = %bb.ia
  store i32 2, ptr %i.anp, align 8, !tbaa !129
  br label %sljit_set_label.exit.i

bb.id:                                            ; preds = %bb.ib, %bb.hz
  %.0.i.ph.i.i = phi ptr [ %i.aqp, %bb.ib ], [ %i.aqi, %bb.hz ] ; 7 uses
  store ptr null, ptr %.0.i.ph.i.i, align 8, !tbaa !141
  %i.aqq = getelementptr inbounds nuw i8, ptr %.0.i.ph.i.i, i64 16 ; 3 uses
  store i64 16384, ptr %i.aqq, align 8, !tbaa !142
  %i.aqr = getelementptr inbounds nuw i8, ptr %.0.i.ph.i.i, i64 24 ; 2 uses
  store ptr null, ptr %i.aqr, align 8, !tbaa !97
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.anp, i64 40 ; 2 uses
  %i.aqt = load ptr, ptr %i.aqs, align 8, !tbaa !143 ; 2 uses
  %.not.i20.i.i = icmp eq ptr %i.aqt, null
  br i1 %.not.i20.i.i, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  store ptr %.0.i.ph.i.i, ptr %i.aqt, align 8, !tbaa !141
  br label %set_jump.exit.i.i

bb.if:                                            ; preds = %bb.id
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.anp, i64 16
  store ptr %.0.i.ph.i.i, ptr %i.aqu, align 8, !tbaa !144
  br label %set_jump.exit.i.i

set_jump.exit.i.i:                                ; preds = %bb.if, %bb.ie
  store ptr %.0.i.ph.i.i, ptr %i.aqs, align 8, !tbaa !143
  %i.aqv = load i64, ptr %i.apw, align 8, !tbaa !136 ; 2 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr %.0.i.ph.i.i, i64 8
  store i64 %i.aqv, ptr %i.aqw, align 8, !tbaa !145
  %i.aqx = add i64 %i.aqv, 15
  store i64 %i.aqx, ptr %i.apw, align 8, !tbaa !136
  %i.aqy = load ptr, ptr %i.apg, align 8, !tbaa !124 ; 2 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 8 ; 2 uses
  %i.ara = load i64, ptr %i.aqz, align 8, !tbaa !134 ; 2 uses
  %i.arb = add i64 %i.ara, 1                      ; 2 uses
  %i.arc = icmp ult i64 %i.arb, 4081
  br i1 %i.arc, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %set_jump.exit.i.i
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aqy, i64 16
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 %i.ara
  store i64 %i.arb, ptr %i.aqz, align 8, !tbaa !134
  br label %sljit_emit_cmp.exit.i

bb.ih:                                            ; preds = %set_jump.exit.i.i
  %i.arf = getelementptr inbounds nuw i8, ptr %i.anp, i64 56
  %i.arg = load ptr, ptr %i.arf, align 8, !tbaa !123 ; 2 uses
end_hunk_0
