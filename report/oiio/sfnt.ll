inline.NumInlined: 86
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@Load_SBit_Png:bb.a
  %i.dd = add nsw i64 %indvars.iv, %i.cz
  %i.de = mul nsw i64 %i.dd, %i.da
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cy
  %.0..0..0..0. = load volatile ptr, ptr %i.i, align 8, !tbaa !638
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.0..0..0..0., i64 %indvars.iv
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !429
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.di = load ptr, ptr %i.cu, align 8, !tbaa !424
  %i.dj = add nsw i64 %indvars.iv.next, %i.cz
  %i.dk = mul nsw i64 %i.dj, %i.da
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.cy
  %.0..0..0..0..1 = load volatile ptr, ptr %i.i, align 8, !tbaa !638
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.0..0..0..0..1, i64 %indvars.iv.next
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !429
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.ap, !llvm.loop !643

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ap
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod85 = trunc i32 %.fr to i1
  call void @llvm.assume(i1 %lcmp.mod85)
  %i.do = load ptr, ptr %i.cu, align 8, !tbaa !424
  %i.dp = add nsw i64 %indvars.iv.epil.init, %i.cz
  %i.dq = mul nsw i64 %i.dp, %i.da
  %i.dr = getelementptr inbounds i8, ptr %i.do, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.cy
  %.0..0..0..0..epil = load volatile ptr, ptr %i.i, align 8, !tbaa !638
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.0..0..0..0..epil, i64 %indvars.iv.epil.init
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !429
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %i.du = load ptr, ptr %i.b, align 8, !tbaa !639
  %.0..0..0..0.11 = load volatile ptr, ptr %i.i, align 8, !tbaa !638
  call void @png_read_image(ptr noundef %i.du, ptr noundef %.0..0..0..0.11) #26
  %i.dv = load ptr, ptr %i.b, align 8, !tbaa !639
  call void @png_read_end(ptr noundef %i.dv, ptr noundef nonnull %i.ac) #26
  br label %bb.aq

bb.aq:                                            ; preds = %bb.am, %bb.m, %bb.r, %bb.aj, %bb.ao, %._crit_edge, %bb.q, %bb.p, %bb.n, %bb.ak
  %.0..0..0..0.12 = load volatile ptr, ptr %i.i, align 8, !tbaa !638
  call void @ft_mem_free(ptr noundef %5, ptr noundef %.0..0..0..0.12) #26
  store volatile ptr null, ptr %i.i, align 8, !tbaa !638
  call void @png_destroy_read_struct(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null) #26
  call void @FT_Stream_Close(ptr noundef nonnull %10) #26
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.k, %bb.i, %bb.g, %bb.b
  %i.dw = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %i.dw
}

declare noalias ptr @png_create_read_struct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn nounwind uwtable
define internal void @error_callback(ptr noundef %0, ptr nofree readnone captures(none) %1) #14 {
bb.a:
  %i.a = tail call ptr @png_get_error_ptr(ptr noundef %0) #26
  store i32 64, ptr %i.a, align 4, !tbaa !3
  %i.b = tail call ptr @png_set_longjmp_fn(ptr noundef %0, ptr noundef nonnull @longjmp, i64 noundef 200) #26
  tail call void @longjmp(ptr noundef %i.b, i32 noundef 1) #28
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @warning_callback(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #8 {
bb.a:
  ret void
}

declare noalias ptr @png_create_info_struct(ptr noundef) local_unnamed_addr #10

declare void @png_destroy_read_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare ptr @png_set_longjmp_fn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @longjmp(ptr noundef, i32 noundef) #15

declare void @png_set_read_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal void @read_data_from_FT_Stream(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @png_get_io_ptr(ptr noundef %0) #26 ; 3 uses
  %i.b = tail call i32 @FT_Stream_EnterFrame(ptr noundef %i.a, i64 noundef %2) #26
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @png_get_error_ptr(ptr noundef %0) #26
  store i32 84, ptr %i.c, align 4, !tbaa !3
  tail call void @png_error(ptr noundef %0, ptr noundef null) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.e, i64 %2, i1 false)
  tail call void @FT_Stream_ExitFrame(ptr noundef %i.a) #26
  ret void
}

declare void @png_read_info(ptr noundef, ptr noundef) local_unnamed_addr #10

