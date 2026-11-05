Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/drm_blend?download=true
inline.NumInlined: 10
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@drm_plane_create_alpha_property:bb.a
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.f, i64 72
  store i16 -1, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ -12, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_property_create_range(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -12, 1) i32 @drm_plane_create_rotation_property(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = and i32 %2, 15
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "519: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 519b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 519) #8, !srcloc !12
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, ptr @.str.8, i32 307, i32 2305, i64 16) #8, !srcloc !13
  tail call void asm sideeffect "520: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 520b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 520) #8, !srcloc !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = and i32 %1, 15
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = add nsw i64 %i.d, -1                     ; 2 uses
  %i.f = xor i64 %i.e, %i.d
  %i.g = icmp ult i64 %i.e, %i.f
  br i1 %i.g, label %bb.e, label %bb.d, !prof !15

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "521: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 521b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 521) #8, !srcloc !16
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, ptr @.str.8, i32 308, i32 2305, i64 16) #8, !srcloc !17
  tail call void asm sideeffect "522: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 522b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 522) #8, !srcloc !18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = xor i32 %2, -1
  %i.i = and i32 %1, %i.h
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.g, label %bb.f, !prof !15

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "523: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 523b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 523) #8, !srcloc !19
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, ptr @.str.8, i32 309, i32 2305, i64 16) #8, !srcloc !20
  tail call void asm sideeffect "524: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 524b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 524) #8, !srcloc !21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = load ptr, ptr %0, align 8
  %i.k = zext i32 %2 to i64
  %i.l = tail call ptr @drm_property_create_bitmask(ptr noundef %i.j, i32 noundef 0, ptr noundef @.str.9, ptr noundef @drm_plane_create_rotation_property.props, i32 noundef 6, i64 noundef %i.k) #7 ; 3 uses
  %.not26 = icmp eq ptr %i.l, null
  br i1 %.not26, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr i8, ptr %0, i64 80
  %i.n = zext i32 %1 to i64
  tail call void @drm_object_attach_property(ptr noundef %i.m, ptr noundef nonnull %i.l, i64 noundef %i.n) #7
  %i.o = getelementptr i8, ptr %0, i64 1232
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.p, null
  br i1 %.not27, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr i8, ptr %i.p, i64 76
  store i32 %1, ptr %i.q, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.r = getelementptr i8, ptr %0, i64 1256
  store ptr %i.l, ptr %i.r, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j
  %.0 = phi i32 [ 0, %bb.j ], [ -12, %bb.g ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_property_create_bitmask(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern nofree noredzone nosync nounwind null_pointer_is_valid sspstrong memory(none)
define dso_local i32 @drm_rotation_simplify(i32 noundef %0, i32 noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = xor i32 %1, -1
  %i.b = and i32 %0, %i.a
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %0, 48
  %i.d = xor i32 %i.c, 48
  %i.e = and i32 %0, 15
  %i.f = tail call i32 asm "bsfl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 16) %i.e, i32 -1) #9, !srcloc !22
  %i.g = add i32 %i.f, 2
  %i.h = srem i32 %i.g, 4
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw i64 1, %i.i
  %i.k = trunc i64 %i.j to i32
  %i.l = or i32 %i.d, %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.l, %bb.b ], [ %0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -12, 1) i32 @drm_plane_create_zpos_property(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = zext i32 %2 to i64
  %i.c = zext i32 %3 to i64
  %i.d = tail call ptr @drm_property_create_range(ptr noundef %i.a, i32 noundef 0, ptr noundef @.str.10, i64 noundef %i.b, i64 noundef %i.c) #7 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 80
  %i.f = zext i32 %1 to i64
  tail call void @drm_object_attach_property(ptr noundef %i.e, ptr noundef nonnull %i.d, i64 noundef %i.f) #7
  %i.g = getelementptr i8, ptr %0, i64 1248
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %0, i64 1232       ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not16 = icmp eq ptr %i.i, null
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.i, i64 80
  store i32 %1, ptr %i.j, align 8
  %i.k = load ptr, ptr %i.h, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 84
  store i32 %1, ptr %i.l, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ -12, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -12, 1) i32 @drm_plane_create_zpos_immutable_property(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = zext i32 %1 to i64                       ; 3 uses
  %i.c = tail call ptr @drm_property_create_range(ptr noundef %i.a, i32 noundef 4, ptr noundef @.str.10, i64 noundef %i.b, i64 noundef %i.b) #7 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 80
  tail call void @drm_object_attach_property(ptr noundef %i.d, ptr noundef nonnull %i.c, i64 noundef %i.b) #7
  %i.e = getelementptr i8, ptr %0, i64 1248
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %0, i64 1232       ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not16 = icmp eq ptr %i.g, null
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 80
  store i32 %1, ptr %i.h, align 8
  %i.i = load ptr, ptr %i.f, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 84
  store i32 %1, ptr %i.j, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ -12, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @drm_atomic_normalize_zpos(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 640
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 40
  %.pre70 = load ptr, ptr %i.f, align 8
  br label %bb.b

.preheader:                                       ; preds = %bb.f, %bb.a
  %i.h = phi ptr [ %i.b, %bb.a ], [ %i.ai, %bb.f ] ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 688
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph59, label %drm_atomic_helper_crtc_normalize_zpos.exit.thread

.lr.ph59:                                         ; preds = %.preheader
  %i.l = getelementptr i8, ptr %1, i64 40
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.m = phi ptr [ %i.b, %.lr.ph ], [ %i.ai, %bb.f ] ; 3 uses
  %i.n = phi ptr [ %.pre70, %.lr.ph ], [ %i.aj, %bb.f ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.o = getelementptr [32 x i8], ptr %i.n, i64 %indvars.iv ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8
  %.not43 = icmp eq ptr %i.p, null
  br i1 %.not43, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %i.o, i64 24
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not44 = icmp eq ptr %i.t, null
  br i1 %.not44, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %i.o, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 80
  %i.x = load i32, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %i.r, i64 80
  %i.z = load i32, ptr %i.y, align 8
  %.not45 = icmp eq i32 %i.x, %i.z
  br i1 %.not45, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val = load ptr, ptr %i.g, align 8
  %i.aa = getelementptr i8, ptr %i.t, i64 136
  %.val46 = load i32, ptr %i.aa, align 8
  %i.ab = zext i32 %.val46 to i64
  %i.ac = getelementptr [56 x i8], ptr %.val, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 10     ; 2 uses
  %i.ag = load i8, ptr %i.af, align 2
  %i.ah = or i8 %i.ag, 16
  store i8 %i.ah, ptr %i.af, align 2
  %.pre = load ptr, ptr %i.f, align 8
  %.pre71 = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.c
  %i.ai = phi ptr [ %i.m, %bb.b ], [ %.pre71, %bb.e ], [ %i.m, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  %i.aj = phi ptr [ %i.n, %bb.b ], [ %.pre, %bb.e ], [ %i.n, %bb.d ], [ %i.n, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 640
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %indvars.iv.next, %i.am
  br i1 %i.an, label %bb.b, label %.preheader, !llvm.loop !23

bb.g:                                             ; preds = %.lr.ph59, %bb.q
  %2 = phi ptr [ %i.h, %.lr.ph59 ], [ %3, %bb.q ] ; 2 uses
  %indvars.iv67 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next71, %bb.q ] ; 2 uses
  %i.ao = load ptr, ptr %i.l, align 8
  %i.ap = getelementptr [56 x i8], ptr %i.ao, i64 %indvars.iv67 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 4 uses
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr i8, ptr %i.ap, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr i8, ptr %i.ap, i64 24
  %i.au = load ptr, ptr %i.at, align 8            ; 4 uses
  %i.av = getelementptr i8, ptr %i.as, i64 12
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = getelementptr i8, ptr %i.au, i64 12     ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4
  %.not40 = icmp eq i32 %i.aw, %i.ay
  br i1 %.not40, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr i8, ptr %i.au, i64 10
  %i.ba = load i8, ptr %i.az, align 2
  %i.bb = and i8 %i.ba, 16
  %.not41 = icmp eq i8 %i.bb, 0
  br i1 %.not41, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bc = getelementptr i8, ptr %i.au, i64 336
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = load ptr, ptr %i.aq, align 8            ; 5 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 640
  %i.bg = load i32, ptr %i.bf, align 8            ; 2 uses
  %.not.i65.i = icmp eq ptr %i.be, null           ; 3 uses
  br i1 %.not.i65.i, label %__drm_to_dev.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr i8, ptr %i.be, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.k, %bb.j
  %i.bj = phi ptr [ %i.bi, %bb.k ], [ null, %bb.j ]
  %i.bk = getelementptr i8, ptr %i.aq, i64 88
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = getelementptr i8, ptr %i.aq, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bj, i32 noundef 4, ptr noundef @.str.15, i32 noundef %i.bl, ptr noundef %i.bn) #7
  %i.bo = icmp slt i32 %i.bg, 0
  %i.bp = sext i32 %i.bg to i64
  %i.bq = shl nsw i64 %i.bp, 3
  %.0.i.i = select i1 %i.bo, i64 -1, i64 %i.bq
  %i.br = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -17179869184, 17179869177) %.0.i.i, i32 noundef 3264) #10 ; 9 uses
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %drm_atomic_helper_crtc_normalize_zpos.exit.thread, label %bb.l

bb.l:                                             ; preds = %__drm_to_dev.exit.i
  %i.bs = getelementptr i8, ptr %i.be, i64 648    ; 4 uses
  %.pn75.i = load ptr, ptr %i.bs, align 8         ; 4 uses
  %.not7377.i = icmp eq ptr %.pn75.i, %i.bs
  br i1 %.not7377.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.l
  tail call void @sort(ptr noundef nonnull %i.br, i64 noundef 0, i64 noundef 8, ptr noundef @drm_atomic_commit_zpos_cmp, ptr noundef null) #7
  br label %drm_atomic_helper_crtc_normalize_zpos.exit.thread49

.lr.ph.i:                                         ; preds = %bb.l
  %.05476.i = getelementptr i8, ptr %.pn75.i, i64 -8 ; 2 uses
  %i.bt = getelementptr i8, ptr %i.be, i64 8      ; 2 uses
  br i1 %.not.i65.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.n
  %.05480.us.i = phi ptr [ %.054.us.i, %bb.n ], [ %.05476.i, %.lr.ph.i ]
  %.pn79.us.i = phi ptr [ %.pn.us.i, %bb.n ], [ %.pn75.i, %.lr.ph.i ] ; 4 uses
  %.05778.us.i = phi i32 [ %.2.us.i, %bb.n ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.bu = load i32, ptr %i.ax, align 4
  %i.bv = getelementptr i8, ptr %.pn79.us.i, i64 1212
  %.054.val.us.i = load i32, ptr %i.bv, align 4
  %i.bw = shl nuw i32 1, %.054.val.us.i
  %i.bx = and i32 %i.bw, %i.bu
  %.not62.us.i = icmp eq i32 %i.bx, 0
  br i1 %.not62.us.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.us.i
  %i.by = tail call ptr @drm_atomic_get_plane_state(ptr noundef %i.bd, ptr noundef %.05480.us.i) #7 ; 4 uses
  %i.bz = icmp ugt ptr %i.by, inttoptr (i64 -4096 to ptr)
  br i1 %i.bz, label %drm_atomic_helper_crtc_normalize_zpos.exit, label %.thread.us.i

.thread.us.i:                                     ; preds = %bb.m
  %i.ca = add i32 %.05778.us.i, 1
  %i.cb = sext i32 %.05778.us.i to i64
  %i.cc = getelementptr [8 x i8], ptr %i.br, i64 %i.cb
  store ptr %i.by, ptr %i.cc, align 8
  %i.cd = getelementptr i8, ptr %.pn79.us.i, i64 72
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = getelementptr i8, ptr %.pn79.us.i, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr i8, ptr %i.by, i64 80
  %i.ci = load i32, ptr %i.ch, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef @.str.16, i32 noundef %i.ce, ptr noundef %i.cg, i32 noundef %i.ci) #7
  br label %bb.n

bb.n:                                             ; preds = %.thread.us.i, %.lr.ph.split.us.i
  %.2.us.i = phi i32 [ %i.ca, %.thread.us.i ], [ %.05778.us.i, %.lr.ph.split.us.i ] ; 2 uses
  %.pn.us.i = load ptr, ptr %.pn79.us.i, align 8  ; 3 uses
  %.054.us.i = getelementptr i8, ptr %.pn.us.i, i64 -8
  %.not73.us.i = icmp eq ptr %.pn.us.i, %i.bs
  br i1 %.not73.us.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !24

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.p
  %.05480.i = phi ptr [ %.054.i, %bb.p ], [ %.05476.i, %.lr.ph.i ]
  %.pn79.i = phi ptr [ %.pn.i, %bb.p ], [ %.pn75.i, %.lr.ph.i ] ; 4 uses
  %.05778.i = phi i32 [ %.2.i, %bb.p ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.cj = load i32, ptr %i.ax, align 4
  %i.ck = getelementptr i8, ptr %.pn79.i, i64 1212
  %.054.val.i = load i32, ptr %i.ck, align 4
  %i.cl = shl nuw i32 1, %.054.val.i
  %i.cm = and i32 %i.cl, %i.cj
  %.not62.i = icmp eq i32 %i.cm, 0
  br i1 %.not62.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.i
  %i.cn = tail call ptr @drm_atomic_get_plane_state(ptr noundef %i.bd, ptr noundef %.05480.i) #7 ; 4 uses
  %i.co = icmp ugt ptr %i.cn, inttoptr (i64 -4096 to ptr)
  br i1 %i.co, label %drm_atomic_helper_crtc_normalize_zpos.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.o
  %i.cp = add i32 %.05778.i, 1
  %i.cq = sext i32 %.05778.i to i64
  %i.cr = getelementptr [8 x i8], ptr %i.br, i64 %i.cq
  store ptr %i.cn, ptr %i.cr, align 8
  %i.cs = load ptr, ptr %i.bt, align 8
  %i.ct = getelementptr i8, ptr %.pn79.i, i64 72
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = getelementptr i8, ptr %.pn79.i, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr i8, ptr %i.cn, i64 80
  %i.cy = load i32, ptr %i.cx, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.cs, i32 noundef 4, ptr noundef @.str.16, i32 noundef %i.cu, ptr noundef %i.cw, i32 noundef %i.cy) #7
  br label %bb.p

bb.p:                                             ; preds = %.thread.i, %.lr.ph.split.i
  %.2.i = phi i32 [ %i.cp, %.thread.i ], [ %.05778.i, %.lr.ph.split.i ] ; 2 uses
  %.pn.i = load ptr, ptr %.pn79.i, align 8        ; 3 uses
  %.054.i = getelementptr i8, ptr %.pn.i, i64 -8
  %.not73.i = icmp eq ptr %.pn.i, %i.bs
  br i1 %.not73.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !24

._crit_edge.i:                                    ; preds = %bb.p, %bb.n
  %.057.lcssa.i = phi i32 [ %.2.us.i, %bb.n ], [ %.2.i, %bb.p ] ; 3 uses
  %i.cz = sext i32 %.057.lcssa.i to i64
  tail call void @sort(ptr noundef nonnull %i.br, i64 noundef %i.cz, i64 noundef 8, ptr noundef @drm_atomic_commit_zpos_cmp, ptr noundef null) #7
  %i.da = icmp sgt i32 %.057.lcssa.i, 0
  br i1 %i.da, label %.lr.ph84.i, label %drm_atomic_helper_crtc_normalize_zpos.exit.thread49

.lr.ph84.i:                                       ; preds = %._crit_edge.i
  %wide.trip.count94.i = zext nneg i32 %.057.lcssa.i to i64 ; 2 uses
  br i1 %.not.i65.i, label %__drm_to_dev.exit69.us.i, label %__drm_to_dev.exit69.i

__drm_to_dev.exit69.us.i:                         ; preds = %.lr.ph84.i, %__drm_to_dev.exit69.us.i
  %indvars.iv91.i = phi i64 [ %indvars.iv.next92.i, %__drm_to_dev.exit69.us.i ], [ 0, %.lr.ph84.i ] ; 3 uses
  %i.db = getelementptr [8 x i8], ptr %i.br, i64 %indvars.iv91.i
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.de = getelementptr i8, ptr %i.dc, i64 84
  %i.df = trunc nuw nsw i64 %indvars.iv91.i to i32 ; 2 uses
  store i32 %i.df, ptr %i.de, align 4
  %i.dg = getelementptr i8, ptr %i.dd, i64 80
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = getelementptr i8, ptr %i.dd, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef @.str.17, i32 noundef %i.dh, ptr noundef %i.dj, i32 noundef %i.df) #7
  %indvars.iv.next92.i = add nuw nsw i64 %indvars.iv91.i, 1 ; 2 uses
  %exitcond95.not.i = icmp eq i64 %indvars.iv.next92.i, %wide.trip.count94.i
  br i1 %exitcond95.not.i, label %drm_atomic_helper_crtc_normalize_zpos.exit.thread49, label %__drm_to_dev.exit69.us.i, !llvm.loop !25

__drm_to_dev.exit69.i:                            ; preds = %.lr.ph84.i, %__drm_to_dev.exit69.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %__drm_to_dev.exit69.i ], [ 0, %.lr.ph84.i ] ; 3 uses
  %i.dk = getelementptr [8 x i8], ptr %i.br, i64 %indvars.iv.i
  %i.dl = load ptr, ptr %i.dk, align 8            ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8            ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dl, i64 84
  %i.do = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  store i32 %i.do, ptr %i.dn, align 4
  %i.dp = load ptr, ptr %i.bt, align 8
  %i.dq = getelementptr i8, ptr %i.dm, i64 80
  %i.dr = load i32, ptr %i.dq, align 8
  %i.ds = getelementptr i8, ptr %i.dm, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.dp, i32 noundef 4, ptr noundef @.str.17, i32 noundef %i.dr, ptr noundef %i.dt, i32 noundef %i.do) #7
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count94.i
  br i1 %exitcond.not.i, label %drm_atomic_helper_crtc_normalize_zpos.exit.thread49, label %__drm_to_dev.exit69.i, !llvm.loop !25

