Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_cdclk?download=true
inline.NumInlined: 472
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@intel_update_max_cdclk:bb.a
  %.not70 = icmp eq i64 %i.bj, 0
  br i1 %.not70, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bk = getelementptr i8, ptr %0, i64 680
  store i32 450000, ptr %i.bk, align 8
  br label %bb.ap

bb.ah:                                            ; preds = %bb.af
  %i.bl = and i64 %i.bi, 33554432
  %.not71 = icmp eq i64 %i.bl, 0
  %i.bm = getelementptr i8, ptr %0, i64 680       ; 2 uses
  br i1 %.not71, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 540000, ptr %i.bm, align 8
  br label %bb.ap

bb.aj:                                            ; preds = %bb.ah
  store i32 675000, ptr %i.bm, align 8
  br label %bb.ap

bb.ak:                                            ; preds = %bb.ac
  %i.bn = and i64 %i.o, 134217728
  %.not67 = icmp eq i64 %i.bn, 0
  br i1 %.not67, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bo = getelementptr i8, ptr %0, i64 680
  store i32 320000, ptr %i.bo, align 8
  br label %bb.ap

bb.am:                                            ; preds = %bb.ak
  %i.bp = and i64 %i.o, 1048576
  %.not68 = icmp eq i64 %i.bp, 0
  br i1 %.not68, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bq = getelementptr i8, ptr %0, i64 680
  store i32 400000, ptr %i.bq, align 8
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.br = getelementptr i8, ptr %0, i64 616
  %i.bs = load i32, ptr %i.br, align 8            ; 2 uses
  %i.bt = getelementptr i8, ptr %0, i64 680
  store i32 %i.bs, ptr %i.bt, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.c, %bb.i, %bb.h, %bb.o, %.thread115, %bb.al, %bb.ao, %bb.an, %bb.ae, %bb.ai, %bb.aj, %bb.ag, %bb.q, %bb.l, %bb.m, %bb.e
  %i.bu = phi i32 [ 480000, %bb.c ], [ 556800, %bb.i ], [ 552000, %bb.h ], [ 316800, %bb.o ], [ %.0.i83, %.thread115 ], [ 320000, %bb.al ], [ %i.bs, %bb.ao ], [ 400000, %bb.an ], [ 450000, %bb.ae ], [ 540000, %bb.ai ], [ 675000, %bb.aj ], [ 450000, %bb.ag ], [ 624000, %bb.q ], [ 648000, %bb.l ], [ 652800, %bb.m ], [ 691200, %bb.e ] ; 3 uses
  %.pr = load i16, ptr %i.a, align 8              ; 4 uses
  %i.bv = icmp ugt i16 %.pr, 8
  br i1 %i.bv, label %intel_compute_max_dotclk.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bw = getelementptr i8, ptr %0, i64 8
  %i.bx = load i64, ptr %i.bw, align 8            ; 2 uses
  %i.by = and i64 %i.bx, 18874368
  %or.cond.i.i = icmp eq i64 %i.by, 0
  br i1 %or.cond.i.i, label %bb.ar, label %intel_compute_max_dotclk.exit

bb.ar:                                            ; preds = %bb.aq
  %i.bz = and i64 %i.bx, 134217728
  %.not5.i.i = icmp eq i64 %i.bz, 0
  %..i.i = select i1 %.not5.i.i, i32 90, i32 95
  br label %intel_compute_max_dotclk.exit

intel_compute_max_dotclk.exit:                    ; preds = %.thread, %bb.ap, %bb.aq, %bb.ar
  %i.ca = phi i32 [ %i.bu, %bb.ap ], [ %i.bu, %bb.ar ], [ %i.bu, %bb.aq ], [ 787200, %.thread ] ; 2 uses
  %i.cb = phi i16 [ %.pr, %bb.ap ], [ %.pr, %bb.ar ], [ %.pr, %bb.aq ], [ %i.b, %.thread ]
  %.0.i.i = phi i32 [ 100, %bb.ap ], [ %..i.i, %bb.ar ], [ 100, %bb.aq ], [ 100, %.thread ]
  %i.cc = add i16 %i.cb, -10
  %i.cd = icmp ult i16 %i.cc, -6
  %i.ce = zext i1 %i.cd to i32
  %i.cf = shl i32 %i.ca, %i.ce
  %i.cg = mul i32 %i.cf, %.0.i.i
  %i.ch = sdiv i32 %i.cg, 100
  %i.ci = getelementptr i8, ptr %0, i64 684       ; 2 uses
  store i32 %i.ch, ptr %i.ci, align 4
  %i.cj = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i84 = icmp eq ptr %i.cj, null
  br i1 %.not.i84, label %__drm_to_dev.exit85, label %bb.as

bb.as:                                            ; preds = %intel_compute_max_dotclk.exit
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  br label %__drm_to_dev.exit85

