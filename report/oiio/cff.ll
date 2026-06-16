inline.NumInlined: 81
inline.NumDeleted: 23
begin_hunk_0_@cff_font_load:bb.a

bb.az:                                            ; preds = %bb.ay
  br i1 %.not168, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.ek = load i32, ptr %i.eg, align 4, !tbaa !89 ; 2 uses
  %.not195 = icmp eq i32 %i.ek, 0
  br i1 %.not195, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.el = load i32, ptr %i.ci, align 4, !tbaa !126
  %i.em = icmp ne i32 %i.el, 65535
  %i.en = icmp ne i8 %5, 0
  %i.eo = and i1 %i.en, %i.em
  %i.ep = zext i1 %i.eo to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 1296 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 1816
  %i.es = load i64, ptr %i.er, align 8, !tbaa !586
  %i.et = call fastcc i32 @cff_charset_load(ptr noundef nonnull %i.eq, i32 noundef %i.ek, ptr noundef nonnull %1, i64 noundef %i.e, i64 noundef %i.es, i8 noundef zeroext %i.ep) ; 2 uses
  store i32 %i.et, ptr %i.a, align 4, !tbaa !3
  %.not196 = icmp eq i32 %i.et, 0
  br i1 %.not196, label %bb.bc, label %.thread

bb.bc:                                            ; preds = %bb.bb
  %i.eu = load i32, ptr %i.ci, align 4, !tbaa !126
  %i.ev = icmp eq i32 %i.eu, 65535
  br i1 %i.ev, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.ex = load i32, ptr %i.eg, align 4, !tbaa !89
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 1824
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !587
  %i.fa = call fastcc i32 @cff_encoding_load(ptr noundef nonnull %i.ew, ptr noundef nonnull %i.eq, i32 noundef %i.ex, ptr noundef nonnull %1, i64 noundef %i.e, i64 noundef %i.ez) ; 2 uses
  store i32 %i.fa, ptr %i.a, align 4, !tbaa !3
  %.not197 = icmp eq i32 %i.fa, 0
  br i1 %.not197, label %bb.be, label %.thread

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.ba, %bb.az
  %i.fb = call fastcc ptr @cff_index_get_name(ptr noundef nonnull %3, i32 noundef %.0161)
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 1592
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !203
  br label %.thread

.thread:                                          ; preds = %bb.bd, %bb.bb, %bb.j, %bb.g, %.thread206, %bb.ay, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.w, %bb.x, %bb.y, %bb.z, %bb.r, %bb.s, %bb.p, %bb.o, %bb.l, %bb.m, %bb.f, %bb.a, %bb.be, %bb.ax, %bb.ag, %bb.ae, %bb.ab, %bb.v, %bb.e
  %i.fd = load ptr, ptr %7, align 8, !tbaa !187   ; 3 uses
  %.not.i = icmp eq ptr %i.fd, null
  br i1 %.not.i, label %cff_index_done.exit, label %bb.bf

bb.bf:                                            ; preds = %.thread
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 56
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !188
  %i.fg = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !190
  %.not10.i = icmp eq ptr %i.fh, null
  br i1 %.not10.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @FT_Stream_ReleaseFrame(ptr noundef nonnull %i.fd, ptr noundef nonnull %i.fg) #18
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !191
  call void @ft_mem_free(ptr noundef %i.ff, ptr noundef %i.fj) #18
  br label %cff_index_done.exit

cff_index_done.exit:                              ; preds = %.thread, %bb.bh
  %i.fk = load i32, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.fk
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
  %i.k = call ptr @ft_mem_qalloc(ptr noundef %i.g, i64 noundef %i.j, ptr noundef nonnull %i.c) #18 ; 4 uses
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
  %i.h = load i8, ptr %i.c, align 1, !tbaa !165
  %i.i = icmp eq i8 %i.h, 43
  br i1 %i.i, label %.preheader24.preheader, label %._crit_edge45

.preheader24.preheader:                           ; preds = %bb.b
  %i.j = load i8, ptr %0, align 1, !tbaa !165
  %i.k = add i8 %i.j, -91
  %or.cond = icmp ult i8 %i.k, -26
  %i.l = load i8, ptr %i.d, align 1, !tbaa !165
  %.fr49 = freeze i8 %i.l
  %i.m = add i8 %.fr49, -91
  %or.cond.1 = icmp ult i8 %i.m, -26
  %i.n = load <4 x i8>, ptr %i.e, align 1, !tbaa !165
  %.fr48 = freeze <4 x i8> %i.n
  %i.o = add <4 x i8> %.fr48, splat (i8 -91)
  %i.p = icmp ult <4 x i8> %i.o, splat (i8 -26)
  %i.q = bitcast <4 x i1> %i.p to i4
  %i.r = icmp ne i4 %i.q, 0
  %op.rdx = or i1 %i.r, %or.cond.1
  %op.rdx47 = select i1 %op.rdx, i1 true, i1 %or.cond
  br i1 %op.rdx47, label %._crit_edge45, label %.preheader

.preheader:                                       ; preds = %.preheader24.preheader
  %.not29 = icmp eq i32 %.0182843, 7
  br i1 %.not29, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.s = add nsw i32 %.0182843, -7                ; 2 uses
  %i.t = zext nneg i32 %i.s to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %0, ptr align 1 %scevgep, i64 %i.t, i1 false), !tbaa !165
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  %.119 = phi i32 [ 0, %.preheader ], [ %i.s, %.lr.ph.preheader ] ; 2 uses
  %i.u = icmp sgt i32 %.119, 6
  br i1 %i.u, label %bb.b, label %._crit_edge45, !llvm.loop !588

