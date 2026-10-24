Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iced-x86-rs/original/iced_x86-37298a2194944c04.iced_x86.b05d7422b63e665d-cgu.0?download=true
inline.NumInlined: 5815
inline.NumDeleted: 1335
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter15format_mnemonic:bb.a
    i8 25, label %bb.x
    i8 26, label %bb.x
    i8 27, label %bb.x
    i8 28, label %bb.x
    i8 29, label %bb.x
    i8 30, label %bb.x
    i8 31, label %bb.x
    i8 32, label %bb.x
    i8 33, label %bb.x
    i8 34, label %bb.x
    i8 35, label %bb.x
    i8 36, label %bb.x
    i8 37, label %bb.x
  ]

bb.x:                                             ; preds = %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i
  %exitcond.peel25.not.i = icmp eq i8 %i.ep, 5
  br i1 %exitcond.peel25.not.i, label %._crit_edge.i, label %.peel.next20.i.preheader

.peel.next20.i.preheader:                         ; preds = %bb.x
  switch i8 %.sroa.02.0.peel.i, label %default.unreachable206 [
    i8 15, label %.thread
    i8 16, label %.thread
    i8 17, label %.thread
    i8 18, label %.thread
    i8 19, label %.thread
    i8 20, label %.thread
    i8 24, label %.thread
    i8 0, label %._crit_edge.i
    i8 1, label %._crit_edge.i
    i8 2, label %._crit_edge.i
    i8 3, label %._crit_edge.i
    i8 4, label %._crit_edge.i
    i8 5, label %._crit_edge.i
    i8 6, label %._crit_edge.i
    i8 7, label %._crit_edge.i
    i8 8, label %._crit_edge.i
    i8 9, label %._crit_edge.i
    i8 10, label %._crit_edge.i
    i8 11, label %._crit_edge.i
    i8 12, label %._crit_edge.i
    i8 13, label %._crit_edge.i
    i8 14, label %._crit_edge.i
    i8 31, label %._crit_edge.i
    i8 32, label %._crit_edge.i
    i8 33, label %._crit_edge.i
    i8 34, label %._crit_edge.i
    i8 35, label %._crit_edge.i
    i8 36, label %._crit_edge.i
    i8 21, label %._crit_edge.i
    i8 22, label %._crit_edge.i
    i8 23, label %._crit_edge.i
    i8 37, label %._crit_edge.i
    i8 25, label %._crit_edge.i
    i8 26, label %._crit_edge.i
    i8 27, label %._crit_edge.i
    i8 28, label %._crit_edge.i
    i8 29, label %._crit_edge.i
    i8 30, label %._crit_edge.i
  ]

bb.y:                                             ; preds = %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r, %bb.r
  %i.er = and i32 %.val67, 4
  %i.es = icmp ne i32 %i.er, 0                    ; 3 uses
  switch i16 %.val69, label %bb.z [
    i16 1050, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter19show_segment_prefix.exit
    i16 1049, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter19show_segment_prefix.exit
    i16 1048, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter19show_segment_prefix.exit
    i16 1040, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter19show_segment_prefix.exit
    i16 1041, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter19show_segment_prefix.exit
    i16 1042, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter19show_segment_prefix.exit
    i16 1043, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter19show_segment_prefix.exit
    i16 1047, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter19show_segment_prefix.exit
  ]

bb.z:                                             ; preds = %bb.y
  %i.et = lshr i32 %i.l, 18
  %i.eu = and i32 %i.et, 3
  %.off.i.i.i = add nsw i32 %i.eu, -1
  %switch.i.i.i = icmp ult i32 %.off.i.i.i, 2
  br i1 %switch.i.i.i, label %.split187, label %.split

.split:                                           ; preds = %bb.z
  %i.ev = add nsw i32 %i.n, -5
  %or.cond.i.i.i = icmp ult i32 %i.ev, 2
  %..i.i.i = or i1 %or.cond.i.i.i, %i.es
  br i1 %..i.i.i, label %bb.ab, label %.thread

.split187:                                        ; preds = %bb.z
  %.not.i.i.i = icmp ne i32 %narrow, 74
  %.8.i.i.i = or i1 %.not.i.i.i, %i.es
  br i1 %.8.i.i.i, label %bb.ab, label %.thread

bb.aa:                                            ; preds = %bb.r
  %i.ew = and i32 %.val67, 4
  %i.ex = icmp ne i32 %i.ew, 0                    ; 2 uses
  %i.ey = lshr i32 %i.l, 18
  %i.ez = and i32 %i.ey, 3
  %.off.i.i9.i = add nsw i32 %i.ez, -1
  %switch.i.i10.i = icmp ult i32 %.off.i.i9.i, 2
  br i1 %switch.i.i10.i, label %.split185, label %.split186

.split186:                                        ; preds = %bb.aa
  %i.fa = add nsw i32 %i.n, -5
  %or.cond.i.i11.i = icmp ult i32 %i.fa, 2
  %..i.i12.i = or i1 %or.cond.i.i11.i, %i.ex
  br i1 %..i.i12.i, label %bb.ab, label %.thread

.split185:                                        ; preds = %bb.aa
  %.not.i.i13.i = icmp ne i32 %narrow, 74
  %.8.i.i14.i = or i1 %.not.i.i13.i, %i.ex
  br i1 %.8.i.i14.i, label %bb.ab, label %.thread

._crit_edge.i:                                    ; preds = %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %i.fb = and i32 %.val67, 4
  %.not = icmp eq i32 %i.fb, 0
  br i1 %.not, label %.thread, label %bb.ab

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter19show_segment_prefix.exit: ; preds = %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y
  br i1 %i.es, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %.split187, %.split186, %.split185, %.split, %._crit_edge.i, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter19show_segment_prefix.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.fd = load ptr, ptr %i.fc, align 8, !nonnull !21, !align !25, !noundef !21
  %i.fe = getelementptr inbounds nuw [48 x i8], ptr %i.fd, i64 %.sroa.0.0 ; 3 uses
  %i.ff = trunc nuw nsw i32 %narrow to i8
  %i.fg = add nsw i8 %i.ff, -71
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val55 = load i32, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val56 = load ptr, ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val57 = load ptr, ptr %i.fj, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10845)
  %i.fk = load i8, ptr %i.b, align 1, !range !27, !alias.scope !10845, !noundef !21
  %i.fl = trunc nuw i8 %i.fk to i1
  %.pre.i86 = load i32, ptr %5, align 4, !alias.scope !10843 ; 2 uses
  br i1 %i.fl, label %bb.ac, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit94

bb.ac:                                            ; preds = %bb.ab
  %i.fm = add i32 %.pre.i86, 1                    ; 2 uses
  store i32 %i.fm, ptr %5, align 4, !alias.scope !10843
  tail call void %.val56(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !10846, !inline_history !10834
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit94

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit94: ; preds = %bb.ab, %bb.ac
  %i.fn = phi i32 [ %i.fm, %bb.ac ], [ %.pre.i86, %bb.ab ]
  %i.fo = and i32 %.val55, 33
  %or.cond.i87 = icmp eq i32 %i.fo, 0             ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %.sroa.0.0.in.v.i88 = select i1 %or.cond.i87, i64 8, i64 32
  %.sroa.0.0.in.i89 = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.sroa.0.0.in.v.i88
  %.sroa.0.0.i90 = load ptr, ptr %.sroa.0.0.in.i89, align 8, !alias.scope !10844, !nonnull !21, !noundef !21
  %.val.i91 = load i64, ptr %i.fq, align 8, !alias.scope !10844 ; 3 uses
  %.val1.i92 = load i64, ptr %i.fp, align 8, !alias.scope !10844
  %.sroa.3.0.i93 = select i1 %or.cond.i87, i64 %.val.i91, i64 %.val1.i92
  tail call void %.val57(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i90, i64 noundef %.sroa.3.0.i93, i8 noundef range(i8 0, 18) %i.fg) #45, !noalias !10847, !inline_history !10834
  %i.fr = icmp sgt i64 %.val.i91, -1
  tail call void @llvm.assume(i1 %i.fr)
  %i.fs = trunc i64 %.val.i91 to i32
  %i.ft = add i32 %i.fn, %i.fs
  store i32 %i.ft, ptr %5, align 4, !alias.scope !10843
  store i8 1, ptr %i.b, align 1, !alias.scope !10845
  br label %.thread

bb.ad:                                            ; preds = %.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10848)
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fv = load i8, ptr %i.fu, align 8, !range !38, !alias.scope !10848, !noundef !21
  %.not.i95 = icmp eq i8 %i.fv, 24
  br i1 %.not.i95, label %bb.ae, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread.thread

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread.thread: ; preds = %bb.ad
  %i.fw = and i32 %i.l, 536870912
  %i.fx = icmp ne i32 %i.fw, 0
  br label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %.not1.i = icmp sgt i32 %i.l, -1
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fz = load i16, ptr %i.fy, align 8, !range !28, !alias.scope !10848, !noundef !21 ; 2 uses
  br i1 %.not1.i, label %.split189, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit

.split189:                                        ; preds = %bb.ae
  %i.ga = zext nneg i16 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr @_RNvNtCsf8MNnN4IDbl_8iced_x869mnemonics11TO_MNEMONIC, i64 %i.ga
  %i.gc = load i16, ptr %i.gb, align 2, !range !58, !noalias !10848, !noundef !21
  %i.gd = icmp eq i16 %i.gc, 1509
  br i1 %i.gd, label %bb.af, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit: ; preds = %bb.ae
  %.not198 = icmp eq i16 %i.fz, 2189
  br i1 %.not198, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread, label %bb.af

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread: ; preds = %.thread._RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread_crit_edge, %.split189, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit104, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit
  %.not.i105 = phi i1 [ %i.ej, %.thread._RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread_crit_edge ], [ true, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit ], [ true, %.split189 ], [ true, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit104 ]
  %i.ge = and i32 %i.l, 536870912
  %i.gf = icmp ne i32 %i.ge, 0                    ; 2 uses
  %or.cond202 = select i1 %i.gf, i1 %.not.i105, i1 false
  br i1 %or.cond202, label %bb.ah, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread

bb.af:                                            ; preds = %.split189, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.gh = load ptr, ptr %i.gg, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val52 = load i32, ptr %i.gi, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val53 = load ptr, ptr %i.gj, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val54 = load ptr, ptr %i.gk, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10851)
  %i.gl = load i8, ptr %i.b, align 1, !range !27, !alias.scope !10851, !noundef !21
  %i.gm = trunc nuw i8 %i.gl to i1
  %.pre.i96 = load i32, ptr %5, align 4, !alias.scope !10849 ; 2 uses
  br i1 %i.gm, label %bb.ag, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit104

