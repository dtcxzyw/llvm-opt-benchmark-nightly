Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/trace_events_filter?download=true
inline.NumInlined: 201
inline.NumDeleted: 82
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@process_preds:bb.a
  %.not20272.i = icmp eq ptr %i.sn, null
  br i1 %.not20272.i, label %._crit_edge74.i, label %free_predicate.exit.i

free_predicate.exit.i:                            ; preds = %.preheader.i21, %free_predicate.exit.i
  %i.so = phi ptr [ %i.sw, %free_predicate.exit.i ], [ %i.sn, %.preheader.i21 ] ; 3 uses
  %.218273.i = phi i32 [ %i.ss, %free_predicate.exit.i ], [ 0, %.preheader.i21 ]
  %i.sp = load ptr, ptr %i.so, align 8
  call void @kfree(ptr noundef %i.sp) #20
  %i.sq = getelementptr i8, ptr %i.so, i64 8
  %i.sr = load ptr, ptr %i.sq, align 8
  call void @kfree(ptr noundef %i.sr) #20
  call void @kfree(ptr noundef nonnull %i.so) #20
  %i.ss = add i32 %.218273.i, 1                   ; 2 uses
  %i.st = sext i32 %i.ss to i64
  %i.su = getelementptr [16 x i8], ptr %i.av, i64 %i.st
  %i.sv = getelementptr i8, ptr %i.su, i64 8
  %i.sw = load ptr, ptr %i.sv, align 8            ; 2 uses
  %.not202.i = icmp eq ptr %i.sw, null
  br i1 %.not202.i, label %._crit_edge74.i, label %free_predicate.exit.i, !llvm.loop !75

._crit_edge74.i:                                  ; preds = %free_predicate.exit.i, %.preheader.i21
  call void @kfree(ptr noundef nonnull %i.av) #20
  br label %bb.ek

bb.ek:                                            ; preds = %._crit_edge74.i, %.thread.i20
  %i.sx = sext i32 %.3175.i to i64
  %i.sy = inttoptr i64 %i.sx to ptr
  br label %predicate_parse.exit

predicate_parse.exit:                             ; preds = %._crit_edge.i22, %bb.ek
  %.0.i = phi ptr [ %i.av, %._crit_edge.i22 ], [ %i.sy, %bb.ek ] ; 3 uses
  %i.sz = icmp ugt ptr %.0.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.sz, label %predicate_parse.exit.thread, label %bb.el

predicate_parse.exit.thread:                      ; preds = %_kmalloc_noprof.exit.i, %predicate_parse.exit
  %.0.i72 = phi ptr [ %.0.i, %predicate_parse.exit ], [ inttoptr (i64 -12 to ptr), %_kmalloc_noprof.exit.i ]
  %i.ta = ptrtoint ptr %.0.i72 to i64
  %i.tb = trunc i64 %i.ta to i32
  br label %calc_stack.exit.thread64

bb.el:                                            ; preds = %predicate_parse.exit
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !85
  store volatile ptr %.0.i, ptr %2, align 8
  br label %calc_stack.exit.thread64

