inline.NumInlined: 81
inline.NumDeleted: 23
begin_hunk_0_@cff_font_load:bb.a
  br i1 %.not192, label %bb.ar, label %.loopexit

._crit_edge:                                      ; preds = %bb.ar
  %i.dt = icmp ugt i32 %i.dm, 1
  %i.du = or i1 %.not168, %i.dt
  br i1 %i.du, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %.preheader.thread, %._crit_edge
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 4920
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 1356
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !144
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 1936
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !585
  %i.ea = add i64 %i.dz, %i.e
  %i.eb = call fastcc i32 @CFF_Load_FD_Select(ptr noundef nonnull %i.dv, i32 noundef %i.dx, ptr noundef nonnull %1, i64 noundef %i.ea)
  store i32 %i.eb, ptr %i.a, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %bb.as, %.preheader.thread, %bb.at, %._crit_edge, %bb.aq, %bb.ap
  call fastcc void @cff_index_done(ptr noundef %8)
  %i.ec = load i32, ptr %i.a, align 4, !tbaa !3
  %.not193 = icmp eq i32 %i.ec, 0
  br i1 %.not193, label %bb.au, label %.thread206

.thread206:                                       ; preds = %bb.ao, %bb.am, %bb.an, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %.thread

bb.au:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.aw

bb.av:                                            ; preds = %bb.al
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 2864
  store i32 0, ptr %i.ed, align 8, !tbaa !138
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.ee = load i64, ptr %i.cc, align 8, !tbaa !579
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 3, ptr %i.a, align 4, !tbaa !3
  br label %.thread

bb.ay:                                            ; preds = %bb.aw
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 1356
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !144
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 3 uses
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !89
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 1600
  %i.el = call fastcc i32 @cff_index_get_pointers(ptr noundef nonnull %i.ej, ptr noundef nonnull %i.ek, ptr noundef null, ptr noundef null) ; 2 uses
  store i32 %i.el, ptr %i.a, align 4, !tbaa !3
  %.not194 = icmp eq i32 %i.el, 0
  br i1 %.not194, label %bb.az, label %.thread

bb.az:                                            ; preds = %bb.ay
  br i1 %.not168, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.em = load i32, ptr %i.ei, align 4, !tbaa !89 ; 2 uses
  %.not195 = icmp eq i32 %i.em, 0
  br i1 %.not195, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.en = load i32, ptr %i.ci, align 4, !tbaa !126
  %i.eo = icmp ne i32 %i.en, 65535
  %i.ep = icmp ne i8 %5, 0
  %i.eq = and i1 %i.ep, %i.eo
  %i.er = zext i1 %i.eq to i8
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 1296 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 1816
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !586
  %i.ev = call fastcc i32 @cff_charset_load(ptr noundef nonnull %i.es, i32 noundef %i.em, ptr noundef nonnull %1, i64 noundef %i.e, i64 noundef %i.eu, i8 noundef zeroext %i.er) ; 2 uses
  store i32 %i.ev, ptr %i.a, align 4, !tbaa !3
  %.not196 = icmp eq i32 %i.ev, 0
  br i1 %.not196, label %bb.bc, label %.thread

bb.bc:                                            ; preds = %bb.bb
  %i.ew = load i32, ptr %i.ci, align 4, !tbaa !126
  %i.ex = icmp eq i32 %i.ew, 65535
  br i1 %i.ex, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.ez = load i32, ptr %i.ei, align 4, !tbaa !89
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 1824
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !587
  %i.fc = call fastcc i32 @cff_encoding_load(ptr noundef nonnull %i.ey, ptr noundef nonnull %i.es, i32 noundef %i.ez, ptr noundef nonnull %1, i64 noundef %i.e, i64 noundef %i.fb) ; 2 uses
  store i32 %i.fc, ptr %i.a, align 4, !tbaa !3
  %.not197 = icmp eq i32 %i.fc, 0
  br i1 %.not197, label %bb.be, label %.thread

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.ba, %bb.az
  %i.fd = call fastcc ptr @cff_index_get_name(ptr noundef nonnull %3, i32 noundef %.0161)
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 1592
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !203
  br label %.thread

.thread:                                          ; preds = %bb.bd, %bb.bb, %bb.j, %bb.g, %.thread206, %bb.ay, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.w, %bb.x, %bb.y, %bb.z, %bb.r, %bb.s, %bb.p, %bb.o, %bb.l, %bb.m, %bb.f, %bb.a, %bb.be, %bb.ax, %bb.ag, %bb.ae, %bb.ab, %bb.v, %bb.e
  %i.ff = load ptr, ptr %7, align 8, !tbaa !187   ; 3 uses
  %.not.i = icmp eq ptr %i.ff, null
  br i1 %.not.i, label %cff_index_done.exit, label %bb.bf

bb.bf:                                            ; preds = %.thread
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 56
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !188
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !190
  %.not10.i = icmp eq ptr %i.fj, null
  br i1 %.not10.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @FT_Stream_ReleaseFrame(ptr noundef nonnull %i.ff, ptr noundef nonnull %i.fi) #20
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !191
  call void @ft_mem_free(ptr noundef %i.fh, ptr noundef %i.fl) #20
  br label %cff_index_done.exit

