Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_color?download=true
inline.NumInlined: 670
inline.NumDeleted: 167
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 15
begin_hunk_0_@glk_color_check:bb.a
  store i64 %i.dx, ptr %i.dw, align 2
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit47.i.loopexit.unr-lcssa, label %.lr.ph.split.i.i, !llvm.loop !4

.loopexit47.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.split.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit47.i, label %.lr.ph.split.i.i.epil.preheader

.lr.ph.split.i.i.epil.preheader:                  ; preds = %.loopexit47.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %.loopexit47.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod116 = trunc i32 %i.cu to i1
  tail call void @llvm.assume(i1 %lcmp.mod116)
  %i.dy = trunc nuw nsw i64 %indvars.iv.i.i.epil.init to i32
  %i.dz = mul i32 %i.dh, %i.dy
  %i.ea = sdiv i32 %i.dz, %i.di
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr [8 x i8], ptr %i.dd, i64 %i.eb
  %i.ed = getelementptr [8 x i8], ptr %i.df, i64 %indvars.iv.i.i.epil.init
  %i.ee = load i64, ptr %i.ec, align 2
  store i64 %i.ee, ptr %i.ed, align 2
  br label %.loopexit47.i

.loopexit47.i:                                    ; preds = %.lr.ph.split.i.i.epil.preheader, %.loopexit47.i.loopexit.unr-lcssa, %bb.y
  %i.ef = getelementptr i8, ptr %i.j, i64 752
  %i.eg = tail call zeroext i1 @drm_property_replace_blob(ptr noundef %i.ef, ptr noundef %i.da) #11 ; 0 uses
  %i.eh = getelementptr i8, ptr %i.j, i64 760
  %i.ei = tail call zeroext i1 @drm_property_replace_blob(ptr noundef %i.eh, ptr noundef null) #11 ; 0 uses
  tail call void @drm_property_blob_put(ptr noundef %i.da) #11
  br label %glk_assign_luts.exit.thread

glk_use_pre_csc_lut_for_gamma.exit.thread.i:      ; preds = %glk_use_pre_csc_lut_for_gamma.exit.i74, %bb.w, %bb.v
  %i.ej = load ptr, ptr %i.j, align 8
  %i.ek = load ptr, ptr %i.ej, align 8            ; 2 uses
  %.not.i35.i = icmp eq ptr %i.ek, null
  br i1 %.not.i35.i, label %.thread.i.i, label %bb.z

bb.z:                                             ; preds = %glk_use_pre_csc_lut_for_gamma.exit.thread.i
  %i.el = tail call ptr @__drm_to_display(ptr noundef nonnull %i.ek) #11 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.j, align 8
  %.pre15.i.i = load ptr, ptr %.pre.i.i, align 8  ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %.pre15.i.i, null
  br i1 %.not.i.i.i72, label %.thread.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.em = tail call ptr @__drm_to_display(ptr noundef nonnull %.pre15.i.i) #11
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.aa, %bb.z, %glk_use_pre_csc_lut_for_gamma.exit.thread.i
  %i.en = phi ptr [ %i.el, %bb.aa ], [ %i.el, %bb.z ], [ null, %glk_use_pre_csc_lut_for_gamma.exit.thread.i ]
  %i.eo = phi ptr [ %i.em, %bb.aa ], [ null, %bb.z ], [ null, %glk_use_pre_csc_lut_for_gamma.exit.thread.i ] ; 2 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 1168
  %i.eq = load i16, ptr %i.ep, align 8
  %i.er = add i16 %i.eq, -11
  %or.cond.i.i.i = icmp ult i16 %i.er, -4
  br i1 %or.cond.i.i.i, label %ilk_lut_limited_range.exit.thread.i, label %bb.ab

bb.ab:                                            ; preds = %.thread.i.i
  %i.es = getelementptr i8, ptr %i.eo, i64 8
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = and i64 %i.et, 524288
  %.not9.i.i.i = icmp eq i64 %i.eu, 0
  br i1 %.not9.i.i.i, label %ilk_limited_range.exit.i.i, label %ilk_lut_limited_range.exit.thread.i

