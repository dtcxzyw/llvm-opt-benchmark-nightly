Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/skl_universal_plane?download=true
inline.NumInlined: 314
inline.NumDeleted: 87
begin_hunk_0_@skl_universal_plane_create:bb.a
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %bb.aj, %bb.ai
  %.0141 = phi ptr [ %i.a, %bb.ai ], [ %i.en, %bb.aj ], [ %i.a, %bb.a ]
  ret ptr %.0141
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_plane_alloc() local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_fbc_add_plane(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define internal range(i32 0, 17) i32 @adl_plane_min_width(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2) #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 6
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr i8, ptr %i.c, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1
  %i.g = udiv i8 16, %i.f
  %i.h = zext nneg i8 %i.g to i32
  ret i32 %i.h
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 4096, 6145) i32 @xe3_plane_max_width(ptr nofree noundef readonly captures(none) %0, i32 %1, i32 %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 120
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call zeroext i1 @intel_format_info_is_yuv_semiplanar(ptr noundef %i.b, i64 noundef %i.d) #10
  %. = select i1 %i.e, i32 4096, i32 6144
  ret i32 %.
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal noundef i32 @icl_plane_max_height(ptr nofree readnone captures(none) %0, i32 %1, i32 %2) #0 align 16 prefalign(16) {
bb.a:
  ret i32 4320
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, -2147483648) i32 @icl_plane_min_cdclk(ptr noundef %0, ptr noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @intel_plane_pixel_rate(ptr noundef %0, ptr noundef %1) #10
  %i.b = add i32 %i.a, 1
  %i.c = lshr i32 %i.b, 1
  ret i32 %i.c
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define internal range(i32 2, 19) i32 @icl_plane_min_width(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2) #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 6
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr i8, ptr %i.c, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1
  %i.g = udiv i8 16, %i.f
  %narrow = add nuw nsw i8 %i.g, 2
  %i.h = zext nneg i8 %narrow to i32
  ret i32 %i.h
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 4096, 5121) i32 @icl_hdr_plane_max_width(ptr nofree noundef readonly captures(none) %0, i32 %1, i32 %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 120
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call zeroext i1 @intel_format_info_is_yuv_semiplanar(ptr noundef %i.b, i64 noundef %i.d) #10
  %. = select i1 %i.e, i32 4096, i32 5120
  ret i32 %.
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal noundef i32 @icl_sdr_plane_max_width(ptr nofree readnone captures(none) %0, i32 %1, i32 %2) #0 align 16 prefalign(16) {
bb.a:
  ret i32 5120
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 2048, 5121) i32 @glk_plane_max_width(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 6
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr i8, ptr %i.c, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 120        ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  switch i64 %i.h, label %bb.d [
    i64 0, label %bb.b
    i64 72057594037927937, label %bb.b
    i64 72057594037927940, label %bb.c
    i64 72057594037927941, label %bb.c
    i64 72057594037927938, label %bb.c
    i64 72057594037927939, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.i = icmp eq i8 %i.f, 8
  %. = select i1 %i.i, i32 4096, i32 5120
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.j = icmp eq i8 %i.f, 8
  %.13 = select i1 %i.j, i32 2048, i32 5120
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.k = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.6, ptr nonnull @.str.2, i32 389, i32 2321, i64 16) #12, !srcloc !31
  %i.l = load i64, ptr %i.g, align 8
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.k, ptr noundef nonnull @.str.17, i64 noundef %i.l) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi i32 [ 2048, %bb.d ], [ %., %bb.b ], [ %.13, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal noundef i32 @skl_plane_max_height(ptr nofree readnone captures(none) %0, i32 %1, i32 %2) #0 align 16 prefalign(16) {
bb.a:
  ret i32 4096
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, -2147483648) i32 @glk_plane_min_cdclk(ptr noundef %0, ptr noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @intel_plane_pixel_rate(ptr noundef %0, ptr noundef %1) #10
  %i.b = getelementptr i8, ptr %1, i64 192
  %.val = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %.val, i64 72
  %.val.val = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %.val.val, i64 6
  %.val.val.val = load i8, ptr %i.d, align 2
  %i.e = icmp eq i8 %.val.val.val, 8              ; 3 uses
  %..i = select i1 %i.e, i32 10, i32 1
  %i.f = mul i32 %..i, %i.a
  %i.g = select i1 %i.e, i32 15, i32 1
  %i.h = add i32 %i.g, %i.f
  %i.i = select i1 %i.e, i32 4, i32 1
  %i.j = lshr i32 %i.h, %i.i
  ret i32 %i.j
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 2048, 5121) i32 @skl_plane_max_width(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 6
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr i8, ptr %i.c, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 120        ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  switch i64 %i.h, label %bb.d [
    i64 0, label %bb.b
    i64 72057594037927937, label %bb.b
    i64 72057594037927940, label %bb.c
    i64 72057594037927941, label %bb.c
    i64 72057594037927938, label %bb.c
    i64 72057594037927939, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.i = icmp eq i8 %i.f, 8
  %. = select i1 %i.i, i32 4096, i32 5120
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.j = icmp eq i8 %i.f, 8
  %.13 = select i1 %i.j, i32 2048, i32 4096
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.k = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.6, ptr nonnull @.str.2, i32 361, i32 2321, i64 16) #12, !srcloc !33
  %i.l = load i64, ptr %i.g, align 8
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.k, ptr noundef nonnull @.str.17, i64 noundef %i.l) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !34
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi i32 [ 2048, %bb.d ], [ %., %bb.b ], [ %.13, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @skl_plane_min_cdclk(ptr noundef %0, ptr noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @intel_plane_pixel_rate(ptr noundef %0, ptr noundef %1) #10 ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 192
  %.val = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %.val, i64 72
  %.val.val = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %.val.val, i64 6
  %.val.val.val = load i8, ptr %i.d, align 2
  %i.e = icmp eq i8 %.val.val.val, 8              ; 3 uses
  %..i = select i1 %i.e, i32 9, i32 1
  %i.f = mul i32 %..i, %i.a
  %i.g = select i1 %i.e, i32 7, i32 0
  %i.h = add i32 %i.g, %i.f
  %2 = lshr i32 %i.h, 3
  %3 = select i1 %i.e, i32 %2, i32 %i.a
  ret i32 %3
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @skl_disable_tiling(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1232
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__drm_to_display(ptr noundef nonnull %i.c) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ] ; 6 uses
  %i.f = getelementptr i8, ptr %i.b, i64 192
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %0, i64 1360       ; 4 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = shl i32 %i.i, 12
  %i.k = add i32 %i.j, 459136
  %i.l = getelementptr i8, ptr %0, i64 1356       ; 4 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = shl i32 %i.m, 8
  %i.o = add i32 %i.k, %i.n                       ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.o) #10
  %.val.i = load ptr, ptr %i.e, align 8
  %i.p = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #10 ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 144
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call i32 %i.r(ptr noundef %i.p, i32 %i.o, i1 noundef zeroext true) #10, !inline_history !35 ; 2 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.o) #10
  %i.t = tail call zeroext i1 @intel_fb_uses_dpt(ptr noundef %i.g) #10
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = and i32 %i.s, -32769
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.b, i64 344
  %i.w = load i32, ptr %i.v, align 8
  %i.x = lshr i32 %i.w, 6
  %i.y = and i32 %i.s, -7169
  %i.z = load i32, ptr %i.h, align 8
  %i.aa = shl i32 %i.z, 12
  %i.ab = add i32 %i.aa, 459144
  %i.ac = load i32, ptr %i.l, align 4
  %i.ad = shl i32 %i.ac, 8
  %i.ae = add i32 %i.ab, %i.ad                    ; 4 uses
  %i.af = and i32 %i.x, 4095                      ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i [label %arch_test_bit.exit.i.i.i], !srcloc !36

arch_test_bit.exit.i.i.i:                         ; preds = %bb.e
  %i.ah = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #12, !srcloc !37
  %i.ai = zext i32 %i.ah to i64
  %i.aj = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ai) #12, !srcloc !38 ; 2 uses
  %i.ak = icmp ult i8 %i.aj, 2
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = trunc nuw i8 %i.aj to i1
  br i1 %i.al, label %bb.f, label %trace_i915_reg_rw.exit.i

