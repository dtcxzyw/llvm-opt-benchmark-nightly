Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_dpll_mgr?download=true
inline.NumInlined: 679
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@mtl_pll_get_freq:bb.a
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  br label %__drm_to_dev.exit22

__drm_to_dev.exit22:                              ; preds = %__drm_to_dev.exit, %bb.h
  %i.z = phi ptr [ %i.y, %bb.h ], [ null, %__drm_to_dev.exit ]
  %i.aa = tail call ptr @dev_driver_string(ptr noundef %i.z) #14
  %i.ab = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i23 = icmp eq ptr %i.ab, null
  br i1 %.not.i23, label %__drm_to_dev.exit24, label %bb.i

bb.i:                                             ; preds = %__drm_to_dev.exit22
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  br label %__drm_to_dev.exit24

__drm_to_dev.exit24:                              ; preds = %__drm_to_dev.exit22, %bb.i
  %i.ae = phi ptr [ %i.ad, %bb.i ], [ null, %__drm_to_dev.exit22 ] ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 80
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not.i25 = icmp eq ptr %i.ag, null
  br i1 %.not.i25, label %bb.j, label %dev_name.exit28

bb.j:                                             ; preds = %__drm_to_dev.exit24
  %.val.i27 = load ptr, ptr %i.ae, align 8
  br label %dev_name.exit28

dev_name.exit28:                                  ; preds = %__drm_to_dev.exit24, %bb.j
  %.0.i26 = phi ptr [ %.val.i27, %bb.j ], [ %i.ag, %__drm_to_dev.exit24 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.v, ptr noundef %i.aa, ptr noundef %.0.i26, ptr noundef nonnull @.str.39) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !135
  br label %bb.k

.critedge:                                        ; preds = %get_intel_encoder.exit
  %i.ah = tail call i32 @intel_cx0pll_calc_port_clock(ptr noundef nonnull %.013.le.i, ptr noundef %2) #14
  br label %bb.k

bb.k:                                             ; preds = %dev_name.exit28, %.critedge
  %.0 = phi i32 [ %i.ah, %.critedge ], [ -22, %dev_name.exit28 ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_mtl_pll_enable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_mtl_pll_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_cx0pll_readout_hw_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_cx0pll_calc_port_clock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_mtl_tbt_pll_readout_hw_state(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_mtl_tbt_pll_calc_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_cx0pll_calc_state(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_cx0pll_dump_hw_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_cx0pll_compare_hw_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @icl_compute_dplls(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call zeroext i1 @intel_encoder_is_combo(ptr noundef %2) #14
  br i1 %i.a, label %bb.b, label %bb.ar

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @__drm_to_display(ptr noundef nonnull %i.c) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ] ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 40
  %.val.i = load ptr, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %1, i64 136
  %.val20.i = load i32, ptr %i.g, align 8
  %i.h = zext i32 %.val20.i to i64
  %i.i = getelementptr [56 x i8], ptr %.val.i, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8              ; 11 uses
  %i.l = getelementptr i8, ptr %i.k, i64 888
  %.val22.i = load i32, ptr %i.l, align 8
  %i.m = and i32 %.val22.i, 576
  %or.cond.not.i = icmp eq i32 %i.m, 0
  %i.n = load ptr, ptr %i.k, align 8
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not.i23.i = icmp eq ptr %i.o, null            ; 2 uses
  br i1 %or.cond.not.i, label %bb.ad, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i23.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__drm_to_display(ptr noundef nonnull %i.o) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = phi ptr [ %i.p, %bb.f ], [ null, %bb.e ]
  %i.r = getelementptr i8, ptr %i.q, i64 4408
  %.val.i.i = load i32, ptr %i.r, align 8         ; 2 uses
  %i.s = getelementptr i8, ptr %i.k, i64 1320
  %i.t = load i32, ptr %i.s, align 8
  %i.u = mul i32 %i.t, 5                          ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.n, %bb.g
  %indvars.iv.i.i = phi i64 [ 0, %bb.g ], [ %indvars.iv.next.i.i.1, %bb.n ] ; 3 uses
  %.03081.i.i = phi i32 [ 0, %bb.g ], [ %.1.i.i.1, %bb.n ] ; 2 uses
  %.03279.i.i = phi i32 [ -1, %bb.g ], [ %.133.i.i.1, %bb.n ] ; 3 uses
  %.03478.i.i = phi i32 [ 0, %bb.g ], [ %.135.i.i.1, %bb.n ] ; 2 uses
  %i.v = getelementptr [4 x i8], ptr @icl_calc_wrpll.dividers, i64 %indvars.iv.i.i
  %i.w = load i32, ptr %i.v, align 8              ; 2 uses
  %i.x = mul i32 %i.u, %i.w                       ; 5 uses
  %i.y = add i32 %i.x, -7998000
  %or.cond.i.i = icmp ult i32 %i.y, 2002001
  br i1 %or.cond.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.z = add nsw i32 %i.x, -8999000
  %i.aa = icmp samesign ult i32 %i.x, 8999000
  %i.ab = sub nsw i32 8999000, %i.x
  %i.ac = select i1 %i.aa, i32 %i.ab, i32 %i.z    ; 2 uses
  %i.ad = icmp ult i32 %i.ac, %.03279.i.i
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.135.i.i = phi i32 [ %i.x, %bb.j ], [ %.03478.i.i, %bb.i ], [ %.03478.i.i, %bb.h ] ; 2 uses
  %.133.i.i = phi i32 [ %i.ac, %bb.j ], [ %.03279.i.i, %bb.i ], [ %.03279.i.i, %bb.h ] ; 3 uses
  %.1.i.i = phi i32 [ %i.w, %bb.j ], [ %.03081.i.i, %bb.i ], [ %.03081.i.i, %bb.h ] ; 2 uses
  %i.ae = getelementptr [4 x i8], ptr @icl_calc_wrpll.dividers, i64 %indvars.iv.i.i
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = mul i32 %i.u, %i.ag                     ; 5 uses
  %i.ai = add i32 %i.ah, -7998000
  %or.cond.i.i.1 = icmp ult i32 %i.ai, 2002001
  br i1 %or.cond.i.i.1, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.aj = add nsw i32 %i.ah, -8999000
  %i.ak = icmp samesign ult i32 %i.ah, 8999000
  %i.al = sub nsw i32 8999000, %i.ah
  %i.am = select i1 %i.ak, i32 %i.al, i32 %i.aj   ; 2 uses
  %i.an = icmp ult i32 %i.am, %.133.i.i
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.135.i.i.1 = phi i32 [ %i.ah, %bb.m ], [ %.135.i.i, %bb.l ], [ %.135.i.i, %bb.k ] ; 2 uses
  %.133.i.i.1 = phi i32 [ %i.am, %bb.m ], [ %.133.i.i, %bb.l ], [ %.133.i.i, %bb.k ]
  %.1.i.i.1 = phi i32 [ %i.ag, %bb.m ], [ %.1.i.i, %bb.l ], [ %.1.i.i, %bb.k ] ; 17 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, 46
  br i1 %exitcond.not.i.i.1, label %bb.o, label %bb.h, !llvm.loop !136

bb.o:                                             ; preds = %bb.n
  %i.ao = icmp eq i32 %.val.i.i, 38400
  %spec.store.select.i.i.i = select i1 %i.ao, i32 19200, i32 %.val.i.i
  %i.ap = icmp eq i32 %.1.i.i.1, 0
  br i1 %i.ap, label %icl_compute_combo_phy_dpll.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = and i32 %.1.i.i.1, 1
  %i.ar = icmp eq i32 %i.aq, 0                    ; 2 uses
  br i1 %i.ar, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.as = icmp eq i32 %.1.i.i.1, 2
  br i1 %i.as, label %.thread.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = and i32 %.1.i.i.1, 2
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.av = ashr exact i32 %.1.i.i.1, 2
  br label %.thread.thread.i

bb.t:                                             ; preds = %bb.r
  %i.aw = srem i32 %.1.i.i.1, 6
  %i.ax = sdiv i32 %.1.i.i.1, 6
  %i.ay = icmp eq i32 %i.aw, 0
  br i1 %i.ay, label %.thread58.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = srem i32 %.1.i.i.1, 5
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.thread41.i, label %bb.v

.thread41.i:                                      ; preds = %bb.u
  %i.bb = sdiv i32 %.1.i.i.1, 10
  br label %.thread58.i

bb.v:                                             ; preds = %bb.u
  %i.bc = srem i32 %.1.i.i.1, 14
  %i.bd = sdiv i32 %.1.i.i.1, 14
  %i.be = icmp eq i32 %i.bc, 0
  br i1 %i.be, label %.thread58.i, label %.thread.i.i

bb.w:                                             ; preds = %bb.p
  switch i32 %.1.i.i.1, label %bb.x [
    i32 7, label %bb.y
    i32 5, label %bb.y
    i32 3, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.bf = sdiv i32 %.1.i.i.1, 3
  br label %bb.y

.thread.i.i:                                      ; preds = %bb.v
  %i.bg = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.61, ptr nonnull @.str.2, i32 2593, i32 2321, i64 16) #13, !srcloc !137
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bg) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !138
  br label %.thread.i

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.w, %bb.w
  %.sink.i.i = phi i32 [ 4, %bb.x ], [ 1, %bb.w ], [ 1, %bb.w ], [ 1, %bb.w ] ; 5 uses
  %.14549.i.i = phi i32 [ %i.bf, %bb.x ], [ %.1.i.i.1, %bb.w ], [ %.1.i.i.1, %bb.w ], [ %.1.i.i.1, %bb.w ]
  switch i32 %.14549.i.i, label %.thread.i [
    i32 2, label %.thread58.i
    i32 3, label %bb.z
    i32 5, label %bb.aa
    i32 7, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y
  br label %.thread58.i

bb.aa:                                            ; preds = %bb.y
  br label %.thread58.i

bb.ab:                                            ; preds = %bb.y
  br label %.thread58.i

.thread58.i:                                      ; preds = %bb.v, %bb.t, %bb.ab, %bb.aa, %bb.z, %bb.y, %.thread41.i
  %.sroa.12.1.ph.i = phi i32 [ %.sink.i.i, %bb.ab ], [ 2, %bb.t ], [ 2, %.thread41.i ], [ %.sink.i.i, %bb.aa ], [ %.sink.i.i, %bb.z ], [ %.sink.i.i, %bb.y ], [ 2, %bb.v ]
  %.sroa.14.1.ph.i = phi i32 [ 8, %bb.ab ], [ 2, %bb.t ], [ 4, %.thread41.i ], [ 4, %bb.aa ], [ 2, %bb.z ], [ 1, %bb.y ], [ 8, %bb.v ]
  %.0435176.i.ph.i = phi i32 [ 1, %bb.ab ], [ %i.ax, %bb.t ], [ %i.bb, %.thread41.i ], [ 1, %bb.aa ], [ 1, %bb.z ], [ 1, %bb.y ], [ %i.bd, %bb.v ] ; 2 uses
  %i.bh = icmp ne i32 %.0435176.i.ph.i, 1
  br label %icl_wrpll_params_populate.exit.i.i

.thread.thread.i:                                 ; preds = %bb.s, %bb.q
  %.sroa.12.1.ph80.i = phi i32 [ 1, %bb.q ], [ 2, %bb.s ]
  %.0435176.i.ph81.i = phi i32 [ 1, %bb.q ], [ %i.av, %bb.s ] ; 2 uses
  %i.bi = icmp ne i32 %.0435176.i.ph81.i, 1
  br label %icl_wrpll_params_populate.exit.i.i

.thread.i:                                        ; preds = %bb.y, %.thread.i.i
  %.sroa.12.2.i = phi i32 [ %.sink.i.i, %bb.y ], [ 0, %.thread.i.i ] ; 2 uses
  %.0435177.i.i = phi i32 [ 1, %bb.y ], [ 0, %.thread.i.i ]
  %i.bj = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.62, ptr nonnull @.str.2, i32 2610, i32 2321, i64 16) #13, !srcloc !139
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bj) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !140
  br i1 %i.ar, label %bb.ac, label %icl_wrpll_params_populate.exit.i.i, !prof !141

bb.ac:                                            ; preds = %.thread.i
  tail call void asm sideeffect "738: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 738b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 738) #13, !srcloc !142
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.63, ptr nonnull @.str.2, i32 2613, i32 2305, i64 16) #13, !srcloc !143
  tail call void asm sideeffect "739: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 739b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 739) #13, !srcloc !144
  br label %icl_wrpll_params_populate.exit.i.i