cff_index_done.exit:                              ; preds = %.thread, %bb.bh
  %i.fm = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %i.fm
}

declare i32 @FT_Set_Named_Instance(ptr noundef, i32 noundef) local_unnamed_addr #9

declare hidden void @FT_Matrix_Multiply_Scaled(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

declare hidden void @FT_Vector_Transform_Scaled(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc ptr @cff_index_get_name(ptr noundef readonly captures(address_is_null) %0, i32 noundef range(i32 0, 65536) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !187  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %cff_index_forget_element.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !188
  %i.h = call fastcc i32 @cff_index_access_element(ptr noundef nonnull %i.d, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  store i32 %i.h, ptr %i.c, align 4, !tbaa !3
  %.not10 = icmp eq i32 %i.h, 0
  br i1 %.not10, label %bb.c, label %cff_index_forget_element.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.b, align 8, !tbaa !134  ; 3 uses
  %i.j = add i64 %i.i, 1
  %i.k = call ptr @ft_mem_qalloc(ptr noundef %i.g, i64 noundef %i.j, ptr noundef nonnull %i.c) #20 ; 4 uses
  %i.l = load i32, ptr %i.c, align 4, !tbaa !3
  %.not11 = icmp eq i32 %i.l, 0
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.m, i64 %i.i, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.n, align 1, !tbaa !165
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !190
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %cff_index_forget_element.exit

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !187
  call void @FT_Stream_ReleaseFrame(ptr noundef %i.r, ptr noundef nonnull %i.a) #20
  br label %cff_index_forget_element.exit

cff_index_forget_element.exit:                    ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %i.k, %bb.e ], [ %i.k, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %.0
}

; Function Attrs: nofree norecurse nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @remove_subset_prefix(ptr noundef nonnull captures(none) %0) unnamed_addr #15 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6
  %scevgep = getelementptr i8, ptr %0, i64 7
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = icmp sgt i32 %i.b, 5
  br i1 %i.d, label %.lr.ph, label %._crit_edge45

.lr.ph:                                           ; preds = %bb.a
  %i.e = add nuw nsw i32 %i.b, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge
  %.0182843 = phi i32 [ %i.e, %.lr.ph ], [ %.119, %._crit_edge ] ; 2 uses
  %i.f = load i8, ptr %i.c, align 1, !tbaa !165
  %i.g = icmp eq i8 %i.f, 43
  br i1 %i.g, label %.preheader24.preheader, label %._crit_edge45

.preheader24.preheader:                           ; preds = %bb.b
  %3 = load i8, ptr %0, align 1, !tbaa !165
  %4 = add i8 %3, -91
  %or.cond = icmp ult i8 %4, -26
  %5 = load i8, ptr %1, align 1, !tbaa !165
  %.fr49 = freeze i8 %5
  %6 = add i8 %.fr49, -91
  %or.cond.1 = icmp ult i8 %6, -26
  %7 = load <4 x i8>, ptr %2, align 1, !tbaa !165
  %.fr48 = freeze <4 x i8> %7
  %8 = add <4 x i8> %.fr48, splat (i8 -91)
  %9 = icmp ult <4 x i8> %8, splat (i8 -26)
  %10 = bitcast <4 x i1> %9 to i4
  %11 = icmp ne i4 %10, 0
  %op.rdx = or i1 %11, %or.cond.1
  %op.rdx47 = select i1 %op.rdx, i1 true, i1 %or.cond
  br i1 %op.rdx47, label %._crit_edge45, label %.preheader

.preheader:                                       ; preds = %.preheader24.preheader
  %.not29 = icmp eq i32 %.0182843, 7
  br i1 %.not29, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.h = add nsw i32 %.0182843, -7                ; 2 uses
  %i.i = zext nneg i32 %i.h to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %0, ptr align 1 %scevgep, i64 %i.i, i1 false), !tbaa !165
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  %.119 = phi i32 [ 0, %.preheader ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %i.j = icmp sgt i32 %.119, 6
  br i1 %i.j, label %bb.b, label %._crit_edge45, !llvm.loop !588

._crit_edge45:                                    ; preds = %bb.b, %.preheader24.preheader, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @remove_style(ptr noundef captures(none) %0, ptr noundef nonnull readonly captures(none) %1) unnamed_addr #15 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21 ; 2 uses
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 3 uses
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %.preheader, label %.critedge35

.preheader:                                       ; preds = %bb.a
  %.not37 = icmp slt i32 %i.d, 1
  br i1 %.not37, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %sext = shl i64 %i.a, 32
  %i.f = ashr exact i64 %sext, 32
  %i.g = and i64 %i.c, 2147483647
  %i.h = add nuw nsw i64 %i.c, 1
  %wide.trip.count = and i64 %i.h, 4294967295
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !589

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.i = sub nsw i64 %i.f, %indvars.iv
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !165
  %i.l = sub nsw i64 %i.g, %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !165
  %.not34 = icmp eq i8 %i.k, %i.n
  br i1 %.not34, label %bb.b, label %.critedge35

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %i.o = xor i32 %i.d, -1
  %i.p = add i32 %i.o, %i.b                       ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph42.preheader, label %.critedge35

.lr.ph42.preheader:                               ; preds = %._crit_edge
  %i.r = zext nneg i32 %i.p to i64
  br label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.preheader, %.critedge2
  %indvars.iv46 = phi i64 [ %i.r, %.lr.ph42.preheader ], [ %indvars.iv.next47, %.critedge2 ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv46
  %i.t = load i8, ptr %i.s, align 1, !tbaa !165
  switch i8 %i.t, label %.critedge [
    i8 45, label %.critedge2
    i8 32, label %.critedge2
    i8 95, label %.critedge2
    i8 43, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph42, %.lr.ph42, %.lr.ph42, %.lr.ph42
  %indvars.iv.next47 = add nsw i64 %indvars.iv46, -1
  %i.u = icmp sgt i64 %indvars.iv46, 1
  br i1 %i.u, label %.lr.ph42, label %.critedge35, !llvm.loop !590

.critedge:                                        ; preds = %.lr.ph42
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv46
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 0, ptr %i.w, align 1, !tbaa !165
  br label %.critedge35

.critedge35:                                      ; preds = %.lr.ph, %.critedge2, %._crit_edge, %.critedge, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

declare hidden i32 @FT_CMap_New(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare hidden i64 @FT_Stream_Pos(ptr noundef) local_unnamed_addr #9

declare hidden i32 @FT_Stream_ReadFields(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare hidden zeroext i16 @FT_Stream_ReadUShort(ptr noundef, ptr noundef) local_unnamed_addr #9

declare hidden zeroext i8 @FT_Stream_ReadByte(ptr noundef, ptr noundef) local_unnamed_addr #9

declare hidden i32 @FT_Stream_Skip(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cff_index_init(ptr noundef initializes((0, 64)) %0, ptr noundef %1, i8 noundef zeroext range(i8 0, 2) %2, i8 noundef zeroext range(i8 0, 2) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !188
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i8 0, i64 56, i1 false)
  store ptr %1, ptr %0, align 8, !tbaa !187
  %i.e = tail call i64 @FT_Stream_Pos(ptr noundef %1) #20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !529
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @FT_Stream_ReadULong(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #20
  %i.h = load i32, ptr %i.a, align 4, !tbaa !3
  %.not48 = icmp eq i32 %i.h, 0
  br i1 %.not48, label %bb.e, label %.thread

bb.c:                                             ; preds = %bb.a
  %i.i = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #20
  %i.j = load i32, ptr %i.a, align 4, !tbaa !3
  %.not47 = icmp eq i32 %i.j, 0
  br i1 %.not47, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.k = zext i16 %i.i to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sink = phi i32 [ 3, %bb.d ], [ 5, %bb.b ]
  %.045 = phi i32 [ %i.k, %bb.d ], [ %i.g, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink, ptr %i.l, align 8, !tbaa !530
  %.not49 = icmp eq i32 %.045, 0
  br i1 %.not49, label %thread-pre-split.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = call zeroext i8 @FT_Stream_ReadByte(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #20 ; 3 uses
  %i.n = load i32, ptr %i.a, align 4, !tbaa !3
  %.not50 = icmp eq i32 %i.n, 0
  br i1 %.not50, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.o = add i8 %i.m, -5
  %or.cond = icmp ult i8 %i.o, -4
  br i1 %or.cond, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.045, ptr %i.p, align 4, !tbaa !527
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.m, ptr %i.q, align 8, !tbaa !528
  %i.r = add i32 %.045, 1
  %i.s = zext i32 %i.r to i64
  %i.t = zext nneg i8 %i.m to i64                 ; 2 uses
  %i.u = mul nuw nsw i64 %i.t, %i.s               ; 2 uses
  %i.v = load i64, ptr %i.f, align 8, !tbaa !529
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !530
  %i.y = zext i32 %i.x to i64
  %i.z = add i64 %i.v, %i.u
  %i.aa = add i64 %i.z, %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !538
  %i.ac = sub nsw i64 %i.u, %i.t
  %i.ad = call i32 @FT_Stream_Skip(ptr noundef nonnull %1, i64 noundef %i.ac) #20 ; 2 uses
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !3
  %.not51 = icmp eq i32 %i.ad, 0
  br i1 %.not51, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ae = call fastcc i64 @cff_index_read_offset(ptr noundef nonnull %0, ptr noundef %i.a) ; 2 uses
  %i.af = load i32, ptr %i.a, align 4, !tbaa !3
  %.not52 = icmp eq i32 %i.af, 0
  br i1 %.not52, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ag = icmp eq i64 %i.ae, 0
  br i1 %i.ag, label %.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add i64 %i.ae, -1                       ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !591
  %.not53 = icmp eq i8 %2, 0
  br i1 %.not53, label %bb.m, label %bb.l

end_hunk_0
