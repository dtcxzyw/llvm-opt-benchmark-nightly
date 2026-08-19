inline.NumInlined: 119
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@Load_SBit_Png:bb.a

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ci = load i32, ptr %i.e, align 4, !tbaa !18
  %i.cj = zext i32 %i.ci to i64
  %i.ck = call ptr @ft_mem_qrealloc(ptr noundef %5, i64 noundef 8, i64 noundef 0, i64 noundef %i.cj, ptr noundef null, ptr noundef nonnull %i.a) #27
  store volatile ptr %i.ck, ptr %i.i, align 8, !tbaa !732
  %i.cl = load i32, ptr %i.a, align 4, !tbaa !18
  %.not68 = icmp eq i32 %i.cl, 0
  br i1 %.not68, label %.preheader, label %bb.ao

.preheader:                                       ; preds = %bb.an
  %i.cm = load i32, ptr %i.e, align 4, !tbaa !18
  %.fr = freeze i32 %i.cm                         ; 4 uses
  %i.cn = icmp sgt i32 %.fr, 0
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !475
  %i.cr = shl nsw i32 %1, 2
  %i.cs = zext nneg i32 %i.cr to i64              ; 3 uses
  %i.ct = sext i32 %2 to i64                      ; 3 uses
  %i.cu = sext i32 %i.cq to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %.fr to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.cv = icmp eq i32 %.fr, 1
  br i1 %i.cv, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 64, ptr %i.a, align 4, !tbaa !18
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ap, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.ap ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.ap ]
  %i.cw = load ptr, ptr %i.co, align 8, !tbaa !454
  %i.cx = add nsw i64 %indvars.iv, %i.ct
  %i.cy = mul nsw i64 %i.cx, %i.cu
  %i.cz = getelementptr inbounds i8, ptr %i.cw, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cs
  %.0..0..0..0. = load volatile ptr, ptr %i.i, align 8, !tbaa !732
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.0..0..0..0., i64 %indvars.iv
  store ptr %i.da, ptr %i.db, align 8, !tbaa !208
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dc = load ptr, ptr %i.co, align 8, !tbaa !454
  %i.dd = add nsw i64 %indvars.iv.next, %i.ct
  %i.de = mul nsw i64 %i.dd, %i.cu
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cs
  %.0..0..0..0..1 = load volatile ptr, ptr %i.i, align 8, !tbaa !732
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.0..0..0..0..1, i64 %indvars.iv.next
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !208
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.ap, !llvm.loop !737

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ap
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod78 = trunc i32 %.fr to i1
  call void @llvm.assume(i1 %lcmp.mod78)
  %i.di = load ptr, ptr %i.co, align 8, !tbaa !454
  %i.dj = add nsw i64 %indvars.iv.epil.init, %i.ct
  %i.dk = mul nsw i64 %i.dj, %i.cu
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.cs
  %.0..0..0..0..epil = load volatile ptr, ptr %i.i, align 8, !tbaa !732
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.0..0..0..0..epil, i64 %indvars.iv.epil.init
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !208
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %i.do = load ptr, ptr %i.b, align 8, !tbaa !733
  %.0..0..0..0.10 = load volatile ptr, ptr %i.i, align 8, !tbaa !732
  call void @png_read_image(ptr noundef %i.do, ptr noundef %.0..0..0..0.10) #27
  %i.dp = load ptr, ptr %i.b, align 8, !tbaa !733
  call void @png_read_end(ptr noundef %i.dp, ptr noundef nonnull %i.ac) #27
  br label %bb.aq

bb.aq:                                            ; preds = %bb.m, %bb.r, %bb.aj, %bb.ao, %._crit_edge, %bb.q, %bb.p, %bb.n, %bb.ak, %bb.am
  %.0..0..0..0.11 = load volatile ptr, ptr %i.i, align 8, !tbaa !732
  call void @ft_mem_free(ptr noundef %5, ptr noundef %.0..0..0..0.11) #27
  store volatile ptr null, ptr %i.i, align 8, !tbaa !732
  call void @png_destroy_read_struct(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null) #27
  call void @FT_Stream_Close(ptr noundef nonnull %10) #27
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.k, %bb.i, %bb.g, %bb.b
  %i.dq = load i32, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %i.dq
}

