Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_sseu?download=true
inline.NumInlined: 114
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@intel_sseu_subslice_total:bb.a
  %i.t = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.u = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.s, i64 %i.t) #10, !srcloc !12 ; 2 uses
  %i.v = extractvalue { i32, i64 } %i.u, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.v)
  %i.w = extractvalue { i32, i64 } %i.u, 0
  %i.x = add i32 %i.w, %i.o
  %i.y = getelementptr i8, ptr %0, i64 10
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.ac = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.aa, i64 %i.ab) #10, !srcloc !12 ; 2 uses
  %i.ad = extractvalue { i32, i64 } %i.ac, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.ad)
  %i.ae = extractvalue { i32, i64 } %i.ac, 0
  %i.af = add i32 %i.ae, %i.x
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %hweight_long.exit
  %.027 = phi i32 [ %i.j, %hweight_long.exit ], [ %i.af, %.preheader ]
  ret i32 %.027
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 256) i32 @intel_sseu_get_hsw_subslices(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 167
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 8
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "788: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 788b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 788) #11, !srcloc !14
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 42, i32 2305, i64 16) #11, !srcloc !15
  tail call void asm sideeffect "789: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 789b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 789) #11, !srcloc !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %0, i64 168
  %i.e = load i8, ptr %i.d, align 8
  %.not12 = icmp ult i8 %1, %i.e
  br i1 %.not12, label %.critedge, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "790: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 790b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 790) #11, !srcloc !17
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 43, i32 2305, i64 16) #11, !srcloc !18
  tail call void asm sideeffect "791: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 791b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 791) #11, !srcloc !19
  br label %bb.e

