Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_dsb?download=true
inline.NumInlined: 180
inline.NumDeleted: 59
begin_hunk_0_@intel_dsb_emit_wait_dsl:bb.a
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ac(ptr noundef %i.ae, i32 noundef %i.n, i32 noundef %i.e) #9, !inline_history !1
  %i.af = load i32, ptr %i.k, align 4             ; 2 uses
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.k, align 4
  %i.ah = load i32, ptr %i.q, align 4
  %i.ai = load ptr, ptr %i.s, align 8
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not.i13.i = icmp eq ptr %i.aj, null
  br i1 %.not.i13.i, label %dsb_buffer_write.exit14.i, label %bb.d

bb.d:                                             ; preds = %dsb_buffer_write.exit.i
  %i.ak = tail call ptr @__drm_to_display(ptr noundef nonnull %i.aj) #9
  br label %dsb_buffer_write.exit14.i

dsb_buffer_write.exit14.i:                        ; preds = %bb.d, %dsb_buffer_write.exit.i
  %i.al = phi ptr [ %i.ak, %bb.d ], [ null, %dsb_buffer_write.exit.i ]
  %i.am = getelementptr i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load ptr, ptr %i.ad, align 8
  tail call void %i.ar(ptr noundef %i.as, i32 noundef %i.af, i32 noundef %i.ah) #9, !inline_history !1
  br label %intel_dsb_emit.exit

