Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/drm_edid?download=true
inline.NumInlined: 572
inline.NumDeleted: 193
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 33
begin_hunk_0_@edid_filter_invalid_blocks:bb.a
    i32 6, label %edid_block_valid.exit.thread
    i32 0, label %edid_block_valid.exit.thread
  ]

edid_block_valid.exit:                            ; preds = %bb.b
  %.val.i = load i8, ptr %i.b, align 1
  %i.e = icmp eq i32 %i.d, 7
  %i.f = icmp eq i8 %.val.i, 2
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %edid_block_valid.exit.thread, label %bb.c

edid_block_valid.exit.thread:                     ; preds = %bb.b, %bb.b, %edid_block_valid.exit
  %i.h = sext i32 %.03641 to i64
  %i.i = getelementptr [128 x i8], ptr %0, i64 %i.h
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 dereferenceable(128) %i.i, ptr noundef align 1 dereferenceable(128) %i.b, i64 128, i1 false)
  %i.j = add i32 %.03641, 1
  br label %bb.c

bb.c:                                             ; preds = %edid_block_valid.exit.thread, %edid_block_valid.exit
  %.1 = phi i32 [ %i.j, %edid_block_valid.exit.thread ], [ %.03641, %edid_block_valid.exit ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.val = load i8, ptr %i.a, align 1
  %i.k = zext i8 %.val to i64
  %.not38.not = icmp samesign ult i64 %indvars.iv, %i.k
  br i1 %.not38.not, label %bb.b, label %bb.d, !llvm.loop !136

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %.1, 0
  br i1 %.not, label %bb.e, label %.critedge, !prof !13

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "679: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 679b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 679) #20, !srcloc !137
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, ptr @.str.5, i32 2136, i32 2305, i64 16) #20, !srcloc !138
  tail call void asm sideeffect "680: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 680b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 680) #20, !srcloc !139
  br label %.sink.split

.critedge:                                        ; preds = %bb.d
  %i.l = trunc i32 %.1 to i8
  %i.m = add i8 %i.l, -1
  store i8 %i.m, ptr %i.a, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.critedge
  %indvars.iv.i = phi i64 [ 0, %.critedge ], [ %indvars.iv.next.i.7, %bb.g ] ; 10 uses
  %.09.i = phi i8 [ 0, %.critedge ], [ %i.ar, %bb.g ]
  %i.n = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.o = load i8, ptr %i.n, align 1
  %i.p = add i8 %i.o, %.09.i
  %i.q = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.r = getelementptr i8, ptr %i.q, i64 1
  %i.s = load i8, ptr %i.r, align 1
  %i.t = add i8 %i.s, %i.p
  %i.u = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.v = getelementptr i8, ptr %i.u, i64 2
  %i.w = load i8, ptr %i.v, align 1
  %i.x = add i8 %i.w, %i.t
  %i.y = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.z = getelementptr i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = add i8 %i.aa, %i.x
  %i.ac = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = add i8 %i.ae, %i.ab
  %i.ag = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 5
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = add i8 %i.ai, %i.af
  %i.ak = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.al = getelementptr i8, ptr %i.ak, i64 6
  %i.am = load i8, ptr %i.al, align 1
  %i.an = add i8 %i.am, %i.aj                     ; 2 uses
  %exitcond.not.i.6 = icmp eq i64 %indvars.iv.i, 120
  br i1 %exitcond.not.i.6, label %edid_block_compute_checksum.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 7
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = add i8 %i.aq, %i.an
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8
  br label %bb.f

edid_block_compute_checksum.exit:                 ; preds = %bb.f
  %i.as = sub i8 0, %i.an
  %i.at = getelementptr i8, ptr %0, i64 127
  store i8 %i.as, ptr %i.at, align 1
  %i.au = shl i32 %.1, 7
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  store i64 %i.av, ptr %1, align 8
  %i.aw = tail call ptr @krealloc_node_align_noprof(ptr noundef nonnull %0, i64 noundef %i.av, i64 noundef 1, i32 noundef 3264, i32 noundef -1) #24 ; 2 uses
  %.not37 = icmp eq ptr %i.aw, null
  br i1 %.not37, label %.sink.split, label %bb.h