bb.ag:                                            ; preds = %bb.af
  %i.gn = add i32 %.pre.i96, 1                    ; 2 uses
  store i32 %i.gn, ptr %5, align 4, !alias.scope !10849
  tail call void %.val53(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !10852, !inline_history !10834
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit104

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit104: ; preds = %bb.af, %bb.ag
  %i.go = phi i32 [ %i.gn, %bb.ag ], [ %.pre.i96, %bb.af ]
  %i.gp = and i32 %.val52, 33
  %or.cond.i97 = icmp eq i32 %i.gp, 0             ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gh, i64 2920
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gh, i64 2896
  %i.gs = select i1 %or.cond.i97, i64 2888, i64 2912
  %.sroa.0.0.in.i99 = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gs
  %.sroa.0.0.i100 = load ptr, ptr %.sroa.0.0.in.i99, align 8, !alias.scope !10850, !nonnull !21, !noundef !21
  %.val.i101 = load i64, ptr %i.gr, align 8, !alias.scope !10850 ; 3 uses
  %.val1.i102 = load i64, ptr %i.gq, align 8, !alias.scope !10850
  %.sroa.3.0.i103 = select i1 %or.cond.i97, i64 %.val.i101, i64 %.val1.i102
  tail call void %.val54(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i100, i64 noundef %.sroa.3.0.i103, i8 noundef 16) #45, !noalias !10853, !inline_history !10834
  %i.gt = icmp sgt i64 %.val.i101, -1
  tail call void @llvm.assume(i1 %i.gt)
  %i.gu = trunc i64 %.val.i101 to i32
  %i.gv = add i32 %i.go, %i.gu
  store i32 %i.gv, ptr %5, align 4, !alias.scope !10849
  store i8 1, ptr %i.b, align 1, !alias.scope !10851
  br label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread

bb.ah:                                            ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread
  %.not1.i107 = icmp sgt i32 %i.l, -1
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gx = load i16, ptr %i.gw, align 8, !range !28, !alias.scope !10854, !noundef !21 ; 2 uses
  br i1 %.not1.i107, label %bb.ai, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit

bb.ai:                                            ; preds = %bb.ah
  switch i16 %i.gx, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread.thread [
    i16 275, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread191
    i16 276, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread191
    i16 277, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread191
    i16 278, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread191
    i16 279, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread191
    i16 280, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread191
    i16 281, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread191
    i16 282, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread191
    i16 401, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread191
    i16 403, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread191
    i16 404, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread191
    i16 405, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread191
  ]

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit: ; preds = %bb.ah
  %.not199 = icmp eq i16 %i.gx, 2189
  br i1 %.not199, label %.thread193, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread191

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread: ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread.thread, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit116
  %i.gy = phi i1 [ %i.fx, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread.thread ], [ %i.gf, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread ], [ true, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit116 ] ; 2 uses
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
  %i.hp = phi i1 [ true, %bb.ai ], [ %i.hq, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit125 ], [ %i.gy, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread ]
  br i1 %.sroa.010.0183, label %bb.am, label %bb.al

.thread193:                                       ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread
  %i.hq = phi i1 [ true, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit ], [ %i.gy, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread ]
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

bb.ar:                                            ; preds = %bb.au, %bb.aw, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter3gasNtB4_12GasFormatter13format_prefix.exit154, %bb.ao
  %or.cond = or i1 %i.ii, %i.ei
  br i1 %or.cond, label %bb.c, label %bb.az

bb.as:                                            ; preds = %bb.ao
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jq = load i16, ptr %i.jp, align 8, !range !28, !noundef !21 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.js = load i32, ptr %i.jr, align 4, !noundef !21
  %i.jt = and i32 %i.js, 4
  %.not22 = icmp eq i32 %i.jt, 0
  br i1 %.not22, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  switch i16 %i.jq, label %bb.au [
    i16 153, label %bb.av
    i16 154, label %bb.av
    i16 155, label %bb.av
    i16 156, label %bb.av
    i16 157, label %bb.av
    i16 158, label %bb.av
    i16 331, label %bb.av
    i16 332, label %bb.av
    i16 333, label %bb.av
    i16 334, label %bb.av
    i16 335, label %bb.av
    i16 336, label %bb.av
    i16 337, label %bb.av
    i16 338, label %bb.av
    i16 343, label %bb.av
    i16 344, label %bb.av
    i16 345, label %bb.av
    i16 346, label %bb.av
    i16 347, label %bb.av
    i16 348, label %bb.av
    i16 349, label %bb.av
    i16 350, label %bb.av
    i16 351, label %bb.av
    i16 352, label %bb.av
    i16 353, label %bb.av
    i16 354, label %bb.av
    i16 1958, label %bb.av
    i16 1959, label %bb.av
    i16 1960, label %bb.av
    i16 1961, label %bb.av
    i16 1962, label %bb.av
    i16 1963, label %bb.av
    i16 1964, label %bb.av
    i16 1965, label %bb.av
    i16 1966, label %bb.av
    i16 1969, label %bb.av
    i16 1970, label %bb.av
    i16 1971, label %bb.av
    i16 1972, label %bb.av
    i16 1973, label %bb.av
    i16 1974, label %bb.av
    i16 1975, label %bb.av
    i16 1976, label %bb.av
    i16 1977, label %bb.av
    i16 1978, label %bb.av
    i16 1979, label %bb.av
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter15format_mnemonic:bb.a
    i8 19, label %.thread180
    i8 20, label %.thread180
    i8 21, label %bb.m
    i8 22, label %bb.m
    i8 23, label %bb.m
    i8 24, label %.thread180
    i8 25, label %bb.m
    i8 26, label %bb.m
    i8 27, label %bb.m
    i8 28, label %bb.m
    i8 29, label %bb.m
  ]

bb.m:                                             ; preds = %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i
  %exitcond.peel19.not.i = icmp eq i8 %i.ah, 4
  br i1 %exitcond.peel19.not.i, label %._crit_edge.i, label %.peel.next14.i

.peel.next14.i:                                   ; preds = %bb.m
  %.sroa.02.0.in.peel23.i = getelementptr inbounds nuw i8, ptr %4, i64 14
  %.sroa.02.0.peel24.i = load i8, ptr %.sroa.02.0.in.peel23.i, align 2, !range !61, !alias.scope !11190, !noundef !21
  switch i8 %.sroa.02.0.peel24.i, label %default.unreachable [
    i8 0, label %bb.n
    i8 1, label %bb.n
    i8 2, label %bb.n
    i8 3, label %bb.n
    i8 4, label %bb.n
    i8 5, label %bb.n
    i8 6, label %bb.n
    i8 7, label %bb.n
    i8 8, label %bb.n
    i8 9, label %bb.n
    i8 10, label %bb.n
    i8 11, label %bb.n
    i8 12, label %bb.n
    i8 13, label %bb.n
    i8 14, label %bb.n
    i8 15, label %.thread180
    i8 16, label %.thread180
    i8 17, label %.thread180
    i8 18, label %.thread180
    i8 19, label %.thread180
    i8 20, label %.thread180
    i8 21, label %bb.n
    i8 22, label %bb.n
    i8 23, label %bb.n
    i8 24, label %.thread180
    i8 25, label %bb.n
    i8 26, label %bb.n
    i8 27, label %bb.n
    i8 28, label %bb.n
    i8 29, label %bb.n
  ]

bb.n:                                             ; preds = %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i
  %exitcond.peel25.not.i = icmp eq i8 %i.ah, 5
  br i1 %exitcond.peel25.not.i, label %._crit_edge.i, label %.peel.next20.i.preheader

.peel.next20.i.preheader:                         ; preds = %bb.n
  switch i8 %.sroa.02.0.peel.i, label %default.unreachable [
    i8 15, label %.thread180
    i8 16, label %.thread180
    i8 17, label %.thread180
    i8 18, label %.thread180
    i8 19, label %.thread180
    i8 20, label %.thread180
    i8 24, label %.thread180
    i8 0, label %._crit_edge.i
    i8 1, label %._crit_edge.i
    i8 2, label %._crit_edge.i
    i8 3, label %._crit_edge.i
    i8 4, label %._crit_edge.i
    i8 5, label %._crit_edge.i
    i8 6, label %._crit_edge.i
    i8 7, label %._crit_edge.i
    i8 8, label %._crit_edge.i
    i8 9, label %._crit_edge.i
    i8 10, label %._crit_edge.i
    i8 11, label %._crit_edge.i
    i8 12, label %._crit_edge.i
    i8 13, label %._crit_edge.i
    i8 14, label %._crit_edge.i
    i8 23, label %._crit_edge.i
    i8 29, label %._crit_edge.i
    i8 25, label %._crit_edge.i
    i8 26, label %._crit_edge.i
    i8 27, label %._crit_edge.i
    i8 28, label %._crit_edge.i
    i8 21, label %._crit_edge.i
    i8 22, label %._crit_edge.i
  ]

bb.o:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.aj = and i32 %.val, 4
  %i.ak = icmp ne i32 %i.aj, 0                    ; 3 uses
  switch i16 %.val42, label %bb.p [
    i16 1050, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter19show_segment_prefix.exit
    i16 1049, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter19show_segment_prefix.exit
    i16 1048, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter19show_segment_prefix.exit
    i16 1040, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter19show_segment_prefix.exit
    i16 1041, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter19show_segment_prefix.exit
    i16 1042, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter19show_segment_prefix.exit
    i16 1043, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter19show_segment_prefix.exit
    i16 1047, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter19show_segment_prefix.exit
  ]

bb.p:                                             ; preds = %bb.o
  %i.al = lshr i32 %i.i, 18
  %i.am = and i32 %i.al, 3
  %.off.i.i.i = add nsw i32 %i.am, -1
  %switch.i.i.i = icmp ult i32 %.off.i.i.i, 2
  br i1 %switch.i.i.i, label %.split184, label %.split

.split:                                           ; preds = %bb.p
  %i.an = add nsw i32 %i.k, -5
  %or.cond.i.i.i = icmp ult i32 %i.an, 2
  %..i.i.i = or i1 %or.cond.i.i.i, %i.ak
  br i1 %..i.i.i, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit, label %.thread180

.split184:                                        ; preds = %bb.p
  %.not.i.i.i = icmp ne i32 %i.k, 4
  %.8.i.i.i = or i1 %.not.i.i.i, %i.ak
  br i1 %.8.i.i.i, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit, label %.thread180

._crit_edge.i:                                    ; preds = %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.ao = and i32 %.val, 4
  %.not195 = icmp eq i32 %i.ao, 0
  br i1 %.not195, label %.thread180, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit

default.unreachable:                              ; preds = %.peel.next20.i.preheader, %.peel.next14.i, %.peel.next8.i, %.peel.next2.i, %.peel.next.i, %.lr.ph.i
  unreachable

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter19show_segment_prefix.exit: ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o
  br i1 %i.ak, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit, label %.thread180

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit: ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter19show_segment_prefix.exit, %._crit_edge.i, %.split, %.split184
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !21, !align !25, !noundef !21
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %i.aq, i64 %i.ac ; 3 uses
  %i.as = icmp samesign ult i8 %.sroa.0.1170178, 18
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val73 = load i32, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val75 = load ptr, ptr %i.au, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11193)
  %.pre.i = load i32, ptr %5, align 4, !alias.scope !11191
  %i.av = and i32 %.val73, 33
  %or.cond.i = icmp eq i32 %i.av, 0               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.0.0.in.v.i = select i1 %or.cond.i, i64 8, i64 32
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.in.v.i
  %.sroa.0.0.i76 = load ptr, ptr %.sroa.0.0.in.i, align 8, !alias.scope !11192, !nonnull !21, !noundef !21
  %.val.i = load i64, ptr %i.ax, align 8, !alias.scope !11192 ; 3 uses
  %.val1.i = load i64, ptr %i.aw, align 8, !alias.scope !11192
  %.sroa.3.0.i = select i1 %or.cond.i, i64 %.val.i, i64 %.val1.i
  tail call void %.val75(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i76, i64 noundef %.sroa.3.0.i, i8 noundef range(i8 0, 18) %.sroa.0.1170178) #45, !noalias !11194, !inline_history !11195
  %i.ay = icmp sgt i64 %.val.i, -1
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = trunc i64 %.val.i to i32
  %i.ba = add i32 %.pre.i, %i.az
  store i32 %i.ba, ptr %5, align 4, !alias.scope !11191
  store i8 1, ptr %i.a, align 1, !alias.scope !11193
  br label %.thread180

