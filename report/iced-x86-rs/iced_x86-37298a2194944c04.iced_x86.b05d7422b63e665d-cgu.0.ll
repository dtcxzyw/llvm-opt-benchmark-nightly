Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iced-x86-rs/original/iced_x86-37298a2194944c04.iced_x86.b05d7422b63e665d-cgu.0?download=true
inline.NumInlined: 5815
inline.NumDeleted: 1335
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter15format_mnemonic:bb.a
  ]

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit: ; preds = %bb.ah
  %.not199 = icmp eq i16 %i.gx, 2189
  br i1 %.not199, label %.thread193, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread191

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread: ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread.thread, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit116
  %i.gy = phi i1 [ %i.fx, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread.thread ], [ %i.gf, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread ], [ %i.gf, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit116 ] ; 2 uses
  %.not21 = icmp sgt i32 %i.l, -1
  br i1 %.not21, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread.thread, label %.thread193

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread191: ; preds = %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ha = load ptr, ptr %i.gz, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val49 = load i32, ptr %i.hb, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val50 = load ptr, ptr %i.hc, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val51 = load ptr, ptr %i.hd, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10857)
  %i.he = load i8, ptr %i.b, align 1, !range !27, !alias.scope !10857, !noundef !21
  %i.hf = trunc nuw i8 %i.he to i1
  %.pre.i108 = load i32, ptr %5, align 4, !alias.scope !10855 ; 2 uses
  br i1 %i.hf, label %bb.aj, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit116

bb.aj:                                            ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread191
  %i.hg = add i32 %.pre.i108, 1                   ; 2 uses
  store i32 %i.hg, ptr %5, align 4, !alias.scope !10855
  tail call void %.val50(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !10858, !inline_history !10834
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit116

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit116: ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread191, %bb.aj
  %i.hh = phi i32 [ %i.hg, %bb.aj ], [ %.pre.i108, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread191 ]
  %i.hi = and i32 %.val49, 33
  %or.cond.i109 = icmp eq i32 %i.hi, 0            ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ha, i64 2968
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ha, i64 2944
  %i.hl = select i1 %or.cond.i109, i64 2936, i64 2960
  %.sroa.0.0.in.i111 = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.hl
  %.sroa.0.0.i112 = load ptr, ptr %.sroa.0.0.in.i111, align 8, !alias.scope !10856, !nonnull !21, !noundef !21
  %.val.i113 = load i64, ptr %i.hk, align 8, !alias.scope !10856 ; 3 uses
  %.val1.i114 = load i64, ptr %i.hj, align 8, !alias.scope !10856
  %.sroa.3.0.i115 = select i1 %or.cond.i109, i64 %.val.i113, i64 %.val1.i114
  tail call void %.val51(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i112, i64 noundef %.sroa.3.0.i115, i8 noundef 17) #45, !noalias !10859, !inline_history !10834
  %i.hm = icmp sgt i64 %.val.i113, -1
  tail call void @llvm.assume(i1 %i.hm)
  %i.hn = trunc i64 %.val.i113 to i32
  %i.ho = add i32 %i.hh, %i.hn
  store i32 %i.ho, ptr %5, align 4, !alias.scope !10855
  store i8 1, ptr %i.b, align 1, !alias.scope !10857
  br label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread.thread: ; preds = %bb.ai, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit125, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread
  %i.hp = phi i1 [ %i.gf, %bb.ai ], [ %i.hq, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit125 ], [ %i.gy, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread ]
  br i1 %.sroa.010.0183, label %bb.am, label %bb.al

.thread193:                                       ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread
  %i.hq = phi i1 [ %i.gf, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit ], [ %i.gy, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread ]
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.hs = load ptr, ptr %i.hr, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val46 = load i32, ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val47 = load ptr, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val48 = load ptr, ptr %i.hv, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10861)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10862)
  %i.hw = load i8, ptr %i.b, align 1, !range !27, !alias.scope !10862, !noundef !21
  %i.hx = trunc nuw i8 %i.hw to i1
  %.pre.i117 = load i32, ptr %5, align 4, !alias.scope !10860 ; 2 uses
  br i1 %i.hx, label %bb.ak, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit125

bb.ak:                                            ; preds = %.thread193
  %i.hy = add i32 %.pre.i117, 1                   ; 2 uses
  store i32 %i.hy, ptr %5, align 4, !alias.scope !10860
  tail call void %.val47(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !10863, !inline_history !10834
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit125

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit125: ; preds = %.thread193, %bb.ak
  %i.hz = phi i32 [ %i.hy, %bb.ak ], [ %.pre.i117, %.thread193 ]
  %i.ia = and i32 %.val46, 33
  %or.cond.i118 = icmp eq i32 %i.ia, 0            ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hs, i64 1672
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hs, i64 1648
  %i.id = select i1 %or.cond.i118, i64 1640, i64 1664
  %.sroa.0.0.in.i120 = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.id
  %.sroa.0.0.i121 = load ptr, ptr %.sroa.0.0.in.i120, align 8, !alias.scope !10861, !nonnull !21, !noundef !21
  %.val.i122 = load i64, ptr %i.ic, align 8, !alias.scope !10861 ; 3 uses
  %.val1.i123 = load i64, ptr %i.ib, align 8, !alias.scope !10861
  %.sroa.3.0.i124 = select i1 %or.cond.i118, i64 %.val.i122, i64 %.val1.i123
  tail call void %.val48(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i121, i64 noundef %.sroa.3.0.i124, i8 noundef 6) #45, !noalias !10864, !inline_history !10834
  %i.ie = icmp sgt i64 %.val.i122, -1
  tail call void @llvm.assume(i1 %i.ie)
  %i.if = trunc i64 %.val.i122 to i32
  %i.ig = add i32 %i.hz, %i.if
  store i32 %i.ig, ptr %5, align 4, !alias.scope !10860
  store i8 1, ptr %i.b, align 1, !alias.scope !10862
  br label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread.thread

bb.al:                                            ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit134, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread.thread
  %i.ih = and i16 %i.f, 1024
  %i.ii = icmp ne i16 %i.ih, 0                    ; 2 uses
  br i1 %i.ii, label %bb.ap, label %bb.ao

bb.am:                                            ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread.thread
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ik = load ptr, ptr %i.ij, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val43 = load i32, ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val44 = load ptr, ptr %i.im, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val45 = load ptr, ptr %i.in, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10867)
  %i.io = load i8, ptr %i.b, align 1, !range !27, !alias.scope !10867, !noundef !21
  %i.ip = trunc nuw i8 %i.io to i1
  %.pre.i126 = load i32, ptr %5, align 4, !alias.scope !10865 ; 2 uses
  br i1 %i.ip, label %bb.an, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit134

bb.an:                                            ; preds = %bb.am
  %i.iq = add i32 %.pre.i126, 1                   ; 2 uses
  store i32 %i.iq, ptr %5, align 4, !alias.scope !10865
  tail call void %.val44(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !10868, !inline_history !10834
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit134

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit134: ; preds = %bb.am, %bb.an
  %i.ir = phi i32 [ %i.iq, %bb.an ], [ %.pre.i126, %bb.am ]
  %i.is = and i32 %.val43, 33
  %or.cond.i127 = icmp eq i32 %i.is, 0            ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ik, i64 1768
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ik, i64 1744
  %i.iv = select i1 %or.cond.i127, i64 1736, i64 1760
  %.sroa.0.0.in.i129 = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.iv
  %.sroa.0.0.i130 = load ptr, ptr %.sroa.0.0.in.i129, align 8, !alias.scope !10866, !nonnull !21, !noundef !21
  %.val.i131 = load i64, ptr %i.iu, align 8, !alias.scope !10866 ; 3 uses
  %.val1.i132 = load i64, ptr %i.it, align 8, !alias.scope !10866
  %.sroa.3.0.i133 = select i1 %or.cond.i127, i64 %.val.i131, i64 %.val1.i132
  tail call void %.val45(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i130, i64 noundef %.sroa.3.0.i133, i8 noundef 15) #45, !noalias !10869, !inline_history !10834
  %i.iw = icmp sgt i64 %.val.i131, -1
  tail call void @llvm.assume(i1 %i.iw)
  %i.ix = trunc i64 %.val.i131 to i32
  %i.iy = add i32 %i.ir, %i.ix
  store i32 %i.iy, ptr %5, align 4, !alias.scope !10865
  store i8 1, ptr %i.b, align 1, !alias.scope !10867
  br label %bb.al

bb.ao:                                            ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit143, %bb.al
  br i1 %i.hp, label %bb.as, label %bb.ar

bb.ap:                                            ; preds = %bb.al
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ja = load ptr, ptr %i.iz, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val40 = load i32, ptr %i.jb, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val41 = load ptr, ptr %i.jc, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val42 = load ptr, ptr %i.jd, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10872)
  %i.je = load i8, ptr %i.b, align 1, !range !27, !alias.scope !10872, !noundef !21
  %i.jf = trunc nuw i8 %i.je to i1
  %.pre.i135 = load i32, ptr %5, align 4, !alias.scope !10870 ; 2 uses
  br i1 %i.jf, label %bb.aq, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit143

