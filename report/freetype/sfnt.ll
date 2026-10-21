Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sfnt?download=true
inline.NumInlined: 119
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@Load_SBit_Png:bb.a
  br label %bb.aq

bb.n:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !747
  call void @png_set_read_fn(ptr noundef %i.ag, ptr noundef nonnull %10, ptr noundef nonnull @read_data_from_FT_Stream) #27
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !747
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !749
  call void @png_read_info(ptr noundef %i.ah, ptr noundef %i.ai) #27
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !747
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !749
  %i.al = call i32 @png_get_IHDR(ptr noundef %i.aj, ptr noundef %i.ak, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef null, ptr noundef null) #27 ; 0 uses
  %i.am = load i32, ptr %i.a, align 4, !tbaa !30
  %.not60 = icmp eq i32 %i.am, 0
  br i1 %.not60, label %bb.o, label %bb.aq

bb.o:                                             ; preds = %bb.n
  br i1 %.not, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.an = load i32, ptr %i.d, align 4, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !252
  %i.aq = zext i16 %i.ap to i32
  %.not61 = icmp eq i32 %i.an, %i.aq
  br i1 %.not61, label %bb.q, label %bb.aq

bb.q:                                             ; preds = %bb.p
  %i.ar = load i32, ptr %i.e, align 4, !tbaa !30
  %i.as = load i16, ptr %4, align 2, !tbaa !253
  %i.at = zext i16 %i.as to i32
  %.not62 = icmp eq i32 %i.ar, %i.at
  br i1 %.not62, label %bb.t, label %bb.aq

.critedge:                                        ; preds = %bb.o
  %i.au = load i32, ptr %i.e, align 4, !tbaa !30  ; 3 uses
  %i.av = icmp ugt i32 %i.au, 32767
  %i.aw = load i32, ptr %i.d, align 4             ; 4 uses
  %i.ax = icmp ugt i32 %i.aw, 32767
  %or.cond5 = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %or.cond5, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.critedge
  store i32 10, ptr %i.a, align 4, !tbaa !30
  br label %bb.aq