.sink.split:                                      ; preds = %edid_block_compute_checksum.exit, %bb.e
  tail call void @kfree(ptr noundef nonnull %0) #22
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %edid_block_compute_checksum.exit
  %.0 = phi ptr [ %i.aw, %edid_block_compute_checksum.exit ], [ null, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @seq_buf_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #14

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #15

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef ptr @__cea_db_iter_next(ptr noundef %0) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %__cea_db_iter_current_block.exit34.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = add nsw i64 %i.e, 1                      ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4
  %i.i = sext i32 %i.h to i64                     ; 4 uses
  %.not12.i = icmp ugt i64 %i.f, %i.i
  br i1 %.not12.i, label %__cea_db_iter_current_block.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.b, i64 %i.e     ; 2 uses
  %.val.i = load i8, ptr %i.j, align 1
  %i.k = and i8 %.val.i, 31                       ; 2 uses
  %i.l = zext nneg i8 %i.k to i64
  %i.m = add nsw i64 %i.f, %i.l
  %.not13.i = icmp ugt i64 %i.m, %i.i
  %.not24 = icmp eq ptr %i.j, null
  %or.cond = or i1 %.not24, %.not13.i
  br i1 %or.cond, label %__cea_db_iter_current_block.exit.thread, label %bb.d, !prof !142

__cea_db_iter_current_block.exit.thread:          ; preds = %bb.c, %bb.b
  tail call void asm sideeffect "729: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 729b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 729) #20, !srcloc !143
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, ptr @.str.5, i32 5161, i32 2305, i64 16) #20, !srcloc !144
  tail call void asm sideeffect "730: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 730b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 730) #20, !srcloc !145
  br label %.loopexit55.sink.split

bb.d:                                             ; preds = %bb.c
  %narrow54 = add nuw nsw i8 %i.k, 1
  %narrow = zext nneg i8 %narrow54 to i32
  %i.n = add i32 %i.d, %narrow                    ; 2 uses
  store i32 %i.n, ptr %i.c, align 8
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = add nsw i64 %i.o, 1                      ; 2 uses
  %.not12.i30 = icmp ugt i64 %i.p, %i.i
  br i1 %.not12.i30, label %__cea_db_iter_current_block.exit34.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.b, i64 %i.o     ; 3 uses
  %.val.i31 = load i8, ptr %i.q, align 1
  %i.r = and i8 %.val.i31, 31
  %i.s = zext nneg i8 %i.r to i64
  %i.t = add nsw i64 %i.p, %i.s
  %.not13.i32 = icmp ugt i64 %i.t, %i.i
  %.not25 = icmp eq ptr %i.q, null
  %or.cond53 = or i1 %.not25, %.not13.i32
  br i1 %or.cond53, label %__cea_db_iter_current_block.exit34.thread, label %.loopexit55

__cea_db_iter_current_block.exit34.thread:        ; preds = %bb.e, %bb.d, %bb.a
  %i.u = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 60
  %i.x = getelementptr i8, ptr %0, i64 16
  br label %bb.f

