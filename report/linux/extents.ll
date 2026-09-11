Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/extents?download=true
inline.NumInlined: 711
inline.NumDeleted: 166
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ext4_split_convert_extents:bb.a

bb.y:                                             ; preds = %.critedge.i
  br i1 %.not118.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %i.cl, label %bb.aa, label %ext4_split_extent_zeroout.exit.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.dy = load i32, ptr %i.b, align 8             ; 2 uses
  %i.dz = load i32, ptr %i.d, align 4
  %i.ea = getelementptr i8, ptr %i.ch, i64 6
  %.val86.i.i = load i16, ptr %i.ea, align 2
  %i.eb = getelementptr i8, ptr %i.ch, i64 8
  %.val87.i.i = load i32, ptr %i.eb, align 4
  %i.ec = zext i32 %.val87.i.i to i64
  %i.ed = zext i16 %.val86.i.i to i64
  %i.ee = shl nuw nsw i64 %i.ed, 32
  %i.ef = or disjoint i64 %i.ee, %i.ec
  %i.eg = sub i32 %i.dy, %.1107.i
  %i.eh = zext i32 %i.eg to i64
  %i.ei = add nuw nsw i64 %i.ef, %i.eh
  %i.ej = tail call i32 @ext4_issue_zeroout(ptr noundef %1, i32 noundef %i.dy, i64 noundef %i.ei, i32 noundef %i.dz) #14
  %.not80.i.i = icmp eq i32 %i.ej, 0
  br i1 %.not80.i.i, label %bb.ac, label %ext4_split_extent_zeroout.exit.thread.i

bb.ab:                                            ; preds = %bb.y
  tail call void asm sideeffect "1514: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1514b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1514) #15, !srcloc !209
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 3381, i32 2307, i64 16) #15, !srcloc !210
  tail call void asm sideeffect "1515: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1515b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1515) #15, !srcloc !211
  br label %ext4_split_extent_zeroout.exit.thread.i

bb.ac:                                            ; preds = %bb.aa, %bb.x, %bb.w
  %i.ek = getelementptr i8, ptr %i.cf, i64 40     ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %.not.i.i132.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i132.i, label %ext4_split_extent_zeroout.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.em = load ptr, ptr %i.a, align 8
  %i.en = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ext_get_access, i32 noundef 166, ptr noundef %0, ptr noundef %i.em, ptr noundef nonnull %i.el, i32 noundef 1) #14
  %.not8.i.i.i = icmp eq i32 %i.en, 0
  br i1 %.not8.i.i.i, label %bb.ae, label %ext4_split_extent_zeroout.exit.thread.i

bb.ae:                                            ; preds = %bb.ad
  %i.eo = load ptr, ptr %i.ek, align 8
  %i.ep = getelementptr i8, ptr %i.eo, i64 3      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ep, i32 -3, ptr elementtype(i8) %i.ep) #15, !srcloc !32
  br label %ext4_split_extent_zeroout.exit.i

ext4_split_extent_zeroout.exit.i:                 ; preds = %bb.ae, %bb.ac
  %.val.i.i.i = load i16, ptr %i.cj, align 4      ; 3 uses
  %i.eq = icmp ult i16 %.val.i.i.i, -32767
  %i.er = xor i16 %.val.i.i.i, -32768
  %i.es = select i1 %i.eq, i16 %.val.i.i.i, i16 %i.er
  store i16 %i.es, ptr %i.cj, align 4
  %i.et = tail call i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_split_extent_zeroout, i32 noundef 3391, ptr noundef %0, ptr noundef %1, ptr noundef readonly %i.cf) #16
  %.not121.i = icmp eq i32 %i.et, 0
  br i1 %.not121.i, label %ext4_split_extent.exit, label %ext4_split_extent_zeroout.exit.thread.i

ext4_split_extent_zeroout.exit.thread.i:          ; preds = %ext4_split_extent_zeroout.exit.i, %bb.ad, %bb.ab, %bb.aa, %bb.z, %bb.x, %bb.v, %bb.t, %bb.s
  %.not.i.i133.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i133.i, label %ext4_free_ext_path.exit141.i, label %bb.af

bb.af:                                            ; preds = %ext4_split_extent_zeroout.exit.thread.i
  %i.eu = getelementptr i8, ptr %i.cc, i64 8
  %i.ev = load i16, ptr %i.eu, align 8
  %i.ew = zext i16 %i.ev to i32
  br label %bb.ag