drm_atomic_helper_crtc_normalize_zpos.exit.thread49: ; preds = %__drm_to_dev.exit69.i, %__drm_to_dev.exit69.us.i, %._crit_edge.thread.i, %._crit_edge.i
  %i.du = getelementptr i8, ptr %i.au, i64 10     ; 2 uses
  %i.dv = load i8, ptr %i.du, align 2
  %i.dw = or i8 %i.dv, 16
  store i8 %i.dw, ptr %i.du, align 2
  tail call void @kfree(ptr noundef nonnull %i.br) #7
  %.pre75 = load ptr, ptr %i.a, align 8
  br label %bb.q

drm_atomic_helper_crtc_normalize_zpos.exit:       ; preds = %bb.o, %bb.m
  %.us-phi.i = phi ptr [ %i.by, %bb.m ], [ %i.cn, %bb.o ]
  %i.dx = ptrtoint ptr %.us-phi.i to i64
  %i.dy = trunc nsw i64 %i.dx to i32
  tail call void @kfree(ptr noundef nonnull %i.br) #7
  br label %drm_atomic_helper_crtc_normalize_zpos.exit.thread

bb.q:                                             ; preds = %drm_atomic_helper_crtc_normalize_zpos.exit.thread49, %bb.g, %bb.i
  %3 = phi ptr [ %.pre75, %drm_atomic_helper_crtc_normalize_zpos.exit.thread49 ], [ %2, %bb.g ], [ %2, %bb.i ] ; 2 uses
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %i.dz = getelementptr i8, ptr %3, i64 688
  %i.ea = load i32, ptr %i.dz, align 8
  %i.eb = sext i32 %i.ea to i64
  %i.ec = icmp slt i64 %indvars.iv.next71, %i.eb
  br i1 %i.ec, label %bb.g, label %drm_atomic_helper_crtc_normalize_zpos.exit.thread, !llvm.loop !26