icl_wrpll_params_populate.exit.i.i:               ; preds = %bb.ac, %.thread.i, %.thread.thread.i, %.thread58.i
  %i.bk = phi i1 [ %i.bh, %.thread58.i ], [ true, %bb.ac ], [ false, %.thread.i ], [ %i.bi, %.thread.thread.i ]
  %.0435176.i65.i = phi i32 [ %.0435176.i.ph.i, %.thread58.i ], [ 0, %bb.ac ], [ %.0435177.i.i, %.thread.i ], [ %.0435176.i.ph81.i, %.thread.thread.i ]
  %.sroa.14.164.i = phi i32 [ %.sroa.14.1.ph.i, %.thread58.i ], [ 0, %bb.ac ], [ 0, %.thread.i ], [ 1, %.thread.thread.i ]
  %.sroa.12.163.i = phi i32 [ %.sroa.12.1.ph.i, %.thread58.i ], [ %.sroa.12.2.i, %bb.ac ], [ %.sroa.12.2.i, %.thread.i ], [ %.sroa.12.1.ph80.i, %.thread.thread.i ]
  %i.bl = zext i1 %i.bk to i32
  %i.bm = zext nneg i32 %.135.i.i.1 to i64
  %i.bn = shl nuw nsw i64 %i.bm, 15
  %i.bo = zext i32 %spec.store.select.i.i.i to i64
  %i.bp = udiv i64 %i.bn, %i.bo
  %i.bq = trunc i64 %i.bp to i32                  ; 2 uses
  %i.br = lshr i32 %i.bq, 15
  %i.bs = and i32 %i.bq, 32767
  br label %bb.ap

bb.ad:                                            ; preds = %bb.d
  br i1 %.not.i23.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bt = tail call ptr @__drm_to_display(ptr noundef nonnull %i.o) #14
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bu = phi ptr [ %i.bt, %bb.ae ], [ null, %bb.ad ]
  %i.bv = getelementptr i8, ptr %i.bu, i64 4408
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = icmp eq i32 %i.bw, 24000                ; 8 uses
  %i.by = select i1 %i.bx, ptr @icl_dp_combo_pll_24MHz_values, ptr @icl_dp_combo_pll_19_2MHz_values ; 2 uses
  %i.bz = getelementptr i8, ptr %i.k, i64 1320
  %i.ca = load i32, ptr %i.bz, align 8            ; 9 uses
  %i.cb = load i32, ptr %i.by, align 16
  %i.cc = icmp eq i32 %i.ca, %i.cb
  br i1 %i.cc, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cd = select i1 %i.bx, ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_24MHz_values, i64 32), ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_19_2MHz_values, i64 32) ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 16
  %i.cf = icmp eq i32 %i.ca, %i.ce
  br i1 %i.cf, label %bb.ao, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cg = select i1 %i.bx, ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_24MHz_values, i64 64), ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_19_2MHz_values, i64 64) ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 16
  %i.ci = icmp eq i32 %i.ca, %i.ch
  br i1 %i.ci, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cj = select i1 %i.bx, ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_24MHz_values, i64 96), ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_19_2MHz_values, i64 96) ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 16
  %i.cl = icmp eq i32 %i.ca, %i.ck
  br i1 %i.cl, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cm = select i1 %i.bx, ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_24MHz_values, i64 128), ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_19_2MHz_values, i64 128) ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 16
  %i.co = icmp eq i32 %i.ca, %i.cn
  br i1 %i.co, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cp = select i1 %i.bx, ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_24MHz_values, i64 160), ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_19_2MHz_values, i64 160) ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 16
  %i.cr = icmp eq i32 %i.ca, %i.cq
  br i1 %i.cr, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cs = select i1 %i.bx, ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_24MHz_values, i64 192), ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_19_2MHz_values, i64 192) ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 16
  %i.cu = icmp eq i32 %i.ca, %i.ct
  br i1 %i.cu, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cv = select i1 %i.bx, ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_24MHz_values, i64 224), ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_19_2MHz_values, i64 224) ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 16
  %i.cx = icmp eq i32 %i.ca, %i.cw
  br i1 %i.cx, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cy = sext i32 %i.ca to i64
  %i.cz = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 2741, i32 2321, i64 16) #13, !srcloc !145
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.cz, ptr noundef nonnull @.str.64, i64 noundef %i.cy) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !146
  br label %icl_compute_combo_phy_dpll.exit