calc_stack.exit.thread64:                         ; preds = %bb.a, %calc_stack.exit, %bb.t, %.loopexit, %bb.u, %bb.el, %predicate_parse.exit.thread
  %.0 = phi i32 [ -3, %bb.t ], [ %i.tb, %predicate_parse.exit.thread ], [ 0, %bb.el ], [ -1, %bb.u ], [ -2, %.loopexit ], [ -22, %calc_stack.exit ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @append_filter_err(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr i8, ptr %2, i64 8          ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %_kmalloc_noprof.exit, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "649: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 649b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 649) #18, !srcloc !86
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.11, ptr nonnull @.str.12, i32 1214, i32 2305, i64 16) #18, !srcloc !87
  tail call void asm sideeffect "650: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 650b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 650) #18, !srcloc !88
  br label %bb.i

_kmalloc_noprof.exit:                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 104), align 8
  %i.f = tail call noalias align 8 dereferenceable_or_null(8192) ptr @__kmalloc_cache_noprof(ptr noundef %i.e, i32 noundef 3264, i64 noundef 8192) #23 ; 11 uses
  %.not47 = icmp eq ptr %i.f, null
  br i1 %.not47, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_kmalloc_noprof.exit
  %i.g = getelementptr i8, ptr %i.f, i64 36       ; 2 uses
  store ptr %i.g, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.f, i64 8
  store i64 8156, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.f, i64 16       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(21) %i.i, i8 0, i64 21, i1 false)
  %i.j = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.k = tail call i64 @strlen(ptr noundef %i.j) #20
  tail call void @trace_seq_puts(ptr noundef nonnull %i.f, ptr noundef %i.j) #20
  %i.l = load i32, ptr %1, align 4                ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = trunc i64 %i.k to i32
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.n) ; 2 uses
  %.not48 = icmp eq i32 %spec.select, 0
  %i.o = add i32 %spec.select, 1
  %.1 = select i1 %.not48, i32 0, i32 %i.o
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.26, i32 noundef %.1, ptr noundef nonnull @.str.27) #20
  %i.p = load i32, ptr %1, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr [8 x i8], ptr @err_text, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.28, ptr noundef %i.s) #20
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = load i32, ptr %1, align 4
  %i.v = trunc i32 %i.u to i8
  %i.w = load i32, ptr %i.a, align 4
  %i.x = trunc i32 %i.w to i16
  tail call void @tracing_log_err(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %i.t, ptr noundef nonnull @err_text, i8 noundef zeroext %i.v, i16 noundef zeroext %i.x) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.30, i32 noundef %i.l) #20
  %i.y = load ptr, ptr %i.c, align 8
  tail call void @tracing_log_err(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %i.y, ptr noundef nonnull @err_text, i8 noundef zeroext 20, i16 noundef zeroext 0) #20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @trace_seq_putc(ptr noundef nonnull %i.f, i8 noundef zeroext 0) #20
  %i.z = load i64, ptr %i.i, align 8
  %i.aa = tail call ptr @kmemdup_nul(ptr noundef %i.g, i64 noundef %i.z, i32 noundef 3264) #20 ; 2 uses
  %.not49 = icmp eq ptr %i.aa, null
  br i1 %.not49, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.c, align 8
  tail call void @kfree(ptr noundef %i.ab) #20
  store ptr %i.aa, ptr %i.c, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @kfree(ptr noundef nonnull %i.f) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %_kmalloc_noprof.exit, %bb.h
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @trace_find_event_field(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @kallsyms_lookup_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kallsyms_lookup_size_offset(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @sized_strscpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 0, 17) i32 @select_comparison_fn(i32 noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %.off = add i32 %0, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %.critedge33, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %0, 3
  br i1 %i.a, label %bb.c, label %.critedge, !prof !23

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "657: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 657b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 657) #18, !srcloc !89
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.11, ptr nonnull @.str.12, i32 1518, i32 2307, i64 16) #18, !srcloc !90
  tail call void asm sideeffect "658: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 658b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 658) #18, !srcloc !91
  br label %bb.i

.critedge:                                        ; preds = %bb.b
  %i.b = add i32 %0, -3                           ; 2 uses
  %i.c = icmp sgt i32 %i.b, 4
  br i1 %i.c, label %bb.d, label %.critedge33, !prof !23

bb.d:                                             ; preds = %.critedge
  tail call void asm sideeffect "659: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 659b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 659) #18, !srcloc !92
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.11, ptr nonnull @.str.12, i32 1521, i32 2307, i64 16) #18, !srcloc !93
  tail call void asm sideeffect "660: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 660b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 660) #18, !srcloc !94
  br label %bb.i

.critedge33:                                      ; preds = %.critedge, %bb.a
  %.026 = phi i32 [ %i.b, %.critedge ], [ -1, %bb.a ] ; 4 uses
  %i.d = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %1)
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %.split, label %bb.i

.split:                                           ; preds = %.critedge33
  %i.f = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %1, i1 true)
  switch i32 %i.f, label %bb.i [
    i32 3, label %3
    i32 2, label %5
    i32 1, label %7
    i32 0, label %9
  ]

3:                                                ; preds = %.split
  %4 = icmp slt i32 %.026, 0
  br i1 %4, label %bb.i, label %bb.e

bb.e:                                             ; preds = %3
  %.not31 = icmp eq i32 %2, 0
  %..a = select i1 %.not31, i32 4, i32 3
  br label %bb.i

5:                                                ; preds = %.split
  %6 = icmp slt i32 %.026, 0
  br i1 %6, label %bb.i, label %bb.f

