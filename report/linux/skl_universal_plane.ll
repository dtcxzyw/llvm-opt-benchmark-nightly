Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/skl_universal_plane?download=true
inline.NumInlined: 314
inline.NumDeleted: 87
begin_hunk_0_@tgl_plane_min_alignment:bb.a
    i64 72057594037927948, label %bb.j
    i64 72057594037927953, label %bb.j
    i64 72057594037927952, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  %i.s = shl nuw nsw i32 %i.e, 12
  br label %bb.l

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.t = shl nuw nsw i32 %i.e, 12
  %i.u = tail call i32 @llvm.umax.i32(i32 %i.t, i32 16384)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.v = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.6, ptr nonnull @.str.2, i32 625, i32 2321, i64 16) #12, !srcloc !48
  %i.w = load i64, ptr %i.q, align 8
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.v, ptr noundef nonnull @.str.17, i64 noundef %i.w) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !49
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.d
  %.0 = phi i32 [ %i.g, %bb.d ], [ %i.p, %bb.g ], [ 0, %bb.k ], [ %i.s, %bb.i ], [ %i.u, %bb.j ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 1048577) i32 @skl_plane_min_alignment(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #2 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %1, i64 120        ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  switch i64 %i.b, label %bb.d [
    i64 0, label %bb.e
    i64 72057594037927937, label %bb.e
    i64 72057594037927940, label %bb.c
    i64 72057594037927941, label %bb.c
    i64 72057594037927938, label %bb.c
    i64 72057594037927939, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.6, ptr nonnull @.str.2, i32 655, i32 2321, i64 16) #12, !srcloc !50
  %i.d = load i64, ptr %i.a, align 8
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.c, ptr noundef nonnull @.str.17, i64 noundef %i.d) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !51
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ 1048576, %bb.c ], [ 0, %bb.d ], [ 4096, %bb.a ], [ 262144, %bb.b ], [ 262144, %bb.b ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_scanout_needs_vtd_wa(ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @icl_plane_update_noarm(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 14 uses
  %i.d = getelementptr i8, ptr %1, i64 1356       ; 6 uses
  %i.e = load i32, ptr %i.d, align 4              ; 4 uses
  %i.f = getelementptr i8, ptr %1, i64 1360       ; 4 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %3, i64 512
  %i.i = load ptr, ptr %i.h, align 8
  %.not.i181 = icmp eq ptr %i.i, null
  br i1 %.not.i181, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %3, i64 491
  %i.k = load i8, ptr %i.j, align 1, !range !21, !noundef !22
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %icl_plane_color_plane.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %icl_plane_color_plane.exit

icl_plane_color_plane.exit:                       ; preds = %bb.d, %bb.e
  %.not80.i = phi i1 [ true, %bb.e ], [ false, %bb.d ]
  %.0.i = phi i32 [ 0, %bb.e ], [ 1, %bb.d ]      ; 6 uses
  %i.m = getelementptr i8, ptr %3, i64 192        ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 5 uses
  %i.o = getelementptr i8, ptr %i.n, i64 72
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.p, i64 5
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32
  %.not.i182 = icmp samesign ult i32 %.0.i, %i.s
  %i.t = zext nneg i32 %.0.i to i64               ; 2 uses
  br i1 %.not.i182, label %bb.f, label %skl_plane_stride.exit

bb.f:                                             ; preds = %icl_plane_color_plane.exit
  %i.u = getelementptr [20 x i8], ptr %3, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 344
  %i.w = load i32, ptr %i.v, align 4
  %i.x = getelementptr i8, ptr %3, i64 204
  %i.y = load i32, ptr %i.x, align 4
  %i.z = tail call zeroext i1 @is_surface_linear(ptr noundef %i.n, i32 noundef range(i32 -2147483648, 255) %.0.i) #10
  br i1 %i.z, label %skl_plane_stride_mult.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = and i32 %i.y, 10
  %.not.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call i32 @intel_tile_height(ptr noundef %i.n, i32 noundef range(i32 -2147483648, 255) %.0.i) #10
  br label %skl_plane_stride_mult.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ac = tail call i32 @intel_tile_width_bytes(ptr noundef %i.n, i32 noundef range(i32 -2147483648, 255) %.0.i) #10
  br label %skl_plane_stride_mult.exit.i

skl_plane_stride_mult.exit.i:                     ; preds = %bb.i, %bb.h, %bb.f
  %.0.i.i = phi i32 [ %i.ac, %bb.i ], [ %i.ab, %bb.h ], [ 64, %bb.f ]
  %i.ad = udiv i32 %i.w, %.0.i.i
  %i.ae = and i32 %i.ad, 4095
  %.pre = load ptr, ptr %i.m, align 8
  br label %skl_plane_stride.exit

skl_plane_stride.exit:                            ; preds = %icl_plane_color_plane.exit, %skl_plane_stride_mult.exit.i
  %i.af = phi ptr [ %.pre, %skl_plane_stride_mult.exit.i ], [ %i.n, %icl_plane_color_plane.exit ] ; 2 uses
  %.0.i183 = phi i32 [ %i.ae, %skl_plane_stride_mult.exit.i ], [ 0, %icl_plane_color_plane.exit ] ; 3 uses
  %i.ag = getelementptr i8, ptr %3, i64 124       ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = getelementptr i8, ptr %3, i64 128       ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %3, i64 328
  %i.al = getelementptr [20 x i8], ptr %i.ak, i64 %i.t ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 4      ; 2 uses
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %i.ao = getelementptr i8, ptr %i.al, i64 8      ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.aq = getelementptr i8, ptr %3, i64 108       ; 2 uses
  %.val = load i32, ptr %i.aq, align 4
  %i.ar = getelementptr i8, ptr %3, i64 116       ; 2 uses
  %.val173 = load i32, ptr %i.ar, align 4
  %i.as = sub i32 %.val173, %.val
  %i.at = lshr i32 %i.as, 16                      ; 2 uses
  %i.au = getelementptr i8, ptr %3, i64 112
  %.val174 = load i32, ptr %i.au, align 8
  %i.av = getelementptr i8, ptr %3, i64 120
  %.val175 = load i32, ptr %i.av, align 8
  %i.aw = sub i32 %.val175, %.val174
  %i.ax = and i32 %i.aw, -65536                   ; 2 uses
  %i.ay = getelementptr i8, ptr %3, i64 496
  %i.az = load i32, ptr %i.ay, align 8            ; 2 uses
  %i.ba = load ptr, ptr %2, align 8
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not.i184 = icmp eq ptr %i.bb, null
  br i1 %.not.i184, label %bb.k, label %bb.j

bb.j:                                             ; preds = %skl_plane_stride.exit
  %i.bc = tail call ptr @__drm_to_display(ptr noundef nonnull %i.bb) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %skl_plane_stride.exit
  %i.bd = phi ptr [ %i.bc, %bb.j ], [ null, %skl_plane_stride.exit ]
  %i.be = getelementptr i8, ptr %i.bd, i64 1168
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = icmp ugt i16 %i.bf, 10
  br i1 %i.bg, label %glk_plane_color_ctl_crtc.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr i8, ptr %2, i64 4400
  %i.bi = load i8, ptr %i.bh, align 8, !range !21, !noundef !22
  %i.bj = zext nneg i8 %i.bi to i32
  %spec.select.i = shl nuw nsw i32 %i.bj, 30
  %i.bk = getelementptr i8, ptr %2, i64 4401
  %i.bl = load i8, ptr %i.bk, align 1, !range !21, !noundef !22
  %i.bm = zext nneg i8 %i.bl to i32
  %i.bn = shl nuw nsw i32 %i.bm, 23
  %i.bo = or disjoint i32 %spec.select.i, %i.bn
  %i.bp = or i32 %i.bo, %i.az
  br label %glk_plane_color_ctl_crtc.exit

glk_plane_color_ctl_crtc.exit:                    ; preds = %bb.k, %bb.l
  %.09.i = phi i32 [ %i.bp, %bb.l ], [ %i.az, %bb.k ] ; 3 uses
  tail call void @intel_color_plane_program_pipeline(ptr noundef %0, ptr noundef %3) #10
  %i.bq = getelementptr i8, ptr %3, i64 508
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = icmp sgt i32 %i.br, -1                  ; 2 uses
  %spec.select = select i1 %i.bs, i32 0, i32 %i.aj ; 2 uses
  %spec.select149 = select i1 %i.bs, i32 0, i32 %i.ah ; 2 uses
  %i.bt = shl i32 %i.g, 12                        ; 4 uses
  %i.bu = shl i32 %i.e, 8                         ; 4 uses
  %i.bv = add i32 %i.bt, %i.bu                    ; 20 uses
  %i.bw = add i32 %i.bv, 459144                   ; 5 uses
  %.not.i171 = icmp eq ptr %0, null               ; 12 uses
  br i1 %.not.i171, label %bb.m, label %bb.ab

bb.m:                                             ; preds = %glk_plane_color_ctl_crtc.exit
  %i.bx = zext nneg i32 %.0.i183 to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i [label %arch_test_bit.exit.i.i.i], !srcloc !13

arch_test_bit.exit.i.i.i:                         ; preds = %bb.m
  %i.by = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.bz = zext i32 %i.by to i64
  %i.ca = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.bz) #12, !srcloc !15 ; 2 uses
  %i.cb = icmp ult i8 %i.ca, 2
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = trunc nuw i8 %i.ca to i1
  br i1 %i.cc, label %bb.n, label %trace_i915_reg_rw.exit.i

bb.n:                                             ; preds = %arch_test_bit.exit.i.i.i
  %i.cd = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cd, ptr elementtype(i64) %i.cd) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.ce = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.cg, i1 noundef zeroext true, i32 %i.bw, i64 noundef range(i64 0, 4294967296) %i.bx, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.ci = getelementptr i8, ptr %i.cd, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ci, ptr elementtype(i64) %i.ci) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i