bb.q:                                             ; preds = %.thread180
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11196)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i8, ptr %i.bb, align 8, !range !38, !alias.scope !11196, !noundef !21
  %.not.i77 = icmp eq i8 %i.bc, 24
  br i1 %.not.i77, label %bb.r, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread.thread

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread.thread: ; preds = %bb.q
  %i.bd = and i32 %i.i, 536870912
  %i.be = icmp ne i32 %i.bd, 0
  br label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread

bb.r:                                             ; preds = %bb.q
  %.not1.i = icmp sgt i32 %i.i, -1
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bg = load i16, ptr %i.bf, align 8, !range !28, !alias.scope !11196, !noundef !21 ; 2 uses
  br i1 %.not1.i, label %.split186, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit

.split186:                                        ; preds = %bb.r
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr @_RNvNtCsf8MNnN4IDbl_8iced_x869mnemonics11TO_MNEMONIC, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !range !58, !noalias !11196, !noundef !21
  %i.bk = icmp eq i16 %i.bj, 1509
  br i1 %i.bk, label %bb.s, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit: ; preds = %bb.r
  %.not196 = icmp eq i16 %i.bg, 2189
  br i1 %.not196, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread, label %bb.s

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread: ; preds = %.thread180._RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread_crit_edge, %.split186, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit86, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit
  %i.bl = phi i8 [ %i.y, %.thread180._RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread_crit_edge ], [ %i.y, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit ], [ %i.y, %.split186 ], [ 1, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit86 ] ; 4 uses
  %.not.i87 = phi i1 [ %i.ab, %.thread180._RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread_crit_edge ], [ true, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit ], [ true, %.split186 ], [ true, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit86 ]
  %i.bm = and i32 %i.i, 536870912
  %i.bn = icmp ne i32 %i.bm, 0                    ; 2 uses
  %or.cond200 = select i1 %i.bn, i1 %.not.i87, i1 false
  br i1 %or.cond200, label %bb.u, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread

bb.s:                                             ; preds = %.split186, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val70 = load i32, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val71 = load ptr, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val72 = load ptr, ptr %i.bs, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11199)
  %i.bt = trunc nuw i8 %i.y to i1
  %.pre.i78 = load i32, ptr %5, align 4, !alias.scope !11197 ; 2 uses
  br i1 %i.bt, label %bb.t, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit86

bb.t:                                             ; preds = %bb.s
  %i.bu = add i32 %.pre.i78, 1                    ; 2 uses
  store i32 %i.bu, ptr %5, align 4, !alias.scope !11197
  tail call void %.val71(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11200, !inline_history !11195
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit86

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit86: ; preds = %bb.s, %bb.t
  %i.bv = phi i32 [ %i.bu, %bb.t ], [ %.pre.i78, %bb.s ]
  %i.bw = and i32 %.val70, 33
  %or.cond.i79 = icmp eq i32 %i.bw, 0             ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 2920
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 2896
  %i.bz = select i1 %or.cond.i79, i64 2888, i64 2912
  %.sroa.0.0.in.i81 = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bz
  %.sroa.0.0.i82 = load ptr, ptr %.sroa.0.0.in.i81, align 8, !alias.scope !11198, !nonnull !21, !noundef !21
  %.val.i83 = load i64, ptr %i.by, align 8, !alias.scope !11198 ; 3 uses
  %.val1.i84 = load i64, ptr %i.bx, align 8, !alias.scope !11198
  %.sroa.3.0.i85 = select i1 %or.cond.i79, i64 %.val.i83, i64 %.val1.i84
  tail call void %.val72(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i82, i64 noundef %.sroa.3.0.i85, i8 noundef 16) #45, !noalias !11201, !inline_history !11195
  %i.ca = icmp sgt i64 %.val.i83, -1
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = trunc i64 %.val.i83 to i32
  %i.cc = add i32 %i.bv, %i.cb
  store i32 %i.cc, ptr %5, align 4, !alias.scope !11197
  store i8 1, ptr %i.a, align 1, !alias.scope !11199
  br label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread

bb.u:                                             ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread
  %.not1.i89 = icmp sgt i32 %i.i, -1
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ce = load i16, ptr %i.cd, align 8, !range !28, !alias.scope !11202, !noundef !21 ; 2 uses
  br i1 %.not1.i89, label %bb.v, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit

bb.v:                                             ; preds = %bb.u
  switch i16 %i.ce, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread.thread [
    i16 275, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread188
    i16 276, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread188
    i16 277, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread188
    i16 278, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread188
    i16 279, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread188
    i16 280, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread188
    i16 281, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread188
    i16 282, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread188
    i16 401, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread188
    i16 403, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread188
    i16 404, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread188
    i16 405, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread188
  ]

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit: ; preds = %bb.u
  %.not197 = icmp eq i16 %i.ce, 2189
  br i1 %.not197, label %.thread190, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread188

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread: ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread.thread, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit98
  %i.cf = phi i1 [ %i.bn, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread ], [ true, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit98 ], [ %i.be, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread.thread ] ; 2 uses
  %i.cg = phi i8 [ %i.bl, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread ], [ 1, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit98 ], [ %i.y, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread.thread ] ; 2 uses
  %.not32 = icmp sgt i32 %i.i, -1
  br i1 %.not32, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread.thread, label %.thread190

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread188: ; preds = %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %bb.v, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val67 = load i32, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val68 = load ptr, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val69 = load ptr, ptr %i.cl, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11205)
  %i.cm = trunc nuw i8 %i.bl to i1
  %.pre.i90 = load i32, ptr %5, align 4, !alias.scope !11203 ; 2 uses
  br i1 %i.cm, label %bb.w, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit98