drm_atomic_helper_crtc_normalize_zpos.exit.thread: ; preds = %bb.q, %__drm_to_dev.exit.i, %.preheader, %drm_atomic_helper_crtc_normalize_zpos.exit
  %.036 = phi i32 [ %i.dy, %drm_atomic_helper_crtc_normalize_zpos.exit ], [ 0, %.preheader ], [ 0, %bb.q ], [ -12, %__drm_to_dev.exit.i ]
  ret i32 %.036
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @drm_plane_create_blend_mode_property(ptr noundef %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp ugt i32 %1, 7
  %i.c = zext i32 %1 to i64                       ; 2 uses
  %i.d = and i64 %i.c, 1
  %i.e = icmp eq i64 %i.d, 0
  %i.f = or i1 %i.b, %i.e
  br i1 %i.f, label %bb.b, label %.critedge, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "530: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 530b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 530) #8, !srcloc !28
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, ptr @.str.8, i32 608, i32 2305, i64 16) #8, !srcloc !29
  tail call void asm sideeffect "531: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 531b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 531) #8, !srcloc !30
  br label %bb.g

.critedge:                                        ; preds = %bb.a
  %i.g = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.h = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 %1, i64 %i.g) #9, !srcloc !31 ; 2 uses
  %i.i = extractvalue { i32, i64 } %i.h, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.i)
  %i.j = extractvalue { i32, i64 } %i.h, 0
  %i.k = tail call ptr @drm_property_create(ptr noundef %i.a, i32 noundef 8, ptr noundef @.str.14, i32 noundef %i.j) #7 ; 7 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.g, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.critedge
  %.not66 = icmp samesign ult i32 %1, 4
  br i1 %.not66, label %.preheader.1, label %bb.c