trace_i915_reg_rw.exit.i:                         ; preds = %bb.p, %arch_test_bit.exit.i.i.i, %bb.m
  %.val.i = load ptr, ptr %i.c, align 8
  %i.cj = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #10 ; 2 uses
  %i.ck = icmp ult i32 %i.bw, 262144
  br i1 %i.ck, label %bb.q, label %bb.r

bb.q:                                             ; preds = %trace_i915_reg_rw.exit.i
  %i.cl = getelementptr i8, ptr %i.cj, i64 36
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = add i32 %i.cm, %i.bw
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %trace_i915_reg_rw.exit.i
  %.0.i.i185 = phi i32 [ %i.cn, %bb.q ], [ %i.bw, %trace_i915_reg_rw.exit.i ]
  %i.co = load ptr, ptr %i.cj, align 8
  %i.cp = zext i32 %.0.i.i185 to i64
  %i.cq = getelementptr i8, ptr %i.co, i64 %i.cp
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.0.i183, ptr elementtype(i32) %i.cq) #12, !srcloc !20
  %i.cr = add i32 %i.bv, 459148                   ; 4 uses
  %i.cs = shl i32 %spec.select, 16
  %i.ct = and i32 %spec.select149, 65535
  %i.cu = or disjoint i32 %i.cs, %i.ct            ; 2 uses
  %i.cv = zext i32 %i.cu to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i187 [label %arch_test_bit.exit.i.i.i186], !srcloc !13

