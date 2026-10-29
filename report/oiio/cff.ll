Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/cff?download=true
inline.NumInlined: 81
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@cff_font_load:bb.a
  call fastcc void @cff_index_done(ptr noundef %8)
  %i.dz = load i32, ptr %i.a, align 4, !tbaa !11
  %.not193 = icmp eq i32 %i.dz, 0
  br i1 %.not193, label %bb.au, label %.thread203

.thread203:                                       ; preds = %bb.ao, %bb.am, %bb.an, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.thread

bb.au:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.aw

bb.av:                                            ; preds = %bb.al
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 2864
  store i32 0, ptr %i.ea, align 8, !tbaa !118
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.eb = load i64, ptr %i.cb, align 8, !tbaa !588
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 3, ptr %i.a, align 4, !tbaa !11
  br label %.thread

bb.ay:                                            ; preds = %bb.aw
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 1356
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !121
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 3 uses
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !92
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 1600
  %i.ei = call fastcc i32 @cff_index_get_pointers(ptr noundef nonnull %i.eg, ptr noundef nonnull %i.eh, ptr noundef null, ptr noundef null) ; 2 uses
  store i32 %i.ei, ptr %i.a, align 4, !tbaa !11
  %.not194 = icmp eq i32 %i.ei, 0
  br i1 %.not194, label %bb.az, label %.thread

bb.az:                                            ; preds = %bb.ay
  br i1 %.not168, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.ej = load i32, ptr %i.ef, align 4, !tbaa !92 ; 2 uses
  %.not195 = icmp eq i32 %i.ej, 0
  br i1 %.not195, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ek = load i32, ptr %i.ch, align 4, !tbaa !108
  %i.el = icmp ne i32 %i.ek, 65535
  %i.em = and i1 %.not183, %i.el
  %i.en = zext i1 %i.em to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 1296 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 1816
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !592
  %i.er = call fastcc i32 @cff_charset_load(ptr noundef nonnull %i.eo, i32 noundef %i.ej, ptr noundef nonnull %1, i64 noundef %i.e, i64 noundef %i.eq, i8 noundef zeroext %i.en) ; 2 uses
  store i32 %i.er, ptr %i.a, align 4, !tbaa !11
  %.not196 = icmp eq i32 %i.er, 0
  br i1 %.not196, label %bb.bc, label %.thread

bb.bc:                                            ; preds = %bb.bb
  %i.es = load i32, ptr %i.ch, align 4, !tbaa !108
  %i.et = icmp eq i32 %i.es, 65535
  br i1 %i.et, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.ev = load i32, ptr %i.ef, align 4, !tbaa !92
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 1824
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !593
  %i.ey = call fastcc i32 @cff_encoding_load(ptr noundef nonnull %i.eu, ptr noundef nonnull %i.eo, i32 noundef %i.ev, ptr noundef nonnull %1, i64 noundef %i.e, i64 noundef %i.ex) ; 2 uses
  store i32 %i.ey, ptr %i.a, align 4, !tbaa !11
  %.not197 = icmp eq i32 %i.ey, 0
  br i1 %.not197, label %bb.be, label %.thread

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.ba, %bb.az
  %i.ez = call fastcc ptr @cff_index_get_name(ptr noundef nonnull %3, i32 noundef %.0160)
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 1592
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !151
  br label %.thread

.thread:                                          ; preds = %bb.bd, %bb.bb, %bb.j, %bb.g, %.thread203, %bb.ay, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.w, %bb.x, %bb.y, %bb.z, %bb.r, %bb.s, %bb.p, %bb.o, %bb.l, %bb.m, %bb.f, %bb.a, %bb.be, %bb.ax, %bb.ag, %bb.ae, %bb.ab, %bb.v, %bb.e
  %i.fb = load ptr, ptr %7, align 8, !tbaa !137   ; 3 uses
  %.not.i = icmp eq ptr %i.fb, null
  br i1 %.not.i, label %cff_index_done.exit, label %bb.bf