bb.s:                                             ; preds = %.critedge
  %i.ay = trunc nuw nsw i32 %i.aw to i16
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !252
  %i.ba = trunc nuw nsw i32 %i.au to i16
  store i16 %i.ba, ptr %4, align 2, !tbaa !253
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %i.aw, ptr %i.bb, align 4, !tbaa !256
  store i32 %i.au, ptr %i.j, align 8, !tbaa !255
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 178
  store i8 7, ptr %i.bc, align 2, !tbaa !267
  %i.bd = shl nuw nsw i32 %i.aw, 2
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !274
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i16 256, ptr %i.bf, align 8, !tbaa !275
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s
  %i.bg = load i32, ptr %i.g, align 4, !tbaa !30  ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 3
  br i1 %i.bh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !747
  call void @png_set_palette_to_rgb(ptr noundef %i.bi) #27
  %.pr = load i32, ptr %i.g, align 4, !tbaa !30
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bj = phi i32 [ %.pr, %bb.u ], [ %i.bg, %bb.t ]
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !747
  call void @png_set_expand_gray_1_2_4_to_8(ptr noundef %i.bl) #27
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !747
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !749
  %i.bo = call i32 @png_get_valid(ptr noundef %i.bm, ptr noundef %i.bn, i32 noundef 16) #27
  %.not63 = icmp eq i32 %i.bo, 0
  br i1 %.not63, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !747
  call void @png_set_tRNS_to_alpha(ptr noundef %i.bp) #27
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bq = load i32, ptr %i.f, align 4, !tbaa !30  ; 2 uses
  %i.br = icmp eq i32 %i.bq, 16
  br i1 %i.br, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !747
  call void @png_set_strip_16(ptr noundef %i.bs) #27
  %.pr69 = load i32, ptr %i.f, align 4, !tbaa !30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bt = phi i32 [ %.pr69, %bb.aa ], [ %i.bq, %bb.z ]
  %i.bu = icmp slt i32 %i.bt, 8
  br i1 %i.bu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !747
  call void @png_set_packing(ptr noundef %i.bv) #27
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bw = load i32, ptr %i.g, align 4, !tbaa !30
  %i.bx = and i32 %i.bw, -5
  %or.cond7 = icmp eq i32 %i.bx, 0
  br i1 %or.cond7, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.by = load ptr, ptr %i.b, align 8, !tbaa !747
  call void @png_set_gray_to_rgb(ptr noundef %i.by) #27
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.bz = load i32, ptr %i.h, align 4, !tbaa !30
  %.not64 = icmp eq i32 %i.bz, 0
  br i1 %.not64, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !747
  %i.cb = call i32 @png_set_interlace_handling(ptr noundef %i.ca) #27 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !747
  call void @png_set_filler(ptr noundef %i.cc, i32 noundef 255, i32 noundef 1) #27
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !747
  %i.ce = load ptr, ptr %i.c, align 8, !tbaa !749
  call void @png_read_update_info(ptr noundef %i.cd, ptr noundef %i.ce) #27
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !747
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !749
  %i.ch = call i32 @png_get_IHDR(ptr noundef %i.cf, ptr noundef %i.cg, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef null, ptr noundef null) #27 ; 0 uses
  %i.ci = load i32, ptr %i.f, align 4, !tbaa !30
  %.not65 = icmp eq i32 %i.ci, 8
  br i1 %.not65, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cj = load i32, ptr %i.g, align 4, !tbaa !30  ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 2
  switch i32 %i.cj, label %bb.aj [
    i32 6, label %bb.ak
    i32 2, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  store i32 3, ptr %i.a, align 4, !tbaa !30
  br label %bb.aq

bb.ak:                                            ; preds = %bb.ai, %bb.ai
  %.not66 = icmp eq i8 %9, 0
  br i1 %.not66, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.cl = load ptr, ptr %i.b, align 8, !tbaa !747
  %convert_bytes_to_data.premultiply_data = select i1 %i.ck, ptr @convert_bytes_to_data, ptr @premultiply_data
  call void @png_set_read_user_transform_fn(ptr noundef %i.cl, ptr noundef nonnull %convert_bytes_to_data.premultiply_data) #27
  br i1 %.not, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cm = call i32 @ft_glyphslot_alloc_bitmap(ptr noundef %0) #27 ; 2 uses
  store i32 %i.cm, ptr %i.a, align 4, !tbaa !30
  %.not67 = icmp eq i32 %i.cm, 0
  br i1 %.not67, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cn = load i32, ptr %i.e, align 4, !tbaa !30
  %i.co = zext i32 %i.cn to i64
  %i.cp = call ptr @ft_mem_qrealloc(ptr noundef %5, i64 noundef 8, i64 noundef 0, i64 noundef %i.co, ptr noundef null, ptr noundef nonnull %i.a) #27
  store volatile ptr %i.cp, ptr %i.i, align 8, !tbaa !745
  %i.cq = load i32, ptr %i.a, align 4, !tbaa !30
  %.not68 = icmp eq i32 %i.cq, 0
  br i1 %.not68, label %.preheader, label %bb.ao

.preheader:                                       ; preds = %bb.an
  %i.cr = load i32, ptr %i.e, align 4, !tbaa !30
  %.fr = freeze i32 %i.cr                         ; 4 uses
  %i.cs = icmp sgt i32 %.fr, 0
  br i1 %i.cs, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !274
  %i.cw = shl nuw nsw i32 %1, 2
  %i.cx = zext nneg i32 %i.cw to i64              ; 3 uses
  %11 = sext i32 %2 to i64                        ; 3 uses
  %i.cy = sext i32 %i.cv to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %.fr to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.cz = icmp eq i32 %.fr, 1
  br i1 %i.cz, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 64, ptr %i.a, align 4, !tbaa !30
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ap, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.ap ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.ap ]
  %i.da = load ptr, ptr %i.ct, align 8, !tbaa !257
  %i.db = add nuw nsw i64 %indvars.iv, %11
  %i.dc = mul nsw i64 %i.db, %i.cy
  %i.dd = getelementptr inbounds i8, ptr %i.da, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cx
  %.0..0..0..0. = load volatile ptr, ptr %i.i, align 8, !tbaa !745
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.0..0..0..0., i64 %indvars.iv
  store ptr %i.de, ptr %i.df, align 8, !tbaa !141
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dg = load ptr, ptr %i.ct, align 8, !tbaa !257
  %i.dh = add nuw nsw i64 %indvars.iv.next, %11
  %i.di = mul nsw i64 %i.dh, %i.cy
  %i.dj = getelementptr inbounds i8, ptr %i.dg, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.cx
  %.0..0..0..0..1 = load volatile ptr, ptr %i.i, align 8, !tbaa !745
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.0..0..0..0..1, i64 %indvars.iv.next
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !141
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.ap, !llvm.loop !744

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ap
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod77 = trunc i32 %.fr to i1
  call void @llvm.assume(i1 %lcmp.mod77)
  %i.dm = load ptr, ptr %i.ct, align 8, !tbaa !257
  %i.dn = add nuw nsw i64 %indvars.iv.epil.init, %11
  %i.do = mul nsw i64 %i.dn, %i.cy
  %i.dp = getelementptr inbounds i8, ptr %i.dm, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.cx
  %.0..0..0..0..epil = load volatile ptr, ptr %i.i, align 8, !tbaa !745
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.0..0..0..0..epil, i64 %indvars.iv.epil.init
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !141
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %i.ds = load ptr, ptr %i.b, align 8, !tbaa !747
  %.0..0..0..0.10 = load volatile ptr, ptr %i.i, align 8, !tbaa !745
  call void @png_read_image(ptr noundef %i.ds, ptr noundef %.0..0..0..0.10) #27
  %i.dt = load ptr, ptr %i.b, align 8, !tbaa !747
  %i.du = load ptr, ptr %i.c, align 8, !tbaa !749
  call void @png_read_end(ptr noundef %i.dt, ptr noundef %i.du) #27
  br label %bb.aq

bb.aq:                                            ; preds = %bb.m, %bb.r, %bb.aj, %bb.ao, %._crit_edge, %bb.q, %bb.p, %bb.n, %bb.ak, %bb.am
  %.0..0..0..0.11 = load volatile ptr, ptr %i.i, align 8, !tbaa !745
  call void @ft_mem_free(ptr noundef %5, ptr noundef %.0..0..0..0.11) #27
  store volatile ptr null, ptr %i.i, align 8, !tbaa !745
  call void @png_destroy_read_struct(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null) #27
  call void @FT_Stream_Close(ptr noundef nonnull %10) #27
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.k, %bb.i, %bb.g, %bb.b
  %i.dv = load i32, ptr %i.a, align 4, !tbaa !30
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
  ret i32 %i.dv
}

declare noalias ptr @png_create_read_struct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn nounwind uwtable
define internal void @error_callback(ptr noundef %0, ptr nofree readnone captures(none) %1) #18 {
bb.a:
  %i.a = tail call ptr @png_get_error_ptr(ptr noundef %0) #27
  store i32 64, ptr %i.a, align 4, !tbaa !30
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
  store i32 84, ptr %i.c, align 4, !tbaa !30
  tail call void @png_error(ptr noundef %0, ptr noundef null) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !137
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !348  ; 4 uses
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
end_hunk_0