ilk_limited_range.exit.i.i:                       ; preds = %bb.ab
  %i.ev = getelementptr i8, ptr %i.j, i64 884
  %i.ew = load i8, ptr %i.ev, align 4, !range !15, !noundef !16
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.ac, label %ilk_lut_limited_range.exit.thread.i

bb.ac:                                            ; preds = %ilk_limited_range.exit.i.i
  %i.ey = getelementptr i8, ptr %i.j, i64 3948
  %i.ez = load i8, ptr %i.ey, align 4
  %.not11.i.i = icmp eq i8 %i.ez, 0
  br i1 %.not11.i.i, label %bb.ad, label %ilk_lut_limited_range.exit.thread.i

bb.ad:                                            ; preds = %bb.ac
  %i.fa = getelementptr i8, ptr %i.en, i64 1168
  %i.fb = load i16, ptr %i.fa, align 8
  %i.fc = icmp eq i16 %i.fb, 10
  %i.fd = load ptr, ptr %i.v, align 8             ; 3 uses
  %.not46.i = icmp eq ptr %i.fd, null             ; 2 uses
  br i1 %i.fc, label %ilk_lut_limited_range.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not46.i, label %ilk_lut_limited_range.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fe = getelementptr i8, ptr %i.j, i64 352
  %i.ff = load ptr, ptr %i.fe, align 8
  %.not13.i.i = icmp eq ptr %i.ff, null
  br i1 %.not13.i.i, label %.split.i, label %ilk_lut_limited_range.exit.thread41.i

.split.i:                                         ; preds = %bb.af
  %i.fg = getelementptr i8, ptr %i.j, i64 368
  %i.fh = load ptr, ptr %i.fg, align 8
  %.not45.i = icmp eq ptr %i.fh, null
  br i1 %.not45.i, label %ilk_lut_limited_range.exit.thread.i, label %ilk_lut_limited_range.exit.thread41.i

ilk_lut_limited_range.exit.i:                     ; preds = %bb.ad
  br i1 %.not46.i, label %ilk_lut_limited_range.exit.thread.i, label %ilk_lut_limited_range.exit.thread41.i

ilk_lut_limited_range.exit.thread41.i:            ; preds = %ilk_lut_limited_range.exit.i, %.split.i, %bb.af
  %i.fi = getelementptr i8, ptr %i.fd, i64 72
  %.val.i73 = load i64, ptr %i.fi, align 8
  %i.fj = lshr i64 %.val.i73, 3                   ; 3 uses
  %i.fk = trunc i64 %i.fj to i32                  ; 2 uses
  %.val33.i = load ptr, ptr %i.cm, align 8
  %sext.i = shl i64 %i.fj, 32
  %i.fl = ashr exact i64 %sext.i, 29
  %i.fm = tail call ptr @drm_property_create_blob(ptr noundef %.val33.i, i64 noundef %i.fl, ptr noundef null) #11 ; 5 uses
  %i.fn = icmp ugt ptr %i.fm, inttoptr (i64 -4096 to ptr)
  br i1 %i.fn, label %glk_assign_luts.exit, label %bb.ag

bb.ag:                                            ; preds = %ilk_lut_limited_range.exit.thread41.i
  %i.fo = getelementptr i8, ptr %i.fd, i64 80
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = getelementptr i8, ptr %i.fm, i64 80
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = icmp sgt i32 %i.fk, 0
  br i1 %i.fs, label %.lr.ph.i37.i, label %.loopexit.i