.critedge:                                        ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = zext i8 %1 to i64
  %i.h = getelementptr i8, ptr %i.f, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge
  %.0 = phi i32 [ %i.j, %.critedge ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @intel_sseu_copy_eumask_to_user(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.b = getelementptr i8, ptr %1, i64 170
  %i.c = load i8, ptr %i.b, align 2               ; 3 uses
  %i.d = zext i8 %i.c to i32
  %i.e = add nuw nsw i32 %i.d, 7
  %i.f = lshr i32 %i.e, 3                         ; 5 uses
  %i.g = getelementptr i8, ptr %1, i64 168        ; 2 uses
  %i.h = load i8, ptr %i.g, align 8               ; 3 uses
  %i.i = getelementptr i8, ptr %1, i64 169        ; 2 uses
  %i.j = load i8, ptr %i.i, align 1               ; 3 uses
  %.not40 = icmp eq i8 %i.h, 0
  br i1 %.not40, label %._crit_edge39, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.k = getelementptr i8, ptr %1, i64 167        ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %.not41 = icmp eq i32 %i.f, 0                   ; 2 uses
  %i.m = zext nneg i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.n = icmp ult i8 %i.c, 25
  %unroll_iter = and i64 %wide.trip.count, 60
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod68 = icmp ne i64 %xtraiter, 0
  %xtraiter70 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.o = icmp ult i8 %i.c, 25
  %unroll_iter74 = and i64 %wide.trip.count, 60
  %lcmp.mod72.not = icmp eq i64 %xtraiter70, 0
  %lcmp.mod73 = icmp ne i64 %xtraiter70, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge33
  %i.p = phi i8 [ %i.h, %.preheader.lr.ph ], [ %i.bf, %._crit_edge33 ] ; 3 uses
  %i.q = phi i8 [ %i.j, %.preheader.lr.ph ], [ %i.bg, %._crit_edge33 ] ; 6 uses
  %i.r = phi i8 [ %i.j, %.preheader.lr.ph ], [ %i.bh, %._crit_edge33 ] ; 2 uses
  %indvars.iv60 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next61, %._crit_edge33 ] ; 4 uses
  %.not42 = icmp eq i8 %i.r, 0
  br i1 %.not42, label %._crit_edge33, label %.lr.ph32

.lr.ph32:                                         ; preds = %.preheader
  %.not = icmp eq i64 %indvars.iv60, 0
  %i.s = getelementptr [16 x i8], ptr %i.l, i64 %indvars.iv60 ; 2 uses
  br i1 %.not, label %.lr.ph32.split.us, label %.lr.ph32.split.preheader, !prof !13

.lr.ph32.split.preheader:                         ; preds = %.lr.ph32
  %i.t = trunc nuw nsw i64 %indvars.iv60 to i32
  br label %.lr.ph32.split

.lr.ph32.split.us:                                ; preds = %.lr.ph32
  br i1 %.not41, label %._crit_edge33, label %.lr.ph32.split.us.split.us.preheader

.lr.ph32.split.us.split.us.preheader:             ; preds = %.lr.ph32.split.us
  %i.u = load i8, ptr %i.k, align 1
  %i.v = and i8 %i.u, 8
  %.not.i.us = icmp eq i8 %i.v, 0
  %i.w = tail call i8 @llvm.umax.i8(i8 %i.q, i8 1)
  %wide.trip.count58 = zext i8 %i.w to i64
  %. = select i1 %.not.i.us, ptr %i.s, ptr %i.l
  br label %.lr.ph32.split.us.split.us

.lr.ph32.split.us.split.us:                       ; preds = %.lr.ph32.split.us.split.us.preheader, %._crit_edge.us.us
  %indvars.iv55 = phi i64 [ 0, %.lr.ph32.split.us.split.us.preheader ], [ %indvars.iv.next56, %._crit_edge.us.us ] ; 3 uses
  %i.x = mul nuw nsw i64 %indvars.iv55, %i.m
  %i.y = getelementptr [2 x i8], ptr %., i64 %indvars.iv55
  %.0.i29.us.us = load i16, ptr %i.y, align 2     ; 2 uses
  %i.z = zext i16 %.0.i29.us.us to i32            ; 2 uses
  %invariant.gep66 = getelementptr i8, ptr %i.a, i64 %i.x ; 5 uses
  br i1 %i.o, label %.epil.preheader69, label %.lr.ph32.split.us.split.us.new

.lr.ph32.split.us.split.us.new:                   ; preds = %.lr.ph32.split.us.split.us
  %i.aa = trunc i16 %.0.i29.us.us to i8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph32.split.us.split.us.new
  %indvars.iv50 = phi i64 [ 0, %.lr.ph32.split.us.split.us.new ], [ %indvars.iv.next51.3, %bb.b ] ; 5 uses
  %niter75 = phi i64 [ 0, %.lr.ph32.split.us.split.us.new ], [ %niter75.next.3, %bb.b ]
  %gep67 = getelementptr i8, ptr %invariant.gep66, i64 %indvars.iv50
  store i8 %i.aa, ptr %gep67, align 1
  %indvars.iv.next51 = or disjoint i64 %indvars.iv50, 1 ; 2 uses
  %indvars.iv50.tr.1 = trunc i64 %indvars.iv.next51 to i32
  %i.ab = shl i32 %indvars.iv50.tr.1, 3
  %i.ac = lshr i32 %i.z, %i.ab
  %i.ad = trunc nuw i32 %i.ac to i8
  %gep67.1 = getelementptr i8, ptr %invariant.gep66, i64 %indvars.iv.next51
  store i8 %i.ad, ptr %gep67.1, align 1
  %i.ae = getelementptr i8, ptr %invariant.gep66, i64 %indvars.iv50
  %gep67.2 = getelementptr i8, ptr %i.ae, i64 2
  store i8 0, ptr %gep67.2, align 1
  %i.af = getelementptr i8, ptr %invariant.gep66, i64 %indvars.iv50
  %gep67.3 = getelementptr i8, ptr %i.af, i64 3
  store i8 0, ptr %gep67.3, align 1
  %indvars.iv.next51.3 = add nuw nsw i64 %indvars.iv50, 4 ; 2 uses
  %niter75.next.3 = add i64 %niter75, 4           ; 2 uses
  %niter75.ncmp.3 = icmp eq i64 %niter75.next.3, %unroll_iter74
  br i1 %niter75.ncmp.3, label %._crit_edge.us.us.unr-lcssa, label %bb.b, !llvm.loop !20

._crit_edge.us.us.unr-lcssa:                      ; preds = %bb.b
  br i1 %lcmp.mod72.not, label %._crit_edge.us.us, label %.epil.preheader69

.epil.preheader69:                                ; preds = %._crit_edge.us.us.unr-lcssa, %.lr.ph32.split.us.split.us
  %indvars.iv50.epil.init = phi i64 [ 0, %.lr.ph32.split.us.split.us ], [ %indvars.iv.next51.3, %._crit_edge.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod73)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader69
  %indvars.iv50.epil = phi i64 [ %indvars.iv50.epil.init, %.epil.preheader69 ], [ %indvars.iv.next51.epil, %bb.c ] ; 3 uses
  %epil.iter71 = phi i64 [ 0, %.epil.preheader69 ], [ %epil.iter71.next, %bb.c ]
  %indvars.iv50.tr.epil = trunc i64 %indvars.iv50.epil to i32
  %i.ag = shl i32 %indvars.iv50.tr.epil, 3
  %i.ah = lshr i32 %i.z, %i.ag
  %i.ai = trunc i32 %i.ah to i8
  %gep67.epil = getelementptr i8, ptr %invariant.gep66, i64 %indvars.iv50.epil
  store i8 %i.ai, ptr %gep67.epil, align 1
  %indvars.iv.next51.epil = add nuw nsw i64 %indvars.iv50.epil, 1
  %epil.iter71.next = add i64 %epil.iter71, 1     ; 2 uses
  %epil.iter71.cmp.not = icmp eq i64 %epil.iter71.next, %xtraiter70
  br i1 %epil.iter71.cmp.not, label %._crit_edge.us.us, label %bb.c, !llvm.loop !22

._crit_edge.us.us:                                ; preds = %bb.c, %._crit_edge.us.us.unr-lcssa
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %._crit_edge33, label %.lr.ph32.split.us.split.us, !llvm.loop !24

.lr.ph32.split:                                   ; preds = %.lr.ph32.split.preheader, %._crit_edge
  %indvars.iv47 = phi i64 [ 0, %.lr.ph32.split.preheader ], [ %indvars.iv.next48, %._crit_edge ] ; 3 uses
  %.in = phi i8 [ %i.r, %.lr.ph32.split.preheader ], [ %i.bc, %._crit_edge ]
  %i.aj = zext i8 %.in to i32
  %i.ak = mul nuw nsw i32 %i.aj, %i.t
  %i.al = trunc nuw nsw i64 %indvars.iv47 to i32
  %i.am = add i32 %i.ak, %i.al
  %i.an = mul i32 %i.am, %i.f
  %i.ao = load i8, ptr %i.k, align 1
  %i.ap = and i8 %i.ao, 8
  %.not.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i, label %sseu_get_eus.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph32.split
  tail call void asm sideeffect "792: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 792b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 792) #11, !srcloc !25
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 53, i32 2305, i64 16) #11, !srcloc !26
  tail call void asm sideeffect "793: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 793b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 793) #11, !srcloc !27
  br label %sseu_get_eus.exit