bb.f:                                             ; preds = %arch_test_bit.exit.i.i.i
  %i.am = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.am, ptr elementtype(i64) %i.am) #12, !srcloc !39
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !40
  %i.an = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.ap, i1 noundef zeroext true, i32 %i.ae, i64 noundef range(i64 0, 4294967296) %i.ag, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !41
  %i.ar = getelementptr i8, ptr %i.am, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ar, ptr elementtype(i64) %i.ar) #12, !srcloc !42
  br label %trace_i915_reg_rw.exit.i

trace_i915_reg_rw.exit.i:                         ; preds = %bb.h, %arch_test_bit.exit.i.i.i, %bb.e
  %.val.i36 = load ptr, ptr %i.e, align 8
  %i.as = tail call ptr @to_intel_uncore(ptr noundef %.val.i36) #10 ; 2 uses
  %i.at = icmp ult i32 %i.ae, 262144
  br i1 %i.at, label %bb.i, label %intel_de_write_fw.exit

bb.i:                                             ; preds = %trace_i915_reg_rw.exit.i
  %i.au = getelementptr i8, ptr %i.as, i64 36
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = add i32 %i.av, %i.ae
  br label %intel_de_write_fw.exit

intel_de_write_fw.exit:                           ; preds = %trace_i915_reg_rw.exit.i, %bb.i
  %.0.i.i = phi i32 [ %i.aw, %bb.i ], [ %i.ae, %trace_i915_reg_rw.exit.i ]
  %i.ax = load ptr, ptr %i.as, align 8
  %i.ay = zext i32 %.0.i.i to i64
  %i.az = getelementptr i8, ptr %i.ax, i64 %i.ay
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.af, ptr elementtype(i32) %i.az) #12, !srcloc !43
  br label %bb.j