bb.ao:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.lcssa.i.i = phi ptr [ %i.by, %bb.af ], [ %i.cd, %bb.ag ], [ %i.cg, %bb.ah ], [ %i.cj, %bb.ai ], [ %i.cm, %bb.aj ], [ %i.cp, %bb.ak ], [ %i.cs, %bb.al ], [ %i.cv, %bb.am ] ; 6 uses
  %i.da = getelementptr i8, ptr %.lcssa.i.i, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.da, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %.lcssa.i.i, i64 8
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr i8, ptr %.lcssa.i.i, i64 12
  %.sroa.8.0.copyload.i = load i32, ptr %.sroa.8.0..sroa_idx.i, align 4
  %.sroa.10.0..sroa_idx.i = getelementptr i8, ptr %.lcssa.i.i, i64 16
  %.sroa.10.0.copyload.i = load i32, ptr %.sroa.10.0..sroa_idx.i, align 4
  %.sroa.12.0..sroa_idx.i = getelementptr i8, ptr %.lcssa.i.i, i64 20
  %.sroa.12.0.copyload.i = load i32, ptr %.sroa.12.0..sroa_idx.i, align 4
  %.sroa.14.0..sroa_idx.i = getelementptr i8, ptr %.lcssa.i.i, i64 24
  %.sroa.14.0.copyload.i = load i32, ptr %.sroa.14.0..sroa_idx.i, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %icl_wrpll_params_populate.exit.i.i
  %.sroa.0.0.ph.i = phi i32 [ %.sroa.0.0.copyload.i, %bb.ao ], [ %i.bs, %icl_wrpll_params_populate.exit.i.i ] ; 2 uses
  %.sroa.6.0.ph.i = phi i32 [ %.sroa.6.0.copyload.i, %bb.ao ], [ %i.br, %icl_wrpll_params_populate.exit.i.i ]
  %.sroa.8.0.ph.i = phi i32 [ %.sroa.8.0.copyload.i, %bb.ao ], [ %.0435176.i65.i, %icl_wrpll_params_populate.exit.i.i ]
  %.sroa.10.0.ph.i = phi i32 [ %.sroa.10.0.copyload.i, %bb.ao ], [ %i.bl, %icl_wrpll_params_populate.exit.i.i ]
  %.sroa.12.0.ph.i = phi i32 [ %.sroa.12.0.copyload.i, %bb.ao ], [ %.sroa.12.163.i, %icl_wrpll_params_populate.exit.i.i ]
  %.sroa.14.0.ph.i = phi i32 [ %.sroa.14.0.copyload.i, %bb.ao ], [ %.sroa.14.164.i, %icl_wrpll_params_populate.exit.i.i ]
  %i.db = getelementptr i8, ptr %i.k, i64 1040    ; 3 uses
  %i.dc = tail call fastcc zeroext i1 @ehl_combo_pll_div_frac_wa_needed(ptr noundef readonly %i.e) #16, !srcloc !147
  %i.dd = add i32 %.sroa.0.0.ph.i, 1
  %i.de = lshr i32 %i.dd, 1
  %.0.i25.i = select i1 %i.dc, i32 %i.de, i32 %.sroa.0.0.ph.i
  %i.df = shl i32 %.0.i25.i, 10
  %i.dg = or i32 %i.df, %.sroa.6.0.ph.i
  store i32 %i.dg, ptr %i.db, align 8
  %i.dh = shl i32 %.sroa.8.0.ph.i, 10
  %i.di = shl i32 %.sroa.10.0.ph.i, 9
  %i.dj = or i32 %i.di, %i.dh
  %i.dk = shl i32 %.sroa.12.0.ph.i, 6
  %i.dl = or i32 %i.dj, %i.dk
  %i.dm = shl i32 %.sroa.14.0.ph.i, 2
  %i.dn = or i32 %i.dl, %i.dm                     ; 3 uses
  %i.do = getelementptr i8, ptr %i.k, i64 1044    ; 2 uses
  store i32 %i.dn, ptr %i.do, align 4
  %i.dp = getelementptr i8, ptr %i.e, i64 1168
  %i.dq = load i16, ptr %i.dp, align 8
  %i.dr = icmp ugt i16 %i.dq, 11
  %i.ds = or disjoint i32 %i.dn, 3
  %storemerge.i.i = select i1 %i.dr, i32 %i.dn, i32 %i.ds
  store i32 %storemerge.i.i, ptr %i.do, align 4
  %i.dt = getelementptr i8, ptr %i.e, i64 5228
  %i.du = load i8, ptr %i.dt, align 4, !range !26, !noundef !27
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.aq, label %icl_calc_dpll_state.exit.i

end_hunk_0
begin_hunk_1_@skl_compute_dpll:bb.a
skl_wrpll_try_divider.exit.us.2.1.5.thread.i.i:   ; preds = %skl_wrpll_try_divider.exit.us.2.1.5.i.i, %bb.as, %bb.ar
  %.sroa.0.4.us.2.1.5232.i.i = phi i64 [ %i.hm, %skl_wrpll_try_divider.exit.us.2.1.5.i.i ], [ %.sroa.0.4.us.2.1.4226.i.i, %bb.ar ], [ %.sroa.0.4.us.2.1.4226.i.i, %bb.as ]
  %.sroa.7.5.us.2.1.5231.i.i = phi i64 [ 9600000000, %skl_wrpll_try_divider.exit.us.2.1.5.i.i ], [ %.sroa.7.5.us.2.1.4225.i.i, %bb.ar ], [ %.sroa.7.5.us.2.1.4225.i.i, %bb.as ] ; 2 uses
  %.sroa.10.5.us.2.1.5230.i.i = phi i32 [ 21, %skl_wrpll_try_divider.exit.us.2.1.5.i.i ], [ %.sroa.10.5.us.2.1.4224.i.i, %bb.ar ], [ %.sroa.10.5.us.2.1.4224.i.i, %bb.as ] ; 2 uses
  %i.hr = icmp ugt i64 %i.cg, 9600000000
  %i.hs = add nsw i64 %i.cg, -9600000000
  %i.ht = sub nuw nsw i64 9600000000, %i.cg
  %i.hu = select i1 %i.hr, i64 %i.hs, i64 %i.ht
  %i.hv = mul nsw i64 %i.hu, 10000                ; 3 uses
  %i.hw = udiv i64 %i.hv, 9600000000
  %.not.i.us.2.1.6.i.i = icmp ult i64 %i.cg, 9600000000
  %i.hx = icmp ult i64 %i.hw, %.sroa.0.4.us.2.1.5232.i.i ; 2 uses
  br i1 %.not.i.us.2.1.6.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %skl_wrpll_try_divider.exit.us.2.1.5.thread.i.i
  %i.hy = icmp ult i64 %i.hv, 960000000000
  %or.cond45.us.2.1.6.i.i = and i1 %i.hy, %i.hx
  br i1 %or.cond45.us.2.1.6.i.i, label %.thread.i, label %.loopexit.split.us.1.i.i

bb.au:                                            ; preds = %skl_wrpll_try_divider.exit.us.2.1.5.thread.i.i
  %i.hz = icmp ult i64 %i.hv, 5760000000000
  %or.cond46.us.2.1.6.i.i = and i1 %i.hz, %i.hx
  br i1 %or.cond46.us.2.1.6.i.i, label %.thread.i, label %.loopexit.split.us.1.i.i

.loopexit.split.us.1.i.i:                         ; preds = %bb.au, %bb.at, %skl_wrpll_try_divider.exit.us.1111.i.i
  %.sroa.10.3.1.i.i = phi i32 [ %.sroa.10.5.us.1108.i.i, %skl_wrpll_try_divider.exit.us.1111.i.i ], [ %.sroa.10.5.us.2.1.5230.i.i, %bb.at ], [ %.sroa.10.5.us.2.1.5230.i.i, %bb.au ] ; 2 uses
  %.sroa.7.3.1.i.i = phi i64 [ %.sroa.7.5.us.1109.i.i, %skl_wrpll_try_divider.exit.us.1111.i.i ], [ %.sroa.7.5.us.2.1.5231.i.i, %bb.at ], [ %.sroa.7.5.us.2.1.5231.i.i, %bb.au ]
  %.not.i.i = icmp eq i32 %.sroa.10.3.1.i.i, 0
  br i1 %.not.i.i, label %skl_ddi_hdmi_pll_dividers.exit, label %.thread.i.i