intel_dsb_emit.exit:                              ; preds = %bb.a, %dsb_buffer_write.exit14.i
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_vrr_dcb_vmin_vblank_start_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_vrr_dcb_vmax_vblank_start_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_vrr_dcb_vmin_vblank_start_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_vrr_dcb_vmax_vblank_start_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_vrr_vmin_vblank_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_vrr_vmax_vblank_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_mode_vblank_delay(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_mode_vblank_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_dsb_chain(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.e = getelementptr i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 7 uses
  %i.g = getelementptr i8, ptr %i.f, i64 1664     ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = load i32, ptr %1, align 8
  %i.j = load i32, ptr %2, align 8
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %.critedge.i, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.e, %bb.d
  %i.o = phi ptr [ %i.n, %bb.e ], [ null, %bb.d ]
  %i.p = tail call ptr @dev_driver_string(ptr noundef %i.o) #9 ; 0 uses
  %i.q = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.2, i32 819, i32 2321, i64 16) #11, !srcloc !59
  %i.r = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i78.i = icmp eq ptr %i.r, null
  br i1 %.not.i78.i, label %__drm_to_dev.exit79.i, label %bb.f

bb.f:                                             ; preds = %__drm_to_dev.exit.i
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  br label %__drm_to_dev.exit79.i

__drm_to_dev.exit79.i:                            ; preds = %bb.f, %__drm_to_dev.exit.i
  %i.u = phi ptr [ %i.t, %bb.f ], [ null, %__drm_to_dev.exit.i ]
  %i.v = tail call ptr @dev_driver_string(ptr noundef %i.u) #9
  %i.w = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i80.i = icmp eq ptr %i.w, null
  br i1 %.not.i80.i, label %__drm_to_dev.exit81.i, label %bb.g

bb.g:                                             ; preds = %__drm_to_dev.exit79.i
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  br label %__drm_to_dev.exit81.i

__drm_to_dev.exit81.i:                            ; preds = %bb.g, %__drm_to_dev.exit79.i
  %i.z = phi ptr [ %i.y, %bb.g ], [ null, %__drm_to_dev.exit79.i ] ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i82.i = icmp eq ptr %i.ab, null
  br i1 %.not.i82.i, label %bb.h, label %dev_name.exit85.i

bb.h:                                             ; preds = %__drm_to_dev.exit81.i
  %.val.i84.i = load ptr, ptr %i.z, align 8
  br label %dev_name.exit85.i

dev_name.exit85.i:                                ; preds = %bb.h, %__drm_to_dev.exit81.i
  %.0.i83.i = phi ptr [ %.val.i84.i, %bb.h ], [ %i.ab, %__drm_to_dev.exit81.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.q, ptr noundef %i.v, ptr noundef %.0.i83.i, ptr noundef @.str.15) #9
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !60
  br label %_intel_dsb_chain.exit

.critedge.i:                                      ; preds = %bb.c
  %i.ac = tail call fastcc zeroext i1 @assert_dsb_tail_is_aligned(ptr noundef readonly %2) #10, !srcloc !61
  br i1 %i.ac, label %bb.i, label %_intel_dsb_chain.exit

bb.i:                                             ; preds = %.critedge.i
  %i.ad = shl i32 %i.h, 12
  %i.ae = add i32 %i.ad, 461568                   ; 8 uses
  %i.af = load i32, ptr %2, align 8
  %i.ag = shl i32 %i.af, 8
  %i.ah = add i32 %i.ag, %i.ae
  %i.ai = or disjoint i32 %i.ah, 8
  %i.aj = select i1 %3, i32 -1879048192, i32 -2147483648
  tail call void @intel_dsb_reg_write(ptr noundef %1, i32 %i.ai, i32 noundef %i.aj) #10
  %i.ak = load i32, ptr %2, align 8
  %i.al = shl i32 %i.ak, 8
  %i.am = add i32 %i.al, %i.ae
  %i.an = or disjoint i32 %i.am, 240
  %i.ao = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %.val.i86.i = load ptr, ptr %i.ao, align 8
  %i.ap = getelementptr i8, ptr %i.f, i64 136     ; 2 uses
  %.val6.i.i = load i32, ptr %i.ap, align 8
  %i.aq = zext i32 %.val6.i.i to i64
  %i.ar = getelementptr [56 x i8], ptr %.val.i86.i, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call zeroext i1 @intel_psr_use_trans_push(ptr noundef %i.at) #9
  %i.av = select i1 %i.au, i32 8388608, i32 0     ; 4 uses
  %.val.i.i.i = load ptr, ptr %i.ao, align 8
  %.val9.i.i.i = load i32, ptr %i.ap, align 8
  %i.aw = zext i32 %.val9.i.i.i to i64
  %i.ax = getelementptr [56 x i8], ptr %.val.i.i.i, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 10
  %.val12.i.i.i = load i8, ptr %i.ba, align 2
  %i.bb = and i8 %.val12.i.i.i, 14
  %.not.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i, label %bb.j, label %dsb_chicken.exit.i

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr i8, ptr %i.ax, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr i8, ptr %i.bd, i64 4644
  %i.bf = load i8, ptr %i.be, align 4, !range !19, !noundef !20
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %pre_commit_is_vrr_active.exit.i.i, label %dsb_chicken.exit.i

pre_commit_is_vrr_active.exit.i.i:                ; preds = %bb.j
  %i.bh = tail call zeroext i1 @intel_crtc_vrr_disabling(ptr noundef %0, ptr noundef %i.f) #9
  %.fr.i.i = freeze i1 %i.bh
  %i.bi = or disjoint i32 %i.av, 49344
  %spec.select.i.i = select i1 %.fr.i.i, i32 %i.av, i32 %i.bi
  br label %dsb_chicken.exit.i

dsb_chicken.exit.i:                               ; preds = %pre_commit_is_vrr_active.exit.i.i, %bb.j, %bb.i
  %i.bj = phi i32 [ %i.av, %bb.j ], [ %spec.select.i.i, %pre_commit_is_vrr_active.exit.i.i ], [ %i.av, %bb.i ]
  tail call void @intel_dsb_reg_write(ptr noundef %1, i32 %i.an, i32 noundef %i.bj) #10
  %i.bk = load i32, ptr %2, align 8
  %i.bl = shl i32 %i.bk, 8
  %i.bm = add i32 %i.bl, %i.ae
  %i.bn = or disjoint i32 %i.bm, 40
  %i.bo = getelementptr i8, ptr %i.d, i64 1168
  %.val.i = load i16, ptr %i.bo, align 8          ; 2 uses
  %i.bp = icmp ugt i16 %.val.i, 13                ; 2 uses
  %spec.select.i87.i = select i1 %i.bp, i32 30, i32 14 ; 2 uses
  %i.bq = icmp ugt i16 %.val.i, 29
  %4 = or disjoint i32 %spec.select.i87.i, 32
  %.1.i.i = select i1 %i.bq, i32 %4, i32 %spec.select.i87.i
  %i.br = select i1 %i.bp, i32 2031617, i32 983041
  %i.bs = or disjoint i32 %.1.i.i, %i.br
  tail call void @intel_dsb_reg_write(ptr noundef %1, i32 %i.bn, i32 noundef %i.bs) #10
  br i1 %3, label %bb.k, label %bb.m

bb.k:                                             ; preds = %dsb_chicken.exit.i
  %i.bt = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i89.i = icmp eq ptr %i.bt, null
  br i1 %.not.i89.i, label %dsb_dewake_scanline_start.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = tail call ptr @__drm_to_display(ptr noundef nonnull %i.bt) #9
  br label %dsb_dewake_scanline_start.exit.i

dsb_dewake_scanline_start.exit.i:                 ; preds = %bb.l, %bb.k
  %i.bv = phi ptr [ %i.bu, %bb.l ], [ null, %bb.k ]
  %i.bw = tail call ptr @intel_pre_commit_crtc_state(ptr noundef %0, ptr noundef %i.f) #9
  %i.bx = tail call i32 @skl_watermark_max_latency(ptr noundef %i.bv, i32 noundef 0) #9
  %i.by = getelementptr i8, ptr %i.bw, i64 616    ; 2 uses
  %i.bz = tail call i32 @intel_mode_vdisplay(ptr noundef %i.by) #9
  %i.ca = tail call i32 @intel_usecs_to_scanlines(ptr noundef %i.by, i32 noundef %i.bx) #9
  %i.cb = sub i32 %i.bz, %i.ca
  %i.cc = tail call fastcc i32 @dsb_scanline_to_hw(ptr noundef %0, ptr noundef %i.f, i32 noundef %i.cb) #10, !srcloc !62
  %i.cd = load i32, ptr %2, align 8
  %i.ce = shl i32 %i.cd, 8
  %i.cf = add i32 %i.ce, %i.ae
  %i.cg = or disjoint i32 %i.cf, 56
  %i.ch = or i32 %i.cc, -2147483648
  tail call void @intel_dsb_reg_write(ptr noundef %1, i32 %i.cg, i32 noundef %i.ch) #10
  br label %bb.n

bb.m:                                             ; preds = %dsb_chicken.exit.i
  %i.ci = load i32, ptr %2, align 8
  %i.cj = shl i32 %i.ci, 8
  %i.ck = add i32 %i.cj, %i.ae
  %i.cl = or disjoint i32 %i.ck, 56
  tail call void @intel_dsb_reg_write(ptr noundef %1, i32 %i.cl, i32 noundef 0) #10
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %dsb_dewake_scanline_start.exit.i
  %i.cm = load i32, ptr %2, align 8
  %i.cn = shl i32 %i.cm, 8
  %i.co = add i32 %i.cn, %i.ae
  %i.cp = getelementptr i8, ptr %2, i64 16        ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %.not.i.i90.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i90.i, label %intel_dsb_head.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cs = tail call ptr @__drm_to_display(ptr noundef nonnull %i.cr) #9
  br label %intel_dsb_head.exit.i

intel_dsb_head.exit.i:                            ; preds = %bb.o, %bb.n
  %i.ct = phi ptr [ %i.cs, %bb.o ], [ null, %bb.n ]
  %i.cu = getelementptr i8, ptr %i.ct, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = getelementptr i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr i8, ptr %2, i64 8         ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = tail call i32 %i.cy(ptr noundef %i.da) #9, !inline_history !57
  tail call void @intel_dsb_reg_write(ptr noundef %1, i32 %i.co, i32 noundef %i.db) #10
  %i.dc = load i32, ptr %2, align 8
  %i.dd = shl i32 %i.dc, 8
  %i.de = add i32 %i.dd, %i.ae
  %i.df = or disjoint i32 %i.de, 4
  %i.dg = load ptr, ptr %i.cp, align 8
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %.not.i.i91.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i91.i, label %intel_dsb_tail.exit.i, label %bb.p

bb.p:                                             ; preds = %intel_dsb_head.exit.i
  %i.di = tail call ptr @__drm_to_display(ptr noundef nonnull %i.dh) #9
  br label %intel_dsb_tail.exit.i

intel_dsb_tail.exit.i:                            ; preds = %bb.p, %intel_dsb_head.exit.i
  %i.dj = phi ptr [ %i.di, %bb.p ], [ null, %intel_dsb_head.exit.i ]
  %i.dk = getelementptr i8, ptr %i.dj, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = load ptr, ptr %i.cz, align 8
  %i.dq = tail call i32 %i.do(ptr noundef %i.dp) #9, !inline_history !58
  %i.dr = getelementptr i8, ptr %2, i64 28
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = shl i32 %i.ds, 2
  %i.du = add i32 %i.dt, %i.dq
  tail call void @intel_dsb_reg_write(ptr noundef %1, i32 %i.df, i32 noundef %i.du) #10
  br i1 %3, label %bb.q, label %_intel_dsb_chain.exit

bb.q:                                             ; preds = %intel_dsb_tail.exit.i
  %i.dv = load i32, ptr %1, align 8
  %i.dw = shl i32 %i.dv, 8
  %i.dx = add i32 %i.dw, %i.ae
  %i.dy = or disjoint i32 %i.dx, 60
  tail call void @intel_dsb_reg_write_masked(ptr noundef %1, i32 %i.dy, i32 noundef 8388608, i32 noundef 8388608) #10
  %i.dz = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i92.i = icmp eq ptr %i.dz, null
  br i1 %.not.i92.i, label %dsb_dewake_scanline_start.exit93.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ea = tail call ptr @__drm_to_display(ptr noundef nonnull %i.dz) #9
  br label %dsb_dewake_scanline_start.exit93.i

dsb_dewake_scanline_start.exit93.i:               ; preds = %bb.r, %bb.q
  %i.eb = phi ptr [ %i.ea, %bb.r ], [ null, %bb.q ]
  %i.ec = tail call ptr @intel_pre_commit_crtc_state(ptr noundef %0, ptr noundef %i.f) #9
  %i.ed = tail call i32 @skl_watermark_max_latency(ptr noundef %i.eb, i32 noundef 0) #9
  %i.ee = getelementptr i8, ptr %i.ec, i64 616    ; 2 uses
  %i.ef = tail call i32 @intel_mode_vdisplay(ptr noundef %i.ee) #9
  %i.eg = tail call i32 @intel_usecs_to_scanlines(ptr noundef %i.ee, i32 noundef %i.ed) #9
  %i.eh = sub i32 %i.ef, %i.eg                    ; 3 uses
  %i.ei = tail call ptr @intel_pre_commit_crtc_state(ptr noundef %0, ptr noundef %i.f) #9
  %i.ej = getelementptr i8, ptr %i.ei, i64 616
  %i.ek = tail call i32 @intel_mode_vdisplay(ptr noundef %i.ej) #9 ; 3 uses
  tail call fastcc void @assert_dsl_ok(ptr noundef %0, ptr noundef %1, i32 noundef %i.eh, i32 noundef %i.ek) #10, !srcloc !22
  %i.el = add i32 %i.ek, 1
  %i.em = add i32 %i.eh, -1
  tail call fastcc void @intel_dsb_wait_dsl(ptr noundef %0, ptr noundef %1, i32 noundef %i.el, i32 noundef %i.em, i32 noundef %i.eh, i32 noundef %i.ek) #10, !srcloc !23
  %i.en = load i32, ptr %i.g, align 8
  %i.eo = shl i32 %i.en, 12
  %i.ep = load i32, ptr %1, align 8
  %i.eq = shl i32 %i.ep, 8
  %i.er = add i32 %i.eo, 461628
  %i.es = add i32 %i.er, %i.eq
  tail call void @intel_dsb_reg_write_masked(ptr noundef %1, i32 %i.es, i32 noundef 8388608, i32 noundef 0) #10
  br label %_intel_dsb_chain.exit

_intel_dsb_chain.exit:                            ; preds = %dev_name.exit85.i, %.critedge.i, %intel_dsb_tail.exit.i, %dsb_dewake_scanline_start.exit93.i
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_dsb_wait_for_delayed_vblank(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = tail call ptr @intel_pre_commit_crtc_state(ptr noundef %0, ptr noundef %i.b) #9 ; 4 uses
  %i.d = getelementptr i8, ptr %i.c, i64 616      ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 40
  %.val.i = load ptr, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.b, i64 136
  %.val9.i = load i32, ptr %i.f, align 8
  %i.g = zext i32 %.val9.i to i64
  %i.h = getelementptr [56 x i8], ptr %.val.i, i64 %i.g ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 10
  %.val12.i = load i8, ptr %i.k, align 2
  %i.l = and i8 %.val12.i, 14
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %bb.b, label %pre_commit_is_vrr_active.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.h, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 4644
  %i.p = load i8, ptr %i.o, align 4, !range !19, !noundef !20
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %pre_commit_is_vrr_active.exit, label %pre_commit_is_vrr_active.exit.thread

pre_commit_is_vrr_active.exit:                    ; preds = %bb.b
  %i.r = tail call zeroext i1 @intel_crtc_vrr_disabling(ptr noundef %0, ptr noundef %i.b) #9
  br i1 %i.r, label %pre_commit_is_vrr_active.exit.thread, label %bb.c

bb.c:                                             ; preds = %pre_commit_is_vrr_active.exit
  %i.s = tail call i32 @intel_vrr_safe_window_start(ptr noundef %i.c) #9 ; 3 uses
  %i.t = tail call i32 @intel_vrr_vmin_safe_window_end(ptr noundef %i.c) #9 ; 3 uses
  tail call fastcc void @assert_dsl_ok(ptr noundef %0, ptr noundef %1, i32 noundef %i.s, i32 noundef %i.t) #10, !srcloc !22
  %i.u = add i32 %i.t, 1
  %i.v = add i32 %i.s, -1
  tail call fastcc void @intel_dsb_wait_dsl(ptr noundef %0, ptr noundef %1, i32 noundef %i.u, i32 noundef %i.v, i32 noundef %i.s, i32 noundef %i.t) #10, !srcloc !23
  %i.w = getelementptr i8, ptr %i.c, i64 4794
  %i.x = load i16, ptr %i.w, align 2
  %i.y = zext i16 %i.x to i32
  %i.z = add nuw nsw i32 %i.y, 1
  br label %bb.d

pre_commit_is_vrr_active.exit.thread:             ; preds = %bb.b, %bb.a, %pre_commit_is_vrr_active.exit
  %i.aa = tail call i32 @intel_mode_vblank_delay(ptr noundef %i.d) #9
  br label %bb.d

bb.d:                                             ; preds = %pre_commit_is_vrr_active.exit.thread, %bb.c
  %.0 = phi i32 [ %i.z, %bb.c ], [ %i.aa, %pre_commit_is_vrr_active.exit.thread ]
  %i.ab = tail call i32 @intel_scanlines_to_usecs(ptr noundef %i.d, i32 noundef %.0) #9
  tail call void @intel_dsb_wait_usec(ptr noundef %1, i32 noundef %i.ab) #10
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_vrr_safe_window_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_vrr_vmin_safe_window_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_scanlines_to_usecs(ptr noundef, i32 noundef) local_unnamed_addr #2
end_hunk_0
begin_hunk_1_@intel_dsb_commit:bb.a
bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %0, align 8
  %.val40 = load ptr, ptr %i.e, align 8
  %i.j = shl i32 %i.g, 12
  %i.k = add i32 %i.j, 461568                     ; 7 uses
  %i.l = shl i32 %i.i, 8
  %i.m = add i32 %i.l, %i.k                       ; 2 uses
  %i.n = or disjoint i32 %i.m, 8                  ; 3 uses
  %i.o = tail call ptr @to_intel_uncore(ptr noundef %.val40) #9 ; 2 uses
  %i.p = icmp ult i32 %i.m, 262144
  br i1 %i.p, label %bb.e, label %__raw_uncore_read32.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.o, i64 36
  %i.r = load i32, ptr %i.q, align 4
  %i.s = add i32 %i.r, %i.n
  br label %__raw_uncore_read32.exit.i.i

__raw_uncore_read32.exit.i.i:                     ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi i32 [ %i.s, %bb.e ], [ %i.n, %bb.d ]
  %i.t = load ptr, ptr %i.o, align 8
  %i.u = zext i32 %.0.i.i.i to i64
  %i.v = getelementptr i8, ptr %i.t, i64 %i.u
  %i.w = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.v) #11, !srcloc !24 ; 2 uses
  %i.x = zext i32 %i.w to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #11
          to label %is_dsb_busy.exit [label %arch_test_bit.exit.i.i.i.i], !srcloc !25

arch_test_bit.exit.i.i.i.i:                       ; preds = %__raw_uncore_read32.exit.i.i
  %i.y = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #11, !srcloc !26
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.z) #11, !srcloc !27 ; 2 uses
  %i.ab = icmp ult i8 %i.aa, 2
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = trunc nuw i8 %i.aa to i1
  br i1 %i.ac, label %bb.f, label %is_dsb_busy.exit