arch_test_bit.exit.i.i.i186:                      ; preds = %bb.r
  %i.cw = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.cx = zext i32 %i.cw to i64
  %i.cy = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.cx) #12, !srcloc !15 ; 2 uses
  %i.cz = icmp ult i8 %i.cy, 2
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = trunc nuw i8 %i.cy to i1
  br i1 %i.da, label %bb.s, label %trace_i915_reg_rw.exit.i187

bb.s:                                             ; preds = %arch_test_bit.exit.i.i.i186
  %i.db = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.db, ptr elementtype(i64) %i.db) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.dc = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i190 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i190, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dd = getelementptr i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.de, i1 noundef zeroext true, i32 %i.cr, i64 noundef range(i64 0, 4294967296) %i.cv, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.dg = getelementptr i8, ptr %i.db, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.dg, ptr elementtype(i64) %i.dg) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i187

trace_i915_reg_rw.exit.i187:                      ; preds = %bb.u, %arch_test_bit.exit.i.i.i186, %bb.r
  %.val.i188 = load ptr, ptr %i.c, align 8
  %i.dh = tail call ptr @to_intel_uncore(ptr noundef %.val.i188) #10 ; 2 uses
  %i.di = icmp ult i32 %i.cr, 262144
  br i1 %i.di, label %bb.v, label %bb.w

bb.v:                                             ; preds = %trace_i915_reg_rw.exit.i187
  %i.dj = getelementptr i8, ptr %i.dh, i64 36
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = add i32 %i.dk, %i.cr
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %trace_i915_reg_rw.exit.i187
  %.0.i.i189 = phi i32 [ %i.dl, %bb.v ], [ %i.cr, %trace_i915_reg_rw.exit.i187 ]
  %i.dm = load ptr, ptr %i.dh, align 8
  %i.dn = zext i32 %.0.i.i189 to i64
  %i.do = getelementptr i8, ptr %i.dm, i64 %i.dn
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.cu, ptr elementtype(i32) %i.do) #12, !srcloc !20
  %i.dp = add i32 %i.bv, 459152                   ; 4 uses
  %i.dq = add nuw nsw i32 %i.at, 65535
  %i.dr = or i32 %i.dq, -65536
  %i.ds = add i32 %i.ax, %i.dr                    ; 2 uses
  %i.dt = zext i32 %i.ds to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i195 [label %arch_test_bit.exit.i.i.i194], !srcloc !13

arch_test_bit.exit.i.i.i194:                      ; preds = %bb.w
  %i.du = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.dv = zext i32 %i.du to i64
  %i.dw = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.dv) #12, !srcloc !15 ; 2 uses
  %i.dx = icmp ult i8 %i.dw, 2
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = trunc nuw i8 %i.dw to i1
  br i1 %i.dy, label %bb.x, label %trace_i915_reg_rw.exit.i195

bb.x:                                             ; preds = %arch_test_bit.exit.i.i.i194
  %i.dz = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.dz, ptr elementtype(i64) %i.dz) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.ea = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i198 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i198, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eb = getelementptr i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.ec, i1 noundef zeroext true, i32 %i.dp, i64 noundef range(i64 0, 4294967296) %i.dt, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.ee = getelementptr i8, ptr %i.dz, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ee, ptr elementtype(i64) %i.ee) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i195

trace_i915_reg_rw.exit.i195:                      ; preds = %bb.z, %arch_test_bit.exit.i.i.i194, %bb.w
  %.val.i196 = load ptr, ptr %i.c, align 8
  %i.ef = tail call ptr @to_intel_uncore(ptr noundef %.val.i196) #10 ; 2 uses
  %i.eg = icmp ult i32 %i.dp, 262144
  br i1 %i.eg, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %trace_i915_reg_rw.exit.i195
  %i.eh = getelementptr i8, ptr %i.ef, i64 36
  %i.ei = load i32, ptr %i.eh, align 4
  %i.ej = add i32 %i.ei, %i.dp
  br label %bb.ac

