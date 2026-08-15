inline.NumInlined: 1015
inline.NumDeleted: 242
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@intel_dp_dsc_compute_config:bb.a
  br label %bb.ap

.loopexit:                                        ; preds = %dsc_compute_link_config.exit.i.i, %.preheader.i.i
  %i.ez = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i46 = icmp eq ptr %i.ez, null
  br i1 %.not.i46, label %__drm_to_dev.exit, label %bb.ao

bb.ao:                                            ; preds = %.loopexit
  %i.fa = getelementptr i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %.loopexit, %bb.ao
  %i.fc = phi ptr [ %i.fb, %bb.ao ], [ null, %.loopexit ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.fc, i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef -22) #15
  br label %intel_dp_dsc_supports_format.exit.thread

bb.ap:                                            ; preds = %intel_dp_dsc_compute_pipe_bpp.exit, %bb.g
  %i.fd = getelementptr i8, ptr %1, i64 644
  %i.fe = load i32, ptr %i.fd, align 4
  %i.ff = getelementptr i8, ptr %1, i64 648
  %i.fg = load i16, ptr %i.ff, align 8
  %i.fh = zext i16 %i.fg to i32
  %i.fi = getelementptr i8, ptr %1, i64 4408      ; 2 uses
  %i.fj = tail call fastcc zeroext i1 @intel_dp_dsc_get_slice_config(ptr noundef %i.e, i32 noundef %i.fe, i32 noundef %i.fh, i32 noundef %i.f, ptr noundef %i.fi) #17, !srcloc !38
  br i1 %i.fj, label %bb.aq, label %intel_dp_dsc_supports_format.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.fk = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i47 = icmp eq ptr %i.fk, null
  br i1 %.not.i47, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fl = tail call ptr @__drm_to_display(ptr noundef nonnull %i.fk) #15
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.fm = phi ptr [ %i.fl, %bb.ar ], [ null, %bb.aq ] ; 2 uses
  %i.fn = getelementptr i8, ptr %1, i64 4422      ; 2 uses
  %i.fo = getelementptr i8, ptr %1, i64 4526
  store i16 8192, ptr %i.fo, align 2
  %i.fp = getelementptr i8, ptr %1, i64 662
  %i.fq = load i16, ptr %i.fp, align 2            ; 3 uses
  %i.fr = getelementptr i8, ptr %1, i64 4434
  store i16 %i.fq, ptr %i.fr, align 2
  %i.fs = zext i16 %i.fq to i32                   ; 2 uses
  %.not9.i.i = icmp ult i16 %i.fq, 108
  br i1 %.not9.i.i, label %intel_dp_get_slice_height.exit.i, label %.lr.ph.i.i48

.lr.ph.i.i48:                                     ; preds = %bb.as, %bb.at
  %.010.i.i = phi i32 [ %i.fv, %bb.at ], [ 108, %bb.as ] ; 3 uses
  %i.ft = urem i32 %i.fs, %.010.i.i
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %intel_dp_get_slice_height.exit.loopexit.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i48
  %i.fv = add nuw nsw i32 %.010.i.i, 2            ; 2 uses
  %.not.i.i49 = icmp samesign ugt i32 %i.fv, %i.fs
  br i1 %.not.i.i49, label %intel_dp_get_slice_height.exit.loopexit.i, label %.lr.ph.i.i48, !llvm.loop !39

intel_dp_get_slice_height.exit.loopexit.i:        ; preds = %bb.at, %.lr.ph.i.i48
  %.07.i.ph.i = phi i32 [ 2, %bb.at ], [ %.010.i.i, %.lr.ph.i.i48 ]
  %i.fw = trunc i32 %.07.i.ph.i to i16
  br label %intel_dp_get_slice_height.exit.i

intel_dp_get_slice_height.exit.i:                 ; preds = %intel_dp_get_slice_height.exit.loopexit.i, %bb.as
  %.07.i.i = phi i16 [ 2, %bb.as ], [ %i.fw, %intel_dp_get_slice_height.exit.loopexit.i ]
  %i.fx = getelementptr i8, ptr %1, i64 4428
  store i16 %.07.i.i, ptr %i.fx, align 4
  %i.fy = tail call i32 @intel_dsc_compute_params(ptr noundef %1) #15 ; 2 uses
  %.not44.i = icmp eq i32 %i.fy, 0
  br i1 %.not44.i, label %bb.au, label %intel_dp_dsc_compute_params.exit