declare i32 @png_get_IHDR(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @png_set_palette_to_rgb(ptr noundef) local_unnamed_addr #10

declare void @png_set_expand_gray_1_2_4_to_8(ptr noundef) local_unnamed_addr #10

declare i32 @png_get_valid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @png_set_tRNS_to_alpha(ptr noundef) local_unnamed_addr #10

declare void @png_set_strip_16(ptr noundef) local_unnamed_addr #10

declare void @png_set_packing(ptr noundef) local_unnamed_addr #10

declare void @png_set_gray_to_rgb(ptr noundef) local_unnamed_addr #10

declare i32 @png_set_interlace_handling(ptr noundef) local_unnamed_addr #10

declare void @png_set_filler(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @png_read_update_info(ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @png_set_read_user_transform_fn(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @premultiply_data(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !644  ; 4 uses
  %i.c = icmp ugt i64 %i.b, 15
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %i.b to i32
  %i.e = add i32 %i.d, -15                        ; 2 uses
  %.not77 = icmp eq i32 %i.e, 0
  br i1 %.not77, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.f = zext i32 %i.e to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 2 uses
  %.0.copyload = load <8 x i16>, ptr %i.g, align 1 ; 2 uses
  %i.h = and <8 x i16> %.0.copyload, splat (i16 255)
  %i.i = lshr <8 x i16> %.0.copyload, splat (i16 8) ; 2 uses
  %i.j = shufflevector <8 x i16> %i.i, <8 x i16> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7> ; 2 uses
  %i.k = or <8 x i16> %i.i, <i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255>
  %i.l = shufflevector <8 x i16> %i.h, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.m = mul nuw <8 x i16> %i.l, %i.j
  %i.n = mul nuw <8 x i16> %i.k, %i.j
  %i.o = add <8 x i16> %i.m, splat (i16 128)      ; 2 uses
  %i.p = add <8 x i16> %i.n, splat (i16 128)      ; 2 uses
  %i.q = lshr <8 x i16> %i.o, splat (i16 8)
  %i.r = add <8 x i16> %i.q, %i.o
  %i.s = lshr <8 x i16> %i.r, splat (i16 8)
  %i.t = lshr <8 x i16> %i.p, splat (i16 8)
  %i.u = add <8 x i16> %i.t, %i.p
  %i.v = and <8 x i16> %i.u, splat (i16 -256)
  %i.w = or disjoint <8 x i16> %i.s, %i.v
  store <8 x i16> %i.w, ptr %i.g, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 3 uses
  %i.x = icmp samesign ult i64 %indvars.iv.next, %i.f
  br i1 %i.x, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !646

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.y = trunc nuw i64 %indvars.iv.next to i32
  %.pre = load i64, ptr %i.a, align 8, !tbaa !644
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b, %bb.a
  %i.z = phi i64 [ %i.b, %bb.a ], [ %i.b, %bb.b ], [ %.pre, %.loopexit.loopexit ]
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.y, %.loopexit.loopexit ] ; 2 uses
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %i.ab = icmp ult i32 %.1, %i.aa
  br i1 %i.ab, label %.lr.ph76.preheader, label %._crit_edge

.lr.ph76.preheader:                               ; preds = %.loopexit
  %3 = zext i32 %.1 to i64
  br label %.lr.ph76

.lr.ph76:                                         ; preds = %.lr.ph76.preheader, %bb.g
  %indvars.iv79 = phi i64 [ %3, %.lr.ph76.preheader ], [ %indvars.iv.next80, %bb.g ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv79 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !16  ; 3 uses
  %i.af = zext i8 %i.ae to i32                    ; 3 uses
  %i.ag = icmp eq i8 %i.ae, 0
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph76
  store i32 0, ptr %i.ac, align 1
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph76
  %i.ah = load i8, ptr %i.ac, align 1, !tbaa !16  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !16  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 2 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !16  ; 2 uses
  %.not = icmp eq i8 %i.ae, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = zext i8 %i.ah to i32
  %i.an = zext i8 %i.aj to i32
  %i.ao = zext i8 %i.al to i32
  %i.ap = mul nuw nsw i32 %i.am, %i.af
  %i.aq = add nuw nsw i32 %i.ap, 128              ; 2 uses
  %i.ar = lshr i32 %i.aq, 8
  %i.as = add nuw nsw i32 %i.ar, %i.aq
  %i.at = lshr i32 %i.as, 8
  %i.au = mul nuw nsw i32 %i.an, %i.af
  %i.av = add nuw nsw i32 %i.au, 128              ; 2 uses
  %i.aw = lshr i32 %i.av, 8
  %i.ax = add nuw nsw i32 %i.aw, %i.av
  %i.ay = lshr i32 %i.ax, 8
  %i.az = mul nuw nsw i32 %i.ao, %i.af
  %i.ba = add nuw nsw i32 %i.az, 128              ; 2 uses
  %i.bb = lshr i32 %i.ba, 8
  %i.bc = add nuw nsw i32 %i.bb, %i.ba
  %i.bd = lshr i32 %i.bc, 8
  %i.be = trunc nuw i32 %i.bd to i8
  %i.bf = trunc nuw i32 %i.ay to i8
  %i.bg = trunc nuw i32 %i.at to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.070 = phi i8 [ %i.bg, %bb.e ], [ %i.ah, %bb.d ]
  %.069 = phi i8 [ %i.bf, %bb.e ], [ %i.aj, %bb.d ]
  %.0 = phi i8 [ %i.be, %bb.e ], [ %i.al, %bb.d ]
  store i8 %.0, ptr %i.ac, align 1, !tbaa !16
  store i8 %.069, ptr %i.ai, align 1, !tbaa !16
  store i8 %.070, ptr %i.ak, align 1, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 4 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next80 to i32
  %i.bh = icmp ult i32 %indvars, %i.aa
  br i1 %i.bh, label %.lr.ph76, label %._crit_edge, !llvm.loop !647

._crit_edge:                                      ; preds = %bb.g, %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @convert_bytes_to_data(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !644
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi i64 [ %i.j, %.lr.ph ], [ 0, %bb.a ]
  %.016 = phi i32 [ %i.i, %.lr.ph ], [ 0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.c ; 4 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16
  store i8 %i.g, ptr %i.d, align 1, !tbaa !16
  store i8 %i.e, ptr %i.f, align 1, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 -1, ptr %i.h, align 1, !tbaa !16
  %i.i = add i32 %.016, 4                         ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = load i64, ptr %i.a, align 8, !tbaa !644
  %i.l = icmp ugt i64 %i.k, %i.j
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !648

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare hidden i32 @ft_glyphslot_alloc_bitmap(ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @png_read_image(ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @png_read_end(ptr noundef, ptr noundef) local_unnamed_addr #10

declare ptr @png_get_error_ptr(ptr noundef) local_unnamed_addr #10

declare ptr @png_get_io_ptr(ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @png_error(ptr noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define internal fastcc i32 @load_format_20(ptr nofree noundef nonnull writeonly captures(none) %0, ptr noundef %1, i16 noundef zeroext %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !178  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.d = zext i16 %2 to i64                       ; 10 uses
  %i.e = shl nuw nsw i64 %i.d, 1                  ; 6 uses
  %i.f = icmp ugt i64 %i.e, %3
  br i1 %i.f, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @ft_mem_qrealloc(ptr noundef %i.c, i64 noundef 2, i64 noundef 0, i64 noundef %i.d, ptr noundef null, ptr noundef nonnull %i.a) #26 ; 9 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !3
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %.thread96

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %1, i64 noundef %i.e) #26 ; 2 uses
  store i32 %i.i, ptr %i.a, align 4, !tbaa !3
  %.not89 = icmp eq i32 %i.i, 0
  br i1 %.not89, label %bb.d, label %.thread96

bb.d:                                             ; preds = %bb.c
  %.not112 = icmp eq i16 %2, 0
  br i1 %.not112, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !201  ; 30 uses
  %min.iters.check = icmp ult i16 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.e
  %scevgep128 = getelementptr i8, ptr %i.k, i64 %i.e
  %bound0 = icmp ult ptr %i.g, %scevgep128
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check129 = icmp ult i16 %2, 16
  br i1 %min.iters.check129, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %i.d, 8
  %n.vec = and i64 %i.d, 65520                    ; 5 uses
  %i.m = shl nuw nsw i64 %n.vec, 1
  %i.n = getelementptr i8, ptr %i.k, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.do, %vector.body ]
  %vec.phi130 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.dp, %vector.body ]
  %i.o = shl i64 %index, 1                        ; 16 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.o ; 2 uses
  %i.p = getelementptr i8, ptr %i.k, i64 %i.o     ; 2 uses
  %next.gep131 = getelementptr i8, ptr %i.p, i64 2
  %i.q = getelementptr i8, ptr %i.k, i64 %i.o     ; 2 uses
  %next.gep132 = getelementptr i8, ptr %i.q, i64 4
  %i.r = getelementptr i8, ptr %i.k, i64 %i.o     ; 2 uses
  %next.gep133 = getelementptr i8, ptr %i.r, i64 6
  %i.s = getelementptr i8, ptr %i.k, i64 %i.o     ; 2 uses
  %next.gep134 = getelementptr i8, ptr %i.s, i64 8
  %i.t = getelementptr i8, ptr %i.k, i64 %i.o     ; 2 uses
  %next.gep135 = getelementptr i8, ptr %i.t, i64 10
  %i.u = getelementptr i8, ptr %i.k, i64 %i.o     ; 2 uses
  %next.gep136 = getelementptr i8, ptr %i.u, i64 12
  %i.v = getelementptr i8, ptr %i.k, i64 %i.o     ; 2 uses
  %next.gep137 = getelementptr i8, ptr %i.v, i64 14
  %i.w = getelementptr i8, ptr %i.k, i64 %i.o     ; 2 uses
  %next.gep138 = getelementptr i8, ptr %i.w, i64 16
  %i.x = getelementptr i8, ptr %i.k, i64 %i.o     ; 2 uses
  %next.gep139 = getelementptr i8, ptr %i.x, i64 18
  %i.y = getelementptr i8, ptr %i.k, i64 %i.o     ; 2 uses
  %next.gep140 = getelementptr i8, ptr %i.y, i64 20
  %i.z = getelementptr i8, ptr %i.k, i64 %i.o     ; 2 uses
  %next.gep141 = getelementptr i8, ptr %i.z, i64 22
  %i.aa = getelementptr i8, ptr %i.k, i64 %i.o    ; 2 uses
  %next.gep142 = getelementptr i8, ptr %i.aa, i64 24
  %i.ab = getelementptr i8, ptr %i.k, i64 %i.o    ; 2 uses
  %next.gep143 = getelementptr i8, ptr %i.ab, i64 26
  %i.ac = getelementptr i8, ptr %i.k, i64 %i.o    ; 2 uses
  %next.gep144 = getelementptr i8, ptr %i.ac, i64 28
  %i.ad = getelementptr i8, ptr %i.k, i64 %i.o    ; 2 uses
  %next.gep145 = getelementptr i8, ptr %i.ad, i64 30
  %i.ae = load i8, ptr %next.gep, align 1, !tbaa !16, !alias.scope !649
  %i.af = load i8, ptr %next.gep131, align 1, !tbaa !16, !alias.scope !649
  %i.ag = load i8, ptr %next.gep132, align 1, !tbaa !16, !alias.scope !649
  %i.ah = load i8, ptr %next.gep133, align 1, !tbaa !16, !alias.scope !649
  %i.ai = load i8, ptr %next.gep134, align 1, !tbaa !16, !alias.scope !649
  %i.aj = load i8, ptr %next.gep135, align 1, !tbaa !16, !alias.scope !649
  %i.ak = load i8, ptr %next.gep136, align 1, !tbaa !16, !alias.scope !649
  %i.al = load i8, ptr %next.gep137, align 1, !tbaa !16, !alias.scope !649
  %i.am = insertelement <8 x i8> poison, i8 %i.ae, i64 0
  %i.an = insertelement <8 x i8> %i.am, i8 %i.af, i64 1
  %i.ao = insertelement <8 x i8> %i.an, i8 %i.ag, i64 2
  %i.ap = insertelement <8 x i8> %i.ao, i8 %i.ah, i64 3
  %i.aq = insertelement <8 x i8> %i.ap, i8 %i.ai, i64 4
  %i.ar = insertelement <8 x i8> %i.aq, i8 %i.aj, i64 5
  %i.as = insertelement <8 x i8> %i.ar, i8 %i.ak, i64 6
  %i.at = insertelement <8 x i8> %i.as, i8 %i.al, i64 7
  %i.au = load i8, ptr %next.gep138, align 1, !tbaa !16, !alias.scope !649
  %i.av = load i8, ptr %next.gep139, align 1, !tbaa !16, !alias.scope !649
  %i.aw = load i8, ptr %next.gep140, align 1, !tbaa !16, !alias.scope !649
  %i.ax = load i8, ptr %next.gep141, align 1, !tbaa !16, !alias.scope !649
  %i.ay = load i8, ptr %next.gep142, align 1, !tbaa !16, !alias.scope !649
  %i.az = load i8, ptr %next.gep143, align 1, !tbaa !16, !alias.scope !649
  %i.ba = load i8, ptr %next.gep144, align 1, !tbaa !16, !alias.scope !649
  %i.bb = load i8, ptr %next.gep145, align 1, !tbaa !16, !alias.scope !649
  %i.bc = insertelement <8 x i8> poison, i8 %i.au, i64 0
  %i.bd = insertelement <8 x i8> %i.bc, i8 %i.av, i64 1
  %i.be = insertelement <8 x i8> %i.bd, i8 %i.aw, i64 2
  %i.bf = insertelement <8 x i8> %i.be, i8 %i.ax, i64 3
  %i.bg = insertelement <8 x i8> %i.bf, i8 %i.ay, i64 4
  %i.bh = insertelement <8 x i8> %i.bg, i8 %i.az, i64 5
  %i.bi = insertelement <8 x i8> %i.bh, i8 %i.ba, i64 6
  %i.bj = insertelement <8 x i8> %i.bi, i8 %i.bb, i64 7
  %i.bk = zext <8 x i8> %i.at to <8 x i16>
  %i.bl = zext <8 x i8> %i.bj to <8 x i16>
  %i.bm = shl nuw <8 x i16> %i.bk, splat (i16 8)
  %i.bn = shl nuw <8 x i16> %i.bl, splat (i16 8)
  %i.bo = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.bp = getelementptr i8, ptr %i.p, i64 3
  %i.bq = getelementptr i8, ptr %i.q, i64 5
  %i.br = getelementptr i8, ptr %i.r, i64 7
  %i.bs = getelementptr i8, ptr %i.s, i64 9
  %i.bt = getelementptr i8, ptr %i.t, i64 11
  %i.bu = getelementptr i8, ptr %i.u, i64 13
  %i.bv = getelementptr i8, ptr %i.v, i64 15
  %i.bw = getelementptr i8, ptr %i.w, i64 17
  %i.bx = getelementptr i8, ptr %i.x, i64 19
  %i.by = getelementptr i8, ptr %i.y, i64 21
  %i.bz = getelementptr i8, ptr %i.z, i64 23
  %i.ca = getelementptr i8, ptr %i.aa, i64 25
  %i.cb = getelementptr i8, ptr %i.ab, i64 27
  %i.cc = getelementptr i8, ptr %i.ac, i64 29
  %i.cd = getelementptr i8, ptr %i.ad, i64 31
  %i.ce = load i8, ptr %i.bo, align 1, !tbaa !16, !alias.scope !649
  %i.cf = load i8, ptr %i.bp, align 1, !tbaa !16, !alias.scope !649
  %i.cg = load i8, ptr %i.bq, align 1, !tbaa !16, !alias.scope !649
  %i.ch = load i8, ptr %i.br, align 1, !tbaa !16, !alias.scope !649
  %i.ci = load i8, ptr %i.bs, align 1, !tbaa !16, !alias.scope !649
  %i.cj = load i8, ptr %i.bt, align 1, !tbaa !16, !alias.scope !649
  %i.ck = load i8, ptr %i.bu, align 1, !tbaa !16, !alias.scope !649
  %i.cl = load i8, ptr %i.bv, align 1, !tbaa !16, !alias.scope !649
  %i.cm = insertelement <8 x i8> poison, i8 %i.ce, i64 0
  %i.cn = insertelement <8 x i8> %i.cm, i8 %i.cf, i64 1
  %i.co = insertelement <8 x i8> %i.cn, i8 %i.cg, i64 2
end_hunk_0
