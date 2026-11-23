Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_ddi?download=true
inline.NumInlined: 867
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@intel_ddi_level:bb.a

enc_to_intel_dp.exit:                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.l, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i
  %.0.i.i = phi ptr [ %0, %bb.k ], [ %i.ag, %bb.l ], [ %0, %bb.k ], [ %0, %bb.k ], [ %0, %bb.k ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i ] ; 2 uses
  %i.ah = getelementptr i8, ptr %.0.i.i, i64 2124
  %i.ai = sext i32 %2 to i64
  %i.aj = getelementptr i8, ptr %i.ah, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1             ; 2 uses
  %i.al = call zeroext i1 @intel_dp_is_uhbr(ptr noundef %1) #10
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %enc_to_intel_dp.exit
  %i.am = and i8 %i.ak, 15
  %i.an = zext nneg i8 %i.am to i32
  br label %intel_ddi_hdmi_level.exit

bb.n:                                             ; preds = %enc_to_intel_dp.exit
  %i.ao = and i8 %i.ak, 27                        ; 2 uses
  %.val.i54 = load ptr, ptr %.0.i.i, align 8      ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i54, null
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = call ptr @__drm_to_display(ptr noundef nonnull %.val.i54) #10
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.aq = phi ptr [ %i.ap, %bb.o ], [ null, %bb.n ] ; 3 uses
  switch i8 %i.ao, label %bb.q [
    i8 0, label %intel_ddi_hdmi_level.exit
    i8 8, label %.loopexit.fold.split.i.i
    i8 16, label %.loopexit.fold.split10.i.i
    i8 24, label %.loopexit.fold.split11.i.i
    i8 1, label %.loopexit.fold.split12.i.i
    i8 9, label %.loopexit.fold.split13.i.i
    i8 17, label %.loopexit.fold.split14.i.i
    i8 2, label %.loopexit.fold.split15.i.i
    i8 10, label %.loopexit.fold.split16.i.i
    i8 3, label %.loopexit.fold.split17.i.i
  ]

bb.q:                                             ; preds = %bb.p
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %__drm_to_dev.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  br label %__drm_to_dev.exit.i.i

__drm_to_dev.exit.i.i:                            ; preds = %bb.r, %bb.q
  %i.au = phi ptr [ %i.at, %bb.r ], [ null, %bb.q ]
  %i.av = call ptr @dev_driver_string(ptr noundef %i.au) #10 ; 0 uses
  %i.aw = zext nneg i8 %i.ao to i32
  %i.ax = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.38, ptr @.str.2, i32 1485, i32 2321, i64 16) #11, !srcloc !60
  %i.ay = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not.i26.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i26.i.i, label %__drm_to_dev.exit27.i.i, label %bb.s

bb.s:                                             ; preds = %__drm_to_dev.exit.i.i
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  br label %__drm_to_dev.exit27.i.i

__drm_to_dev.exit27.i.i:                          ; preds = %bb.s, %__drm_to_dev.exit.i.i
  %i.bb = phi ptr [ %i.ba, %bb.s ], [ null, %__drm_to_dev.exit.i.i ]
  %i.bc = call ptr @dev_driver_string(ptr noundef %i.bb) #10
  %i.bd = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not.i28.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i28.i.i, label %__drm_to_dev.exit29.i.i, label %bb.t

bb.t:                                             ; preds = %__drm_to_dev.exit27.i.i
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  br label %__drm_to_dev.exit29.i.i

__drm_to_dev.exit29.i.i:                          ; preds = %bb.t, %__drm_to_dev.exit27.i.i
  %i.bg = phi ptr [ %i.bf, %bb.t ], [ null, %__drm_to_dev.exit27.i.i ] ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 80
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not.i30.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i30.i.i, label %bb.u, label %dev_name.exit33.i.i

bb.u:                                             ; preds = %__drm_to_dev.exit29.i.i
  %.val.i32.i.i = load ptr, ptr %i.bg, align 8
  br label %dev_name.exit33.i.i