bb.ab:                                            ; preds = %glk_plane_color_ctl_crtc.exit
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.bw, i32 noundef %.0.i183) #10
  %i.ek = add i32 %i.bv, 459148
  %i.el = shl i32 %spec.select, 16
  %i.em = and i32 %spec.select149, 65535
  %i.en = or disjoint i32 %i.el, %i.em
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.ek, i32 noundef %i.en) #10
  %i.eo = add i32 %i.bv, 459152
  %i.ep = add nuw nsw i32 %i.at, 65535
  %i.eq = or i32 %i.ep, -65536
  %i.er = add i32 %i.ax, %i.eq
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.eo, i32 noundef %i.er) #10
  %i.es = add i32 %i.bv, 459156
  %i.et = getelementptr i8, ptr %3, i64 524
  %.val176 = load i32, ptr %i.et, align 4
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.es, i32 noundef %.val176) #10
  br label %intel_de_write_dsb.exit166

bb.ac:                                            ; preds = %bb.aa, %trace_i915_reg_rw.exit.i195
  %.0.i.i197 = phi i32 [ %i.ej, %bb.aa ], [ %i.dp, %trace_i915_reg_rw.exit.i195 ]
  %i.eu = load ptr, ptr %i.ef, align 8
  %i.ev = zext i32 %.0.i.i197 to i64
  %i.ew = getelementptr i8, ptr %i.eu, i64 %i.ev
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.ds, ptr elementtype(i32) %i.ew) #12, !srcloc !20
  %i.ex = add i32 %i.bv, 459156                   ; 4 uses
  %i.ey = getelementptr i8, ptr %3, i64 524
  %.val176297 = load i32, ptr %i.ey, align 4      ; 2 uses
  %i.ez = zext i32 %.val176297 to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i203 [label %arch_test_bit.exit.i.i.i202], !srcloc !13

arch_test_bit.exit.i.i.i202:                      ; preds = %bb.ac
  %i.fa = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.fb = zext i32 %i.fa to i64
  %i.fc = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.fb) #12, !srcloc !15 ; 2 uses
  %i.fd = icmp ult i8 %i.fc, 2
  tail call void @llvm.assume(i1 %i.fd)
  %i.fe = trunc nuw i8 %i.fc to i1
  br i1 %i.fe, label %bb.ad, label %trace_i915_reg_rw.exit.i203

end_hunk_0
begin_hunk_1_@icl_plane_update_noarm:bb.a
  %i.jc = and i64 %i.ja, 4294967295
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i237 [label %arch_test_bit.exit.i.i.i236], !srcloc !13

arch_test_bit.exit.i.i.i236:                      ; preds = %bb.az
  %i.jd = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.je = zext i32 %i.jd to i64
  %i.jf = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.je) #12, !srcloc !15 ; 2 uses
  %i.jg = icmp ult i8 %i.jf, 2
  tail call void @llvm.assume(i1 %i.jg)
  %i.jh = trunc nuw i8 %i.jf to i1
  br i1 %i.jh, label %bb.ba, label %trace_i915_reg_rw.exit.i237

bb.ba:                                            ; preds = %arch_test_bit.exit.i.i.i236
  %i.ji = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ji, ptr elementtype(i64) %i.ji) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.jj = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i240 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i240, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jk = getelementptr i8, ptr %i.jj, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8
  %i.jm = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.jl, i1 noundef zeroext true, i32 %i.iy, i64 noundef range(i64 0, 4294967296) %i.jc, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.jn = getelementptr i8, ptr %i.ji, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.jn, ptr elementtype(i64) %i.jn) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i237

trace_i915_reg_rw.exit.i237:                      ; preds = %bb.bc, %arch_test_bit.exit.i.i.i236, %bb.az
  %.val.i238 = load ptr, ptr %i.c, align 8
  %i.jo = tail call ptr @to_intel_uncore(ptr noundef %.val.i238) #10 ; 2 uses
  %i.jp = icmp ult i32 %i.iy, 262144
  br i1 %i.jp, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %trace_i915_reg_rw.exit.i237
  %i.jq = getelementptr i8, ptr %i.jo, i64 36
  %i.jr = load i32, ptr %i.jq, align 4
  %i.js = add i32 %i.jr, %i.iy
  br label %bb.bf

bb.be:                                            ; preds = %bb.ay
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.iy, i32 noundef %i.jb) #10
  %i.jt = add i32 %i.bv, 459192
  %i.ju = load i64, ptr %i.iz, align 8
  %i.jv = lshr i64 %i.ju, 32
  %i.jw = trunc nuw i64 %i.jv to i32
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.jt, i32 noundef %i.jw) #10
  br label %intel_de_write_dsb.exit156

bb.bf:                                            ; preds = %bb.bd, %trace_i915_reg_rw.exit.i237
  %.0.i.i239 = phi i32 [ %i.js, %bb.bd ], [ %i.iy, %trace_i915_reg_rw.exit.i237 ]
  %i.jx = load ptr, ptr %i.jo, align 8
  %i.jy = zext i32 %.0.i.i239 to i64
  %i.jz = getelementptr i8, ptr %i.jx, i64 %i.jy
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.jb, ptr elementtype(i32) %i.jz) #12, !srcloc !20
  %i.ka = add i32 %i.bv, 459192                   ; 3 uses
  %i.kb = load i64, ptr %i.iz, align 8
  %i.kc = lshr i64 %i.kb, 32                      ; 2 uses
  %i.kd = trunc nuw i64 %i.kc to i32
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i245 [label %arch_test_bit.exit.i.i.i244], !srcloc !13