bb.au:                                            ; preds = %intel_dp_get_slice_height.exit.i
  %i.fz = getelementptr i8, ptr %i.e, i64 2728
  %i.ga = getelementptr i8, ptr %i.e, i64 2729    ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1
  %i.gc = and i8 %i.gb, 15
  %i.gd = getelementptr i8, ptr %1, i64 4549
  store i8 %i.gc, ptr %i.gd, align 1
  %i.ge = getelementptr i8, ptr %i.fm, i64 1168
  %.val.i51 = load i16, ptr %i.ge, align 8
  %i.gf = icmp ugt i16 %.val.i51, 13
  %i.gg = select i1 %i.gf, i8 2, i8 1
  %.val46.i = load i8, ptr %i.ga, align 1
  %i.gh = lshr i8 %.val46.i, 4
  %i.gi = tail call i8 @llvm.umin.i8(i8 %i.gg, i8 %i.gh)
  %i.gj = getelementptr i8, ptr %1, i64 4548
  store i8 %i.gi, ptr %i.gj, align 4
  %i.gk = getelementptr i8, ptr %1, i64 4424      ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 8, !range !18, !noundef !19
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gn = load i8, ptr %i.aa, align 1
  %i.go = and i8 %i.gn, 1
  store i8 %i.go, ptr %i.gk, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.gp = tail call zeroext i8 @drm_dp_dsc_sink_line_buf_depth(ptr noundef %i.fz) #15 ; 2 uses
  %i.gq = tail call i8 @llvm.umin.i8(i8 %i.gp, i8 13)
  store i8 %i.gq, ptr %i.fn, align 2
  %.not45.i = icmp eq i8 %i.gp, 0
  br i1 %.not45.i, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.gr = load ptr, ptr %i.fm, align 8            ; 2 uses
  %.not.i47.i = icmp eq ptr %i.gr, null
  br i1 %.not.i47.i, label %intel_dp_dsc_compute_params.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gs = getelementptr i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8
  br label %intel_dp_dsc_compute_params.exit.thread

intel_dp_dsc_compute_params.exit.thread:          ; preds = %bb.ax, %bb.ay
  %i.gu = phi ptr [ %i.gt, %bb.ay ], [ null, %bb.ax ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.gu, i32 noundef 2, ptr noundef nonnull @.str.59) #15
  br label %bb.ba

bb.az:                                            ; preds = %bb.aw
  %i.gv = getelementptr i8, ptr %i.e, i64 2734
  %i.gw = load i8, ptr %i.gv, align 2
  %i.gx = getelementptr i8, ptr %1, i64 4448
  %i.gy = and i8 %i.gw, 1
  store i8 %i.gy, ptr %i.gx, align 8
  %i.gz = tail call i32 @drm_dsc_compute_rc_parameters(ptr noundef %i.fn) #15
  br label %intel_dp_dsc_compute_params.exit

intel_dp_dsc_compute_params.exit:                 ; preds = %intel_dp_get_slice_height.exit.i, %bb.az
  %.0.i50 = phi i32 [ %i.fy, %intel_dp_get_slice_height.exit.i ], [ %i.gz, %bb.az ] ; 2 uses
  %i.ha = icmp slt i32 %.0.i50, 0
  br i1 %i.ha, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %intel_dp_dsc_compute_params.exit.thread, %intel_dp_dsc_compute_params.exit
  %.0.i5061 = phi i32 [ -22, %intel_dp_dsc_compute_params.exit.thread ], [ %.0.i50, %intel_dp_dsc_compute_params.exit ]
  %i.hb = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i52 = icmp eq ptr %i.hb, null
  br i1 %.not.i52, label %__drm_to_dev.exit53, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hc = getelementptr i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8
  br label %__drm_to_dev.exit53