bb.bf:                                            ; preds = %.thread
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 56
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !139
  %i.fe = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !140
  %.not10.i = icmp eq ptr %i.ff, null
  br i1 %.not10.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @FT_Stream_ReleaseFrame(ptr noundef nonnull %i.fb, ptr noundef nonnull %i.fe) #18
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.fg = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !141
  call void @ft_mem_free(ptr noundef %i.fd, ptr noundef %i.fh) #18
  br label %cff_index_done.exit

cff_index_done.exit:                              ; preds = %.thread, %bb.bh
  %i.fi = load i32, ptr %i.a, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.fi
}

declare i32 @FT_Set_Named_Instance(ptr noundef, i32 noundef) local_unnamed_addr #9

declare hidden void @FT_Matrix_Multiply_Scaled(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

declare hidden void @FT_Vector_Transform_Scaled(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc ptr @cff_index_get_name(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef range(i32 0, 65536) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !137  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %cff_index_forget_element.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !139
  %i.h = call fastcc i32 @cff_index_access_element(ptr noundef nonnull %i.d, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  store i32 %i.h, ptr %i.c, align 4, !tbaa !11
  %.not10 = icmp eq i32 %i.h, 0
  br i1 %.not10, label %bb.c, label %cff_index_forget_element.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.b, align 8, !tbaa !114  ; 3 uses
  %i.j = add i64 %i.i, 1
  %i.k = call ptr @ft_mem_qalloc(ptr noundef %i.g, i64 noundef %i.j, ptr noundef nonnull %i.c) #18 ; 4 uses
  %i.l = load i32, ptr %i.c, align 4, !tbaa !11
  %.not11 = icmp eq i32 %i.l, 0
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !125
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.m, i64 %i.i, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.n, align 1, !tbaa !128
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !140
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %cff_index_forget_element.exit

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !137
  call void @FT_Stream_ReleaseFrame(ptr noundef %i.r, ptr noundef nonnull %i.a) #18
  br label %cff_index_forget_element.exit

cff_index_forget_element.exit:                    ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %i.k, %bb.e ], [ %i.k, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @remove_subset_prefix(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6
  %scevgep = getelementptr i8, ptr %0, i64 7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = icmp sgt i32 %i.b, 5
  br i1 %i.f, label %.lr.ph, label %._crit_edge45

.lr.ph:                                           ; preds = %bb.a
  %i.g = add nuw nsw i32 %i.b, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge
  %.0182843 = phi i32 [ %i.g, %.lr.ph ], [ %.119, %._crit_edge ] ; 2 uses
  %i.h = load i8, ptr %i.c, align 1, !tbaa !128
  %i.i = icmp eq i8 %i.h, 43
  br i1 %i.i, label %.preheader24.preheader, label %._crit_edge45

.preheader24.preheader:                           ; preds = %bb.b
  %i.j = load i8, ptr %0, align 1, !tbaa !128
  %i.k = add i8 %i.j, -91
  %or.cond = icmp ult i8 %i.k, -26
  %i.l = load i8, ptr %i.d, align 1, !tbaa !128
  %i.m = add i8 %i.l, -91
  %or.cond.1 = icmp ult i8 %i.m, -26
  %i.n = load <4 x i8>, ptr %i.e, align 1, !tbaa !128
  %.fr48 = freeze <4 x i8> %i.n
  %i.o = add <4 x i8> %.fr48, splat (i8 -91)
  %i.p = icmp ult <4 x i8> %i.o, splat (i8 -26)
  %i.q = bitcast <4 x i1> %i.p to i4
  %i.r = icmp ne i4 %i.q, 0
  %op.rdx = select i1 %i.r, i1 true, i1 %or.cond.1
  %op.rdx47 = select i1 %op.rdx, i1 true, i1 %or.cond
  br i1 %op.rdx47, label %._crit_edge45, label %.preheader

.preheader:                                       ; preds = %.preheader24.preheader
  %.not29 = icmp eq i32 %.0182843, 7
  br i1 %.not29, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.s = add nsw i32 %.0182843, -7                ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %0, ptr align 1 %scevgep, i64 %i.t, i1 false), !tbaa !128
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  %.119 = phi i32 [ 0, %.preheader ], [ %i.s, %.lr.ph.preheader ] ; 2 uses
  %i.u = icmp sgt i32 %.119, 6
  br i1 %i.u, label %bb.b, label %._crit_edge45, !llvm.loop !594

._crit_edge45:                                    ; preds = %bb.b, %.preheader24.preheader, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @remove_style(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #13 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19 ; 2 uses
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 3 uses
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !595

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.i = sub nsw i64 %i.f, %indvars.iv
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !128
  %i.l = sub nuw nsw i64 %i.g, %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !128
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
  %i.t = load i8, ptr %i.s, align 1, !tbaa !128
  switch i8 %i.t, label %.critedge [
    i8 45, label %.critedge2
    i8 32, label %.critedge2
    i8 95, label %.critedge2
    i8 43, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph42, %.lr.ph42, %.lr.ph42, %.lr.ph42
  %indvars.iv.next47 = add nsw i64 %indvars.iv46, -1
  %i.u = icmp sgt i64 %indvars.iv46, 1
  br i1 %i.u, label %.lr.ph42, label %.critedge35, !llvm.loop !596

.critedge:                                        ; preds = %.lr.ph42
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv46
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 0, ptr %i.w, align 1, !tbaa !128
  br label %.critedge35

.critedge35:                                      ; preds = %.lr.ph, %.critedge2, %._crit_edge, %.critedge, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !139
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i8 0, i64 56, i1 false)
  store ptr %1, ptr %0, align 8, !tbaa !137
  %i.e = tail call i64 @FT_Stream_Pos(ptr noundef %1) #18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !289
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @FT_Stream_ReadULong(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #18
  %i.h = load i32, ptr %i.a, align 4, !tbaa !11
  %.not48 = icmp eq i32 %i.h, 0
  br i1 %.not48, label %bb.e, label %.thread

bb.c:                                             ; preds = %bb.a
  %i.i = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #18
  %i.j = load i32, ptr %i.a, align 4, !tbaa !11
  %.not47 = icmp eq i32 %i.j, 0
  br i1 %.not47, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.k = zext i16 %i.i to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sink = phi i32 [ 3, %bb.d ], [ 5, %bb.b ]
  %.044 = phi i32 [ %i.k, %bb.d ], [ %i.g, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink, ptr %i.l, align 8, !tbaa !290
  %.not49 = icmp eq i32 %.044, 0
  br i1 %.not49, label %thread-pre-split.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = call zeroext i8 @FT_Stream_ReadByte(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #18 ; 3 uses
  %i.n = load i32, ptr %i.a, align 4, !tbaa !11
  %.not50 = icmp eq i32 %i.n, 0
  br i1 %.not50, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.o = add i8 %i.m, -5
  %or.cond = icmp ult i8 %i.o, -4
  br i1 %or.cond, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.044, ptr %i.p, align 4, !tbaa !287
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.m, ptr %i.q, align 8, !tbaa !288
  %i.r = add i32 %.044, 1
  %i.s = zext i32 %i.r to i64
  %i.t = zext nneg i8 %i.m to i64                 ; 2 uses
  %i.u = mul nuw nsw i64 %i.t, %i.s               ; 2 uses
  %i.v = load i64, ptr %i.f, align 8, !tbaa !289
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !290
  %i.y = zext i32 %i.x to i64
  %i.z = add i64 %i.v, %i.u
  %i.aa = add i64 %i.z, %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !292
  %i.ac = sub nsw i64 %i.u, %i.t
  %i.ad = call i32 @FT_Stream_Skip(ptr noundef nonnull %1, i64 noundef %i.ac) #18 ; 2 uses
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !11
  %.not51 = icmp eq i32 %i.ad, 0
  br i1 %.not51, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ae = call fastcc i64 @cff_index_read_offset(ptr noundef nonnull %0, ptr noundef %i.a) ; 2 uses
  %i.af = load i32, ptr %i.a, align 4, !tbaa !11
  %.not52 = icmp eq i32 %i.af, 0
  br i1 %.not52, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ag = icmp eq i64 %i.ae, 0
  br i1 %i.ag, label %.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add i64 %i.ae, -1                       ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !293
  %.not53 = icmp eq i8 %2, 0
end_hunk_0