arch_test_bit.exit.i.i.i244:                      ; preds = %bb.bf
  %i.ke = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.kf = zext i32 %i.ke to i64
  %i.kg = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.kf) #12, !srcloc !15 ; 2 uses
  %i.kh = icmp ult i8 %i.kg, 2
  tail call void @llvm.assume(i1 %i.kh)
  %i.ki = trunc nuw i8 %i.kg to i1
  br i1 %i.ki, label %bb.bg, label %trace_i915_reg_rw.exit.i245

bb.bg:                                            ; preds = %arch_test_bit.exit.i.i.i244
  %i.kj = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.kj, ptr elementtype(i64) %i.kj) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.kk = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i248 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i.i248, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kl = getelementptr i8, ptr %i.kk, i64 8
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.km, i1 noundef zeroext true, i32 %i.ka, i64 noundef range(i64 0, 4294967296) %i.kc, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.ko = getelementptr i8, ptr %i.kj, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ko, ptr elementtype(i64) %i.ko) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i245

trace_i915_reg_rw.exit.i245:                      ; preds = %bb.bi, %arch_test_bit.exit.i.i.i244, %bb.bf
  %.val.i246 = load ptr, ptr %i.c, align 8
  %i.kp = tail call ptr @to_intel_uncore(ptr noundef %.val.i246) #10 ; 2 uses
  %i.kq = icmp ult i32 %i.iy, 262140
  br i1 %i.kq, label %bb.bj, label %intel_de_write_fw.exit251

bb.bj:                                            ; preds = %trace_i915_reg_rw.exit.i245
  %i.kr = getelementptr i8, ptr %i.kp, i64 36
  %i.ks = load i32, ptr %i.kr, align 4
  %i.kt = add i32 %i.ks, %i.ka
  br label %intel_de_write_fw.exit251

intel_de_write_fw.exit251:                        ; preds = %trace_i915_reg_rw.exit.i245, %bb.bj
  %.0.i.i247 = phi i32 [ %i.kt, %bb.bj ], [ %i.ka, %trace_i915_reg_rw.exit.i245 ]
  %i.ku = load ptr, ptr %i.kp, align 8
  %i.kv = zext i32 %.0.i.i247 to i64
  %i.kw = getelementptr i8, ptr %i.ku, i64 %i.kv
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.kd, ptr elementtype(i32) %i.kw) #12, !srcloc !20
  br label %intel_de_write_dsb.exit156

intel_de_write_dsb.exit156:                       ; preds = %intel_de_write_fw.exit251, %bb.be, %intel_de_write_dsb.exit160
  %i.kx = getelementptr i8, ptr %i.c, i64 1168    ; 4 uses
  %i.ky = load i16, ptr %i.kx, align 8            ; 2 uses
  %i.kz = add i16 %i.ky, -9
  %or.cond = icmp ult i16 %i.kz, 4
  br i1 %or.cond, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %intel_de_write_dsb.exit156
  %i.la = getelementptr i8, ptr %i.c, i64 8
  %i.lb = load i64, ptr %i.la, align 8
  %i.lc = and i64 %i.lb, 1157425104234217472
  %or.cond150 = icmp eq i64 %i.lc, 0
  br i1 %or.cond150, label %intel_de_write_dsb.exit154, label %bb.bl

bb.bl:                                            ; preds = %intel_de_write_dsb.exit156, %bb.bk
  %i.ld = add i32 %i.bv, 459200                   ; 5 uses
  %i.le = tail call i32 @skl_plane_aux_dist(ptr noundef %3, i32 noundef %.0.i) #11 ; 3 uses
  br i1 %.not.i171, label %bb.bm, label %intel_de_write_dsb.exit154.thread

bb.bm:                                            ; preds = %bb.bl
  %i.lf = zext i32 %i.le to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i253 [label %arch_test_bit.exit.i.i.i252], !srcloc !13

arch_test_bit.exit.i.i.i252:                      ; preds = %bb.bm
  %i.lg = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.lh = zext i32 %i.lg to i64
  %i.li = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.lh) #12, !srcloc !15 ; 2 uses
  %i.lj = icmp ult i8 %i.li, 2
  tail call void @llvm.assume(i1 %i.lj)
  %i.lk = trunc nuw i8 %i.li to i1
  br i1 %i.lk, label %bb.bn, label %trace_i915_reg_rw.exit.i253

bb.bn:                                            ; preds = %arch_test_bit.exit.i.i.i252
  %i.ll = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ll, ptr elementtype(i64) %i.ll) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.lm = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i256 = icmp eq ptr %i.lm, null
  br i1 %.not.i.i.i256, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ln = getelementptr i8, ptr %i.lm, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8
  %i.lp = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.lo, i1 noundef zeroext true, i32 %i.ld, i64 noundef range(i64 0, 4294967296) %i.lf, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.lq = getelementptr i8, ptr %i.ll, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.lq, ptr elementtype(i64) %i.lq) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i253