._crit_edge45:                                    ; preds = %bb.b, %.preheader24.preheader, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @remove_style(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #13 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19 ; 2 uses
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19 ; 2 uses
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %.preheader, label %.critedge35

.preheader:                                       ; preds = %bb.a
  %.not37 = icmp slt i32 %i.d, 1
  br i1 %.not37, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %sext = shl i64 %i.a, 32
  %i.f = ashr exact i64 %sext, 32
  %i.g = and i64 %i.c, 2147483647                 ; 2 uses
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !589

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.h = sub nsw i64 %i.f, %indvars.iv
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !165
  %i.k = sub nsw i64 %i.g, %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !165
  %.not34 = icmp eq i8 %i.j, %i.m
  br i1 %.not34, label %bb.b, label %.critedge35

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %i.n = xor i32 %i.d, -1
  %i.o = add i32 %i.n, %i.b                       ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph42.preheader, label %.critedge35

.lr.ph42.preheader:                               ; preds = %._crit_edge
  %i.q = zext nneg i32 %i.o to i64
  br label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph42.preheader, %.critedge2
  %indvars.iv46 = phi i64 [ %i.q, %.lr.ph42.preheader ], [ %indvars.iv.next47, %.critedge2 ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv46
  %i.s = load i8, ptr %i.r, align 1, !tbaa !165
  switch i8 %i.s, label %.critedge [
    i8 45, label %.critedge2
    i8 32, label %.critedge2
    i8 95, label %.critedge2
    i8 43, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph42, %.lr.ph42, %.lr.ph42, %.lr.ph42
  %indvars.iv.next47 = add nsw i64 %indvars.iv46, -1
  %i.t = icmp sgt i64 %indvars.iv46, 1
  br i1 %i.t, label %.lr.ph42, label %.critedge35, !llvm.loop !590

.critedge:                                        ; preds = %.lr.ph42
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv46
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 0, ptr %i.v, align 1, !tbaa !165
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !188
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i8 0, i64 56, i1 false)
  store ptr %1, ptr %0, align 8, !tbaa !187
  %i.e = tail call i64 @FT_Stream_Pos(ptr noundef %1) #18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !529
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @FT_Stream_ReadULong(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #18
  %i.h = load i32, ptr %i.a, align 4, !tbaa !3
  %.not48 = icmp eq i32 %i.h, 0
  br i1 %.not48, label %bb.e, label %.thread

bb.c:                                             ; preds = %bb.a
  %i.i = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #18
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
  %i.m = call zeroext i8 @FT_Stream_ReadByte(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #18 ; 3 uses
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
  %i.ad = call i32 @FT_Stream_Skip(ptr noundef nonnull %1, i64 noundef %i.ac) #18 ; 2 uses
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

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = call i32 @FT_Stream_ExtractFrame(ptr noundef nonnull %1, i64 noundef %i.ah, ptr noundef nonnull %i.aj) #18
  br label %thread-pre-split

bb.m:                                             ; preds = %bb.k
  %i.al = call i32 @FT_Stream_Skip(ptr noundef nonnull %1, i64 noundef %i.ah) #18
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.m, %bb.l
  %.sink61 = phi i32 [ %i.al, %bb.m ], [ %i.ak, %bb.l ] ; 2 uses
  store i32 %.sink61, ptr %i.a, align 4, !tbaa !3
  %.not56 = icmp eq i32 %.sink61, 0
  br i1 %.not56, label %thread-pre-split.thread, label %.thread

.thread.sink.split:                               ; preds = %bb.j, %bb.g
  store i32 8, ptr %i.a, align 4, !tbaa !3
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.b, %bb.c, %bb.i, %bb.h, %bb.f, %thread-pre-split
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !191
  call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.an) #18
  store ptr null, ptr %i.am, align 8, !tbaa !191
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.e, %.thread, %thread-pre-split
  %i.ao = phi i32 [ %.pre, %.thread ], [ 0, %thread-pre-split ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.ao
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cff_index_get_pointers(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.c = load ptr, ptr %0, align 8, !tbaa !187    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !188  ; 6 uses
  store ptr null, ptr %1, align 8, !tbaa !592
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !191
end_hunk_0
begin_hunk_1_@cff_index_get_pointers:bb.a
  ]

.preheader72.i:                                   ; preds = %bb.f
  br i1 %.not88.i, label %.loopexit.i, label %.lr.ph.i

.preheader70.i:                                   ; preds = %bb.f
  br i1 %.not88.i, label %.loopexit.i, label %.lr.ph78.i

.preheader68.i:                                   ; preds = %bb.f
  br i1 %.not88.i, label %.loopexit.i, label %.lr.ph81.i

.preheader.i:                                     ; preds = %bb.f
  br i1 %.not88.i, label %.loopexit.i, label %.lr.ph84.i

.lr.ph81.i:                                       ; preds = %.preheader68.i, %.lr.ph81.i
  %.05580.i = phi ptr [ %i.ag, %.lr.ph81.i ], [ %i.z, %.preheader68.i ] ; 2 uses
  %.05779.i = phi ptr [ %i.af, %.lr.ph81.i ], [ %i.ab, %.preheader68.i ] ; 2 uses
  %i.ad = load i8, ptr %.05779.i, align 1, !tbaa !165
  %i.ae = zext i8 %i.ad to i64
  store i64 %i.ae, ptr %.05580.i, align 8, !tbaa !134
  %i.af = getelementptr inbounds nuw i8, ptr %.05779.i, i64 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05580.i, i64 8
  %i.ah = icmp ult ptr %i.af, %i.ac
  br i1 %i.ah, label %.lr.ph81.i, label %.loopexit.i, !llvm.loop !593

.lr.ph78.i:                                       ; preds = %.preheader70.i, %.lr.ph78.i
  %.177.i = phi ptr [ %i.aq, %.lr.ph78.i ], [ %i.z, %.preheader70.i ] ; 2 uses
  %.15876.i = phi ptr [ %i.ap, %.lr.ph78.i ], [ %i.ab, %.preheader70.i ] ; 3 uses
  %i.ai = load i8, ptr %.15876.i, align 1, !tbaa !165
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 8
  %i.al = getelementptr inbounds nuw i8, ptr %.15876.i, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !165
  %i.an = zext i8 %i.am to i64
  %i.ao = or disjoint i64 %i.ak, %i.an
  store i64 %i.ao, ptr %.177.i, align 8, !tbaa !134
  %i.ap = getelementptr inbounds nuw i8, ptr %.15876.i, i64 2 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.177.i, i64 8
  %i.ar = icmp ult ptr %i.ap, %i.ac
  br i1 %i.ar, label %.lr.ph78.i, label %.loopexit.i, !llvm.loop !594

.lr.ph.i:                                         ; preds = %.preheader72.i, %.lr.ph.i
  %.275.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %i.z, %.preheader72.i ] ; 2 uses
  %.25974.i = phi ptr [ %i.be, %.lr.ph.i ], [ %i.ab, %.preheader72.i ] ; 4 uses
  %i.as = load i8, ptr %.25974.i, align 1, !tbaa !165
  %i.at = zext i8 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 16
  %i.av = getelementptr inbounds nuw i8, ptr %.25974.i, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !165
  %i.ax = zext i8 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 8
  %i.az = or disjoint i64 %i.ay, %i.au
  %i.ba = getelementptr inbounds nuw i8, ptr %.25974.i, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !165
  %i.bc = zext i8 %i.bb to i64
  %i.bd = or disjoint i64 %i.az, %i.bc
  store i64 %i.bd, ptr %.275.i, align 8, !tbaa !134
  %i.be = getelementptr inbounds nuw i8, ptr %.25974.i, i64 3 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.275.i, i64 8
  %i.bg = icmp ult ptr %i.be, %i.ac
  br i1 %i.bg, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !595

.lr.ph84.i:                                       ; preds = %.preheader.i, %.lr.ph84.i
  %.383.i = phi ptr [ %i.bl, %.lr.ph84.i ], [ %i.z, %.preheader.i ] ; 2 uses
  %.36082.i = phi ptr [ %i.bk, %.lr.ph84.i ], [ %i.ab, %.preheader.i ] ; 2 uses
  %i.bh = load i32, ptr %.36082.i, align 1
  %i.bi = call i32 @llvm.bswap.i32(i32 %i.bh)
  %i.bj = zext i32 %i.bi to i64
  store i64 %i.bj, ptr %.383.i, align 8, !tbaa !134
  %i.bk = getelementptr inbounds nuw i8, ptr %.36082.i, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.383.i, i64 8
  %i.bm = icmp ult ptr %i.bk, %i.ac
  br i1 %i.bm, label %.lr.ph84.i, label %.loopexit.i, !llvm.loop !596

.loopexit.i:                                      ; preds = %.lr.ph.i, %.lr.ph78.i, %.lr.ph81.i, %.lr.ph84.i, %.preheader.i, %.preheader68.i, %.preheader70.i, %.preheader72.i
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %i.c) #18
  %.pr.pre.i = load i32, ptr %i.a, align 4, !tbaa !3
  %i.bn = icmp eq i32 %.pr.pre.i, 0
  br i1 %i.bn, label %cff_index_load_offsets.exit.thread, label %cff_index_load_offsets.exit

cff_index_load_offsets.exit.thread:               ; preds = %.loopexit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.b, align 4, !tbaa !3
  br label %bb.g

cff_index_load_offsets.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %.loopexit.i
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !191
  call void @ft_mem_free(ptr noundef %i.e, ptr noundef %i.bo) #18
  store ptr null, ptr %i.f, align 8, !tbaa !191
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !3 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  store i32 %.pre.i, ptr %i.b, align 4, !tbaa !3
  %.not86 = icmp eq i32 %.pre.i, 0
  br i1 %.not86, label %bb.g, label %.thread.thread

bb.g:                                             ; preds = %cff_index_load_offsets.exit.thread, %cff_index_load_offsets.exit, %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !591
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !527 ; 3 uses
  %i.bt = zext i32 %i.bs to i64
  %i.bu = add i64 %i.bq, %i.bt                    ; 2 uses
  %.not87 = icmp eq i32 %i.bs, 0
  br i1 %.not87, label %.thread.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = add i32 %i.bs, 1
  %i.bw = zext i32 %i.bv to i64
  %i.bx = call ptr @ft_mem_qrealloc(ptr noundef %i.e, i64 noundef 8, i64 noundef 0, i64 noundef %i.bw, ptr noundef null, ptr noundef nonnull %i.b) #18 ; 11 uses
  %i.by = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %.not88 = icmp eq i32 %i.by, 0
  br i1 %.not88, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %.not89 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not89, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = call ptr @ft_mem_alloc(ptr noundef %i.e, i64 noundef %i.bu, ptr noundef nonnull %i.b) #18 ; 6 uses
  %i.ca = load i32, ptr %i.b, align 4, !tbaa !3
  %.not90 = icmp eq i32 %i.ca, 0
  br i1 %.not90, label %.thread124, label %bb.x

bb.k:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !190 ; 4 uses
  store ptr %i.cc, ptr %i.bx, align 8, !tbaa !160
  %i.cd = load i32, ptr %i.br, align 4, !tbaa !527 ; 4 uses
  %.not91104 = icmp eq i32 %i.cd, 0
  br i1 %.not91104, label %._crit_edge, label %.lr.ph.split.us

.thread124:                                       ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !190
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !160
  %i.cg = load i32, ptr %i.br, align 4, !tbaa !527 ; 2 uses
  %.not91104127 = icmp eq i32 %i.cg, 0
  br i1 %.not91104127, label %._crit_edge.thread, label %.lr.ph.split

._crit_edge.thread:                               ; preds = %.thread124
  store ptr %i.bx, ptr %1, align 8, !tbaa !592
  br label %bb.u

.lr.ph.split.us:                                  ; preds = %bb.k
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !191 ; 3 uses
  %i.ci = zext i32 %i.cd to i64                   ; 2 uses
  %xtraiter = and i64 %i.ci, 1
  %i.cj = icmp eq i32 %i.cd, 1
  br i1 %i.cj, label %.epil.preheader, label %.lr.ph.split.us.new

.lr.ph.split.us.new:                              ; preds = %.lr.ph.split.us
  %unroll_iter = and i64 %i.ci, 4294967294
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.split.us.new
  %.077106.us = phi i64 [ 0, %.lr.ph.split.us.new ], [ %.0.us.1, %bb.p ] ; 2 uses
  %.078105.us = phi i64 [ 1, %.lr.ph.split.us.new ], [ %i.cz, %bb.p ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.new ], [ %niter.next.1, %bb.p ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.078105.us
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !134
  %i.cm = add i64 %i.cl, -1                       ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %.077106.us
  br i1 %i.cn, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.co = load i64, ptr %i.bp, align 8, !tbaa !591
  %spec.select.us = call i64 @llvm.umin.i64(i64 %i.cm, i64 %i.co)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.us = phi i64 [ %spec.select.us, %bb.m ], [ %.077106.us, %bb.l ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.0.us
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.078105.us
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !160
  %i.cr = add nuw nsw i64 %.078105.us, 1          ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !134
  %i.cu = add i64 %i.ct, -1                       ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %.0.us
  br i1 %i.cv, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = load i64, ptr %i.bp, align 8, !tbaa !591
  %spec.select.us.1 = call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.cw)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.us.1 = phi i64 [ %spec.select.us.1, %bb.o ], [ %.0.us, %bb.n ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.0.us.1
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cr
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !160
  %i.cz = add nuw nsw i64 %.078105.us, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.l, !llvm.loop !597

.lr.ph.split:                                     ; preds = %.thread124, %bb.s
  %i.da = phi i32 [ %i.dx, %bb.s ], [ %i.cg, %.thread124 ] ; 2 uses
  %.076107 = phi i64 [ %.1, %bb.s ], [ 0, %.thread124 ] ; 5 uses
  %.077106 = phi i64 [ %.0135, %bb.s ], [ 0, %.thread124 ] ; 5 uses
  %.078105 = phi i64 [ %i.dy, %bb.s ], [ 1, %.thread124 ] ; 4 uses
  %i.db = load ptr, ptr %i.f, align 8, !tbaa !191
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.078105
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !134
  %i.de = add i64 %i.dd, -1                       ; 2 uses
  %i.df = icmp ult i64 %i.de, %.077106
  br i1 %i.df, label %.thread132, label %bb.q

.thread132:                                       ; preds = %.lr.ph.split
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.077106
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.076107
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.078105
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !160
  br label %bb.s

bb.q:                                             ; preds = %.lr.ph.split
  %i.dj = load i64, ptr %i.bp, align 8, !tbaa !591
  %spec.select = call i64 @llvm.umin.i64(i64 %i.de, i64 %i.dj) ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bz, i64 %spec.select
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.076107 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.078105 ; 5 uses
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !160
  %.not93 = icmp eq i64 %spec.select, %.077106
  br i1 %.not93, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dn = getelementptr i8, ptr %i.dm, i64 -8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !160 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.077106
  %i.dq = ptrtoint ptr %i.dl to i64
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = sub i64 %i.dq, %i.dr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr align 1 %i.dp, i64 %i.ds, i1 false)
  %i.dt = load ptr, ptr %i.dm, align 8, !tbaa !160
  store i8 0, ptr %i.dt, align 1, !tbaa !165
  %i.du = load ptr, ptr %i.dm, align 8, !tbaa !160
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store ptr %i.dv, ptr %i.dm, align 8, !tbaa !160
  %i.dw = add i64 %.076107, 1
  %.pre = load i32, ptr %i.br, align 4, !tbaa !527
  br label %bb.s

bb.s:                                             ; preds = %.thread132, %bb.q, %bb.r
  %.0135 = phi i64 [ %spec.select, %bb.r ], [ %spec.select, %bb.q ], [ %.077106, %.thread132 ]
  %i.dx = phi i32 [ %.pre, %bb.r ], [ %i.da, %bb.q ], [ %i.da, %.thread132 ] ; 2 uses
  %.1 = phi i64 [ %i.dw, %bb.r ], [ %.076107, %bb.q ], [ %.076107, %.thread132 ]
  %i.dy = add nuw nsw i64 %.078105, 1             ; 2 uses
  %i.dz = zext i32 %i.dx to i64
  %.not91 = icmp samesign ugt i64 %i.dy, %i.dz
  br i1 %.not91, label %._crit_edge, label %.lr.ph.split, !llvm.loop !597

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us
  %.077106.us.epil.init = phi i64 [ 0, %.lr.ph.split.us ], [ %.0.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.078105.us.epil.init = phi i64 [ 1, %.lr.ph.split.us ], [ %i.cz, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod151 = trunc i32 %i.cd to i1
  call void @llvm.assume(i1 %lcmp.mod151)
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.078105.us.epil.init
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !134
  %i.ec = add i64 %i.eb, -1                       ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %.077106.us.epil.init
  br i1 %i.ed, label %._crit_edge.loopexit.epilog-lcssa, label %bb.t

bb.t:                                             ; preds = %.epil.preheader
  %i.ee = load i64, ptr %i.bp, align 8, !tbaa !591
  %spec.select.us.epil = call i64 @llvm.umin.i64(i64 %i.ec, i64 %i.ee)
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.t, %.epil.preheader
  %.0.us.epil = phi i64 [ %spec.select.us.epil, %bb.t ], [ %.077106.us.epil.init, %.epil.preheader ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.0.us.epil
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.078105.us.epil.init
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !160
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %bb.k
  %.079129 = phi ptr [ null, %._crit_edge.loopexit.epilog-lcssa ], [ null, %bb.k ], [ null, %._crit_edge.loopexit.unr-lcssa ], [ %i.bz, %bb.s ] ; 2 uses
  store ptr %i.bx, ptr %1, align 8, !tbaa !592
  br i1 %.not89, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.079129137 = phi ptr [ %i.bz, %._crit_edge.thread ], [ %.079129, %._crit_edge ] ; 2 uses
  store ptr %.079129137, ptr %2, align 8, !tbaa !160
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge
  %.079129138 = phi ptr [ %.079129137, %bb.u ], [ %.079129, %._crit_edge ] ; 2 uses
  %.not92 = icmp eq ptr %3, null
  br i1 %.not92, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i64 %i.bu, ptr %3, align 8, !tbaa !134
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.j
  %.180 = phi ptr [ %.079129138, %bb.v ], [ %i.bz, %bb.j ], [ %.079129138, %bb.w ] ; 2 uses
  %i.eh = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %i.ei = icmp ne i32 %i.eh, 0
  %i.ej = icmp ne ptr %.180, null
  %or.cond = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %or.cond, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  call void @ft_mem_free(ptr noundef %i.e, ptr noundef nonnull %.180) #18
  %.pre112 = load i32, ptr %i.b, align 4, !tbaa !3
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.y, %bb.x
  %i.ek = phi i32 [ %i.by, %bb.h ], [ %.pre112, %bb.y ], [ %i.eh, %bb.x ] ; 2 uses
  %i.el = icmp ne i32 %i.ek, 0
  %i.em = icmp ne ptr %i.bx, null
  %or.cond3 = select i1 %i.el, i1 %i.em, i1 false
  br i1 %or.cond3, label %bb.z, label %.thread.thread

bb.z:                                             ; preds = %.thread
  call void @ft_mem_free(ptr noundef %i.e, ptr noundef nonnull %i.bx) #18
  %.pre113 = load i32, ptr %i.b, align 4, !tbaa !3
  br label %.thread.thread

.thread.thread:                                   ; preds = %cff_index_load_offsets.exit, %bb.g, %bb.z, %.thread
  %i.en = phi i32 [ %.pre.i, %cff_index_load_offsets.exit ], [ 0, %bb.g ], [ %.pre113, %bb.z ], [ %i.ek, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %i.en
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cff_subfont_load(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 4096, 16385) %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %8 = alloca %struct.CFF_ParserRec_, align 8     ; 12 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr null, ptr %i.b, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 920
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !112  ; 2 uses
  %i.f = icmp eq i32 %5, 12288
  %i.g = icmp eq i32 %5, 16384
  %i.h = or i1 %i.f, %i.g                         ; 3 uses
  %i.i = zext i1 %i.h to i8
  %i.j = select i1 %i.h, i32 513, i32 96          ; 2 uses
  %i.k = load ptr, ptr %6, align 8, !tbaa !220    ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i8 0, i64 64, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 52
  store i32 %5, ptr %i.n, align 4, !tbaa !457
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr %0, ptr %i.o, align 8, !tbaa !459
  store ptr %i.k, ptr %8, align 8, !tbaa !460
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 66
  store i16 0, ptr %i.p, align 2, !tbaa !517
  %i.q = zext nneg i32 %i.j to i64
  %i.r = call ptr @ft_mem_qrealloc(ptr noundef %i.l, i64 noundef 8, i64 noundef 0, i64 noundef %i.q, ptr noundef null, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !461
  %i.t = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.b, label %cff_parser_init.exit

cff_parser_init.exit:                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 %i.j, ptr %i.u, align 8, !tbaa !462
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.r, ptr %i.v, align 8, !tbaa !463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.w, i8 0, i64 304, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -6553600, ptr %i.x, align 8, !tbaa !415
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 3276800, ptr %i.y, align 8, !tbaa !417
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 2, ptr %i.z, align 4, !tbaa !598
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 65536, ptr %i.aa, align 8, !tbaa !599
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 65536, ptr %i.ab, align 8, !tbaa !600
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 8720, ptr %i.ac, align 8, !tbaa !601
  store <4 x i32> splat (i32 65535), ptr %0, align 8, !tbaa !3
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 65535, ptr %i.ad, align 8, !tbaa !157
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 65535, ptr %i.ae, align 4, !tbaa !171
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 65535, ptr %i.af, align 8, !tbaa !422
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  store i32 65535, ptr %i.ag, align 4, !tbaa !126
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 65535, ptr %i.ah, align 8, !tbaa !437
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 65535, ptr %i.ai, align 8, !tbaa !167
  %i.aj = select i1 %i.h, i32 513, i32 48
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !602
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !527
  %.not88 = icmp eq i32 %i.am, 0
  br i1 %.not88, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !538
  %i.ap = call i32 @FT_Stream_Seek(ptr noundef %3, i64 noundef %i.ao) #18 ; 2 uses
  %.not89 = icmp eq i32 %i.ap, 0
  br i1 %.not89, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !591
  %i.as = call i32 @FT_Stream_ExtractFrame(ptr noundef %3, i64 noundef %i.ar, ptr noundef nonnull %i.b) #18 ; 2 uses
  %.not90 = icmp eq i32 %i.as, 0
  br i1 %.not90, label %.thread, label %bb.v

bb.e:                                             ; preds = %bb.b
  %i.at = call fastcc i32 @cff_index_access_element(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %.not91 = icmp eq i32 %i.at, 0
  br i1 %.not91, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e, %bb.d
  %.in = phi ptr [ %i.aq, %bb.d ], [ %i.c, %bb.e ]
  %i.au = load i64, ptr %.in, align 8
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !160 ; 3 uses
  %.not92 = icmp eq ptr %i.av, null
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %i.ax = select i1 %.not92, ptr null, ptr %i.aw
  %i.ay = call fastcc i32 @cff_parser_run(ptr noundef %8, ptr noundef %i.av, ptr noundef %i.ax)
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %.1 = phi i32 [ %i.at, %bb.e ], [ %i.ay, %.thread ] ; 2 uses
  %i.az = load i32, ptr %i.al, align 4, !tbaa !527
  %.not93 = icmp eq i32 %i.az, 0
  br i1 %.not93, label %cff_index_forget_element.exit.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !190
  %i.bc = icmp eq ptr %i.bb, null
end_hunk_1
begin_hunk_2_@cff_charset_load:bb.a

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %4, %3                           ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !614
  %i.h = tail call i32 @FT_Stream_Seek(ptr noundef nonnull %2, i64 noundef %i.f) #18 ; 2 uses
  store i32 %i.h, ptr %i.b, align 4, !tbaa !3
  %.not93 = icmp eq i32 %i.h, 0
  br i1 %.not93, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.i = call zeroext i8 @FT_Stream_ReadByte(ptr noundef nonnull %2, ptr noundef nonnull %i.b) #18
  %i.j = zext i8 %i.i to i32
  store i32 %i.j, ptr %0, align 8, !tbaa !197
  %i.k = load i32, ptr %i.b, align 4, !tbaa !3
  %.not94 = icmp eq i32 %i.k, 0
  br i1 %.not94, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.l = zext i32 %1 to i64                       ; 4 uses
  %i.m = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 2, i64 noundef 0, i64 noundef %i.l, ptr noundef null, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !64
  %i.o = load i32, ptr %i.b, align 4, !tbaa !3
  %.not95 = icmp eq i32 %i.o, 0
  br i1 %.not95, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %bb.d
  store i16 0, ptr %i.m, align 2, !tbaa !60
  %i.p = load i32, ptr %0, align 8, !tbaa !197
  switch i32 %i.p, label %bb.l [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.q = shl i32 %1, 1
  %i.r = add i32 %i.q, -2
  %i.s = zext i32 %i.r to i64
  %i.t = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %2, i64 noundef %i.s) #18 ; 2 uses
  store i32 %i.t, ptr %i.b, align 4, !tbaa !3
  %.not100 = icmp eq i32 %i.t, 0
  br i1 %.not100, label %.preheader, label %thread-pre-split

.preheader:                                       ; preds = %bb.f
  %i.u = icmp ugt i32 %1, 1
  br i1 %i.u, label %.lr.ph121, label %._crit_edge

.lr.ph121:                                        ; preds = %.preheader, %.lr.ph121
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %.lr.ph121 ], [ 1, %.preheader ] ; 2 uses
  %i.v = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %2) #18
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv122
  store i16 %i.v, ptr %i.x, align 2, !tbaa !60
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next123, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph121, !llvm.loop !615

._crit_edge:                                      ; preds = %.lr.ph121, %.preheader
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %2) #18
  br label %.loopexit113

bb.g:                                             ; preds = %bb.e, %bb.e
  %.not99117 = icmp ugt i32 %1, 1
  br i1 %.not99117, label %.lr.ph119, label %.loopexit113

.loopexit.loopexit:                               ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.bb, %vec.epilog.middle.block ], [ %i.av, %middle.block ], [ %indvars.iv.next, %vec.epilog.scalar.ph ]
  %i.y = trunc nuw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.k
  %.2.lcssa = phi i32 [ %.182118, %bb.k ], [ %i.y, %.loopexit.loopexit ] ; 2 uses
  %.not99 = icmp ult i32 %.2.lcssa, %1
  br i1 %.not99, label %.lr.ph119, label %.loopexit113, !llvm.loop !616

.lr.ph119:                                        ; preds = %bb.g, %.loopexit
  %.182118 = phi i32 [ %.2.lcssa, %.loopexit ], [ 1, %bb.g ] ; 3 uses
  %i.z = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %2, ptr noundef nonnull %i.b) #18 ; 7 uses
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !3
  %.not96 = icmp eq i32 %i.aa, 0
  br i1 %.not96, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %.lr.ph119
  %i.ab = load i32, ptr %0, align 8, !tbaa !197
  %i.ac = icmp eq i32 %i.ab, 2
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %2, ptr noundef nonnull %i.b) #18
  %i.ae = zext i16 %i.ad to i32
  %i.af = load i32, ptr %i.b, align 4, !tbaa !3
  %.not98 = icmp eq i32 %i.af, 0
  br i1 %.not98, label %bb.k, label %thread-pre-split

bb.j:                                             ; preds = %bb.h
  %i.ag = call zeroext i8 @FT_Stream_ReadByte(ptr noundef nonnull %2, ptr noundef nonnull %i.b) #18
  %i.ah = zext i8 %i.ag to i32
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !3
  %.not97 = icmp eq i32 %i.ai, 0
  br i1 %.not97, label %bb.k, label %thread-pre-split

bb.k:                                             ; preds = %bb.j, %bb.i
  %.079 = phi i32 [ %i.ae, %bb.i ], [ %i.ah, %bb.j ] ; 2 uses
  %i.aj = xor i32 %.079, 65535
  %i.ak = zext i16 %i.z to i32
  %i.al = icmp samesign ult i32 %i.aj, %i.ak
  %i.am = xor i16 %i.z, -1
  %i.an = zext i16 %i.am to i32
  %.180 = select i1 %i.al, i32 %i.an, i32 %.079
  %.180.fr = freeze i32 %.180                     ; 2 uses
  %i.ao = icmp ult i32 %.182118, %1
  br i1 %i.ao, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.k
  %i.ap = load ptr, ptr %i.n, align 8, !tbaa !64  ; 3 uses
  %i.aq = zext i32 %.182118 to i64                ; 6 uses
  %i.ar = zext i32 %.180.fr to i64
  %i.as = xor i64 %i.aq, -1
  %i.at = add nsw i64 %i.as, %i.l
  %umin = call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.at) ; 3 uses
  %i.au = add nuw nsw i64 %umin, 1                ; 5 uses
  %min.iters.check = icmp samesign ult i64 %umin, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check129 = icmp samesign ult i64 %umin, 15
  br i1 %min.iters.check129, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.au, 12
  %n.vec = and i64 %i.au, 8589934576              ; 6 uses
  %i.av = add nuw nsw i64 %n.vec, %i.aq           ; 2 uses
  %i.aw = trunc i64 %n.vec to i32
  %i.ax = trunc i64 %n.vec to i16
  %i.ay = add i16 %i.z, %i.ax                     ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.z, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>
  %invariant.gep = getelementptr [2 x i8], ptr %i.ap, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8)
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <8 x i16> %vec.ind, ptr %gep, align 2, !tbaa !60
  store <8 x i16> %step.add, ptr %i.az, align 2, !tbaa !60
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !617

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !618

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val131 = phi i16 [ %i.ay, %vec.epilog.iter.check ], [ %i.z, %vector.main.loop.iter.check ]
  %n.vec133 = and i64 %i.au, 8589934588           ; 5 uses
  %i.bb = add nuw nsw i64 %n.vec133, %i.aq        ; 2 uses
  %i.bc = trunc i64 %n.vec133 to i32
  %i.bd = trunc i64 %n.vec133 to i16
  %i.be = add i16 %i.z, %i.bd
  %broadcast.splatinsert134 = insertelement <4 x i16> poison, i16 %bc.resume.val131, i64 0
  %broadcast.splat135 = shufflevector <4 x i16> %broadcast.splatinsert134, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction136 = add <4 x i16> %broadcast.splat135, <i16 0, i16 1, i16 2, i16 3>
  %invariant.gep184 = getelementptr [2 x i8], ptr %i.ap, i64 %i.aq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index137 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next139, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind138 = phi <4 x i16> [ %induction136, %vec.epilog.ph ], [ %vec.ind.next140, %vec.epilog.vector.body ] ; 2 uses
  %gep185 = getelementptr [2 x i8], ptr %invariant.gep184, i64 %index137
  store <4 x i16> %vec.ind138, ptr %gep185, align 2, !tbaa !60
  %index.next139 = add nuw i64 %index137, 4       ; 2 uses
  %vec.ind.next140 = add <4 x i16> %vec.ind138, splat (i16 4)
  %i.bf = icmp eq i64 %index.next139, %n.vec133
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !619

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n141 = icmp eq i64 %i.au, %n.vec133
  br i1 %cmp.n141, label %.loopexit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.aq, %iter.check ], [ %i.av, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  %.078116.ph = phi i32 [ 0, %iter.check ], [ %i.aw, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ]
  %.083114.ph = phi i16 [ %i.z, %iter.check ], [ %i.ay, %vec.epilog.iter.check ], [ %i.be, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.078116 = phi i32 [ %i.bh, %vec.epilog.scalar.ph ], [ %.078116.ph, %vec.epilog.scalar.ph.preheader ]
  %.083114 = phi i16 [ %i.bi, %vec.epilog.scalar.ph ], [ %.083114.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv
  store i16 %.083114, ptr %i.bg, align 2, !tbaa !60
  %i.bh = add nuw nsw i32 %.078116, 1             ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bi = add i16 %.083114, 1
  %i.bj = icmp samesign ult i64 %indvars.iv.next, %i.l
  %6 = icmp samesign ule i32 %i.bh, %.180.fr
  %i.bk = select i1 %i.bj, i1 %6, i1 false
  br i1 %i.bk, label %vec.epilog.scalar.ph, label %.loopexit.loopexit, !llvm.loop !620

bb.l:                                             ; preds = %bb.e
  store i32 3, ptr %i.b, align 4, !tbaa !3
  br label %thread-pre-split

.loopexit113:                                     ; preds = %.loopexit, %bb.g, %._crit_edge
  %.not101 = icmp eq i8 %5, 0
  br i1 %.not101, label %thread-pre-split, label %bb.x

bb.m:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %4, ptr %i.bl, align 8, !tbaa !614
  %i.bm = trunc nuw nsw i64 %4 to i32
  switch i32 %i.bm, label %default.unreachable128 [
    i32 0, label %bb.n
    i32 1, label %bb.q
    i32 2, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.bn = icmp ugt i32 %1, 229
  br i1 %i.bn, label %.thread111.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = zext nneg i32 %1 to i64                 ; 2 uses
  %i.bp = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 2, i64 noundef 0, i64 noundef %i.bo, ptr noundef null, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !64
  %i.br = load i32, ptr %i.b, align 4, !tbaa !3
  %.not92 = icmp eq i32 %i.br, 0
  br i1 %.not92, label %bb.p, label %.thread111

bb.p:                                             ; preds = %bb.o
  %i.bs = shl nuw nsw i64 %i.bo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.bp, ptr noundef nonnull align 16 dereferenceable(1) @cff_isoadobe_charset, i64 %i.bs, i1 false)
  br label %bb.w

bb.q:                                             ; preds = %bb.m
  %i.bt = icmp ugt i32 %1, 166
  br i1 %i.bt, label %.thread111.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = zext nneg i32 %1 to i64                 ; 2 uses
  %i.bv = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 2, i64 noundef 0, i64 noundef %i.bu, ptr noundef null, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !64
  %i.bx = load i32, ptr %i.b, align 4, !tbaa !3
  %.not91 = icmp eq i32 %i.bx, 0
  br i1 %.not91, label %bb.s, label %.thread111

bb.s:                                             ; preds = %bb.r
  %i.by = shl nuw nsw i64 %i.bu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.bv, ptr noundef nonnull align 16 dereferenceable(1) @cff_expert_charset, i64 %i.by, i1 false)
  br label %bb.w

bb.t:                                             ; preds = %bb.m
  %i.bz = icmp ugt i32 %1, 87
  br i1 %i.bz, label %.thread111.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = zext nneg i32 %1 to i64                 ; 2 uses
  %i.cb = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 2, i64 noundef 0, i64 noundef %i.ca, ptr noundef null, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !64
  %i.cd = load i32, ptr %i.b, align 4, !tbaa !3
  %.not = icmp eq i32 %i.cd, 0
  br i1 %.not, label %bb.v, label %.thread111

bb.v:                                             ; preds = %bb.u
  %i.ce = shl nuw nsw i64 %i.ca, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.cb, ptr noundef nonnull align 16 dereferenceable(1) @cff_expertsubset_charset, i64 %i.ce, i1 false)
  br label %bb.w

default.unreachable128:                           ; preds = %bb.m
  unreachable

bb.w:                                             ; preds = %bb.p, %bb.s, %bb.v
  %.not101.old = icmp eq i8 %5, 0
  br i1 %.not101.old, label %thread-pre-split, label %bb.x

bb.x:                                             ; preds = %.loopexit113, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !196
  %.not.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i, label %iter.check159, label %cff_charset_compute_cids.exit

iter.check159:                                    ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !64 ; 3 uses
  %wide.trip.count.i = zext i32 %1 to i64         ; 6 uses
  %min.iters.check145 = icmp ult i32 %1, 4
  br i1 %min.iters.check145, label %vec.epilog.scalar.ph160.preheader, label %vector.main.loop.iter.check146

vector.main.loop.iter.check146:                   ; preds = %iter.check159
  %min.iters.check147 = icmp ult i32 %1, 16
  br i1 %min.iters.check147, label %vec.epilog.ph163, label %vector.ph148

vector.ph148:                                     ; preds = %vector.main.loop.iter.check146
  %n.mod.vf149 = and i64 %wide.trip.count.i, 12
  %n.vec150 = and i64 %wide.trip.count.i, 4294967280 ; 4 uses
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph148
  %index152 = phi i64 [ 0, %vector.ph148 ], [ %index.next155, %vector.body151 ] ; 2 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph148 ], [ %i.cl, %vector.body151 ]
  %vec.phi153 = phi <8 x i16> [ zeroinitializer, %vector.ph148 ], [ %i.cm, %vector.body151 ]
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %index152 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load = load <8 x i16>, ptr %i.cj, align 2, !tbaa !60
  %wide.load154 = load <8 x i16>, ptr %i.ck, align 2, !tbaa !60
  %i.cl = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load, <8 x i16> %vec.phi) ; 2 uses
  %i.cm = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %wide.load154, <8 x i16> %vec.phi153) ; 2 uses
  %index.next155 = add nuw i64 %index152, 16      ; 2 uses
  %i.cn = icmp eq i64 %index.next155, %n.vec150
  br i1 %i.cn, label %middle.block156, label %vector.body151, !llvm.loop !621