.lr.ph.i37.i:                                     ; preds = %bb.ag
  %i.ft = add nsw i32 %i.fk, -1                   ; 2 uses
  %wide.trip.count7.i38.i = and i64 %i.fj, 2147483647
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i, %.lr.ph.i37.i
  %indvars.iv4.i.i = phi i64 [ %indvars.iv.next5.i.i, %.lr.ph.split.us.i.i ], [ 0, %.lr.ph.i37.i ] ; 3 uses
  %i.fu = trunc nuw nsw i64 %indvars.iv4.i.i to i32
  %i.fv = mul i32 %i.ft, %i.fu
  %i.fw = sdiv i32 %i.fv, %i.ft
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr [8 x i8], ptr %i.fp, i64 %i.fx ; 3 uses
  %i.fz = load i16, ptr %i.fy, align 2
  %i.ga = zext i16 %i.fz to i32
  %i.gb = mul nuw nsw i32 %i.ga, 18688
  %i.gc = udiv i32 %i.gb, 21845
  %i.gd = trunc nuw i32 %i.gc to i16
  %i.ge = add nuw i16 %i.gd, 4096
  %i.gf = getelementptr [8 x i8], ptr %i.fr, i64 %indvars.iv4.i.i ; 3 uses
  store i16 %i.ge, ptr %i.gf, align 2
  %i.gg = getelementptr i8, ptr %i.fy, i64 2
  %i.gh = load i16, ptr %i.gg, align 2
  %i.gi = zext i16 %i.gh to i32
  %i.gj = mul nuw nsw i32 %i.gi, 18688
  %i.gk = udiv i32 %i.gj, 21845
  %i.gl = trunc nuw i32 %i.gk to i16
  %i.gm = add nuw i16 %i.gl, 4096
  %i.gn = getelementptr i8, ptr %i.gf, i64 2
  store i16 %i.gm, ptr %i.gn, align 2
  %i.go = getelementptr i8, ptr %i.fy, i64 4
  %i.gp = load i16, ptr %i.go, align 2
  %i.gq = zext i16 %i.gp to i32
  %i.gr = mul nuw nsw i32 %i.gq, 18688
  %i.gs = udiv i32 %i.gr, 21845
  %i.gt = trunc nuw i32 %i.gs to i16
  %i.gu = add nuw i16 %i.gt, 4096
  %i.gv = getelementptr i8, ptr %i.gf, i64 4
  store i16 %i.gu, ptr %i.gv, align 2
  %indvars.iv.next5.i.i = add nuw nsw i64 %indvars.iv4.i.i, 1 ; 2 uses
  %exitcond8.not.i.i = icmp eq i64 %indvars.iv.next5.i.i, %wide.trip.count7.i38.i
  br i1 %exitcond8.not.i.i, label %.loopexit.i, label %.lr.ph.split.us.i.i, !llvm.loop !4

.loopexit.i:                                      ; preds = %.lr.ph.split.us.i.i, %bb.ag
  %i.gw = getelementptr i8, ptr %i.j, i64 760
  %i.gx = tail call zeroext i1 @drm_property_replace_blob(ptr noundef %i.gw, ptr noundef %i.fm) #11 ; 0 uses
  tail call void @drm_property_blob_put(ptr noundef %i.fm) #11
  br label %bb.ah

ilk_lut_limited_range.exit.thread.i:              ; preds = %ilk_lut_limited_range.exit.i, %.split.i, %bb.ae, %bb.ac, %ilk_limited_range.exit.i.i, %bb.ab, %.thread.i.i
  %i.gy = getelementptr i8, ptr %i.j, i64 760
  %i.gz = load ptr, ptr %i.v, align 8
  %i.ha = tail call zeroext i1 @drm_property_replace_blob(ptr noundef %i.gy, ptr noundef %i.gz) #11 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %ilk_lut_limited_range.exit.thread.i, %.loopexit.i
  %i.hb = getelementptr i8, ptr %i.j, i64 752     ; 3 uses
  %i.hc = getelementptr i8, ptr %i.j, i64 352
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = tail call zeroext i1 @drm_property_replace_blob(ptr noundef %i.hb, ptr noundef %i.hd) #11 ; 0 uses
  %i.hf = load i8, ptr %i.bz, align 1, !range !15, !noundef !16
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.ai, label %glk_assign_luts.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.hh = load ptr, ptr %i.hb, align 8
  %.not32.i = icmp eq ptr %i.hh, null
  br i1 %.not32.i, label %bb.aj, label %glk_assign_luts.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.hi = getelementptr i8, ptr %i.cm, i64 704
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = tail call zeroext i1 @drm_property_replace_blob(ptr noundef %i.hb, ptr noundef %i.hj) #11 ; 0 uses
  br label %glk_assign_luts.exit.thread

glk_assign_luts.exit:                             ; preds = %ilk_lut_limited_range.exit.thread41.i, %bb.x
  %.2.i.in.in = phi ptr [ %i.da, %bb.x ], [ %i.fm, %ilk_lut_limited_range.exit.thread41.i ]
  %.2.i.in = ptrtoint ptr %.2.i.in.in to i64
  %.2.i = trunc nsw i64 %.2.i.in to i32
  br label %bb.ao

