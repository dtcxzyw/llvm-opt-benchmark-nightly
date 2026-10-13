Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_dpll_mgr?download=true
inline.NumInlined: 679
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@icl_compute_dplls:bb.a
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
  %3 = select i1 %i.bx, ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_24MHz_values, i64 32), ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_19_2MHz_values, i64 32) ; 2 uses
  %i.cd = load i32, ptr %3, align 16
  %i.ce = icmp eq i32 %i.ca, %i.cd
  br i1 %i.ce, label %bb.ao, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %4 = select i1 %i.bx, ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_24MHz_values, i64 64), ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_19_2MHz_values, i64 64) ; 2 uses
  %i.cf = load i32, ptr %4, align 16
  %i.cg = icmp eq i32 %i.ca, %i.cf
  br i1 %i.cg, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %5 = select i1 %i.bx, ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_24MHz_values, i64 96), ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_19_2MHz_values, i64 96) ; 2 uses
  %i.ch = load i32, ptr %5, align 16
  %i.ci = icmp eq i32 %i.ca, %i.ch
  br i1 %i.ci, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %6 = select i1 %i.bx, ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_24MHz_values, i64 128), ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_19_2MHz_values, i64 128) ; 2 uses
  %i.cj = load i32, ptr %6, align 16
  %i.ck = icmp eq i32 %i.ca, %i.cj
  br i1 %i.ck, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %7 = select i1 %i.bx, ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_24MHz_values, i64 160), ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_19_2MHz_values, i64 160) ; 2 uses
  %i.cl = load i32, ptr %7, align 16
  %i.cm = icmp eq i32 %i.ca, %i.cl
  br i1 %i.cm, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %8 = select i1 %i.bx, ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_24MHz_values, i64 192), ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_19_2MHz_values, i64 192) ; 2 uses
  %i.cn = load i32, ptr %8, align 16
  %i.co = icmp eq i32 %i.ca, %i.cn
  br i1 %i.co, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %9 = select i1 %i.bx, ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_24MHz_values, i64 224), ptr getelementptr inbounds nuw (i8, ptr @icl_dp_combo_pll_19_2MHz_values, i64 224) ; 2 uses
  %i.cp = load i32, ptr %9, align 16
  %i.cq = icmp eq i32 %i.ca, %i.cp
  br i1 %i.cq, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cr = sext i32 %i.ca to i64
  %i.cs = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 2741, i32 2321, i64 16) #13, !srcloc !145
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.cs, ptr noundef nonnull @.str.64, i64 noundef %i.cr) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !146
  br label %icl_compute_combo_phy_dpll.exit

bb.ao:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.lcssa.i.i = phi ptr [ %i.by, %bb.af ], [ %3, %bb.ag ], [ %4, %bb.ah ], [ %5, %bb.ai ], [ %6, %bb.aj ], [ %7, %bb.ak ], [ %8, %bb.al ], [ %9, %bb.am ] ; 6 uses
  %i.ct = getelementptr i8, ptr %.lcssa.i.i, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.ct, align 4
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
  %i.cu = getelementptr i8, ptr %i.k, i64 1040    ; 3 uses
  %i.cv = tail call fastcc zeroext i1 @ehl_combo_pll_div_frac_wa_needed(ptr noundef readonly %i.e) #16, !srcloc !147
  %i.cw = add i32 %.sroa.0.0.ph.i, 1
  %i.cx = lshr i32 %i.cw, 1
  %.0.i25.i = select i1 %i.cv, i32 %i.cx, i32 %.sroa.0.0.ph.i
  %i.cy = shl i32 %.0.i25.i, 10
  %i.cz = or i32 %i.cy, %.sroa.6.0.ph.i
  store i32 %i.cz, ptr %i.cu, align 8
  %i.da = shl i32 %.sroa.8.0.ph.i, 10
  %i.db = shl i32 %.sroa.10.0.ph.i, 9
  %i.dc = or i32 %i.db, %i.da
  %i.dd = shl i32 %.sroa.12.0.ph.i, 6
  %i.de = or i32 %i.dc, %i.dd
  %i.df = shl i32 %.sroa.14.0.ph.i, 2
  %i.dg = or i32 %i.de, %i.df                     ; 3 uses
  %i.dh = getelementptr i8, ptr %i.k, i64 1044    ; 2 uses
  store i32 %i.dg, ptr %i.dh, align 4
  %i.di = getelementptr i8, ptr %i.e, i64 1168
  %i.dj = load i16, ptr %i.di, align 8
  %i.dk = icmp ugt i16 %i.dj, 11
  %i.dl = or disjoint i32 %i.dg, 3
  %storemerge.i.i = select i1 %i.dk, i32 %i.dg, i32 %i.dl
  store i32 %storemerge.i.i, ptr %i.dh, align 4
  %i.dm = getelementptr i8, ptr %i.e, i64 5228
  %i.dn = load i8, ptr %i.dm, align 4, !range !26, !noundef !27
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.aq, label %icl_calc_dpll_state.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.dp = getelementptr i8, ptr %i.e, i64 5229
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = zext i8 %i.dq to i32
  %i.ds = shl i32 %i.dr, 25
  %i.dt = and i32 %i.ds, 234881024
  %i.du = getelementptr i8, ptr %i.k, i64 1048
  store i32 %i.dt, ptr %i.du, align 8
  br label %icl_calc_dpll_state.exit.i