middle.block156:                                  ; preds = %vector.body151
  %rdx.minmax = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.cl, <8 x i16> %i.cm)
  %i.co = call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax) ; 3 uses
  %cmp.n157 = icmp eq i64 %n.vec150, %wide.trip.count.i
  br i1 %cmp.n157, label %._crit_edge.i, label %vec.epilog.iter.check161

vec.epilog.iter.check161:                         ; preds = %middle.block156
  %min.epilog.iters.check162 = icmp eq i64 %n.mod.vf149, 0
  br i1 %min.epilog.iters.check162, label %vec.epilog.scalar.ph160.preheader, label %vec.epilog.ph163, !prof !618

vec.epilog.ph163:                                 ; preds = %vector.main.loop.iter.check146, %vec.epilog.iter.check161
  %vec.epilog.resume.val158 = phi i64 [ %n.vec150, %vec.epilog.iter.check161 ], [ 0, %vector.main.loop.iter.check146 ]
  %bc.merge.rdx = phi i16 [ %i.co, %vec.epilog.iter.check161 ], [ 0, %vector.main.loop.iter.check146 ]
  %n.vec165 = and i64 %wide.trip.count.i, 4294967292 ; 3 uses
  %broadcast.splatinsert166 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat167 = shufflevector <4 x i16> %broadcast.splatinsert166, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body168