bb.f:                                             ; preds = %arch_test_bit.exit.i.i.i.i
  %i.ad = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ad, ptr elementtype(i64) %i.ad) #11, !srcloc !28
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !29
  %i.ae = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.ag, i1 noundef zeroext false, i32 %i.n, i64 noundef range(i64 0, 4294967296) %i.x, i32 noundef 4, i1 noundef zeroext true) #9 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !30
  %i.ai = getelementptr i8, ptr %i.ad, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ai, ptr elementtype(i64) %i.ai) #11, !srcloc !31
  br label %is_dsb_busy.exit

is_dsb_busy.exit:                                 ; preds = %__raw_uncore_read32.exit.i.i, %arch_test_bit.exit.i.i.i.i, %bb.h
  %i.aj = trunc i32 %i.w to i1
  br i1 %i.aj, label %bb.i, label %bb.k

bb.i:                                             ; preds = %is_dsb_busy.exit
  %i.ak = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.i, %bb.j
  %i.an = phi ptr [ %i.am, %bb.j ], [ null, %bb.i ]
  %i.ao = getelementptr i8, ptr %i.b, i64 88
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = getelementptr i8, ptr %i.b, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load i32, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.an, ptr noundef @.str.3, i32 noundef %i.ap, ptr noundef %i.ar, i32 noundef %i.as) #12
  br label %bb.al

bb.k:                                             ; preds = %is_dsb_busy.exit
  %i.at = load i32, ptr %0, align 8
  %i.au = shl i32 %i.at, 8
  %i.av = add i32 %i.au, %i.k                     ; 2 uses
  %i.aw = or disjoint i32 %i.av, 8                ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #11
          to label %trace_i915_reg_rw.exit.i [label %arch_test_bit.exit.i.i.i], !srcloc !25

arch_test_bit.exit.i.i.i:                         ; preds = %bb.k
  %i.ax = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #11, !srcloc !26
  %i.ay = zext i32 %i.ax to i64
  %i.az = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ay) #11, !srcloc !27 ; 2 uses
  %i.ba = icmp ult i8 %i.az, 2
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = trunc nuw i8 %i.az to i1
  br i1 %i.bb, label %bb.l, label %trace_i915_reg_rw.exit.i

bb.l:                                             ; preds = %arch_test_bit.exit.i.i.i
  %i.bc = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bc, ptr elementtype(i64) %i.bc) #11, !srcloc !28
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !29
  %i.bd = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.bf, i1 noundef zeroext true, i32 %i.aw, i64 noundef range(i64 0, 4294967296) 2147483648, i32 noundef 4, i1 noundef zeroext true) #9 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !30
  %i.bh = getelementptr i8, ptr %i.bc, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bh, ptr elementtype(i64) %i.bh) #11, !srcloc !31
  br label %trace_i915_reg_rw.exit.i

trace_i915_reg_rw.exit.i:                         ; preds = %bb.n, %arch_test_bit.exit.i.i.i, %bb.k
  %.val.i = load ptr, ptr %i.e, align 8
  %i.bi = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #9 ; 2 uses
  %i.bj = icmp ult i32 %i.av, 262144
  br i1 %i.bj, label %bb.o, label %intel_de_write_fw.exit

bb.o:                                             ; preds = %trace_i915_reg_rw.exit.i
  %i.bk = getelementptr i8, ptr %i.bi, i64 36
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = add i32 %i.bl, %i.aw
  br label %intel_de_write_fw.exit

intel_de_write_fw.exit:                           ; preds = %trace_i915_reg_rw.exit.i, %bb.o
  %.0.i.i = phi i32 [ %i.bm, %bb.o ], [ %i.aw, %trace_i915_reg_rw.exit.i ]
  %i.bn = load ptr, ptr %i.bi, align 8
  %i.bo = zext i32 %.0.i.i to i64
  %i.bp = getelementptr i8, ptr %i.bn, i64 %i.bo
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 -2147483648, ptr elementtype(i32) %i.bp) #11, !srcloc !32
  %i.bq = load i32, ptr %0, align 8
  %i.br = shl i32 %i.bq, 8
  %i.bs = add i32 %i.br, %i.k                     ; 2 uses
  %i.bt = or disjoint i32 %i.bs, 240              ; 3 uses
  %i.bu = getelementptr i8, ptr %0, i64 44
  %i.bv = load i32, ptr %i.bu, align 4            ; 2 uses
  %i.bw = zext i32 %i.bv to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #11
          to label %trace_i915_reg_rw.exit.i42 [label %arch_test_bit.exit.i.i.i41], !srcloc !25

arch_test_bit.exit.i.i.i41:                       ; preds = %intel_de_write_fw.exit
  %i.bx = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #11, !srcloc !26
  %i.by = zext i32 %i.bx to i64
  %i.bz = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.by) #11, !srcloc !27 ; 2 uses
  %i.ca = icmp ult i8 %i.bz, 2
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = trunc nuw i8 %i.bz to i1
  br i1 %i.cb, label %bb.p, label %trace_i915_reg_rw.exit.i42

bb.p:                                             ; preds = %arch_test_bit.exit.i.i.i41
  %i.cc = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cc, ptr elementtype(i64) %i.cc) #11, !srcloc !28
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !29
  %i.cd = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i45, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.cf, i1 noundef zeroext true, i32 %i.bt, i64 noundef range(i64 0, 4294967296) %i.bw, i32 noundef 4, i1 noundef zeroext true) #9 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !30
  %i.ch = getelementptr i8, ptr %i.cc, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ch, ptr elementtype(i64) %i.ch) #11, !srcloc !31
  br label %trace_i915_reg_rw.exit.i42

trace_i915_reg_rw.exit.i42:                       ; preds = %bb.r, %arch_test_bit.exit.i.i.i41, %intel_de_write_fw.exit
  %.val.i43 = load ptr, ptr %i.e, align 8
  %i.ci = tail call ptr @to_intel_uncore(ptr noundef %.val.i43) #9 ; 2 uses
  %i.cj = icmp ult i32 %i.bs, 262144
  br i1 %i.cj, label %bb.s, label %intel_de_write_fw.exit48

bb.s:                                             ; preds = %trace_i915_reg_rw.exit.i42
  %i.ck = getelementptr i8, ptr %i.ci, i64 36
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = add i32 %i.cl, %i.bt
  br label %intel_de_write_fw.exit48