declare noalias ptr @png_create_read_struct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn nounwind uwtable
define internal void @error_callback(ptr noundef %0, ptr nofree readnone captures(none) %1) #18 {
bb.a:
  %i.a = tail call ptr @png_get_error_ptr(ptr noundef %0) #27
  store i32 64, ptr %i.a, align 4, !tbaa !18
  %i.b = tail call ptr @png_set_longjmp_fn(ptr noundef %0, ptr noundef nonnull @longjmp, i64 noundef 200) #27
  tail call void @longjmp(ptr noundef %i.b, i32 noundef 1) #29
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
declare void @longjmp(ptr noundef, i32 noundef) #19

declare void @png_set_read_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal void @read_data_from_FT_Stream(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @png_get_io_ptr(ptr noundef %0) #27 ; 3 uses
  %i.b = tail call i32 @FT_Stream_EnterFrame(ptr noundef %i.a, i64 noundef %2) #27
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @png_get_error_ptr(ptr noundef %0) #27
  store i32 84, ptr %i.c, align 4, !tbaa !18
  tail call void @png_error(ptr noundef %0, ptr noundef null) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !203
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.e, i64 %2, i1 false)
  tail call void @FT_Stream_ExitFrame(ptr noundef %i.a) #27
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
define internal void @premultiply_data(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !738  ; 4 uses
  %i.c = icmp ugt i64 %i.b, 15
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %i.b to i32
  %i.e = add i32 %i.d, -15                        ; 2 uses
  %.not77 = icmp eq i32 %i.e, 0
  br i1 %.not77, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %3 = zext i32 %i.e to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 2 uses
  %.0.copyload = load <8 x i16>, ptr %i.f, align 1 ; 2 uses
  %i.g = and <8 x i16> %.0.copyload, splat (i16 255)
  %i.h = lshr <8 x i16> %.0.copyload, splat (i16 8) ; 2 uses
  %i.i = shufflevector <8 x i16> %i.h, <8 x i16> poison, <8 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7> ; 2 uses
  %i.j = or <8 x i16> %i.h, <i16 0, i16 255, i16 0, i16 255, i16 0, i16 255, i16 0, i16 255>
  %i.k = shufflevector <8 x i16> %i.g, <8 x i16> poison, <8 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6>
  %i.l = mul nuw <8 x i16> %i.k, %i.i
  %i.m = mul nuw <8 x i16> %i.j, %i.i
  %i.n = add <8 x i16> %i.l, splat (i16 128)      ; 2 uses
  %i.o = add <8 x i16> %i.m, splat (i16 128)      ; 2 uses
  %i.p = lshr <8 x i16> %i.n, splat (i16 8)
  %i.q = add <8 x i16> %i.p, %i.n
  %i.r = lshr <8 x i16> %i.q, splat (i16 8)
  %i.s = lshr <8 x i16> %i.o, splat (i16 8)
  %i.t = add <8 x i16> %i.s, %i.o
  %i.u = and <8 x i16> %i.t, splat (i16 -256)
  %i.v = or disjoint <8 x i16> %i.r, %i.u
  store <8 x i16> %i.v, ptr %i.f, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 3 uses
  %i.w = icmp samesign ult i64 %indvars.iv.next, %3
  br i1 %i.w, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !740

.loopexit.loopexit:                               ; preds = %.lr.ph
  %4 = trunc nuw i64 %indvars.iv.next to i32
  %.pre = load i64, ptr %i.a, align 8, !tbaa !738
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b, %bb.a
  %i.x = phi i64 [ %i.b, %bb.a ], [ %i.b, %bb.b ], [ %.pre, %.loopexit.loopexit ]
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %4, %.loopexit.loopexit ] ; 2 uses
  %i.y = trunc i64 %i.x to i32                    ; 2 uses
  %i.z = icmp ult i32 %.1, %i.y
  br i1 %i.z, label %.lr.ph76, label %._crit_edge