dev_name.exit33.i.i:                              ; preds = %bb.u, %__drm_to_dev.exit29.i.i
  %.0.i31.i.i = phi ptr [ %.val.i32.i.i, %bb.u ], [ %i.bi, %__drm_to_dev.exit29.i.i ]
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ax, ptr noundef %i.bc, ptr noundef %.0.i31.i.i, i32 noundef %i.aw) #10
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !61
  br label %intel_ddi_hdmi_level.exit

.loopexit.fold.split.i.i:                         ; preds = %bb.p
  br label %intel_ddi_hdmi_level.exit

.loopexit.fold.split10.i.i:                       ; preds = %bb.p
  br label %intel_ddi_hdmi_level.exit

.loopexit.fold.split11.i.i:                       ; preds = %bb.p
  br label %intel_ddi_hdmi_level.exit

.loopexit.fold.split12.i.i:                       ; preds = %bb.p
  br label %intel_ddi_hdmi_level.exit

.loopexit.fold.split13.i.i:                       ; preds = %bb.p
  br label %intel_ddi_hdmi_level.exit

.loopexit.fold.split14.i.i:                       ; preds = %bb.p
  br label %intel_ddi_hdmi_level.exit

.loopexit.fold.split15.i.i:                       ; preds = %bb.p
  br label %intel_ddi_hdmi_level.exit

.loopexit.fold.split16.i.i:                       ; preds = %bb.p
  br label %intel_ddi_hdmi_level.exit

.loopexit.fold.split17.i.i:                       ; preds = %bb.p
  br label %intel_ddi_hdmi_level.exit

intel_ddi_hdmi_level.exit:                        ; preds = %.loopexit.fold.split17.i.i, %.loopexit.fold.split16.i.i, %.loopexit.fold.split15.i.i, %.loopexit.fold.split14.i.i, %.loopexit.fold.split13.i.i, %.loopexit.fold.split12.i.i, %.loopexit.fold.split11.i.i, %.loopexit.fold.split10.i.i, %.loopexit.fold.split.i.i, %dev_name.exit33.i.i, %bb.p, %bb.m, %bb.j, %bb.i
  %.035 = phi i32 [ %i.z, %bb.i ], [ %i.ad, %bb.j ], [ %i.an, %bb.m ], [ 0, %dev_name.exit33.i.i ], [ 0, %bb.p ], [ 8, %.loopexit.fold.split16.i.i ], [ 1, %.loopexit.fold.split.i.i ], [ 2, %.loopexit.fold.split10.i.i ], [ 3, %.loopexit.fold.split11.i.i ], [ 4, %.loopexit.fold.split12.i.i ], [ 5, %.loopexit.fold.split13.i.i ], [ 6, %.loopexit.fold.split14.i.i ], [ 7, %.loopexit.fold.split15.i.i ], [ 9, %.loopexit.fold.split17.i.i ] ; 2 uses
  %i.bj = load i32, ptr %i.a, align 4
  %.not38 = icmp slt i32 %.035, %i.bj
  br i1 %.not38, label %.critedge40, label %bb.v, !prof !25

bb.v:                                             ; preds = %intel_ddi_hdmi_level.exit
  %i.bk = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i56 = icmp eq ptr %i.bk, null
  br i1 %.not.i56, label %__drm_to_dev.exit57, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  br label %__drm_to_dev.exit57

__drm_to_dev.exit57:                              ; preds = %bb.v, %bb.w
  %i.bn = phi ptr [ %i.bm, %bb.w ], [ null, %bb.v ]
  %i.bo = call ptr @dev_driver_string(ptr noundef %i.bn) #10 ; 0 uses
  %i.bp = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.2, i32 1524, i32 2323, i64 16) #11, !srcloc !62
  %i.bq = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i64 = icmp eq ptr %i.bq, null
  br i1 %.not.i64, label %__drm_to_dev.exit65, label %bb.x

bb.x:                                             ; preds = %__drm_to_dev.exit57
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  br label %__drm_to_dev.exit65

__drm_to_dev.exit65:                              ; preds = %__drm_to_dev.exit57, %bb.x
  %i.bt = phi ptr [ %i.bs, %bb.x ], [ null, %__drm_to_dev.exit57 ]
  %i.bu = call ptr @dev_driver_string(ptr noundef %i.bt) #10
  %i.bv = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i66 = icmp eq ptr %i.bv, null
  br i1 %.not.i66, label %__drm_to_dev.exit67, label %bb.y