skl_wrpll_try_divider.exit.us.thread.i.i:         ; preds = %skl_wrpll_try_divider.exit.us.i.i, %bb.ax, %bb.aw
  %.sroa.0.4.us246.i.i = phi i64 [ %i.ik, %skl_wrpll_try_divider.exit.us.i.i ], [ %.sroa.0.259.us.i.i, %bb.aw ], [ %.sroa.0.259.us.i.i, %bb.ax ] ; 2 uses
  %.sroa.7.5.us245.i.i = phi i64 [ 8400000000, %skl_wrpll_try_divider.exit.us.i.i ], [ %.sroa.7.258.us.i.i, %bb.aw ], [ %.sroa.7.258.us.i.i, %bb.ax ] ; 2 uses
  %.sroa.10.5.us244.i.i = phi i32 [ %i.ic, %skl_wrpll_try_divider.exit.us.i.i ], [ %.sroa.10.257.us.i.i, %bb.aw ], [ %.sroa.10.257.us.i.i, %bb.ax ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 36
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i, label %bb.av, !llvm.loop !202

bb.av:                                            ; preds = %skl_wrpll_try_divider.exit.us.thread.i.i, %bb.d
  %indvars.iv.i.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i.i, %skl_wrpll_try_divider.exit.us.thread.i.i ] ; 2 uses
  %.sroa.0.259.us.i.i = phi i64 [ -1, %bb.d ], [ %.sroa.0.4.us246.i.i, %skl_wrpll_try_divider.exit.us.thread.i.i ] ; 3 uses
  %.sroa.7.258.us.i.i = phi i64 [ 0, %bb.d ], [ %.sroa.7.5.us245.i.i, %skl_wrpll_try_divider.exit.us.thread.i.i ] ; 2 uses
  %.sroa.10.257.us.i.i = phi i32 [ 0, %bb.d ], [ %.sroa.10.5.us244.i.i, %skl_wrpll_try_divider.exit.us.thread.i.i ] ; 2 uses
  %i.ia = getelementptr i8, ptr @skl_ddi_calculate_wrpll.even_dividers, i64 %indvars.iv.i.i
  %i.ib = load i8, ptr %i.ia, align 1             ; 2 uses
  %i.ic = zext i8 %i.ib to i32                    ; 2 uses
  %i.id = zext i8 %i.ib to i64
  %i.ie = mul nsw i64 %i.r, %i.id                 ; 4 uses
  %i.if = icmp ugt i64 %i.ie, 8400000000
  %i.ig = add nsw i64 %i.ie, -8400000000
  %i.ih = sub nuw nsw i64 8400000000, %i.ie
  %i.ii = select i1 %i.if, i64 %i.ig, i64 %i.ih
  %i.ij = mul i64 %i.ii, 10000                    ; 4 uses
  %i.ik = udiv i64 %i.ij, 8400000000              ; 2 uses
  %.not.i.us.i.i = icmp ult i64 %i.ie, 8400000000
  %i.il = icmp ult i64 %i.ik, %.sroa.0.259.us.i.i ; 2 uses
  br i1 %.not.i.us.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.im = icmp ult i64 %i.ij, 840000000000
  %or.cond45.us.i.i = and i1 %i.im, %i.il
  br i1 %or.cond45.us.i.i, label %skl_wrpll_try_divider.exit.us.i.i, label %skl_wrpll_try_divider.exit.us.thread.i.i

bb.ax:                                            ; preds = %bb.av
  %i.in = icmp ult i64 %i.ij, 5040000000000
  %or.cond46.us.i.i = and i1 %i.in, %i.il
  br i1 %or.cond46.us.i.i, label %skl_wrpll_try_divider.exit.us.i.i, label %skl_wrpll_try_divider.exit.us.thread.i.i

skl_wrpll_try_divider.exit.us.i.i:                ; preds = %bb.ax, %bb.aw
  %i.io = icmp samesign ult i64 %i.ij, 8400000000
  br i1 %i.io, label %.loopexit.split.us.i.i, label %skl_wrpll_try_divider.exit.us.thread.i.i

._crit_edge.us.i.i:                               ; preds = %skl_wrpll_try_divider.exit.us.thread.i.i, %bb.ba
  %indvars.iv.1.i.i = phi i64 [ %indvars.iv.next.1.i.i, %bb.ba ], [ 0, %skl_wrpll_try_divider.exit.us.thread.i.i ] ; 2 uses
  %.sroa.0.259.us.1.i.i = phi i64 [ %.sroa.0.4.us.1.i.i, %bb.ba ], [ %.sroa.0.4.us246.i.i, %skl_wrpll_try_divider.exit.us.thread.i.i ] ; 3 uses
  %.sroa.7.258.us.1.i.i = phi i64 [ %.sroa.7.5.us.1.i.i, %bb.ba ], [ %.sroa.7.5.us245.i.i, %skl_wrpll_try_divider.exit.us.thread.i.i ] ; 2 uses
  %.sroa.10.257.us.1.i.i = phi i32 [ %.sroa.10.5.us.1.i.i, %bb.ba ], [ %.sroa.10.5.us244.i.i, %skl_wrpll_try_divider.exit.us.thread.i.i ] ; 2 uses
  %i.ip = getelementptr i8, ptr @skl_ddi_calculate_wrpll.even_dividers, i64 %indvars.iv.1.i.i
  %i.iq = load i8, ptr %i.ip, align 1             ; 2 uses
  %i.ir = zext i8 %i.iq to i32
  %i.is = zext i8 %i.iq to i64
  %i.it = mul nsw i64 %i.r, %i.is                 ; 4 uses
  %i.iu = icmp ugt i64 %i.it, 9000000000
  %i.iv = add nsw i64 %i.it, -9000000000
  %i.iw = sub nuw nsw i64 9000000000, %i.it
  %i.ix = select i1 %i.iu, i64 %i.iv, i64 %i.iw
  %i.iy = mul i64 %i.ix, 10000                    ; 3 uses
  %i.iz = udiv i64 %i.iy, 9000000000              ; 2 uses
  %.not.i.us.1.i.i = icmp ult i64 %i.it, 9000000000
  %i.ja = icmp ult i64 %i.iz, %.sroa.0.259.us.1.i.i ; 2 uses
  br i1 %.not.i.us.1.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.us.i.i
  %i.jb = icmp ult i64 %i.iy, 900000000000
  %or.cond45.us.1.i.i = and i1 %i.jb, %i.ja
  br i1 %or.cond45.us.1.i.i, label %.sink.split.i.us.1.i.i, label %skl_wrpll_try_divider.exit.us.1.i.i

bb.az:                                            ; preds = %._crit_edge.us.i.i
  %i.jc = icmp ult i64 %i.iy, 5400000000000
  %or.cond46.us.1.i.i = and i1 %i.jc, %i.ja
  br i1 %or.cond46.us.1.i.i, label %.sink.split.i.us.1.i.i, label %skl_wrpll_try_divider.exit.us.1.i.i

.sink.split.i.us.1.i.i:                           ; preds = %bb.az, %bb.ay
  br label %skl_wrpll_try_divider.exit.us.1.i.i

skl_wrpll_try_divider.exit.us.1.i.i:              ; preds = %.sink.split.i.us.1.i.i, %bb.az, %bb.ay
  %.sroa.10.5.us.1.i.i = phi i32 [ %i.ir, %.sink.split.i.us.1.i.i ], [ %.sroa.10.257.us.1.i.i, %bb.ay ], [ %.sroa.10.257.us.1.i.i, %bb.az ] ; 3 uses
  %.sroa.7.5.us.1.i.i = phi i64 [ 9000000000, %.sink.split.i.us.1.i.i ], [ %.sroa.7.258.us.1.i.i, %bb.ay ], [ %.sroa.7.258.us.1.i.i, %bb.az ] ; 3 uses
  %.sroa.0.4.us.1.i.i = phi i64 [ %i.iz, %.sink.split.i.us.1.i.i ], [ %.sroa.0.259.us.1.i.i, %bb.ay ], [ %.sroa.0.259.us.1.i.i, %bb.az ] ; 3 uses
  %i.jd = icmp eq i64 %.sroa.0.4.us.1.i.i, 0
  br i1 %i.jd, label %.loopexit.split.us.i.i, label %bb.ba

bb.ba:                                            ; preds = %skl_wrpll_try_divider.exit.us.1.i.i
  %indvars.iv.next.1.i.i = add nuw nsw i64 %indvars.iv.1.i.i, 1 ; 2 uses
  %exitcond.1.not.i.i = icmp eq i64 %indvars.iv.next.1.i.i, 36
  br i1 %exitcond.1.not.i.i, label %._crit_edge.us.1.i.i, label %._crit_edge.us.i.i, !llvm.loop !202