trace_i915_reg_rw.exit.i253:                      ; preds = %bb.bp, %arch_test_bit.exit.i.i.i252, %bb.bm
  %.val.i254 = load ptr, ptr %i.c, align 8
  %i.lr = tail call ptr @to_intel_uncore(ptr noundef %.val.i254) #10 ; 2 uses
  %i.ls = icmp ult i32 %i.ld, 262144
  br i1 %i.ls, label %bb.bq, label %intel_de_write_dsb.exit154.thread302

bb.bq:                                            ; preds = %trace_i915_reg_rw.exit.i253
  %i.lt = getelementptr i8, ptr %i.lr, i64 36
  %i.lu = load i32, ptr %i.lt, align 4
  %i.lv = add i32 %i.lu, %i.ld
  br label %intel_de_write_dsb.exit154.thread302

intel_de_write_dsb.exit154:                       ; preds = %bb.bk
  %i.lw = icmp ugt i16 %i.ky, 10
  %i.lx = icmp ult i32 %i.e, 3                    ; 3 uses
  %spec.select.i260 = and i1 %i.lx, %i.lw
  br i1 %spec.select.i260, label %bb.br, label %intel_de_write_dsb.exit152

intel_de_write_dsb.exit154.thread302:             ; preds = %bb.bq, %trace_i915_reg_rw.exit.i253
  %.0.i.i255 = phi i32 [ %i.lv, %bb.bq ], [ %i.ld, %trace_i915_reg_rw.exit.i253 ]
  %i.ly = load ptr, ptr %i.lr, align 8
  %i.lz = zext i32 %.0.i.i255 to i64
  %i.ma = getelementptr i8, ptr %i.ly, i64 %i.lz
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.le, ptr elementtype(i32) %i.ma) #12, !srcloc !20
  %i.mb = load i16, ptr %i.kx, align 8
  %i.mc = icmp ugt i16 %i.mb, 10
  %i.md = icmp ult i32 %i.e, 3                    ; 2 uses
  %spec.select.i260303 = and i1 %i.md, %i.mc
  br i1 %spec.select.i260303, label %.thread, label %intel_de_write_dsb.exit152.thread304

.thread:                                          ; preds = %intel_de_write_dsb.exit154.thread302
  %4 = or disjoint i32 %i.bt, %i.bu
  %i.me = add i32 %4, 459208
  %i.mf = getelementptr i8, ptr %3, i64 500
  %i.mg = load i32, ptr %i.mf, align 4
  br label %bb.bs

intel_de_write_dsb.exit152.thread304:             ; preds = %intel_de_write_dsb.exit154.thread302
  %i.mh = add i32 %i.bv, 459212
  br label %bb.by

intel_de_write_dsb.exit154.thread:                ; preds = %bb.bl
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.ld, i32 noundef %i.le) #10
  %i.mi = load i16, ptr %i.kx, align 8
  %i.mj = icmp ugt i16 %i.mi, 10
  %i.mk = icmp ult i32 %i.e, 3                    ; 2 uses
  %spec.select.i260300 = and i1 %i.mk, %i.mj
  br i1 %spec.select.i260300, label %.thread305, label %intel_de_write_dsb.exit152.thread301

.thread305:                                       ; preds = %intel_de_write_dsb.exit154.thread
  %5 = or disjoint i32 %i.bt, %i.bu
  %i.ml = add i32 %5, 459208
  %i.mm = getelementptr i8, ptr %3, i64 500
  %i.mn = load i32, ptr %i.mm, align 4
  br label %intel_de_write_dsb.exit152.thread299

intel_de_write_dsb.exit152.thread301:             ; preds = %intel_de_write_dsb.exit154.thread
  %i.mo = add i32 %i.bv, 459212
  br label %bb.bx

bb.br:                                            ; preds = %intel_de_write_dsb.exit154
  %6 = or disjoint i32 %i.bt, %i.bu
  %i.mp = add i32 %6, 459208                      ; 2 uses
  %i.mq = getelementptr i8, ptr %3, i64 500
  %i.mr = load i32, ptr %i.mq, align 4            ; 2 uses
  br i1 %.not.i171, label %bb.bs, label %intel_de_write_dsb.exit152.thread299

intel_de_write_dsb.exit152.thread299:             ; preds = %bb.br, %.thread305
  %i.ms = phi i32 [ %i.mn, %.thread305 ], [ %i.mr, %bb.br ]
  %i.mt = phi i32 [ %i.ml, %.thread305 ], [ %i.mp, %bb.br ]
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.mt, i32 noundef %i.ms) #10
  %i.mu = add i32 %i.bv, 459212
  br label %bb.bx

bb.bs:                                            ; preds = %.thread, %bb.br
  %i.mv = phi i32 [ %i.mg, %.thread ], [ %i.mr, %bb.br ] ; 2 uses
  %i.mw = phi i32 [ %i.me, %.thread ], [ %i.mp, %bb.br ] ; 4 uses
  %i.mx = zext i32 %i.mv to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i262 [label %arch_test_bit.exit.i.i.i261], !srcloc !13