bb.f:                                             ; preds = %__cea_db_iter_current_block.exit43, %__cea_db_iter_current_block.exit34.thread
  %i.y = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.z = getelementptr i8, ptr %i.y, i64 8        ; 2 uses
  %.pre.i = load i32, ptr %i.u, align 8
  %.val9.i.pre.i = load ptr, ptr %i.z, align 8
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %.lr.ph.i
  %.val9.i.i = phi ptr [ %.val9.i.pre.i, %.lr.ph.i ], [ %.val10.i.i, %.backedge ] ; 7 uses
  %1 = phi i32 [ %.pre.i, %.lr.ph.i ], [ %2, %.backedge ] ; 3 uses
  %.val.i.i = load i64, ptr %i.y, align 8         ; 2 uses
  %i.aa = getelementptr i8, ptr %.val9.i.i, i64 126
  %.val.i.i.i.i = load i8, ptr %i.aa, align 1     ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %.val.i.i, 256
  br i1 %.not.i.i.i.i, label %drm_edid_block_count.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %.val9.i.i, i64 128
  %.val8.i.i.i.i.i.i = load i8, ptr %i.ab, align 1
  %.not7.i.i.i.i.i.i = icmp eq i8 %.val8.i.i.i.i.i.i, 2
  br i1 %.not7.i.i.i.i.i.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr i8, ptr %.val9.i.i, i64 129
  %.val9.i.i.i.i.i.i = load i8, ptr %i.ac, align 1
  %i.ad = icmp ult i8 %.val9.i.i.i.i.i.i, 3
  br i1 %i.ad, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr i8, ptr %.val9.i.i, i64 130
  %.val10.i.i.i.i.i.i = load i8, ptr %i.ae, align 1
  %i.af = icmp slt i8 %.val10.i.i.i.i.i.i, 7
  br i1 %i.af, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr i8, ptr %.val9.i.i, i64 132
  %.val.i.i.i.i.i.i.i.i = load i8, ptr %i.ag, align 1 ; 2 uses
  %i.ah = icmp ult i8 %.val.i.i.i.i.i.i.i.i, -32
  %i.ai = and i8 %.val.i.i.i.i.i.i.i.i, 31        ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ai, 0
  %or.cond.i.i.i.i.i.i.i.i = or i1 %i.ah, %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.m, label %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i.i

cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i.i:      ; preds = %bb.l
  %i.aj = getelementptr i8, ptr %.val9.i.i, i64 133
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = icmp eq i8 %i.ak, 120
  %i.am = icmp samesign ugt i8 %i.ai, 1
  %spec.select.i.i.i.i.i.i.i = select i1 %i.al, i1 %i.am, i1 false
  br i1 %spec.select.i.i.i.i.i.i.i, label %edid_hfeeodb_extension_block_count.exit.i.i.i.i.i, label %bb.m

edid_hfeeodb_extension_block_count.exit.i.i.i.i.i: ; preds = %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i.i
  %i.an = getelementptr i8, ptr %.val9.i.i, i64 134
  %i.ao = load i8, ptr %i.an, align 1
  %.fr.i.i.i.i.i = freeze i8 %i.ao                ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %.fr.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %drm_edid_block_count.exit.i.i

bb.m:                                             ; preds = %edid_hfeeodb_extension_block_count.exit.i.i.i.i.i, %cea_db_is_hdmi_forum_eeodb.exit.i.i.i.i.i.i, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  br label %drm_edid_block_count.exit.i.i

drm_edid_block_count.exit.i.i:                    ; preds = %bb.m, %edid_hfeeodb_extension_block_count.exit.i.i.i.i.i, %bb.g
  %.1.in.in.i.i.i.i = phi i8 [ %.val.i.i.i.i, %bb.g ], [ %.val.i.i.i.i, %bb.m ], [ %.fr.i.i.i.i.i, %edid_hfeeodb_extension_block_count.exit.i.i.i.i.i ]
  %.1.in.i.i.i.i = zext i8 %.1.in.in.i.i.i.i to i32
  %.1.i.i.i.i = add nuw nsw i32 %.1.in.i.i.i.i, 1
  %i.ap = trunc i64 %.val.i.i to i32
  %i.aq = sdiv i32 %i.ap, 128
  %i.ar = tail call range(i32 -16777216, 257) i32 @llvm.smin.i32(i32 %.1.i.i.i.i, i32 %i.aq)
  %i.as = icmp slt i32 %1, %i.ar
  br i1 %i.as, label %__drm_edid_iter_next.exit.i, label %.loopexit