._crit_edge.us.1.i.i:                             ; preds = %bb.ba, %skl_wrpll_try_divider.exit.us.2.i.thread.i
  %indvars.iv.2.i.i = phi i64 [ %indvars.iv.next.2.i.i, %skl_wrpll_try_divider.exit.us.2.i.thread.i ], [ 0, %bb.ba ] ; 2 uses
  %.sroa.0.259.us.2.i.i = phi i64 [ %.sroa.0.4.us.2.i21.i, %skl_wrpll_try_divider.exit.us.2.i.thread.i ], [ %.sroa.0.4.us.1.i.i, %bb.ba ] ; 3 uses
  %.sroa.7.258.us.2.i.i = phi i64 [ %.sroa.7.5.us.2.i20.i, %skl_wrpll_try_divider.exit.us.2.i.thread.i ], [ %.sroa.7.5.us.1.i.i, %bb.ba ] ; 2 uses
  %.sroa.10.257.us.2.i.i = phi i32 [ %.sroa.10.5.us.2.i19.i, %skl_wrpll_try_divider.exit.us.2.i.thread.i ], [ %.sroa.10.5.us.1.i.i, %bb.ba ] ; 2 uses
  %i.je = getelementptr i8, ptr @skl_ddi_calculate_wrpll.even_dividers, i64 %indvars.iv.2.i.i
  %i.jf = load i8, ptr %i.je, align 1             ; 2 uses
  %i.jg = zext i8 %i.jf to i32                    ; 2 uses
  %i.jh = zext i8 %i.jf to i64
  %i.ji = mul nsw i64 %i.r, %i.jh                 ; 4 uses
  %i.jj = icmp ugt i64 %i.ji, 9600000000
  %i.jk = add nsw i64 %i.ji, -9600000000
  %i.jl = sub nuw nsw i64 9600000000, %i.ji
  %i.jm = select i1 %i.jj, i64 %i.jk, i64 %i.jl
  %i.jn = mul i64 %i.jm, 10000                    ; 4 uses
  %i.jo = udiv i64 %i.jn, 9600000000              ; 2 uses
  %.not.i.us.2.i.i = icmp ult i64 %i.ji, 9600000000
  %i.jp = icmp ult i64 %i.jo, %.sroa.0.259.us.2.i.i ; 2 uses
  br i1 %.not.i.us.2.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.us.1.i.i
  %i.jq = icmp ult i64 %i.jn, 960000000000
  %or.cond45.us.2.i.i = and i1 %i.jq, %i.jp
  br i1 %or.cond45.us.2.i.i, label %skl_wrpll_try_divider.exit.us.2.i.i, label %skl_wrpll_try_divider.exit.us.2.i.thread.i

bb.bc:                                            ; preds = %._crit_edge.us.1.i.i
  %i.jr = icmp ult i64 %i.jn, 5760000000000
  %or.cond46.us.2.i.i = and i1 %i.jr, %i.jp
  br i1 %or.cond46.us.2.i.i, label %skl_wrpll_try_divider.exit.us.2.i.i, label %skl_wrpll_try_divider.exit.us.2.i.thread.i

skl_wrpll_try_divider.exit.us.2.i.i:              ; preds = %bb.bc, %bb.bb
  %i.js = icmp samesign ult i64 %i.jn, 9600000000
  br i1 %i.js, label %.loopexit.split.us.i.i, label %skl_wrpll_try_divider.exit.us.2.i.thread.i

skl_wrpll_try_divider.exit.us.2.i.thread.i:       ; preds = %skl_wrpll_try_divider.exit.us.2.i.i, %bb.bc, %bb.bb
  %.sroa.0.4.us.2.i21.i = phi i64 [ %i.jo, %skl_wrpll_try_divider.exit.us.2.i.i ], [ %.sroa.0.259.us.2.i.i, %bb.bb ], [ %.sroa.0.259.us.2.i.i, %bb.bc ] ; 2 uses
  %.sroa.7.5.us.2.i20.i = phi i64 [ 9600000000, %skl_wrpll_try_divider.exit.us.2.i.i ], [ %.sroa.7.258.us.2.i.i, %bb.bb ], [ %.sroa.7.258.us.2.i.i, %bb.bc ] ; 2 uses
  %.sroa.10.5.us.2.i19.i = phi i32 [ %i.jg, %skl_wrpll_try_divider.exit.us.2.i.i ], [ %.sroa.10.257.us.2.i.i, %bb.bb ], [ %.sroa.10.257.us.2.i.i, %bb.bc ] ; 2 uses
  %indvars.iv.next.2.i.i = add nuw nsw i64 %indvars.iv.2.i.i, 1 ; 2 uses
  %exitcond.2.not.i.i = icmp eq i64 %indvars.iv.next.2.i.i, 36
  br i1 %exitcond.2.not.i.i, label %.loopexit.split.us.i.i, label %._crit_edge.us.1.i.i, !llvm.loop !202

.loopexit.split.us.i.i:                           ; preds = %skl_wrpll_try_divider.exit.us.i.i, %skl_wrpll_try_divider.exit.us.1.i.i, %skl_wrpll_try_divider.exit.us.2.i.thread.i, %skl_wrpll_try_divider.exit.us.2.i.i
  %.sroa.10.3.i.i = phi i32 [ %.sroa.10.5.us.1.i.i, %skl_wrpll_try_divider.exit.us.1.i.i ], [ %i.jg, %skl_wrpll_try_divider.exit.us.2.i.i ], [ %.sroa.10.5.us.2.i19.i, %skl_wrpll_try_divider.exit.us.2.i.thread.i ], [ %i.ic, %skl_wrpll_try_divider.exit.us.i.i ] ; 2 uses
  %.sroa.7.3.i.i = phi i64 [ %.sroa.7.5.us.1.i.i, %skl_wrpll_try_divider.exit.us.1.i.i ], [ 9600000000, %skl_wrpll_try_divider.exit.us.2.i.i ], [ %.sroa.7.5.us.2.i20.i, %skl_wrpll_try_divider.exit.us.2.i.thread.i ], [ 8400000000, %skl_wrpll_try_divider.exit.us.i.i ] ; 3 uses
  %.sroa.0.3.i.i = phi i64 [ 0, %skl_wrpll_try_divider.exit.us.1.i.i ], [ 0, %skl_wrpll_try_divider.exit.us.2.i.i ], [ %.sroa.0.4.us.2.i21.i, %skl_wrpll_try_divider.exit.us.2.i.thread.i ], [ 0, %skl_wrpll_try_divider.exit.us.i.i ] ; 3 uses
  %.not118.i.i = icmp eq i32 %.sroa.10.3.i.i, 0
  br i1 %.not118.i.i, label %.preheader47.split.us.1.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %.loopexit.split.us.i.i, %.loopexit.split.us.1.i.i
  %.sroa.10.384.i.i = phi i32 [ %.sroa.10.3.i.i, %.loopexit.split.us.i.i ], [ %.sroa.10.3.1.i.i, %.loopexit.split.us.1.i.i ] ; 15 uses
  %.sroa.7.382.i.i = phi i64 [ %.sroa.7.3.i.i, %.loopexit.split.us.i.i ], [ %.sroa.7.3.1.i.i, %.loopexit.split.us.1.i.i ] ; 12 uses
  %i.jt = and i32 %.sroa.10.384.i.i, 1
  %i.ju = icmp eq i32 %i.jt, 0
  br i1 %i.ju, label %bb.bd, label %.thread.thread.i.i

bb.bd:                                            ; preds = %.thread.i.i
  %i.jv = lshr exact i32 %.sroa.10.384.i.i, 1     ; 5 uses
  %i.jw = and i32 %.sroa.10.384.i.i, -6
  %i.jx = icmp eq i32 %i.jw, 2
  br i1 %i.jx, label %skl_wrpll_get_multipliers.exit.i.thread.i, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %bb.bd
  switch i32 %.sroa.10.384.i.i, label %bb.be [
    i32 10, label %skl_wrpll_get_multipliers.exit.i.thread.i
    i32 4, label %skl_wrpll_get_multipliers.exit.i.thread.i
  ]

bb.be:                                            ; preds = %switch.early.test.i.i.i
  %i.jy = and i32 %.sroa.10.384.i.i, 2
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ka = lshr exact i32 %.sroa.10.384.i.i, 2
  br label %skl_wrpll_get_multipliers.exit.i.thread.i

bb.bg:                                            ; preds = %bb.be
  %i.kb = urem i32 %i.jv, 3
  %i.kc = icmp eq i32 %i.kb, 0
  br i1 %i.kc, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.kd = udiv i32 %.sroa.10.384.i.i, 6
  br label %skl_wrpll_get_multipliers.exit.i.thread148.i