bb.f:                                             ; preds = %5
  %.not30 = icmp eq i32 %2, 0
  %.34.a = select i1 %.not30, i32 8, i32 7
  br label %bb.i

7:                                                ; preds = %.split
  %8 = icmp slt i32 %.026, 0
  br i1 %8, label %bb.i, label %bb.g

bb.g:                                             ; preds = %7
  %.not29 = icmp eq i32 %2, 0
  %.35.a = select i1 %.not29, i32 12, i32 11
  br label %bb.i

9:                                                ; preds = %.split
  %10 = icmp slt i32 %.026, 0
  br i1 %10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %9
  %.not = icmp eq i32 %2, 0
  %.36.a = select i1 %.not, i32 16, i32 15
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.c, %.split, %.critedge33, %3, %bb.e, %5, %bb.f, %7, %bb.g, %9, %bb.h
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %.split ], [ 0, %.critedge33 ], [ %..a, %bb.e ], [ 1, %3 ], [ 13, %9 ], [ %.34.a, %bb.f ], [ 5, %5 ], [ %.36.a, %bb.h ], [ %.35.a, %bb.g ], [ 9, %7 ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc void @filter_build_regex(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #10 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 60
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 256      ; 3 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load i8, ptr %i.a, align 8
  %i.i = icmp eq i8 %i.h, 33                      ; 3 uses
  %.sink.i = zext i1 %i.i to i32
  %i.j = sext i1 %i.i to i32
  %.028.i = add i32 %i.f, %i.j                    ; 4 uses
  %.027.idx.i = zext i1 %i.i to i64
  %.027.i = getelementptr i8, ptr %i.a, i64 %.027.idx.i ; 10 uses
  store i32 %.sink.i, ptr %i.g, align 8
  %i.k = load i8, ptr %.027.i, align 1            ; 5 uses
  %i.l = add i8 %i.k, -58
  %i.m = icmp ult i8 %i.l, -10
  br i1 %i.m, label %.preheader.i, label %.thread.sink.split56

.preheader.i:                                     ; preds = %bb.b
  %i.n = icmp sgt i32 %.028.i, 0
  br i1 %i.n, label %.lr.ph.preheader.i, label %.loopexit.i.thread

.loopexit.i.thread:                               ; preds = %.preheader.i
  %i.o = icmp eq i8 %i.k, 42
  %spec.select.idx34 = zext i1 %i.o to i64
  %spec.select35 = getelementptr i8, ptr %.027.i, i64 %spec.select.idx34
  br label %.thread.sink.split56

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %.028.i to i64
  %i.p = icmp eq i8 %i.k, 42                      ; 4 uses
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader.i
  %i.q = zext i8 %i.k to i32
  %memchr.peel.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str, i32 %i.q, i64 4)
  %.not30.peel.i = icmp eq ptr %memchr.peel.i, null
  br i1 %.not30.peel.i, label %bb.d, label %.thread.sink.split56

bb.d:                                             ; preds = %bb.c, %.lr.ph.preheader.i
  %exitcond.peel.not.i = icmp eq i32 %.028.i, 1
  br i1 %exitcond.peel.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.g
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 1, %bb.d ] ; 4 uses
  %i.r = getelementptr i8, ptr %.027.i, i64 %indvars.iv.i
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %i.t = icmp eq i8 %i.s, 42
  br i1 %i.t, label %.loopexit48.i, label %bb.f

.loopexit48.i:                                    ; preds = %.lr.ph.i
  %i.u = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.v = add nsw i32 %.028.i, -1
  %i.w = icmp eq i32 %i.v, %i.u
  br i1 %i.w, label %bb.e, label %.thread.sink.split56

bb.e:                                             ; preds = %.loopexit48.i
  %i.x = getelementptr i8, ptr %.027.i, i64 %indvars.iv.i
  store i8 0, ptr %i.x, align 1
  %spec.select62.idx = zext i1 %i.p to i64
  %spec.select62 = getelementptr i8, ptr %.027.i, i64 %spec.select62.idx
  %spec.select63 = select i1 %i.p, ptr @regex_match_middle, ptr @regex_match_front
  br label %.thread.sink.split56

bb.f:                                             ; preds = %.lr.ph.i
  %i.y = zext i8 %i.s to i32
  %memchr.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str, i32 %i.y, i64 4)
  %.not30.i = icmp eq ptr %memchr.i, null
  br i1 %.not30.i, label %bb.g, label %.thread.sink.split56

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !0