intel_de_write_fw.exit48:                         ; preds = %trace_i915_reg_rw.exit.i42, %bb.s
  %.0.i.i44 = phi i32 [ %i.cm, %bb.s ], [ %i.bt, %trace_i915_reg_rw.exit.i42 ]
  %i.cn = load ptr, ptr %i.ci, align 8
  %i.co = zext i32 %.0.i.i44 to i64
  %i.cp = getelementptr i8, ptr %i.cn, i64 %i.co
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.bv, ptr elementtype(i32) %i.cp) #11, !srcloc !32
  %i.cq = load i32, ptr %0, align 8
  %i.cr = shl i32 %i.cq, 8
  %i.cs = add i32 %i.cr, %i.k                     ; 2 uses
  %i.ct = or disjoint i32 %i.cs, 40               ; 3 uses
  %i.cu = getelementptr i8, ptr %i.e, i64 1168
  %.val = load i16, ptr %i.cu, align 8            ; 2 uses
  %i.cv = icmp ugt i16 %.val, 13                  ; 2 uses
  %spec.select.i = select i1 %i.cv, i32 30, i32 14 ; 2 uses
  %i.cw = icmp ugt i16 %.val, 29
  %1 = or disjoint i32 %spec.select.i, 32
  %.1.i = select i1 %i.cw, i32 %1, i32 %spec.select.i
  %i.cx = select i1 %i.cv, i32 2031617, i32 983041
  %i.cy = or disjoint i32 %i.cx, %.1.i            ; 2 uses
  %i.cz = zext nneg i32 %i.cy to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #11
          to label %trace_i915_reg_rw.exit.i51 [label %arch_test_bit.exit.i.i.i50], !srcloc !25

arch_test_bit.exit.i.i.i50:                       ; preds = %intel_de_write_fw.exit48
  %i.da = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #11, !srcloc !26
  %i.db = zext i32 %i.da to i64
  %i.dc = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.db) #11, !srcloc !27 ; 2 uses
  %i.dd = icmp ult i8 %i.dc, 2
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = trunc nuw i8 %i.dc to i1
  br i1 %i.de, label %bb.t, label %trace_i915_reg_rw.exit.i51

bb.t:                                             ; preds = %arch_test_bit.exit.i.i.i50
  %i.df = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.df, ptr elementtype(i64) %i.df) #11, !srcloc !28
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !29
  %i.dg = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i54, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dh = getelementptr i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.di, i1 noundef zeroext true, i32 %i.ct, i64 noundef range(i64 0, 4294967296) %i.cz, i32 noundef 4, i1 noundef zeroext true) #9 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !30
  %i.dk = getelementptr i8, ptr %i.df, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.dk, ptr elementtype(i64) %i.dk) #11, !srcloc !31
  br label %trace_i915_reg_rw.exit.i51

trace_i915_reg_rw.exit.i51:                       ; preds = %bb.v, %arch_test_bit.exit.i.i.i50, %intel_de_write_fw.exit48
  %.val.i52 = load ptr, ptr %i.e, align 8
  %i.dl = tail call ptr @to_intel_uncore(ptr noundef %.val.i52) #9 ; 2 uses
  %i.dm = icmp ult i32 %i.cs, 262144
  br i1 %i.dm, label %bb.w, label %intel_de_write_fw.exit57

bb.w:                                             ; preds = %trace_i915_reg_rw.exit.i51
  %i.dn = getelementptr i8, ptr %i.dl, i64 36
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = add i32 %i.do, %i.ct
  br label %intel_de_write_fw.exit57

intel_de_write_fw.exit57:                         ; preds = %trace_i915_reg_rw.exit.i51, %bb.w
  %.0.i.i53 = phi i32 [ %i.dp, %bb.w ], [ %i.ct, %trace_i915_reg_rw.exit.i51 ]
  %i.dq = load ptr, ptr %i.dl, align 8
  %i.dr = zext i32 %.0.i.i53 to i64
  %i.ds = getelementptr i8, ptr %i.dq, i64 %i.dr
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.cy, ptr elementtype(i32) %i.ds) #11, !srcloc !32
  %i.dt = load i32, ptr %0, align 8
  %i.du = shl i32 %i.dt, 8
  %i.dv = add i32 %i.du, %i.k                     ; 2 uses
  %i.dw = or disjoint i32 %i.dv, 56               ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #11
          to label %trace_i915_reg_rw.exit.i59 [label %arch_test_bit.exit.i.i.i58], !srcloc !25

arch_test_bit.exit.i.i.i58:                       ; preds = %intel_de_write_fw.exit57
  %i.dx = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #11, !srcloc !26
  %i.dy = zext i32 %i.dx to i64
  %i.dz = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.dy) #11, !srcloc !27 ; 2 uses
  %i.ea = icmp ult i8 %i.dz, 2
  tail call void @llvm.assume(i1 %i.ea)
  %i.eb = trunc nuw i8 %i.dz to i1
  br i1 %i.eb, label %bb.x, label %trace_i915_reg_rw.exit.i59

bb.x:                                             ; preds = %arch_test_bit.exit.i.i.i58
  %i.ec = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ec, ptr elementtype(i64) %i.ec) #11, !srcloc !28
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !29
  %i.ed = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i62, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ee = getelementptr i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.ef, i1 noundef zeroext true, i32 %i.dw, i64 noundef range(i64 0, 4294967296) 0, i32 noundef 4, i1 noundef zeroext true) #9 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !30
  %i.eh = getelementptr i8, ptr %i.ec, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.eh, ptr elementtype(i64) %i.eh) #11, !srcloc !31
  br label %trace_i915_reg_rw.exit.i59

trace_i915_reg_rw.exit.i59:                       ; preds = %bb.z, %arch_test_bit.exit.i.i.i58, %intel_de_write_fw.exit57
  %.val.i60 = load ptr, ptr %i.e, align 8
  %i.ei = tail call ptr @to_intel_uncore(ptr noundef %.val.i60) #9 ; 2 uses
  %i.ej = icmp ult i32 %i.dv, 262144
  br i1 %i.ej, label %bb.aa, label %intel_de_write_fw.exit65

bb.aa:                                            ; preds = %trace_i915_reg_rw.exit.i59
  %i.ek = getelementptr i8, ptr %i.ei, i64 36
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = add i32 %i.el, %i.dw
  br label %intel_de_write_fw.exit65

intel_de_write_fw.exit65:                         ; preds = %trace_i915_reg_rw.exit.i59, %bb.aa
  %.0.i.i61 = phi i32 [ %i.em, %bb.aa ], [ %i.dw, %trace_i915_reg_rw.exit.i59 ]
  %i.en = load ptr, ptr %i.ei, align 8
  %i.eo = zext i32 %.0.i.i61 to i64
  %i.ep = getelementptr i8, ptr %i.en, i64 %i.eo
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.ep) #11, !srcloc !32
  %i.eq = load i32, ptr %0, align 8
  %i.er = shl i32 %i.eq, 8
  %i.es = add i32 %i.er, %i.k                     ; 4 uses
  %i.et = load ptr, ptr %i.a, align 8
  %i.eu = load ptr, ptr %i.et, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i, label %intel_dsb_head.exit, label %bb.ab

bb.ab:                                            ; preds = %intel_de_write_fw.exit65
  %i.ev = tail call ptr @__drm_to_display(ptr noundef nonnull %i.eu) #9
  br label %intel_dsb_head.exit

intel_dsb_head.exit:                              ; preds = %intel_de_write_fw.exit65, %bb.ab
  %i.ew = phi ptr [ %i.ev, %bb.ab ], [ null, %intel_de_write_fw.exit65 ]
  %i.ex = getelementptr i8, ptr %i.ew, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = getelementptr i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = tail call i32 %i.fb(ptr noundef %i.fd) #9, !inline_history !2 ; 2 uses
  %i.ff = zext i32 %i.fe to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #11
          to label %trace_i915_reg_rw.exit.i67 [label %arch_test_bit.exit.i.i.i66], !srcloc !25

arch_test_bit.exit.i.i.i66:                       ; preds = %intel_dsb_head.exit
  %i.fg = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #11, !srcloc !26
  %i.fh = zext i32 %i.fg to i64
  %i.fi = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.fh) #11, !srcloc !27 ; 2 uses
  %i.fj = icmp ult i8 %i.fi, 2
  tail call void @llvm.assume(i1 %i.fj)
  %i.fk = trunc nuw i8 %i.fi to i1
  br i1 %i.fk, label %bb.ac, label %trace_i915_reg_rw.exit.i67

bb.ac:                                            ; preds = %arch_test_bit.exit.i.i.i66
  %i.fl = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fl, ptr elementtype(i64) %i.fl) #11, !srcloc !28
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !29
  %i.fm = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i70 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i70, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fn = getelementptr i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.fo, i1 noundef zeroext true, i32 %i.es, i64 noundef range(i64 0, 4294967296) %i.ff, i32 noundef 4, i1 noundef zeroext true) #9 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !30
  %i.fq = getelementptr i8, ptr %i.fl, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fq, ptr elementtype(i64) %i.fq) #11, !srcloc !31
  br label %trace_i915_reg_rw.exit.i67

trace_i915_reg_rw.exit.i67:                       ; preds = %bb.ae, %arch_test_bit.exit.i.i.i66, %intel_dsb_head.exit
  %.val.i68 = load ptr, ptr %i.e, align 8
  %i.fr = tail call ptr @to_intel_uncore(ptr noundef %.val.i68) #9 ; 2 uses
  %i.fs = icmp ult i32 %i.es, 262144
  br i1 %i.fs, label %bb.af, label %intel_de_write_fw.exit73