bb.bi:                                            ; preds = %bb.bg
  %i.ke = urem i32 %i.jv, 7
  %i.kf = icmp eq i32 %i.ke, 0
  br i1 %i.kf, label %bb.bj, label %skl_wrpll_get_multipliers.exit.i.thread176.i

bb.bj:                                            ; preds = %bb.bi
  %i.kg = udiv i32 %.sroa.10.384.i.i, 14
  br label %skl_wrpll_get_multipliers.exit.i.thread163.i

.thread.thread.i.i:                               ; preds = %.thread.i.i
  switch i32 %.sroa.10.384.i.i, label %.thread.thread.thread.i.i [
    i32 9, label %.thread.thread.thread259.i.i
    i32 3, label %.thread.thread.thread259.i.i
  ]

.thread.thread.thread259.i.i:                     ; preds = %.thread.thread.i.i, %.thread.thread.i.i, %skl_wrpll_try_divider.exit.us.2.1.3.i.i, %skl_wrpll_try_divider.exit.us.2.1.i.i, %skl_wrpll_try_divider.exit.us.1.1.3.i.i, %skl_wrpll_try_divider.exit.us.1.1.i.i, %skl_wrpll_try_divider.exit.us.1111.3.i.i
  %.sroa.10.384249263.i.i = phi i32 [ %.sroa.10.384.i.i, %.thread.thread.i.i ], [ %.sroa.10.384.i.i, %.thread.thread.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.1.1.i.i ], [ 9, %skl_wrpll_try_divider.exit.us.1111.3.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.2.1.i.i ], [ 9, %skl_wrpll_try_divider.exit.us.1.1.3.i.i ], [ 9, %skl_wrpll_try_divider.exit.us.2.1.3.i.i ]
  %.sroa.7.382251262.i.i = phi i64 [ %.sroa.7.382.i.i, %.thread.thread.i.i ], [ %.sroa.7.382.i.i, %.thread.thread.i.i ], [ 9000000000, %skl_wrpll_try_divider.exit.us.1.1.i.i ], [ 8400000000, %skl_wrpll_try_divider.exit.us.1111.3.i.i ], [ 9600000000, %skl_wrpll_try_divider.exit.us.2.1.i.i ], [ 9000000000, %skl_wrpll_try_divider.exit.us.1.1.3.i.i ], [ 9600000000, %skl_wrpll_try_divider.exit.us.2.1.3.i.i ]
  %.lhs.trunc.i.i.i = trunc nuw nsw i32 %.sroa.10.384249263.i.i to i8
  %i.kh = udiv i8 %.lhs.trunc.i.i.i, 3
  %.zext.i.i.i = zext nneg i8 %i.kh to i32
  br label %skl_wrpll_get_multipliers.exit.i.thread148.i

.thread.thread.thread.i.i:                        ; preds = %.thread.thread.i.i
  %i.ki = and i32 %.sroa.10.384.i.i, -3
  %or.cond9.i.i.i = icmp eq i32 %i.ki, 5
  br i1 %or.cond9.i.i.i, label %skl_wrpll_get_multipliers.exit.i.i, label %.thread.thread.thread.thread.i.i

.thread.thread.thread.thread.i.i:                 ; preds = %.thread.thread.thread.i.i
  switch i32 %.sroa.10.384.i.i, label %skl_wrpll_get_multipliers.exit.i.thread176.i [
    i32 15, label %skl_wrpll_get_multipliers.exit.i.thread148.i
    i32 21, label %skl_wrpll_get_multipliers.exit.i.thread163.i
    i32 35, label %bb.bk
  ]

bb.bk:                                            ; preds = %.thread.thread.thread.thread.i.i
  br label %skl_wrpll_get_multipliers.exit.i.thread163.i

skl_wrpll_get_multipliers.exit.i.thread.i:        ; preds = %bb.bf, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %bb.bd
  %.1.i.ph.i = phi i32 [ 1, %switch.early.test.i.i.i ], [ 1, %switch.early.test.i.i.i ], [ 1, %bb.bd ], [ %i.ka, %bb.bf ]
  %.0.i.ph.i = phi i32 [ %i.jv, %switch.early.test.i.i.i ], [ %i.jv, %switch.early.test.i.i.i ], [ %i.jv, %bb.bd ], [ 2, %bb.bf ]
  %switch.selectcmp138.i = icmp eq i64 %.sroa.7.382.i.i, 9000000000
  %switch.select139.i = zext i1 %switch.selectcmp138.i to i32
  %switch.selectcmp118140.i = icmp eq i64 %.sroa.7.382.i.i, 8400000000
  %switch.select119141.i = select i1 %switch.selectcmp118140.i, i32 3, i32 %switch.select139.i
  br label %.sink.split.i29.i.thread.i

skl_wrpll_get_multipliers.exit.i.thread148.i:     ; preds = %.thread.thread.thread.thread.i.i, %.thread.thread.thread259.i.i, %bb.bh
  %.sroa.7.382250.i.ph.i = phi i64 [ %.sroa.7.382251262.i.i, %.thread.thread.thread259.i.i ], [ %.sroa.7.382.i.i, %bb.bh ], [ %.sroa.7.382.i.i, %.thread.thread.thread.thread.i.i ] ; 2 uses
  %.1.i.ph146.i = phi i32 [ 1, %.thread.thread.thread259.i.i ], [ %i.kd, %bb.bh ], [ 1, %.thread.thread.thread.thread.i.i ]
  %.0.i.ph147.i = phi i32 [ %.zext.i.i.i, %.thread.thread.thread259.i.i ], [ 2, %bb.bh ], [ 5, %.thread.thread.thread.thread.i.i ]
  %switch.selectcmp153.i = icmp eq i64 %.sroa.7.382250.i.ph.i, 9000000000
  %switch.select154.i = zext i1 %switch.selectcmp153.i to i32
  %switch.selectcmp118155.i = icmp eq i64 %.sroa.7.382250.i.ph.i, 8400000000
  %switch.select119156.i = select i1 %switch.selectcmp118155.i, i32 3, i32 %switch.select154.i
  br label %.sink.split.i29.i.thread.i

skl_wrpll_get_multipliers.exit.i.thread163.i:     ; preds = %bb.bk, %.thread.thread.thread.thread.i.i, %bb.bj
  %.1.i.ph161.i = phi i32 [ %i.kg, %bb.bj ], [ 1, %bb.bk ], [ 1, %.thread.thread.thread.thread.i.i ]
  %.0.i.ph162.i = phi i32 [ 2, %bb.bj ], [ 5, %bb.bk ], [ 3, %.thread.thread.thread.thread.i.i ]
  %switch.selectcmp168.i = icmp eq i64 %.sroa.7.382.i.i, 9000000000
  %switch.select169.i = zext i1 %switch.selectcmp168.i to i32
  %switch.selectcmp118170.i = icmp eq i64 %.sroa.7.382.i.i, 8400000000
  %switch.select119171.i = select i1 %switch.selectcmp118170.i, i32 3, i32 %switch.select169.i
  br label %.sink.split.i29.i.thread.i

skl_wrpll_get_multipliers.exit.i.thread176.i:     ; preds = %.thread.thread.thread.thread.i.i, %bb.bi
  %switch.selectcmp181.i = icmp eq i64 %.sroa.7.382.i.i, 9000000000
  %switch.select182.i = zext i1 %switch.selectcmp181.i to i32
  %switch.selectcmp118183.i = icmp eq i64 %.sroa.7.382.i.i, 8400000000
  %switch.select119184.i = select i1 %switch.selectcmp118183.i, i32 3, i32 %switch.select182.i
  br label %.sink.split.i29.i.thread36.i

skl_wrpll_get_multipliers.exit.i.i:               ; preds = %.thread.thread.thread.i.i
  %switch.selectcmp.i = icmp eq i64 %.sroa.7.382.i.i, 9000000000
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  %switch.selectcmp118.i = icmp eq i64 %.sroa.7.382.i.i, 8400000000
  %switch.select119.i = select i1 %switch.selectcmp118.i, i32 3, i32 %switch.select.i ; 2 uses
  %cond.i = icmp eq i32 %.sroa.10.384.i.i, 7
  br i1 %cond.i, label %.thread.i, label %.sink.split.i29.i.thread36.i

