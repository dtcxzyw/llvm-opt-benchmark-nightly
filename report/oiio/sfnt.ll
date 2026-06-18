inline.NumInlined: 86
inline.NumDeleted: 34
begin_hunk_0_@Load_SBit_Png:bb.a
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !641
  call void @png_set_read_fn(ptr noundef %i.ag, ptr noundef nonnull %10, ptr noundef nonnull @read_data_from_FT_Stream) #26
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !641
  call void @png_read_info(ptr noundef %i.ah, ptr noundef nonnull %i.ac) #26
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !641
  %i.aj = call i32 @png_get_IHDR(ptr noundef %i.ai, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef null, ptr noundef null) #26 ; 0 uses
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !3
  %.not67 = icmp eq i32 %i.ak, 0
  br i1 %.not67, label %bb.o, label %bb.aq

bb.o:                                             ; preds = %bb.n
  br i1 %.not, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.al = load i32, ptr %i.d, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.an = load i16, ptr %i.am, align 2, !tbaa !400
  %i.ao = zext i16 %i.an to i32
  %.not68 = icmp eq i32 %i.al, %i.ao
  br i1 %.not68, label %bb.q, label %bb.aq

bb.q:                                             ; preds = %bb.p
  %i.ap = load i32, ptr %i.e, align 4, !tbaa !3
  %i.aq = load i16, ptr %4, align 2, !tbaa !402
  %i.ar = zext i16 %i.aq to i32
  %.not69 = icmp eq i32 %i.ap, %i.ar
  br i1 %.not69, label %bb.t, label %bb.aq

.critedge:                                        ; preds = %bb.o
  %i.as = load i32, ptr %i.e, align 4, !tbaa !3   ; 3 uses
  %i.at = icmp ugt i32 %i.as, 32767
  %i.au = load i32, ptr %i.d, align 4             ; 4 uses
  %i.av = icmp ugt i32 %i.au, 32767
  %or.cond5 = select i1 %i.at, i1 true, i1 %i.av
  br i1 %or.cond5, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.critedge
  store i32 10, ptr %i.a, align 4, !tbaa !3
  br label %bb.aq