bb.ag:                                            ; preds = %ext4_ext_path_brelse.exit.i.i138.i, %bb.af
  %.08.i.i135.i = phi i32 [ 0, %bb.af ], [ %i.ez, %ext4_ext_path_brelse.exit.i.i138.i ] ; 2 uses
  %.067.i.i136.i = phi ptr [ %i.cc, %bb.af ], [ %i.fa, %ext4_ext_path_brelse.exit.i.i138.i ] ; 2 uses
  %i.ex = getelementptr i8, ptr %.067.i.i136.i, i64 40 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8            ; 2 uses
  %.not.i.i.i.i137.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i137.i, label %ext4_ext_path_brelse.exit.i.i138.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @__brelse(ptr noundef nonnull %i.ey) #14
  br label %ext4_ext_path_brelse.exit.i.i138.i

ext4_ext_path_brelse.exit.i.i138.i:               ; preds = %bb.ah, %bb.ag
  store ptr null, ptr %i.ex, align 8
  %i.ez = add nuw nsw i32 %.08.i.i135.i, 1
  %i.fa = getelementptr i8, ptr %.067.i.i136.i, i64 48
  %exitcond.not.i.i139.i = icmp eq i32 %.08.i.i135.i, %i.ew
  br i1 %exitcond.not.i.i139.i, label %ext4_ext_drop_refs.exit.i140.i, label %bb.ag, !llvm.loop !0

ext4_ext_drop_refs.exit.i140.i:                   ; preds = %ext4_ext_path_brelse.exit.i.i138.i
  tail call void @kfree(ptr noundef nonnull %i.cc) #14
  br label %ext4_free_ext_path.exit141.i

ext4_free_ext_path.exit141.i:                     ; preds = %ext4_ext_drop_refs.exit.i140.i, %ext4_split_extent_zeroout.exit.thread.i, %bb.q, %bb.p, %bb.n, %bb.m
  %sext.i = shl i64 %i.bn, 32
  %i.fb = ashr exact i64 %sext.i, 32
  %i.fc = inttoptr i64 %i.fb to ptr
  br label %ext4_split_extent.exit

ext4_split_extent.exit:                           ; preds = %ext4_split_extent_zeroout.exit.i, %bb.k, %bb.l, %ext4_free_ext_path.exit141.i
  %.01 = phi i1 [ false, %ext4_free_ext_path.exit141.i ], [ false, %bb.l ], [ false, %bb.k ], [ true, %ext4_split_extent_zeroout.exit.i ]
  %.0.i = phi ptr [ %i.fc, %ext4_free_ext_path.exit141.i ], [ %i.bl, %bb.l ], [ %.099.i, %bb.k ], [ %i.cc, %ext4_split_extent_zeroout.exit.i ] ; 3 uses
  %i.fd = icmp ugt ptr %.0.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.fd, label %ext4_split_extent.exit.thread, label %ext4_split_extent.exit._crit_edge

ext4_split_extent.exit._crit_edge:                ; preds = %ext4_split_extent.exit
  %.pre = load i32, ptr %i.b, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %ext4_split_extent.exit._crit_edge, %bb.a
  %i.fe = phi i32 [ %i.c, %bb.a ], [ %.pre, %ext4_split_extent.exit._crit_edge ]
  %.12 = phi i1 [ false, %bb.a ], [ %.01, %ext4_split_extent.exit._crit_edge ]
  %.070 = phi ptr [ %3, %bb.a ], [ %.0.i, %ext4_split_extent.exit._crit_edge ]
  %i.ff = tail call ptr @ext4_find_extent(ptr noundef %1, i32 noundef %i.fe, ptr noundef %.070, i32 noundef %4) #16 ; 10 uses
  %i.fg = icmp ugt ptr %i.ff, inttoptr (i64 -4096 to ptr)
  br i1 %i.fg, label %ext4_split_extent.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.val = load i16, ptr %i.g, align 2
  %i.fh = zext i16 %.val to i64
  %i.fi = getelementptr [48 x i8], ptr %i.ff, i64 %i.fh ; 3 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8            ; 7 uses
  br i1 %.12, label %bb.av, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fl = getelementptr i8, ptr %i.fi, i64 40     ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8            ; 2 uses
  %.not.i92 = icmp eq ptr %i.fm, null
  br i1 %.not.i92, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fn = load ptr, ptr %i.a, align 8
  %i.fo = tail call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ext_get_access, i32 noundef 166, ptr noundef %0, ptr noundef %i.fn, ptr noundef nonnull %i.fm, i32 noundef 1) #14 ; 2 uses
  %.not8.i = icmp eq i32 %i.fo, 0
  br i1 %.not8.i, label %bb.am, label %ext4_ext_get_access.exit