.sink.split.i29.i.thread36.i:                     ; preds = %skl_wrpll_get_multipliers.exit.i.i, %skl_wrpll_get_multipliers.exit.i.thread176.i, %skl_wrpll_try_divider.exit.us.2.1.1.i.i, %skl_wrpll_try_divider.exit.us.1.1.1.i.i, %skl_wrpll_try_divider.exit.us.1111.1.i.i
  %.139296.i44.i = phi i32 [ %.sroa.10.384.i.i, %skl_wrpll_get_multipliers.exit.i.i ], [ 5, %skl_wrpll_try_divider.exit.us.2.1.1.i.i ], [ 5, %skl_wrpll_try_divider.exit.us.1.1.1.i.i ], [ 5, %skl_wrpll_try_divider.exit.us.1111.1.i.i ], [ 0, %skl_wrpll_get_multipliers.exit.i.thread176.i ]
  %.1298.i43.i = phi i32 [ 1, %skl_wrpll_get_multipliers.exit.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.2.1.1.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.1.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1111.1.i.i ], [ 0, %skl_wrpll_get_multipliers.exit.i.thread176.i ] ; 2 uses
  %.sroa.21.041.i = phi i32 [ %switch.select119.i, %skl_wrpll_get_multipliers.exit.i.i ], [ 0, %skl_wrpll_try_divider.exit.us.2.1.1.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.1.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.1111.1.i.i ], [ %switch.select119184.i, %skl_wrpll_get_multipliers.exit.i.thread176.i ]
  %i.kj = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.62, ptr nonnull @.str.2, i32 1648, i32 2321, i64 16) #13, !srcloc !203
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.kj) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !204
  br label %.sink.split.i29.i.thread.i

.sink.split.i29.i.thread.i:                       ; preds = %.sink.split.i29.i.thread36.i, %skl_wrpll_get_multipliers.exit.i.thread163.i, %skl_wrpll_get_multipliers.exit.i.thread148.i, %skl_wrpll_get_multipliers.exit.i.thread.i
  %.139296.i32.i = phi i32 [ %.139296.i44.i, %.sink.split.i29.i.thread36.i ], [ 2, %skl_wrpll_get_multipliers.exit.i.thread.i ], [ 3, %skl_wrpll_get_multipliers.exit.i.thread148.i ], [ 7, %skl_wrpll_get_multipliers.exit.i.thread163.i ] ; 5 uses
  %.1298.i30.i = phi i32 [ %.1298.i43.i, %.sink.split.i29.i.thread36.i ], [ %.1.i.ph.i, %skl_wrpll_get_multipliers.exit.i.thread.i ], [ %.1.i.ph146.i, %skl_wrpll_get_multipliers.exit.i.thread148.i ], [ %.1.i.ph161.i, %skl_wrpll_get_multipliers.exit.i.thread163.i ] ; 5 uses
  %.0300.i28.i = phi i32 [ %.1298.i43.i, %.sink.split.i29.i.thread36.i ], [ %.0.i.ph.i, %skl_wrpll_get_multipliers.exit.i.thread.i ], [ %.0.i.ph147.i, %skl_wrpll_get_multipliers.exit.i.thread148.i ], [ %.0.i.ph162.i, %skl_wrpll_get_multipliers.exit.i.thread163.i ] ; 6 uses
  %.sroa.21.026.i = phi i32 [ %.sroa.21.041.i, %.sink.split.i29.i.thread36.i ], [ %switch.select119141.i, %skl_wrpll_get_multipliers.exit.i.thread.i ], [ %switch.select119156.i, %skl_wrpll_get_multipliers.exit.i.thread148.i ], [ %switch.select119171.i, %skl_wrpll_get_multipliers.exit.i.thread163.i ] ; 5 uses
  %.sroa.16.0.i = phi i32 [ 0, %.sink.split.i29.i.thread36.i ], [ 1, %skl_wrpll_get_multipliers.exit.i.thread.i ], [ 2, %skl_wrpll_get_multipliers.exit.i.thread148.i ], [ 4, %skl_wrpll_get_multipliers.exit.i.thread163.i ] ; 5 uses
  switch i32 %.0300.i28.i, label %bb.bo [
    i32 5, label %.thread.i
    i32 2, label %bb.bl
    i32 3, label %bb.bm
    i32 1, label %bb.bn
  ]

bb.bl:                                            ; preds = %.sink.split.i29.i.thread.i
  br label %.thread.i

bb.bm:                                            ; preds = %.sink.split.i29.i.thread.i
  br label %.thread.i

bb.bn:                                            ; preds = %.sink.split.i29.i.thread.i
  br label %.thread.i

bb.bo:                                            ; preds = %.sink.split.i29.i.thread.i
  %i.kk = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.61, ptr nonnull @.str.2, i32 1665, i32 2321, i64 16) #13, !srcloc !205
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.kk) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !206
  br label %.thread.i