.lr.ph76:                                         ; preds = %.loopexit, %bb.g
  %.275 = phi i32 [ %i.bg, %bb.g ], [ %.1, %.loopexit ] ; 2 uses
  %i.aa = zext i32 %.275 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %i.aa ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !17  ; 3 uses
  %i.ae = zext i8 %i.ad to i32                    ; 3 uses
  %i.af = icmp eq i8 %i.ad, 0
  br i1 %i.af, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph76
  store i32 0, ptr %i.ab, align 1
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph76
  %i.ag = load i8, ptr %i.ab, align 1, !tbaa !17  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !17  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 2 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17  ; 2 uses
  %.not = icmp eq i8 %i.ad, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = zext i8 %i.ag to i32
  %i.am = zext i8 %i.ai to i32
  %i.an = zext i8 %i.ak to i32
  %i.ao = mul nuw nsw i32 %i.al, %i.ae
  %i.ap = add nuw nsw i32 %i.ao, 128              ; 2 uses
  %i.aq = lshr i32 %i.ap, 8
  %i.ar = add nuw nsw i32 %i.aq, %i.ap
  %i.as = lshr i32 %i.ar, 8
  %i.at = mul nuw nsw i32 %i.am, %i.ae
  %i.au = add nuw nsw i32 %i.at, 128              ; 2 uses
  %i.av = lshr i32 %i.au, 8
  %i.aw = add nuw nsw i32 %i.av, %i.au
  %i.ax = lshr i32 %i.aw, 8
  %i.ay = mul nuw nsw i32 %i.an, %i.ae
  %i.az = add nuw nsw i32 %i.ay, 128              ; 2 uses
  %i.ba = lshr i32 %i.az, 8
  %i.bb = add nuw nsw i32 %i.ba, %i.az
  %i.bc = lshr i32 %i.bb, 8
  %i.bd = trunc nuw i32 %i.bc to i8
  %i.be = trunc nuw i32 %i.ax to i8
  %i.bf = trunc nuw i32 %i.as to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.070 = phi i8 [ %i.bf, %bb.e ], [ %i.ag, %bb.d ]
  %.069 = phi i8 [ %i.be, %bb.e ], [ %i.ai, %bb.d ]
  %.0 = phi i8 [ %i.bd, %bb.e ], [ %i.ak, %bb.d ]
  store i8 %.0, ptr %i.ab, align 1, !tbaa !17
  store i8 %.069, ptr %i.ah, align 1, !tbaa !17
  store i8 %.070, ptr %i.aj, align 1, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.bg = add i32 %.275, 4                        ; 2 uses
  %i.bh = icmp ult i32 %i.bg, %i.y
  br i1 %i.bh, label %.lr.ph76, label %._crit_edge, !llvm.loop !741