bb.w:                                             ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread188
  %i.cn = add i32 %.pre.i90, 1                    ; 2 uses
  store i32 %i.cn, ptr %5, align 4, !alias.scope !11203
  tail call void %.val68(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11206, !inline_history !11195
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit98

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit98: ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread188, %bb.w
  %i.co = phi i32 [ %i.cn, %bb.w ], [ %.pre.i90, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread188 ]
  %i.cp = and i32 %.val67, 33
  %or.cond.i91 = icmp eq i32 %i.cp, 0             ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 2968
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 2944
  %i.cs = select i1 %or.cond.i91, i64 2936, i64 2960
  %.sroa.0.0.in.i93 = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cs
  %.sroa.0.0.i94 = load ptr, ptr %.sroa.0.0.in.i93, align 8, !alias.scope !11204, !nonnull !21, !noundef !21
  %.val.i95 = load i64, ptr %i.cr, align 8, !alias.scope !11204 ; 3 uses
  %.val1.i96 = load i64, ptr %i.cq, align 8, !alias.scope !11204
  %.sroa.3.0.i97 = select i1 %or.cond.i91, i64 %.val.i95, i64 %.val1.i96
  tail call void %.val69(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i94, i64 noundef %.sroa.3.0.i97, i8 noundef 17) #45, !noalias !11207, !inline_history !11195
  %i.ct = icmp sgt i64 %.val.i95, -1
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = trunc i64 %.val.i95 to i32
  %i.cv = add i32 %i.co, %i.cu
  store i32 %i.cv, ptr %5, align 4, !alias.scope !11203
  store i8 1, ptr %i.a, align 1, !alias.scope !11205
  br label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread.thread: ; preds = %bb.v, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit107, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread
  %i.cw = phi i1 [ true, %bb.v ], [ %i.da, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit107 ], [ %i.cf, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread ]
  %i.cx = phi i8 [ %i.bl, %bb.v ], [ 1, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit107 ], [ %i.cg, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread ] ; 3 uses
  %i.cy = and i16 %i.e, 32
  %i.cz = icmp eq i16 %i.cy, 0
  br i1 %i.cz, label %bb.y, label %bb.z

.thread190:                                       ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread
  %i.da = phi i1 [ true, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit ], [ %i.cf, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread ]
  %i.db = phi i8 [ %i.bl, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit ], [ %i.cg, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val64 = load i32, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val65 = load ptr, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val66 = load ptr, ptr %i.dg, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11210)
  %i.dh = trunc nuw i8 %i.db to i1
  %.pre.i99 = load i32, ptr %5, align 4, !alias.scope !11208 ; 2 uses
  br i1 %i.dh, label %bb.x, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit107

bb.x:                                             ; preds = %.thread190
  %i.di = add i32 %.pre.i99, 1                    ; 2 uses
  store i32 %i.di, ptr %5, align 4, !alias.scope !11208
  tail call void %.val65(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11211, !inline_history !11195
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit107

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4masmNtB4_13MasmFormatter13format_prefix.exit107: ; preds = %.thread190, %bb.x
  %i.dj = phi i32 [ %i.di, %bb.x ], [ %.pre.i99, %.thread190 ]
  %i.dk = and i32 %.val64, 33
  %or.cond.i100 = icmp eq i32 %i.dk, 0            ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 1672
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 1648
  %i.dn = select i1 %or.cond.i100, i64 1640, i64 1664
  %.sroa.0.0.in.i102 = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dn
  %.sroa.0.0.i103 = load ptr, ptr %.sroa.0.0.in.i102, align 8, !alias.scope !11209, !nonnull !21, !noundef !21
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
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter15format_mnemonic:bb.a
    i8 15, label %.thread
    i8 16, label %.thread
    i8 17, label %.thread
    i8 18, label %.thread
    i8 19, label %.thread
    i8 20, label %.thread
    i8 21, label %bb.s
    i8 22, label %bb.s
    i8 23, label %bb.s
    i8 24, label %.thread
    i8 25, label %bb.s
    i8 26, label %bb.s
    i8 27, label %bb.s
    i8 28, label %bb.s
    i8 29, label %bb.s
    i8 30, label %bb.s
    i8 31, label %bb.s
    i8 32, label %bb.s
    i8 33, label %bb.s
    i8 34, label %bb.s
    i8 35, label %bb.s
    i8 36, label %bb.s
    i8 37, label %bb.s
  ]

bb.s:                                             ; preds = %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i
  %exitcond.peel25.not.i = icmp eq i8 %i.bx, 5
  br i1 %exitcond.peel25.not.i, label %._crit_edge.i, label %.peel.next20.i.preheader

.peel.next20.i.preheader:                         ; preds = %bb.s
  switch i8 %.sroa.02.0.peel.i, label %default.unreachable [
    i8 15, label %.thread
    i8 16, label %.thread
    i8 17, label %.thread
    i8 18, label %.thread
    i8 19, label %.thread
    i8 20, label %.thread
    i8 24, label %.thread
    i8 0, label %._crit_edge.i
    i8 1, label %._crit_edge.i
    i8 2, label %._crit_edge.i
    i8 3, label %._crit_edge.i
    i8 4, label %._crit_edge.i
    i8 5, label %._crit_edge.i
    i8 6, label %._crit_edge.i
    i8 7, label %._crit_edge.i
    i8 8, label %._crit_edge.i
    i8 9, label %._crit_edge.i
    i8 10, label %._crit_edge.i
    i8 11, label %._crit_edge.i
    i8 12, label %._crit_edge.i
    i8 13, label %._crit_edge.i
    i8 14, label %._crit_edge.i
    i8 31, label %._crit_edge.i
    i8 32, label %._crit_edge.i
    i8 33, label %._crit_edge.i
    i8 34, label %._crit_edge.i
    i8 35, label %._crit_edge.i
    i8 36, label %._crit_edge.i
    i8 21, label %._crit_edge.i
    i8 22, label %._crit_edge.i
    i8 23, label %._crit_edge.i
    i8 37, label %._crit_edge.i
    i8 25, label %._crit_edge.i
    i8 26, label %._crit_edge.i
    i8 27, label %._crit_edge.i
    i8 28, label %._crit_edge.i
    i8 29, label %._crit_edge.i
    i8 30, label %._crit_edge.i
  ]

bb.t:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.bz = and i32 %.val56, 4
  %i.ca = icmp ne i32 %i.bz, 0                    ; 3 uses
  switch i16 %i.bv, label %bb.u [
    i16 290, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter19show_segment_prefix.exit
    i16 291, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter19show_segment_prefix.exit
    i16 292, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter19show_segment_prefix.exit
    i16 1040, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter19show_segment_prefix.exit
    i16 1041, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter19show_segment_prefix.exit
    i16 1042, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter19show_segment_prefix.exit
    i16 1043, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter19show_segment_prefix.exit
    i16 1047, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter19show_segment_prefix.exit
    i16 1048, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter19show_segment_prefix.exit
    i16 1049, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter19show_segment_prefix.exit
    i16 1050, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter19show_segment_prefix.exit
  ]

bb.u:                                             ; preds = %bb.t
  %i.cb = lshr i32 %i.i, 18
  %i.cc = and i32 %i.cb, 3
  %.off.i.i.i = add nsw i32 %i.cc, -1
  %switch.i.i.i = icmp ult i32 %.off.i.i.i, 2
  br i1 %switch.i.i.i, label %.split155, label %.split154

.split154:                                        ; preds = %bb.u
  %i.cd = add nsw i32 %i.k, -5
  %or.cond.i.i.i = icmp ult i32 %i.cd, 2
  %..i.i.i = or i1 %or.cond.i.i.i, %i.ca
  br i1 %..i.i.i, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter19show_segment_prefix.exit.thread152, label %.thread

.split155:                                        ; preds = %bb.u
  %.not.i.i.i = icmp ne i32 %narrow, 74
  %.8.i.i.i = or i1 %.not.i.i.i, %i.ca
  br i1 %.8.i.i.i, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter19show_segment_prefix.exit.thread152, label %.thread

.split:                                           ; preds = %bb.m
  %i.ce = tail call fastcc noundef zeroext i1 @_RNvNtNtCsf8MNnN4IDbl_8iced_x869formatter9fmt_utils19show_segment_prefix(i8 noundef 74, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 %.val56), !alias.scope !11578
  br i1 %i.ce, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter19show_segment_prefix.exit.thread152, label %.thread

._crit_edge.i:                                    ; preds = %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %i.cf = and i32 %.val56, 4
  %.not = icmp eq i32 %i.cf, 0
  br i1 %.not, label %.thread, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter19show_segment_prefix.exit.thread152

default.unreachable:                              ; preds = %.peel.next20.i.preheader, %.peel.next14.i, %.peel.next8.i, %.peel.next2.i, %.peel.next.i, %.lr.ph.i
  unreachable

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter19show_segment_prefix.exit: ; preds = %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t
  br i1 %i.ca, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter19show_segment_prefix.exit.thread152, label %.thread

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter19show_segment_prefix.exit.thread152: ; preds = %bb.l, %.split155, %.split154, %.split, %._crit_edge.i, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter19show_segment_prefix.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !21, !align !25, !noundef !21
  %i.ci = getelementptr inbounds nuw [48 x i8], ptr %i.ch, i64 %.sroa.0.0 ; 3 uses
  %i.cj = trunc nuw nsw i32 %narrow to i8
  %i.ck = add nsw i8 %i.cj, -71
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val47 = load i32, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val48 = load ptr, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val49 = load ptr, ptr %i.cn, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11582)
  %i.co = trunc nuw i8 %i.bf to i1
  %.pre.i67 = load i32, ptr %5, align 4, !alias.scope !11580 ; 2 uses
  br i1 %i.co, label %bb.v, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit75

bb.v:                                             ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter19show_segment_prefix.exit.thread152
  %i.cp = add i32 %.pre.i67, 1                    ; 2 uses
  store i32 %i.cp, ptr %5, align 4, !alias.scope !11580
  tail call void %.val48(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11583, !inline_history !11572
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit75

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit75: ; preds = %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter19show_segment_prefix.exit.thread152, %bb.v
  %i.cq = phi i32 [ %i.cp, %bb.v ], [ %.pre.i67, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter19show_segment_prefix.exit.thread152 ]
  %i.cr = and i32 %.val47, 33
  %or.cond.i68 = icmp eq i32 %i.cr, 0             ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %.sroa.0.0.in.v.i69 = select i1 %or.cond.i68, i64 8, i64 32
  %.sroa.0.0.in.i70 = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.0.0.in.v.i69
  %.sroa.0.0.i71 = load ptr, ptr %.sroa.0.0.in.i70, align 8, !alias.scope !11581, !nonnull !21, !noundef !21
  %.val.i72 = load i64, ptr %i.ct, align 8, !alias.scope !11581 ; 3 uses
  %.val1.i73 = load i64, ptr %i.cs, align 8, !alias.scope !11581
  %.sroa.3.0.i74 = select i1 %or.cond.i68, i64 %.val.i72, i64 %.val1.i73
  tail call void %.val49(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i71, i64 noundef %.sroa.3.0.i74, i8 noundef range(i8 0, 18) %i.ck) #45, !noalias !11584, !inline_history !11572
  %i.cu = icmp sgt i64 %.val.i72, -1
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = trunc i64 %.val.i72 to i32
  %i.cw = add i32 %i.cq, %i.cv
  store i32 %i.cw, ptr %5, align 4, !alias.scope !11580
  store i8 1, ptr %i.a, align 1, !alias.scope !11582
  br label %.thread

bb.w:                                             ; preds = %.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11585)
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cy = load i8, ptr %i.cx, align 8, !range !38, !alias.scope !11585, !noundef !21
  %.not.i76 = icmp eq i8 %i.cy, 24
  br i1 %.not.i76, label %bb.x, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread.thread

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread.thread: ; preds = %bb.w
  %i.cz = and i32 %i.i, 536870912
  %i.da = icmp ne i32 %i.cz, 0
  br label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread

bb.x:                                             ; preds = %bb.w
  %.not1.i = icmp sgt i32 %i.i, -1
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dc = load i16, ptr %i.db, align 8, !range !28, !alias.scope !11585, !noundef !21 ; 2 uses
  br i1 %.not1.i, label %.split157, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit

.split157:                                        ; preds = %bb.x
  %i.dd = zext nneg i16 %i.dc to i64
  %i.de = getelementptr inbounds nuw [2 x i8], ptr @_RNvNtCsf8MNnN4IDbl_8iced_x869mnemonics11TO_MNEMONIC, i64 %i.dd
  %i.df = load i16, ptr %i.de, align 2, !range !58, !noalias !11585, !noundef !21
  %i.dg = icmp eq i16 %i.df, 1509
  br i1 %i.dg, label %bb.y, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit: ; preds = %bb.x
  %.not165 = icmp eq i16 %i.dc, 2189
  br i1 %.not165, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread, label %bb.y

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread: ; preds = %.thread._RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread_crit_edge, %.split157, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit85, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit
  %i.dh = phi i8 [ %i.bn, %.thread._RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread_crit_edge ], [ %i.bn, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit ], [ %i.bn, %.split157 ], [ 1, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit85 ] ; 4 uses
  %.not.i86 = phi i1 [ %i.bq, %.thread._RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread_crit_edge ], [ true, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit ], [ true, %.split157 ], [ true, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit85 ]
  %i.di = and i32 %i.i, 536870912
  %i.dj = icmp ne i32 %i.di, 0                    ; 2 uses
  %or.cond169 = select i1 %i.dj, i1 %.not.i86, i1 false
  br i1 %or.cond169, label %bb.aa, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread

bb.y:                                             ; preds = %.split157, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.dl = load ptr, ptr %i.dk, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val44 = load i32, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val45 = load ptr, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val46 = load ptr, ptr %i.do, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11588)
  %i.dp = trunc nuw i8 %i.bn to i1
  %.pre.i77 = load i32, ptr %5, align 4, !alias.scope !11586 ; 2 uses
  br i1 %i.dp, label %bb.z, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit85

bb.z:                                             ; preds = %bb.y
  %i.dq = add i32 %.pre.i77, 1                    ; 2 uses
  store i32 %i.dq, ptr %5, align 4, !alias.scope !11586
  tail call void %.val45(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11589, !inline_history !11572
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit85

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit85: ; preds = %bb.y, %bb.z
  %i.dr = phi i32 [ %i.dq, %bb.z ], [ %.pre.i77, %bb.y ]
  %i.ds = and i32 %.val44, 33
  %or.cond.i78 = icmp eq i32 %i.ds, 0             ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 2920
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 2896
  %i.dv = select i1 %or.cond.i78, i64 2888, i64 2912
  %.sroa.0.0.in.i80 = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dv
  %.sroa.0.0.i81 = load ptr, ptr %.sroa.0.0.in.i80, align 8, !alias.scope !11587, !nonnull !21, !noundef !21
  %.val.i82 = load i64, ptr %i.du, align 8, !alias.scope !11587 ; 3 uses
  %.val1.i83 = load i64, ptr %i.dt, align 8, !alias.scope !11587
  %.sroa.3.0.i84 = select i1 %or.cond.i78, i64 %.val.i82, i64 %.val1.i83
  tail call void %.val46(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i81, i64 noundef %.sroa.3.0.i84, i8 noundef 16) #45, !noalias !11590, !inline_history !11572
  %i.dw = icmp sgt i64 %.val.i82, -1
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = trunc i64 %.val.i82 to i32
  %i.dy = add i32 %i.dr, %i.dx
  store i32 %i.dy, ptr %5, align 4, !alias.scope !11586
  store i8 1, ptr %i.a, align 1, !alias.scope !11588
  br label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread

bb.aa:                                            ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread
  %.not1.i88 = icmp sgt i32 %i.i, -1
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ea = load i16, ptr %i.dz, align 8, !range !28, !alias.scope !11591, !noundef !21 ; 2 uses
  br i1 %.not1.i88, label %bb.ab, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit

bb.ab:                                            ; preds = %bb.aa
  switch i16 %i.ea, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread.thread [
    i16 275, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread159
    i16 276, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread159
    i16 277, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread159
    i16 278, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread159
    i16 279, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread159
    i16 280, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread159
    i16 281, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread159
    i16 282, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread159
    i16 401, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread159
    i16 403, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread159
    i16 404, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread159
    i16 405, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread159
  ]

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit: ; preds = %bb.aa
  %.not166 = icmp eq i16 %i.ea, 2189
  br i1 %.not166, label %.thread161, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread159

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread: ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread.thread, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit97
  %i.eb = phi i1 [ %i.dj, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread ], [ true, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit97 ], [ %i.da, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread.thread ] ; 2 uses
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
  %i.es = phi i1 [ true, %bb.ab ], [ %i.eu, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit106 ], [ %i.eb, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread ]
  %i.et = phi i8 [ %i.dh, %bb.ab ], [ 1, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit106 ], [ %i.ec, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread ] ; 2 uses
  br i1 %.sroa.09.0150, label %bb.af, label %bb.ae

.thread161:                                       ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread
  %i.eu = phi i1 [ true, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit ], [ %i.eb, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread ]
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

bb.ak:                                            ; preds = %bb.an, %bb.ap, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter4nasmNtB4_13NasmFormatter13format_prefix.exit135, %bb.ah
  %or.cond = or i1 %i.fn, %i.bp
  br i1 %or.cond, label %bb.aw, label %bb.as

bb.al:                                            ; preds = %bb.ah
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gu = load i16, ptr %i.gt, align 8, !range !28, !noundef !21 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.gw = load i32, ptr %i.gv, align 4, !noundef !21
  %i.gx = and i32 %i.gw, 4
  %.not15 = icmp eq i32 %i.gx, 0
  br i1 %.not15, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  switch i16 %i.gu, label %bb.an [
    i16 153, label %bb.ao
    i16 154, label %bb.ao
    i16 155, label %bb.ao
    i16 156, label %bb.ao
    i16 157, label %bb.ao
    i16 158, label %bb.ao
    i16 331, label %bb.ao
    i16 332, label %bb.ao
    i16 333, label %bb.ao
    i16 334, label %bb.ao
    i16 335, label %bb.ao
    i16 336, label %bb.ao
    i16 337, label %bb.ao
    i16 338, label %bb.ao
    i16 343, label %bb.ao
    i16 344, label %bb.ao
    i16 345, label %bb.ao
    i16 346, label %bb.ao
    i16 347, label %bb.ao
    i16 348, label %bb.ao
    i16 349, label %bb.ao
    i16 350, label %bb.ao
    i16 351, label %bb.ao
    i16 352, label %bb.ao
    i16 353, label %bb.ao
    i16 354, label %bb.ao
    i16 1958, label %bb.ao
    i16 1959, label %bb.ao
    i16 1960, label %bb.ao
    i16 1961, label %bb.ao
    i16 1962, label %bb.ao
    i16 1963, label %bb.ao
    i16 1964, label %bb.ao
    i16 1965, label %bb.ao
    i16 1966, label %bb.ao
    i16 1969, label %bb.ao
    i16 1970, label %bb.ao
    i16 1971, label %bb.ao
    i16 1972, label %bb.ao
    i16 1973, label %bb.ao
    i16 1974, label %bb.ao
    i16 1975, label %bb.ao
    i16 1976, label %bb.ao
    i16 1977, label %bb.ao
    i16 1978, label %bb.ao
    i16 1979, label %bb.ao
end_hunk_2
begin_hunk_3_@_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter15format_mnemonic:bb.a
  ]

bb.r:                                             ; preds = %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i, %.peel.next8.i
  %exitcond.peel19.not.i = icmp eq i8 %i.bv, 4
  br i1 %exitcond.peel19.not.i, label %._crit_edge.i, label %.peel.next14.i

.peel.next14.i:                                   ; preds = %bb.r
  %.sroa.02.0.in.peel23.i = getelementptr inbounds nuw i8, ptr %4, i64 14
  %.sroa.02.0.peel24.i = load i8, ptr %.sroa.02.0.in.peel23.i, align 2, !range !62, !alias.scope !11935, !noundef !21
  switch i8 %.sroa.02.0.peel24.i, label %default.unreachable [
    i8 0, label %bb.s
    i8 1, label %bb.s
    i8 2, label %bb.s
    i8 3, label %bb.s
    i8 4, label %bb.s
    i8 5, label %bb.s
    i8 6, label %bb.s
    i8 7, label %bb.s
    i8 8, label %bb.s
    i8 9, label %bb.s
    i8 10, label %bb.s
    i8 11, label %bb.s
    i8 12, label %bb.s
    i8 13, label %bb.s
    i8 14, label %bb.s
    i8 15, label %.thread
    i8 16, label %.thread
    i8 17, label %.thread
    i8 18, label %.thread
    i8 19, label %.thread
    i8 20, label %.thread
    i8 21, label %bb.s
    i8 22, label %bb.s
    i8 23, label %bb.s
    i8 24, label %.thread
    i8 25, label %bb.s
    i8 26, label %bb.s
    i8 27, label %bb.s
    i8 28, label %bb.s
  ]

bb.s:                                             ; preds = %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i, %.peel.next14.i
  %exitcond.peel25.not.i = icmp eq i8 %i.bv, 5
  br i1 %exitcond.peel25.not.i, label %._crit_edge.i, label %.peel.next20.i.preheader

.peel.next20.i.preheader:                         ; preds = %bb.s
  switch i8 %.sroa.02.0.peel.i, label %default.unreachable [
    i8 15, label %.thread
    i8 16, label %.thread
    i8 17, label %.thread
    i8 18, label %.thread
    i8 19, label %.thread
    i8 20, label %.thread
    i8 24, label %.thread
    i8 0, label %._crit_edge.i
    i8 1, label %._crit_edge.i
    i8 2, label %._crit_edge.i
    i8 3, label %._crit_edge.i
    i8 4, label %._crit_edge.i
    i8 5, label %._crit_edge.i
    i8 6, label %._crit_edge.i
    i8 7, label %._crit_edge.i
    i8 8, label %._crit_edge.i
    i8 9, label %._crit_edge.i
    i8 10, label %._crit_edge.i
    i8 11, label %._crit_edge.i
    i8 12, label %._crit_edge.i
    i8 13, label %._crit_edge.i
    i8 14, label %._crit_edge.i
    i8 22, label %._crit_edge.i
    i8 23, label %._crit_edge.i
    i8 28, label %._crit_edge.i
    i8 25, label %._crit_edge.i
    i8 26, label %._crit_edge.i
    i8 27, label %._crit_edge.i
    i8 21, label %._crit_edge.i
  ]

bb.t:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.bx = and i32 %.val67, 4
  %i.by = icmp ne i32 %i.bx, 0                    ; 3 uses
  switch i16 %.val69, label %bb.u [
    i16 1050, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter19show_segment_prefix.exit
    i16 1049, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter19show_segment_prefix.exit
    i16 1048, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter19show_segment_prefix.exit
    i16 1040, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter19show_segment_prefix.exit
    i16 1041, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter19show_segment_prefix.exit
    i16 1042, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter19show_segment_prefix.exit
    i16 1043, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter19show_segment_prefix.exit
    i16 1047, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter19show_segment_prefix.exit
  ]

bb.u:                                             ; preds = %bb.t
  %i.bz = lshr i32 %i.h, 18
  %i.ca = and i32 %i.bz, 3
  %.off.i.i.i = add nsw i32 %i.ca, -1
  %switch.i.i.i = icmp ult i32 %.off.i.i.i, 2
  br i1 %switch.i.i.i, label %.split183, label %.split

.split:                                           ; preds = %bb.u
  %i.cb = add nsw i32 %i.j, -5
  %or.cond.i.i.i = icmp ult i32 %i.cb, 2
  %..i.i.i = or i1 %or.cond.i.i.i, %i.by
  br i1 %..i.i.i, label %bb.v, label %.thread

.split183:                                        ; preds = %bb.u
  %.not.i.i.i = icmp ne i32 %narrow, 74
  %.8.i.i.i = or i1 %.not.i.i.i, %i.by
  br i1 %.8.i.i.i, label %bb.v, label %.thread

._crit_edge.i:                                    ; preds = %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %.peel.next20.i.preheader, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %i.cc = and i32 %.val67, 4
  %.not = icmp eq i32 %i.cc, 0
  br i1 %.not, label %.thread, label %bb.v

default.unreachable:                              ; preds = %.peel.next20.i.preheader, %.peel.next14.i, %.peel.next8.i, %.peel.next2.i, %.peel.next.i, %.lr.ph.i
  unreachable

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter19show_segment_prefix.exit: ; preds = %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t
  br i1 %i.by, label %bb.v, label %.thread

bb.v:                                             ; preds = %.split183, %.split, %._crit_edge.i, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter19show_segment_prefix.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !21, !align !25, !noundef !21
  %i.cf = getelementptr inbounds nuw [48 x i8], ptr %i.ce, i64 %.sroa.0.0 ; 3 uses
  %i.cg = trunc nuw nsw i32 %narrow to i8
  %i.ch = add nsw i8 %i.cg, -71
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val58 = load i32, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val59 = load ptr, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val60 = load ptr, ptr %i.ck, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11938)
  %i.cl = trunc nuw i8 %i.bf to i1
  %.pre.i80 = load i32, ptr %5, align 4, !alias.scope !11936 ; 2 uses
  br i1 %i.cl, label %bb.w, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit88