arch_test_bit.exit.i.i.i261:                      ; preds = %bb.bs
  %i.my = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.mz = zext i32 %i.my to i64
  %i.na = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.mz) #12, !srcloc !15 ; 2 uses
  %i.nb = icmp ult i8 %i.na, 2
  tail call void @llvm.assume(i1 %i.nb)
  %i.nc = trunc nuw i8 %i.na to i1
  br i1 %i.nc, label %bb.bt, label %trace_i915_reg_rw.exit.i262

bb.bt:                                            ; preds = %arch_test_bit.exit.i.i.i261
  %i.nd = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.nd, ptr elementtype(i64) %i.nd) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.ne = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i265 = icmp eq ptr %i.ne, null
  br i1 %.not.i.i.i265, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.nf = getelementptr i8, ptr %i.ne, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8
  %i.nh = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.ng, i1 noundef zeroext true, i32 %i.mw, i64 noundef range(i64 0, 4294967296) %i.mx, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.ni = getelementptr i8, ptr %i.nd, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ni, ptr elementtype(i64) %i.ni) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i262

trace_i915_reg_rw.exit.i262:                      ; preds = %bb.bv, %arch_test_bit.exit.i.i.i261, %bb.bs
  %.val.i263 = load ptr, ptr %i.c, align 8
  %i.nj = tail call ptr @to_intel_uncore(ptr noundef %.val.i263) #10 ; 2 uses
  %i.nk = icmp ult i32 %i.mw, 262144
  br i1 %i.nk, label %bb.bw, label %intel_de_write_dsb.exit152.thread

bb.bw:                                            ; preds = %trace_i915_reg_rw.exit.i262
  %i.nl = getelementptr i8, ptr %i.nj, i64 36
  %i.nm = load i32, ptr %i.nl, align 4
  %i.nn = add i32 %i.nm, %i.mw
  br label %intel_de_write_dsb.exit152.thread

intel_de_write_dsb.exit152.thread:                ; preds = %bb.bw, %trace_i915_reg_rw.exit.i262
  %.0.i.i264 = phi i32 [ %i.nn, %bb.bw ], [ %i.mw, %trace_i915_reg_rw.exit.i262 ]
  %i.no = load ptr, ptr %i.nj, align 8
  %i.np = zext i32 %.0.i.i264 to i64
  %i.nq = getelementptr i8, ptr %i.no, i64 %i.np
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.mv, ptr elementtype(i32) %i.nq) #12, !srcloc !20
  %i.nr = add i32 %i.bv, 459212
  br label %bb.by

intel_de_write_dsb.exit152:                       ; preds = %intel_de_write_dsb.exit154
  %i.ns = add i32 %i.bv, 459212                   ; 2 uses
  br i1 %.not.i171, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %intel_de_write_dsb.exit152.thread301, %intel_de_write_dsb.exit152.thread299, %intel_de_write_dsb.exit152
  %i.nt = phi i1 [ true, %intel_de_write_dsb.exit152.thread299 ], [ %i.lx, %intel_de_write_dsb.exit152 ], [ %i.mk, %intel_de_write_dsb.exit152.thread301 ]
  %i.nu = phi i32 [ %i.mu, %intel_de_write_dsb.exit152.thread299 ], [ %i.ns, %intel_de_write_dsb.exit152 ], [ %i.mo, %intel_de_write_dsb.exit152.thread301 ]
  tail call void @intel_dsb_reg_write(ptr noundef nonnull %0, i32 %i.nu, i32 noundef %.09.i) #10
  br label %intel_de_write_dsb.exit

bb.by:                                            ; preds = %intel_de_write_dsb.exit152.thread304, %intel_de_write_dsb.exit152.thread, %intel_de_write_dsb.exit152
  %i.nv = phi i1 [ true, %intel_de_write_dsb.exit152.thread ], [ %i.lx, %intel_de_write_dsb.exit152 ], [ %i.md, %intel_de_write_dsb.exit152.thread304 ]
  %i.nw = phi i32 [ %i.nr, %intel_de_write_dsb.exit152.thread ], [ %i.ns, %intel_de_write_dsb.exit152 ], [ %i.mh, %intel_de_write_dsb.exit152.thread304 ] ; 4 uses
  %i.nx = zext i32 %.09.i to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i270 [label %arch_test_bit.exit.i.i.i269], !srcloc !13

arch_test_bit.exit.i.i.i269:                      ; preds = %bb.by
  %i.ny = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.nz = zext i32 %i.ny to i64
  %i.oa = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.nz) #12, !srcloc !15 ; 2 uses
  %i.ob = icmp ult i8 %i.oa, 2
  tail call void @llvm.assume(i1 %i.ob)
  %i.oc = trunc nuw i8 %i.oa to i1
  br i1 %i.oc, label %bb.bz, label %trace_i915_reg_rw.exit.i270

bb.bz:                                            ; preds = %arch_test_bit.exit.i.i.i269
  %i.od = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.od, ptr elementtype(i64) %i.od) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.oe = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i273 = icmp eq ptr %i.oe, null
  br i1 %.not.i.i.i273, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.of = getelementptr i8, ptr %i.oe, i64 8
  %i.og = load ptr, ptr %i.of, align 8
  %i.oh = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.og, i1 noundef zeroext true, i32 %i.nw, i64 noundef range(i64 0, 4294967296) %i.nx, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  %i.oi = getelementptr i8, ptr %i.od, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.oi, ptr elementtype(i64) %i.oi) #12, !srcloc !19
  br label %trace_i915_reg_rw.exit.i270