bb.y:                                             ; preds = %__drm_to_dev.exit65
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  br label %__drm_to_dev.exit67

__drm_to_dev.exit67:                              ; preds = %__drm_to_dev.exit65, %bb.y
  %i.by = phi ptr [ %i.bx, %bb.y ], [ null, %__drm_to_dev.exit65 ] ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 80
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %.not.i68 = icmp eq ptr %i.ca, null
  br i1 %.not.i68, label %bb.z, label %dev_name.exit71

bb.z:                                             ; preds = %__drm_to_dev.exit67
  %.val.i70 = load ptr, ptr %i.by, align 8
  br label %dev_name.exit71

dev_name.exit71:                                  ; preds = %__drm_to_dev.exit67, %bb.z
  %.0.i69 = phi ptr [ %.val.i70, %bb.z ], [ %i.ca, %__drm_to_dev.exit67 ]
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bp, ptr noundef %i.bu, ptr noundef %.0.i69, ptr noundef @.str.12) #10
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !63
  %i.cb = load i32, ptr %i.a, align 4
  %i.cc = add i32 %i.cb, -1
  br label %.critedge40

.critedge40:                                      ; preds = %dev_name.exit52, %dev_name.exit71, %intel_ddi_hdmi_level.exit
  %.0 = phi i32 [ 0, %dev_name.exit52 ], [ %i.cc, %dev_name.exit71 ], [ %.035, %intel_ddi_hdmi_level.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @icl_ddi_combo_get_pll(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.d = tail call i32 @intel_encoder_to_phy(ptr noundef %0) #10
  %1 = shl i32 %i.d, 1                            ; 2 uses
  %i.e = shl i32 3, %1
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 1458816) #10
  %.val.i.i = load ptr, ptr %i.c, align 8
  %i.f = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #10 ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 144
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i32 %i.h(ptr noundef %i.f, i32 1458816, i1 noundef zeroext true) #10, !inline_history !64
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 1458816) #10
  %2 = and i32 %i.i, %i.e
  %3 = lshr i32 %2, %1
  %i.j = tail call ptr @intel_get_dpll_by_id(ptr noundef %i.c, i32 noundef %3) #10
  ret ptr %i.j
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @hsw_ddi_enable_clock(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 6 uses
  %i.d = getelementptr i8, ptr %1, i64 936
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not18 = icmp eq ptr %i.e, null
  br i1 %.not18, label %bb.d, label %.critedge, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.d, %bb.e
  %i.i = phi ptr [ %i.h, %bb.e ], [ null, %bb.d ]
  %i.j = tail call ptr @dev_driver_string(ptr noundef %i.i) #10 ; 0 uses
  %i.k = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.2, i32 2026, i32 2321, i64 16) #11, !srcloc !65
  %i.l = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i22 = icmp eq ptr %i.l, null
  br i1 %.not.i22, label %__drm_to_dev.exit23, label %bb.f

bb.f:                                             ; preds = %__drm_to_dev.exit
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  br label %__drm_to_dev.exit23

__drm_to_dev.exit23:                              ; preds = %__drm_to_dev.exit, %bb.f
  %i.o = phi ptr [ %i.n, %bb.f ], [ null, %__drm_to_dev.exit ]
  %i.p = tail call ptr @dev_driver_string(ptr noundef %i.o) #10
  %i.q = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i24 = icmp eq ptr %i.q, null
  br i1 %.not.i24, label %__drm_to_dev.exit25, label %bb.g

bb.g:                                             ; preds = %__drm_to_dev.exit23
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  br label %__drm_to_dev.exit25

__drm_to_dev.exit25:                              ; preds = %__drm_to_dev.exit23, %bb.g
  %i.t = phi ptr [ %i.s, %bb.g ], [ null, %__drm_to_dev.exit23 ] ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 80
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i26 = icmp eq ptr %i.v, null
  br i1 %.not.i26, label %bb.h, label %dev_name.exit29

bb.h:                                             ; preds = %__drm_to_dev.exit25
  %.val.i28 = load ptr, ptr %i.t, align 8
  br label %dev_name.exit29