bb.af:                                            ; preds = %trace_i915_reg_rw.exit.i67
  %i.ft = getelementptr i8, ptr %i.fr, i64 36
  %i.fu = load i32, ptr %i.ft, align 4
  %i.fv = add i32 %i.fu, %i.es
  br label %intel_de_write_fw.exit73

intel_de_write_fw.exit73:                         ; preds = %trace_i915_reg_rw.exit.i67, %bb.af
  %.0.i.i69 = phi i32 [ %i.fv, %bb.af ], [ %i.es, %trace_i915_reg_rw.exit.i67 ]
  %i.fw = load ptr, ptr %i.fr, align 8
  %i.fx = zext i32 %.0.i.i69 to i64
  %i.fy = getelementptr i8, ptr %i.fw, i64 %i.fx
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.fe, ptr elementtype(i32) %i.fy) #11, !srcloc !32
  %i.fz = load i32, ptr %0, align 8
  %i.ga = shl i32 %i.fz, 8
  %i.gb = add i32 %i.ga, %i.k                     ; 2 uses
  %i.gc = or disjoint i32 %i.gb, 4                ; 3 uses
  %i.gd = load ptr, ptr %i.a, align 8
  %i.ge = load ptr, ptr %i.gd, align 8            ; 2 uses
  %.not.i.i74 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i74, label %intel_dsb_tail.exit, label %bb.ag

bb.ag:                                            ; preds = %intel_de_write_fw.exit73
  %i.gf = tail call ptr @__drm_to_display(ptr noundef nonnull %i.ge) #9
  br label %intel_dsb_tail.exit

intel_dsb_tail.exit:                              ; preds = %intel_de_write_fw.exit73, %bb.ag
  %i.gg = phi ptr [ %i.gf, %bb.ag ], [ null, %intel_de_write_fw.exit73 ]
  %i.gh = getelementptr i8, ptr %i.gg, i64 32
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = getelementptr i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = load ptr, ptr %i.gk, align 8
end_hunk_1
begin_hunk_2_@intel_dsb_wait:bb.a

bb.af:                                            ; preds = %bb.ae
  %i.fj = getelementptr i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.af, %bb.ae
  %i.fl = phi ptr [ %i.fk, %bb.af ], [ null, %bb.ae ]
  %i.fm = getelementptr i8, ptr %i.fe, i64 88
  %i.fn = load i32, ptr %i.fm, align 8
  %i.fo = getelementptr i8, ptr %i.fe, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = load i32, ptr %0, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.fl, i32 noundef 2, ptr noundef @.str.16, i32 noundef %i.fn, ptr noundef %i.fp, i32 noundef %i.fq) #9
  %i.fr = getelementptr i8, ptr %0, i64 28        ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = add i32 %i.fs, 15
  %.not33.i = icmp ult i32 %i.ft, 16
  br i1 %.not33.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %__drm_to_dev.exit.i, %dsb_buffer_read.exit29.i
  %.032.i = phi i32 [ %i.hy, %dsb_buffer_read.exit29.i ], [ 0, %__drm_to_dev.exit.i ] ; 6 uses
  %i.fu = load ptr, ptr %i.fh, align 8            ; 2 uses
  %.not.i21.i = icmp eq ptr %i.fu, null
  br i1 %.not.i21.i, label %__drm_to_dev.exit22.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i
  %i.fv = getelementptr i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  br label %__drm_to_dev.exit22.i

__drm_to_dev.exit22.i:                            ; preds = %bb.ag, %.lr.ph.i
  %i.fx = phi ptr [ %i.fw, %bb.ag ], [ null, %.lr.ph.i ]
  %i.fy = shl i32 %.032.i, 2
  %i.fz = load ptr, ptr %i.a, align 8
  %i.ga = load ptr, ptr %i.fz, align 8            ; 2 uses
  %.not.i23.i = icmp eq ptr %i.ga, null
  br i1 %.not.i23.i, label %dsb_buffer_read.exit.i, label %bb.ah

bb.ah:                                            ; preds = %__drm_to_dev.exit22.i
  %i.gb = tail call ptr @__drm_to_display(ptr noundef nonnull %i.ga) #9
  br label %dsb_buffer_read.exit.i

dsb_buffer_read.exit.i:                           ; preds = %bb.ah, %__drm_to_dev.exit22.i
  %i.gc = phi ptr [ %i.gb, %bb.ah ], [ null, %__drm_to_dev.exit22.i ]
  %i.gd = getelementptr i8, ptr %i.gc, i64 32
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = getelementptr i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = getelementptr i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = load ptr, ptr %i.ax, align 8
  %i.gk = tail call i32 %i.gi(ptr noundef %i.gj, i32 noundef %.032.i) #9, !inline_history !64
  %i.gl = or disjoint i32 %.032.i, 1
  %i.gm = load ptr, ptr %i.a, align 8
  %i.gn = load ptr, ptr %i.gm, align 8            ; 2 uses
  %.not.i24.i = icmp eq ptr %i.gn, null
  br i1 %.not.i24.i, label %dsb_buffer_read.exit25.i, label %bb.ai

bb.ai:                                            ; preds = %dsb_buffer_read.exit.i
  %i.go = tail call ptr @__drm_to_display(ptr noundef nonnull %i.gn) #9
  br label %dsb_buffer_read.exit25.i

dsb_buffer_read.exit25.i:                         ; preds = %bb.ai, %dsb_buffer_read.exit.i
  %i.gp = phi ptr [ %i.go, %bb.ai ], [ null, %dsb_buffer_read.exit.i ]
  %i.gq = getelementptr i8, ptr %i.gp, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8
  %i.gs = getelementptr i8, ptr %i.gr, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = getelementptr i8, ptr %i.gt, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = load ptr, ptr %i.ax, align 8
  %i.gx = tail call i32 %i.gv(ptr noundef %i.gw, i32 noundef %i.gl) #9, !inline_history !64
  %i.gy = or disjoint i32 %.032.i, 2
  %i.gz = load ptr, ptr %i.a, align 8
  %i.ha = load ptr, ptr %i.gz, align 8            ; 2 uses
  %.not.i26.i = icmp eq ptr %i.ha, null
  br i1 %.not.i26.i, label %dsb_buffer_read.exit27.i, label %bb.aj

bb.aj:                                            ; preds = %dsb_buffer_read.exit25.i
  %i.hb = tail call ptr @__drm_to_display(ptr noundef nonnull %i.ha) #9
  br label %dsb_buffer_read.exit27.i

dsb_buffer_read.exit27.i:                         ; preds = %bb.aj, %dsb_buffer_read.exit25.i
  %i.hc = phi ptr [ %i.hb, %bb.aj ], [ null, %dsb_buffer_read.exit25.i ]
  %i.hd = getelementptr i8, ptr %i.hc, i64 32
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = getelementptr i8, ptr %i.he, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = getelementptr i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = load ptr, ptr %i.ax, align 8
  %i.hk = tail call i32 %i.hi(ptr noundef %i.hj, i32 noundef %i.gy) #9, !inline_history !64
  %i.hl = or disjoint i32 %.032.i, 3
  %i.hm = load ptr, ptr %i.a, align 8
  %i.hn = load ptr, ptr %i.hm, align 8            ; 2 uses
  %.not.i28.i = icmp eq ptr %i.hn, null
  br i1 %.not.i28.i, label %dsb_buffer_read.exit29.i, label %bb.ak

bb.ak:                                            ; preds = %dsb_buffer_read.exit27.i
  %i.ho = tail call ptr @__drm_to_display(ptr noundef nonnull %i.hn) #9
  br label %dsb_buffer_read.exit29.i

dsb_buffer_read.exit29.i:                         ; preds = %bb.ak, %dsb_buffer_read.exit27.i
  %i.hp = phi ptr [ %i.ho, %bb.ak ], [ null, %dsb_buffer_read.exit27.i ]
  %i.hq = getelementptr i8, ptr %i.hp, i64 32
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = getelementptr i8, ptr %i.hr, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8
  %i.hu = getelementptr i8, ptr %i.ht, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = load ptr, ptr %i.ax, align 8
  %i.hx = tail call i32 %i.hv(ptr noundef %i.hw, i32 noundef %i.hl) #9, !inline_history !64
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.fx, i32 noundef 2, ptr noundef @.str.17, i32 noundef %i.fy, i32 noundef %i.gk, i32 noundef %i.gx, i32 noundef %i.hk, i32 noundef %i.hx) #9
  %i.hy = add nuw i32 %.032.i, 4                  ; 2 uses
  %i.hz = load i32, ptr %i.fr, align 4
  %i.ia = add i32 %i.hz, 15
  %i.ib = and i32 %i.ia, -16
  %i.ic = icmp ult i32 %i.hy, %i.ib
  br i1 %i.ic, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !65

._crit_edge.i:                                    ; preds = %dsb_buffer_read.exit29.i, %__drm_to_dev.exit.i
  %i.id = load ptr, ptr %i.fh, align 8            ; 2 uses
  %.not.i30.i = icmp eq ptr %i.id, null
  br i1 %.not.i30.i, label %intel_dsb_dump.exit, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i
  %i.ie = getelementptr i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8
  br label %intel_dsb_dump.exit

