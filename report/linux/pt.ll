inline.NumInlined: 184
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@is_intel_pt_event:bb.a
  %i.c = icmp eq ptr %i.b, @pt_pmu
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pt_init() #6 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 80), align 8
  %i.c = and i64 %i.b, 144115188075855872
  %.not21 = icmp eq i64 %i.c, 0
  br i1 %.not21, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @cpus_read_lock() #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d
  %i.d = phi i64 [ 0, %bb.b ], [ %i.p, %bb.d ]
  %.01122 = phi i32 [ 0, %bb.b ], [ %.1, %bb.d ]  ; 3 uses
  %i.e = load i64, ptr @__cpu_online_mask, align 8
  %i.f = shl nsw i64 -1, %i.d
  %i.g = and i64 %i.e, %i.f                       ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %find_next_bit.exit.thread, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %bb.c
  %i.h = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.g) #19, !srcloc !10 ; 2 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = icmp ult i32 %i.i, 64
  br i1 %i.j, label %bb.d, label %find_next_bit.exit.thread

bb.d:                                             ; preds = %find_next_bit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8, !annotation !52
  %i.k = call i32 @rdmsrq_safe_on_cpu(i32 noundef %i.i, i32 noundef 1392, ptr noundef nonnull %i.a) #22
  %.not18 = icmp eq i32 %i.k, 0
  %i.l = load i64, ptr %i.a, align 8
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.m, 1
  %spec.select = select i1 %.not18, i32 %i.n, i32 0
  %.1 = add i32 %.01122, %spec.select             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.o = add nuw nsw i64 %i.h, 1
  %i.p = and i64 %i.o, 127                        ; 2 uses
  %i.q = icmp samesign ugt i64 %i.p, 63
  br i1 %i.q, label %find_next_bit.exit.thread, label %bb.c, !prof !53, !llvm.loop !54

find_next_bit.exit.thread:                        ; preds = %bb.c, %bb.d, %find_next_bit.exit
  %.011.lcssa = phi i32 [ %.01122, %bb.c ], [ %.1, %bb.d ], [ %.01122, %find_next_bit.exit ]
  call void @cpus_read_unlock() #22
  %.not = icmp eq i32 %.011.lcssa, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %find_next_bit.exit.thread
  %i.r = call i32 @x86_add_exclusive(i32 noundef 2) #22 ; 0 uses
  %i.s = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #24 ; 0 uses
  br label %bb.j

bb.f:                                             ; preds = %find_next_bit.exit.thread
  %i.t = call fastcc i32 @pt_pmu_hw_init() #25, !srcloc !55 ; 2 uses
  %.not15 = icmp eq i32 %i.t, 0
  br i1 %.not15, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 328), align 8 ; 2 uses
  %i.v = and i32 %i.u, 1
  %.not16 = icmp eq i32 %i.v, 0
  br i1 %.not16, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #24 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.x = and i32 %i.u, 2
  %.not17 = icmp eq i32 %i.x, 0
  %. = select i1 %.not17, i32 564, i32 1584
  store i32 %., ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 92), align 4
  store ptr @pt_attr_groups, ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 64), align 8
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 116), align 4
  store ptr @pt_event_init, ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 144), align 8
  store ptr @pt_event_add, ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 168), align 8
  store ptr @pt_event_del, ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 176), align 8
  store ptr @pt_event_start, ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 184), align 8
  store ptr @pt_event_stop, ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 192), align 8
  store ptr @pt_event_snapshot_aux, ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 272), align 8
  store ptr @pt_event_read, ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 200), align 8
  store ptr @pt_buffer_setup_aux, ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 256), align 8
  store ptr @pt_buffer_free_aux, ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 264), align 8
  store ptr @pt_event_addr_filters_sync, ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 288), align 8
  store ptr @pt_event_addr_filters_validate, ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 280), align 8
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 336), align 8
  %i.z = and i32 %i.y, 7
  store i32 %i.z, ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 124), align 4
  %i.aa = call i32 @perf_pmu_register(ptr noundef nonnull @pt_pmu, ptr noundef nonnull @.str.24, i32 noundef -1) #22
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.a, %bb.i, %bb.h, %bb.e
  %.0 = phi i32 [ -16, %bb.e ], [ -19, %bb.a ], [ %i.aa, %bb.i ], [ -19, %bb.h ], [ %i.t, %bb.f ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @pt_topa_entry_for_page(ptr nofree noundef nonnull readonly captures(address) %0, i32 noundef %1) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 56
  %i.c = load i64, ptr %i.b, align 8
  %.not = icmp ugt i64 %i.c, %i.a
  br i1 %.not, label %.critedge.preheader, label %bb.b, !prof !46

.critedge.preheader:                              ; preds = %bb.a
  %i.d = shl nuw nsw i64 %i.a, 12
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "645: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 645b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 645) #21, !srcloc !56
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.20, ptr nonnull @.str.21, i32 1013, i32 2307, i64 16) #21, !srcloc !57
  tail call void asm sideeffect "646: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 646b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 646) #21, !srcloc !58
  br label %.loopexit

