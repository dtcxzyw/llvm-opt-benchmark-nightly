Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_vdsc?download=true
inline.NumInlined: 183
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@intel_dsc_get_pixel_rate_with_dsc_bubbles:bb.a

bb.g:                                             ; preds = %dev_name.exit37, %.critedge
  %.0 = phi i32 [ %i.ab, %.critedge ], [ %1, %dev_name.exit37 ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @intel_vdsc_min_cdclk(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 7 uses
  %i.e = getelementptr i8, ptr %0, i64 4412       ; 2 uses
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = tail call i32 @intel_crtc_num_joined_pipes(ptr noundef %0) #8
  %i.g = mul i32 %i.f, %.val.i                    ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 616
  %i.i = getelementptr i8, ptr %0, i64 658
  %i.j = load i16, ptr %i.i, align 2              ; 4 uses
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 4408
  %i.m = load i32, ptr %i.l, align 8
  %i.n = load i32, ptr %i.e, align 4
  %i.o = mul i32 %i.n, %i.m
  %i.p = getelementptr i8, ptr %0, i64 4416
  %i.q = load i32, ptr %i.p, align 8
  %i.r = mul i32 %i.o, %i.q                       ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 4405
  %i.t = load i8, ptr %i.s, align 1, !range !10, !noundef !11
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %0, i64 872
  %i.w = load i32, ptr %i.v, align 8              ; 2 uses
  %.not.i = icmp eq i16 %i.j, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %.critedge.i, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.f, %bb.e
  %i.aa = phi ptr [ %i.z, %bb.f ], [ null, %bb.e ]
  %i.ab = tail call ptr @dev_driver_string(ptr noundef %i.aa) #8 ; 0 uses
  %i.ac = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.5, ptr nonnull @.str.2, i32 1137, i32 2321, i64 16) #9, !srcloc !73
  %i.ad = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i30.i = icmp eq ptr %i.ad, null
  br i1 %.not.i30.i, label %__drm_to_dev.exit31.i, label %bb.g

bb.g:                                             ; preds = %__drm_to_dev.exit.i
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  br label %__drm_to_dev.exit31.i

__drm_to_dev.exit31.i:                            ; preds = %bb.g, %__drm_to_dev.exit.i
  %i.ag = phi ptr [ %i.af, %bb.g ], [ null, %__drm_to_dev.exit.i ]
  %i.ah = tail call ptr @dev_driver_string(ptr noundef %i.ag) #8
  %i.ai = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i32.i = icmp eq ptr %i.ai, null
  br i1 %.not.i32.i, label %__drm_to_dev.exit33.i, label %bb.h

bb.h:                                             ; preds = %__drm_to_dev.exit31.i
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  br label %__drm_to_dev.exit33.i

__drm_to_dev.exit33.i:                            ; preds = %bb.h, %__drm_to_dev.exit31.i
  %i.al = phi ptr [ %i.ak, %bb.h ], [ null, %__drm_to_dev.exit31.i ] ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 80
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i34.i = icmp eq ptr %i.an, null
  br i1 %.not.i34.i, label %bb.i, label %dev_name.exit37.i

bb.i:                                             ; preds = %__drm_to_dev.exit33.i
  %.val.i36.i = load ptr, ptr %i.al, align 8
  br label %dev_name.exit37.i

dev_name.exit37.i:                                ; preds = %bb.i, %__drm_to_dev.exit33.i
  %.0.i35.i = phi ptr [ %.val.i36.i, %bb.i ], [ %i.an, %__drm_to_dev.exit33.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ac, ptr noundef %i.ah, ptr noundef %.0.i35.i, ptr noundef nonnull @.str.9) #8
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !74
  br label %intel_dsc_get_pixel_rate_with_dsc_bubbles.exit

.critedge.i:                                      ; preds = %bb.d
  %i.ao = mul i32 %i.r, 14
  %i.ap = add i32 %i.ao, %i.k
  %i.aq = zext i32 %i.w to i64
  %i.ar = zext i32 %i.ap to i64
  %i.as = mul nuw i64 %i.aq, %i.ar
  %i.at = zext i16 %i.j to i64                    ; 2 uses
  %i.au = add nsw i64 %i.at, -1
  %i.av = add nuw i64 %i.au, %i.as
  %i.aw = udiv i64 %i.av, %i.at
  %i.ax = trunc i64 %i.aw to i32
  br label %intel_dsc_get_pixel_rate_with_dsc_bubbles.exit

intel_dsc_get_pixel_rate_with_dsc_bubbles.exit:   ; preds = %dev_name.exit37.i, %.critedge.i
  %.0.i = phi i32 [ %i.ax, %.critedge.i ], [ %i.w, %dev_name.exit37.i ]
  %i.ay = add i32 %i.g, -1
  %i.az = add i32 %i.ay, %.0.i
  %i.ba = sdiv i32 %i.az, %i.g                    ; 2 uses
  %i.bb = getelementptr i8, ptr %0, i64 4403
  %i.bc = load i8, ptr %i.bb, align 1
  %.not37 = icmp eq i8 %i.bc, 0
  br i1 %.not37, label %bb.p, label %bb.j

bb.j:                                             ; preds = %intel_dsc_get_pixel_rate_with_dsc_bubbles.exit
  %i.bd = load i32, ptr %i.h, align 8
  %i.be = tail call i32 @intel_dp_mode_to_fec_clock(i32 noundef %i.bd) #8 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.d, i64 1168
  %i.bg = load i16, ptr %i.bf, align 8
  br i1 %.not.i, label %bb.k, label %.critedge.i39, !prof !21

bb.k:                                             ; preds = %bb.j
  %i.bh = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i41, label %__drm_to_dev.exit.i42, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  br label %__drm_to_dev.exit.i42

__drm_to_dev.exit.i42:                            ; preds = %bb.l, %bb.k
  %i.bk = phi ptr [ %i.bj, %bb.l ], [ null, %bb.k ]
  %i.bl = tail call ptr @dev_driver_string(ptr noundef %i.bk) #8 ; 0 uses
  %i.bm = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.5, ptr nonnull @.str.2, i32 1137, i32 2321, i64 16) #9, !srcloc !73
  %i.bn = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i30.i43 = icmp eq ptr %i.bn, null
  br i1 %.not.i30.i43, label %__drm_to_dev.exit31.i44, label %bb.m