vec.epilog.vector.body168:                        ; preds = %vec.epilog.vector.body168, %vec.epilog.ph163
  %index169 = phi i64 [ %vec.epilog.resume.val158, %vec.epilog.ph163 ], [ %index.next172, %vec.epilog.vector.body168 ] ; 2 uses
  %vec.phi170 = phi <4 x i16> [ %broadcast.splat167, %vec.epilog.ph163 ], [ %i.cq, %vec.epilog.vector.body168 ]
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %index169
  %wide.load171 = load <4 x i16>, ptr %i.cp, align 2, !tbaa !60
  %i.cq = call <4 x i16> @llvm.umax.v4i16(<4 x i16> %wide.load171, <4 x i16> %vec.phi170) ; 2 uses
  %index.next172 = add nuw i64 %index169, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next172, %n.vec165
  br i1 %i.cr, label %vec.epilog.middle.block173, label %vec.epilog.vector.body168, !llvm.loop !622

vec.epilog.middle.block173:                       ; preds = %vec.epilog.vector.body168
  %i.cs = call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.cq) ; 2 uses
  %cmp.n174 = icmp eq i64 %n.vec165, %wide.trip.count.i
  br i1 %cmp.n174, label %._crit_edge.i, label %vec.epilog.scalar.ph160.preheader