dev_name.exit29:                                  ; preds = %__drm_to_dev.exit25, %bb.h
  %.0.i27 = phi ptr [ %.val.i28, %bb.h ], [ %i.v, %__drm_to_dev.exit25 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.k, ptr noundef %i.p, ptr noundef %.0.i27, ptr noundef @.str.13) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !66
  br label %bb.o

.critedge:                                        ; preds = %bb.c
  %i.w = getelementptr i8, ptr %0, i64 156
  %i.x = load i32, ptr %i.w, align 4
  %i.y = shl i32 %i.x, 2
  %i.z = add i32 %i.y, 286976                     ; 3 uses
  %i.aa = getelementptr i8, ptr %i.e, i64 96      ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %i.ad = load i32, ptr %i.ac, align 8
  switch i32 %i.ad, label %bb.n [
    i32 0, label %hsw_pll_to_ddi_pll_sel.exit
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.k
    i32 4, label %bb.l
    i32 5, label %bb.m
  ]

bb.i:                                             ; preds = %.critedge
  br label %hsw_pll_to_ddi_pll_sel.exit

bb.j:                                             ; preds = %.critedge
  br label %hsw_pll_to_ddi_pll_sel.exit

bb.k:                                             ; preds = %.critedge
  br label %hsw_pll_to_ddi_pll_sel.exit

bb.l:                                             ; preds = %.critedge
  br label %hsw_pll_to_ddi_pll_sel.exit

bb.m:                                             ; preds = %.critedge
  br label %hsw_pll_to_ddi_pll_sel.exit

bb.n:                                             ; preds = %.critedge
  %i.ae = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, ptr @.str.2, i32 262, i32 2321, i64 16) #11, !srcloc !67
  %i.af = load ptr, ptr %i.aa, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = sext i32 %i.ah to i64
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ae, ptr noundef @.str.39, i64 noundef %i.ai) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !68
  br label %hsw_pll_to_ddi_pll_sel.exit

hsw_pll_to_ddi_pll_sel.exit:                      ; preds = %.critedge, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.0.i30 = phi i32 [ -536870912, %bb.n ], [ 0, %bb.m ], [ -1610612736, %bb.i ], [ 1610612736, %bb.j ], [ 1073741824, %bb.k ], [ 536870912, %bb.l ], [ -2147483648, %.critedge ]
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.z) #10
  %.val.i31 = load ptr, ptr %i.c, align 8
  %i.aj = tail call ptr @to_intel_uncore(ptr noundef %.val.i31) #10 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 176
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef %i.aj, i32 %i.z, i32 noundef %.0.i30, i1 noundef zeroext true) #10, !inline_history !0
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.z) #10
  br label %bb.o