__drm_edid_iter_next.exit.i:                      ; preds = %drm_edid_block_count.exit.i.i
  %2 = add nsw i32 %1, 1                          ; 2 uses
  store i32 %2, ptr %i.u, align 8
  %.val10.i.i = load ptr, ptr %i.z, align 8       ; 2 uses
  %3 = sext i32 %1 to i64
  %i.at = getelementptr [128 x i8], ptr %.val10.i.i, i64 %3 ; 5 uses
  %.not.i35 = icmp eq ptr %i.at, null
  br i1 %.not.i35, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %__drm_edid_iter_next.exit.i
  %i.au = load i8, ptr %i.at, align 1
  %.not14.i = icmp eq i8 %i.au, 2
  br i1 %.not14.i, label %bb.o, label %.backedge

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr i8, ptr %i.at, i64 1
  %.val.i36 = load i8, ptr %i.av, align 1
  %i.aw = icmp ult i8 %.val.i36, 3
  br i1 %i.aw, label %.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr i8, ptr %i.at, i64 2
  %.val16.i = load i8, ptr %i.ax, align 1         ; 2 uses
  %.not15.i = icmp slt i8 %.val16.i, 5
  br i1 %.not15.i, label %.backedge, label %.thread

.backedge:                                        ; preds = %bb.p, %bb.o, %bb.n
  br label %bb.g, !llvm.loop !140

.thread:                                          ; preds = %bb.p
  %i.ay = zext nneg i8 %.val16.i to i32
  store i32 4, ptr %i.v, align 8
  br label %bb.t

.loopexit:                                        ; preds = %drm_edid_block_count.exit.i.i, %__drm_edid_iter_next.exit.i, %bb.f
  store ptr null, ptr %i.a, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.loopexit
  %i.az = tail call ptr @__displayid_iter_next(ptr noundef %i.x) #22 ; 4 uses
  %.not.i37 = icmp eq ptr %i.az, null
  br i1 %.not.i37, label %.loopexit55.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = load i8, ptr %i.az, align 1
  %.not9.i = icmp eq i8 %i.ba, -127
  br i1 %.not9.i, label %bb.s, label %bb.q, !llvm.loop !141

bb.s:                                             ; preds = %bb.r
  store i32 3, ptr %i.v, align 8
  %i.bb = getelementptr i8, ptr %i.az, i64 2
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nuw nsw i32 %i.bd, 3
  br label %bb.t

bb.t:                                             ; preds = %.thread, %bb.s
  %i.bf = phi i32 [ %i.ay, %.thread ], [ %i.be, %bb.s ] ; 2 uses
  %i.bg = phi i64 [ 4, %.thread ], [ 3, %bb.s ]   ; 3 uses
  %i.bh = phi ptr [ %i.at, %.thread ], [ %i.az, %bb.s ] ; 2 uses
  store i32 %i.bf, ptr %i.w, align 4
  store ptr %i.bh, ptr %i.a, align 8
  %i.bi = zext nneg i32 %i.bf to i64              ; 2 uses
  %.not12.i39.not = icmp samesign ult i64 %i.bg, %i.bi
  br i1 %.not12.i39.not, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bj = add nuw nsw i64 %i.bg, 1
  %i.bk = getelementptr i8, ptr %i.bh, i64 %i.bg  ; 2 uses
  %.val.i40 = load i8, ptr %i.bk, align 1
  %i.bl = and i8 %.val.i40, 31
  %i.bm = zext nneg i8 %i.bl to i64
  %i.bn = add nuw nsw i64 %i.bj, %i.bm
  %.not13.i41 = icmp samesign ugt i64 %i.bn, %i.bi
  br i1 %.not13.i41, label %bb.v, label %__cea_db_iter_current_block.exit43

bb.v:                                             ; preds = %bb.u, %bb.t
  br label %__cea_db_iter_current_block.exit43