.loopexit.i:                                      ; preds = %bb.g, %bb.d
  %i.z = icmp eq i8 %i.k, 42
  %spec.select.idx = zext i1 %i.z to i64
  %spec.select = getelementptr i8, ptr %.027.i, i64 %spec.select.idx ; 2 uses
  %i.aa = tail call i64 @strlen(ptr noundef %spec.select) #20 ; 2 uses
  %i.ab = trunc i64 %i.aa to i32
  store i32 %i.ab, ptr %i.e, align 8
  %i.ac = shl i64 %i.aa, 32
  %sext = add i64 %i.ac, 4294967296
  %i.ad = ashr exact i64 %sext, 32
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.a, ptr align 1 %spec.select, i64 %i.ad, i1 false)
  %spec.select55 = select i1 %i.p, ptr @regex_match_end, ptr @regex_match_full
  br label %.thread

.thread.sink.split56:                             ; preds = %bb.f, %bb.e, %.loopexit.i.thread, %bb.b, %bb.c, %.loopexit48.i
  %spec.select35.sink54.sink59 = phi ptr [ %.027.i, %bb.c ], [ %spec.select35, %.loopexit.i.thread ], [ %spec.select62, %bb.e ], [ %.027.i, %bb.b ], [ %.027.i, %.loopexit48.i ], [ %.027.i, %bb.f ] ; 2 uses
  %regex_match_glob.sink.ph = phi ptr [ @regex_match_glob, %bb.c ], [ @regex_match_full, %.loopexit.i.thread ], [ %spec.select63, %bb.e ], [ @regex_match_full, %bb.b ], [ @regex_match_glob, %.loopexit48.i ], [ @regex_match_glob, %bb.f ]
  %i.ae = tail call i64 @strlen(ptr noundef %spec.select35.sink54.sink59) #20 ; 2 uses
  %i.af = trunc i64 %i.ae to i32
  store i32 %i.af, ptr %i.e, align 8
  %i.ag = shl i64 %i.ae, 32
  %sext36 = add i64 %i.ag, 4294967296
  %i.ah = ashr exact i64 %sext36, 32
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.a, ptr align 1 %spec.select35.sink54.sink59, i64 %i.ah, i1 false)
  br label %.thread

.thread:                                          ; preds = %.loopexit.i, %.thread.sink.split56, %bb.a
  %regex_match_glob.sink = phi ptr [ %regex_match_glob.sink.ph, %.thread.sink.split56 ], [ @regex_match_full, %bb.a ], [ %spec.select55, %.loopexit.i ]
  %i.ai = getelementptr i8, ptr %i.a, i64 264
  store ptr %regex_match_glob.sink, ptr %i.ai, align 8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @pcpu_alloc_noprof(i64 noundef, i64 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @bitmap_parselist(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #11

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal range(i32 0, 2) i32 @regex_match_full(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #5 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @strcmp(ptr noundef %0, ptr noundef %1) #20
  %i.b = icmp eq i32 %i.a, 0
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 256
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp slt i32 %2, %i.d
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = sext i32 %2 to i64
  %i.g = tail call i32 @strncmp(ptr noundef %0, ptr noundef %1, i64 noundef %i.f) #20
  %i.h = icmp eq i32 %i.g, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0.shrunk = phi i1 [ %i.b, %bb.b ], [ %i.h, %bb.d ], [ false, %bb.c ]
  %.0 = zext i1 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal range(i32 0, 2) i32 @regex_match_front(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #5 align 16 prefalign(16) {
bb.a:
  %.not = icmp ne i32 %2, 0
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 256
  %.pre = load i32, ptr %.phi.trans.insert, align 8 ; 2 uses
  %i.a = icmp slt i32 %2, %.pre
  %or.cond = select i1 %.not, i1 %i.a, i1 false
  br i1 %or.cond, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %i.b = sext i32 %.pre to i64
  %i.c = tail call i32 @strncmp(ptr noundef %0, ptr noundef %1, i64 noundef %i.b) #20
  %i.d = icmp eq i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %.0 = phi i32 [ %i.e, %._crit_edge ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 2) i32 @regex_match_middle(ptr noundef %0, ptr noundef %1, i32 noundef %2) #3 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @strstr(ptr noundef %0, ptr noundef %1) #20
  br label %bb.d
end_hunk_0