vec.epilog.scalar.ph160.preheader:                ; preds = %iter.check159, %vec.epilog.iter.check161, %vec.epilog.middle.block173
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check159 ], [ %n.vec150, %vec.epilog.iter.check161 ], [ %n.vec165, %vec.epilog.middle.block173 ]
  %.029.i.ph = phi i16 [ 0, %iter.check159 ], [ %i.co, %vec.epilog.iter.check161 ], [ %i.cs, %vec.epilog.middle.block173 ]
  br label %vec.epilog.scalar.ph160

vec.epilog.scalar.ph160:                          ; preds = %vec.epilog.scalar.ph160.preheader, %vec.epilog.scalar.ph160
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph160 ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph160.preheader ] ; 2 uses
  %.029.i = phi i16 [ %spec.select.i, %vec.epilog.scalar.ph160 ], [ %.029.i.ph, %vec.epilog.scalar.ph160.preheader ]
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.i
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !60
  %spec.select.i = call i16 @llvm.umax.i16(i16 %i.cu, i16 %.029.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph160, !llvm.loop !623

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph160, %vec.epilog.middle.block173, %middle.block156
  %spec.select.i.lcssa = phi i16 [ %i.cs, %vec.epilog.middle.block173 ], [ %i.co, %middle.block156 ], [ %spec.select.i, %vec.epilog.scalar.ph160 ] ; 2 uses
  %i.cv = zext i16 %spec.select.i.lcssa to i64
  %i.cw = add nuw nsw i64 %i.cv, 1
  %i.cx = call ptr @ft_mem_realloc(ptr noundef %i.d, i64 noundef 2, i64 noundef 0, i64 noundef %i.cw, ptr noundef null, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !195
  %i.cz = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %.not26.i = icmp eq i32 %i.cz, 0
  br i1 %.not26.i, label %.preheader.i, label %cff_charset_compute_cids.exit

.preheader.i:                                     ; preds = %._crit_edge.i
  %.12430.i = add i32 %1, -1
  %i.da = load ptr, ptr %i.ch, align 8, !tbaa !64
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.preheader.i
  %.12431.i = phi i32 [ %.12430.i, %.preheader.i ], [ %.124.i, %bb.y ] ; 3 uses
  %i.db = trunc i32 %.12431.i to i16
  %i.dc = zext i32 %.12431.i to i64
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %i.dc
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !60
  %i.df = zext i16 %i.de to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %i.df
  store i16 %i.db, ptr %i.dg, align 2, !tbaa !60
  %.124.i = add i32 %.12431.i, -1                 ; 2 uses
  %i.dh = icmp ult i32 %.124.i, %1
  br i1 %i.dh, label %bb.y, label %._crit_edge33.i, !llvm.loop !624

._crit_edge33.i:                                  ; preds = %bb.y
  %i.di = zext i16 %spec.select.i.lcssa to i32
  store i32 %i.di, ptr %i.cf, align 8, !tbaa !196
end_hunk_2
begin_hunk_3_@cff_charset_load:bb.a

.thread111:                                       ; preds = %.thread111.sink.split, %bb.o, %bb.r, %bb.u, %bb.z
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !64
  call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.dn) #18
  store ptr null, ptr %i.dm, align 8, !tbaa !64
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !195
  call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.dp) #18
  store ptr null, ptr %i.do, align 8, !tbaa !195
  store i32 0, ptr %0, align 8, !tbaa !197
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.dq, align 8, !tbaa !614
  %.pre = load i32, ptr %i.b, align 4, !tbaa !3
  br label %bb.aa