intel_dsb_dump.exit:                              ; preds = %._crit_edge.i, %bb.al
  %i.ig = phi ptr [ %i.if, %bb.al ], [ null, %._crit_edge.i ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ig, i32 noundef 2, ptr noundef @.str.18) #9
  br label %bb.am

bb.am:                                            ; preds = %intel_dsb_dump.exit, %bb.j
  %i.ih = getelementptr i8, ptr %0, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %i.ih, i8 0, i64 16, i1 false)
  %i.ii = load i32, ptr %0, align 8
  %i.ij = shl i32 %i.ii, 8
  %i.ik = add i32 %i.ij, %i.l                     ; 2 uses
  %i.il = or disjoint i32 %i.ik, 8                ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #11
          to label %trace_i915_reg_rw.exit.i89 [label %arch_test_bit.exit.i.i.i88], !srcloc !25

arch_test_bit.exit.i.i.i88:                       ; preds = %bb.am
  %i.im = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #11, !srcloc !26
  %i.in = zext i32 %i.im to i64
  %i.io = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.in) #11, !srcloc !27 ; 2 uses
  %i.ip = icmp ult i8 %i.io, 2
  tail call void @llvm.assume(i1 %i.ip)
  %i.iq = trunc nuw i8 %i.io to i1
  br i1 %i.iq, label %bb.an, label %trace_i915_reg_rw.exit.i89

bb.an:                                            ; preds = %arch_test_bit.exit.i.i.i88
  %i.ir = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ir, ptr elementtype(i64) %i.ir) #11, !srcloc !28
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !29
  %i.is = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i92 = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i92, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.it = getelementptr i8, ptr %i.is, i64 8
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.iu, i1 noundef zeroext true, i32 %i.il, i64 noundef range(i64 0, 4294967296) 0, i32 noundef 4, i1 noundef zeroext true) #9 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !30
  %i.iw = getelementptr i8, ptr %i.ir, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.iw, ptr elementtype(i64) %i.iw) #11, !srcloc !31
  br label %trace_i915_reg_rw.exit.i89

trace_i915_reg_rw.exit.i89:                       ; preds = %bb.ap, %arch_test_bit.exit.i.i.i88, %bb.am
  %.val.i90 = load ptr, ptr %i.e, align 8
  %i.ix = tail call ptr @to_intel_uncore(ptr noundef %.val.i90) #9 ; 2 uses
  %i.iy = icmp ult i32 %i.ik, 262144
  br i1 %i.iy, label %bb.aq, label %intel_de_write_fw.exit95

bb.aq:                                            ; preds = %trace_i915_reg_rw.exit.i89
  %i.iz = getelementptr i8, ptr %i.ix, i64 36
  %i.ja = load i32, ptr %i.iz, align 4
  %i.jb = add i32 %i.ja, %i.il
  br label %intel_de_write_fw.exit95

intel_de_write_fw.exit95:                         ; preds = %trace_i915_reg_rw.exit.i89, %bb.aq
  %.0.i.i91 = phi i32 [ %i.jb, %bb.aq ], [ %i.il, %trace_i915_reg_rw.exit.i89 ]
  %i.jc = load ptr, ptr %i.ix, align 8
  %i.jd = zext i32 %.0.i.i91 to i64
  %i.je = getelementptr i8, ptr %i.jc, i64 %i.jd
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr elementtype(i32) %i.je) #11, !srcloc !32
  %i.jf = load i32, ptr %0, align 8
  %i.jg = shl i32 %i.jf, 8
  %i.jh = add i32 %i.jg, %i.l                     ; 2 uses
  %i.ji = or disjoint i32 %i.jh, 40               ; 3 uses
  %i.jj = getelementptr i8, ptr %i.e, i64 1168
  %.val = load i16, ptr %i.jj, align 8            ; 2 uses
  %i.jk = icmp ugt i16 %.val, 13
  %spec.select.i = select i1 %i.jk, i32 30, i32 14 ; 2 uses
  %i.jl = icmp ugt i16 %.val, 29
  %1 = or disjoint i32 %spec.select.i, 32
  %.1.i = select i1 %i.jl, i32 %1, i32 %spec.select.i
  %2 = or disjoint i32 %.1.i, 1                   ; 2 uses
  %i.jm = zext nneg i32 %2 to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #11
          to label %trace_i915_reg_rw.exit.i97 [label %arch_test_bit.exit.i.i.i96], !srcloc !25

arch_test_bit.exit.i.i.i96:                       ; preds = %intel_de_write_fw.exit95
  %i.jn = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #11, !srcloc !26
  %i.jo = zext i32 %i.jn to i64
  %i.jp = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.jo) #11, !srcloc !27 ; 2 uses
  %i.jq = icmp ult i8 %i.jp, 2
  tail call void @llvm.assume(i1 %i.jq)
  %i.jr = trunc nuw i8 %i.jp to i1
  br i1 %i.jr, label %bb.ar, label %trace_i915_reg_rw.exit.i97

bb.ar:                                            ; preds = %arch_test_bit.exit.i.i.i96
  %i.js = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.js, ptr elementtype(i64) %i.js) #11, !srcloc !28
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !29
  %i.jt = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i100 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i100, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ju = getelementptr i8, ptr %i.jt, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8
  %i.jw = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.jv, i1 noundef zeroext true, i32 %i.ji, i64 noundef range(i64 0, 4294967296) %i.jm, i32 noundef 4, i1 noundef zeroext true) #9 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !30
  %i.jx = getelementptr i8, ptr %i.js, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.jx, ptr elementtype(i64) %i.jx) #11, !srcloc !31
  br label %trace_i915_reg_rw.exit.i97

trace_i915_reg_rw.exit.i97:                       ; preds = %bb.at, %arch_test_bit.exit.i.i.i96, %intel_de_write_fw.exit95
  %.val.i98 = load ptr, ptr %i.e, align 8
  %i.jy = tail call ptr @to_intel_uncore(ptr noundef %.val.i98) #9 ; 2 uses
  %i.jz = icmp ult i32 %i.jh, 262144
  br i1 %i.jz, label %bb.au, label %intel_de_write_fw.exit103

bb.au:                                            ; preds = %trace_i915_reg_rw.exit.i97
  %i.ka = getelementptr i8, ptr %i.jy, i64 36
  %i.kb = load i32, ptr %i.ka, align 4
  %i.kc = add i32 %i.kb, %i.ji
  br label %intel_de_write_fw.exit103

intel_de_write_fw.exit103:                        ; preds = %trace_i915_reg_rw.exit.i97, %bb.au
  %.0.i.i99 = phi i32 [ %i.kc, %bb.au ], [ %i.ji, %trace_i915_reg_rw.exit.i97 ]
  %i.kd = load ptr, ptr %i.jy, align 8
  %i.ke = zext i32 %.0.i.i99 to i64
  %i.kf = getelementptr i8, ptr %i.kd, i64 %i.ke
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %2, ptr elementtype(i32) %i.kf) #11, !srcloc !32
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @intel_dsb_prepare(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 8 uses
  %i.e = getelementptr i8, ptr %i.d, i64 1160
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 46
  %i.h = load i16, ptr %i.g, align 2
  %i.i = and i16 %i.h, 32
  %.not44 = icmp eq i16 %i.i, 0
  br i1 %.not44, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.d, i64 5161
  %i.k = load i8, ptr %i.j, align 1, !range !19, !noundef !20
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 48), align 16
  %i.n = tail call noalias noundef align 8 dereferenceable_or_null(56) ptr @__kmalloc_cache_noprof(ptr noundef %i.m, i32 noundef 3520, i64 noundef 56) #13 ; 9 uses
  %.not45 = icmp eq ptr %i.n, null
  br i1 %.not45, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @intel_display_rpm_get(ptr noundef %i.d) #9 ; 2 uses
  %i.p = shl i32 %3, 3
  %i.q = add i32 %i.p, 56
  %i.r = and i32 %i.q, -64                        ; 2 uses
  %i.s = zext i32 %i.r to i64
  %.val = load ptr, ptr %i.d, align 8
  %i.t = getelementptr i8, ptr %i.d, i64 32
  %.val46 = load ptr, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %.val46, i64 16
  %.val46.val = load ptr, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %.val46.val, i64 32
  %.val46.val.val = load ptr, ptr %i.v, align 8
  %i.w = tail call ptr %.val46.val.val(ptr noundef %.val, i64 noundef range(i64 0, 4294967233) %i.s) #9, !inline_history !68 ; 2 uses
  %i.x = icmp ugt ptr %i.w, inttoptr (i64 -4096 to ptr)
  br i1 %i.x, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.n, i64 8
  store ptr %i.w, ptr %i.y, align 8
  tail call void @intel_display_rpm_put(ptr noundef %i.d, ptr noundef %i.o) #9
  store i32 %2, ptr %i.n, align 8
  %i.z = getelementptr i8, ptr %i.n, i64 16
  store ptr %1, ptr %i.z, align 8
  %i.aa = lshr exact i32 %i.r, 2
  %i.ab = getelementptr i8, ptr %i.n, i64 24
  store i32 %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %.val.i = load ptr, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %1, i64 136       ; 2 uses
  %.val6.i = load i32, ptr %i.ad, align 8
  %i.ae = zext i32 %.val6.i to i64
  %i.af = getelementptr [56 x i8], ptr %.val.i, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call zeroext i1 @intel_psr_use_trans_push(ptr noundef %i.ah) #9
  %i.aj = select i1 %i.ai, i32 8388608, i32 0     ; 4 uses
  %.val.i.i = load ptr, ptr %i.ac, align 8
  %.val9.i.i = load i32, ptr %i.ad, align 8
  %i.ak = zext i32 %.val9.i.i to i64
  %i.al = getelementptr [56 x i8], ptr %.val.i.i, i64 %i.ak ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 10
  %.val12.i.i = load i8, ptr %i.ao, align 2
  %i.ap = and i8 %.val12.i.i, 14
  %.not.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i, label %bb.h, label %dsb_chicken.exit

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr i8, ptr %i.al, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr i8, ptr %i.ar, i64 4644
  %i.at = load i8, ptr %i.as, align 4, !range !19, !noundef !20
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %pre_commit_is_vrr_active.exit.i, label %dsb_chicken.exit