__drm_to_dev.exit53:                              ; preds = %bb.ba, %bb.bb
  %i.he = phi ptr [ %i.hd, %bb.bb ], [ null, %bb.ba ]
  %i.hf = getelementptr i8, ptr %1, i64 1240
  %i.hg = load i32, ptr %i.hf, align 8
  %i.hh = getelementptr i8, ptr %1, i64 4420
  %i.hi = load i16, ptr %i.hh, align 4
  %i.hj = zext i16 %i.hi to i32                   ; 2 uses
  %i.hk = lshr i32 %i.hj, 4
  %i.hl = and i32 %i.hj, 15
  %i.hm = mul nuw nsw i32 %i.hl, 625
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.he, i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef %i.hg, i32 noundef %i.hk, i32 noundef %i.hm) #15
  br label %intel_dp_dsc_supports_format.exit.thread

bb.bc:                                            ; preds = %intel_dp_dsc_compute_params.exit
  tail call void @intel_dsc_enable_on_crtc(ptr noundef %1) #15
  %i.hn = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i54 = icmp eq ptr %i.hn, null
  br i1 %.not.i54, label %__drm_to_dev.exit55, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ho = getelementptr i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8
  br label %__drm_to_dev.exit55

__drm_to_dev.exit55:                              ; preds = %bb.bc, %bb.bd
  %i.hq = phi ptr [ %i.hp, %bb.bd ], [ null, %bb.bc ]
  %i.hr = getelementptr i8, ptr %1, i64 1240
  %i.hs = load i32, ptr %i.hr, align 8
  %i.ht = getelementptr i8, ptr %1, i64 4420
  %i.hu = load i16, ptr %i.ht, align 4
  %i.hv = zext i16 %i.hu to i32                   ; 2 uses
  %i.hw = lshr i32 %i.hv, 4
  %i.hx = and i32 %i.hv, 15
  %i.hy = mul nuw nsw i32 %i.hx, 625
  %i.hz = tail call i32 @intel_dsc_line_slice_count(ptr noundef %i.fi) #15
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.hq, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %i.hs, i32 noundef %i.hw, i32 noundef %i.hy, i32 noundef %i.hz) #15
  br label %intel_dp_dsc_supports_format.exit.thread