bb.aq:                                            ; preds = %bb.ap
  %i.jg = add i32 %.pre.i135, 1                   ; 2 uses
  store i32 %i.jg, ptr %5, align 4, !alias.scope !10870
  tail call void %.val41(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !10873, !inline_history !10834
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit143

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit143: ; preds = %bb.ap, %bb.aq
  %i.jh = phi i32 [ %i.jg, %bb.aq ], [ %.pre.i135, %bb.ap ]
  %i.ji = and i32 %.val40, 33
  %or.cond.i136 = icmp eq i32 %i.ji, 0            ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ja, i64 1384
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ja, i64 1360
  %i.jl = select i1 %or.cond.i136, i64 1352, i64 1376
  %.sroa.0.0.in.i138 = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jl
  %.sroa.0.0.i139 = load ptr, ptr %.sroa.0.0.in.i138, align 8, !alias.scope !10871, !nonnull !21, !noundef !21
  %.val.i140 = load i64, ptr %i.jk, align 8, !alias.scope !10871 ; 3 uses
  %.val1.i141 = load i64, ptr %i.jj, align 8, !alias.scope !10871
  %.sroa.3.0.i142 = select i1 %or.cond.i136, i64 %.val.i140, i64 %.val1.i141
  tail call void %.val42(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i139, i64 noundef %.sroa.3.0.i142, i8 noundef 14) #45, !noalias !10874, !inline_history !10834
  %i.jm = icmp sgt i64 %.val.i140, -1
  tail call void @llvm.assume(i1 %i.jm)
  %i.jn = trunc i64 %.val.i140 to i32
  %i.jo = add i32 %i.jh, %i.jn
  store i32 %i.jo, ptr %5, align 4, !alias.scope !10870
  store i8 1, ptr %i.b, align 1, !alias.scope !10872
  br label %bb.ao

bb.ar:                                            ; preds = %bb.av, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit154, %bb.at, %bb.ao
  %or.cond = or i1 %i.ii, %i.ei
  br i1 %or.cond, label %bb.c, label %bb.ay

bb.as:                                            ; preds = %bb.ao
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jq = load i16, ptr %i.jp, align 8, !range !28, !noundef !21 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.js = load i32, ptr %i.jr, align 4, !noundef !21
  %i.jt = and i32 %i.js, 4
  %.not22 = icmp eq i32 %i.jt, 0
  br i1 %.not22, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  switch i16 %i.jq, label %bb.ar [
    i16 153, label %bb.au
    i16 154, label %bb.au
    i16 155, label %bb.au
    i16 156, label %bb.au
    i16 157, label %bb.au
    i16 158, label %bb.au
    i16 331, label %bb.au
    i16 332, label %bb.au
    i16 333, label %bb.au
    i16 334, label %bb.au
    i16 335, label %bb.au
    i16 336, label %bb.au
    i16 337, label %bb.au
    i16 338, label %bb.au
    i16 343, label %bb.au
    i16 344, label %bb.au
    i16 345, label %bb.au
    i16 346, label %bb.au
    i16 347, label %bb.au
    i16 348, label %bb.au
    i16 349, label %bb.au
    i16 350, label %bb.au
    i16 351, label %bb.au
    i16 352, label %bb.au
    i16 353, label %bb.au
    i16 354, label %bb.au
    i16 1958, label %bb.au
    i16 1959, label %bb.au
    i16 1960, label %bb.au
    i16 1961, label %bb.au
    i16 1962, label %bb.au
    i16 1963, label %bb.au
    i16 1964, label %bb.au
    i16 1965, label %bb.au
    i16 1966, label %bb.au
    i16 1969, label %bb.au
    i16 1970, label %bb.au
    i16 1971, label %bb.au
    i16 1972, label %bb.au
    i16 1973, label %bb.au
    i16 1974, label %bb.au
    i16 1975, label %bb.au
    i16 1976, label %bb.au
    i16 1977, label %bb.au
    i16 1978, label %bb.au
    i16 1979, label %bb.au
    i16 1980, label %bb.au
    i16 1981, label %bb.au
    i16 1982, label %bb.au
    i16 1983, label %bb.au
    i16 1984, label %bb.au
    i16 1985, label %bb.au
    i16 1986, label %bb.au
    i16 4312, label %bb.au
    i16 4313, label %bb.au
    i16 4314, label %bb.au
    i16 4315, label %bb.au
    i16 4316, label %bb.au
    i16 4317, label %bb.au
    i16 4818, label %bb.au
    i16 4819, label %bb.au
    i16 4820, label %bb.au
    i16 4821, label %bb.au
    i16 4822, label %bb.au
    i16 4823, label %bb.au
    i16 4824, label %bb.au
    i16 4825, label %bb.au
    i16 4826, label %bb.au
    i16 4827, label %bb.au
    i16 4828, label %bb.au
    i16 4829, label %bb.au
    i16 4830, label %bb.au
    i16 4831, label %bb.au
    i16 4832, label %bb.au
    i16 394, label %bb.au
    i16 395, label %bb.au
    i16 396, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.as
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.jv = load ptr, ptr %i.ju, align 8, !nonnull !21, !align !25, !noundef !21 ; 2 uses
  switch i16 %i.jq, label %bb.av [
    i16 335, label %bb.aw
    i16 336, label %bb.aw
    i16 337, label %bb.aw
    i16 338, label %bb.aw
    i16 351, label %bb.aw
    i16 352, label %bb.aw
    i16 353, label %bb.aw
    i16 354, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 1968
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val37 = load i32, ptr %i.jx, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val38 = load ptr, ptr %i.jy, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val39 = load ptr, ptr %i.jz, align 8
  call fastcc void @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix(i32 %.val37, ptr noundef nonnull %2, ptr %.val38, ptr %.val39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef align 4 dereferenceable(4) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jw, i8 noundef 7, ptr noalias nofree noundef dereferenceable(1) %i.b)
  br label %bb.ar

bb.aw:                                            ; preds = %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 2016
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.kc = load i8, ptr %i.kb, align 8, !range !27, !alias.scope !10875, !noundef !21
  %.sroa.0.0.i145 = zext nneg i8 %i.kc to i64
  %i.kd = getelementptr inbounds nuw [48 x i8], ptr %i.ka, i64 %.sroa.0.0.i145 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val34 = load i32, ptr %i.ke, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val35 = load ptr, ptr %i.kf, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val36 = load ptr, ptr %i.kg, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10877)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10878)
  %i.kh = load i8, ptr %i.b, align 1, !range !27, !alias.scope !10878, !noundef !21
  %i.ki = trunc nuw i8 %i.kh to i1
  %.pre.i146 = load i32, ptr %5, align 4, !alias.scope !10876 ; 2 uses
  br i1 %i.ki, label %bb.ax, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit154

bb.ax:                                            ; preds = %bb.aw
  %i.kj = add i32 %.pre.i146, 1                   ; 2 uses
  store i32 %i.kj, ptr %5, align 4, !alias.scope !10876
  tail call void %.val35(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !10879, !inline_history !10834
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit154

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit154: ; preds = %bb.aw, %bb.ax
  %i.kk = phi i32 [ %i.kj, %bb.ax ], [ %.pre.i146, %bb.aw ]
  %i.kl = and i32 %.val34, 33
  %or.cond.i147 = icmp eq i32 %i.kl, 0            ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kd, i64 40
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %.sroa.0.0.in.v.i148 = select i1 %or.cond.i147, i64 8, i64 32
  %.sroa.0.0.in.i149 = getelementptr inbounds nuw i8, ptr %i.kd, i64 %.sroa.0.0.in.v.i148
  %.sroa.0.0.i150 = load ptr, ptr %.sroa.0.0.in.i149, align 8, !alias.scope !10877, !nonnull !21, !noundef !21
  %.val.i151 = load i64, ptr %i.kn, align 8, !alias.scope !10877 ; 3 uses
  %.val1.i152 = load i64, ptr %i.km, align 8, !alias.scope !10877
  %.sroa.3.0.i153 = select i1 %or.cond.i147, i64 %.val.i151, i64 %.val1.i152
  tail call void %.val36(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i150, i64 noundef %.sroa.3.0.i153, i8 noundef 8) #45, !noalias !10880, !inline_history !10834
  %i.ko = icmp sgt i64 %.val.i151, -1
  tail call void @llvm.assume(i1 %i.ko)
  %i.kp = trunc i64 %.val.i151 to i32
  %i.kq = add i32 %i.kk, %i.kp
  store i32 %i.kq, ptr %5, align 4, !alias.scope !10876
  store i8 1, ptr %i.b, align 1, !alias.scope !10878
  br label %bb.ar

bb.ay:                                            ; preds = %bb.ar
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.ks = load i32, ptr %i.kr, align 4, !noundef !21
  %i.kt = and i32 %i.ks, 4
  %.not23 = icmp eq i32 %i.kt, 0
  br i1 %.not23, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.kv = load i16, ptr %i.ku, align 8, !range !28, !noundef !21
  switch i16 %i.kv, label %bb.c [
    i16 153, label %bb.ba
    i16 154, label %bb.ba
    i16 155, label %bb.ba
    i16 156, label %bb.ba
    i16 157, label %bb.ba
    i16 158, label %bb.ba
    i16 331, label %bb.ba
    i16 332, label %bb.ba
    i16 333, label %bb.ba
    i16 334, label %bb.ba
    i16 335, label %bb.ba
    i16 336, label %bb.ba
    i16 337, label %bb.ba
    i16 338, label %bb.ba
    i16 343, label %bb.ba
    i16 344, label %bb.ba
    i16 345, label %bb.ba
    i16 346, label %bb.ba
    i16 347, label %bb.ba
    i16 348, label %bb.ba
    i16 349, label %bb.ba
    i16 350, label %bb.ba
    i16 351, label %bb.ba
    i16 352, label %bb.ba
    i16 353, label %bb.ba
    i16 354, label %bb.ba
    i16 1958, label %bb.ba
    i16 1959, label %bb.ba
    i16 1960, label %bb.ba
    i16 1961, label %bb.ba
    i16 1962, label %bb.ba
    i16 1963, label %bb.ba
    i16 1964, label %bb.ba
    i16 1965, label %bb.ba
    i16 1966, label %bb.ba
    i16 1969, label %bb.ba
    i16 1970, label %bb.ba
    i16 1971, label %bb.ba
    i16 1972, label %bb.ba
    i16 1973, label %bb.ba
    i16 1974, label %bb.ba
    i16 1975, label %bb.ba
    i16 1976, label %bb.ba
    i16 1977, label %bb.ba
    i16 1978, label %bb.ba
    i16 1979, label %bb.ba
    i16 1980, label %bb.ba
    i16 1981, label %bb.ba
    i16 1982, label %bb.ba
    i16 1983, label %bb.ba
    i16 1984, label %bb.ba
    i16 1985, label %bb.ba
    i16 1986, label %bb.ba
    i16 4312, label %bb.ba
    i16 4313, label %bb.ba
    i16 4314, label %bb.ba
    i16 4315, label %bb.ba
    i16 4316, label %bb.ba
    i16 4317, label %bb.ba
    i16 4818, label %bb.ba
    i16 4819, label %bb.ba
    i16 4820, label %bb.ba
    i16 4821, label %bb.ba
    i16 4822, label %bb.ba
    i16 4823, label %bb.ba
    i16 4824, label %bb.ba
    i16 4825, label %bb.ba
    i16 4826, label %bb.ba
    i16 4827, label %bb.ba
    i16 4828, label %bb.ba
    i16 4829, label %bb.ba
    i16 4830, label %bb.ba
    i16 4831, label %bb.ba
    i16 4832, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.ay
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.kx = load ptr, ptr %i.kw, align 8, !nonnull !21, !align !25, !noundef !21
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 2112
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 273
  %i.la = load i8, ptr %i.kz, align 1, !range !27, !alias.scope !10881, !noundef !21
  %.sroa.0.0.i156 = zext nneg i8 %i.la to i64
  %i.lb = getelementptr inbounds nuw [48 x i8], ptr %i.ky, i64 %.sroa.0.0.i156 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val = load i32, ptr %i.lc, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val32 = load ptr, ptr %i.ld, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val33 = load ptr, ptr %i.le, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10884)
  %i.lf = load i8, ptr %i.b, align 1, !range !27, !alias.scope !10884, !noundef !21
  %i.lg = trunc nuw i8 %i.lf to i1
  %.pre.i157 = load i32, ptr %5, align 4, !alias.scope !10882 ; 2 uses
  br i1 %i.lg, label %bb.bb, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit165

bb.bb:                                            ; preds = %bb.ba
  %i.lh = add i32 %.pre.i157, 1                   ; 2 uses
  store i32 %i.lh, ptr %5, align 4, !alias.scope !10882
  tail call void %.val32(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !10885, !inline_history !10834
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit165

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit165: ; preds = %bb.ba, %bb.bb
  %i.li = phi i32 [ %i.lh, %bb.bb ], [ %.pre.i157, %bb.ba ]
  %i.lj = and i32 %.val, 33
  %or.cond.i158 = icmp eq i32 %i.lj, 0            ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lb, i64 40
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %.sroa.0.0.in.v.i159 = select i1 %or.cond.i158, i64 8, i64 32
  %.sroa.0.0.in.i160 = getelementptr inbounds nuw i8, ptr %i.lb, i64 %.sroa.0.0.in.v.i159
  %.sroa.0.0.i161 = load ptr, ptr %.sroa.0.0.in.i160, align 8, !alias.scope !10883, !nonnull !21, !noundef !21
  %.val.i162 = load i64, ptr %i.ll, align 8, !alias.scope !10883 ; 3 uses
  %.val1.i163 = load i64, ptr %i.lk, align 8, !alias.scope !10883
  %.sroa.3.0.i164 = select i1 %or.cond.i158, i64 %.val.i162, i64 %.val1.i163
  tail call void %.val33(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i161, i64 noundef %.sroa.3.0.i164, i8 noundef 9) #45, !noalias !10886, !inline_history !10834
  %i.lm = icmp sgt i64 %.val.i162, -1
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter15format_mnemonic:bb.a
  %.val.i104 = load i64, ptr %i.dm, align 8, !alias.scope !11209 ; 3 uses
  %.val1.i105 = load i64, ptr %i.dl, align 8, !alias.scope !11209
  %.sroa.3.0.i106 = select i1 %or.cond.i100, i64 %.val.i104, i64 %.val1.i105
  tail call void %.val66(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i103, i64 noundef %.sroa.3.0.i106, i8 noundef 6) #45, !noalias !11212, !inline_history !11195
  %i.do = icmp sgt i64 %.val.i104, -1
  tail call void @llvm.assume(i1 %i.do)
  %i.dp = trunc i64 %.val.i104 to i32
  %i.dq = add i32 %i.dj, %i.dp
  store i32 %i.dq, ptr %5, align 4, !alias.scope !11208
  store i8 1, ptr %i.a, align 1, !alias.scope !11210
  br label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread.thread

bb.y:                                             ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread.thread
  %i.dr = and i16 %i.e, 64
  %i.ds = icmp eq i16 %i.dr, 0
  br i1 %i.ds, label %bb.ad, label %bb.ab

bb.z:                                             ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread.thread
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.du = load ptr, ptr %i.dt, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val61 = load i32, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val62 = load ptr, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val63 = load ptr, ptr %i.dx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11214)
  %i.dy = trunc nuw i8 %i.cx to i1
  %.pre.i108 = load i32, ptr %5, align 4, !alias.scope !11213 ; 2 uses
  br i1 %i.dy, label %bb.aa, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit116

bb.aa:                                            ; preds = %bb.z
  %i.dz = add i32 %.pre.i108, 1                   ; 2 uses
  store i32 %i.dz, ptr %5, align 4, !alias.scope !11213
  tail call void %.val62(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11215, !inline_history !11195
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit116

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit116: ; preds = %bb.z, %bb.aa
  %i.ea = phi i32 [ %i.dz, %bb.aa ], [ %.pre.i108, %bb.z ]
  %i.eb = and i32 %.val61, 33
  %or.cond.i109 = icmp eq i32 %i.eb, 0            ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 1576
  %i.ed = getelementptr inbounds nuw i8, ptr %i.du, i64 1552
  %i.ee = select i1 %or.cond.i109, i64 1544, i64 1568
  %.sroa.0.0.in.i111 = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ee
  %.sroa.0.0.i112 = load ptr, ptr %.sroa.0.0.in.i111, align 8, !alias.scope !11214, !nonnull !21, !noundef !21
  %.val.i113 = load i64, ptr %i.ed, align 8, !alias.scope !11214 ; 2 uses
  %.val1.i114 = load i64, ptr %i.ec, align 8, !alias.scope !11214
  %.sroa.3.0.i115 = select i1 %or.cond.i109, i64 %.val.i113, i64 %.val1.i114
  tail call void %.val63(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i112, i64 noundef %.sroa.3.0.i115, i8 noundef 12) #45, !noalias !11216, !inline_history !11195
  br label %.sink.split

bb.ab:                                            ; preds = %bb.y
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.eg = load ptr, ptr %i.ef, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val58 = load i32, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val59 = load ptr, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val60 = load ptr, ptr %i.ej, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11218)
  %i.ek = trunc nuw i8 %i.cx to i1
  %.pre.i117 = load i32, ptr %5, align 4, !alias.scope !11217 ; 2 uses
  br i1 %i.ek, label %bb.ac, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit125

bb.ac:                                            ; preds = %bb.ab
  %i.el = add i32 %.pre.i117, 1                   ; 2 uses
  store i32 %i.el, ptr %5, align 4, !alias.scope !11217
  tail call void %.val59(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11219, !inline_history !11195
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit125

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit125: ; preds = %bb.ab, %bb.ac
  %i.em = phi i32 [ %i.el, %bb.ac ], [ %.pre.i117, %bb.ab ]
  %i.en = and i32 %.val58, 33
  %or.cond.i118 = icmp eq i32 %i.en, 0            ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eg, i64 1624
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 1600
  %i.eq = select i1 %or.cond.i118, i64 1592, i64 1616
  %.sroa.0.0.in.i120 = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.eq
  %.sroa.0.0.i121 = load ptr, ptr %.sroa.0.0.in.i120, align 8, !alias.scope !11218, !nonnull !21, !noundef !21
  %.val.i122 = load i64, ptr %i.ep, align 8, !alias.scope !11218 ; 2 uses
  %.val1.i123 = load i64, ptr %i.eo, align 8, !alias.scope !11218
  %.sroa.3.0.i124 = select i1 %or.cond.i118, i64 %.val.i122, i64 %.val1.i123
  tail call void %.val60(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i121, i64 noundef %.sroa.3.0.i124, i8 noundef 13) #45, !noalias !11220, !inline_history !11195
  br label %.sink.split

.sink.split:                                      ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit116, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit125
  %.val.i122.sink209 = phi i64 [ %.val.i122, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit125 ], [ %.val.i113, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit116 ] ; 2 uses
  %.sink207 = phi i32 [ %i.em, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit125 ], [ %i.ea, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit116 ]
  %i.er = icmp sgt i64 %.val.i122.sink209, -1
  tail call void @llvm.assume(i1 %i.er)
  %i.es = trunc i64 %.val.i122.sink209 to i32
  %i.et = add i32 %.sink207, %i.es
  store i32 %i.et, ptr %5, align 4
  store i8 1, ptr %i.a, align 1
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %bb.y
  %i.eu = phi i8 [ %i.cx, %bb.y ], [ 1, %.sink.split ] ; 2 uses
  br i1 %.sroa.026.0169, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit134, %bb.ad
  %i.ev = phi i8 [ 1, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit134 ], [ %i.eu, %bb.ad ] ; 2 uses
  %i.ew = and i16 %i.e, 128
  %i.ex = icmp ne i16 %i.ew, 0                    ; 2 uses
  br i1 %i.ex, label %bb.ai, label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ez = load ptr, ptr %i.ey, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val55 = load i32, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val56 = load ptr, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val57 = load ptr, ptr %i.fc, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11223)
  %i.fd = trunc nuw i8 %i.eu to i1
  %.pre.i126 = load i32, ptr %5, align 4, !alias.scope !11221 ; 2 uses
  br i1 %i.fd, label %bb.ag, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit134

bb.ag:                                            ; preds = %bb.af
  %i.fe = add i32 %.pre.i126, 1                   ; 2 uses
  store i32 %i.fe, ptr %5, align 4, !alias.scope !11221
  tail call void %.val56(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11224, !inline_history !11195
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit134

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit134: ; preds = %bb.af, %bb.ag
  %i.ff = phi i32 [ %i.fe, %bb.ag ], [ %.pre.i126, %bb.af ]
  %i.fg = and i32 %.val55, 33
  %or.cond.i127 = icmp eq i32 %i.fg, 0            ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 1768
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ez, i64 1744
  %i.fj = select i1 %or.cond.i127, i64 1736, i64 1760
  %.sroa.0.0.in.i129 = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fj
  %.sroa.0.0.i130 = load ptr, ptr %.sroa.0.0.in.i129, align 8, !alias.scope !11222, !nonnull !21, !noundef !21
  %.val.i131 = load i64, ptr %i.fi, align 8, !alias.scope !11222 ; 3 uses
  %.val1.i132 = load i64, ptr %i.fh, align 8, !alias.scope !11222
  %.sroa.3.0.i133 = select i1 %or.cond.i127, i64 %.val.i131, i64 %.val1.i132
  tail call void %.val57(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i130, i64 noundef %.sroa.3.0.i133, i8 noundef 15) #45, !noalias !11225, !inline_history !11195
  %i.fk = icmp sgt i64 %.val.i131, -1
  tail call void @llvm.assume(i1 %i.fk)
  %i.fl = trunc i64 %.val.i131 to i32
  %i.fm = add i32 %i.ff, %i.fl
  store i32 %i.fm, ptr %5, align 4, !alias.scope !11221
  store i8 1, ptr %i.a, align 1, !alias.scope !11223
  br label %bb.ae

bb.ah:                                            ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit143, %bb.ae
  %i.fn = phi i8 [ 1, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit143 ], [ %i.ev, %bb.ae ]
  br i1 %i.cw, label %bb.al, label %bb.ak

bb.ai:                                            ; preds = %bb.ae
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.fp = load ptr, ptr %i.fo, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val52 = load i32, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val53 = load ptr, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val54 = load ptr, ptr %i.fs, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11228)
  %i.ft = trunc nuw i8 %i.ev to i1
  %.pre.i135 = load i32, ptr %5, align 4, !alias.scope !11226 ; 2 uses
  br i1 %i.ft, label %bb.aj, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit143

bb.aj:                                            ; preds = %bb.ai
  %i.fu = add i32 %.pre.i135, 1                   ; 2 uses
  store i32 %i.fu, ptr %5, align 4, !alias.scope !11226
  tail call void %.val53(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11229, !inline_history !11195
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit143

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit143: ; preds = %bb.ai, %bb.aj
  %i.fv = phi i32 [ %i.fu, %bb.aj ], [ %.pre.i135, %bb.ai ]
  %i.fw = and i32 %.val52, 33
  %or.cond.i136 = icmp eq i32 %i.fw, 0            ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fp, i64 1384
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fp, i64 1360
  %i.fz = select i1 %or.cond.i136, i64 1352, i64 1376
  %.sroa.0.0.in.i138 = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fz
  %.sroa.0.0.i139 = load ptr, ptr %.sroa.0.0.in.i138, align 8, !alias.scope !11227, !nonnull !21, !noundef !21
  %.val.i140 = load i64, ptr %i.fy, align 8, !alias.scope !11227 ; 3 uses
  %.val1.i141 = load i64, ptr %i.fx, align 8, !alias.scope !11227
  %.sroa.3.0.i142 = select i1 %or.cond.i136, i64 %.val.i140, i64 %.val1.i141
  tail call void %.val54(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i139, i64 noundef %.sroa.3.0.i142, i8 noundef 14) #45, !noalias !11230, !inline_history !11195
  %i.ga = icmp sgt i64 %.val.i140, -1
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = trunc i64 %.val.i140 to i32
  %i.gc = add i32 %i.fv, %i.gb
  store i32 %i.gc, ptr %5, align 4, !alias.scope !11226
  store i8 1, ptr %i.a, align 1, !alias.scope !11228
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ao, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit154, %bb.am, %bb.ah
  %or.cond = or i1 %i.ex, %i.aa
  br i1 %or.cond, label %bb.av, label %bb.ar

bb.al:                                            ; preds = %bb.ah
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ge = load i16, ptr %i.gd, align 8, !range !28, !noundef !21 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.gg = load i32, ptr %i.gf, align 4, !noundef !21
  %i.gh = and i32 %i.gg, 4
  %.not33 = icmp eq i32 %i.gh, 0
  br i1 %.not33, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  switch i16 %i.ge, label %bb.ak [
    i16 153, label %bb.an
    i16 154, label %bb.an
    i16 155, label %bb.an
    i16 156, label %bb.an
    i16 157, label %bb.an
    i16 158, label %bb.an
    i16 331, label %bb.an
    i16 332, label %bb.an
    i16 333, label %bb.an
    i16 334, label %bb.an
    i16 335, label %bb.an
    i16 336, label %bb.an
    i16 337, label %bb.an
    i16 338, label %bb.an
    i16 343, label %bb.an
    i16 344, label %bb.an
    i16 345, label %bb.an
    i16 346, label %bb.an
    i16 347, label %bb.an
    i16 348, label %bb.an
    i16 349, label %bb.an
    i16 350, label %bb.an
    i16 351, label %bb.an
    i16 352, label %bb.an
    i16 353, label %bb.an
    i16 354, label %bb.an
    i16 1958, label %bb.an
    i16 1959, label %bb.an
    i16 1960, label %bb.an
    i16 1961, label %bb.an
    i16 1962, label %bb.an
    i16 1963, label %bb.an
    i16 1964, label %bb.an
    i16 1965, label %bb.an
    i16 1966, label %bb.an
    i16 1969, label %bb.an
    i16 1970, label %bb.an
    i16 1971, label %bb.an
    i16 1972, label %bb.an
    i16 1973, label %bb.an
    i16 1974, label %bb.an
    i16 1975, label %bb.an
    i16 1976, label %bb.an
    i16 1977, label %bb.an
    i16 1978, label %bb.an
    i16 1979, label %bb.an
    i16 1980, label %bb.an
    i16 1981, label %bb.an
    i16 1982, label %bb.an
    i16 1983, label %bb.an
    i16 1984, label %bb.an
    i16 1985, label %bb.an
    i16 1986, label %bb.an
    i16 4312, label %bb.an
    i16 4313, label %bb.an
    i16 4314, label %bb.an
    i16 4315, label %bb.an
    i16 4316, label %bb.an
    i16 4317, label %bb.an
    i16 4818, label %bb.an
    i16 4819, label %bb.an
    i16 4820, label %bb.an
    i16 4821, label %bb.an
    i16 4822, label %bb.an
    i16 4823, label %bb.an
    i16 4824, label %bb.an
    i16 4825, label %bb.an
    i16 4826, label %bb.an
    i16 4827, label %bb.an
    i16 4828, label %bb.an
    i16 4829, label %bb.an
    i16 4830, label %bb.an
    i16 4831, label %bb.an
    i16 4832, label %bb.an
    i16 394, label %bb.an
    i16 395, label %bb.an
    i16 396, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.al
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.gj = load ptr, ptr %i.gi, align 8, !nonnull !21, !align !25, !noundef !21 ; 2 uses
  switch i16 %i.ge, label %bb.ao [
    i16 335, label %bb.ap
    i16 336, label %bb.ap
    i16 337, label %bb.ap
    i16 338, label %bb.ap
    i16 351, label %bb.ap
    i16 352, label %bb.ap
    i16 353, label %bb.ap
    i16 354, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 1968
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val49 = load i32, ptr %i.gl, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val50 = load ptr, ptr %i.gm, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val51 = load ptr, ptr %i.gn, align 8
  call fastcc void @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix(i32 %.val49, ptr noundef nonnull %2, ptr %.val50, ptr %.val51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef align 4 dereferenceable(4) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gk, i8 noundef 7, ptr noalias nofree noundef dereferenceable(1) %i.a)
  br label %bb.ak

bb.ap:                                            ; preds = %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 2016
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.gq = load i8, ptr %i.gp, align 8, !range !27, !alias.scope !11231, !noundef !21
  %.sroa.0.0.i145 = zext nneg i8 %i.gq to i64
  %i.gr = getelementptr inbounds nuw [48 x i8], ptr %i.go, i64 %.sroa.0.0.i145 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val46 = load i32, ptr %i.gs, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val47 = load ptr, ptr %i.gt, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val48 = load ptr, ptr %i.gu, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11234)
  %i.gv = trunc nuw i8 %i.fn to i1
  %.pre.i146 = load i32, ptr %5, align 4, !alias.scope !11232 ; 2 uses
  br i1 %i.gv, label %bb.aq, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit154

bb.aq:                                            ; preds = %bb.ap
  %i.gw = add i32 %.pre.i146, 1                   ; 2 uses
  store i32 %i.gw, ptr %5, align 4, !alias.scope !11232
  tail call void %.val47(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11235, !inline_history !11195
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit154

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit154: ; preds = %bb.ap, %bb.aq
  %i.gx = phi i32 [ %i.gw, %bb.aq ], [ %.pre.i146, %bb.ap ]
  %i.gy = and i32 %.val46, 33
  %or.cond.i147 = icmp eq i32 %i.gy, 0            ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gr, i64 40
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %.sroa.0.0.in.v.i148 = select i1 %or.cond.i147, i64 8, i64 32
  %.sroa.0.0.in.i149 = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.sroa.0.0.in.v.i148
  %.sroa.0.0.i150 = load ptr, ptr %.sroa.0.0.in.i149, align 8, !alias.scope !11233, !nonnull !21, !noundef !21
  %.val.i151 = load i64, ptr %i.ha, align 8, !alias.scope !11233 ; 3 uses
  %.val1.i152 = load i64, ptr %i.gz, align 8, !alias.scope !11233
  %.sroa.3.0.i153 = select i1 %or.cond.i147, i64 %.val.i151, i64 %.val1.i152
  tail call void %.val48(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i150, i64 noundef %.sroa.3.0.i153, i8 noundef 8) #45, !noalias !11236, !inline_history !11195
  %i.hb = icmp sgt i64 %.val.i151, -1
  tail call void @llvm.assume(i1 %i.hb)
  %i.hc = trunc i64 %.val.i151 to i32
  %i.hd = add i32 %i.gx, %i.hc
  store i32 %i.hd, ptr %5, align 4, !alias.scope !11232
  store i8 1, ptr %i.a, align 1, !alias.scope !11234
  br label %bb.ak

bb.ar:                                            ; preds = %bb.ak
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.hf = load i32, ptr %i.he, align 4, !noundef !21
  %i.hg = and i32 %i.hf, 4
  %.not34 = icmp eq i32 %i.hg, 0
  br i1 %.not34, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hi = load i16, ptr %i.hh, align 8, !range !28, !noundef !21
  switch i16 %i.hi, label %bb.av [
    i16 153, label %bb.at
    i16 154, label %bb.at
    i16 155, label %bb.at
    i16 156, label %bb.at
    i16 157, label %bb.at
    i16 158, label %bb.at
    i16 331, label %bb.at
    i16 332, label %bb.at
    i16 333, label %bb.at
    i16 334, label %bb.at
    i16 335, label %bb.at
    i16 336, label %bb.at
    i16 337, label %bb.at
    i16 338, label %bb.at
    i16 343, label %bb.at
    i16 344, label %bb.at
    i16 345, label %bb.at
    i16 346, label %bb.at
    i16 347, label %bb.at
    i16 348, label %bb.at
    i16 349, label %bb.at
    i16 350, label %bb.at
    i16 351, label %bb.at
    i16 352, label %bb.at
    i16 353, label %bb.at
    i16 354, label %bb.at
    i16 1958, label %bb.at
    i16 1959, label %bb.at
    i16 1960, label %bb.at
    i16 1961, label %bb.at
    i16 1962, label %bb.at
    i16 1963, label %bb.at
    i16 1964, label %bb.at
    i16 1965, label %bb.at
    i16 1966, label %bb.at
    i16 1969, label %bb.at
    i16 1970, label %bb.at
    i16 1971, label %bb.at
    i16 1972, label %bb.at
    i16 1973, label %bb.at
    i16 1974, label %bb.at
    i16 1975, label %bb.at
    i16 1976, label %bb.at
    i16 1977, label %bb.at
    i16 1978, label %bb.at
    i16 1979, label %bb.at
    i16 1980, label %bb.at
    i16 1981, label %bb.at
    i16 1982, label %bb.at
    i16 1983, label %bb.at
    i16 1984, label %bb.at
    i16 1985, label %bb.at
    i16 1986, label %bb.at
    i16 4312, label %bb.at
    i16 4313, label %bb.at
    i16 4314, label %bb.at
    i16 4315, label %bb.at
    i16 4316, label %bb.at
    i16 4317, label %bb.at
    i16 4818, label %bb.at
    i16 4819, label %bb.at
    i16 4820, label %bb.at
    i16 4821, label %bb.at
    i16 4822, label %bb.at
    i16 4823, label %bb.at
    i16 4824, label %bb.at
    i16 4825, label %bb.at
    i16 4826, label %bb.at
    i16 4827, label %bb.at
    i16 4828, label %bb.at
    i16 4829, label %bb.at
    i16 4830, label %bb.at
    i16 4831, label %bb.at
    i16 4832, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.ar
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.hk = load ptr, ptr %i.hj, align 8, !nonnull !21, !align !25, !noundef !21
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 2112
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 273
  %i.hn = load i8, ptr %i.hm, align 1, !range !27, !alias.scope !11237, !noundef !21
  %.sroa.0.0.i156 = zext nneg i8 %i.hn to i64
  %i.ho = getelementptr inbounds nuw [48 x i8], ptr %i.hl, i64 %.sroa.0.0.i156 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val43 = load i32, ptr %i.hp, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val44 = load ptr, ptr %i.hq, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val45 = load ptr, ptr %i.hr, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11240)
  %i.hs = load i8, ptr %i.a, align 1, !range !27, !alias.scope !11240, !noundef !21
  %i.ht = trunc nuw i8 %i.hs to i1
  %.pre.i157 = load i32, ptr %5, align 4, !alias.scope !11238 ; 2 uses
  br i1 %i.ht, label %bb.au, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit165

bb.au:                                            ; preds = %bb.at
  %i.hu = add i32 %.pre.i157, 1                   ; 2 uses
  store i32 %i.hu, ptr %5, align 4, !alias.scope !11238
  tail call void %.val44(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11241, !inline_history !11195
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit165

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit165: ; preds = %bb.at, %bb.au
  %i.hv = phi i32 [ %i.hu, %bb.au ], [ %.pre.i157, %bb.at ]
  %i.hw = and i32 %.val43, 33
  %or.cond.i158 = icmp eq i32 %i.hw, 0            ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %.sroa.0.0.in.v.i159 = select i1 %or.cond.i158, i64 8, i64 32
  %.sroa.0.0.in.i160 = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.sroa.0.0.in.v.i159
  %.sroa.0.0.i161 = load ptr, ptr %.sroa.0.0.in.i160, align 8, !alias.scope !11239, !nonnull !21, !noundef !21
  %.val.i162 = load i64, ptr %i.hy, align 8, !alias.scope !11239 ; 3 uses
  %.val1.i163 = load i64, ptr %i.hx, align 8, !alias.scope !11239
  %.sroa.3.0.i164 = select i1 %or.cond.i158, i64 %.val.i162, i64 %.val1.i163
  tail call void %.val45(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i161, i64 noundef %.sroa.3.0.i164, i8 noundef 9) #45, !noalias !11242, !inline_history !11195
  %i.hz = icmp sgt i64 %.val.i162, -1
  tail call void @llvm.assume(i1 %i.hz)
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter15format_mnemonic:bb.a

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit: ; preds = %bb.aa
  %.not166 = icmp eq i16 %i.ea, 2189
  br i1 %.not166, label %.thread161, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread159

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread: ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread.thread, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit97
  %i.eb = phi i1 [ %i.dj, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread ], [ %i.dj, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit97 ], [ %i.da, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread.thread ] ; 2 uses
  %i.ec = phi i8 [ %i.dh, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread ], [ 1, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit97 ], [ %i.bn, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread.thread ] ; 2 uses
  %.not14 = icmp sgt i32 %i.i, -1
  br i1 %.not14, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread.thread, label %.thread161

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread159: ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ee = load ptr, ptr %i.ed, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val41 = load i32, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val42 = load ptr, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val43 = load ptr, ptr %i.eh, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11594)
  %i.ei = trunc nuw i8 %i.dh to i1
  %.pre.i89 = load i32, ptr %5, align 4, !alias.scope !11592 ; 2 uses
  br i1 %i.ei, label %bb.ac, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit97

bb.ac:                                            ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread159
  %i.ej = add i32 %.pre.i89, 1                    ; 2 uses
  store i32 %i.ej, ptr %5, align 4, !alias.scope !11592
  tail call void %.val42(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11595, !inline_history !11572
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit97

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit97: ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread159, %bb.ac
  %i.ek = phi i32 [ %i.ej, %bb.ac ], [ %.pre.i89, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread159 ]
  %i.el = and i32 %.val41, 33
  %or.cond.i90 = icmp eq i32 %i.el, 0             ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 2968
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 2944
  %i.eo = select i1 %or.cond.i90, i64 2936, i64 2960
  %.sroa.0.0.in.i92 = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eo
  %.sroa.0.0.i93 = load ptr, ptr %.sroa.0.0.in.i92, align 8, !alias.scope !11593, !nonnull !21, !noundef !21
  %.val.i94 = load i64, ptr %i.en, align 8, !alias.scope !11593 ; 3 uses
  %.val1.i95 = load i64, ptr %i.em, align 8, !alias.scope !11593
  %.sroa.3.0.i96 = select i1 %or.cond.i90, i64 %.val.i94, i64 %.val1.i95
  tail call void %.val43(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i93, i64 noundef %.sroa.3.0.i96, i8 noundef 17) #45, !noalias !11596, !inline_history !11572
  %i.ep = icmp sgt i64 %.val.i94, -1
  tail call void @llvm.assume(i1 %i.ep)
  %i.eq = trunc i64 %.val.i94 to i32
  %i.er = add i32 %i.ek, %i.eq
  store i32 %i.er, ptr %5, align 4, !alias.scope !11592
  store i8 1, ptr %i.a, align 1, !alias.scope !11594
  br label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread.thread: ; preds = %bb.ab, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit106, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread
  %i.es = phi i1 [ %i.dj, %bb.ab ], [ %i.eu, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit106 ], [ %i.eb, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread ]
  %i.et = phi i8 [ %i.dh, %bb.ab ], [ 1, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit106 ], [ %i.ec, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread ] ; 2 uses
  br i1 %.sroa.09.0150, label %bb.af, label %bb.ae

.thread161:                                       ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread
  %i.eu = phi i1 [ %i.dj, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit ], [ %i.eb, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread ]
  %i.ev = phi i8 [ %i.dh, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit ], [ %i.ec, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread ]
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ex = load ptr, ptr %i.ew, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val38 = load i32, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val39 = load ptr, ptr %i.ez, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val40 = load ptr, ptr %i.fa, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11599)
  %i.fb = trunc nuw i8 %i.ev to i1
  %.pre.i98 = load i32, ptr %5, align 4, !alias.scope !11597 ; 2 uses
  br i1 %i.fb, label %bb.ad, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit106

bb.ad:                                            ; preds = %.thread161
  %i.fc = add i32 %.pre.i98, 1                    ; 2 uses
  store i32 %i.fc, ptr %5, align 4, !alias.scope !11597
  tail call void %.val39(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11600, !inline_history !11572
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit106

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit106: ; preds = %.thread161, %bb.ad
  %i.fd = phi i32 [ %i.fc, %bb.ad ], [ %.pre.i98, %.thread161 ]
  %i.fe = and i32 %.val38, 33
  %or.cond.i99 = icmp eq i32 %i.fe, 0             ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 1672
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ex, i64 1648
  %i.fh = select i1 %or.cond.i99, i64 1640, i64 1664
  %.sroa.0.0.in.i101 = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fh
  %.sroa.0.0.i102 = load ptr, ptr %.sroa.0.0.in.i101, align 8, !alias.scope !11598, !nonnull !21, !noundef !21
  %.val.i103 = load i64, ptr %i.fg, align 8, !alias.scope !11598 ; 3 uses
  %.val1.i104 = load i64, ptr %i.ff, align 8, !alias.scope !11598
  %.sroa.3.0.i105 = select i1 %or.cond.i99, i64 %.val.i103, i64 %.val1.i104
  tail call void %.val40(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i102, i64 noundef %.sroa.3.0.i105, i8 noundef 6) #45, !noalias !11601, !inline_history !11572
  %i.fi = icmp sgt i64 %.val.i103, -1
  tail call void @llvm.assume(i1 %i.fi)
  %i.fj = trunc i64 %.val.i103 to i32
  %i.fk = add i32 %i.fd, %i.fj
  store i32 %i.fk, ptr %5, align 4, !alias.scope !11597
  store i8 1, ptr %i.a, align 1, !alias.scope !11599
  br label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread.thread

bb.ae:                                            ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit115, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread.thread
  %i.fl = phi i8 [ 1, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit115 ], [ %i.et, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread.thread ] ; 2 uses
  %i.fm = and i32 %i.e, 262144
  %i.fn = icmp ne i32 %i.fm, 0                    ; 2 uses
  br i1 %i.fn, label %bb.ai, label %bb.ah

bb.af:                                            ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread.thread
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.fp = load ptr, ptr %i.fo, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val35 = load i32, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val36 = load ptr, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val37 = load ptr, ptr %i.fs, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11604)
  %i.ft = trunc nuw i8 %i.et to i1
  %.pre.i107 = load i32, ptr %5, align 4, !alias.scope !11602 ; 2 uses
  br i1 %i.ft, label %bb.ag, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit115

bb.ag:                                            ; preds = %bb.af
  %i.fu = add i32 %.pre.i107, 1                   ; 2 uses
  store i32 %i.fu, ptr %5, align 4, !alias.scope !11602
  tail call void %.val36(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11605, !inline_history !11572
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit115

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit115: ; preds = %bb.af, %bb.ag
  %i.fv = phi i32 [ %i.fu, %bb.ag ], [ %.pre.i107, %bb.af ]
  %i.fw = and i32 %.val35, 33
  %or.cond.i108 = icmp eq i32 %i.fw, 0            ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fp, i64 1768
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fp, i64 1744
  %i.fz = select i1 %or.cond.i108, i64 1736, i64 1760
  %.sroa.0.0.in.i110 = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fz
  %.sroa.0.0.i111 = load ptr, ptr %.sroa.0.0.in.i110, align 8, !alias.scope !11603, !nonnull !21, !noundef !21
  %.val.i112 = load i64, ptr %i.fy, align 8, !alias.scope !11603 ; 3 uses
  %.val1.i113 = load i64, ptr %i.fx, align 8, !alias.scope !11603
  %.sroa.3.0.i114 = select i1 %or.cond.i108, i64 %.val.i112, i64 %.val1.i113
  tail call void %.val37(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i111, i64 noundef %.sroa.3.0.i114, i8 noundef 15) #45, !noalias !11606, !inline_history !11572
  %i.ga = icmp sgt i64 %.val.i112, -1
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = trunc i64 %.val.i112 to i32
  %i.gc = add i32 %i.fv, %i.gb
  store i32 %i.gc, ptr %5, align 4, !alias.scope !11602
  store i8 1, ptr %i.a, align 1, !alias.scope !11604
  br label %bb.ae

bb.ah:                                            ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit124, %bb.ae
  %i.gd = phi i8 [ 1, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit124 ], [ %i.fl, %bb.ae ]
  br i1 %i.es, label %bb.al, label %bb.ak

bb.ai:                                            ; preds = %bb.ae
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.gf = load ptr, ptr %i.ge, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val32 = load i32, ptr %i.gg, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val33 = load ptr, ptr %i.gh, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val34 = load ptr, ptr %i.gi, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11609)
  %i.gj = trunc nuw i8 %i.fl to i1
  %.pre.i116 = load i32, ptr %5, align 4, !alias.scope !11607 ; 2 uses
  br i1 %i.gj, label %bb.aj, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit124

bb.aj:                                            ; preds = %bb.ai
  %i.gk = add i32 %.pre.i116, 1                   ; 2 uses
  store i32 %i.gk, ptr %5, align 4, !alias.scope !11607
  tail call void %.val33(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11610, !inline_history !11572
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit124

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit124: ; preds = %bb.ai, %bb.aj
  %i.gl = phi i32 [ %i.gk, %bb.aj ], [ %.pre.i116, %bb.ai ]
  %i.gm = and i32 %.val32, 33
  %or.cond.i117 = icmp eq i32 %i.gm, 0            ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gf, i64 1384
  %i.go = getelementptr inbounds nuw i8, ptr %i.gf, i64 1360
  %i.gp = select i1 %or.cond.i117, i64 1352, i64 1376
  %.sroa.0.0.in.i119 = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gp
  %.sroa.0.0.i120 = load ptr, ptr %.sroa.0.0.in.i119, align 8, !alias.scope !11608, !nonnull !21, !noundef !21
  %.val.i121 = load i64, ptr %i.go, align 8, !alias.scope !11608 ; 3 uses
  %.val1.i122 = load i64, ptr %i.gn, align 8, !alias.scope !11608
  %.sroa.3.0.i123 = select i1 %or.cond.i117, i64 %.val.i121, i64 %.val1.i122
  tail call void %.val34(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i120, i64 noundef %.sroa.3.0.i123, i8 noundef 14) #45, !noalias !11611, !inline_history !11572
  %i.gq = icmp sgt i64 %.val.i121, -1
  tail call void @llvm.assume(i1 %i.gq)
  %i.gr = trunc i64 %.val.i121 to i32
  %i.gs = add i32 %i.gl, %i.gr
  store i32 %i.gs, ptr %5, align 4, !alias.scope !11607
  store i8 1, ptr %i.a, align 1, !alias.scope !11609
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ao, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit135, %bb.am, %bb.ah
  %or.cond = or i1 %i.fn, %i.bp
  br i1 %or.cond, label %bb.av, label %bb.ar

bb.al:                                            ; preds = %bb.ah
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gu = load i16, ptr %i.gt, align 8, !range !28, !noundef !21 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.gw = load i32, ptr %i.gv, align 4, !noundef !21
  %i.gx = and i32 %i.gw, 4
  %.not15 = icmp eq i32 %i.gx, 0
  br i1 %.not15, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  switch i16 %i.gu, label %bb.ak [
    i16 153, label %bb.an
    i16 154, label %bb.an
    i16 155, label %bb.an
    i16 156, label %bb.an
    i16 157, label %bb.an
    i16 158, label %bb.an
    i16 331, label %bb.an
    i16 332, label %bb.an
    i16 333, label %bb.an
    i16 334, label %bb.an
    i16 335, label %bb.an
    i16 336, label %bb.an
    i16 337, label %bb.an
    i16 338, label %bb.an
    i16 343, label %bb.an
    i16 344, label %bb.an
    i16 345, label %bb.an
    i16 346, label %bb.an
    i16 347, label %bb.an
    i16 348, label %bb.an
    i16 349, label %bb.an
    i16 350, label %bb.an
    i16 351, label %bb.an
    i16 352, label %bb.an
    i16 353, label %bb.an
    i16 354, label %bb.an
    i16 1958, label %bb.an
    i16 1959, label %bb.an
    i16 1960, label %bb.an
    i16 1961, label %bb.an
    i16 1962, label %bb.an
    i16 1963, label %bb.an
    i16 1964, label %bb.an
    i16 1965, label %bb.an
    i16 1966, label %bb.an
    i16 1969, label %bb.an
    i16 1970, label %bb.an
    i16 1971, label %bb.an
    i16 1972, label %bb.an
    i16 1973, label %bb.an
    i16 1974, label %bb.an
    i16 1975, label %bb.an
    i16 1976, label %bb.an
    i16 1977, label %bb.an
    i16 1978, label %bb.an
    i16 1979, label %bb.an
    i16 1980, label %bb.an
    i16 1981, label %bb.an
    i16 1982, label %bb.an
    i16 1983, label %bb.an
    i16 1984, label %bb.an
    i16 1985, label %bb.an
    i16 1986, label %bb.an
    i16 4312, label %bb.an
    i16 4313, label %bb.an
    i16 4314, label %bb.an
    i16 4315, label %bb.an
    i16 4316, label %bb.an
    i16 4317, label %bb.an
    i16 4818, label %bb.an
    i16 4819, label %bb.an
    i16 4820, label %bb.an
    i16 4821, label %bb.an
    i16 4822, label %bb.an
    i16 4823, label %bb.an
    i16 4824, label %bb.an
    i16 4825, label %bb.an
    i16 4826, label %bb.an
    i16 4827, label %bb.an
    i16 4828, label %bb.an
    i16 4829, label %bb.an
    i16 4830, label %bb.an
    i16 4831, label %bb.an
    i16 4832, label %bb.an
    i16 394, label %bb.an
    i16 395, label %bb.an
    i16 396, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.am, %bb.al
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.gz = load ptr, ptr %i.gy, align 8, !nonnull !21, !align !25, !noundef !21 ; 2 uses
  switch i16 %i.gu, label %bb.ao [
    i16 335, label %bb.ap
    i16 336, label %bb.ap
    i16 337, label %bb.ap
    i16 338, label %bb.ap
    i16 351, label %bb.ap
    i16 352, label %bb.ap
    i16 353, label %bb.ap
    i16 354, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 1968
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val29 = load i32, ptr %i.hb, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val30 = load ptr, ptr %i.hc, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val31 = load ptr, ptr %i.hd, align 8
  call fastcc void @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix(i32 %.val29, ptr noundef nonnull %2, ptr %.val30, ptr %.val31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef align 4 dereferenceable(4) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ha, i8 noundef 7, ptr noalias nofree noundef dereferenceable(1) %i.a)
  br label %bb.ak

bb.ap:                                            ; preds = %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 2016
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.hg = load i8, ptr %i.hf, align 8, !range !27, !alias.scope !11612, !noundef !21
  %.sroa.0.0.i126 = zext nneg i8 %i.hg to i64
  %i.hh = getelementptr inbounds nuw [48 x i8], ptr %i.he, i64 %.sroa.0.0.i126 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val26 = load i32, ptr %i.hi, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val27 = load ptr, ptr %i.hj, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val28 = load ptr, ptr %i.hk, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11615)
  %i.hl = trunc nuw i8 %i.gd to i1
  %.pre.i127 = load i32, ptr %5, align 4, !alias.scope !11613 ; 2 uses
  br i1 %i.hl, label %bb.aq, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit135

bb.aq:                                            ; preds = %bb.ap
  %i.hm = add i32 %.pre.i127, 1                   ; 2 uses
  store i32 %i.hm, ptr %5, align 4, !alias.scope !11613
  tail call void %.val27(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11616, !inline_history !11572
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit135

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit135: ; preds = %bb.ap, %bb.aq
  %i.hn = phi i32 [ %i.hm, %bb.aq ], [ %.pre.i127, %bb.ap ]
  %i.ho = and i32 %.val26, 33
  %or.cond.i128 = icmp eq i32 %i.ho, 0            ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 40
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %.sroa.0.0.in.v.i129 = select i1 %or.cond.i128, i64 8, i64 32
  %.sroa.0.0.in.i130 = getelementptr inbounds nuw i8, ptr %i.hh, i64 %.sroa.0.0.in.v.i129
  %.sroa.0.0.i131 = load ptr, ptr %.sroa.0.0.in.i130, align 8, !alias.scope !11614, !nonnull !21, !noundef !21
  %.val.i132 = load i64, ptr %i.hq, align 8, !alias.scope !11614 ; 3 uses
  %.val1.i133 = load i64, ptr %i.hp, align 8, !alias.scope !11614
  %.sroa.3.0.i134 = select i1 %or.cond.i128, i64 %.val.i132, i64 %.val1.i133
  tail call void %.val28(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i131, i64 noundef %.sroa.3.0.i134, i8 noundef 8) #45, !noalias !11617, !inline_history !11572
  %i.hr = icmp sgt i64 %.val.i132, -1
  tail call void @llvm.assume(i1 %i.hr)
  %i.hs = trunc i64 %.val.i132 to i32
  %i.ht = add i32 %i.hn, %i.hs
  store i32 %i.ht, ptr %5, align 4, !alias.scope !11613
  store i8 1, ptr %i.a, align 1, !alias.scope !11615
  br label %bb.ak

bb.ar:                                            ; preds = %bb.ak
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.hv = load i32, ptr %i.hu, align 4, !noundef !21
  %i.hw = and i32 %i.hv, 4
  %.not16 = icmp eq i32 %i.hw, 0
  br i1 %.not16, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hy = load i16, ptr %i.hx, align 8, !range !28, !noundef !21
  switch i16 %i.hy, label %bb.av [
    i16 153, label %bb.at
    i16 154, label %bb.at
    i16 155, label %bb.at
    i16 156, label %bb.at
    i16 157, label %bb.at
    i16 158, label %bb.at
    i16 331, label %bb.at
    i16 332, label %bb.at
    i16 333, label %bb.at
    i16 334, label %bb.at
    i16 335, label %bb.at
    i16 336, label %bb.at
    i16 337, label %bb.at
    i16 338, label %bb.at
    i16 343, label %bb.at
    i16 344, label %bb.at
    i16 345, label %bb.at
    i16 346, label %bb.at
    i16 347, label %bb.at
    i16 348, label %bb.at
    i16 349, label %bb.at
    i16 350, label %bb.at
    i16 351, label %bb.at
    i16 352, label %bb.at
    i16 353, label %bb.at
    i16 354, label %bb.at
    i16 1958, label %bb.at
    i16 1959, label %bb.at
    i16 1960, label %bb.at
    i16 1961, label %bb.at
    i16 1962, label %bb.at
    i16 1963, label %bb.at
    i16 1964, label %bb.at
    i16 1965, label %bb.at
    i16 1966, label %bb.at
    i16 1969, label %bb.at
    i16 1970, label %bb.at
    i16 1971, label %bb.at
    i16 1972, label %bb.at
    i16 1973, label %bb.at
    i16 1974, label %bb.at
    i16 1975, label %bb.at
    i16 1976, label %bb.at
    i16 1977, label %bb.at
    i16 1978, label %bb.at
    i16 1979, label %bb.at
    i16 1980, label %bb.at
    i16 1981, label %bb.at
    i16 1982, label %bb.at
    i16 1983, label %bb.at
    i16 1984, label %bb.at
    i16 1985, label %bb.at
    i16 1986, label %bb.at
    i16 4312, label %bb.at
    i16 4313, label %bb.at
    i16 4314, label %bb.at
    i16 4315, label %bb.at
    i16 4316, label %bb.at
    i16 4317, label %bb.at
    i16 4818, label %bb.at
    i16 4819, label %bb.at
    i16 4820, label %bb.at
    i16 4821, label %bb.at
    i16 4822, label %bb.at
    i16 4823, label %bb.at
    i16 4824, label %bb.at
    i16 4825, label %bb.at
    i16 4826, label %bb.at
    i16 4827, label %bb.at
    i16 4828, label %bb.at
    i16 4829, label %bb.at
    i16 4830, label %bb.at
    i16 4831, label %bb.at
    i16 4832, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.ar
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ia = load ptr, ptr %i.hz, align 8, !nonnull !21, !align !25, !noundef !21
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 2112
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 273
  %i.id = load i8, ptr %i.ic, align 1, !range !27, !alias.scope !11618, !noundef !21
  %.sroa.0.0.i137 = zext nneg i8 %i.id to i64
  %i.ie = getelementptr inbounds nuw [48 x i8], ptr %i.ib, i64 %.sroa.0.0.i137 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val = load i32, ptr %i.if, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val24 = load ptr, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val25 = load ptr, ptr %i.ih, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11621)
  %i.ii = load i8, ptr %i.a, align 1, !range !27, !alias.scope !11621, !noundef !21
  %i.ij = trunc nuw i8 %i.ii to i1
  %.pre.i138 = load i32, ptr %5, align 4, !alias.scope !11619 ; 2 uses
  br i1 %i.ij, label %bb.au, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit146

bb.au:                                            ; preds = %bb.at
  %i.ik = add i32 %.pre.i138, 1                   ; 2 uses
  store i32 %i.ik, ptr %5, align 4, !alias.scope !11619
  tail call void %.val24(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11622, !inline_history !11572
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit146

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit146: ; preds = %bb.at, %bb.au
  %i.il = phi i32 [ %i.ik, %bb.au ], [ %.pre.i138, %bb.at ]
  %i.im = and i32 %.val, 33
  %or.cond.i139 = icmp eq i32 %i.im, 0            ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ie, i64 40
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %.sroa.0.0.in.v.i140 = select i1 %or.cond.i139, i64 8, i64 32
  %.sroa.0.0.in.i141 = getelementptr inbounds nuw i8, ptr %i.ie, i64 %.sroa.0.0.in.v.i140
  %.sroa.0.0.i142 = load ptr, ptr %.sroa.0.0.in.i141, align 8, !alias.scope !11620, !nonnull !21, !noundef !21
  %.val.i143 = load i64, ptr %i.io, align 8, !alias.scope !11620 ; 3 uses
  %.val1.i144 = load i64, ptr %i.in, align 8, !alias.scope !11620
  %.sroa.3.0.i145 = select i1 %or.cond.i139, i64 %.val.i143, i64 %.val1.i144
  tail call void %.val25(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i142, i64 noundef %.sroa.3.0.i145, i8 noundef 9) #45, !noalias !11623, !inline_history !11572
  %i.ip = icmp sgt i64 %.val.i143, -1
  tail call void @llvm.assume(i1 %i.ip)
end_hunk_2
begin_hunk_3_@_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter15format_mnemonic:bb.a
  %.val.i116 = load i64, ptr %i.ff, align 8, !alias.scope !11954 ; 3 uses
  %.val1.i117 = load i64, ptr %i.fe, align 8, !alias.scope !11954
  %.sroa.3.0.i118 = select i1 %or.cond.i112, i64 %.val.i116, i64 %.val1.i117
  tail call void %.val51(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i115, i64 noundef %.sroa.3.0.i118, i8 noundef 6) #45, !noalias !11957, !inline_history !11929
  %i.fh = icmp sgt i64 %.val.i116, -1
  tail call void @llvm.assume(i1 %i.fh)
  %i.fi = trunc i64 %.val.i116 to i32
  %i.fj = add i32 %i.fc, %i.fi
  store i32 %i.fj, ptr %5, align 4, !alias.scope !11953
  store i8 1, ptr %i.a, align 1, !alias.scope !11955
  br label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread.thread

bb.af:                                            ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread.thread
  %i.fk = and i16 %i.e, 2048
  %i.fl = icmp eq i16 %i.fk, 0
  br i1 %i.fl, label %bb.ak, label %bb.ai

bb.ag:                                            ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread.thread
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.fn = load ptr, ptr %i.fm, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val46 = load i32, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val47 = load ptr, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val48 = load ptr, ptr %i.fq, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11959)
  %i.fr = trunc nuw i8 %i.eq to i1
  %.pre.i120 = load i32, ptr %5, align 4, !alias.scope !11958 ; 2 uses
  br i1 %i.fr, label %bb.ah, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit128

bb.ah:                                            ; preds = %bb.ag
  %i.fs = add i32 %.pre.i120, 1                   ; 2 uses
  store i32 %i.fs, ptr %5, align 4, !alias.scope !11958
  tail call void %.val47(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11960, !inline_history !11929
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit128

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit128: ; preds = %bb.ag, %bb.ah
  %i.ft = phi i32 [ %i.fs, %bb.ah ], [ %.pre.i120, %bb.ag ]
  %i.fu = and i32 %.val46, 33
  %or.cond.i121 = icmp eq i32 %i.fu, 0            ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 1480
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fn, i64 1456
  %i.fx = select i1 %or.cond.i121, i64 1448, i64 1472
  %.sroa.0.0.in.i123 = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fx
  %.sroa.0.0.i124 = load ptr, ptr %.sroa.0.0.in.i123, align 8, !alias.scope !11959, !nonnull !21, !noundef !21
  %.val.i125 = load i64, ptr %i.fw, align 8, !alias.scope !11959 ; 2 uses
  %.val1.i126 = load i64, ptr %i.fv, align 8, !alias.scope !11959
  %.sroa.3.0.i127 = select i1 %or.cond.i121, i64 %.val.i125, i64 %.val1.i126
  tail call void %.val48(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i124, i64 noundef %.sroa.3.0.i127, i8 noundef 12) #45, !noalias !11961, !inline_history !11929
  br label %.sink.split

bb.ai:                                            ; preds = %bb.af
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.fz = load ptr, ptr %i.fy, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val43 = load i32, ptr %i.ga, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val44 = load ptr, ptr %i.gb, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val45 = load ptr, ptr %i.gc, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11963)
  %i.gd = trunc nuw i8 %i.eq to i1
  %.pre.i129 = load i32, ptr %5, align 4, !alias.scope !11962 ; 2 uses
  br i1 %i.gd, label %bb.aj, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit137

bb.aj:                                            ; preds = %bb.ai
  %i.ge = add i32 %.pre.i129, 1                   ; 2 uses
  store i32 %i.ge, ptr %5, align 4, !alias.scope !11962
  tail call void %.val44(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11964, !inline_history !11929
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit137

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit137: ; preds = %bb.ai, %bb.aj
  %i.gf = phi i32 [ %i.ge, %bb.aj ], [ %.pre.i129, %bb.ai ]
  %i.gg = and i32 %.val43, 33
  %or.cond.i130 = icmp eq i32 %i.gg, 0            ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 1528
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fz, i64 1504
  %i.gj = select i1 %or.cond.i130, i64 1496, i64 1520
  %.sroa.0.0.in.i132 = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.gj
  %.sroa.0.0.i133 = load ptr, ptr %.sroa.0.0.in.i132, align 8, !alias.scope !11963, !nonnull !21, !noundef !21
  %.val.i134 = load i64, ptr %i.gi, align 8, !alias.scope !11963 ; 2 uses
  %.val1.i135 = load i64, ptr %i.gh, align 8, !alias.scope !11963
  %.sroa.3.0.i136 = select i1 %or.cond.i130, i64 %.val.i134, i64 %.val1.i135
  tail call void %.val45(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i133, i64 noundef %.sroa.3.0.i136, i8 noundef 13) #45, !noalias !11965, !inline_history !11929
  br label %.sink.split

.sink.split:                                      ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit128, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit137
  %.val.i134.sink206 = phi i64 [ %.val.i134, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit137 ], [ %.val.i125, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit128 ] ; 2 uses
  %.sink204 = phi i32 [ %i.gf, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit137 ], [ %i.ft, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit128 ]
  %i.gk = icmp sgt i64 %.val.i134.sink206, -1
  tail call void @llvm.assume(i1 %i.gk)
  %i.gl = trunc i64 %.val.i134.sink206 to i32
  %i.gm = add i32 %.sink204, %i.gl
  store i32 %i.gm, ptr %5, align 4
  store i8 1, ptr %i.a, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split, %bb.af
  %i.gn = phi i8 [ %i.eq, %bb.af ], [ 1, %.sink.split ] ; 2 uses
  br i1 %.sroa.09.0181, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit146, %bb.ak
  %i.go = phi i8 [ 1, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit146 ], [ %i.gn, %bb.ak ] ; 2 uses
  %i.gp = and i16 %i.e, 4096
  %i.gq = icmp ne i16 %i.gp, 0                    ; 2 uses
  br i1 %i.gq, label %bb.ap, label %bb.ao

bb.am:                                            ; preds = %bb.ak
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.gs = load ptr, ptr %i.gr, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val40 = load i32, ptr %i.gt, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val41 = load ptr, ptr %i.gu, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val42 = load ptr, ptr %i.gv, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11968)
  %i.gw = trunc nuw i8 %i.gn to i1
  %.pre.i138 = load i32, ptr %5, align 4, !alias.scope !11966 ; 2 uses
  br i1 %i.gw, label %bb.an, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit146

bb.an:                                            ; preds = %bb.am
  %i.gx = add i32 %.pre.i138, 1                   ; 2 uses
  store i32 %i.gx, ptr %5, align 4, !alias.scope !11966
  tail call void %.val41(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11969, !inline_history !11929
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit146

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit146: ; preds = %bb.am, %bb.an
  %i.gy = phi i32 [ %i.gx, %bb.an ], [ %.pre.i138, %bb.am ]
  %i.gz = and i32 %.val40, 33
  %or.cond.i139 = icmp eq i32 %i.gz, 0            ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gs, i64 1768
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gs, i64 1744
  %i.hc = select i1 %or.cond.i139, i64 1736, i64 1760
  %.sroa.0.0.in.i141 = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.hc
  %.sroa.0.0.i142 = load ptr, ptr %.sroa.0.0.in.i141, align 8, !alias.scope !11967, !nonnull !21, !noundef !21
  %.val.i143 = load i64, ptr %i.hb, align 8, !alias.scope !11967 ; 3 uses
  %.val1.i144 = load i64, ptr %i.ha, align 8, !alias.scope !11967
  %.sroa.3.0.i145 = select i1 %or.cond.i139, i64 %.val.i143, i64 %.val1.i144
  tail call void %.val42(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i142, i64 noundef %.sroa.3.0.i145, i8 noundef 15) #45, !noalias !11970, !inline_history !11929
  %i.hd = icmp sgt i64 %.val.i143, -1
  tail call void @llvm.assume(i1 %i.hd)
  %i.he = trunc i64 %.val.i143 to i32
  %i.hf = add i32 %i.gy, %i.he
  store i32 %i.hf, ptr %5, align 4, !alias.scope !11966
  store i8 1, ptr %i.a, align 1, !alias.scope !11968
  br label %bb.al

bb.ao:                                            ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit155, %bb.al
  %i.hg = phi i8 [ 1, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit155 ], [ %i.go, %bb.al ]
  br i1 %i.ep, label %bb.as, label %bb.ar

bb.ap:                                            ; preds = %bb.al
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.hi = load ptr, ptr %i.hh, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val37 = load i32, ptr %i.hj, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val38 = load ptr, ptr %i.hk, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val39 = load ptr, ptr %i.hl, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11973)
  %i.hm = trunc nuw i8 %i.go to i1
  %.pre.i147 = load i32, ptr %5, align 4, !alias.scope !11971 ; 2 uses
  br i1 %i.hm, label %bb.aq, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit155

bb.aq:                                            ; preds = %bb.ap
  %i.hn = add i32 %.pre.i147, 1                   ; 2 uses
  store i32 %i.hn, ptr %5, align 4, !alias.scope !11971
  tail call void %.val38(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11974, !inline_history !11929
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit155

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit155: ; preds = %bb.ap, %bb.aq
  %i.ho = phi i32 [ %i.hn, %bb.aq ], [ %.pre.i147, %bb.ap ]
  %i.hp = and i32 %.val37, 33
  %or.cond.i148 = icmp eq i32 %i.hp, 0            ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hi, i64 1384
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hi, i64 1360
  %i.hs = select i1 %or.cond.i148, i64 1352, i64 1376
  %.sroa.0.0.in.i150 = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hs
  %.sroa.0.0.i151 = load ptr, ptr %.sroa.0.0.in.i150, align 8, !alias.scope !11972, !nonnull !21, !noundef !21
  %.val.i152 = load i64, ptr %i.hr, align 8, !alias.scope !11972 ; 3 uses
  %.val1.i153 = load i64, ptr %i.hq, align 8, !alias.scope !11972
  %.sroa.3.0.i154 = select i1 %or.cond.i148, i64 %.val.i152, i64 %.val1.i153
  tail call void %.val39(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i151, i64 noundef %.sroa.3.0.i154, i8 noundef 14) #45, !noalias !11975, !inline_history !11929
  %i.ht = icmp sgt i64 %.val.i152, -1
  tail call void @llvm.assume(i1 %i.ht)
  %i.hu = trunc i64 %.val.i152 to i32
  %i.hv = add i32 %i.ho, %i.hu
  store i32 %i.hv, ptr %5, align 4, !alias.scope !11971
  store i8 1, ptr %i.a, align 1, !alias.scope !11973
  br label %bb.ao

bb.ar:                                            ; preds = %bb.av, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit166, %bb.at, %bb.ao
  %or.cond = or i1 %i.gq, %i.bp
  br i1 %or.cond, label %bb.bc, label %bb.ay

bb.as:                                            ; preds = %bb.ao
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hx = load i16, ptr %i.hw, align 8, !range !28, !noundef !21 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.hz = load i32, ptr %i.hy, align 4, !noundef !21
  %i.ia = and i32 %i.hz, 4
  %.not17 = icmp eq i32 %i.ia, 0
  br i1 %.not17, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  switch i16 %i.hx, label %bb.ar [
    i16 153, label %bb.au
    i16 154, label %bb.au
    i16 155, label %bb.au
    i16 156, label %bb.au
    i16 157, label %bb.au
    i16 158, label %bb.au
    i16 331, label %bb.au
    i16 332, label %bb.au
    i16 333, label %bb.au
    i16 334, label %bb.au
    i16 335, label %bb.au
    i16 336, label %bb.au
    i16 337, label %bb.au
    i16 338, label %bb.au
    i16 343, label %bb.au
    i16 344, label %bb.au
    i16 345, label %bb.au
    i16 346, label %bb.au
    i16 347, label %bb.au
    i16 348, label %bb.au
    i16 349, label %bb.au
    i16 350, label %bb.au
    i16 351, label %bb.au
    i16 352, label %bb.au
    i16 353, label %bb.au
    i16 354, label %bb.au
    i16 1958, label %bb.au
    i16 1959, label %bb.au
    i16 1960, label %bb.au
    i16 1961, label %bb.au
    i16 1962, label %bb.au
    i16 1963, label %bb.au
    i16 1964, label %bb.au
    i16 1965, label %bb.au
    i16 1966, label %bb.au
    i16 1969, label %bb.au
    i16 1970, label %bb.au
    i16 1971, label %bb.au
    i16 1972, label %bb.au
    i16 1973, label %bb.au
    i16 1974, label %bb.au
    i16 1975, label %bb.au
    i16 1976, label %bb.au
    i16 1977, label %bb.au
    i16 1978, label %bb.au
    i16 1979, label %bb.au
    i16 1980, label %bb.au
    i16 1981, label %bb.au
    i16 1982, label %bb.au
    i16 1983, label %bb.au
    i16 1984, label %bb.au
    i16 1985, label %bb.au
    i16 1986, label %bb.au
    i16 4312, label %bb.au
    i16 4313, label %bb.au
    i16 4314, label %bb.au
    i16 4315, label %bb.au
    i16 4316, label %bb.au
    i16 4317, label %bb.au
    i16 4818, label %bb.au
    i16 4819, label %bb.au
    i16 4820, label %bb.au
    i16 4821, label %bb.au
    i16 4822, label %bb.au
    i16 4823, label %bb.au
    i16 4824, label %bb.au
    i16 4825, label %bb.au
    i16 4826, label %bb.au
    i16 4827, label %bb.au
    i16 4828, label %bb.au
    i16 4829, label %bb.au
    i16 4830, label %bb.au
    i16 4831, label %bb.au
    i16 4832, label %bb.au
    i16 394, label %bb.au
    i16 395, label %bb.au
    i16 396, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.at, %bb.as
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ic = load ptr, ptr %i.ib, align 8, !nonnull !21, !align !25, !noundef !21 ; 2 uses
  switch i16 %i.hx, label %bb.av [
    i16 335, label %bb.aw
    i16 336, label %bb.aw
    i16 337, label %bb.aw
    i16 338, label %bb.aw
    i16 351, label %bb.aw
    i16 352, label %bb.aw
    i16 353, label %bb.aw
    i16 354, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 1968
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val34 = load i32, ptr %i.ie, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val35 = load ptr, ptr %i.if, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val36 = load ptr, ptr %i.ig, align 8
  call fastcc void @_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix(i32 %.val34, ptr noundef nonnull %2, ptr %.val35, ptr %.val36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef align 4 dereferenceable(4) %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.id, i8 noundef 7, ptr noalias nofree noundef dereferenceable(1) %i.a)
  br label %bb.ar

bb.aw:                                            ; preds = %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au, %bb.au
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 2016
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ij = load i8, ptr %i.ii, align 8, !range !27, !alias.scope !11976, !noundef !21
  %.sroa.0.0.i157 = zext nneg i8 %i.ij to i64
  %i.ik = getelementptr inbounds nuw [48 x i8], ptr %i.ih, i64 %.sroa.0.0.i157 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val31 = load i32, ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val32 = load ptr, ptr %i.im, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val33 = load ptr, ptr %i.in, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11979)
  %i.io = trunc nuw i8 %i.hg to i1
  %.pre.i158 = load i32, ptr %5, align 4, !alias.scope !11977 ; 2 uses
  br i1 %i.io, label %bb.ax, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit166

bb.ax:                                            ; preds = %bb.aw
  %i.ip = add i32 %.pre.i158, 1                   ; 2 uses
  store i32 %i.ip, ptr %5, align 4, !alias.scope !11977
  tail call void %.val32(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11980, !inline_history !11929
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit166

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit166: ; preds = %bb.aw, %bb.ax
  %i.iq = phi i32 [ %i.ip, %bb.ax ], [ %.pre.i158, %bb.aw ]
  %i.ir = and i32 %.val31, 33
  %or.cond.i159 = icmp eq i32 %i.ir, 0            ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ik, i64 40
  %i.it = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %.sroa.0.0.in.v.i160 = select i1 %or.cond.i159, i64 8, i64 32
  %.sroa.0.0.in.i161 = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.sroa.0.0.in.v.i160
  %.sroa.0.0.i162 = load ptr, ptr %.sroa.0.0.in.i161, align 8, !alias.scope !11978, !nonnull !21, !noundef !21
  %.val.i163 = load i64, ptr %i.it, align 8, !alias.scope !11978 ; 3 uses
  %.val1.i164 = load i64, ptr %i.is, align 8, !alias.scope !11978
  %.sroa.3.0.i165 = select i1 %or.cond.i159, i64 %.val.i163, i64 %.val1.i164
  tail call void %.val33(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i162, i64 noundef %.sroa.3.0.i165, i8 noundef 8) #45, !noalias !11981, !inline_history !11929
  %i.iu = icmp sgt i64 %.val.i163, -1
  tail call void @llvm.assume(i1 %i.iu)
  %i.iv = trunc i64 %.val.i163 to i32
  %i.iw = add i32 %i.iq, %i.iv
  store i32 %i.iw, ptr %5, align 4, !alias.scope !11977
  store i8 1, ptr %i.a, align 1, !alias.scope !11979
  br label %bb.ar

bb.ay:                                            ; preds = %bb.ar
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.iy = load i32, ptr %i.ix, align 4, !noundef !21
  %i.iz = and i32 %i.iy, 4
  %.not18 = icmp eq i32 %i.iz, 0
  br i1 %.not18, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jb = load i16, ptr %i.ja, align 8, !range !28, !noundef !21
  switch i16 %i.jb, label %bb.bc [
    i16 153, label %bb.ba
    i16 154, label %bb.ba
    i16 155, label %bb.ba
    i16 156, label %bb.ba
    i16 157, label %bb.ba
    i16 158, label %bb.ba
    i16 331, label %bb.ba
    i16 332, label %bb.ba
    i16 333, label %bb.ba
    i16 334, label %bb.ba
    i16 335, label %bb.ba
    i16 336, label %bb.ba
    i16 337, label %bb.ba
    i16 338, label %bb.ba
    i16 343, label %bb.ba
    i16 344, label %bb.ba
    i16 345, label %bb.ba
    i16 346, label %bb.ba
    i16 347, label %bb.ba
    i16 348, label %bb.ba
    i16 349, label %bb.ba
    i16 350, label %bb.ba
    i16 351, label %bb.ba
    i16 352, label %bb.ba
    i16 353, label %bb.ba
    i16 354, label %bb.ba
    i16 1958, label %bb.ba
    i16 1959, label %bb.ba
    i16 1960, label %bb.ba
    i16 1961, label %bb.ba
    i16 1962, label %bb.ba
    i16 1963, label %bb.ba
    i16 1964, label %bb.ba
    i16 1965, label %bb.ba
    i16 1966, label %bb.ba
    i16 1969, label %bb.ba
    i16 1970, label %bb.ba
    i16 1971, label %bb.ba
    i16 1972, label %bb.ba
    i16 1973, label %bb.ba
    i16 1974, label %bb.ba
    i16 1975, label %bb.ba
    i16 1976, label %bb.ba
    i16 1977, label %bb.ba
    i16 1978, label %bb.ba
    i16 1979, label %bb.ba
    i16 1980, label %bb.ba
    i16 1981, label %bb.ba
    i16 1982, label %bb.ba
    i16 1983, label %bb.ba
    i16 1984, label %bb.ba
    i16 1985, label %bb.ba
    i16 1986, label %bb.ba
    i16 4312, label %bb.ba
    i16 4313, label %bb.ba
    i16 4314, label %bb.ba
    i16 4315, label %bb.ba
    i16 4316, label %bb.ba
    i16 4317, label %bb.ba
    i16 4818, label %bb.ba
    i16 4819, label %bb.ba
    i16 4820, label %bb.ba
    i16 4821, label %bb.ba
    i16 4822, label %bb.ba
    i16 4823, label %bb.ba
    i16 4824, label %bb.ba
    i16 4825, label %bb.ba
    i16 4826, label %bb.ba
    i16 4827, label %bb.ba
    i16 4828, label %bb.ba
    i16 4829, label %bb.ba
    i16 4830, label %bb.ba
    i16 4831, label %bb.ba
    i16 4832, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.az, %bb.ay
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.jd = load ptr, ptr %i.jc, align 8, !nonnull !21, !align !25, !noundef !21
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 2112
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 273
  %i.jg = load i8, ptr %i.jf, align 1, !range !27, !alias.scope !11982, !noundef !21
  %.sroa.0.0.i168 = zext nneg i8 %i.jg to i64
  %i.jh = getelementptr inbounds nuw [48 x i8], ptr %i.je, i64 %.sroa.0.0.i168 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val = load i32, ptr %i.ji, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val29 = load ptr, ptr %i.jj, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val30 = load ptr, ptr %i.jk, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11985)
  %i.jl = load i8, ptr %i.a, align 1, !range !27, !alias.scope !11985, !noundef !21
  %i.jm = trunc nuw i8 %i.jl to i1
  %.pre.i169 = load i32, ptr %5, align 4, !alias.scope !11983 ; 2 uses
  br i1 %i.jm, label %bb.bb, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit177

bb.bb:                                            ; preds = %bb.ba
  %i.jn = add i32 %.pre.i169, 1                   ; 2 uses
  store i32 %i.jn, ptr %5, align 4, !alias.scope !11983
  tail call void %.val29(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11986, !inline_history !11929
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit177

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit177: ; preds = %bb.ba, %bb.bb
  %i.jo = phi i32 [ %i.jn, %bb.bb ], [ %.pre.i169, %bb.ba ]
  %i.jp = and i32 %.val, 33
  %or.cond.i170 = icmp eq i32 %i.jp, 0            ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %.sroa.0.0.in.v.i171 = select i1 %or.cond.i170, i64 8, i64 32
  %.sroa.0.0.in.i172 = getelementptr inbounds nuw i8, ptr %i.jh, i64 %.sroa.0.0.in.v.i171
  %.sroa.0.0.i173 = load ptr, ptr %.sroa.0.0.in.i172, align 8, !alias.scope !11984, !nonnull !21, !noundef !21
  %.val.i174 = load i64, ptr %i.jr, align 8, !alias.scope !11984 ; 3 uses
  %.val1.i175 = load i64, ptr %i.jq, align 8, !alias.scope !11984
  %.sroa.3.0.i176 = select i1 %or.cond.i170, i64 %.val.i174, i64 %.val1.i175
  tail call void %.val30(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i173, i64 noundef %.sroa.3.0.i176, i8 noundef 9) #45, !noalias !11987, !inline_history !11929
  %i.js = icmp sgt i64 %.val.i174, -1
  tail call void @llvm.assume(i1 %i.js)
end_hunk_3