icl_calc_dpll_state.exit.i:                       ; preds = %bb.aq, %bb.ap
  %i.dv = getelementptr i8, ptr %i.k, i64 1032
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = getelementptr i8, ptr %i.k, i64 936
  store ptr %i.dw, ptr %i.dx, align 8
  %i.dy = getelementptr i8, ptr %i.k, i64 944
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(88) %i.dy, ptr noundef align 8 dereferenceable(88) %i.cu, i64 88, i1 false)
  %i.dz = tail call i32 @icl_ddi_combo_pll_get_freq(ptr noundef %i.e, ptr poison, ptr noundef %i.cu) #16, !srcloc !148
  %i.ea = getelementptr i8, ptr %i.k, i64 1320
  store i32 %i.dz, ptr %i.ea, align 8
  br label %icl_compute_combo_phy_dpll.exit

bb.ar:                                            ; preds = %bb.a
  %i.eb = tail call zeroext i1 @intel_encoder_is_tc(ptr noundef %2) #14
  br i1 %i.eb, label %bb.as, label %bb.dj

bb.as:                                            ; preds = %bb.ar
  %i.ec = getelementptr i8, ptr %0, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8            ; 2 uses
  %.not.i14 = icmp eq ptr %i.ed, null
  br i1 %.not.i14, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ee = tail call ptr @__drm_to_display(ptr noundef nonnull %i.ed) #14
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ef = phi ptr [ %i.ee, %bb.at ], [ null, %bb.as ] ; 5 uses
  %i.eg = getelementptr i8, ptr %0, i64 40
  %.val32.i = load ptr, ptr %i.eg, align 8
  %i.eh = getelementptr i8, ptr %1, i64 136
  %.val33.i = load i32, ptr %i.eh, align 8
  %i.ei = zext i32 %.val33.i to i64
  %i.ej = getelementptr [56 x i8], ptr %.val32.i, i64 %i.ei ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8            ; 31 uses
  %i.em = getelementptr i8, ptr %i.ej, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  %.val34.i = load ptr, ptr %i.el, align 8
  %.val34.val.i = load ptr, ptr %.val34.i, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %.val34.val.i, null
  br i1 %.not.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eo = tail call ptr @__drm_to_display(ptr noundef nonnull %.val34.val.i) #14
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ep = phi ptr [ %i.eo, %bb.av ], [ null, %bb.au ] ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 1168
  %i.er = load i16, ptr %i.eq, align 8
  %i.es = icmp ugt i16 %i.er, 11
  %i.et = getelementptr i8, ptr %i.ep, i64 4408   ; 3 uses
  %i.eu = load i32, ptr %i.et, align 8            ; 2 uses
  br i1 %i.es, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  switch i32 %i.eu, label %bb.ay [
    i32 19200, label %icl_calc_tbt_pll.exit.i
    i32 38400, label %icl_calc_tbt_pll.exit.i
    i32 24000, label %bb.az
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.ev = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 2753, i32 2321, i64 16) #13, !srcloc !149
  %i.ew = load i32, ptr %i.et, align 8
  %i.ex = sext i32 %i.ew to i64
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ev, ptr noundef nonnull @.str.65, i64 noundef %i.ex) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !150
  br label %icl_calc_tbt_pll.exit.i