sseu_get_eus.exit:                                ; preds = %.lr.ph32.split, %bb.d
  %.sink.i = phi ptr [ %i.l, %bb.d ], [ %i.s, %.lr.ph32.split ]
  br i1 %.not41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %sseu_get_eus.exit
  %i.aq = getelementptr [2 x i8], ptr %.sink.i, i64 %indvars.iv47
  %.0.i29 = load i16, ptr %i.aq, align 2          ; 2 uses
  %i.ar = zext i16 %.0.i29 to i32                 ; 2 uses
  %i.as = sext i32 %i.an to i64
  %invariant.gep = getelementptr i8, ptr %i.a, i64 %i.as ; 5 uses
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %i.at = trunc i16 %.0.i29 to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.e ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  store i8 %i.at, ptr %gep, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.tr.1 = trunc i64 %indvars.iv.next to i32
  %i.au = shl i32 %indvars.iv.tr.1, 3
  %i.av = lshr i32 %i.ar, %i.au
  %i.aw = trunc nuw i32 %i.av to i8
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  store i8 %i.aw, ptr %gep.1, align 1
  %i.ax = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %gep.2 = getelementptr i8, ptr %i.ax, i64 2
  store i8 0, ptr %gep.2, align 1
  %i.ay = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %gep.3 = getelementptr i8, ptr %i.ay, i64 3
  store i8 0, ptr %gep.3, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !20

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod68)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.f ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %indvars.iv.tr.epil = trunc i64 %indvars.iv.epil to i32
  %i.az = shl i32 %indvars.iv.tr.epil, 3
  %i.ba = lshr i32 %i.ar, %i.az
  %i.bb = trunc i32 %i.ba to i8
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.epil
  store i8 %i.bb, ptr %gep.epil, align 1
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.f, !llvm.loop !28

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.f, %sseu_get_eus.exit
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.bc = load i8, ptr %i.i, align 1              ; 4 uses
  %i.bd = zext i8 %i.bc to i64
  %i.be = icmp samesign ult i64 %indvars.iv.next48, %i.bd
  br i1 %i.be, label %.lr.ph32.split, label %._crit_edge33.loopexit45, !llvm.loop !24