glk_assign_luts.exit.thread:                      ; preds = %bb.ah, %bb.ai, %bb.aj, %.loopexit47.i
  tail call fastcc void @ilk_assign_csc(ptr noundef %i.j) #14, !srcloc !175
  %i.hl = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i76 = icmp eq ptr %i.hl, null
  br i1 %.not.i76, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %glk_assign_luts.exit.thread
  %i.hm = tail call ptr @__drm_to_display(ptr noundef nonnull %i.hl) #11
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %glk_assign_luts.exit.thread
  %i.hn = phi ptr [ %i.hm, %bb.ak ], [ null, %glk_assign_luts.exit.thread ]
  %.val.i77 = load ptr, ptr %i.e, align 8
  %.val11.i = load i32, ptr %i.f, align 8
  %i.ho = zext i32 %.val11.i to i64
  %i.hp = getelementptr [56 x i8], ptr %.val.i77, i64 %i.ho
  %i.hq = getelementptr i8, ptr %i.hp, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8            ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hn, i64 1168
  %i.ht = load i16, ptr %i.hs, align 8
  %i.hu = icmp ugt i16 %i.ht, 29
  br i1 %i.hu, label %intel_can_preload_luts.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hv = getelementptr i8, ptr %i.hr, i64 760
  %i.hw = load ptr, ptr %i.hv, align 8
  %.not9.i = icmp eq ptr %i.hw, null
  br i1 %.not9.i, label %bb.an, label %intel_can_preload_luts.exit

bb.an:                                            ; preds = %bb.am
  %i.hx = getelementptr i8, ptr %i.hr, i64 752
  %i.hy = load ptr, ptr %i.hx, align 8
  %.not10.i = icmp eq ptr %i.hy, null
  %i.hz = zext i1 %.not10.i to i8
  br label %intel_can_preload_luts.exit

intel_can_preload_luts.exit:                      ; preds = %bb.al, %bb.am, %bb.an
  %.0.i78 = phi i8 [ 0, %bb.al ], [ 0, %bb.am ], [ %i.hz, %bb.an ]
  %i.ia = getelementptr i8, ptr %i.j, i64 851
  store i8 %.0.i78, ptr %i.ia, align 1
  br label %bb.ao