intel_dp_dsc_supports_format.exit.thread:         ; preds = %bb.d, %bb.f, %bb.ap, %intel_dp_dsc_supports_format.exit, %__drm_to_dev.exit55, %__drm_to_dev.exit53, %__drm_to_dev.exit
  %.0 = phi i32 [ %.0.i5061, %__drm_to_dev.exit53 ], [ 0, %__drm_to_dev.exit55 ], [ -22, %intel_dp_dsc_supports_format.exit ], [ -22, %__drm_to_dev.exit ], [ -22, %bb.ap ], [ -22, %bb.f ], [ -22, %bb.d ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_crtc_num_joined_pipes(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dsc_enable_on_crtc(ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 129) i32 @intel_dp_compute_min_compressed_bpp_x16(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %switch = icmp ult i32 %1, 3
  br i1 %switch, label %intel_dp_dsc_sink_min_compressed_bpp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %1 to i64
  %i.b = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.2, i32 2243, i32 2321, i64 16) #16, !srcloc !40
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.b, ptr noundef nonnull @.str.60, i64 noundef %i.a) #15
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !41
  br label %intel_dp_dsc_sink_min_compressed_bpp.exit

intel_dp_dsc_sink_min_compressed_bpp.exit:        ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %intel_dp_dsc_sink_min_compressed_bpp.exit
  %i.d = tail call ptr @__drm_to_display(ptr noundef nonnull %i.c) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %intel_dp_dsc_sink_min_compressed_bpp.exit
  %i.e = phi ptr [ %i.d, %bb.c ], [ null, %intel_dp_dsc_sink_min_compressed_bpp.exit ] ; 4 uses
  %i.f = getelementptr i8, ptr %i.e, i64 1168
  %i.g = load i16, ptr %i.f, align 8
  %i.h = icmp ugt i16 %i.g, 12
  br i1 %i.h, label %bb.e, label %align_min_compressed_bpp_x16.exit

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @__drm_to_display(ptr noundef nonnull %i.i) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = phi ptr [ %i.j, %bb.f ], [ null, %bb.e ]
  %i.l = getelementptr i8, ptr %0, i64 2728
  %i.m = tail call zeroext i8 @drm_dp_dsc_sink_bpp_incr(ptr noundef %i.l) #15 ; 2 uses
  %i.n = getelementptr i8, ptr %i.k, i64 1168
  %i.o = load i16, ptr %i.n, align 8
  %i.p = icmp ugt i16 %i.o, 13
  %i.q = icmp ne i8 %i.m, 0
  %or.cond.i.i = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond.i.i, label %bb.h, label %intel_dp_dsc_bpp_step_x16.exit.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %0, i64 2800
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not13.i.i = icmp eq ptr %i.s, null
  br i1 %.not13.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr i8, ptr %0, i64 2808
  %i.u = load i32, ptr %i.t, align 8
  %.not14.i.i = icmp eq i32 %i.u, 0
  br i1 %.not14.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr i8, ptr %i.s, i64 3272
  %i.w = load i8, ptr %i.v, align 8, !range !18, !noundef !19
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.k, label %intel_dp_dsc_bpp_step_x16.exit.i

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.y = udiv i8 16, %i.m
  %.zext.i.i = zext nneg i8 %i.y to i32
  br label %intel_dp_dsc_bpp_step_x16.exit.i

intel_dp_dsc_bpp_step_x16.exit.i:                 ; preds = %bb.k, %bb.j, %bb.g
  %.0.i.i = phi i32 [ %.zext.i.i, %bb.k ], [ 16, %bb.g ], [ 16, %bb.j ] ; 2 uses
  %i.z = zext nneg i32 %.0.i.i to i64             ; 2 uses
  %i.aa = add nsw i64 %i.z, -1                    ; 2 uses
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = icmp ult i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.q, label %bb.l, !prof !10

bb.l:                                             ; preds = %intel_dp_dsc_bpp_step_x16.exit.i
  %i.ad = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i19.i = icmp eq ptr %i.ad, null
  br i1 %.not.i19.i, label %__drm_to_dev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.m, %bb.l
  %i.ag = phi ptr [ %i.af, %bb.m ], [ null, %bb.l ]
  %i.ah = tail call ptr @dev_driver_string(ptr noundef %i.ag) #15 ; 0 uses
  %i.ai = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 2334, i32 2321, i64 16) #16, !srcloc !42
  %i.aj = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i24.i = icmp eq ptr %i.aj, null
  br i1 %.not.i24.i, label %__drm_to_dev.exit25.i, label %bb.n

bb.n:                                             ; preds = %__drm_to_dev.exit.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  br label %__drm_to_dev.exit25.i

__drm_to_dev.exit25.i:                            ; preds = %bb.n, %__drm_to_dev.exit.i
  %i.am = phi ptr [ %i.al, %bb.n ], [ null, %__drm_to_dev.exit.i ]
  %i.an = tail call ptr @dev_driver_string(ptr noundef %i.am) #15
  %i.ao = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i26.i = icmp eq ptr %i.ao, null
  br i1 %.not.i26.i, label %__drm_to_dev.exit27.i, label %bb.o

bb.o:                                             ; preds = %__drm_to_dev.exit25.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  br label %__drm_to_dev.exit27.i

__drm_to_dev.exit27.i:                            ; preds = %bb.o, %__drm_to_dev.exit25.i
  %i.ar = phi ptr [ %i.aq, %bb.o ], [ null, %__drm_to_dev.exit25.i ] ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 80
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not.i28.i = icmp eq ptr %i.at, null
  br i1 %.not.i28.i, label %bb.p, label %dev_name.exit31.i

bb.p:                                             ; preds = %__drm_to_dev.exit27.i
  %.val.i30.i = load ptr, ptr %i.ar, align 8
  br label %dev_name.exit31.i

dev_name.exit31.i:                                ; preds = %bb.p, %__drm_to_dev.exit27.i
  %.0.i29.i = phi ptr [ %.val.i30.i, %bb.p ], [ %i.at, %__drm_to_dev.exit27.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ai, ptr noundef %i.an, ptr noundef %.0.i29.i, ptr noundef nonnull @.str.58) #15
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !43
  br label %bb.q