bb.s:                                             ; preds = %.critedge
  %i.aw = trunc nuw nsw i32 %i.au to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !400
  %i.ay = trunc nuw nsw i32 %i.as to i16
  store i16 %i.ay, ptr %4, align 2, !tbaa !402
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %i.au, ptr %i.az, align 4, !tbaa !621
  store i32 %i.as, ptr %i.j, align 8, !tbaa !622
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 178
  store i8 7, ptr %i.ba, align 2, !tbaa !413
  %i.bb = shl nuw nsw i32 %i.au, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !422
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i16 256, ptr %i.bd, align 8, !tbaa !423
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s
  %i.be = load i32, ptr %i.g, align 4, !tbaa !3   ; 2 uses
  %i.bf = icmp eq i32 %i.be, 3
  br i1 %i.bf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !641
  call void @png_set_palette_to_rgb(ptr noundef %i.bg) #26
  %.pr = load i32, ptr %i.g, align 4, !tbaa !3
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bh = phi i32 [ %.pr, %bb.u ], [ %i.be, %bb.t ]
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !641
  call void @png_set_expand_gray_1_2_4_to_8(ptr noundef %i.bj) #26
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !641
  %i.bl = call i32 @png_get_valid(ptr noundef %i.bk, ptr noundef nonnull %i.ac, i32 noundef 16) #26
  %.not70 = icmp eq i32 %i.bl, 0
  br i1 %.not70, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !641
  call void @png_set_tRNS_to_alpha(ptr noundef %i.bm) #26
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bn = load i32, ptr %i.f, align 4, !tbaa !3   ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 16
  br i1 %i.bo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !641
  call void @png_set_strip_16(ptr noundef %i.bp) #26
  %.pr76 = load i32, ptr %i.f, align 4, !tbaa !3
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bq = phi i32 [ %.pr76, %bb.aa ], [ %i.bn, %bb.z ]
  %i.br = icmp slt i32 %i.bq, 8
  br i1 %i.br, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !641
  call void @png_set_packing(ptr noundef %i.bs) #26
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bt = load i32, ptr %i.g, align 4, !tbaa !3
  %i.bu = and i32 %i.bt, -5
  %or.cond7 = icmp eq i32 %i.bu, 0
  br i1 %or.cond7, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !641
  call void @png_set_gray_to_rgb(ptr noundef %i.bv) #26
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.bw = load i32, ptr %i.h, align 4, !tbaa !3
  %.not71 = icmp eq i32 %i.bw, 0
  br i1 %.not71, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !641
  %i.by = call i32 @png_set_interlace_handling(ptr noundef %i.bx) #26 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !641
  call void @png_set_filler(ptr noundef %i.bz, i32 noundef 255, i32 noundef 1) #26
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !641
  call void @png_read_update_info(ptr noundef %i.ca, ptr noundef nonnull %i.ac) #26
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !641
  %i.cc = call i32 @png_get_IHDR(ptr noundef %i.cb, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef null, ptr noundef null) #26 ; 0 uses
  %i.cd = load i32, ptr %i.f, align 4, !tbaa !3
  %.not72 = icmp eq i32 %i.cd, 8
  br i1 %.not72, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ce = load i32, ptr %i.g, align 4, !tbaa !3   ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 2
  switch i32 %i.ce, label %bb.aj [
    i32 6, label %bb.ak
    i32 2, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  store i32 3, ptr %i.a, align 4, !tbaa !3
  br label %bb.aq

bb.ak:                                            ; preds = %bb.ai, %bb.ai
  %.not73 = icmp eq i8 %9, 0
  br i1 %.not73, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.cg = load ptr, ptr %i.b, align 8, !tbaa !641
  %convert_bytes_to_data.premultiply_data = select i1 %i.cf, ptr @convert_bytes_to_data, ptr @premultiply_data
  call void @png_set_read_user_transform_fn(ptr noundef %i.cg, ptr noundef nonnull %convert_bytes_to_data.premultiply_data) #26
  br i1 %.not, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ch = load i32, ptr %i.j, align 8, !tbaa !622
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !422
  %i.cl = sext i32 %i.ck to i64
  %i.cm = mul nsw i64 %i.cl, %i.ci
  %i.cn = call i32 @ft_glyphslot_alloc_bitmap(ptr noundef %0, i64 noundef %i.cm) #26 ; 2 uses
  store i32 %i.cn, ptr %i.a, align 4, !tbaa !3
  %.not74 = icmp eq i32 %i.cn, 0
  br i1 %.not74, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.co = load i32, ptr %i.e, align 4, !tbaa !3
  %i.cp = zext i32 %i.co to i64
  %i.cq = call ptr @ft_mem_qrealloc(ptr noundef %5, i64 noundef 8, i64 noundef 0, i64 noundef %i.cp, ptr noundef null, ptr noundef nonnull %i.a) #26
  store volatile ptr %i.cq, ptr %i.i, align 8, !tbaa !640
  %i.cr = load i32, ptr %i.a, align 4, !tbaa !3
  %.not75 = icmp eq i32 %i.cr, 0
  br i1 %.not75, label %.preheader, label %bb.ao

.preheader:                                       ; preds = %bb.an
  %i.cs = load i32, ptr %i.e, align 4, !tbaa !3
  %.fr = freeze i32 %i.cs                         ; 4 uses
  %i.ct = icmp sgt i32 %.fr, 0
  br i1 %i.ct, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !422
  %i.cx = shl nsw i32 %1, 2
  %i.cy = zext nneg i32 %i.cx to i64              ; 3 uses
  %i.cz = sext i32 %2 to i64                      ; 3 uses
  %i.da = sext i32 %i.cw to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %.fr to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.db = icmp eq i32 %.fr, 1
  br i1 %i.db, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 64, ptr %i.a, align 4, !tbaa !3
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ap, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.ap ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.ap ]
  %i.dc = load ptr, ptr %i.cu, align 8, !tbaa !424
  %i.dd = add nsw i64 %indvars.iv, %i.cz
  %i.de = mul nsw i64 %i.dd, %i.da
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cy
  %.0..0..0..0. = load volatile ptr, ptr %i.i, align 8, !tbaa !640
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.0..0..0..0., i64 %indvars.iv
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !429
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.di = load ptr, ptr %i.cu, align 8, !tbaa !424
  %i.dj = add nsw i64 %indvars.iv.next, %i.cz
  %i.dk = mul nsw i64 %i.dj, %i.da
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.cy
  %.0..0..0..0..1 = load volatile ptr, ptr %i.i, align 8, !tbaa !640
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.0..0..0..0..1, i64 %indvars.iv.next
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !429
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.ap, !llvm.loop !645

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
  %.0..0..0..0..epil = load volatile ptr, ptr %i.i, align 8, !tbaa !640
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.0..0..0..0..epil, i64 %indvars.iv.epil.init
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !429
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %i.du = load ptr, ptr %i.b, align 8, !tbaa !641
  %.0..0..0..0.11 = load volatile ptr, ptr %i.i, align 8, !tbaa !640
  call void @png_read_image(ptr noundef %i.du, ptr noundef %.0..0..0..0.11) #26
  %i.dv = load ptr, ptr %i.b, align 8, !tbaa !641
  call void @png_read_end(ptr noundef %i.dv, ptr noundef nonnull %i.ac) #26
  br label %bb.aq

bb.aq:                                            ; preds = %bb.am, %bb.m, %bb.r, %bb.aj, %bb.ao, %._crit_edge, %bb.q, %bb.p, %bb.n, %bb.ak
  %.0..0..0..0.12 = load volatile ptr, ptr %i.i, align 8, !tbaa !640
  call void @ft_mem_free(ptr noundef %5, ptr noundef %.0..0..0..0.12) #26
  store volatile ptr null, ptr %i.i, align 8, !tbaa !640
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !646  ; 4 uses
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
  br i1 %i.x, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !648

end_hunk_0