bb.am:                                            ; preds = %bb.al
  %i.fp = load ptr, ptr %i.fl, align 8
  %i.fq = getelementptr i8, ptr %i.fp, i64 3      ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.fq, i32 -3, ptr elementtype(i8) %i.fq) #15, !srcloc !32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  %i.fr = and i32 %4, 16
  %.not79 = icmp eq i32 %i.fr, 0
  br i1 %.not79, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fs = getelementptr i8, ptr %i.fk, i64 4      ; 2 uses
  %.val.i94 = load i16, ptr %i.fs, align 4        ; 3 uses
  %i.ft = icmp ult i16 %.val.i94, -32767
  %i.fu = xor i16 %.val.i94, -32768
  %i.fv = select i1 %i.ft, i16 %.val.i94, i16 %i.fu
  store i16 %i.fv, ptr %i.fs, align 4
  br label %bb.as

bb.ap:                                            ; preds = %bb.an
  %i.fw = and i32 %4, 256
  %.not80 = icmp eq i32 %i.fw, 0
  br i1 %.not80, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fx = getelementptr i8, ptr %i.fk, i64 4      ; 2 uses
  %i.fy = load i16, ptr %i.fx, align 4            ; 2 uses
  %i.fz = and i16 %i.fy, 32767
  %i.ga = icmp eq i16 %i.fz, 0
  br i1 %i.ga, label %bb.ar, label %ext4_ext_mark_unwritten.exit, !prof !14

bb.ar:                                            ; preds = %bb.aq
  tail call void asm sideeffect "645: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 645b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 645) #15, !srcloc !33
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.22, i32 193, i32 0, i64 16) #15, !srcloc !34
  unreachable

ext4_ext_mark_unwritten.exit:                     ; preds = %bb.aq
  %i.gb = or i16 %i.fy, -32768
  store i16 %i.gb, ptr %i.fx, align 4
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %ext4_ext_mark_unwritten.exit, %bb.ao
  %i.gc = and i32 %4, 8
  %.not81 = icmp eq i32 %i.gc, 0
  br i1 %.not81, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  tail call fastcc void @ext4_ext_try_to_merge(ptr noundef %0, ptr noundef %1, ptr noundef %i.ff, ptr noundef %i.fk) #16, !srcloc !212
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.gd = tail call i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_split_convert_extents, i32 noundef 3889, ptr noundef %0, ptr noundef %1, ptr noundef %i.fi) #16 ; 2 uses
  %.not82 = icmp eq i32 %i.gd, 0
  br i1 %.not82, label %bb.av, label %ext4_ext_get_access.exit

bb.av:                                            ; preds = %bb.au, %bb.aj
  %i.ge = and i32 %4, 1073741824
  %.not83 = icmp eq i32 %i.ge, 0
  br i1 %.not83, label %bb.aw, label %ext4_split_extent.exit.thread

bb.aw:                                            ; preds = %bb.av
  %i.gf = load i32, ptr %i.fk, align 4
  %i.gg = getelementptr i8, ptr %i.fk, i64 4
  %.val89 = load i16, ptr %i.gg, align 4          ; 2 uses
  %i.gh = zext i16 %.val89 to i32                 ; 2 uses
  %i.gi = icmp ult i16 %.val89, -32767            ; 2 uses
  %i.gj = add nsw i32 %i.gh, -32768
  %i.gk = select i1 %i.gi, i32 %i.gh, i32 %i.gj
  %i.gl = getelementptr i8, ptr %i.fk, i64 6
  %.val87 = load i16, ptr %i.gl, align 2
  %i.gm = getelementptr i8, ptr %i.fk, i64 8
  %.val88 = load i32, ptr %i.gm, align 4
  %i.gn = zext i32 %.val88 to i64
  %i.go = zext i16 %.val87 to i64
  %i.gp = shl nuw nsw i64 %i.go, 32
  %i.gq = or disjoint i64 %i.gp, %i.gn
  %i.gr = select i1 %i.gi, i32 1, i32 2
  tail call void @ext4_es_insert_extent(ptr noundef %1, i32 noundef %i.gf, i32 noundef %i.gk, i64 noundef %i.gq, i32 noundef %i.gr, i1 noundef zeroext false) #14
  br label %ext4_split_extent.exit.thread