bb.q:                                             ; preds = %dev_name.exit31.i, %intel_dp_dsc_bpp_step_x16.exit.i
  %i.au = add nuw nsw i32 %.0.i.i, 127
  %2 = and i32 %i.au, 128
  br label %align_min_compressed_bpp_x16.exit

align_min_compressed_bpp_x16.exit:                ; preds = %bb.d, %bb.q
  %.0.i15 = phi i32 [ %2, %bb.q ], [ 128, %bb.d ]
  ret i32 %.0.i15
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @intel_dp_mode_valid_with_dsc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i64 noundef %8) local_unnamed_addr #3 align 16 prefalign(16) {
intel_attached_dp.exit:
  %9 = alloca %struct.intel_dsc_slice_config, align 4 ; 6 uses
  %i.a = tail call i32 @intel_dp_compute_min_compressed_bpp_x16(ptr noundef %0, i32 noundef %6) #17 ; 4 uses
  %i.b = tail call fastcc i32 @compute_max_compressed_bpp_x16(ptr noundef %0, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef 2147483647) #17, !srcloc !44
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false), !annotation !28
  %i.c = call fastcc zeroext i1 @intel_dp_dsc_get_slice_config(ptr noundef %0, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %9) #17, !srcloc !29
  br i1 %i.c, label %intel_dp_dsc_get_slice_count.exit, label %intel_dp_dsc_get_slice_count.exit.thread

intel_dp_dsc_get_slice_count.exit.thread:         ; preds = %intel_attached_dp.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.c

intel_dp_dsc_get_slice_count.exit:                ; preds = %intel_attached_dp.exit
  %i.d = call i32 @intel_dsc_line_slice_count(ptr noundef nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %10 = icmp eq i32 %i.a, 0
  %i.e = icmp sgt i32 %i.a, %i.b
  %or.cond = select i1 %10, i1 true, i1 %i.e
  %i.f = and i32 %i.d, 255
  %i.g = icmp eq i32 %i.f, 0
  %or.cond27 = select i1 %or.cond, i1 true, i1 %i.g
  br i1 %or.cond27, label %bb.c, label %bb.a

bb.a:                                             ; preds = %intel_dp_dsc_get_slice_count.exit
  %i.h = call i32 @drm_dp_max_dprx_data_rate(i32 noundef %1, i32 noundef %2) #15
  %i.i = and i64 %8, -14
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %is_bw_sufficient_for_dsc_config.exit, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void asm sideeffect "718: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 718b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 718) #16, !srcloc !15
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.5, ptr nonnull @.str.2, i32 430, i32 2305, i64 16) #16, !srcloc !16
  call void asm sideeffect "719: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 719b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 719) #16, !srcloc !17
  br label %is_bw_sufficient_for_dsc_config.exit

is_bw_sufficient_for_dsc_config.exit:             ; preds = %bb.a, %bb.b
  %i.j = icmp sgt i32 %1, 999999
  %i.k = or i64 %8, 2
  %spec.select.i.i.i = select i1 %i.j, i64 %i.k, i64 %8 ; 2 uses
  %i.l = call i32 @drm_dp_bw_overhead(i32 noundef %2, i32 noundef %4, i32 noundef 0, i32 noundef %i.a, i64 noundef %spec.select.i.i.i) #15
  %i.m = and i64 %spec.select.i.i.i, 8
  %.not25.i.i.i = icmp eq i64 %i.m, 0
  %i.n = select i1 %.not25.i.i.i, i32 1000000, i32 1028530
  %i.o = call range(i32 1000000, -2147483648) i32 @llvm.smax.i32(i32 %i.l, i32 %i.n)
  %i.p = mul i32 %i.a, %3
  %i.q = zext i32 %i.p to i64
  %i.r = zext nneg i32 %i.o to i64
  %i.s = mul nuw nsw i64 %i.r, %i.q
  %i.t = add nuw nsw i64 %i.s, 127999999
  %i.u = udiv i64 %i.t, 128000000
  %i.v = trunc i64 %i.u to i32
  %i.w = icmp sge i32 %i.h, %i.v
  br label %bb.c