__cea_db_iter_current_block.exit43:               ; preds = %bb.u, %bb.v
  %.0.i42 = phi ptr [ %i.bk, %bb.u ], [ null, %bb.v ] ; 2 uses
  %.not28 = icmp eq ptr %.0.i42, null
  br i1 %.not28, label %bb.f, label %.loopexit55

.loopexit55.sink.split:                           ; preds = %bb.q, %__cea_db_iter_current_block.exit.thread
  store ptr null, ptr %i.a, align 8
  br label %.loopexit55

.loopexit55:                                      ; preds = %__cea_db_iter_current_block.exit43, %.loopexit55.sink.split, %bb.e
  %.0 = phi ptr [ null, %.loopexit55.sink.split ], [ %i.q, %bb.e ], [ %.0.i42, %__cea_db_iter_current_block.exit43 ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @displayid_iter_edid_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__displayid_iter_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @displayid_iter_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal void @get_monitor_range(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #5 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 358      ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 5
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load i16, ptr %0, align 1
  %i.i = icmp eq i16 %i.h, 0
  br i1 %i.i, label %bb.b, label %is_display_descriptor.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 2
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %is_display_descriptor.exit, label %is_display_descriptor.exit.thread

is_display_descriptor.exit:                       ; preds = %bb.b
  %i.m = getelementptr i8, ptr %0, i64 3
  %i.n = load i8, ptr %i.m, align 1
  %i.o = icmp eq i8 %i.n, -3
  br i1 %i.o, label %bb.c, label %is_display_descriptor.exit.thread

bb.c:                                             ; preds = %is_display_descriptor.exit
  %i.p = getelementptr i8, ptr %0, i64 10
  %i.q = load i8, ptr %i.p, align 1
  %.not = icmp eq i8 %i.q, 1
  br i1 %.not, label %bb.d, label %is_display_descriptor.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.c, align 1
  %i.s = zext i8 %i.r to i16                      ; 2 uses
  store i16 %i.s, ptr %i.b, align 2
  %i.t = getelementptr i8, ptr %0, i64 6
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i16                      ; 2 uses
  %i.w = getelementptr i8, ptr %i.a, i64 360      ; 2 uses
  store i16 %i.v, ptr %i.w, align 2
  %i.x = getelementptr i8, ptr %i.g, i64 19
  %i.y = load i8, ptr %i.x, align 1
  %i.z = icmp ugt i8 %i.y, 3
  br i1 %i.z, label %bb.e, label %is_display_descriptor.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %0, i64 4         ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  %i.ac = and i8 %i.ab, 1
  %.not17 = icmp eq i8 %i.ac, 0
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = add nuw nsw i16 %i.s, 255
  store i16 %i.ad, ptr %i.b, align 2
  %.pre = load i8, ptr %i.aa, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = phi i8 [ %.pre, %bb.f ], [ %i.ab, %bb.e ]
  %i.af = and i8 %i.ae, 2
  %.not18 = icmp eq i8 %i.af, 0
  br i1 %.not18, label %is_display_descriptor.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = add nuw nsw i16 %i.v, 255
  store i16 %i.ag, ptr %i.w, align 2
  br label %is_display_descriptor.exit.thread

is_display_descriptor.exit.thread:                ; preds = %bb.a, %bb.b, %bb.d, %bb.h, %bb.g, %bb.c, %is_display_descriptor.exit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i8 @displayid_version(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i8 @displayid_primary_use(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_property_replace_global_blob(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_object_property_set_value(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_connector_set_tile_property(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_detailed_mode(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.drm_display_mode, align 8   ; 14 uses
  %.val = load i16, ptr %0, align 1
  %.not = icmp eq i16 %.val, 0
  br i1 %.not, label %drm_mode_detailed.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8                ; 12 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8              ; 12 uses
  %i.e = getelementptr i8, ptr %0, i64 2
  %i.f = getelementptr i8, ptr %0, i64 4
end_hunk_0