trace_i915_reg_rw.exit.i270:                      ; preds = %bb.cb, %arch_test_bit.exit.i.i.i269, %bb.by
  %.val.i271 = load ptr, ptr %i.c, align 8
  %i.oj = tail call ptr @to_intel_uncore(ptr noundef %.val.i271) #10 ; 2 uses
  %i.ok = icmp ult i32 %i.nw, 262144
  br i1 %i.ok, label %bb.cc, label %intel_de_write_fw.exit276

bb.cc:                                            ; preds = %trace_i915_reg_rw.exit.i270
  %i.ol = getelementptr i8, ptr %i.oj, i64 36
  %i.om = load i32, ptr %i.ol, align 4
  %i.on = add i32 %i.om, %i.nw
  br label %intel_de_write_fw.exit276

intel_de_write_fw.exit276:                        ; preds = %trace_i915_reg_rw.exit.i270, %bb.cc
  %.0.i.i272 = phi i32 [ %i.on, %bb.cc ], [ %i.nw, %trace_i915_reg_rw.exit.i270 ]
  %i.oo = load ptr, ptr %i.oj, align 8
  %i.op = zext i32 %.0.i.i272 to i64
  %i.oq = getelementptr i8, ptr %i.oo, i64 %i.op
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.09.i, ptr elementtype(i32) %i.oq) #12, !srcloc !20
  br label %intel_de_write_dsb.exit

intel_de_write_dsb.exit:                          ; preds = %bb.bx, %intel_de_write_fw.exit276
  %i.or = phi i1 [ %i.nt, %bb.bx ], [ %i.nv, %intel_de_write_fw.exit276 ]
  %i.os = getelementptr i8, ptr %i.af, i64 72
  %i.ot = load ptr, ptr %i.os, align 8
  %i.ou = getelementptr i8, ptr %i.ot, i64 21
  %i.ov = load i8, ptr %i.ou, align 1, !range !21, !noundef !22
  %i.ow = trunc nuw i8 %i.ov to i1
  br i1 %i.ow, label %bb.cd, label %icl_program_input_csc.exit

bb.cd:                                            ; preds = %intel_de_write_dsb.exit
  %i.ox = load i16, ptr %i.kx, align 8
  %i.oy = icmp ugt i16 %i.ox, 10
  %spec.select.i277 = and i1 %i.or, %i.oy
  br i1 %spec.select.i277, label %bb.ce, label %icl_program_input_csc.exit

bb.ce:                                            ; preds = %bb.cd
  %i.oz = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i278 = icmp eq ptr %i.oz, null
  br i1 %.not.i278, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.pa = tail call ptr @__drm_to_display(ptr noundef nonnull %i.oz) #10
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.pb = phi ptr [ %i.pa, %bb.cf ], [ null, %bb.ce ] ; 12 uses
  %i.pc = load i32, ptr %i.f, align 8
  %i.pd = load i32, ptr %i.d, align 4
  %i.pe = getelementptr i8, ptr %3, i64 208
  %i.pf = load i32, ptr %i.pe, align 8
  %i.pg = zext i32 %i.pf to i64
  %i.ph = getelementptr [18 x i8], ptr @icl_program_input_csc.input_csc_matrix, i64 %i.pg ; 16 uses
  %i.pi = shl i32 %i.pc, 12
  %i.pj = shl i32 %i.pd, 8
  %i.pk = add i32 %i.pj, %i.pi                    ; 9 uses
  %i.pl = add i32 %i.pk, 459232                   ; 15 uses
  %i.pm = load i16, ptr %i.ph, align 2
  %i.pn = zext i16 %i.pm to i32
  %i.po = shl nuw i32 %i.pn, 16
  %i.pp = getelementptr i8, ptr %i.ph, i64 2
  %i.pq = load i16, ptr %i.pp, align 2
  %i.pr = zext i16 %i.pq to i32
  %i.ps = or disjoint i32 %i.po, %i.pr            ; 3 uses
  br i1 %.not.i171, label %bb.ch, label %bb.ek

bb.ch:                                            ; preds = %bb.cg
  %i.pt = zext i32 %i.ps to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i.i [label %arch_test_bit.exit.i.i.i.i], !srcloc !13

arch_test_bit.exit.i.i.i.i:                       ; preds = %bb.ch
  %i.pu = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #12, !srcloc !14
  %i.pv = zext i32 %i.pu to i64
  %i.pw = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.pv) #12, !srcloc !15 ; 2 uses
  %i.px = icmp ult i8 %i.pw, 2
  tail call void @llvm.assume(i1 %i.px)
  %i.py = trunc nuw i8 %i.pw to i1
  br i1 %i.py, label %bb.ci, label %trace_i915_reg_rw.exit.i.i

bb.ci:                                            ; preds = %arch_test_bit.exit.i.i.i.i
  %i.pz = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.pz, ptr elementtype(i64) %i.pz) #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.qa = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.qa, null
  br i1 %.not.i.i.i.i, label %bb.ck, label %bb.cj
end_hunk_1