bb.c:                                             ; preds = %intel_dp_dsc_get_slice_count.exit.thread, %intel_dp_dsc_get_slice_count.exit, %is_bw_sufficient_for_dsc_config.exit
  %.0 = phi i1 [ %i.w, %is_bw_sufficient_for_dsc_config.exit ], [ false, %intel_dp_dsc_get_slice_count.exit ], [ false, %intel_dp_dsc_get_slice_count.exit.thread ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @compute_max_compressed_bpp_x16(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 2800
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.d, label %intel_attached_dp.exit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 2248
  %.val.i = load ptr, ptr %i.f, align 8           ; 6 uses
  %i.g = getelementptr i8, ptr %.val.i, i64 152
  %.val.i.i.i = load i32, ptr %i.g, align 8
  switch i32 %.val.i.i.i, label %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i [
    i32 10, label %enc_to_intel_dp.exit.i
    i32 7, label %enc_to_intel_dp.exit.i
    i32 8, label %enc_to_intel_dp.exit.i
    i32 6, label %enc_to_intel_dp.exit.i
    i32 11, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %.val.i, i64 512
  %i.i = load ptr, ptr %i.h, align 8
  br label %enc_to_intel_dp.exit.i

intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i: ; preds = %bb.d
  br label %enc_to_intel_dp.exit.i

enc_to_intel_dp.exit.i:                           ; preds = %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i, %bb.e, %bb.d, %bb.d, %bb.d, %bb.d
  %.0.i.i.i = phi ptr [ %.val.i, %bb.d ], [ %i.i, %bb.e ], [ %.val.i, %bb.d ], [ %.val.i, %bb.d ], [ %.val.i, %bb.d ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i ]
  %i.j = getelementptr i8, ptr %.0.i.i.i, i64 504
  br label %intel_attached_dp.exit

intel_attached_dp.exit:                           ; preds = %bb.c, %enc_to_intel_dp.exit.i
  %.0.i = phi ptr [ %i.j, %enc_to_intel_dp.exit.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.k = getelementptr i8, ptr %.0.i, i64 -504
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i62 = icmp eq ptr %i.l, null
  br i1 %.not.i62, label %bb.g, label %bb.f

bb.f:                                             ; preds = %intel_attached_dp.exit
  %i.m = tail call ptr @__drm_to_display(ptr noundef nonnull %i.l) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %intel_attached_dp.exit
  %i.n = phi ptr [ %i.m, %bb.f ], [ null, %intel_attached_dp.exit ]
  %i.o = getelementptr i8, ptr %.0.i, i64 3264
  %i.p = load i8, ptr %i.o, align 8, !range !18, !noundef !19
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %dsc_src_max_compressed_bpp.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %i.n, i64 1168
  %i.s = load i16, ptr %i.r, align 8
  %i.t = icmp ult i16 %i.s, 13
  %..i = select i1 %i.t, i32 23, i32 27
  br label %dsc_src_max_compressed_bpp.exit

dsc_src_max_compressed_bpp.exit:                  ; preds = %bb.g, %bb.h
  %.0.i63 = phi i32 [ 18, %bb.g ], [ %..i, %bb.h ]
  %i.u = getelementptr i8, ptr %i.c, i64 1168
  %.val.i64 = load i16, ptr %i.u, align 8         ; 3 uses
  %i.v = icmp ugt i16 %.val.i64, 12
  %i.w = icmp ugt i16 %.val.i64, 10
  %..i.i.i = select i1 %i.w, i32 61440, i32 49152
  %.0.i.i.i65 = select i1 %i.v, i32 138240, i32 %..i.i.i
  %i.x = udiv i32 %.0.i.i.i65, %2
  %i.y = mul i32 %i.x, %3                         ; 2 uses
  %i.z = icmp sgt i32 %3, 1
  br i1 %i.z, label %bb.i, label %get_max_compressed_bpp_with_joiner.exit

bb.i:                                             ; preds = %dsc_src_max_compressed_bpp.exit
  %i.aa = getelementptr i8, ptr %i.c, i64 680
  %.val22.i = load i32, ptr %i.aa, align 8
  %i.ab = lshr i32 %3, 1
  %i.ac = icmp ugt i16 %.val.i64, 13
  %i.ad = select i1 %i.ac, i32 72, i32 48
  %i.ae = mul i32 %.val22.i, %i.ad
  %i.af = zext i32 %1 to i64
  %i.ag = mul nuw nsw i64 %i.af, 102853
  %i.ah = udiv i64 %i.ag, 100000
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = udiv i32 %i.ae, %i.ai
  %i.ak = mul i32 %i.aj, %i.ab
  %i.al = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.ak) ; 2 uses
  %i.am = icmp eq i32 %3, 4
  br i1 %i.am, label %bb.j, label %get_max_compressed_bpp_with_joiner.exit

bb.j:                                             ; preds = %bb.i
  %i.an = udiv i32 147456, %2
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.al, i32 %i.an)
  br label %get_max_compressed_bpp_with_joiner.exit

get_max_compressed_bpp_with_joiner.exit:          ; preds = %dsc_src_max_compressed_bpp.exit, %bb.i, %bb.j
  %.1.i = phi i32 [ %i.ao, %bb.j ], [ %i.al, %bb.i ], [ %i.y, %dsc_src_max_compressed_bpp.exit ]
  %i.ap = sdiv i32 %5, 3
  %i.aq = getelementptr i8, ptr %0, i64 2735
  %.val = load i8, ptr %i.aq, align 1
  %i.ar = getelementptr i8, ptr %0, i64 2736
  %.val61 = load i8, ptr %i.ar, align 8
  %i.as = zext i8 %.val to i16
  %i.at = and i8 %.val61, 3
  %i.au = zext nneg i8 %i.at to i16
  %i.av = shl nuw nsw i16 %i.au, 8
  %i.aw = or disjoint i16 %i.av, %i.as            ; 2 uses
  %.not.i.i = icmp eq i16 %i.aw, 0
  br i1 %.not.i.i, label %bb.k, label %intel_dp_dsc_sink_max_compressed_bpp.exit

bb.k:                                             ; preds = %get_max_compressed_bpp_with_joiner.exit
  switch i32 %4, label %bb.n [
    i32 0, label %bb.l
    i32 2, label %bb.l
    i32 1, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.ax = trunc i32 %i.ap to i16
  %i.ay = mul i16 %i.ax, 48
  br label %intel_dp_dsc_sink_max_compressed_bpp.exit

bb.m:                                             ; preds = %bb.k
  %i.az = sdiv i32 %5, 6
  %i.ba = trunc i32 %i.az to i16
  %i.bb = mul i16 %i.ba, 48
  br label %intel_dp_dsc_sink_max_compressed_bpp.exit

bb.n:                                             ; preds = %bb.k
  %i.bc = zext i32 %4 to i64
  %i.bd = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.2, i32 2226, i32 2321, i64 16) #16, !srcloc !45
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bd, ptr noundef nonnull @.str.60, i64 noundef %i.bc) #15
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !46
  br label %intel_dp_dsc_sink_max_compressed_bpp.exit

intel_dp_dsc_sink_max_compressed_bpp.exit:        ; preds = %get_max_compressed_bpp_with_joiner.exit, %bb.l, %bb.m, %bb.n
  %.0.i.i = phi i16 [ %i.bb, %bb.m ], [ 0, %bb.n ], [ %i.ay, %bb.l ], [ %i.aw, %get_max_compressed_bpp_with_joiner.exit ]
  %i.be = lshr i16 %.0.i.i, 4
  %i.bf = zext nneg i16 %i.be to i32
  %i.bg = tail call i32 @llvm.umin.i32(i32 %i.bf, i32 %.0.i63)
  %i.bh = tail call i32 @llvm.smin.i32(i32 %i.bg, i32 %.1.i)
  %i.bi = shl i32 %i.bh, 4
  %i.bj = tail call i32 @llvm.smin.i32(i32 %6, i32 %i.bi) ; 3 uses
  %i.bk = getelementptr i8, ptr %0, i64 2745
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = and i8 %i.bl, 2
  %.not.i66 = icmp eq i8 %i.bm, 0
  br i1 %.not.i66, label %dsc_throughput_quirk_max_bpp_x16.exit.thread, label %dsc_throughput_quirk_max_bpp_x16.exit
end_hunk_0