.critedge:                                        ; preds = %.critedge.preheader, %bb.c
  %.065.in = phi ptr [ %.065, %bb.c ], [ %0, %.critedge.preheader ]
  %.065 = load ptr, ptr %.065.in, align 8         ; 7 uses
  %.not79 = icmp eq ptr %.065, %0
  br i1 %.not79, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.e = getelementptr i8, ptr %.065, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %.065, i64 24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = add i64 %i.h, %i.f
  %i.j = icmp ugt i64 %i.i, %i.d
  br i1 %i.j, label %bb.e, label %.critedge, !llvm.loop !59

bb.d:                                             ; preds = %.critedge
  tail call void asm sideeffect "647: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 647b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 647) #21, !srcloc !60
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.20, ptr nonnull @.str.21, i32 1029, i32 2307, i64 16) #21, !srcloc !61
  tail call void asm sideeffect "648: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 648b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 648) #21, !srcloc !62
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.065, i64 32
  %i.l = load i32, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.f, label %.critedge77, !prof !63

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "649: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 649b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 649) #21, !srcloc !64
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.20, ptr nonnull @.str.21, i32 1037, i32 2307, i64 16) #21, !srcloc !65
  tail call void asm sideeffect "650: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 650b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 650) #21, !srcloc !66
  br label %.loopexit

.critedge77:                                      ; preds = %bb.e
  %i.n = getelementptr i8, ptr %.065, i64 -4056   ; 5 uses
  %i.o = lshr i64 %i.f, 12
  %i.p = trunc i64 %i.o to i32                    ; 3 uses
  %i.q = getelementptr i8, ptr %.065, i64 36
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %.not74 = icmp eq i32 %i.r, 0
  br i1 %.not74, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge77
  %i.s = load i64, ptr %i.n, align 8
  %i.t = trunc i64 %i.s to i32
  %i.u = lshr i32 %i.t, 6
  %i.v = and i32 %i.u, 15
  %i.w = add i32 %i.r, 1                          ; 2 uses
  %i.x = shl i32 %i.w, %i.v
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge77
  %.069 = phi i32 [ %i.w, %bb.g ], [ 0, %.critedge77 ] ; 2 uses
  %.068 = phi i32 [ %i.x, %bb.g ], [ 0, %.critedge77 ]
  %.not75 = icmp uge i32 %1, %i.p
  %i.y = add i32 %.068, %i.p                      ; 2 uses
  %i.z = icmp ult i32 %1, %i.y
  %or.cond = select i1 %.not75, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.aa = icmp ult i32 %.069, %i.l
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %i.ab = sub nuw i32 %1, %i.p
  %i.ac = load i64, ptr %i.n, align 8
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = lshr i32 %i.ad, 6
  %i.af = and i32 %i.ae, 15
  %i.ag = lshr i32 %i.ab, %i.af
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr [8 x i8], ptr %i.n, i64 %i.ah
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %.06683 = phi i32 [ %3, %bb.j ], [ %.069, %.preheader ] ; 2 uses
  %.06782 = phi i32 [ %i.ap, %bb.j ], [ %i.y, %.preheader ]
  %2 = zext i32 %.06683 to i64                    ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %i.n, i64 %2
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = trunc i64 %i.ak to i32
  %i.am = lshr i32 %i.al, 6
  %i.an = and i32 %i.am, 15
  %i.ao = shl nuw nsw i32 1, %i.an
  %i.ap = add i32 %i.ao, %.06782                  ; 2 uses
  %i.aq = icmp ugt i32 %i.ap, %1
  br i1 %i.aq, label %.loopexit.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %3 = add nuw i32 %.06683, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %3, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !67

