inline.NumInlined: 118
inline.NumDeleted: 30
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@drm_fb_memcpy:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i8, ptr %i.f, align 1
  %i.ar = zext i8 %i.aq to i64
  %i.as = icmp samesign ult i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %.lr.ph.us, label %._crit_edge51, !llvm.loop !16

iosys_map_memcpy_to.exit.us.us:                   ; preds = %.lr.ph.us, %iosys_map_memcpy_to.exit.us.us
  %.03047.us.us = phi i32 [ %i.av, %iosys_map_memcpy_to.exit.us.us ], [ 0, %.lr.ph.us ]
  %.sroa.044.046.us.us = phi ptr [ %storemerge.i43.us.us, %iosys_map_memcpy_to.exit.us.us ], [ %.sroa.044.0.copyload.us, %.lr.ph.us ] ; 2 uses
  %.sroa.0.045.us.us = phi ptr [ %storemerge.i41.us.us, %iosys_map_memcpy_to.exit.us.us ], [ %storemerge.i.us, %.lr.ph.us ] ; 2 uses
  tail call void @memcpy_toio(ptr noundef %.sroa.044.046.us.us, ptr noundef %.sroa.0.045.us.us, i64 noundef range(i64 0, 536870912) %i.t) #12
  %i.at = load i32, ptr %i.y, align 4
  %i.au = zext i32 %i.at to i64
  %storemerge.i41.us.us = getelementptr i8, ptr %.sroa.0.045.us.us, i64 %i.au
  %storemerge.i43.us.us = getelementptr i8, ptr %.sroa.044.046.us.us, i64 %i.af
  %i.av = add nuw i32 %.03047.us.us, 1            ; 2 uses
  %exitcond64.not = icmp eq i32 %i.av, %umax
  br i1 %exitcond64.not, label %._crit_edge.us, label %iosys_map_memcpy_to.exit.us.us, !llvm.loop !12

.lr.ph50.split:                                   ; preds = %.lr.ph50, %.lr.ph50.split
  %.02948 = phi i32 [ %i.ax, %.lr.ph50.split ], [ 0, %.lr.ph50 ] ; 2 uses
  %i.aw = tail call i32 @drm_format_info_bpp(ptr noundef %i.b, i32 noundef %.02948) #12 ; 0 uses
  %i.ax = add nuw nsw i32 %.02948, 1              ; 2 uses
  %i.ay = load i8, ptr %i.f, align 1
  %i.az = zext i8 %i.ay to i32
  %i.ba = icmp samesign ult i32 %i.ax, %i.az
  br i1 %i.ba, label %.lr.ph50.split, label %._crit_edge51, !llvm.loop !16

._crit_edge51:                                    ; preds = %.lr.ph50.split, %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_format_info_bpp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_fb_swab(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i1 noundef zeroext %5, ptr nofree noundef captures(none) %6) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %3, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = tail call i32 @drm_format_info_bpp(ptr noundef %i.b, i32 noundef 0) #12
  %i.d = add i32 %i.c, 7
  %i.e = lshr i32 %i.d, 3
  %i.f = trunc i32 %i.e to i8
  switch i8 %i.f, label %bb.b [
    i8 4, label %.split12
    i8 2, label %.split
  ]

.split12:                                         ; preds = %bb.a
  tail call fastcc void @drm_fb_xfrm(ptr noundef %0, ptr noundef %1, i8 4, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr noundef %6, ptr noundef nonnull @drm_fb_swab32_line) #13
  br label %bb.e

.split:                                           ; preds = %bb.a
  tail call fastcc void @drm_fb_xfrm(ptr noundef %0, ptr noundef %1, i8 2, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr noundef %6, ptr noundef nonnull @drm_fb_swab16_line) #13
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %.b = load i1, ptr @drm_fb_swab.__print_once, align 1
  br i1 %.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i1 true, ptr @drm_fb_swab.__print_once, align 1
  %i.g = load ptr, ptr %3, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.c, %bb.d
  %i.j = phi ptr [ %i.i, %bb.d ], [ null, %bb.c ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.j, ptr noundef nonnull @.str, ptr noundef %i.b) #14
  br label %bb.e