._crit_edge:                                      ; preds = %bb.g, %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @convert_bytes_to_data(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !738
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi i64 [ %i.j, %.lr.ph ], [ 0, %bb.a ]
  %.016 = phi i32 [ %i.i, %.lr.ph ], [ 0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.c ; 4 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17
  store i8 %i.g, ptr %i.d, align 1, !tbaa !17
  store i8 %i.e, ptr %i.f, align 1, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 -1, ptr %i.h, align 1, !tbaa !17
  %i.i = add i32 %.016, 4                         ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = load i64, ptr %i.a, align 8, !tbaa !738
  %i.l = icmp ugt i64 %i.k, %i.j
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !742

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare hidden i32 @ft_glyphslot_alloc_bitmap(ptr noundef) local_unnamed_addr #10

declare void @png_read_image(ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @png_read_end(ptr noundef, ptr noundef) local_unnamed_addr #10

declare ptr @png_get_error_ptr(ptr noundef) local_unnamed_addr #10

declare ptr @png_get_io_ptr(ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @png_error(ptr noundef, ptr noundef) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define internal fastcc i32 @load_format_20(ptr nofree noundef nonnull writeonly captures(none) %0, ptr noundef %1, i16 noundef zeroext %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !180  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.d = zext i16 %2 to i64                       ; 10 uses
  %i.e = shl nuw nsw i64 %i.d, 1                  ; 6 uses
  %i.f = icmp ugt i64 %i.e, %3
  br i1 %i.f, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @ft_mem_qrealloc(ptr noundef %i.c, i64 noundef 2, i64 noundef 0, i64 noundef %i.d, ptr noundef null, ptr noundef nonnull %i.a) #27 ; 9 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !18
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %1, i64 noundef %i.e) #27 ; 2 uses
  store i32 %i.i, ptr %i.a, align 4, !tbaa !18
  %.not82 = icmp eq i32 %i.i, 0
  br i1 %.not82, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.not99 = icmp eq i16 %2, 0
  br i1 %.not99, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !203  ; 30 uses
  %min.iters.check = icmp ult i16 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.e
  %scevgep113 = getelementptr i8, ptr %i.k, i64 %i.e
  %bound0 = icmp ult ptr %i.g, %scevgep113
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check114 = icmp ult i16 %2, 16
  br i1 %min.iters.check114, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %i.d, 8
  %n.vec = and i64 %i.d, 65520                    ; 5 uses
  %i.m = shl nuw nsw i64 %n.vec, 1
  %i.n = getelementptr i8, ptr %i.k, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.do, %vector.body ]
  %vec.phi115 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.dp, %vector.body ]
  %i.o = shl i64 %index, 1                        ; 16 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.o ; 2 uses
  %i.p = getelementptr i8, ptr %i.k, i64 %i.o     ; 2 uses
  %next.gep116 = getelementptr i8, ptr %i.p, i64 2
  %i.q = getelementptr i8, ptr %i.k, i64 %i.o     ; 2 uses
  %next.gep117 = getelementptr i8, ptr %i.q, i64 4
  %i.r = getelementptr i8, ptr %i.k, i64 %i.o     ; 2 uses
  %next.gep118 = getelementptr i8, ptr %i.r, i64 6
  %i.s = getelementptr i8, ptr %i.k, i64 %i.o     ; 2 uses
  %next.gep119 = getelementptr i8, ptr %i.s, i64 8
  %i.t = getelementptr i8, ptr %i.k, i64 %i.o     ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.t, i64 10
  %i.u = getelementptr i8, ptr %i.k, i64 %i.o     ; 2 uses
  %next.gep121 = getelementptr i8, ptr %i.u, i64 12
  %i.v = getelementptr i8, ptr %i.k, i64 %i.o     ; 2 uses
  %next.gep122 = getelementptr i8, ptr %i.v, i64 14
  %i.w = getelementptr i8, ptr %i.k, i64 %i.o     ; 2 uses
  %next.gep123 = getelementptr i8, ptr %i.w, i64 16
  %i.x = getelementptr i8, ptr %i.k, i64 %i.o     ; 2 uses
  %next.gep124 = getelementptr i8, ptr %i.x, i64 18
  %i.y = getelementptr i8, ptr %i.k, i64 %i.o     ; 2 uses
  %next.gep125 = getelementptr i8, ptr %i.y, i64 20
  %i.z = getelementptr i8, ptr %i.k, i64 %i.o     ; 2 uses
  %next.gep126 = getelementptr i8, ptr %i.z, i64 22
  %i.aa = getelementptr i8, ptr %i.k, i64 %i.o    ; 2 uses
  %next.gep127 = getelementptr i8, ptr %i.aa, i64 24
end_hunk_0