._crit_edge:                                      ; preds = %bb.j, %.preheader
  tail call void asm sideeffect "651: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 651b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 651) #21, !srcloc !68
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.20, ptr nonnull @.str.21, i32 1069, i32 2307, i64 16) #21, !srcloc !69
  tail call void asm sideeffect "652: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 652b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 652) #21, !srcloc !70
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.ar = getelementptr [8 x i8], ptr %i.n, i64 %2
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.f, %bb.b, %._crit_edge, %bb.i, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.b ], [ %i.ai, %bb.i ], [ null, %bb.f ], [ null, %._crit_edge ], [ %i.ar, %.loopexit.loopexit ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rdmsrq_safe_on_cpu(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @x86_add_exclusive(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal fastcc range(i32 -12, 1) i32 @pt_pmu_hw_init() unnamed_addr #6 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 206, 1394) 206) #21, !srcloc !19 ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 2 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_read_msr, i64 8), i1 false) #21
          to label %native_read_msr.exit [label %bb.b], !srcloc !14

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.a, 1
  %i.d = shl i64 %i.c, 32
  %i.e = or i64 %i.d, %i.b
  tail call void @do_trace_read_msr(i32 noundef 206, i64 noundef %i.e, i32 noundef 0) #22
  br label %native_read_msr.exit

native_read_msr.exit:                             ; preds = %bb.a, %bb.b
  %i.f = lshr i64 %i.b, 8
  %i.g = and i64 %i.f, 255
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 360), align 8
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 40), align 8
  %i.i = icmp sgt i32 %i.h, 20
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %native_read_msr.exit
  %i.j = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 21, i32 0) #21, !srcloc !71 ; 2 uses
  %i.k = extractvalue { i32, i32, i32, i32 } %i.j, 0
  %i.l = extractvalue { i32, i32, i32, i32 } %i.j, 1
  store i32 %i.l, ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 368), align 8
  store i32 %i.k, ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 372), align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %native_read_msr.exit
  %i.m = load i32, ptr @boot_cpu_data, align 8
  switch i32 %i.m, label %bb.f [
    i32 1597, label %bb.e
    i32 1622, label %bb.e
    i32 1607, label %bb.e
    i32 1615, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 353), align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 64), align 8
  %i.o = and i64 %i.n, 32
  %.not45 = icmp eq i64 %i.o, 0
  br i1 %.not45, label %.preheader50, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 206, 1394) 1157) #21, !srcloc !19 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0        ; 2 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_read_msr, i64 8), i1 false) #21
          to label %native_read_msr.exit42 [label %bb.h], !srcloc !14

bb.h:                                             ; preds = %bb.g
  %i.r = extractvalue { i64, i64 } %i.p, 1
  %i.s = shl i64 %i.r, 32
  %i.t = or i64 %i.s, %i.q
  tail call void @do_trace_read_msr(i32 noundef 1157, i64 noundef %i.t, i32 noundef 0) #22
  br label %native_read_msr.exit42

native_read_msr.exit42:                           ; preds = %bb.g, %bb.h
  %i.u = and i64 %i.q, 16384
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %.preheader50, label %bb.i

bb.i:                                             ; preds = %native_read_msr.exit42
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 352), align 8
  br label %.preheader50

.preheader50:                                     ; preds = %native_read_msr.exit42, %bb.i, %bb.f
  br label %bb.j