bb.m:                                             ; preds = %__drm_to_dev.exit.i42
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  br label %__drm_to_dev.exit31.i44

__drm_to_dev.exit31.i44:                          ; preds = %bb.m, %__drm_to_dev.exit.i42
  %i.bq = phi ptr [ %i.bp, %bb.m ], [ null, %__drm_to_dev.exit.i42 ]
  %i.br = tail call ptr @dev_driver_string(ptr noundef %i.bq) #8
  %i.bs = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i32.i45 = icmp eq ptr %i.bs, null
  br i1 %.not.i32.i45, label %__drm_to_dev.exit33.i46, label %bb.n

bb.n:                                             ; preds = %__drm_to_dev.exit31.i44
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  br label %__drm_to_dev.exit33.i46

__drm_to_dev.exit33.i46:                          ; preds = %bb.n, %__drm_to_dev.exit31.i44
  %i.bv = phi ptr [ %i.bu, %bb.n ], [ null, %__drm_to_dev.exit31.i44 ] ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 80
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not.i34.i47 = icmp eq ptr %i.bx, null
  br i1 %.not.i34.i47, label %bb.o, label %dev_name.exit37.i48

bb.o:                                             ; preds = %__drm_to_dev.exit33.i46
  %.val.i36.i50 = load ptr, ptr %i.bv, align 8
  br label %dev_name.exit37.i48

dev_name.exit37.i48:                              ; preds = %bb.o, %__drm_to_dev.exit33.i46
  %.0.i35.i49 = phi ptr [ %.val.i36.i50, %bb.o ], [ %i.bx, %__drm_to_dev.exit33.i46 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bm, ptr noundef %i.br, ptr noundef %.0.i35.i49, ptr noundef nonnull @.str.9) #8
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !74
  br label %intel_dsc_get_pixel_rate_with_dsc_bubbles.exit51

.critedge.i39:                                    ; preds = %bb.j
  %i.by = mul i32 %i.r, 14
  %i.bz = add i32 %i.by, %i.k
  %i.ca = zext i32 %i.be to i64
  %i.cb = zext i32 %i.bz to i64
  %i.cc = mul nuw i64 %i.ca, %i.cb
  %i.cd = zext i16 %i.j to i64                    ; 2 uses
  %i.ce = add nsw i64 %i.cd, -1
  %i.cf = add nuw i64 %i.ce, %i.cc
  %i.cg = udiv i64 %i.cf, %i.cd
  %i.ch = trunc i64 %i.cg to i32
  br label %intel_dsc_get_pixel_rate_with_dsc_bubbles.exit51