bb.o:                                             ; preds = %dev_name.exit29, %hsw_pll_to_ddi_pll_sel.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @hsw_ddi_disable_clock(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 156
  %i.e = load i32, ptr %i.d, align 4
  %i.f = shl i32 %i.e, 2
  %i.g = add i32 %i.f, 286976                     ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.g) #10
  %.val.i = load ptr, ptr %i.c, align 8
  %i.h = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #10 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 176
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef %i.h, i32 %i.g, i32 noundef -536870912, i1 noundef zeroext true) #10, !inline_history !0
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.g) #10
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @hsw_ddi_is_clock_enabled(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 156
  %i.e = load i32, ptr %i.d, align 4
  %i.f = shl i32 %i.e, 2
  %i.g = add i32 %i.f, 286976                     ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.g) #10
  %.val.i = load ptr, ptr %i.c, align 8
  %i.h = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #10 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 144
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 %i.j(ptr noundef %i.h, i32 %i.g, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.g) #10
  %i.l = icmp ne i32 %i.k, -536870912
  ret i1 %i.l
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_ddi_enable_clock(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 440
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b(ptr noundef %0, ptr noundef %1) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
end_hunk_0
begin_hunk_1_@bxt_ddi_get_config:bb.a
; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @skl_ddi_enable_clock(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 7 uses
  %i.d = getelementptr i8, ptr %1, i64 936
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not23 = icmp eq ptr %i.e, null
  br i1 %.not23, label %bb.d, label %.critedge, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.d, %bb.e
  %i.i = phi ptr [ %i.h, %bb.e ], [ null, %bb.d ]
  %i.j = tail call ptr @dev_driver_string(ptr noundef %i.i) #10 ; 0 uses
  %i.k = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.2, i32 1958, i32 2321, i64 16) #11, !srcloc !254
  %i.l = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i27 = icmp eq ptr %i.l, null
  br i1 %.not.i27, label %__drm_to_dev.exit28, label %bb.f

bb.f:                                             ; preds = %__drm_to_dev.exit
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  br label %__drm_to_dev.exit28

__drm_to_dev.exit28:                              ; preds = %__drm_to_dev.exit, %bb.f
  %i.o = phi ptr [ %i.n, %bb.f ], [ null, %__drm_to_dev.exit ]
  %i.p = tail call ptr @dev_driver_string(ptr noundef %i.o) #10
  %i.q = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i29 = icmp eq ptr %i.q, null
  br i1 %.not.i29, label %__drm_to_dev.exit30, label %bb.g

bb.g:                                             ; preds = %__drm_to_dev.exit28
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  br label %__drm_to_dev.exit30

__drm_to_dev.exit30:                              ; preds = %__drm_to_dev.exit28, %bb.g
  %i.t = phi ptr [ %i.s, %bb.g ], [ null, %__drm_to_dev.exit28 ] ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 80
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i31 = icmp eq ptr %i.v, null
  br i1 %.not.i31, label %bb.h, label %dev_name.exit34

bb.h:                                             ; preds = %__drm_to_dev.exit30
  %.val.i33 = load ptr, ptr %i.t, align 8
  br label %dev_name.exit34

dev_name.exit34:                                  ; preds = %__drm_to_dev.exit30, %bb.h
  %.0.i32 = phi ptr [ %.val.i33, %bb.h ], [ %i.v, %__drm_to_dev.exit30 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.k, ptr noundef %i.p, ptr noundef %.0.i32, ptr noundef @.str.13) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !255
  br label %bb.i

.critedge:                                        ; preds = %bb.c
  %i.w = getelementptr i8, ptr %0, i64 156
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 3360     ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.y) #10
  %i.z = add i32 %i.x, 15
  %i.aa = shl nuw i32 1, %i.z
  %i.ab = mul i32 %i.x, 3                         ; 2 uses
  %i.ac = add i32 %i.ab, 1                        ; 2 uses
  %i.ad = shl i32 3, %i.ac
  %i.ae = or i32 %i.ad, %i.aa
  %i.af = getelementptr i8, ptr %i.e, i64 96
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = shl i32 %i.ai, %i.ac
  %i.ak = shl nuw i32 1, %i.ab
  %i.al = or i32 %i.aj, %i.ak
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 442460) #10
  %.val.i35 = load ptr, ptr %i.c, align 8
  %i.am = tail call ptr @to_intel_uncore(ptr noundef %.val.i35) #10 ; 4 uses
  %i.an = getelementptr i8, ptr %i.am, i64 144
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call i32 %i.ao(ptr noundef %i.am, i32 442460, i1 noundef zeroext true) #10, !inline_history !2
  %i.aq = xor i32 %i.ae, -1
  %i.ar = and i32 %i.ap, %i.aq
  %i.as = or i32 %i.al, %i.ar
  %i.at = getelementptr i8, ptr %i.am, i64 176
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef %i.am, i32 442460, i32 noundef %i.as, i1 noundef zeroext true) #10, !inline_history !3
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 442460) #10
  tail call void @mutex_unlock(ptr noundef %i.y) #10
  br label %bb.i