bb.c:                                             ; preds = %.preheader.preheader
  %i.l = tail call i32 @drm_property_add_enum(ptr noundef nonnull %i.k, i64 noundef 2, ptr noundef @.str.11) #7 ; 2 uses
  %.not67 = icmp eq i32 %i.l, 0
  br i1 %.not67, label %.preheader.1, label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader.1, %bb.c
  %.lcssa = phi i32 [ %i.l, %bb.c ], [ %i.m, %.preheader.1 ], [ %i.o, %bb.e ]
  tail call void @drm_property_destroy(ptr noundef %i.a, ptr noundef nonnull %i.k) #7
  br label %bb.g

.preheader.1:                                     ; preds = %bb.c, %.preheader.preheader
  %i.m = tail call i32 @drm_property_add_enum(ptr noundef nonnull %i.k, i64 noundef 0, ptr noundef @.str.12) #7 ; 2 uses
  %.not67.1 = icmp eq i32 %i.m, 0
  br i1 %.not67.1, label %.preheader.2, label %bb.d

.preheader.2:                                     ; preds = %.preheader.1
  %i.n = and i64 %i.c, 2
  %.not66.2 = icmp eq i64 %i.n, 0
  br i1 %.not66.2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.2
  %i.o = tail call i32 @drm_property_add_enum(ptr noundef nonnull %i.k, i64 noundef 1, ptr noundef @.str.13) #7 ; 2 uses
  %.not67.2 = icmp eq i32 %i.o, 0
  br i1 %.not67.2, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e, %.preheader.2
  %i.p = getelementptr i8, ptr %0, i64 80
  tail call void @drm_object_attach_property(ptr noundef %i.p, ptr noundef nonnull %i.k, i64 noundef 0) #7
  %i.q = getelementptr i8, ptr %0, i64 1264
  store ptr %i.k, ptr %i.q, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.b, %.critedge, %bb.f
  %.2 = phi i32 [ -22, %bb.b ], [ %.lcssa, %bb.d ], [ 0, %bb.f ], [ -12, %.critedge ]
  ret i32 %.2
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_property_create(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_property_add_enum(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_property_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_crtc_attach_background_color_property(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 88
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 1288
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @drm_object_attach_property(ptr noundef %i.a, ptr noundef %i.d, i64 noundef -281474976710656) #7
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define internal i32 @drm_atomic_commit_zpos_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %i.c = getelementptr i8, ptr %i.a, i64 80
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.b, i64 80
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq i32 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i32 %i.d, %i.f
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 80
  %i.j = load i32, ptr %i.i, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 80
  %i.m = load i32, ptr %i.l, align 8
  %i.n = sub i32 %i.j, %i.m
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.n, %bb.c ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern nofree noredzone nosync nounwind null_pointer_is_valid sspstrong memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #3 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #6 = { nocallback nounwind }
attributes #7 = { noredzone nounwind "no-builtin-wcslen" }
attributes #8 = { nounwind }
attributes #9 = { nounwind memory(none) }
attributes #10 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }

!llvm.named.register.rsp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{!"rsp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5 = !{i32 1, !"Code Model", i32 2}
!6 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!7 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!8 = !{i32 1, !"override-stack-alignment", i32 8}
!9 = !{i32 4, !"SkipRaxSetup", i32 1}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{i64 2157094216, i64 2157094091}
!13 = !{i64 2157094739, i64 2157095826, i64 2157095859, i64 2157095894, i64 2157095910, i64 2157096837, i64 2157096895, i64 2157096944, i64 2157096754, i64 2157095969, i64 2157096001, i64 2157096084}
!14 = !{i64 2157097251, i64 2157097127}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{i64 2157098769, i64 2157098644}
!17 = !{i64 2157099292, i64 2157100377, i64 2157100410, i64 2157100445, i64 2157100461, i64 2157101388, i64 2157101446, i64 2157101495, i64 2157101305, i64 2157100520, i64 2157100552, i64 2157100635}
!18 = !{i64 2157101802, i64 2157101678}
!19 = !{i64 2157103123, i64 2157102998}
!20 = !{i64 2157103646, i64 2157104715, i64 2157104748, i64 2157104783, i64 2157104799, i64 2157105726, i64 2157105784, i64 2157105833, i64 2157105643, i64 2157104858, i64 2157104890, i64 2157104973}
!21 = !{i64 2157106140, i64 2157106016}
!22 = !{i64 1739241}
!23 = distinct !{!23, !27}
!24 = distinct !{!24, !27}
!25 = distinct !{!25, !27}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{i64 2157135164, i64 2157135039}
!29 = !{i64 2157135687, i64 2157136820, i64 2157136853, i64 2157136888, i64 2157136904, i64 2157137831, i64 2157137889, i64 2157137938, i64 2157137748, i64 2157136963, i64 2157136995, i64 2157137078}
!30 = !{i64 2157138245, i64 2157138121}
!31 = !{i64 2149248381, i64 2149248410, i64 2149248416, i64 2149248432, i64 2149248448, i64 2149248475, i64 2149248575, i64 2149248654, i64 2149248768, i64 2149248816, i64 2149248864, i64 2149248928, i64 2149248985, i64 2149249037, i64 2149249163, i64 2149249400, i64 2149249249, i64 2149249280, i64 2149249286, i64 2149249302, i64 2149249318}
end_hunk_0