bb.j:                                             ; preds = %.preheader50, %bb.j
  %i.v = phi i1 [ false, %bb.j ], [ true, %.preheader50 ]
  %.03946 = phi i64 [ 1, %bb.j ], [ 0, %.preheader50 ] ; 2 uses
  %i.w = trunc nuw nsw i64 %.03946 to i32         ; 2 uses
  %.idx = shl nuw nsw i64 %.03946, 4
  %i.x = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 320), i64 %.idx ; 5 uses
  %i.y = getelementptr i8, ptr %i.x, i64 4
  %i.z = getelementptr i8, ptr %i.x, i64 8        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.x, i64 12
  store i32 20, ptr %i.x, align 8
  store i32 %i.w, ptr %i.z, align 8
  %i.ab = tail call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 20, i32 range(i32 0, 2) %i.w) #21, !srcloc !71 ; 4 uses
  %i.ac = extractvalue { i32, i32, i32, i32 } %i.ab, 0
  %i.ad = extractvalue { i32, i32, i32, i32 } %i.ab, 1
  %i.ae = extractvalue { i32, i32, i32, i32 } %i.ab, 2
  %i.af = extractvalue { i32, i32, i32, i32 } %i.ab, 3
  store i32 %i.ac, ptr %i.x, align 8
  store i32 %i.ad, ptr %i.y, align 4
  store i32 %i.ae, ptr %i.z, align 8
  store i32 %i.af, ptr %i.aa, align 4
  br i1 %i.v, label %bb.j, label %bb.k, !llvm.loop !72

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 16), align 16
  %i.ah = tail call noalias align 8 dereferenceable_or_null(152) ptr @__kmalloc_cache_noprof(ptr noundef %i.ag, i32 noundef 3520, i64 noundef range(i64 152, 761) 152) #26 ; 4 uses
  %.not40 = icmp eq ptr %i.ah, null
  br i1 %.not40, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 80), align 16
  %i.aj = tail call noalias align 8 dereferenceable_or_null(760) ptr @__kmalloc_cache_noprof(ptr noundef %i.ai, i32 noundef 3520, i64 noundef range(i64 152, 761) 760) #26 ; 2 uses
  %.not41 = icmp eq ptr %i.aj, null
  br i1 %.not41, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.l, %.preheader
  %.147 = phi i64 [ %i.as, %.preheader ], [ 0, %bb.l ] ; 5 uses
  %i.ak = getelementptr [40 x i8], ptr %i.aj, i64 %.147 ; 5 uses
  %i.al = getelementptr [24 x i8], ptr @pt_caps, i64 %.147
  %i.am = load ptr, ptr %i.al, align 8
  store ptr %i.am, ptr %i.ak, align 8
  %i.an = getelementptr i8, ptr %i.ak, i64 8
  store i16 292, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %i.ak, i64 16
  store ptr @pt_cap_show, ptr %i.ao, align 8
  %i.ap = inttoptr i64 %.147 to ptr
  %i.aq = getelementptr i8, ptr %i.ak, i64 32
  store ptr %i.ap, ptr %i.aq, align 8
  %i.ar = getelementptr [8 x i8], ptr %i.ah, i64 %.147
  store ptr %i.ak, ptr %i.ar, align 8
  %i.as = add nuw nsw i64 %.147, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, 18
  br i1 %exitcond.not, label %bb.m, label %.preheader, !llvm.loop !73

bb.m:                                             ; preds = %.preheader
  store ptr %i.ah, ptr getelementptr inbounds nuw (i8, ptr @pt_cap_group, i64 32), align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.k
  tail call void @kfree(ptr noundef %i.ah) #22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0 = phi i32 [ 0, %bb.m ], [ -12, %bb.n ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @pt_event_init(ptr nofree noundef captures(none) %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 216
  %i.b = load i32, ptr %i.a, align 8
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 88), align 8
  %.not = icmp eq i32 %i.b, %i.c
  br i1 %.not, label %bb.b, label %pt_event_valid.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 224
  %.val = load i64, ptr %i.d, align 8             ; 13 uses
  %i.e = and i64 %.val, -36028799426231860
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.c, label %pt_event_valid.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %.val, 259522562
  %.not30.i = icmp eq i64 %i.f, 0
  br i1 %.not30.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 324), align 4
  %i.h = and i32 %i.g, 2
  %.not31.i = icmp eq i32 %i.h, 0
  br i1 %.not31.i, label %pt_event_valid.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @pt_pmu, i64 340), align 4 ; 2 uses
  %i.j = lshr i64 %.val, 24
  %i.k = and i64 %i.j, 15                         ; 2 uses
  %.not32.i = icmp eq i64 %i.k, 0
  br i1 %.not32.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = lshr i32 %i.i, 16
  %i.m = zext nneg i32 %i.l to i64
end_hunk_0