.thread.i:                                        ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %.sink.split.i29.i.thread.i, %skl_wrpll_get_multipliers.exit.i.i, %bb.au, %bb.at, %skl_wrpll_try_divider.exit.us.2.1.5.i.i, %skl_wrpll_try_divider.exit.us.2.1.4.i.i, %skl_wrpll_try_divider.exit.us.2.1.2.i.i, %skl_wrpll_try_divider.exit.us.1.1.6.i.i, %skl_wrpll_try_divider.exit.us.1.1.5.i.i, %skl_wrpll_try_divider.exit.us.1.1.4.i.i, %skl_wrpll_try_divider.exit.us.1.1.2.i.i, %skl_wrpll_try_divider.exit.us.1111.6.i.i, %skl_wrpll_try_divider.exit.us.1111.5.i.i, %skl_wrpll_try_divider.exit.us.1111.4.i.i, %skl_wrpll_try_divider.exit.us.1111.2.i.i
  %.sroa.16.069.i = phi i32 [ %.sroa.16.0.i, %bb.bo ], [ %.sroa.16.0.i, %bb.bm ], [ %.sroa.16.0.i, %bb.bl ], [ 4, %skl_wrpll_try_divider.exit.us.1.1.2.i.i ], [ %.sroa.16.0.i, %.sink.split.i29.i.thread.i ], [ 2, %skl_wrpll_try_divider.exit.us.1111.4.i.i ], [ 2, %skl_wrpll_try_divider.exit.us.2.1.4.i.i ], [ 2, %skl_wrpll_try_divider.exit.us.1.1.4.i.i ], [ 4, %skl_wrpll_try_divider.exit.us.1111.6.i.i ], [ 4, %skl_wrpll_try_divider.exit.us.2.1.5.i.i ], [ 4, %bb.au ], [ 4, %bb.at ], [ 4, %skl_wrpll_try_divider.exit.us.1.1.6.i.i ], [ 4, %skl_wrpll_try_divider.exit.us.1.1.5.i.i ], [ 4, %skl_wrpll_try_divider.exit.us.1111.5.i.i ], [ 4, %skl_wrpll_try_divider.exit.us.2.1.2.i.i ], [ 4, %skl_wrpll_try_divider.exit.us.1111.2.i.i ], [ %.sroa.16.0.i, %bb.bn ], [ 4, %skl_wrpll_get_multipliers.exit.i.i ]
  %.sroa.21.02667.i = phi i32 [ %.sroa.21.026.i, %bb.bo ], [ %.sroa.21.026.i, %bb.bm ], [ %.sroa.21.026.i, %bb.bl ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.2.i.i ], [ %.sroa.21.026.i, %.sink.split.i29.i.thread.i ], [ 3, %skl_wrpll_try_divider.exit.us.1111.4.i.i ], [ 0, %skl_wrpll_try_divider.exit.us.2.1.4.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.4.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.1111.6.i.i ], [ 0, %skl_wrpll_try_divider.exit.us.2.1.5.i.i ], [ 0, %bb.au ], [ 0, %bb.at ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.6.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.5.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.1111.5.i.i ], [ 0, %skl_wrpll_try_divider.exit.us.2.1.2.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.1111.2.i.i ], [ %.sroa.21.026.i, %bb.bn ], [ %switch.select119.i, %skl_wrpll_get_multipliers.exit.i.i ]
  %.0300.i2865.i = phi i32 [ %.0300.i28.i, %bb.bo ], [ %.0300.i28.i, %bb.bm ], [ %.0300.i28.i, %bb.bl ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.2.i.i ], [ %.0300.i28.i, %.sink.split.i29.i.thread.i ], [ 5, %skl_wrpll_try_divider.exit.us.1111.4.i.i ], [ 5, %skl_wrpll_try_divider.exit.us.2.1.4.i.i ], [ 5, %skl_wrpll_try_divider.exit.us.1.1.4.i.i ], [ 5, %skl_wrpll_try_divider.exit.us.1111.6.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.2.1.5.i.i ], [ 5, %bb.au ], [ 5, %bb.at ], [ 5, %skl_wrpll_try_divider.exit.us.1.1.6.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.1.1.5.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.1111.5.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.2.1.2.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1111.2.i.i ], [ %.0300.i28.i, %bb.bn ], [ 1, %skl_wrpll_get_multipliers.exit.i.i ]
  %.1298.i3063.i = phi i32 [ %.1298.i30.i, %bb.bo ], [ %.1298.i30.i, %bb.bm ], [ %.1298.i30.i, %bb.bl ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.2.i.i ], [ %.1298.i30.i, %.sink.split.i29.i.thread.i ], [ 1, %skl_wrpll_try_divider.exit.us.1111.4.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.2.1.4.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.4.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1111.6.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.2.1.5.i.i ], [ 1, %bb.au ], [ 1, %bb.at ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.6.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.5.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1111.5.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.2.1.2.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1111.2.i.i ], [ %.1298.i30.i, %bb.bn ], [ 1, %skl_wrpll_get_multipliers.exit.i.i ]
  %.139296.i3261.i = phi i32 [ %.139296.i32.i, %bb.bo ], [ %.139296.i32.i, %bb.bm ], [ %.139296.i32.i, %bb.bl ], [ 7, %skl_wrpll_try_divider.exit.us.1.1.2.i.i ], [ %.139296.i32.i, %.sink.split.i29.i.thread.i ], [ 3, %skl_wrpll_try_divider.exit.us.1111.4.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.2.1.4.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.1.1.4.i.i ], [ 7, %skl_wrpll_try_divider.exit.us.1111.6.i.i ], [ 7, %skl_wrpll_try_divider.exit.us.2.1.5.i.i ], [ 7, %bb.au ], [ 7, %bb.at ], [ 7, %skl_wrpll_try_divider.exit.us.1.1.6.i.i ], [ 7, %skl_wrpll_try_divider.exit.us.1.1.5.i.i ], [ 7, %skl_wrpll_try_divider.exit.us.1111.5.i.i ], [ 7, %skl_wrpll_try_divider.exit.us.2.1.2.i.i ], [ 7, %skl_wrpll_try_divider.exit.us.1111.2.i.i ], [ %.139296.i32.i, %bb.bn ], [ 7, %skl_wrpll_get_multipliers.exit.i.i ]
  %.sroa.11.0.i = phi i32 [ 0, %bb.bo ], [ 64, %bb.bm ], [ 32, %bb.bl ], [ 96, %skl_wrpll_try_divider.exit.us.1.1.2.i.i ], [ 0, %.sink.split.i29.i.thread.i ], [ 0, %skl_wrpll_try_divider.exit.us.1111.4.i.i ], [ 0, %skl_wrpll_try_divider.exit.us.2.1.4.i.i ], [ 0, %skl_wrpll_try_divider.exit.us.1.1.4.i.i ], [ 0, %skl_wrpll_try_divider.exit.us.1111.6.i.i ], [ 64, %skl_wrpll_try_divider.exit.us.2.1.5.i.i ], [ 0, %bb.au ], [ 0, %bb.at ], [ 0, %skl_wrpll_try_divider.exit.us.1.1.6.i.i ], [ 64, %skl_wrpll_try_divider.exit.us.1.1.5.i.i ], [ 64, %skl_wrpll_try_divider.exit.us.1111.5.i.i ], [ 96, %skl_wrpll_try_divider.exit.us.2.1.2.i.i ], [ 96, %skl_wrpll_try_divider.exit.us.1111.2.i.i ], [ 96, %bb.bn ], [ 96, %skl_wrpll_get_multipliers.exit.i.i ]
  %.1298.i3063.fr.i = freeze i32 %.1298.i3063.i   ; 3 uses
  %.not120.i = icmp eq i32 %.1298.i3063.fr.i, 1
  %i.kl = mul i32 %.1298.i3063.fr.i, %.0300.i2865.i
  %i.km = mul i32 %i.kl, %.139296.i3261.i
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = mul i64 %i.r, %i.kn                     ; 2 uses
  %i.kp = mul i32 %i.p, 1000
  %i.kq = zext i32 %i.kp to i64
  %i.kr = udiv i64 %i.ko, %i.kq                   ; 2 uses
  %i.ks = trunc i64 %i.kr to i32
  %i.kt = sdiv i32 %i.p, 1000
  %i.ku = zext i32 %i.kt to i64
  %i.kv = udiv i64 %i.ko, %i.ku
  %i.kw = mul i64 %i.kr, 1000000
  %i.kx = and i64 %i.kw, 4294967232
  %i.ky = sub i64 %i.kv, %i.kx
  %i.kz = shl i64 %i.ky, 15
  %i.la = udiv i64 %i.kz, 1000000
  %i.lb = trunc i64 %i.la to i32
  %i.lc = getelementptr i8, ptr %i.f, i64 944     ; 2 uses
  store i32 33, ptr %i.lc, align 8
  %i.ld = shl i32 %i.lb, 9
  %i.le = or i32 %i.ld, %i.ks
  %i.lf = or i32 %i.le, -2147483648
  %i.lg = getelementptr i8, ptr %i.f, i64 948
  store i32 %i.lf, ptr %i.lg, align 4
  %i.lh = shl i32 %.1298.i3063.fr.i, 8
  %spec.select.i = select i1 %.not120.i, i32 0, i32 128
  %i.li = or disjoint i32 %spec.select.i, %i.lh
  %i.lj = or disjoint i32 %i.li, %.sroa.11.0.i
  %i.lk = shl nuw nsw i32 %.sroa.16.069.i, 2
  %i.ll = or i32 %.sroa.21.02667.i, %i.lk
  %i.lm = or i32 %i.ll, %i.lj
  %i.ln = getelementptr i8, ptr %i.f, i64 952
  store i32 %i.lm, ptr %i.ln, align 8
  %i.lo = tail call fastcc i32 @skl_ddi_wrpll_get_freq(ptr noundef %i.l, ptr noundef %i.lc) #16
  store i32 %i.lo, ptr %i.m, align 8
  br label %skl_ddi_hdmi_pll_dividers.exit

bb.bp:                                            ; preds = %bb.a
  %i.lp = and i32 %.val7, 2432
  %.not10 = icmp eq i32 %i.lp, 0
  br i1 %.not10, label %skl_ddi_hdmi_pll_dividers.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lq = getelementptr i8, ptr %i.f, i64 1320
  %i.lr = load i32, ptr %i.lq, align 8
  %i.ls = sdiv i32 %i.lr, 2
  switch i32 %i.ls, label %skl_ddi_dp_set_dpll_hw_state.exit [
    i32 81000, label %bb.br
    i32 135000, label %bb.bs
    i32 216000, label %bb.bv
    i32 162000, label %bb.bt
    i32 108000, label %bb.bu
  ]

bb.br:                                            ; preds = %bb.bq
  br label %skl_ddi_dp_set_dpll_hw_state.exit

bb.bs:                                            ; preds = %bb.bq
  br label %skl_ddi_dp_set_dpll_hw_state.exit

bb.bt:                                            ; preds = %bb.bq
  br label %skl_ddi_dp_set_dpll_hw_state.exit

bb.bu:                                            ; preds = %bb.bq
  br label %skl_ddi_dp_set_dpll_hw_state.exit

bb.bv:                                            ; preds = %bb.bq
  br label %skl_ddi_dp_set_dpll_hw_state.exit

skl_ddi_dp_set_dpll_hw_state.exit:                ; preds = %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv
  %.0.i9 = phi i32 [ 1, %bb.bq ], [ 5, %bb.br ], [ 3, %bb.bs ], [ 11, %bb.bv ], [ 7, %bb.bt ], [ 9, %bb.bu ]
  %i.lt = getelementptr i8, ptr %i.f, i64 944
  store i32 %.0.i9, ptr %i.lt, align 8
  br label %skl_ddi_hdmi_pll_dividers.exit

skl_ddi_hdmi_pll_dividers.exit:                   ; preds = %.thread.i, %.loopexit.split.us.1.i.i, %bb.bp, %skl_ddi_dp_set_dpll_hw_state.exit
  %.0 = phi i32 [ -22, %bb.bp ], [ 0, %skl_ddi_dp_set_dpll_hw_state.exit ], [ 0, %.thread.i ], [ -22, %.loopexit.split.us.1.i.i ]
  ret i32 %.0
}

end_hunk_1