bb.j:                                             ; preds = %intel_de_write_fw.exit, %bb.d
  %.0 = phi i32 [ %i.u, %bb.d ], [ %i.y, %intel_de_write_fw.exit ] ; 2 uses
  %i.ba = load i32, ptr %i.h, align 8
  %i.bb = shl i32 %i.ba, 12
  %i.bc = add i32 %i.bb, 459136
  %i.bd = load i32, ptr %i.l, align 4
  %i.be = shl i32 %i.bd, 8
  %i.bf = add i32 %i.bc, %i.be                    ; 4 uses
  %i.bg = zext i32 %.0 to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i38 [label %arch_test_bit.exit.i.i.i37], !srcloc !36

arch_test_bit.exit.i.i.i37:                       ; preds = %bb.j
  %i.bh = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #12, !srcloc !37
  %i.bi = zext i32 %i.bh to i64
  %i.bj = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.bi) #12, !srcloc !38 ; 2 uses
  %i.bk = icmp ult i8 %i.bj, 2
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = trunc nuw i8 %i.bj to i1
  br i1 %i.bl, label %bb.k, label %trace_i915_reg_rw.exit.i38

bb.k:                                             ; preds = %arch_test_bit.exit.i.i.i37
  %i.bm = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bm, ptr elementtype(i64) %i.bm) #12, !srcloc !39
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !40
  %i.bn = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i41, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.bp, i1 noundef zeroext true, i32 %i.bf, i64 noundef range(i64 0, 4294967296) %i.bg, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !41
  %i.br = getelementptr i8, ptr %i.bm, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.br, ptr elementtype(i64) %i.br) #12, !srcloc !42
  br label %trace_i915_reg_rw.exit.i38

trace_i915_reg_rw.exit.i38:                       ; preds = %bb.m, %arch_test_bit.exit.i.i.i37, %bb.j
  %.val.i39 = load ptr, ptr %i.e, align 8
  %i.bs = tail call ptr @to_intel_uncore(ptr noundef %.val.i39) #10 ; 2 uses
  %i.bt = icmp ult i32 %i.bf, 262144
  br i1 %i.bt, label %bb.n, label %intel_de_write_fw.exit44

bb.n:                                             ; preds = %trace_i915_reg_rw.exit.i38
  %i.bu = getelementptr i8, ptr %i.bs, i64 36
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = add i32 %i.bv, %i.bf
  br label %intel_de_write_fw.exit44

intel_de_write_fw.exit44:                         ; preds = %trace_i915_reg_rw.exit.i38, %bb.n
  %.0.i.i40 = phi i32 [ %i.bw, %bb.n ], [ %i.bf, %trace_i915_reg_rw.exit.i38 ]
  %i.bx = load ptr, ptr %i.bs, align 8
  %i.by = zext i32 %.0.i.i40 to i64
  %i.bz = getelementptr i8, ptr %i.bx, i64 %i.by
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.0, ptr elementtype(i32) %i.bz) #12, !srcloc !43
  %i.ca = load i32, ptr %i.h, align 8
  %i.cb = shl i32 %i.ca, 12
  %i.cc = add i32 %i.cb, 459164
  %i.cd = load i32, ptr %i.l, align 4
  %i.ce = shl i32 %i.cd, 8
  %i.cf = add i32 %i.cc, %i.ce                    ; 4 uses
  %i.cg = getelementptr i8, ptr %i.b, i64 504
  %i.ch = load i32, ptr %i.cg, align 8            ; 2 uses
  %i.ci = zext i32 %i.ch to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i46 [label %arch_test_bit.exit.i.i.i45], !srcloc !36

arch_test_bit.exit.i.i.i45:                       ; preds = %intel_de_write_fw.exit44
  %i.cj = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #12, !srcloc !37
  %i.ck = zext i32 %i.cj to i64
  %i.cl = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ck) #12, !srcloc !38 ; 2 uses
  %i.cm = icmp ult i8 %i.cl, 2
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = trunc nuw i8 %i.cl to i1
  br i1 %i.cn, label %bb.o, label %trace_i915_reg_rw.exit.i46

bb.o:                                             ; preds = %arch_test_bit.exit.i.i.i45
  %i.co = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.co, ptr elementtype(i64) %i.co) #12, !srcloc !39
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !40
  %i.cp = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i49, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.cr, i1 noundef zeroext true, i32 %i.cf, i64 noundef range(i64 0, 4294967296) %i.ci, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.q
end_hunk_0