bb.i:                                             ; preds = %dev_name.exit34, %.critedge
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @skl_ddi_disable_clock(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 156
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr i8, ptr %i.c, i64 3360     ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.f) #10
  %i.g = add i32 %i.e, 15
  %i.h = shl nuw i32 1, %i.g
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 442460) #10
  %.val.i = load ptr, ptr %i.c, align 8
  %i.i = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #10 ; 4 uses
  %i.j = getelementptr i8, ptr %i.i, i64 144
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 %i.k(ptr noundef %i.i, i32 442460, i1 noundef zeroext true) #10, !inline_history !2
  %i.m = or i32 %i.l, %i.h
  %i.n = getelementptr i8, ptr %i.i, i64 176
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef %i.i, i32 442460, i32 noundef %i.m, i1 noundef zeroext true) #10, !inline_history !3
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 442460) #10
  tail call void @mutex_unlock(ptr noundef %i.f) #10
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @skl_ddi_is_clock_enabled(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 156
  %i.e = load i32, ptr %i.d, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 442460) #10
  %.val.i = load ptr, ptr %i.c, align 8
  %i.f = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #10 ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 144
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i32 %i.h(ptr noundef %i.f, i32 442460, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 442460) #10
  %i.j = add i32 %i.e, 15
  %i.k = shl nuw i32 1, %i.j
  %i.l = and i32 %i.i, %i.k
  %.not4 = icmp eq i32 %i.l, 0
  ret i1 %.not4
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @skl_ddi_get_config(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 156
  %i.e = load i32, ptr %i.d, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 442460) #10
  %.val.i.i = load ptr, ptr %i.c, align 8
  %i.f = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #10 ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 144
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i32 %i.h(ptr noundef %i.f, i32 442460, i1 noundef zeroext true) #10, !inline_history !256 ; 2 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 442460) #10
  %i.j = mul i32 %i.e, 3                          ; 2 uses
  %i.k = shl nuw i32 1, %i.j
  %i.l = and i32 %i.i, %i.k
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %skl_ddi_get_pll.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add i32 %i.j, 1                          ; 2 uses
  %2 = shl i32 3, %i.n
  %i.o = and i32 %i.i, %2
  %3 = lshr i32 %i.o, %i.n
  %i.p = tail call ptr @intel_get_dpll_by_id(ptr noundef %i.c, i32 noundef %3) #10
  br label %skl_ddi_get_pll.exit