pre_commit_is_vrr_active.exit.i:                  ; preds = %bb.h
  %i.av = tail call zeroext i1 @intel_crtc_vrr_disabling(ptr noundef %0, ptr noundef %1) #9
  %.fr.i = freeze i1 %i.av
  %i.aw = or disjoint i32 %i.aj, 49344
  %spec.select.i = select i1 %.fr.i, i32 %i.aj, i32 %i.aw
  br label %dsb_chicken.exit

dsb_chicken.exit:                                 ; preds = %bb.g, %bb.h, %pre_commit_is_vrr_active.exit.i
  %i.ax = phi i32 [ %i.aj, %bb.h ], [ %spec.select.i, %pre_commit_is_vrr_active.exit.i ], [ %i.aj, %bb.g ]
  %i.ay = getelementptr i8, ptr %i.n, i64 44
  store i32 %i.ax, ptr %i.ay, align 4
  %i.az = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %dsb_dewake_scanline_start.exit, label %bb.i

bb.i:                                             ; preds = %dsb_chicken.exit
  %i.ba = tail call ptr @__drm_to_display(ptr noundef nonnull %i.az) #9
  br label %dsb_dewake_scanline_start.exit

dsb_dewake_scanline_start.exit:                   ; preds = %dsb_chicken.exit, %bb.i
  %i.bb = phi ptr [ %i.ba, %bb.i ], [ null, %dsb_chicken.exit ]
  %i.bc = tail call ptr @intel_pre_commit_crtc_state(ptr noundef %0, ptr noundef %1) #9
  %i.bd = tail call i32 @skl_watermark_max_latency(ptr noundef %i.bb, i32 noundef 0) #9
  %i.be = getelementptr i8, ptr %i.bc, i64 616    ; 2 uses
  %i.bf = tail call i32 @intel_mode_vdisplay(ptr noundef %i.be) #9
  %i.bg = tail call i32 @intel_usecs_to_scanlines(ptr noundef %i.be, i32 noundef %i.bd) #9
  %i.bh = sub i32 %i.bf, %i.bg
  %i.bi = tail call fastcc i32 @dsb_scanline_to_hw(ptr noundef %0, ptr noundef %1, i32 noundef %i.bh) #10, !srcloc !69
  %i.bj = getelementptr i8, ptr %i.n, i64 48
  store i32 %i.bi, ptr %i.bj, align 8
  br label %bb.n

bb.j:                                             ; preds = %bb.f
  tail call void @intel_display_rpm_put(ptr noundef %i.d, ptr noundef %i.o) #9
  tail call void @kfree(ptr noundef nonnull %i.n) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  %.b = load i1, ptr @intel_dsb_prepare.__print_once, align 1
  br i1 %.b, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i1 true, ptr @intel_dsb_prepare.__print_once, align 1
  %i.bk = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i47 = icmp eq ptr %i.bk, null
  br i1 %.not.i47, label %__drm_to_dev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.l, %bb.m
  %i.bn = phi ptr [ %i.bm, %bb.m ], [ null, %bb.l ]
  %i.bo = getelementptr i8, ptr %1, i64 88
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = getelementptr i8, ptr %1, i64 32
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.bn, ptr noundef @.str.5, i32 noundef %i.bp, ptr noundef %i.br, i32 noundef %2) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %__drm_to_dev.exit, %bb.d, %bb.c, %dsb_dewake_scanline_start.exit
  %.0 = phi ptr [ null, %bb.d ], [ %i.n, %dsb_dewake_scanline_start.exit ], [ null, %bb.c ], [ null, %__drm_to_dev.exit ], [ null, %bb.k ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_display_rpm_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_display_rpm_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -2147483647, -2147483648) i32 @dsb_scanline_to_hw(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @intel_pre_commit_crtc_state(ptr noundef %0, ptr noundef %1) #9
  %i.b = tail call ptr @intel_pre_commit_crtc_state(ptr noundef %0, ptr noundef %1) #9 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 40
  %.val.i.i = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %1, i64 136
  %.val9.i.i = load i32, ptr %i.d, align 8
  %i.e = zext i32 %.val9.i.i to i64
  %i.f = getelementptr [56 x i8], ptr %.val.i.i, i64 %i.e ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 10
  %.val12.i.i = load i8, ptr %i.i, align 2
  %i.j = and i8 %.val12.i.i, 14
  %.not.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i, label %bb.b, label %pre_commit_is_vrr_active.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.f, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 4644
  %i.n = load i8, ptr %i.m, align 4, !range !19, !noundef !20
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %pre_commit_is_vrr_active.exit.i, label %pre_commit_is_vrr_active.exit.thread.i

pre_commit_is_vrr_active.exit.i:                  ; preds = %bb.b
  %i.p = tail call zeroext i1 @intel_crtc_vrr_disabling(ptr noundef %0, ptr noundef %1) #9
  br i1 %i.p, label %pre_commit_is_vrr_active.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %pre_commit_is_vrr_active.exit.i
  %i.q = tail call i32 @intel_vrr_vmax_vtotal(ptr noundef %i.b) #9
  br label %dsb_vtotal.exit

pre_commit_is_vrr_active.exit.thread.i:           ; preds = %pre_commit_is_vrr_active.exit.i, %bb.b, %bb.a
  %i.r = getelementptr i8, ptr %i.b, i64 616
  %i.s = tail call i32 @intel_mode_vtotal(ptr noundef %i.r) #9
  br label %dsb_vtotal.exit

dsb_vtotal.exit:                                  ; preds = %bb.c, %pre_commit_is_vrr_active.exit.thread.i
  %.0.i = phi i32 [ %i.q, %bb.c ], [ %i.s, %pre_commit_is_vrr_active.exit.thread.i ] ; 2 uses
  %i.t = add i32 %.0.i, %2
  %i.u = tail call i32 @intel_crtc_scanline_offset(ptr noundef %i.a) #9
  %i.v = sub i32 %i.t, %i.u
  %i.w = srem i32 %i.v, %.0.i
  ret i32 %i.w
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_dsb_cleanup(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %dsb_buffer_cleanup.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__drm_to_display(ptr noundef nonnull %i.c) #9
  br label %dsb_buffer_cleanup.exit

dsb_buffer_cleanup.exit:                          ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %i.f = getelementptr i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.k(ptr noundef %i.m) #9, !inline_history !70
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_dsb_irq_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @intel_crtc_for_pipe(ptr noundef %0, i32 noundef %1) #9 ; 13 uses
  %i.b = shl i32 %1, 12
  %i.c = add i32 %i.b, 461568
  %i.d = shl i32 %2, 8
  %i.e = add i32 %i.c, %i.d                       ; 2 uses
  %i.f = or disjoint i32 %i.e, 40                 ; 6 uses
  %.val50 = load ptr, ptr %0, align 8
  %i.g = tail call ptr @to_intel_uncore(ptr noundef %.val50) #9 ; 2 uses
  %i.h = icmp ult i32 %i.e, 262144                ; 2 uses
  br i1 %i.h, label %bb.b, label %__raw_uncore_read32.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.g, i64 36
  %i.j = load i32, ptr %i.i, align 4
  %i.k = add i32 %i.j, %i.f
  br label %__raw_uncore_read32.exit.i

__raw_uncore_read32.exit.i:                       ; preds = %bb.b, %bb.a
  %.0.i.i = phi i32 [ %i.k, %bb.b ], [ %i.f, %bb.a ]
  %i.l = load ptr, ptr %i.g, align 8
  %i.m = zext i32 %.0.i.i to i64
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.n) #11, !srcloc !24 ; 7 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #11
          to label %intel_de_read_fw.exit [label %arch_test_bit.exit.i.i.i], !srcloc !25

arch_test_bit.exit.i.i.i:                         ; preds = %__raw_uncore_read32.exit.i
  %i.q = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #11, !srcloc !26
  %i.r = zext i32 %i.q to i64
  %i.s = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.r) #11, !srcloc !27 ; 2 uses
  %i.t = icmp ult i8 %i.s, 2
  tail call void @llvm.assume(i1 %i.t)
  %i.u = trunc nuw i8 %i.s to i1
  br i1 %i.u, label %bb.c, label %intel_de_read_fw.exit