bb.w:                                             ; preds = %bb.v
  %i.cm = add i32 %.pre.i80, 1                    ; 2 uses
  store i32 %i.cm, ptr %5, align 4, !alias.scope !11936
  tail call void %.val59(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11939, !inline_history !11929
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit88

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit88: ; preds = %bb.v, %bb.w
  %i.cn = phi i32 [ %i.cm, %bb.w ], [ %.pre.i80, %bb.v ]
  %i.co = and i32 %.val58, 33
  %or.cond.i81 = icmp eq i32 %i.co, 0             ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.sroa.0.0.in.v.i82 = select i1 %or.cond.i81, i64 8, i64 32
  %.sroa.0.0.in.i83 = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.0.in.v.i82
  %.sroa.0.0.i84 = load ptr, ptr %.sroa.0.0.in.i83, align 8, !alias.scope !11937, !nonnull !21, !noundef !21
  %.val.i85 = load i64, ptr %i.cq, align 8, !alias.scope !11937 ; 3 uses
  %.val1.i86 = load i64, ptr %i.cp, align 8, !alias.scope !11937
  %.sroa.3.0.i87 = select i1 %or.cond.i81, i64 %.val.i85, i64 %.val1.i86
  tail call void %.val60(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i84, i64 noundef %.sroa.3.0.i87, i8 noundef range(i8 0, 18) %i.ch) #45, !noalias !11940, !inline_history !11929
  %i.cr = icmp sgt i64 %.val.i85, -1
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = trunc i64 %.val.i85 to i32
  %i.ct = add i32 %i.cn, %i.cs
  store i32 %i.ct, ptr %5, align 4, !alias.scope !11936
  store i8 1, ptr %i.a, align 1, !alias.scope !11938
  br label %.thread

bb.x:                                             ; preds = %.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11941)
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cv = load i8, ptr %i.cu, align 8, !range !38, !alias.scope !11941, !noundef !21
  %.not.i89 = icmp eq i8 %i.cv, 24
  br i1 %.not.i89, label %bb.y, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread.thread

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread.thread: ; preds = %bb.x
  %i.cw = and i32 %i.h, 536870912
  %i.cx = icmp ne i32 %i.cw, 0
  br label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread

bb.y:                                             ; preds = %bb.x
  %.not1.i = icmp sgt i32 %i.h, -1
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cz = load i16, ptr %i.cy, align 8, !range !28, !alias.scope !11941, !noundef !21 ; 2 uses
  br i1 %.not1.i, label %.split185, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit

.split185:                                        ; preds = %bb.y
  %i.da = zext nneg i16 %i.cz to i64
  %i.db = getelementptr inbounds nuw [2 x i8], ptr @_RNvNtCsf8MNnN4IDbl_8iced_x869mnemonics11TO_MNEMONIC, i64 %i.da
  %i.dc = load i16, ptr %i.db, align 2, !range !58, !noalias !11941, !noundef !21
  %i.dd = icmp eq i16 %i.dc, 1509
  br i1 %i.dd, label %bb.z, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit: ; preds = %bb.y
  %.not193 = icmp eq i16 %i.cz, 2189
  br i1 %.not193, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread, label %bb.z

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread: ; preds = %.thread._RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread_crit_edge, %.split185, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit98, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit
  %i.de = phi i8 [ %i.bn, %.thread._RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread_crit_edge ], [ %i.bn, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit ], [ %i.bn, %.split185 ], [ 1, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit98 ] ; 4 uses
  %.not.i99 = phi i1 [ %i.bq, %.thread._RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread_crit_edge ], [ true, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit ], [ true, %.split185 ], [ true, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit98 ]
  %i.df = and i32 %i.h, 536870912
  %i.dg = icmp ne i32 %i.df, 0                    ; 2 uses
  %or.cond197 = select i1 %i.dg, i1 %.not.i99, i1 false
  br i1 %or.cond197, label %bb.ab, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread

bb.z:                                             ; preds = %.split185, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val55 = load i32, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val56 = load ptr, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val57 = load ptr, ptr %i.dl, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11943)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11944)
  %i.dm = trunc nuw i8 %i.bn to i1
  %.pre.i90 = load i32, ptr %5, align 4, !alias.scope !11942 ; 2 uses
  br i1 %i.dm, label %bb.aa, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit98

bb.aa:                                            ; preds = %bb.z
  %i.dn = add i32 %.pre.i90, 1                    ; 2 uses
  store i32 %i.dn, ptr %5, align 4, !alias.scope !11942
  tail call void %.val56(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11945, !inline_history !11929
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit98

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit98: ; preds = %bb.z, %bb.aa
  %i.do = phi i32 [ %i.dn, %bb.aa ], [ %.pre.i90, %bb.z ]
  %i.dp = and i32 %.val55, 33
  %or.cond.i91 = icmp eq i32 %i.dp, 0             ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 2920
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 2896
  %i.ds = select i1 %or.cond.i91, i64 2888, i64 2912
  %.sroa.0.0.in.i93 = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ds
  %.sroa.0.0.i94 = load ptr, ptr %.sroa.0.0.in.i93, align 8, !alias.scope !11943, !nonnull !21, !noundef !21
  %.val.i95 = load i64, ptr %i.dr, align 8, !alias.scope !11943 ; 3 uses
  %.val1.i96 = load i64, ptr %i.dq, align 8, !alias.scope !11943
  %.sroa.3.0.i97 = select i1 %or.cond.i91, i64 %.val.i95, i64 %.val1.i96
  tail call void %.val57(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i94, i64 noundef %.sroa.3.0.i97, i8 noundef 16) #45, !noalias !11946, !inline_history !11929
  %i.dt = icmp sgt i64 %.val.i95, -1
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = trunc i64 %.val.i95 to i32
  %i.dv = add i32 %i.do, %i.du
  store i32 %i.dv, ptr %5, align 4, !alias.scope !11942
  store i8 1, ptr %i.a, align 1, !alias.scope !11944
  br label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread

bb.ab:                                            ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread
  %.not1.i101 = icmp sgt i32 %i.h, -1
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dx = load i16, ptr %i.dw, align 8, !range !28, !alias.scope !11947, !noundef !21 ; 2 uses
  br i1 %.not1.i101, label %bb.ac, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit

bb.ac:                                            ; preds = %bb.ab
  switch i16 %i.dx, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread.thread [
    i16 275, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread187
    i16 276, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread187
    i16 277, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread187
    i16 278, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread187
    i16 279, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread187
    i16 280, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread187
    i16 281, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread187
    i16 282, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread187
    i16 401, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread187
    i16 403, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread187
    i16 404, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread187
    i16 405, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread187
  ]

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit: ; preds = %bb.ab
  %.not194 = icmp eq i16 %i.dx, 2189
  br i1 %.not194, label %.thread189, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread187

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread: ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread.thread, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit110
  %i.dy = phi i1 [ %i.dg, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread ], [ true, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit110 ], [ %i.cx, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread.thread ] ; 2 uses
  %i.dz = phi i8 [ %i.de, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread ], [ 1, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit110 ], [ %i.bn, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xacquire_instr.exit.thread.thread ] ; 2 uses
  %.not16 = icmp sgt i32 %i.h, -1
  br i1 %.not16, label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread.thread, label %.thread189

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread187: ; preds = %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.eb = load ptr, ptr %i.ea, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val52 = load i32, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val53 = load ptr, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val54 = load ptr, ptr %i.ee, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11950)
  %i.ef = trunc nuw i8 %i.de to i1
  %.pre.i102 = load i32, ptr %5, align 4, !alias.scope !11948 ; 2 uses
  br i1 %i.ef, label %bb.ad, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit110