__drm_to_dev.exit85:                              ; preds = %intel_compute_max_dotclk.exit, %bb.as
  %i.cm = phi ptr [ %i.cl, %bb.as ], [ null, %intel_compute_max_dotclk.exit ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.cm, i32 noundef 1, ptr noundef @.str.8, i32 noundef %i.ca) #14
  %i.cn = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i86 = icmp eq ptr %i.cn, null
  br i1 %.not.i86, label %__drm_to_dev.exit87, label %bb.at

bb.at:                                            ; preds = %__drm_to_dev.exit85
  %i.co = getelementptr i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  br label %__drm_to_dev.exit87

__drm_to_dev.exit87:                              ; preds = %__drm_to_dev.exit85, %bb.at
  %i.cq = phi ptr [ %i.cp, %bb.at ], [ null, %__drm_to_dev.exit85 ]
  %i.cr = load i32, ptr %i.ci, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.cq, i32 noundef 1, ptr noundef @.str.9, i32 noundef %i.cr) #14
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @intel_de_read(ptr noundef %0, i32 range(i32 270356, 1598733) %1) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %1) #14
  %.val = load ptr, ptr %0, align 8
  %i.a = tail call ptr @to_intel_uncore(ptr noundef %.val) #14 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 144
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 %i.c(ptr noundef %i.a, i32 range(i32 270356, 1598733) %1, i1 noundef zeroext true) #14, !inline_history !76
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %1) #14
  ret i32 %i.d
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_update_cdclk(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 616        ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 608
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef %0, ptr noundef %i.a) #14, !inline_history !77
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 135266304
  %or.cond = icmp eq i64 %i.g, 0
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %i.a, align 8
  %i.i = add i32 %i.h, 999
  %i.j = udiv i32 %i.i, 1000
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 1598736) #14
  %.val.i = load ptr, ptr %0, align 8
  %i.k = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #14 ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 176
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef %i.k, i32 range(i32 286720, 1598737) 1598736, i32 noundef %i.j, i1 noundef zeroext true) #14, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 1598736) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @intel_de_write(ptr noundef %0, i32 range(i32 286720, 1598737) %1, i32 noundef %2) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %1) #14
  %.val = load ptr, ptr %0, align 8
  %i.a = tail call ptr @to_intel_uncore(ptr noundef %.val) #14 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 176
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef %i.a, i32 range(i32 286720, 1598737) %1, i32 noundef %2, i1 noundef zeroext true) #14, !inline_history !78
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %1) #14
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @intel_read_rawclk(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp sgt i32 %i.b, 1025
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %i.b, 1023
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 811524) #14
  %.val.i.i = load ptr, ptr %0, align 8
  %i.e = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #14 ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 176
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef %i.e, i32 range(i32 286720, 1598737) 811524, i32 noundef 270864384, i1 noundef zeroext true) #14, !inline_history !79
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 811524) #14
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.h = icmp sgt i32 %i.b, 5
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 794644) #14
  %.val.i.i17 = load ptr, ptr %0, align 8
  %i.i = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i17) #14 ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 144
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 %i.k(ptr noundef %i.i, i32 range(i32 270356, 1598733) 794644, i1 noundef zeroext true) #14, !inline_history !80
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 794644) #14
  %i.m = and i32 %i.l, 256
  %.not.not.i = icmp eq i32 %i.m, 0               ; 3 uses
  %.25.i = select i1 %.not.not.i, i32 19000, i32 24000
  %.finite = select i1 %.not.not.i, i32 1245184, i32 1572864 ; 2 uses
  br i1 %.not.not.i, label %bb.f, label %cnp_rawclk.exit

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %i.a, align 8
  %i.o = icmp sgt i32 %i.n, 6
  %spec.select.v.i = select i1 %i.o, i32 268437504, i32 268435456
  %spec.select.i = or disjoint i32 %spec.select.v.i, %.finite
  br label %cnp_rawclk.exit

cnp_rawclk.exit:                                  ; preds = %bb.e, %bb.f
  %..i = phi i32 [ 200, %bb.f ], [ 0, %bb.e ]
  %.1.i = phi i32 [ %spec.select.i, %bb.f ], [ %.finite, %bb.e ]
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 811524) #14
  %.val.i26.i = load ptr, ptr %0, align 8
  %i.p = tail call ptr @to_intel_uncore(ptr noundef %.val.i26.i) #14 ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 176
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef %i.p, i32 range(i32 286720, 1598737) 811524, i32 noundef %.1.i, i1 noundef zeroext true) #14, !inline_history !81
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 811524) #14
  %i.s = add nuw nsw i32 %..i, %.25.i
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 811524) #14
  %.val.i.i18 = load ptr, ptr %0, align 8
  %i.t = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i18) #14 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 144
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call i32 %i.v(ptr noundef %i.t, i32 range(i32 270356, 1598733) 811524, i1 noundef zeroext true) #14, !inline_history !82
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 811524) #14
  %i.x = and i32 %i.w, 1023
  %i.y = mul nuw nsw i32 %i.x, 1000
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = and i64 %i.aa, 135266304
  %or.cond = icmp eq i64 %i.ab, 0
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = tail call i32 @vlv_clock_get_hrawclk(ptr noundef %i.ac) #14
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ae = getelementptr i8, ptr %0, i64 1168
  %i.af = load i16, ptr %i.ae, align 8
  %i.ag = icmp ugt i16 %i.af, 2
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = tail call i32 @intel_fsb_freq(ptr noundef %0) #14
  %i.ai = add i32 %i.ah, 2
  %i.aj = lshr i32 %i.ai, 2
  br label %bb.m