._crit_edge33.loopexit45:                         ; preds = %._crit_edge
  %.pre = load i8, ptr %i.g, align 8
  br label %._crit_edge33

._crit_edge33:                                    ; preds = %._crit_edge.us.us, %.lr.ph32.split.us, %._crit_edge33.loopexit45, %.preheader
  %i.bf = phi i8 [ %.pre, %._crit_edge33.loopexit45 ], [ %i.p, %.lr.ph32.split.us ], [ %i.p, %.preheader ], [ %i.p, %._crit_edge.us.us ] ; 2 uses
  %i.bg = phi i8 [ %i.bc, %._crit_edge33.loopexit45 ], [ %i.q, %.lr.ph32.split.us ], [ %i.q, %.preheader ], [ %i.q, %._crit_edge.us.us ]
  %i.bh = phi i8 [ %i.bc, %._crit_edge33.loopexit45 ], [ %i.q, %.lr.ph32.split.us ], [ 0, %.preheader ], [ %i.q, %._crit_edge.us.us ]
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %i.bi = zext i8 %i.bf to i64
  %i.bj = icmp samesign ult i64 %indvars.iv.next61, %i.bi
  br i1 %i.bj, label %.preheader, label %._crit_edge39, !llvm.loop !29

._crit_edge39:                                    ; preds = %._crit_edge33, %bb.a
  %i.bk = zext i8 %i.h to i32
  %i.bl = zext i8 %i.j to i32
  %i.bm = mul nuw nsw i32 %i.bl, %i.bk
  %i.bn = mul nuw nsw i32 %i.bm, %i.f             ; 3 uses
  %i.bo = zext nneg i32 %i.bn to i64              ; 2 uses
  %i.bp = icmp samesign ult i32 %i.bn, 129
  br i1 %i.bp, label %check_copy_size.exit, label %bb.g, !prof !13

bb.g:                                             ; preds = %._crit_edge39
  tail call void @__copy_overflow(i32 noundef range(i32 0, -2147483648) 128, i64 noundef range(i64 0, 2080801) %i.bo) #12
  br label %copy_to_user.exit