bb.ad:                                            ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread187
  %i.eg = add i32 %.pre.i102, 1                   ; 2 uses
  store i32 %i.eg, ptr %5, align 4, !alias.scope !11948
  tail call void %.val53(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11951, !inline_history !11929
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit110

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit110: ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread187, %bb.ad
  %i.eh = phi i32 [ %i.eg, %bb.ad ], [ %.pre.i102, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread187 ]
  %i.ei = and i32 %.val52, 33
  %or.cond.i103 = icmp eq i32 %i.ei, 0            ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eb, i64 2968
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eb, i64 2944
  %i.el = select i1 %or.cond.i103, i64 2936, i64 2960
  %.sroa.0.0.in.i105 = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.el
  %.sroa.0.0.i106 = load ptr, ptr %.sroa.0.0.in.i105, align 8, !alias.scope !11949, !nonnull !21, !noundef !21
  %.val.i107 = load i64, ptr %i.ek, align 8, !alias.scope !11949 ; 3 uses
  %.val1.i108 = load i64, ptr %i.ej, align 8, !alias.scope !11949
  %.sroa.3.0.i109 = select i1 %or.cond.i103, i64 %.val.i107, i64 %.val1.i108
  tail call void %.val54(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i106, i64 noundef %.sroa.3.0.i109, i8 noundef 17) #45, !noalias !11952, !inline_history !11929
  %i.em = icmp sgt i64 %.val.i107, -1
  tail call void @llvm.assume(i1 %i.em)
  %i.en = trunc i64 %.val.i107 to i32
  %i.eo = add i32 %i.eh, %i.en
  store i32 %i.eo, ptr %5, align 4, !alias.scope !11948
  store i8 1, ptr %i.a, align 1, !alias.scope !11950
  br label %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread

_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread.thread: ; preds = %bb.ac, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit119, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread
  %i.ep = phi i1 [ true, %bb.ac ], [ %i.et, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit119 ], [ %i.dy, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread ]
  %i.eq = phi i8 [ %i.de, %bb.ac ], [ 1, %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit119 ], [ %i.dz, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread ] ; 3 uses
  %i.er = and i16 %i.e, 1024
  %i.es = icmp eq i16 %i.er, 0
  br i1 %i.es, label %bb.af, label %bb.ag

.thread189:                                       ; preds = %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread
  %i.et = phi i1 [ true, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit ], [ %i.dy, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread ]
  %i.eu = phi i8 [ %i.de, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit ], [ %i.dz, %_RNvMs0_NtCsf8MNnN4IDbl_8iced_x8611instructionNtB5_11Instruction17is_xrelease_instr.exit.thread ]
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ew = load ptr, ptr %i.ev, align 8, !nonnull !21, !align !25, !noundef !21 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val49 = load i32, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.val50 = load ptr, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val51 = load ptr, ptr %i.ez, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11955)
  %i.fa = trunc nuw i8 %i.eu to i1
  %.pre.i111 = load i32, ptr %5, align 4, !alias.scope !11953 ; 2 uses
  br i1 %i.fa, label %bb.ae, label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit119

bb.ae:                                            ; preds = %.thread189
  %i.fb = add i32 %.pre.i111, 1                   ; 2 uses
  store i32 %i.fb, ptr %5, align 4, !alias.scope !11953
  tail call void %.val50(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 1, i8 noundef 0) #45, !noalias !11956, !inline_history !11929
  br label %_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit119

_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x869formatter5intelNtB4_14IntelFormatter13format_prefix.exit119: ; preds = %.thread189, %bb.ae
  %i.fc = phi i32 [ %i.fb, %bb.ae ], [ %.pre.i111, %.thread189 ]
  %i.fd = and i32 %.val49, 33
  %or.cond.i112 = icmp eq i32 %i.fd, 0            ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ew, i64 1672
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ew, i64 1648
  %i.fg = select i1 %or.cond.i112, i64 1640, i64 1664
  %.sroa.0.0.in.i114 = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fg
  %.sroa.0.0.i115 = load ptr, ptr %.sroa.0.0.in.i114, align 8, !alias.scope !11954, !nonnull !21, !noundef !21
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
end_hunk_3
begin_hunk_4_@_RNvXsu_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11InstructionINtNtB5_7private5With4NtNtB7_8register8RegisterB1H_B1H_mE5with4:bb.a
    i8 8, label %bb.e
    i8 9, label %bb.l
    i8 10, label %bb.l
    i8 11, label %bb.f
    i8 12, label %bb.g
    i8 13, label %bb.h
    i8 14, label %bb.i
  ]

.thread.i:                                        ; preds = %bb.c
  %i.g = icmp ult i32 %5, 256
  br i1 %i.g, label %bb.l, label %_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal29initialize_unsigned_immediate.exit

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult i32 %5, 256
  br i1 %i.h, label %bb.l, label %_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal29initialize_unsigned_immediate.exit

bb.e:                                             ; preds = %bb.c
  %i.i = icmp ult i32 %5, 65536
  br i1 %i.i, label %bb.l, label %_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal29initialize_unsigned_immediate.exit

bb.f:                                             ; preds = %bb.c
  %i.j = icmp ult i32 %5, 128
  %i.k = and i64 %i.b, 4294967168
  %or.cond.i = icmp eq i64 %i.k, 65408
  %or.cond29.i = or i1 %i.j, %or.cond.i
  br i1 %or.cond29.i, label %bb.j, label %_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal29initialize_unsigned_immediate.exit

bb.g:                                             ; preds = %bb.c
  %i.l = icmp ult i32 %5, 128
  %i.m = and i64 %i.b, 4294967168
  %or.cond1.i = icmp eq i64 %i.m, 4294967168
  %or.cond30.i = or i1 %i.l, %or.cond1.i
  br i1 %or.cond30.i, label %bb.k, label %_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal29initialize_unsigned_immediate.exit

bb.h:                                             ; preds = %bb.c
  %i.n = icmp ult i32 %5, 128
  br i1 %i.n, label %bb.l, label %_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal29initialize_unsigned_immediate.exit

bb.i:                                             ; preds = %bb.c
  %i.o = icmp sgt i32 %5, -1
  br i1 %i.o, label %bb.l, label %_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal29initialize_unsigned_immediate.exit

bb.j:                                             ; preds = %bb.f
  %i.p = and i32 %5, 255
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.q = and i32 %5, 255
  br label %bb.l