bb.c:                                             ; preds = %arch_test_bit.exit.i.i.i
  %i.v = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.v, ptr elementtype(i64) %i.v) #11, !srcloc !28
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !29
  %i.w = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.y, i1 noundef zeroext false, i32 %i.f, i64 noundef range(i64 0, 4294967296) %i.p, i32 noundef 4, i1 noundef zeroext true) #9 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !30
  %i.aa = getelementptr i8, ptr %i.v, i64 8       ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aa, ptr elementtype(i64) %i.aa) #11, !srcloc !31
  br label %intel_de_read_fw.exit

intel_de_read_fw.exit:                            ; preds = %__raw_uncore_read32.exit.i, %arch_test_bit.exit.i.i.i, %bb.e
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #11
          to label %trace_i915_reg_rw.exit.i [label %arch_test_bit.exit.i.i.i51], !srcloc !25

arch_test_bit.exit.i.i.i51:                       ; preds = %intel_de_read_fw.exit
  %i.ab = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #11, !srcloc !26
  %i.ac = zext i32 %i.ab to i64
  %i.ad = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ac) #11, !srcloc !27 ; 2 uses
  %i.ae = icmp ult i8 %i.ad, 2
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = trunc nuw i8 %i.ad to i1
  br i1 %i.af, label %bb.f, label %trace_i915_reg_rw.exit.i

bb.f:                                             ; preds = %arch_test_bit.exit.i.i.i51
  %i.ag = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ag, ptr elementtype(i64) %i.ag) #11, !srcloc !28
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !29
  %i.ah = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i53, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.aj, i1 noundef zeroext true, i32 %i.f, i64 noundef range(i64 0, 4294967296) %i.p, i32 noundef 4, i1 noundef zeroext true) #9 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !30
  %i.al = getelementptr i8, ptr %i.ag, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.al, ptr elementtype(i64) %i.al) #11, !srcloc !31
  br label %trace_i915_reg_rw.exit.i

trace_i915_reg_rw.exit.i:                         ; preds = %bb.h, %arch_test_bit.exit.i.i.i51, %intel_de_read_fw.exit
  %.val.i = load ptr, ptr %0, align 8
  %i.am = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #9 ; 2 uses
  br i1 %i.h, label %bb.i, label %intel_de_write_fw.exit

bb.i:                                             ; preds = %trace_i915_reg_rw.exit.i
  %i.an = getelementptr i8, ptr %i.am, i64 36
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = add i32 %i.ao, %i.f
  br label %intel_de_write_fw.exit

intel_de_write_fw.exit:                           ; preds = %trace_i915_reg_rw.exit.i, %bb.i
  %.0.i.i52 = phi i32 [ %i.ap, %bb.i ], [ %i.f, %trace_i915_reg_rw.exit.i ]
  %i.aq = load ptr, ptr %i.am, align 8
  %i.ar = zext i32 %.0.i.i52 to i64
  %i.as = getelementptr i8, ptr %i.aq, i64 %i.ar
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.o, ptr elementtype(i32) %i.as) #11, !srcloc !32
  %i.at = and i32 %i.o, 1
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %intel_de_write_fw.exit
  %i.au = load ptr, ptr %0, align 8
  %i.av = getelementptr i8, ptr %i.au, i64 328
  tail call void @_raw_spin_lock(ptr noundef %i.av) #9
  %i.aw = getelementptr i8, ptr %i.a, i64 1736    ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %.not44 = icmp eq ptr %i.ax, null
  br i1 %.not44, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = tail call i64 @drm_crtc_accurate_vblank_count(ptr noundef %i.a) #9 ; 0 uses
  %i.az = load ptr, ptr %i.aw, align 8
  tail call void @drm_crtc_send_vblank_event(ptr noundef %i.a, ptr noundef %i.az) #9
  store ptr null, ptr %i.aw, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ba = load ptr, ptr %0, align 8
  %i.bb = getelementptr i8, ptr %i.ba, i64 328
  tail call void @_raw_spin_unlock(ptr noundef %i.bb) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %intel_de_write_fw.exit
  %i.bc = getelementptr i8, ptr %0, i64 1168
  %.val = load i16, ptr %i.bc, align 8            ; 2 uses
  %i.bd = icmp ugt i16 %.val, 13
  %spec.select.i = select i1 %i.bd, i32 30, i32 14 ; 2 uses
  %i.be = icmp ugt i16 %.val, 29
  %3 = or disjoint i32 %spec.select.i, 32
  %.1.i = select i1 %i.be, i32 %3, i32 %spec.select.i
  %i.bf = and i32 %.1.i, %i.o                     ; 2 uses
  %i.bg = and i32 %i.bf, 16
  %.not45 = icmp eq i32 %i.bg, 0
  br i1 %.not45, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.n, %bb.o
  %i.bk = phi ptr [ %i.bj, %bb.o ], [ null, %bb.n ]
  %i.bl = getelementptr i8, ptr %i.a, i64 88
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = getelementptr i8, ptr %i.a, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bk, ptr noundef @.str.6, i32 noundef %i.bm, ptr noundef %i.bo, i32 noundef %2) #12
  br label %bb.p

bb.p:                                             ; preds = %__drm_to_dev.exit, %bb.m
  %i.bp = and i32 %i.o, 8
  %.not46 = icmp eq i32 %i.bp, 0
  br i1 %.not46, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i56 = icmp eq ptr %i.bq, null
  br i1 %.not.i56, label %__drm_to_dev.exit57, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  br label %__drm_to_dev.exit57

__drm_to_dev.exit57:                              ; preds = %bb.q, %bb.r
  %i.bt = phi ptr [ %i.bs, %bb.r ], [ null, %bb.q ]
  %i.bu = getelementptr i8, ptr %i.a, i64 88
  %i.bv = load i32, ptr %i.bu, align 8
  %i.bw = getelementptr i8, ptr %i.a, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bt, ptr noundef @.str.7, i32 noundef %i.bv, ptr noundef %i.bx, i32 noundef %2) #12
  br label %bb.s

bb.s:                                             ; preds = %__drm_to_dev.exit57, %bb.p
  %i.by = and i32 %i.o, 4
  %.not47 = icmp eq i32 %i.by, 0
  br i1 %.not47, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i58 = icmp eq ptr %i.bz, null
  br i1 %.not.i58, label %__drm_to_dev.exit59, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  br label %__drm_to_dev.exit59

__drm_to_dev.exit59:                              ; preds = %bb.t, %bb.u
  %i.cc = phi ptr [ %i.cb, %bb.u ], [ null, %bb.t ]
  %i.cd = getelementptr i8, ptr %i.a, i64 88
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = getelementptr i8, ptr %i.a, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.cc, ptr noundef @.str.8, i32 noundef %i.ce, ptr noundef %i.cg, i32 noundef %2) #12
  br label %bb.v

bb.v:                                             ; preds = %__drm_to_dev.exit59, %bb.s
  %i.ch = and i32 %i.o, 2
  %.not48 = icmp eq i32 %i.ch, 0
  br i1 %.not48, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i60 = icmp eq ptr %i.ci, null
  br i1 %.not.i60, label %__drm_to_dev.exit61, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  br label %__drm_to_dev.exit61

__drm_to_dev.exit61:                              ; preds = %bb.w, %bb.x
  %i.cl = phi ptr [ %i.ck, %bb.x ], [ null, %bb.w ]
  %i.cm = getelementptr i8, ptr %i.a, i64 88
  %i.cn = load i32, ptr %i.cm, align 8
  %i.co = getelementptr i8, ptr %i.a, i64 32
  %i.cp = load ptr, ptr %i.co, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.cl, ptr noundef @.str.9, i32 noundef %i.cn, ptr noundef %i.cp, i32 noundef %2) #12
  br label %bb.y

bb.y:                                             ; preds = %__drm_to_dev.exit61, %bb.v
  %.not49 = icmp samesign ult i32 %i.bf, 32
  br i1 %.not49, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i62 = icmp eq ptr %i.cq, null
  br i1 %.not.i62, label %__drm_to_dev.exit63, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  br label %__drm_to_dev.exit63

__drm_to_dev.exit63:                              ; preds = %bb.z, %bb.aa
  %i.ct = phi ptr [ %i.cs, %bb.aa ], [ null, %bb.z ]
  %i.cu = getelementptr i8, ptr %i.a, i64 88
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = getelementptr i8, ptr %i.a, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ct, ptr noundef @.str.10, i32 noundef %i.cv, ptr noundef %i.cx, i32 noundef %2) #12
  br label %bb.ab

bb.ab:                                            ; preds = %__drm_to_dev.exit63, %bb.y
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_crtc_for_pipe(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @drm_crtc_accurate_vblank_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_vrr_vmax_vtotal(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_mode_vtotal(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_crtc_vrr_disabling(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_mode_vdisplay(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_i915_reg_rw(ptr noundef, i1 noundef zeroext, i32, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @to_intel_uncore(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usleep_range_state(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_psr_use_trans_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_crtc_scanline_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @skl_watermark_max_latency(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

attributes #0 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noredzone nounwind "no-builtin-wcslen" }
attributes #10 = { noredzone "no-builtin-wcslen" }
attributes #11 = { nounwind }
attributes #12 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #13 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
end_hunk_2