bb.m:                                             ; preds = %cnp_rawclk.exit, %bb.j, %bb.l, %bb.h, %bb.c, %bb.a, %bb.k
  %.013 = phi i32 [ 0, %bb.k ], [ %i.aj, %bb.l ], [ 38400, %bb.c ], [ %i.s, %cnp_rawclk.exit ], [ %i.y, %bb.h ], [ %i.ad, %bb.j ], [ 38400, %bb.a ]
  ret i32 %.013
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @vlv_clock_get_hrawclk(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_cdclk_debugfs_register(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 1520
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr @debugfs_create_file_full(ptr noundef @.str.10, i16 noundef zeroext 292, ptr noundef %i.c, ptr noundef %0, ptr noundef null, ptr noundef @i915_cdclk_info_fops) #14 ; 0 uses
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_full(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_init_cdclk_hooks(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1168
  %i.b = load i16, ptr %i.a, align 8              ; 8 uses
  %i.c = icmp ugt i16 %i.b, 34
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 608
  store ptr @xe3lpd_cdclk_funcs, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 640
  store ptr @xe3p_lpd_cdclk_table, ptr %i.e, align 8
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.f = icmp samesign ugt i16 %i.b, 29
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 608
  store ptr @xe3lpd_cdclk_funcs, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %0, i64 640
  store ptr @xe3lpd_cdclk_table, ptr %i.h, align 8
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.i = icmp samesign ugt i16 %i.b, 19
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %0, i64 608
  store ptr @rplu_cdclk_funcs, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %0, i64 640
  store ptr @xe2lpd_cdclk_table, ptr %i.k, align 8
  br label %.critedge

bb.g:                                             ; preds = %bb.e
  %narrow = mul nuw nsw i16 %i.b, 100
  %i.l = zext nneg i16 %narrow to i32
  %i.m = getelementptr i8, ptr %0, i64 1170
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i32
  %i.p = add nuw nsw i32 %i.o, %i.l
  %i.q = icmp samesign ugt i32 %i.p, 1400
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %0, i64 608
  store ptr @rplu_cdclk_funcs, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %0, i64 640
  store ptr @xe2hpd_cdclk_table, ptr %i.s, align 8
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.t = icmp samesign ugt i16 %i.b, 13
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr i8, ptr %0, i64 608
  store ptr @rplu_cdclk_funcs, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %0, i64 640
  store ptr @mtl_cdclk_table, ptr %i.v, align 8
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.w = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.x = load i64, ptr %i.w, align 8              ; 26 uses
  %i.y = and i64 %i.x, 72057594037927936
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr i8, ptr %0, i64 608
  store ptr @tgl_cdclk_funcs, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %0, i64 640
  store ptr @dg2_cdclk_table, ptr %i.aa, align 8
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.ab = and i64 %i.x, 4503599627370496
  %.not102 = icmp eq i64 %i.ab, 0
  br i1 %.not102, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = tail call zeroext i1 @__intel_display_wa(ptr noundef %0, i32 noundef 29, ptr noundef @.str.11) #14
  br i1 %i.ac, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr i8, ptr %0, i64 608
  %i.ae = getelementptr i8, ptr %0, i64 640
  store ptr @adlp_a_step_cdclk_table, ptr %i.ae, align 8
  store ptr @tgl_cdclk_funcs, ptr %i.ad, align 8
  br label %.critedge

bb.p:                                             ; preds = %bb.n
  %i.af = load i64, ptr %i.w, align 8
  %i.ag = and i64 %i.af, 36028797018963968
  %.not130 = icmp eq i64 %i.ag, 0
  %i.ah = getelementptr i8, ptr %0, i64 608       ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 640       ; 2 uses
  br i1 %.not130, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr @rplu_cdclk_table, ptr %i.ai, align 8
  store ptr @rplu_cdclk_funcs, ptr %i.ah, align 8
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  store ptr @adlp_cdclk_table, ptr %i.ai, align 8
  store ptr @tgl_cdclk_funcs, ptr %i.ah, align 8
  br label %.critedge

bb.s:                                             ; preds = %bb.m
  %i.aj = and i64 %i.x, 281474976710656
  %.not103 = icmp eq i64 %i.aj, 0
  br i1 %.not103, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = getelementptr i8, ptr %0, i64 608
  store ptr @tgl_cdclk_funcs, ptr %i.ak, align 8
  %i.al = getelementptr i8, ptr %0, i64 640
  store ptr @rkl_cdclk_table, ptr %i.al, align 8
  br label %.critedge

bb.u:                                             ; preds = %bb.s
  %i.am = icmp samesign ugt i16 %i.b, 11
  br i1 %i.am, label %bb.v, label %bb.w

end_hunk_0