skl_ddi_get_pll.exit:                             ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.p, %bb.d ], [ null, %bb.c ]
  tail call void @intel_ddi_get_clock(ptr noundef %0, ptr noundef %1, ptr noundef %.0.i) #13
  tail call fastcc void @intel_ddi_get_config(ptr noundef %0, ptr noundef %1) #13, !srcloc !257
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_lt_phy_set_signal_levels(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_cx0_phy_set_signal_levels(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_snps_phy_set_signal_levels(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_encoder_is_combo(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @icl_combo_phy_set_signal_levels(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %icl_combo_phy_loadgen_select.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #10
  br label %icl_combo_phy_loadgen_select.exit

icl_combo_phy_loadgen_select.exit:                ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 33 uses
  %i.e = tail call i32 @intel_encoder_to_phy(ptr noundef %0) #10
  %i.f = sext i32 %i.e to i64                     ; 8 uses
  %i.g = getelementptr [4 x i8], ptr @constinit.113, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4
  %i.i = add i32 %i.h, 2052                       ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.d, i32 %i.i) #10
  %.val.i = load ptr, ptr %i.d, align 8
  %i.j = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #10 ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 144
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i32 %i.l(ptr noundef %i.j, i32 %i.i, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.d, i32 %i.i) #10
  %i.n = getelementptr i8, ptr %1, i64 888        ; 2 uses
  %.val = load i32, ptr %i.n, align 8
  %i.o = and i32 %i.m, -67108865
  %i.p = shl i32 %.val, 20
  %i.q = and i32 %i.p, 67108864
  %i.r = or disjoint i32 %i.q, %i.o
  %.0 = xor i32 %i.r, 67108864
  %i.s = getelementptr [4 x i8], ptr @constinit.113, i64 %i.f
  %i.t = load i32, ptr %i.s, align 4
  %i.u = add i32 %i.t, 1540                       ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.d, i32 %i.u) #10
  %.val.i42 = load ptr, ptr %i.d, align 8
  %i.v = tail call ptr @to_intel_uncore(ptr noundef %.val.i42) #10 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 176
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef %i.v, i32 %i.u, i32 noundef %.0, i1 noundef zeroext true) #10, !inline_history !0
  tail call void @intel_dmc_wl_put(ptr noundef %i.d, i32 %i.u) #10
  %i.y = getelementptr [4 x i8], ptr @constinit.113, i64 %i.f
  %i.z = load i32, ptr %i.y, align 4              ; 4 uses
  %invariant.op = add i32 %i.z, 2192              ; 4 uses
  %i.aa = getelementptr i8, ptr %1, i64 1320      ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.d, i32 %invariant.op) #10
  %.val.i43 = load ptr, ptr %i.d, align 8
  %i.ab = tail call ptr @to_intel_uncore(ptr noundef %.val.i43) #10 ; 4 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 144
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call i32 %i.ad(ptr noundef %i.ab, i32 %invariant.op, i1 noundef zeroext true) #10, !inline_history !2
  %i.af = and i32 %i.ae, 2147483647
  %i.ag = getelementptr i8, ptr %i.ab, i64 176
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef %i.ab, i32 %invariant.op, i32 noundef %i.af, i1 noundef zeroext true) #10, !inline_history !3
  tail call void @intel_dmc_wl_put(ptr noundef %i.d, i32 %invariant.op) #10
  %.reass.1 = add i32 %i.z, 2448                  ; 4 uses
  %i.ai = load i32, ptr %i.aa, align 8
  %i.aj = icmp sgt i32 %i.ai, 600000
  %.0.i.1 = select i1 %i.aj, i32 0, i32 -2147483648
  tail call void @intel_dmc_wl_get(ptr noundef %i.d, i32 %.reass.1) #10
  %.val.i43.1 = load ptr, ptr %i.d, align 8
  %i.ak = tail call ptr @to_intel_uncore(ptr noundef %.val.i43.1) #10 ; 4 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 144
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call i32 %i.am(ptr noundef %i.ak, i32 %.reass.1, i1 noundef zeroext true) #10, !inline_history !2
  %i.ao = and i32 %i.an, 2147483647
  %i.ap = or disjoint i32 %i.ao, %.0.i.1
  %i.aq = getelementptr i8, ptr %i.ak, i64 176
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef %i.ak, i32 %.reass.1, i32 noundef %i.ap, i1 noundef zeroext true) #10, !inline_history !3
  tail call void @intel_dmc_wl_put(ptr noundef %i.d, i32 %.reass.1) #10
  %.reass.2 = add i32 %i.z, 2704                  ; 4 uses
  %i.as = load i32, ptr %i.aa, align 8
  %i.at = icmp sgt i32 %i.as, 600000
  %.0.i.2 = select i1 %i.at, i32 0, i32 -2147483648
  tail call void @intel_dmc_wl_get(ptr noundef %i.d, i32 %.reass.2) #10
  %.val.i43.2 = load ptr, ptr %i.d, align 8
  %i.au = tail call ptr @to_intel_uncore(ptr noundef %.val.i43.2) #10 ; 4 uses
  %i.av = getelementptr i8, ptr %i.au, i64 144
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call i32 %i.aw(ptr noundef %i.au, i32 %.reass.2, i1 noundef zeroext true) #10, !inline_history !2
  %i.ay = and i32 %i.ax, 2147483647
  %i.az = or disjoint i32 %i.ay, %.0.i.2
  %i.ba = getelementptr i8, ptr %i.au, i64 176
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef %i.au, i32 %.reass.2, i32 noundef %i.az, i1 noundef zeroext true) #10, !inline_history !3
  tail call void @intel_dmc_wl_put(ptr noundef %i.d, i32 %.reass.2) #10
  %.reass.3 = add i32 %i.z, 2960                  ; 4 uses
  %i.bc = load i32, ptr %i.aa, align 8
  %i.bd = icmp sgt i32 %i.bc, 600000
  br i1 %i.bd, label %icl_combo_phy_loadgen_select.exit.3, label %bb.c

bb.c:                                             ; preds = %icl_combo_phy_loadgen_select.exit
  %i.be = getelementptr i8, ptr %1, i64 1329
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = icmp eq i8 %i.bf, 4
  %spec.select = select i1 %i.bg, i32 -2147483648, i32 0
  br label %icl_combo_phy_loadgen_select.exit.3