bb.az:                                            ; preds = %bb.ax
  br label %icl_calc_tbt_pll.exit.i

bb.ba:                                            ; preds = %bb.aw
  switch i32 %i.eu, label %bb.bb [
    i32 19200, label %icl_calc_tbt_pll.exit.i
    i32 38400, label %icl_calc_tbt_pll.exit.i
    i32 24000, label %bb.bc
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.ey = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 2766, i32 2321, i64 16) #13, !srcloc !151
  %i.ez = load i32, ptr %i.et, align 8
  %i.fa = sext i32 %i.ez to i64
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ey, ptr noundef nonnull @.str.65, i64 noundef %i.fa) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !152
  br label %icl_calc_tbt_pll.exit.i

bb.bc:                                            ; preds = %bb.ba
  br label %icl_calc_tbt_pll.exit.i

icl_calc_tbt_pll.exit.i:                          ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.ax
  %.sroa.0.0.i = phi i32 [ 16384, %bb.bc ], [ 16384, %bb.az ], [ 12288, %bb.ax ], [ 12288, %bb.ay ], [ 12288, %bb.ax ], [ 28672, %bb.bb ], [ 28672, %bb.ba ], [ 28672, %bb.ba ]
  %.sroa.8.0.i = phi i32 [ 337, %bb.bc ], [ 67, %bb.az ], [ 84, %bb.ax ], [ 84, %bb.ay ], [ 84, %bb.ax ], [ 421, %bb.bb ], [ 421, %bb.ba ], [ 421, %bb.ba ]
  %.sroa.11.0.i = phi i32 [ 80, %bb.bc ], [ 0, %bb.az ], [ 0, %bb.ax ], [ 0, %bb.ay ], [ 0, %bb.ax ], [ 80, %bb.bb ], [ 80, %bb.ba ], [ 80, %bb.ba ] ; 3 uses
  %i.fb = getelementptr i8, ptr %i.el, i64 1040   ; 2 uses
  %i.fc = tail call fastcc zeroext i1 @ehl_combo_pll_div_frac_wa_needed(ptr noundef readonly %i.ef) #16, !srcloc !147
  %i.fd = zext i1 %i.fc to i32
  %.0.i.i = lshr exact i32 %.sroa.0.0.i, %i.fd
  %i.fe = shl nuw nsw i32 %.0.i.i, 10
  %i.ff = or disjoint i32 %i.fe, %.sroa.8.0.i
  store i32 %i.ff, ptr %i.fb, align 8
  %i.fg = getelementptr i8, ptr %i.el, i64 1044   ; 2 uses
  store i32 %.sroa.11.0.i, ptr %i.fg, align 4
  %i.fh = getelementptr i8, ptr %i.ef, i64 1168   ; 2 uses
  %i.fi = load i16, ptr %i.fh, align 8
  %i.fj = icmp ugt i16 %i.fi, 11
  %i.fk = or disjoint i32 %.sroa.11.0.i, 3
  %storemerge.i.i15 = select i1 %i.fj, i32 %.sroa.11.0.i, i32 %i.fk
  store i32 %storemerge.i.i15, ptr %i.fg, align 4
  %i.fl = getelementptr i8, ptr %i.ef, i64 5228
  %i.fm = load i8, ptr %i.fl, align 4, !range !26, !noundef !27
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.bd, label %icl_calc_dpll_state.exit.i16

bb.bd:                                            ; preds = %icl_calc_tbt_pll.exit.i
  %i.fo = getelementptr i8, ptr %i.ef, i64 5229
  %i.fp = load i8, ptr %i.fo, align 1
  %i.fq = zext i8 %i.fp to i32
  %i.fr = shl i32 %i.fq, 25
  %i.fs = and i32 %i.fr, 234881024
  %i.ft = getelementptr i8, ptr %i.el, i64 1048
  store i32 %i.fs, ptr %i.ft, align 8
  br label %icl_calc_dpll_state.exit.i16

icl_calc_dpll_state.exit.i16:                     ; preds = %bb.bd, %icl_calc_tbt_pll.exit.i
  %i.fu = load ptr, ptr %i.el, align 8
end_hunk_0