bb.e:                                             ; preds = %.split12, %.split, %bb.b, %__drm_to_dev.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite)
define internal void @drm_fb_swab32_line(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #7 align 16 prefalign(16) {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr [4 x i8], ptr %1, i64 %i.a ; 2 uses
  %i.c = icmp ult ptr %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi ptr [ %i.g, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.078 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.d = getelementptr i8, ptr %.078, i64 4       ; 2 uses
  %i.e = load i32, ptr %.078, align 4
  %i.f = tail call i32 @llvm.bswap.i32(i32 %i.e)
  %i.g = getelementptr i8, ptr %.09, i64 4
  store i32 %i.f, ptr %.09, align 4
  %i.h = icmp ult ptr %i.d, %i.b
  br i1 %i.h, label %.lr.ph, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite)
define internal void @drm_fb_swab16_line(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #7 align 16 prefalign(16) {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr [2 x i8], ptr %1, i64 %i.a ; 2 uses
  %i.c = icmp ult ptr %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi ptr [ %i.g, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.078 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.d = getelementptr i8, ptr %.078, i64 2       ; 2 uses
  %i.e = load i16, ptr %.078, align 2
  %i.f = tail call i16 @llvm.bswap.i16(i16 %i.e)
  %i.g = getelementptr i8, ptr %.09, i64 2
  store i16 %i.f, ptr %.09, align 2
  %i.h = icmp ult ptr %i.d, %i.b
  br i1 %i.h, label %.lr.ph, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @drm_fb_xfrm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i8 %.0.val, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i1 noundef zeroext %5, ptr nofree noundef captures(none) %6, ptr nofree noundef readonly captures(none) %7) unnamed_addr #1 align 16 {
bb.a:
  %.not = icmp eq ptr %1, null
  %spec.store.select = select i1 %.not, ptr @drm_fb_xfrm.default_dst_pitch, ptr %1
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load ptr, ptr %0, align 8                ; 4 uses
  %i.e = load i32, ptr %spec.store.select, align 4 ; 3 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = zext i8 %.0.val to i64                   ; 2 uses
  %i.h = load ptr, ptr %2, align 8                ; 2 uses
  %.val55.i = load i32, ptr %4, align 4
  %i.i = getelementptr i8, ptr %4, i64 8          ; 2 uses
  %.val56.i = load i32, ptr %i.i, align 4
  %i.j = sub i32 %.val56.i, %.val55.i             ; 5 uses
  %i.k = sext i32 %i.j to i64                     ; 3 uses
  %i.l = getelementptr i8, ptr %4, i64 4          ; 3 uses
  %.val53.i = load i32, ptr %i.l, align 4         ; 3 uses
  %i.m = getelementptr i8, ptr %4, i64 12
  %.val54.i = load i32, ptr %i.m, align 4         ; 3 uses
  %i.n = sub i32 %.val54.i, %.val53.i
  %i.o = sext i32 %i.n to i64                     ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.p = mul nsw i64 %i.k, %i.g                   ; 7 uses
  %i.q = getelementptr i8, ptr %3, i64 72         ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 6
  %i.t = load i8, ptr %i.s, align 2
  %i.u = zext i8 %i.t to i64
  %i.v = mul nsw i64 %i.u, %i.k                   ; 2 uses
  br i1 %5, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr i8, ptr %6, i64 8          ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %.not.i.i = icmp ugt i64 %i.p, %i.x
  br i1 %.not.i.i, label %bb.d, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c
  %.pre.i.i = load ptr, ptr %6, align 8
  br label %drm_format_conv_state_reserve.exit.i

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr i8, ptr %6, i64 16
  %i.z = load i8, ptr %i.y, align 8, !range !10, !noundef !11
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %__drm_fb_xfrm_toio.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %6, align 8
  %i.ac = tail call ptr @krealloc_node_align_noprof(ptr noundef %i.ab, i64 noundef %i.p, i64 noundef 1, i32 noundef 3264, i32 noundef -1) #11 ; 3 uses
  %.not20.i.i = icmp eq ptr %i.ac, null
  br i1 %.not20.i.i, label %__drm_fb_xfrm_toio.exit, label %drm_format_conv_state_reserve.exit.thread66.i

drm_format_conv_state_reserve.exit.thread66.i:    ; preds = %bb.e
  store ptr %i.ac, ptr %6, align 8
  store i64 %i.p, ptr %i.w, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.ad = add nsw i64 %i.p, 7
  %8 = and i64 %i.ad, -8                          ; 2 uses
  %i.ae = add nsw i64 %i.v, %8                    ; 3 uses
  %i.af = getelementptr i8, ptr %6, i64 8         ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %.not.i57.i = icmp ugt i64 %i.ae, %i.ag
  br i1 %.not.i57.i, label %bb.g, label %._crit_edge.i58.i

._crit_edge.i58.i:                                ; preds = %bb.f
  %.pre.i59.i = load ptr, ptr %6, align 8
  br label %drm_format_conv_state_reserve.exit62.i

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr i8, ptr %6, i64 16
  %i.ai = load i8, ptr %i.ah, align 8, !range !10, !noundef !11
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %drm_format_conv_state_reserve.exit62.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %6, align 8
  %i.al = tail call ptr @krealloc_node_align_noprof(ptr noundef %i.ak, i64 noundef %i.ae, i64 noundef 1, i32 noundef 3264, i32 noundef -1) #11 ; 3 uses
  %.not20.i61.i = icmp eq ptr %i.al, null
  br i1 %.not20.i61.i, label %drm_format_conv_state_reserve.exit62.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.al, ptr %6, align 8
  store i64 %i.ae, ptr %i.af, align 8
  br label %drm_format_conv_state_reserve.exit62.i

drm_format_conv_state_reserve.exit62.i:           ; preds = %bb.i, %bb.h, %bb.g, %._crit_edge.i58.i
  %.0.i60.i = phi ptr [ null, %bb.h ], [ null, %bb.g ], [ %.pre.i59.i, %._crit_edge.i58.i ], [ %i.al, %bb.i ] ; 2 uses
  %i.am = getelementptr i8, ptr %.0.i60.i, i64 %8
  br label %drm_format_conv_state_reserve.exit.i

drm_format_conv_state_reserve.exit.i:             ; preds = %drm_format_conv_state_reserve.exit62.i, %._crit_edge.i.i
  %.044.i = phi ptr [ %i.am, %drm_format_conv_state_reserve.exit62.i ], [ null, %._crit_edge.i.i ]
  %.0.i = phi ptr [ %.0.i60.i, %drm_format_conv_state_reserve.exit62.i ], [ %.pre.i.i, %._crit_edge.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %__drm_fb_xfrm_toio.exit, label %bb.j

bb.j:                                             ; preds = %drm_format_conv_state_reserve.exit.i, %drm_format_conv_state_reserve.exit.thread66.i
  %.071.i = phi ptr [ %i.ac, %drm_format_conv_state_reserve.exit.thread66.i ], [ %.0.i, %drm_format_conv_state_reserve.exit.i ] ; 4 uses
  %.04470.i = phi ptr [ null, %drm_format_conv_state_reserve.exit.thread66.i ], [ %.044.i, %drm_format_conv_state_reserve.exit.i ] ; 3 uses
  %.not50.i = icmp eq i32 %i.e, 0
  %spec.select.i = select i1 %.not50.i, i64 %i.p, i64 %i.f ; 2 uses
  %i.an = getelementptr i8, ptr %3, i64 88        ; 3 uses
  %.not75.i = icmp eq i32 %.val54.i, %.val53.i
  br i1 %.not75.i, label %__drm_fb_xfrm_toio.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %.val52.i = load i32, ptr %i.l, align 4
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = mul i32 %i.ao, %.val52.i
  %.val.i = load i32, ptr %4, align 4
  %i.aq = load ptr, ptr %i.q, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 6
  %i.as = load i8, ptr %i.ar, align 2
  %i.at = zext i8 %i.as to i32
  %i.au = mul i32 %.val.i, %i.at
  %i.av = add i32 %i.au, %i.ap
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr i8, ptr %i.h, i64 %i.aw   ; 2 uses
  %.not51.i = icmp eq ptr %.04470.i, null
  br i1 %.not51.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %.04374.us.i = phi i64 [ %i.bc, %.lr.ph.split.us.i ], [ 0, %.lr.ph.i ]
  %.04673.us.i = phi ptr [ %i.bb, %.lr.ph.split.us.i ], [ %i.d, %.lr.ph.i ] ; 2 uses
  %.04872.us.i = phi ptr [ %i.ba, %.lr.ph.split.us.i ], [ %i.ax, %.lr.ph.i ] ; 2 uses
  tail call void %7(ptr noundef nonnull %.071.i, ptr noundef %.04872.us.i, i32 noundef %i.j) #12, !inline_history !19
  tail call void @memcpy_toio(ptr noundef %.04673.us.i, ptr noundef nonnull %.071.i, i64 noundef %i.p) #12
  %i.ay = load i32, ptr %i.an, align 8
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr i8, ptr %.04872.us.i, i64 %i.az
  %i.bb = getelementptr i8, ptr %.04673.us.i, i64 %spec.select.i
  %i.bc = add nuw i64 %.04374.us.i, 1             ; 2 uses
  %exitcond77.not.i = icmp eq i64 %i.bc, %i.o
  br i1 %exitcond77.not.i, label %__drm_fb_xfrm_toio.exit, label %.lr.ph.split.us.i, !llvm.loop !20

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.split.i
  %.04374.i = phi i64 [ %i.bh, %.lr.ph.split.i ], [ 0, %.lr.ph.i ]
  %.04673.i = phi ptr [ %i.bg, %.lr.ph.split.i ], [ %i.d, %.lr.ph.i ] ; 2 uses
  %.04872.i = phi ptr [ %i.bf, %.lr.ph.split.i ], [ %i.ax, %.lr.ph.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.04470.i, ptr align 1 %.04872.i, i64 %i.v, i1 false)
  tail call void %7(ptr noundef nonnull %.071.i, ptr noundef nonnull %.04470.i, i32 noundef %i.j) #12, !inline_history !19
  tail call void @memcpy_toio(ptr noundef %.04673.i, ptr noundef nonnull %.071.i, i64 noundef %i.p) #12
  %i.bd = load i32, ptr %i.an, align 8
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr i8, ptr %.04872.i, i64 %i.be
  %i.bg = getelementptr i8, ptr %.04673.i, i64 %spec.select.i
  %i.bh = add nuw i64 %.04374.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bh, %i.o
  br i1 %exitcond.not.i, label %__drm_fb_xfrm_toio.exit, label %.lr.ph.split.i, !llvm.loop !20

bb.k:                                             ; preds = %bb.a
  %i.bi = getelementptr i8, ptr %3, i64 72        ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr i8, ptr %i.bj, i64 6
  %i.bl = load i8, ptr %i.bk, align 2
  %i.bm = zext i8 %i.bl to i64
  %i.bn = mul nsw i64 %i.bm, %i.k                 ; 4 uses
  br i1 %5, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr i8, ptr %6, i64 8         ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8
  %.not.i.i20 = icmp ugt i64 %i.bn, %i.bp
  br i1 %.not.i.i20, label %bb.m, label %drm_format_conv_state_reserve.exit.i21

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr i8, ptr %6, i64 16
  %i.br = load i8, ptr %i.bq, align 8, !range !10, !noundef !11
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %__drm_fb_xfrm_toio.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = load ptr, ptr %6, align 8
  %i.bu = tail call ptr @krealloc_node_align_noprof(ptr noundef %i.bt, i64 noundef %i.bn, i64 noundef 1, i32 noundef 3264, i32 noundef -1) #11 ; 3 uses
  %.not20.i.i29 = icmp eq ptr %i.bu, null
  br i1 %.not20.i.i29, label %__drm_fb_xfrm_toio.exit, label %drm_format_conv_state_reserve.exit.thread50.i

drm_format_conv_state_reserve.exit.thread50.i:    ; preds = %bb.n
  store ptr %i.bu, ptr %6, align 8
  store i64 %i.bn, ptr %i.bo, align 8
  br label %bb.o

drm_format_conv_state_reserve.exit.i21:           ; preds = %bb.l
  %.pre.i.i22 = load ptr, ptr %6, align 8         ; 2 uses
  %.not.i23 = icmp eq ptr %.pre.i.i22, null
  br i1 %.not.i23, label %__drm_fb_xfrm_toio.exit, label %bb.o

bb.o:                                             ; preds = %drm_format_conv_state_reserve.exit.i21, %drm_format_conv_state_reserve.exit.thread50.i, %bb.k
  %.032.i = phi ptr [ null, %bb.k ], [ %.pre.i.i22, %drm_format_conv_state_reserve.exit.i21 ], [ %i.bu, %drm_format_conv_state_reserve.exit.thread50.i ] ; 3 uses
  %.not39.i = icmp eq i32 %i.e, 0
  br i1 %.not39.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.val44.i = load i32, ptr %4, align 4
  %.val45.i = load i32, ptr %i.i, align 4
  %i.bv = sub i32 %.val45.i, %.val44.i
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul nsw i64 %i.bw, %i.g
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.035.i = phi i64 [ %i.f, %bb.o ], [ %i.bx, %bb.p ] ; 2 uses
  %i.by = getelementptr i8, ptr %3, i64 88        ; 3 uses
  %.not56.i = icmp eq i32 %.val54.i, %.val53.i
  br i1 %.not56.i, label %__drm_fb_xfrm_toio.exit, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %bb.q
  %.val41.i = load i32, ptr %i.l, align 4
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = mul i32 %i.bz, %.val41.i
  %.val.i25 = load i32, ptr %4, align 4
  %i.cb = load ptr, ptr %i.bi, align 8
  %i.cc = getelementptr i8, ptr %i.cb, i64 6
  %i.cd = load i8, ptr %i.cc, align 2
  %i.ce = zext i8 %i.cd to i32
  %i.cf = mul i32 %.val.i25, %i.ce
  %i.cg = add i32 %i.cf, %i.ca
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr i8, ptr %i.h, i64 %i.ch   ; 2 uses
  %.not40.i = icmp eq ptr %.032.i, null
  br i1 %.not40.i, label %.lr.ph.split.us.i28, label %.lr.ph.split.i26

.lr.ph.split.us.i28:                              ; preds = %.lr.ph.i24, %.lr.ph.split.us.i28
  %.03155.us.i = phi i64 [ %i.cn, %.lr.ph.split.us.i28 ], [ 0, %.lr.ph.i24 ]
  %.03454.us.i = phi ptr [ %i.cm, %.lr.ph.split.us.i28 ], [ %i.d, %.lr.ph.i24 ] ; 2 uses
  %.03653.us.i = phi ptr [ %i.cl, %.lr.ph.split.us.i28 ], [ %i.ci, %.lr.ph.i24 ] ; 2 uses
  tail call void %7(ptr noundef %.03454.us.i, ptr noundef %.03653.us.i, i32 noundef %i.j) #12, !inline_history !21
  %i.cj = load i32, ptr %i.by, align 8
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr i8, ptr %.03653.us.i, i64 %i.ck
  %i.cm = getelementptr i8, ptr %.03454.us.i, i64 %.035.i
  %i.cn = add nuw i64 %.03155.us.i, 1             ; 2 uses
  %exitcond58.not.i = icmp eq i64 %i.cn, %i.o
  br i1 %exitcond58.not.i, label %__drm_fb_xfrm_toio.exit, label %.lr.ph.split.us.i28, !llvm.loop !22

.lr.ph.split.i26:                                 ; preds = %.lr.ph.i24, %.lr.ph.split.i26
  %.03155.i = phi i64 [ %i.cs, %.lr.ph.split.i26 ], [ 0, %.lr.ph.i24 ]
  %.03454.i = phi ptr [ %i.cr, %.lr.ph.split.i26 ], [ %i.d, %.lr.ph.i24 ] ; 2 uses
  %.03653.i = phi ptr [ %i.cq, %.lr.ph.split.i26 ], [ %i.ci, %.lr.ph.i24 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.032.i, ptr align 1 %.03653.i, i64 %i.bn, i1 false)
  tail call void %7(ptr noundef %.03454.i, ptr noundef nonnull %.032.i, i32 noundef %i.j) #12, !inline_history !21
  %i.co = load i32, ptr %i.by, align 8
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr i8, ptr %.03653.i, i64 %i.cp
  %i.cr = getelementptr i8, ptr %.03454.i, i64 %.035.i
  %i.cs = add nuw i64 %.03155.i, 1                ; 2 uses
  %exitcond.not.i27 = icmp eq i64 %i.cs, %i.o
  br i1 %exitcond.not.i27, label %__drm_fb_xfrm_toio.exit, label %.lr.ph.split.i26, !llvm.loop !22

__drm_fb_xfrm_toio.exit:                          ; preds = %.lr.ph.split.i26, %.lr.ph.split.us.i28, %.lr.ph.split.i, %.lr.ph.split.us.i, %bb.q, %drm_format_conv_state_reserve.exit.i21, %bb.n, %bb.m, %bb.j, %drm_format_conv_state_reserve.exit.i, %bb.e, %bb.d
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_fb_xrgb8888_to_rgb332(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5) #1 align 16 prefalign(16) {
bb.a:
  tail call fastcc void @drm_fb_xfrm(ptr noundef %0, ptr noundef %1, i8 1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext false, ptr noundef %5, ptr noundef nonnull @drm_fb_xrgb8888_to_rgb332_line) #13
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite)
define internal void @drm_fb_xrgb8888_to_rgb332_line(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) #7 align 16 prefalign(16) {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr [4 x i8], ptr %1, i64 %i.a ; 3 uses
  %i.c = and i32 %2, 3
  %i.d = zext nneg i32 %i.c to i64
  %i.e = sub nsw i64 0, %i.d
  %i.f = getelementptr [4 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.g = icmp ult ptr %1, %i.f
  br i1 %i.g, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.024.i.lcssa = phi ptr [ %1, %bb.a ], [ %i.bc, %.lr.ph ] ; 2 uses
  %.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %i.bb, %.lr.ph ]
  %i.h = icmp ult ptr %.024.i.lcssa, %i.b
  br i1 %i.h, label %.lr.ph7, label %drm_fb_xfrm_line_32to8.exit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i3 = phi ptr [ %i.bb, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.024.i2 = phi ptr [ %i.bc, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %i.i = load i32, ptr %.024.i2, align 4          ; 3 uses
  %i.j = getelementptr i8, ptr %.024.i2, i64 4
  %i.k = load i32, ptr %i.j, align 4              ; 3 uses
  %i.l = getelementptr i8, ptr %.024.i2, i64 8
  %i.m = load i32, ptr %i.l, align 4              ; 3 uses
  %i.n = getelementptr i8, ptr %.024.i2, i64 12
  %i.o = load i32, ptr %i.n, align 4              ; 3 uses
end_hunk_0