check_copy_size.exit:                             ; preds = %._crit_edge39
  %i.bq = call i64 @_copy_to_user(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef range(i64 0, 2080801) %i.bo) #12
  %i.br = trunc i64 %i.bq to i32
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %bb.g, %check_copy_size.exit
  %.0.i = phi i32 [ %i.br, %check_copy_size.exit ], [ %i.bn, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @intel_sseu_copy_ssmask_to_user(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.b = getelementptr i8, ptr %1, i64 169        ; 2 uses
  %i.c = load i8, ptr %i.b, align 1               ; 2 uses
  %i.d = zext i8 %i.c to i32
  %i.e = add nuw nsw i32 %i.d, 7                  ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = getelementptr i8, ptr %1, i64 168        ; 3 uses
  %i.h = load i8, ptr %i.g, align 8               ; 3 uses
  %.not29 = icmp eq i8 %i.h, 0
  br i1 %.not29, label %._crit_edge28, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %factor.op.mul26 = and i32 %i.e, 504
  %i.i = getelementptr i8, ptr %1, i64 167
  %i.j = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.k = zext nneg i32 %factor.op.mul26 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.l = phi i8 [ %i.h, %.preheader.lr.ph ], [ %i.ak, %._crit_edge ]
  %i.m = phi i8 [ %i.c, %.preheader.lr.ph ], [ %i.al, %._crit_edge ]
  %indvars.iv32 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next33, %._crit_edge ] ; 4 uses
  %i.n = mul nuw nsw i64 %indvars.iv32, %i.k
  %.not30 = icmp eq i8 %i.m, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.o = getelementptr i8, ptr %i.j, i64 %indvars.iv32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %intel_sseu_has_subslice.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %intel_sseu_has_subslice.exit.thread ] ; 5 uses
  %i.p = load i8, ptr %i.g, align 8
  %i.q = zext i8 %i.p to i64
  %.not.i = icmp samesign ult i64 %indvars.iv32, %i.q
  br i1 %.not.i, label %bb.c, label %intel_sseu_has_subslice.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.r = load i8, ptr %i.i, align 1
  %i.s = and i8 %i.r, 8
  %.not23.i = icmp eq i8 %i.s, 0
  br i1 %.not23.i, label %.split, label %.split22

.split22:                                         ; preds = %bb.c
  %i.t = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.j, i64 range(i64 -2147483648, 255) %indvars.iv) #11, !srcloc !30 ; 2 uses
  %i.u = icmp ult i8 %i.t, 2
  tail call void @llvm.assume(i1 %i.u)
  %i.v = trunc nuw i8 %i.t to i1
  br i1 %i.v, label %bb.d, label %intel_sseu_has_subslice.exit.thread

.split:                                           ; preds = %bb.c
  %i.w = load i8, ptr %i.o, align 1
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw i64 1, %indvars.iv
  %i.z = and i64 %i.y, %i.x
  %.not24 = icmp eq i64 %i.z, 0
  br i1 %.not24, label %intel_sseu_has_subslice.exit.thread, label %bb.d

bb.d:                                             ; preds = %.split22, %.split
  %i.aa = add nuw nsw i64 %indvars.iv, %i.n
  %.urem = and i64 %indvars.iv, 7
  %i.ab = shl nuw nsw i64 1, %.urem
  %.udiv38 = lshr i64 %i.aa, 3
  %i.ac = and i64 %.udiv38, 536870911
  %i.ad = getelementptr i8, ptr %i.a, i64 %i.ac   ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = trunc nuw i64 %i.ab to i8
  %i.ag = or i8 %i.ae, %i.af
  store i8 %i.ag, ptr %i.ad, align 1
  br label %intel_sseu_has_subslice.exit.thread

intel_sseu_has_subslice.exit.thread:              ; preds = %bb.b, %.split22, %.split, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
end_hunk_0