ext4_ext_get_access.exit:                         ; preds = %bb.au, %bb.al
  %.1 = phi i32 [ %i.gd, %bb.au ], [ %i.fo, %bb.al ]
  %.not.i.i95 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i95, label %ext4_free_ext_path.exit, label %bb.ax

bb.ax:                                            ; preds = %ext4_ext_get_access.exit
  %i.gs = getelementptr i8, ptr %i.ff, i64 8
  %i.gt = load i16, ptr %i.gs, align 8
  %i.gu = zext i16 %i.gt to i32
  br label %bb.ay

bb.ay:                                            ; preds = %ext4_ext_path_brelse.exit.i.i, %bb.ax
  %.08.i.i = phi i32 [ 0, %bb.ax ], [ %i.gx, %ext4_ext_path_brelse.exit.i.i ] ; 2 uses
  %.067.i.i = phi ptr [ %i.ff, %bb.ax ], [ %i.gy, %ext4_ext_path_brelse.exit.i.i ] ; 2 uses
  %i.gv = getelementptr i8, ptr %.067.i.i, i64 40 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i.i, label %ext4_ext_path_brelse.exit.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @__brelse(ptr noundef nonnull %i.gw) #14
  br label %ext4_ext_path_brelse.exit.i.i

ext4_ext_path_brelse.exit.i.i:                    ; preds = %bb.az, %bb.ay
  store ptr null, ptr %i.gv, align 8
  %i.gx = add nuw nsw i32 %.08.i.i, 1
  %i.gy = getelementptr i8, ptr %.067.i.i, i64 48
  %exitcond.not.i.i = icmp eq i32 %.08.i.i, %i.gu
  br i1 %exitcond.not.i.i, label %ext4_ext_drop_refs.exit.i, label %bb.ay, !llvm.loop !0

ext4_ext_drop_refs.exit.i:                        ; preds = %ext4_ext_path_brelse.exit.i.i
  tail call void @kfree(ptr noundef nonnull %i.ff) #14
  br label %ext4_free_ext_path.exit

ext4_free_ext_path.exit:                          ; preds = %ext4_ext_get_access.exit, %ext4_ext_drop_refs.exit.i
  %i.gz = sext i32 %.1 to i64
  %i.ha = inttoptr i64 %i.gz to ptr
  br label %ext4_split_extent.exit.thread