bb.ao:                                            ; preds = %glk_assign_luts.exit, %glk_gamma_mode.exit, %glk_check_luts.exit, %intel_can_preload_luts.exit, %__drm_to_dev.exit62, %__drm_to_dev.exit
  %.0 = phi i32 [ 0, %intel_can_preload_luts.exit ], [ -22, %__drm_to_dev.exit ], [ -22, %__drm_to_dev.exit62 ], [ %i.ao, %glk_check_luts.exit ], [ %i.ci, %glk_gamma_mode.exit ], [ %.2.i, %glk_assign_luts.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @skl_color_commit_noarm(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 1289
  %i.b = load i8, ptr %i.a, align 1, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %ilk_load_csc_matrix.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4401
  %i.e = load i8, ptr %i.d, align 1, !range !15, !noundef !16
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %ilk_load_csc_matrix.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8
  %i.h = getelementptr i8, ptr %1, i64 768
  tail call fastcc void @ilk_update_pipe_csc(ptr noundef %0, ptr noundef %i.g, ptr noundef readonly %i.h) #14, !srcloc !38
  br label %ilk_load_csc_matrix.exit

ilk_load_csc_matrix.exit:                         ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @skl_color_commit_arm(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #11
  %.pre = load ptr, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %.pre, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.e = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.f = getelementptr i8, ptr %i.d, i64 1664     ; 5 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %1, i64 736
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %1, i64 1289
  %i.k = load i8, ptr %i.j, align 1, !range !15, !noundef !16
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %ilk_load_csc_matrix.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %1, i64 4401
  %i.n = load i8, ptr %i.m, align 1, !range !15, !noundef !16
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %ilk_load_csc_matrix.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %1, i64 768
  tail call fastcc void @ilk_update_pipe_csc(ptr noundef %0, ptr noundef %i.d, ptr noundef readonly %i.p) #14, !srcloc !38
  br label %ilk_load_csc_matrix.exit

ilk_load_csc_matrix.exit:                         ; preds = %bb.e, %bb.d, %bb.c
  %i.q = getelementptr i8, ptr %1, i64 4400
  %i.r = load i8, ptr %i.q, align 8, !range !15, !noundef !16
  %i.s = zext nneg i8 %i.r to i32
  %i.t = shl nuw i32 %i.s, 31
  %spec.select = or i32 %i.t, %i.i
  %i.u = getelementptr i8, ptr %1, i64 4401
  %i.v = load i8, ptr %i.u, align 1, !range !15, !noundef !16
  %i.w = zext nneg i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 30
  %.1 = or i32 %spec.select, %i.x                 ; 3 uses
  %i.y = shl i32 %i.g, 12
  %i.z = add i32 %i.y, 458804                     ; 5 uses
  %.not.i30 = icmp eq ptr %0, null
  br i1 %.not.i30, label %bb.f, label %bb.p

bb.f:                                             ; preds = %ilk_load_csc_matrix.exit
  %i.aa = zext i32 %.1 to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i [label %arch_test_bit.exit.i.i.i], !srcloc !18

arch_test_bit.exit.i.i.i:                         ; preds = %bb.f
  %i.ab = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !19
  %i.ac = zext i32 %i.ab to i64
  %i.ad = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ac) #12, !srcloc !20 ; 2 uses
  %i.ae = icmp ult i8 %i.ad, 2
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = trunc nuw i8 %i.ad to i1
  br i1 %i.af, label %bb.g, label %trace_i915_reg_rw.exit.i

bb.g:                                             ; preds = %arch_test_bit.exit.i.i.i
  %i.ag = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ag, ptr elementtype(i64) %i.ag) #12, !srcloc !21
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !22
  %i.ah = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.aj, i1 noundef zeroext true, i32 %i.z, i64 noundef range(i64 0, 4294967296) %i.aa, i32 noundef 4, i1 noundef zeroext true) #11 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !23
  %i.al = getelementptr i8, ptr %i.ag, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.al, ptr elementtype(i64) %i.al) #12, !srcloc !24
  br label %trace_i915_reg_rw.exit.i

trace_i915_reg_rw.exit.i:                         ; preds = %bb.i, %arch_test_bit.exit.i.i.i, %bb.f
  %.val.i = load ptr, ptr %i.e, align 8
  %i.am = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #11 ; 2 uses
  %i.an = icmp ult i32 %i.z, 262144
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %trace_i915_reg_rw.exit.i
  %i.ao = getelementptr i8, ptr %i.am, i64 36
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = add i32 %i.ap, %i.z
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %trace_i915_reg_rw.exit.i
  %.0.i.i = phi i32 [ %i.aq, %bb.j ], [ %i.z, %trace_i915_reg_rw.exit.i ]
  %i.ar = load ptr, ptr %i.am, align 8
  %i.as = zext i32 %.0.i.i to i64
  %i.at = getelementptr i8, ptr %i.ar, i64 %i.as
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.1, ptr elementtype(i32) %i.at) #12, !srcloc !25
  %i.au = load i32, ptr %i.f, align 8
  %i.av = shl i32 %i.au, 11
  %i.aw = add i32 %i.av, 304256                   ; 4 uses
  %i.ax = getelementptr i8, ptr %1, i64 3936
  %i.ay = load i32, ptr %i.ax, align 8            ; 2 uses
  %i.az = zext i32 %i.ay to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #12
          to label %trace_i915_reg_rw.exit.i33 [label %arch_test_bit.exit.i.i.i32], !srcloc !18

arch_test_bit.exit.i.i.i32:                       ; preds = %bb.k
  %i.ba = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #12, !srcloc !19
  %i.bb = zext i32 %i.ba to i64
  %i.bc = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.bb) #12, !srcloc !20 ; 2 uses
  %i.bd = icmp ult i8 %i.bc, 2
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = trunc nuw i8 %i.bc to i1
  br i1 %i.be, label %bb.l, label %trace_i915_reg_rw.exit.i33

bb.l:                                             ; preds = %arch_test_bit.exit.i.i.i32
  %i.bf = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bf, ptr elementtype(i64) %i.bf) #12, !srcloc !21
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !22
  %i.bg = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i36, label %bb.n, label %bb.m

end_hunk_0