icl_combo_phy_loadgen_select.exit.3:              ; preds = %bb.c, %icl_combo_phy_loadgen_select.exit
  %.0.i.3 = phi i32 [ 0, %icl_combo_phy_loadgen_select.exit ], [ %spec.select, %bb.c ]
  tail call void @intel_dmc_wl_get(ptr noundef %i.d, i32 %.reass.3) #10
  %.val.i43.3 = load ptr, ptr %i.d, align 8
  %i.bh = tail call ptr @to_intel_uncore(ptr noundef %.val.i43.3) #10 ; 4 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call i32 %i.bj(ptr noundef %i.bh, i32 %.reass.3, i1 noundef zeroext true) #10, !inline_history !2
  %i.bl = and i32 %i.bk, 2147483647
  %i.bm = or disjoint i32 %i.bl, %.0.i.3
  %i.bn = getelementptr i8, ptr %i.bh, i64 176
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void %i.bo(ptr noundef %i.bh, i32 %.reass.3, i32 noundef %i.bm, i1 noundef zeroext true) #10, !inline_history !3
  tail call void @intel_dmc_wl_put(ptr noundef %i.d, i32 %.reass.3) #10
  %i.bp = getelementptr [4 x i8], ptr @constinit.113, i64 %i.f
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = add i32 %i.bq, 20                       ; 4 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.d, i32 %i.br) #10
  %.val.i44 = load ptr, ptr %i.d, align 8
  %i.bs = tail call ptr @to_intel_uncore(ptr noundef %.val.i44) #10 ; 4 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 144
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call i32 %i.bu(ptr noundef %i.bs, i32 %i.br, i1 noundef zeroext true) #10, !inline_history !2
  %i.bw = or i32 %i.bv, 3
  %i.bx = getelementptr i8, ptr %i.bs, i64 176
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void %i.by(ptr noundef %i.bs, i32 %i.br, i32 noundef %i.bw, i1 noundef zeroext true) #10, !inline_history !3
  tail call void @intel_dmc_wl_put(ptr noundef %i.d, i32 %i.br) #10
  %i.bz = getelementptr [4 x i8], ptr @constinit.113, i64 %i.f
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = add i32 %i.ca, 2196                     ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.d, i32 %i.cb) #10
  %.val.i45 = load ptr, ptr %i.d, align 8
  %i.cc = tail call ptr @to_intel_uncore(ptr noundef %.val.i45) #10 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 144
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = tail call i32 %i.ce(ptr noundef %i.cc, i32 %i.cb, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.d, i32 %i.cb) #10
  %i.cg = and i32 %i.cf, 2147483647
  %i.ch = getelementptr [4 x i8], ptr @constinit.113, i64 %i.f
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = add i32 %i.ci, 1684                     ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.d, i32 %i.cj) #10
  %.val.i46 = load ptr, ptr %i.d, align 8
  %i.ck = tail call ptr @to_intel_uncore(ptr noundef %.val.i46) #10 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 176
  %i.cm = load ptr, ptr %i.cl, align 8
  tail call void %i.cm(ptr noundef %i.ck, i32 %i.cj, i32 noundef %i.cg, i1 noundef zeroext true) #10, !inline_history !0
  tail call void @intel_dmc_wl_put(ptr noundef %i.d, i32 %i.cj) #10
  %i.cn = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i = icmp eq ptr %i.cn, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %icl_combo_phy_loadgen_select.exit.3
  %i.co = tail call ptr @__drm_to_display(ptr noundef nonnull %i.cn) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %icl_combo_phy_loadgen_select.exit.3
  %i.cp = phi ptr [ %i.co, %bb.d ], [ null, %icl_combo_phy_loadgen_select.exit.3 ] ; 48 uses
  %i.cq = tail call i32 @intel_encoder_to_phy(ptr noundef %0) #10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !annotation !20
  %i.cr = call ptr @intel_ddi_buf_trans_get(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a) #10 ; 14 uses
  %.not76.i = icmp eq ptr %i.cr, null
  br i1 %.not76.i, label %bb.f, label %.critedge.i, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.cs = load ptr, ptr %i.cp, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ct = getelementptr i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.g, %bb.f
end_hunk_1