bb.aa:                                            ; preds = %.thread111, %bb.z
  %i.dr = phi i32 [ %.pre, %.thread111 ], [ 0, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %i.dr
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cff_encoding_load(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit154, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %5, 1
  br i1 %i.e, label %bb.c, label %bb.ad

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 7 uses
  %i.h = add i64 %5, %4                           ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.f, i8 0, i64 1024, i1 false)
  store i64 %i.h, ptr %i.i, align 8, !tbaa !183
  %i.j = tail call i32 @FT_Stream_Seek(ptr noundef %3, i64 noundef %i.h) #18 ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !3
  %.not130 = icmp eq i32 %i.j, 0
  br i1 %.not130, label %bb.d, label %.loopexit154

bb.d:                                             ; preds = %bb.c
  %i.k = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18
  %i.l = zext i8 %i.k to i32
  store i32 %i.l, ptr %0, align 8, !tbaa !193
  %i.m = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %.not131 = icmp eq i32 %i.m, 0
  br i1 %.not131, label %bb.e, label %.loopexit154

bb.e:                                             ; preds = %bb.d
  %i.n = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18 ; 7 uses
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %i.p = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %.not132 = icmp eq i32 %i.p, 0
  br i1 %.not132, label %bb.f, label %.loopexit154

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %0, align 8, !tbaa !193
  %i.r = and i32 %i.q, 127
  switch i32 %i.r, label %.loopexit154 [
    i32 0, label %bb.g
    i32 1, label %bb.m
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = add nuw nsw i32 %i.o, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.s, ptr %i.t, align 8, !tbaa !182
  %i.u = zext i8 %i.n to i64
  %i.v = call i32 @FT_Stream_EnterFrame(ptr noundef %3, i64 noundef %i.u) #18 ; 3 uses
  store i32 %i.v, ptr %i.b, align 4, !tbaa !3
  %.not136 = icmp eq i32 %i.v, 0
  br i1 %.not136, label %bb.h, label %.loopexit154

bb.h:                                             ; preds = %bb.g
  %.not137167 = icmp eq i8 %i.n, 0
  br i1 %.not137167, label %.thread, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !465  ; 2 uses
  %i.y = zext i32 %2 to i64                       ; 3 uses
  %i.z = zext i8 %i.n to i64                      ; 2 uses
  %xtraiter248 = and i64 %i.z, 1
  %i.aa = icmp eq i8 %i.n, 1
  br i1 %i.aa, label %.lr.ph171.epil.preheader, label %.lr.ph171.preheader.new

.lr.ph171.preheader.new:                          ; preds = %.lr.ph171.preheader
  %unroll_iter = and i64 %i.z, 254
  br label %.lr.ph171

.lr.ph171:                                        ; preds = %bb.k, %.lr.ph171.preheader.new
  %indvars.iv191 = phi i64 [ 1, %.lr.ph171.preheader.new ], [ %indvars.iv.next192.1, %bb.k ] ; 5 uses
  %.0117169 = phi ptr [ %i.x, %.lr.ph171.preheader.new ], [ %i.al, %bb.k ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph171.preheader.new ], [ %niter.next.1, %bb.k ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0117169, i64 1
  %i.ac = icmp samesign ult i64 %indvars.iv191, %i.y
  br i1 %i.ac, label %bb.i, label %.lr.ph171.1

bb.i:                                             ; preds = %.lr.ph171
  %i.ad = load i8, ptr %.0117169, align 1, !tbaa !165
  %i.ae = trunc i64 %indvars.iv191 to i16
  %i.af = zext i8 %i.ad to i64                    ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.af
  store i16 %i.ae, ptr %i.ag, align 2, !tbaa !60
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %indvars.iv191
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !60
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.af
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !60
  br label %.lr.ph171.1

.lr.ph171.1:                                      ; preds = %.lr.ph171, %bb.i
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0117169, i64 2 ; 2 uses
  %i.am = icmp samesign ult i64 %indvars.iv.next192, %i.y
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph171.1
  %i.an = load i8, ptr %i.ab, align 1, !tbaa !165
  %i.ao = trunc i64 %indvars.iv.next192 to i16
  %i.ap = zext i8 %i.an to i64                    ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ap
  store i16 %i.ao, ptr %i.aq, align 2, !tbaa !60
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv.next192
  %i.at = load i16, ptr %i.as, align 2, !tbaa !60
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ap
  store i16 %i.at, ptr %i.au, align 2, !tbaa !60
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph171.1
  %indvars.iv.next192.1 = add nuw nsw i64 %indvars.iv191, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread.loopexit.unr-lcssa, label %.lr.ph171, !llvm.loop !626

.thread.loopexit.unr-lcssa:                       ; preds = %bb.k
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %.thread, label %.lr.ph171.epil.preheader

.lr.ph171.epil.preheader:                         ; preds = %.thread.loopexit.unr-lcssa, %.lr.ph171.preheader
  %indvars.iv191.epil.init = phi i64 [ 1, %.lr.ph171.preheader ], [ %indvars.iv.next192.1, %.thread.loopexit.unr-lcssa ] ; 3 uses
  %.0117169.epil.init = phi ptr [ %i.x, %.lr.ph171.preheader ], [ %i.al, %.thread.loopexit.unr-lcssa ]
  %lcmp.mod250 = trunc i8 %i.n to i1
  call void @llvm.assume(i1 %lcmp.mod250)
  %i.av = icmp samesign ult i64 %indvars.iv191.epil.init, %i.y
  br i1 %i.av, label %bb.l, label %.thread

bb.l:                                             ; preds = %.lr.ph171.epil.preheader
  %i.aw = load i8, ptr %.0117169.epil.init, align 1, !tbaa !165
  %i.ax = trunc i64 %indvars.iv191.epil.init to i16
  %i.ay = zext i8 %i.aw to i64                    ; 2 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ay
  store i16 %i.ax, ptr %i.az, align 2, !tbaa !60
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv191.epil.init
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !60
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ay
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !60
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit.unr-lcssa, %bb.l, %.lr.ph171.epil.preheader, %bb.h
  call void @FT_Stream_ExitFrame(ptr noundef %3) #18
  br label %.thread149

bb.m:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 0, ptr %i.be, align 8, !tbaa !182
  %.not180.a = icmp eq i8 %i.n, 0
  br i1 %.not180.a, label %.thread149, label %.lr.ph165.preheader

.lr.ph165.preheader:                              ; preds = %bb.m
  %i.bf = zext i32 %2 to i64                      ; 2 uses
  br label %.lr.ph165

.lr.ph165:                                        ; preds = %.lr.ph165.preheader, %._crit_edge
  %.0115163 = phi i32 [ %i.bp, %._crit_edge ], [ 1, %.lr.ph165.preheader ] ; 5 uses
  %.1120162 = phi i32 [ %i.cy, %._crit_edge ], [ 0, %.lr.ph165.preheader ]
  %i.bg = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.bh = zext i8 %i.bg to i32                    ; 2 uses
  %i.bi = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %.not133 = icmp eq i32 %i.bi, 0
  br i1 %.not133, label %bb.n, label %.loopexit154

bb.n:                                             ; preds = %.lr.ph165
  %i.bj = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18
  %i.bk = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %.not134 = icmp eq i32 %i.bk, 0
  br i1 %.not134, label %bb.o, label %.loopexit154

bb.o:                                             ; preds = %bb.n
  %i.bl = zext i8 %i.bj to i32
  %i.bm = add nuw nsw i32 %i.bl, 1                ; 4 uses
  %i.bn = load i32, ptr %i.be, align 8, !tbaa !182 ; 2 uses
  %.not135 = icmp ugt i32 %i.bm, %i.bn
  br i1 %.not135, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.bm, ptr %i.be, align 8, !tbaa !182
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bo = phi i32 [ %i.bm, %bb.p ], [ %i.bn, %bb.o ]
  %i.bp = add i32 %i.bm, %.0115163                ; 3 uses
  %i.bq = icmp ult i32 %.0115163, %i.bp
  br i1 %i.bq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.br = zext i32 %.0115163 to i64               ; 5 uses
  %wide.trip.count = zext i32 %i.bp to i64        ; 3 uses
  %i.bs = sub nsw i64 %wide.trip.count, %i.br
  %xtraiter = and i64 %i.bs, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.bt = icmp ult i32 %.0115163, %2
  br i1 %i.bt, label %bb.r, label %.lr.ph.prol.loopexit.unr-lcssa

bb.r:                                             ; preds = %.lr.ph.prol
  %i.bu = trunc i32 %.0115163 to i16
  %i.bv = zext i8 %i.bg to i64                    ; 2 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.bv
  store i16 %i.bu, ptr %i.bw, align 2, !tbaa !60
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.br
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !60
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.bv
  store i16 %i.bz, ptr %i.ca, align 2, !tbaa !60
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.r, %.lr.ph.prol
  %indvars.iv.next187.prol = add nuw nsw i64 %i.br, 1
  %i.cb = add nuw nsw i32 %i.bh, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv186.unr = phi i64 [ %i.br, %.lr.ph.preheader ], [ %indvars.iv.next187.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.0118160.unr = phi i32 [ %i.bh, %.lr.ph.preheader ], [ %i.cb, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.cc = add nsw i64 %wide.trip.count, -1
  %i.cd = icmp eq i64 %i.cc, %i.br
  br i1 %i.cd, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.u
  %indvars.iv186 = phi i64 [ %indvars.iv.next187.1, %bb.u ], [ %indvars.iv186.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0118160 = phi i32 [ %i.cx, %bb.u ], [ %.0118160.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ce = icmp samesign ult i64 %indvars.iv186, %i.bf
  %i.cf = icmp ult i32 %.0118160, 256
  %or.cond = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %or.cond, label %bb.s, label %.lr.ph.1

bb.s:                                             ; preds = %.lr.ph
  %i.cg = trunc i64 %indvars.iv186 to i16
  %i.ch = zext nneg i32 %.0118160 to i64          ; 2 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.ch
  store i16 %i.cg, ptr %i.ci, align 2, !tbaa !60
  %i.cj = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %indvars.iv186
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !60
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ch
  store i16 %i.cl, ptr %i.cm, align 2, !tbaa !60
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.s
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 3 uses
  %i.cn = add i32 %.0118160, 1                    ; 2 uses
  %i.co = icmp samesign ult i64 %indvars.iv.next187, %i.bf
  %i.cp = icmp ult i32 %i.cn, 256
  %or.cond.1 = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %or.cond.1, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.1
  %i.cq = trunc i64 %indvars.iv.next187 to i16
  %i.cr = zext nneg i32 %i.cn to i64              ; 2 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.cr
  store i16 %i.cq, ptr %i.cs, align 2, !tbaa !60
  %i.ct = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.next187
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !60
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.cr
  store i16 %i.cv, ptr %i.cw, align 2, !tbaa !60
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.1
  %indvars.iv.next187.1 = add nuw nsw i64 %indvars.iv186, 2 ; 2 uses
  %i.cx = add i32 %.0118160, 2
  %exitcond189.not.1 = icmp eq i64 %indvars.iv.next187.1, %wide.trip.count
  br i1 %exitcond189.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !627

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.u, %bb.q
  %i.cy = add nuw nsw i32 %.1120162, 1            ; 2 uses
  %exitcond190.not = icmp eq i32 %i.cy, %i.o
  br i1 %exitcond190.not, label %._crit_edge166, label %.lr.ph165, !llvm.loop !628

._crit_edge166:                                   ; preds = %._crit_edge
  %i.cz = icmp ugt i32 %i.bo, 256
  br i1 %i.cz, label %bb.v, label %.thread149

bb.v:                                             ; preds = %._crit_edge166
  store i32 256, ptr %i.be, align 8, !tbaa !182
  br label %.thread149

.thread149:                                       ; preds = %bb.m, %._crit_edge166, %bb.v, %.thread
  %i.da = load i32, ptr %0, align 8, !tbaa !193
  %i.db = and i32 %i.da, 128
  %.not138.a = icmp eq i32 %i.db, 0
  br i1 %.not138.a, label %.thread149..loopexit154_crit_edge, label %bb.w

.thread149..loopexit154_crit_edge:                ; preds = %.thread149
  %.pre = load i32, ptr %i.b, align 4, !tbaa !3
  br label %.loopexit154

bb.w:                                             ; preds = %.thread149
  %i.dc = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.dd = zext i8 %i.dc to i32
  %i.de = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %.not139.a = icmp eq i32 %i.de, 0
  %i.df = icmp ne i8 %i.dc, 0
  %or.cond179 = select i1 %.not139.a, i1 %i.df, i1 false
  br i1 %or.cond179, label %.lr.ph176, label %.loopexit154

.lr.ph176:                                        ; preds = %bb.w
  %.not181 = icmp eq i32 %2, 0
  %wide.trip.count199 = zext i32 %2 to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph176, %.loopexit
  %.2121175 = phi i32 [ 0, %.lr.ph176 ], [ %i.ds, %.loopexit ]
  %i.dg = call zeroext i8 @FT_Stream_ReadByte(ptr noundef %3, ptr noundef nonnull %i.b) #18
  %i.dh = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %.not140.a = icmp eq i32 %i.dh, 0
  br i1 %.not140.a, label %bb.y, label %.loopexit154

bb.y:                                             ; preds = %bb.x
  %i.di = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %3, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.dj = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %.not141 = icmp eq i32 %i.dj, 0
  br i1 %.not141, label %bb.z, label %.loopexit154

bb.z:                                             ; preds = %bb.y
  %i.dk = zext i8 %i.dg to i64                    ; 2 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.dk
  store i16 %i.di, ptr %i.dl, align 2, !tbaa !60
  br i1 %.not181, label %.loopexit, label %.lr.ph174

.lr.ph174:                                        ; preds = %bb.z
  %i.dm = load ptr, ptr %i.c, align 8, !tbaa !64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph174, %bb.ac
  %indvars.iv196 = phi i64 [ 0, %.lr.ph174 ], [ %indvars.iv.next197, %bb.ac ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %indvars.iv196
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !60
  %i.dp = icmp eq i16 %i.do, %i.di
  br i1 %i.dp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dq = trunc i64 %indvars.iv196 to i16
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.dk
  store i16 %i.dq, ptr %i.dr, align 2, !tbaa !60
  br label %.loopexit

bb.ac:                                            ; preds = %bb.aa
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %exitcond200.not.a = icmp eq i64 %indvars.iv.next197, %wide.trip.count199
  br i1 %exitcond200.not.a, label %.loopexit, label %bb.aa, !llvm.loop !629

.loopexit:                                        ; preds = %bb.ac, %bb.z, %bb.ab
  %i.ds = add nuw nsw i32 %.2121175, 1            ; 2 uses
  %exitcond201.not = icmp eq i32 %i.ds, %i.dd
  br i1 %exitcond201.not, label %.loopexit154, label %bb.x, !llvm.loop !630

bb.ad:                                            ; preds = %bb.b
  %trunc = trunc nuw i64 %5 to i1
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  br i1 %trunc, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.dt, ptr noundef nonnull align 16 dereferenceable(512) @cff_standard_encoding, i64 512, i1 false)
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.dt, ptr noundef nonnull align 16 dereferenceable(512) @cff_expert_encoding, i64 512, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %5, ptr %i.du, align 8, !tbaa !183
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.dv, align 8, !tbaa !182
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !196 ; 2 uses
end_hunk_3