intel_dsc_get_pixel_rate_with_dsc_bubbles.exit51: ; preds = %dev_name.exit37.i48, %.critedge.i39
  %.0.i40 = phi i32 [ %i.ch, %.critedge.i39 ], [ %i.be, %dev_name.exit37.i48 ]
  %i.ci = getelementptr i8, ptr %0, i64 4420
  %i.cj = load i16, ptr %i.ci, align 4
  %i.ck = zext i16 %i.cj to i32
  %i.cl = add nuw nsw i32 %i.ck, 15
  %i.cm = lshr i32 %i.cl, 4
  %i.cn = mul i32 %i.cm, %.0.i40                  ; 2 uses
  %i.co = icmp ugt i16 %i.bg, 13
  %1 = sdiv i32 %i.cn, 72
  %i.cp = sdiv i32 %i.cn, 48
  %2 = select i1 %i.co, i32 %1, i32 %i.cp
  %i.cq = tail call i32 @llvm.smax.i32(i32 %i.ba, i32 %2)
  br label %bb.p

bb.p:                                             ; preds = %intel_dsc_get_pixel_rate_with_dsc_bubbles.exit, %intel_dsc_get_pixel_rate_with_dsc_bubbles.exit51, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %i.cq, %intel_dsc_get_pixel_rate_with_dsc_bubbles.exit51 ], [ %i.ba, %intel_dsc_get_pixel_rate_with_dsc_bubbles.exit ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_dp_mode_to_fec_clock(i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local range(i32 0, 98305) i32 @intel_vdsc_prefill_lines(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4405
  %i.b = load i8, ptr %i.a, align 1, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %. = select i1 %i.c, i32 98304, i32 0
  ret i32 %.
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i8 @intel_lookup_range_min_qp(i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i8 @intel_lookup_range_max_qp(i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dsb_reg_write(ptr noundef, i32, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_i915_reg_rw(ptr noundef, i1 noundef zeroext, i32, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @to_intel_uncore(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dmc_wl_get(ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dmc_wl_put(ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @intel_dsc_pps_write(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca [3 x %struct.i915_reg_t], align 4   ; 7 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i64 12, i1 false), !annotation !24
  %i.e = getelementptr i8, ptr %0, i64 4412
  %.val = load i32, ptr %i.e, align 4             ; 4 uses
  %i.f = icmp sgt i32 %.val, 3
  %i.g = tail call i32 @llvm.umin.i32(i32 %.val, i32 3)
  br i1 %i.f, label %bb.d, label %bb.i, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.d, %bb.e
  %i.k = phi ptr [ %i.j, %bb.e ], [ null, %bb.d ]
  %i.l = tail call ptr @dev_driver_string(ptr noundef %i.k) #8 ; 0 uses
  %i.m = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.5, ptr nonnull @.str.2, i32 515, i32 2323, i64 16) #9, !srcloc !75
  %i.n = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i35 = icmp eq ptr %i.n, null
  br i1 %.not.i35, label %__drm_to_dev.exit36, label %bb.f

bb.f:                                             ; preds = %__drm_to_dev.exit
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  br label %__drm_to_dev.exit36

__drm_to_dev.exit36:                              ; preds = %__drm_to_dev.exit, %bb.f
  %i.q = phi ptr [ %i.p, %bb.f ], [ null, %__drm_to_dev.exit ]
  %i.r = tail call ptr @dev_driver_string(ptr noundef %i.q) #8
  %i.s = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i37 = icmp eq ptr %i.s, null
  br i1 %.not.i37, label %__drm_to_dev.exit38, label %bb.g

bb.g:                                             ; preds = %__drm_to_dev.exit36
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  br label %__drm_to_dev.exit38

__drm_to_dev.exit38:                              ; preds = %__drm_to_dev.exit36, %bb.g
  %i.v = phi ptr [ %i.u, %bb.g ], [ null, %__drm_to_dev.exit36 ] ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 80
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i39 = icmp eq ptr %i.x, null
  br i1 %.not.i39, label %bb.h, label %dev_name.exit42

bb.h:                                             ; preds = %__drm_to_dev.exit38
  %.val.i41 = load ptr, ptr %i.v, align 8
  br label %dev_name.exit42

dev_name.exit42:                                  ; preds = %__drm_to_dev.exit38, %bb.h
  %.0.i40 = phi ptr [ %.val.i41, %bb.h ], [ %i.x, %__drm_to_dev.exit38 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.m, ptr noundef %i.r, ptr noundef %.0.i40, ptr noundef nonnull @.str.13) #8
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !76
  br label %bb.i

bb.i:                                             ; preds = %dev_name.exit42, %bb.c
  %.val30 = load ptr, ptr %0, align 8             ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 880
  %.val31 = load i32, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %.val30, i64 1664
  %i.aa = load i32, ptr %i.z, align 8             ; 3 uses
  %i.ab = tail call fastcc zeroext i1 @is_pipe_dsc(ptr noundef readonly %.val30, i32 noundef %.val31) #10, !srcloc !77 ; 2 uses
  %i.ac = icmp sgt i32 %.val, 2
  br i1 %i.ac, label %.thread1.i, label %bb.j

.thread1.i:                                       ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = shl i32 %i.aa, 8
  %i.af = shl i32 %1, 2                           ; 2 uses
  %i.ag = add i32 %i.af, 493680
  %i.ah = add i32 %i.ag, %i.ae
  store i32 %i.ah, ptr %i.ad, align 4
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  switch i32 %.val, label %._crit_edge [
    i32 2, label %._crit_edge46
    i32 1, label %.thread2.i
  ]

._crit_edge46:                                    ; preds = %bb.j
  %.pre = shl i32 %1, 2
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge46, %.thread1.i
  %.pre-phi = phi i32 [ %.pre, %._crit_edge46 ], [ %i.af, %.thread1.i ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  br i1 %i.ab, label %.thread2.thread.i, label %.thread2.thread3.i

.thread2.thread.i:                                ; preds = %bb.k
  %i.aj = shl i32 %i.aa, 9                        ; 2 uses
  %i.ak = add i32 %.pre-phi, 491888
  %i.al = add i32 %i.ak, %i.aj
  store i32 %i.al, ptr %i.ai, align 4
  br label %bb.l

.thread2.thread3.i:                               ; preds = %bb.k
  %i.am = icmp slt i32 %1, 12
  %i.an = select i1 %i.am, i32 440832, i32 440880
  %i.ao = add i32 %i.an, %.pre-phi
  store i32 %i.ao, ptr %i.ai, align 4
  br label %bb.m

.thread2.i:                                       ; preds = %bb.j
  br i1 %i.ab, label %.thread2._crit_edge4.i, label %.thread2._crit_edge.i

.thread2._crit_edge4.i:                           ; preds = %.thread2.i
  %.pre.i = shl i32 %i.aa, 9
  %.pre5.i = shl i32 %1, 2
  br label %bb.l

.thread2._crit_edge.i:                            ; preds = %.thread2.i
  %.pre7.i = shl i32 %1, 2
  br label %bb.m

bb.l:                                             ; preds = %.thread2._crit_edge4.i, %.thread2.thread.i
  %.pre-phi6.i = phi i32 [ %.pre5.i, %.thread2._crit_edge4.i ], [ %.pre-phi, %.thread2.thread.i ]
  %.pre-phi.i = phi i32 [ %.pre.i, %.thread2._crit_edge4.i ], [ %i.aj, %.thread2.thread.i ]
  %i.ap = add i32 %.pre-phi6.i, 491632
  %i.aq = add i32 %i.ap, %.pre-phi.i
  br label %.lr.ph.preheader

bb.m:                                             ; preds = %.thread2._crit_edge.i, %.thread2.thread3.i
  %.pre-phi8.i = phi i32 [ %.pre7.i, %.thread2._crit_edge.i ], [ %.pre-phi, %.thread2.thread3.i ]
  %i.ar = icmp slt i32 %1, 12
  %i.as = select i1 %i.ar, i32 438784, i32 438832
  %i.at = add i32 %.pre-phi8.i, %i.as
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l, %bb.m
  %.sink.i = phi i32 [ %i.aq, %bb.l ], [ %i.at, %bb.m ]
  store i32 %.sink.i, ptr %3, align 4
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
end_hunk_0