_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal29initialize_unsigned_immediate.exit: ; preds = %.thread.i, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.b, %bb.c
  %.sroa.17.0 = phi ptr [ %i.e, %bb.b ], [ @590, %bb.c ], [ @591, %bb.i ], [ @591, %bb.h ], [ @591, %bb.g ], [ @591, %bb.f ], [ @591, %bb.e ], [ @591, %bb.d ], [ @591, %.thread.i ]
  %.sroa.21.0 = phi i64 [ %.sroa.21.9.copyload, %bb.b ], [ 24, %bb.c ], [ 26, %bb.i ], [ 26, %bb.h ], [ 26, %bb.g ], [ 26, %bb.f ], [ 26, %bb.e ], [ 26, %bb.d ], [ 26, %.thread.i ]
  %.sroa.06.0 = phi i64 [ %i.c, %bb.b ], [ -1, %bb.c ], [ -1, %bb.i ], [ -1, %bb.h ], [ -1, %bb.g ], [ -1, %bb.f ], [ -1, %bb.e ], [ -1, %bb.d ], [ -1, %.thread.i ]
  store i64 %.sroa.06.0, ptr %0, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.17.0, ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.21.0, ptr %.sroa.526.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 -1, ptr %i.r, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.c, %bb.c, %.thread.i, %bb.d, %bb.j, %bb.k, %bb.e, %bb.i
  %.sroa.11.0.ph = phi i32 [ %5, %bb.i ], [ %5, %bb.e ], [ %5, %bb.c ], [ %i.q, %bb.k ], [ %i.p, %bb.j ], [ %5, %bb.c ], [ %5, %.thread.i ], [ 0, %bb.d ], [ %5, %bb.h ]
  %.sroa.5.0.ph = phi i64 [ 0, %bb.i ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.c ], [ 0, %.thread.i ], [ %i.b, %bb.d ], [ 0, %bb.h ]
  %.sroa.8.sroa.5.0.insert.ext = zext nneg i8 %i.f to i32
  %.sroa.8.sroa.5.0.insert.shift = shl nuw nsw i32 %.sroa.8.sroa.5.0.insert.ext, 24
  %.sroa.20.sroa.7.0.insert.ext = zext i8 %4 to i32
  %.sroa.20.sroa.7.0.insert.shift = shl nuw nsw i32 %.sroa.20.sroa.7.0.insert.ext, 16
  %.sroa.20.sroa.6.0.insert.ext = zext i8 %3 to i32
  %.sroa.20.sroa.6.0.insert.shift = shl nuw nsw i32 %.sroa.20.sroa.6.0.insert.ext, 8
  %.sroa.20.sroa.6.0.insert.insert = or disjoint i32 %.sroa.20.sroa.7.0.insert.shift, %.sroa.20.sroa.6.0.insert.shift
  %.sroa.20.sroa.0.0.insert.ext = zext i8 %2 to i32
  %.sroa.20.sroa.0.0.insert.insert = or disjoint i32 %.sroa.20.sroa.6.0.insert.insert, %.sroa.20.sroa.0.0.insert.ext
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.ph, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.8.sroa.5.0.insert.shift, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.11.0.ph, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.20.sroa.0.0.insert.insert, ptr %.sroa.8.0..sroa_idx9, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 %1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.1010.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.1010.0..sroa_idx, i8 0, i64 6, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal29initialize_unsigned_immediate.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsv_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11InstructionINtNtB5_7private5With4NtNtB7_8register8RegisterB1H_B1H_NtNtNtB7_7encoder6mem_op13MemoryOperandE5with4(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, i16 noundef range(i16 0, 4936) %1, i8 noundef %2, i8 noundef %3, i8 noundef %4, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %5) unnamed_addr #12 personality ptr @rust_eh_personality {
_RNvMNtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB4_11instruction11Instruction19init_memory_operand.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !20072, !noundef !21
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.d = load i8, ptr %i.c, align 2, !alias.scope !20072, !noundef !21
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i32, ptr %i.e, align 8, !alias.scope !20072, !noundef !21 ; 2 uses
  %i.g = icmp ult i32 %i.f, 5
  %switch.cast = zext i32 %i.f to i40
  %switch.shiftamt = shl nuw nsw i40 %switch.cast, 3
  %switch.downshift = lshr i40 8640331779, %switch.shiftamt
  %switch.masked = trunc i40 %switch.downshift to i8
  %.sink.i = select i1 %i.g, i8 %switch.masked, i8 3
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.i = load i32, ptr %i.h, align 4, !alias.scope !20072, !noundef !21 ; 2 uses
  %i.j = icmp ult i32 %i.i, 5
  %switch.cast12 = zext i32 %i.i to i40
  %switch.shiftamt13 = shl nuw nsw i40 %switch.cast12, 3
  %switch.downshift14 = lshr i40 12952142080, %switch.shiftamt13
  %switch.masked15 = trunc i40 %switch.downshift14 to i8
  %.sroa.0.0.i = select i1 %i.j, i8 %switch.masked15, i8 4
  %i.k = load i64, ptr %5, align 8, !alias.scope !20072, !noundef !21
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 19
  %i.m = load i8, ptr %i.l, align 1, !range !27, !alias.scope !20072, !noundef !21
  %i.n = zext nneg i8 %i.m to i32
  %masksel.i = shl nuw nsw i32 %i.n, 26
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = load i8, ptr %i.o, align 8, !alias.scope !20072, !noundef !21 ; 2 uses
  %i.q = icmp eq i8 %i.p, 0
  %i.r = shl i8 %i.p, 5
  %i.s = add i8 %i.r, 64
  %narrow.i = select i1 %i.q, i8 0, i8 %i.s
  %.sroa.01.0.i = zext i8 %narrow.i to i32
  %i.t = or disjoint i32 %masksel.i, %.sroa.01.0.i
  %.sroa.12.sroa.6.0.insert.ext = zext i8 %4 to i32
  %.sroa.12.sroa.6.0.insert.shift = shl nuw nsw i32 %.sroa.12.sroa.6.0.insert.ext, 16
  %.sroa.12.sroa.5.0.insert.ext = zext i8 %3 to i32
  %.sroa.12.sroa.5.0.insert.shift = shl nuw nsw i32 %.sroa.12.sroa.5.0.insert.ext, 8
  %.sroa.12.sroa.5.0.insert.insert = or disjoint i32 %.sroa.12.sroa.6.0.insert.shift, %.sroa.12.sroa.5.0.insert.shift
  %.sroa.12.sroa.0.0.insert.ext = zext i8 %2 to i32
  %.sroa.12.sroa.0.0.insert.insert = or disjoint i32 %.sroa.12.sroa.5.0.insert.insert, %.sroa.12.sroa.0.0.insert.ext
  store i64 0, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 402653184, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.t, ptr %.sroa.6.0..sroa_idx8, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.12.sroa.0.0.insert.insert, ptr %.sroa.89.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 %1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %.sink.i, ptr %.sroa.10.0..sroa_idx, align 2
  %.sroa.1110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 %i.b, ptr %.sroa.1110.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.d, ptr %.sroa.12.0..sroa_idx11, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 %.sroa.0.0.i, ptr %.sroa.13.0..sroa_idx, align 1
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 2
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 39
  store i8 0, ptr %.sroa.15.0..sroa_idx, align 1
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsv_NtCskKLDkoKarTP_4core5arrayNtB5_17TryFromSliceErrorNtNtB7_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11315, i64 noundef 17, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11314)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsv_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4infoNtB5_22SimpleInstrInfo_os_memNtB5_9InstrInfo7op_info(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(264) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.b = load i32, ptr %i.a, align 4, !noundef !21
  %i.c = lshr i32 %i.b, 18
  %i.d = and i32 %i.c, 3                          ; 3 uses
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @_RNvNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info11get_bitness19CODESIZE_TO_BITNESS, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !noundef !21
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i8, ptr %i.h, align 8, !range !38, !noundef !21
  %i.j = icmp eq i8 %i.i, 24
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.l = load i8, ptr %i.k, align 1, !range !38
  %i.m = icmp eq i8 %i.l, 24
  %.sroa.08.0 = select i1 %i.j, i1 true, i1 %i.m  ; 2 uses
  %i.n = icmp ne i32 %i.d, 0
  %or.cond.not = and i1 %i.n, %.sroa.08.0
  br i1 %or.cond.not, label %bb.b, label %_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info12get_mnemonic.exit.a

_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info12get_mnemonic.exit.a: ; preds = %bb.a
  br i1 %.sroa.08.0, label %_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info12get_mnemonic.exit, label %4

bb.b:                                             ; preds = %bb.a
  %cond = icmp eq i32 %i.d, 3
  %.old = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.old1 = load i32, ptr %.old, align 8, !noundef !21 ; 4 uses
  br i1 %cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i32 %i.g, %.old1
  br i1 %i.o, label %_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info12get_mnemonic.exit, label %bb.e

bb.d:                                             ; preds = %bb.b
  %.old2 = icmp eq i32 %.old1, 32
  br i1 %.old2, label %_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info12get_mnemonic.exit, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %switch.selectcmp = icmp eq i32 %.old1, 32
  %switch.select = select i1 %switch.selectcmp, i32 4, i32 6
  %switch.selectcmp14 = icmp eq i32 %.old1, 16
  %switch.select15 = select i1 %switch.selectcmp14, i32 2, i32 %switch.select
  br label %_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info12get_mnemonic.exit

4:                                                ; preds = %_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info12get_mnemonic.exit.a
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 232
  %.val = load i32, ptr %5, align 8, !noundef !21
  %6 = and i32 %.val, 134217728
  %.not.i = icmp eq i32 %6, 0
  %spec.select.idx = select i1 %.not.i, i64 0, i64 48
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx
  br label %_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info12get_mnemonic.exit

_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info12get_mnemonic.exit: ; preds = %4, %bb.c, %bb.d, %bb.e, %_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info12get_mnemonic.exit.a
  %.sroa.0.017 = phi i32 [ 0, %bb.d ], [ 0, %_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info12get_mnemonic.exit.a ], [ 0, %4 ], [ %switch.select15, %bb.e ], [ 0, %bb.c ]
  %.sroa.010.0 = phi ptr [ %1, %bb.d ], [ %1, %_RNvNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4info12get_mnemonic.exit.a ], [ %spec.select, %4 ], [ %1, %bb.e ], [ %1, %bb.c ]
  tail call fastcc void @_RNvMNtNtNtCsf8MNnN4IDbl_8iced_x869formatter3gas4infoNtB2_11InstrOpInfo3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.010.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef %.sroa.0.017)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsv_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4infoNtB5_22SimpleInstrInfo_STi_STNtB5_9InstrInfo7op_info(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(264) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !27, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  tail call fastcc void @_RNvMNtNtNtCsf8MNnN4IDbl_8iced_x869formatter4masm4infoNtB2_11InstrOpInfo3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef 0)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.e = load i32, ptr %i.d, align 8, !noundef !21
  %i.f = and i32 %i.e, 16777216
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.h = load i8, ptr %i.g, align 4, !noundef !21
  %i.i = icmp eq i8 %i.h, -38
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 29
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, -38
  %or.cond = select i1 %i.i, i1 true, i1 %i.l
  br i1 %or.cond, label %bb.f, label %bb.b

bb.e:                                             ; preds = %bb.f, %bb.b
  %.sink6 = phi i64 [ 15, %bb.f ], [ 17, %bb.b ]
  %.sink = phi i8 [ 0, %bb.f ], [ -7, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sink6
  store i8 %.sink, ptr %i.m, align 1
  ret void

bb.f:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %i.n, i8 0, i64 5, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.o, i8 0, i64 5, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.p, i8 0, i64 5, i1 false)
  store ptr %1, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 0, ptr %i.q, align 8
  br label %bb.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsv_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter4nasm4infoNtB5_23SimpleInstrInfo_reverseNtB5_9InstrInfo7op_info(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 28)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree readonly align 8 captures(none) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.b, i8 0, i64 3, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.d, i8 0, i64 3, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i32 0, ptr %i.f, align 1
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 2, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.k = load i8, ptr %i.j, align 1, !range !38, !noundef !21
  store i8 %i.k, ptr %i.a, align 1
  store i8 1, ptr %i.e, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 29
  %i.n = load i8, ptr %i.m, align 1, !noundef !21
  store i8 %i.n, ptr %i.c, align 1
  %i.o = load i8, ptr %i.i, align 8, !range !38, !noundef !21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.o, ptr %i.p, align 8
  %i.q = load i8, ptr %i.l, align 4, !noundef !21
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.q, ptr %i.r, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.val = load i32, ptr %i.s, align 4, !noundef !21
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.val1 = load i16, ptr %i.t, align 8, !range !28, !noundef !21
  %i.u = and i32 %.val, 67108864
  %.not.i = icmp eq i32 %i.u, 0
  %i.v = zext nneg i16 %.val1 to i64
  %.sroa.0.0.in.v.i = select i1 %.not.i, ptr @_RNvNtCsf8MNnN4IDbl_8iced_x8624instruction_memory_sizes12SIZES_NORMAL, ptr @_RNvNtCsf8MNnN4IDbl_8iced_x8624instruction_memory_sizes10SIZES_BCST
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.in.v.i, i64 %i.v
  %.sroa.0.0.i = load i8, ptr %.sroa.0.0.in.i, align 1, !range !39, !noundef !21
  %i.w = zext i8 %.sroa.0.0.i to i32
  %i.x = shl nuw nsw i32 %i.w, 22
  store i32 %i.x, ptr %i.g, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsv_NtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4infoNtB5_25SimpleInstrInfo_opmask_opNtB5_9InstrInfo7op_info(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 26)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree readonly align 8 captures(none) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #1 {
bb.a:
  tail call fastcc void @_RNvMNtNtNtCsf8MNnN4IDbl_8iced_x869formatter5intel4infoNtB2_11InstrOpInfo3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %3, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.b = load i32, ptr %i.a, align 4, !noundef !21
  %i.c = lshr i32 %i.b, 15
  %i.d = and i32 %i.c, 7                          ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i32 %i.d to i8
  %i.g = add nuw nsw i8 %i.f, -83
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noundef !21
  %i.j = add i8 %i.i, 1
  store i8 %i.j, ptr %i.h, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !range !62, !noundef !21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !noundef !21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.o, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 1, ptr %i.q, align 1
  store i8 0, ptr %i.k, align 1
  store i8 %i.g, ptr %i.n, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 -3, ptr %i.r, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load i16, ptr %i.s, align 8, !noundef !21
  %i.u = or i16 %i.t, 256
  store i16 %i.u, ptr %i.s, align 8
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsw_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11InstructionINtNtB5_7private5With4NtNtB7_8register8RegisterB1H_llE5with4(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 24), (32, 34)) %0, i16 noundef range(i16 0, 4936) %1, i8 noundef %2, i8 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 40, i1 false)
  store i16 %1, ptr %i.d, align 8
  store i8 %2, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 29
  store i8 %3, ptr %i.f, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = sext i32 %4 to i64
  call fastcc void @_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal27initialize_signed_immediate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(40) %i.c, i64 noundef 2, i64 noundef %i.g)
  %i.h = load i64, ptr %i.b, align 8, !range !55, !noundef !21
  %.not = icmp eq i64 %i.h, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 -1, ptr %i.i, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = sext i32 %5 to i64
  call fastcc void @_RNvNtCsf8MNnN4IDbl_8iced_x8620instruction_internal27initialize_signed_immediate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(40) %i.c, i64 noundef 3, i64 noundef %i.j)
  %i.k = load i64, ptr %i.a, align 8, !range !55, !noundef !21
  %.not6 = icmp eq i64 %i.k, -2
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 -1, ptr %i.l, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsx_NtCsf8MNnN4IDbl_8iced_x8618instruction_createNtNtB7_11instruction11InstructionINtNtB5_7private5With4NtNtB7_8register8RegisterB1H_mmE5with4(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 24), (32, 34)) %0, i16 noundef range(i16 0, 4936) %1, i8 noundef %2, i8 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = zext i32 %4 to i64                       ; 3 uses
end_hunk_4