ext4_split_extent.exit.thread:                    ; preds = %bb.aw, %bb.av, %ext4_ext_drop_refs.exit.i.i, %bb.f, %bb.ai, %ext4_split_extent.exit, %ext4_free_ext_path.exit
  %.0 = phi ptr [ %.0.i, %ext4_split_extent.exit ], [ %i.ha, %ext4_free_ext_path.exit ], [ %i.ff, %bb.ai ], [ inttoptr (i64 -117 to ptr), %ext4_ext_drop_refs.exit.i.i ], [ inttoptr (i64 -117 to ptr), %bb.f ], [ %i.ff, %bb.av ], [ %i.ff, %bb.aw ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ext4_es_insert_extent(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_ext4_ext_handle_unwritten_extents(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @trace_ext4_ext_convert_to_initialized_fastpath(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #10 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_ext4_ext_convert_to_initialized_fastpath, i64 8), i1 false) #15
          to label %arch_static_branch.exit [label %cpumask_test_cpu.exit.i], !srcloc !22

cpumask_test_cpu.exit.i:                          ; preds = %bb.a
  %i.a = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #15, !srcloc !37
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.b) #15, !srcloc !23 ; 2 uses
  %i.d = icmp ult i8 %i.c, 2
  tail call void @llvm.assume(i1 %i.d)
  %i.e = trunc nuw i8 %i.c to i1
  br i1 %i.e, label %bb.b, label %arch_static_branch.exit

bb.b:                                             ; preds = %cpumask_test_cpu.exit.i
  %i.f = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, ptr elementtype(i64) %i.f) #15, !srcloc !24
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !25
  %i.g = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_ext4_ext_convert_to_initialized_fastpath, i64 56), align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 @__SCT__tp_func_ext4_ext_convert_to_initialized_fastpath(ptr noundef %i.i, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #14 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !26
  %i.k = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.k, ptr elementtype(i64) %i.k) #15, !srcloc !27
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %bb.d, %cpumask_test_cpu.exit.i, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_ext4_ext_convert_to_initialized_enter(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_ext4_ext_convert_to_initialized_fastpath(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ext4_es_find_extent_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern inlinehint mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal range(i32 0, 2) i32 @ext4_es_is_delayed(ptr nofree noundef readonly captures(none) %0) #11 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %.val = load i64, ptr %i.a, align 8
  %sum.shift = lshr i64 %.val, 61
  %i.b = trunc nuw nsw i64 %sum.shift to i32
  %.lobit = and i32 %i.b, 1
  ret i32 %.lobit
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_ext4_get_implied_cluster_alloc_exit(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_ext4_ext_map_blocks_exit(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__trace_set_current_state(i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @io_schedule_timeout(i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @inode_newsize_ok(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @ext4_alloc_file_blocks(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef range(i32 3, 1073742338) %4) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.ext4_map_blocks, align 8    ; 8 uses
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val131 = load ptr, ptr %i.b, align 8          ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false), !annotation !35
  %i.c = getelementptr i8, ptr %.val131, i64 80   ; 3 uses
  %i.d = load volatile i64, ptr %i.c, align 8     ; 4 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !214
  %i.e = getelementptr i8, ptr %.val131, i64 134  ; 2 uses
  %i.f = load i8, ptr %i.e, align 2               ; 2 uses
  %i.g = getelementptr i8, ptr %.val131, i64 -152
  %i.h = load volatile i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 524288
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "1538: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1538b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1538) #15, !srcloc !215
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 4589, i32 0, i64 16) #15, !srcloc !216
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = zext nneg i8 %i.f to i32
  %i.k = zext i8 %i.f to i64                      ; 4 uses
  %i.l = ashr i64 %1, %i.k                        ; 2 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i32 %i.m, ptr %i.n, align 8
  %i.o = shl nuw i32 1, %i.j
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = add i64 %1, -1
  %i.r = add i64 %i.q, %2
  %i.s = add i64 %i.r, %i.p
  %i.t = sub nsw i64 0, %i.p
  %i.u = and i64 %i.s, %i.t
  %i.v = ashr i64 %i.u, %i.k
  %i.w = sub i64 %i.v, %i.l                       ; 2 uses
  %i.x = trunc i64 %i.w to i32                    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 5 uses
  store i32 %i.x, ptr %i.y, align 4
  %i.z = and i64 %i.w, 4294934528
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = or i32 %4, 64
  %spec.select = select i1 %i.aa, i32 %i.ab, i32 %4 ; 3 uses
  %i.ac = and i32 %spec.select, 512
  %.not116.not = icmp eq i32 %i.ac, 0             ; 2 uses
  %i.ad = and i32 %spec.select, 2147483133
  %i.ae = or disjoint i32 %i.ad, 2
  %.1107 = select i1 %.not116.not, i32 %spec.select, i32 %i.ae
  %i.af = tail call i32 @ext4_chunk_trans_blocks(ptr noundef %.val131, i32 noundef %i.x) #14
  %i.ag = getelementptr i8, ptr %.val131, i64 -226 ; 3 uses
  %.val130 = load i16, ptr %i.ag, align 2
  %i.ah = zext i16 %.val130 to i32
  %i.ai = icmp sgt i64 %3, %i.d
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = tail call i32 @ext4_block_zero_eof(ptr noundef %.val131, i64 noundef %i.d, i64 noundef 9223372036854775807) #14 ; 2 uses
  %.not117 = icmp eq i32 %i.aj, 0
  br i1 %.not117, label %bb.e, label %bb.ak

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ak = getelementptr i8, ptr %.val131, i64 40  ; 3 uses
  %i.al = getelementptr i8, ptr %.val131, i64 776 ; 2 uses
  %i.am = getelementptr i8, ptr %.val131, i64 780 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.f
end_hunk_0
